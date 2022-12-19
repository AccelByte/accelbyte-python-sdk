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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "OIpSaS2Q", "defaultRequiredExp": 52, "draftStoreId": "CX0EG3ik", "end": "1974-05-06T00:00:00Z", "excessStrategy": {"currency": "Ut2YP0YF", "method": "NONE", "percentPerExp": 61}, "images": [{"as": "EeS2z6s5", "caption": "85poPJzT", "height": 77, "imageUrl": "grpZUqfT", "smallImageUrl": "97dQGFld", "width": 80}, {"as": "whBh4Ava", "caption": "5kGrb4OQ", "height": 49, "imageUrl": "rlWfKkt9", "smallImageUrl": "8V8FsVpM", "width": 79}, {"as": "ydLGOZ5I", "caption": "sTH5Hjuy", "height": 31, "imageUrl": "y8QFdgXG", "smallImageUrl": "zK2gj4BH", "width": 39}], "localizations": {"tTInpDJU": {"description": "b9FFXQna", "title": "TF1CrBtk"}, "dD7WekGr": {"description": "MxMWY7Gm", "title": "4myeYAqa"}, "HfEtDMci": {"description": "hm2mVsyL", "title": "K3KTPqjE"}}, "name": "27ZvbegF", "start": "1999-06-02T00:00:00Z", "tierItemId": "dCCc6tD6"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["laQPquJl", "Q049wdGi", "LSLyZUIU"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'RfCX19no' --login_with_auth "Bearer foo"
seasonpass-delete-season '3AOPLTWL' --login_with_auth "Bearer foo"
seasonpass-update-season 'n9zEHRTs' --body '{"autoClaim": false, "defaultLanguage": "5adSleu8", "defaultRequiredExp": 37, "draftStoreId": "XzG5MCgJ", "end": "1991-09-11T00:00:00Z", "excessStrategy": {"currency": "ByZRmDuB", "method": "CURRENCY", "percentPerExp": 68}, "images": [{"as": "al6MvD89", "caption": "WXciwdwB", "height": 59, "imageUrl": "kxJ6QYjI", "smallImageUrl": "xMpaPIdA", "width": 9}, {"as": "Sf0qtIu9", "caption": "Z9vx2y73", "height": 12, "imageUrl": "xuleF8o8", "smallImageUrl": "C0yYrMxE", "width": 95}, {"as": "sRhiHSSK", "caption": "Ftvw8d2e", "height": 12, "imageUrl": "lNalr36B", "smallImageUrl": "kv4Zrce9", "width": 95}], "localizations": {"C3BJwhj0": {"description": "paBA1RSo", "title": "EtZVkdeK"}, "tIOoXYDQ": {"description": "RZv0Hlkj", "title": "koOOIw8r"}, "9ylPG1EQ": {"description": "1TceHmMV", "title": "0BgKSChM"}}, "name": "DPynPihI", "start": "1986-02-07T00:00:00Z", "tierItemId": "f3ajP67m"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'XlYeSBI6' --body '{"end": "1997-07-06T00:00:00Z", "name": "vqW9C7AC", "start": "1988-07-24T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'U7ZG3Yde' --login_with_auth "Bearer foo"
seasonpass-query-passes 'enIQxIm9' --login_with_auth "Bearer foo"
seasonpass-create-pass 'CDzGBBou' --body '{"autoEnroll": false, "code": "xcgBo1wj", "displayOrder": 55, "images": [{"as": "otkvpbfB", "caption": "XdfubWJ8", "height": 63, "imageUrl": "8aJiaWfP", "smallImageUrl": "Sw0mzrYZ", "width": 29}, {"as": "Q3uC5sXd", "caption": "PH1jPLAQ", "height": 29, "imageUrl": "cJntHAyU", "smallImageUrl": "pYwmRjIJ", "width": 87}, {"as": "5aTPPXxz", "caption": "KEASGiZk", "height": 33, "imageUrl": "sQPAQYwy", "smallImageUrl": "n6lEuw2p", "width": 90}], "localizations": {"NKVQdy8d": {"description": "FdLVhYzq", "title": "8bP5a25A"}, "11avZ08f": {"description": "sDeuOs8h", "title": "zTevUxW6"}, "XIsSyjHn": {"description": "OBzxu032", "title": "CgnnKyxK"}}, "passItemId": "zDTNkfXz"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'Ao821F7q' 'Pqbh4TdY' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'JJqdpoZo' '9nXnECiC' --login_with_auth "Bearer foo"
seasonpass-update-pass 'MakgtLE9' 'iH49CkDV' --body '{"autoEnroll": false, "displayOrder": 91, "images": [{"as": "g5NyayzH", "caption": "lrV14OpD", "height": 62, "imageUrl": "BQmE5sFT", "smallImageUrl": "E1sLMG79", "width": 99}, {"as": "IU3eoBAN", "caption": "IEoOSsVt", "height": 44, "imageUrl": "o4V6Ud1N", "smallImageUrl": "olSqCIKa", "width": 35}, {"as": "gvm4S6AV", "caption": "6f95p8nw", "height": 20, "imageUrl": "86ea5gWR", "smallImageUrl": "BNfBp25L", "width": 4}], "localizations": {"kKtHJVqn": {"description": "QQmqcw7g", "title": "cPSnYUgD"}, "FOHsRjI3": {"description": "dbEw4wUF", "title": "ei2BrCI6"}, "weA6p0nh": {"description": "GcXmWKQ3", "title": "VYdH9GWh"}}, "passItemId": "dVO6zZwo"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'oriS8QwQ' --login_with_auth "Bearer foo"
seasonpass-retire-season 'KJ5laMtv' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'WCsZgfOj' --login_with_auth "Bearer foo"
seasonpass-create-reward 's1Ph6gPb' --body '{"code": "mryjc8rp", "currency": {"currencyCode": "fmY6UwmN", "namespace": "sVvsuFPF"}, "image": {"as": "0Wq76Wut", "caption": "AcxcD5ac", "height": 30, "imageUrl": "NnFzbGdj", "smallImageUrl": "elnbdvNz", "width": 83}, "itemId": "m2QGWEQY", "quantity": 75, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward '9SaqSiio' '7Sl7mYQx' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'TLo1tW0F' 'GbIfZ6Qm' --login_with_auth "Bearer foo"
seasonpass-update-reward 'CQv0f6XS' '4cbu9GZK' --body '{"currency": {"currencyCode": "XG5RFrfC", "namespace": "benYu5DW"}, "image": {"as": "zIUI3cXf", "caption": "GnoopHlo", "height": 6, "imageUrl": "x9I1kBhB", "smallImageUrl": "RMYfE6Zy", "width": 49}, "itemId": "aGiYpRi1", "nullFields": ["o3cuWs2u", "Dhig3TCJ", "4QJsBHDu"], "quantity": 44, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'cOb6GqFo' --login_with_auth "Bearer foo"
seasonpass-create-tier 'vscBdapK' --body '{"index": 5, "quantity": 43, "tier": {"requiredExp": 85, "rewards": {"NzLxCgBQ": ["BLEIwVIp", "MAQwfHq0", "XaHeOCfA"], "QWLxbfyI": ["Y8cXOVIa", "f3U970fO", "6BL81bTV"], "DVLE4RUY": ["RYXGhl3z", "cbvLng0U", "6gJgUxDb"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier '5olxo7mZ' '9RxGBWtX' --body '{"requiredExp": 45, "rewards": {"sKMufdie": ["mwYURBAy", "5zt4NMxw", "MAi1wAPv"], "3LotMq87": ["4JE4f0es", "JkfA4pps", "J4WHEJJl"], "69gjx54F": ["feUj2mSf", "IbfMZART", "MED7IQKU"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'kYyzu4t7' 'jH8vD7As' --login_with_auth "Bearer foo"
seasonpass-reorder-tier '7dSDvlOY' '2kYfbyc5' --body '{"newIndex": 25}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season '7PyJdAgW' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'O82c7gmo' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'x7tov2jt' --body '{"exp": 71, "source": "SWEAT", "tags": ["NWVgF1uA", "wcvcoK6C", "gX2gPKK5"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'WCSAnu2Q' --body '{"passCode": "vrYYUaas", "passItemId": "596kRah5"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'plFYUnGm' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'OpV7o3eq' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'xMFGCpbU' --body '{"passItemId": "LZ8rjGsb", "tierItemCount": 77, "tierItemId": "RV67Wyj6"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'lucauyMm' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'qBi1fEIO' --body '{"count": 78, "source": "SWEAT", "tags": ["pZLH36na", "CHjn4GFM", "sC1YZDWl"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'PN7f3OyX' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'Rh0Q481g' --login_with_auth "Bearer foo"
seasonpass-get-user-season '8qSOJ3xA' 'jhNjWC1o' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season '9xAalfIM' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'Bgq0O7zR' --body '{"passCode": "db8jPd0F", "rewardCode": "FdKxl8PR", "tierIndex": 90}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'Qj6YXFgU' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'VzCyt7Ao' 'ApGY1KS3' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "SHONxXWw", "defaultRequiredExp": 37, "draftStoreId": "sTewsaeZ", "end": "1973-03-03T00:00:00Z", "excessStrategy": {"currency": "XxJdit0G", "method": "NONE", "percentPerExp": 5}, "images": [{"as": "6mJdy87R", "caption": "tolFt3O5", "height": 84, "imageUrl": "nldshDRL", "smallImageUrl": "rk43VJR4", "width": 1}, {"as": "u0MK9Miq", "caption": "55wWdwb8", "height": 40, "imageUrl": "kTxvSqWS", "smallImageUrl": "JXdtPkFv", "width": 60}, {"as": "RRt2j0G8", "caption": "ixgUFvh0", "height": 98, "imageUrl": "ZoLGtEDX", "smallImageUrl": "GO7ABNum", "width": 37}], "localizations": {"LfqnS4bX": {"description": "wQbRT4Ht", "title": "aRWKwQY5"}, "pKiQP85j": {"description": "9NpBA9JB", "title": "bpQIAZlc"}, "k3G7ynkq": {"description": "8bhcGbb9", "title": "2kLj3OQR"}}, "name": "4qY2gilL", "start": "1981-06-29T00:00:00Z", "tierItemId": "HgORPh2u"}' \
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
    --body '{"userIds": ["OueHjPZS", "iha5vOtX", "UE5KVKyn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'D7b9F1cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'Vn5ETur0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    '6eBsR8MU' \
    --body '{"autoClaim": true, "defaultLanguage": "7yyJNEB2", "defaultRequiredExp": 24, "draftStoreId": "agzsAMAe", "end": "1986-01-22T00:00:00Z", "excessStrategy": {"currency": "1GeQBH82", "method": "CURRENCY", "percentPerExp": 86}, "images": [{"as": "kN3xYFeW", "caption": "2vkTmAJx", "height": 45, "imageUrl": "pshTf991", "smallImageUrl": "E9qsk9ph", "width": 34}, {"as": "RJ1cXW5j", "caption": "vJzBLYyJ", "height": 79, "imageUrl": "dRAd4mBF", "smallImageUrl": "YeWFovmX", "width": 3}, {"as": "lISP82zt", "caption": "rza7v8NX", "height": 82, "imageUrl": "wHfLlwMa", "smallImageUrl": "9bjVVQIR", "width": 77}], "localizations": {"3BiRcln7": {"description": "nf8e0ov2", "title": "AU83x50H"}, "SXi2gQ4F": {"description": "iMCEVwhb", "title": "sHhOWn6P"}, "O6YBtAt2": {"description": "WoiPNGoO", "title": "bJUeOTCX"}}, "name": "ra7CkgJ7", "start": "1989-04-11T00:00:00Z", "tierItemId": "1qzVTlYc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'T3hddBdj' \
    --body '{"end": "1977-06-17T00:00:00Z", "name": "G1WD9sAf", "start": "1994-12-10T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'za34Xzv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'QlAOu1UY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'OtxzXRPy' \
    --body '{"autoEnroll": false, "code": "JEDRSZUz", "displayOrder": 62, "images": [{"as": "u2hmQgjf", "caption": "j0EQB3Un", "height": 60, "imageUrl": "I5en7pFo", "smallImageUrl": "2mg3IfDc", "width": 9}, {"as": "BEEJmDmu", "caption": "jqJQlVQb", "height": 28, "imageUrl": "Iz4AoRPF", "smallImageUrl": "HFtlSVdu", "width": 66}, {"as": "s1ytJab2", "caption": "JiweRsC6", "height": 13, "imageUrl": "l36S0u38", "smallImageUrl": "I7aDxwe3", "width": 71}], "localizations": {"pNKoMedz": {"description": "3n5WllnA", "title": "MtDMOvpl"}, "1yVKOaWQ": {"description": "2UGxiuHa", "title": "6XYX9C9W"}, "LjJi3PMq": {"description": "M2vOgb7Q", "title": "ypzFdZVy"}}, "passItemId": "Mdd3z5R3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'QP8tYMxu' \
    'pifAPfmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'w7oFn5pK' \
    '1i5tOq0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'ZCoSrRCZ' \
    'c5kGDUA0' \
    --body '{"autoEnroll": true, "displayOrder": 32, "images": [{"as": "XnQMR7BE", "caption": "RAUL0101", "height": 84, "imageUrl": "pZMN0tEp", "smallImageUrl": "0lAbtkXM", "width": 2}, {"as": "nsbIaTTY", "caption": "NUdQQ130", "height": 10, "imageUrl": "mpLYi2ry", "smallImageUrl": "P2GBiLXl", "width": 98}, {"as": "YpcdoDPf", "caption": "xEANXquJ", "height": 37, "imageUrl": "6wSNPjKg", "smallImageUrl": "VXakYDNI", "width": 87}], "localizations": {"4HDeRXjw": {"description": "ygdeB44v", "title": "axR6Z42W"}, "6xt2kDk3": {"description": "WD8sAbyf", "title": "2wPYNHAP"}, "zG8HKi1X": {"description": "bkLroFCo", "title": "r9TECqav"}}, "passItemId": "Zac5R5MP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'C2aIou46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'IqW72eTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'lO9qgwMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'Z0dSL6mB' \
    --body '{"code": "yJe0MEna", "currency": {"currencyCode": "tC1vI9d1", "namespace": "wrp5p7ci"}, "image": {"as": "1rd5KJ1n", "caption": "irVCV5nE", "height": 62, "imageUrl": "2Acg5e1v", "smallImageUrl": "D1nUREaQ", "width": 60}, "itemId": "IXLKJdvs", "quantity": 61, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'cqyfYYm8' \
    'WW21r8IA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'cY7SGkyp' \
    'VCcOUjgY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'Fo7LOlUA' \
    'a0vUKcNr' \
    --body '{"currency": {"currencyCode": "eOBDqrrp", "namespace": "3E71fdKw"}, "image": {"as": "isNKVNZY", "caption": "GpFeGKKn", "height": 62, "imageUrl": "uwd4t3Ea", "smallImageUrl": "PNnO7wFF", "width": 96}, "itemId": "CsiRYthd", "nullFields": ["BjWXCjIw", "d17kRBGH", "mWv4nLTs"], "quantity": 34, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'M8PEijrP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'lN4BFEfn' \
    --body '{"index": 63, "quantity": 6, "tier": {"requiredExp": 44, "rewards": {"tu6lMFIm": ["DH8xdTLY", "uJ8IYHwn", "IpZVaIZB"], "MlTost6c": ["psX8DWzR", "laSpfIhl", "Z7vskFlz"], "DsSf2agY": ["rVXkdh08", "HrL8gLVs", "F70Kjz8U"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    '1S19DGQP' \
    'rlYU6gbA' \
    --body '{"requiredExp": 44, "rewards": {"8GmTF89c": ["OcJOLuKf", "XfwVMibW", "s6jM6nMd"], "xdVfGd6P": ["FznXMx72", "LnWT4n8F", "cALTsEVW"], "oi0k7L5i": ["hRFP4I8p", "pqHalS9S", "Z1tL6vLn"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'EBe7MvK3' \
    'zr0312wt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'mUQnjfHv' \
    'RW0hLrvY' \
    --body '{"newIndex": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'qVxopLMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'J8PkmahK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'OpPWHlB6' \
    --body '{"exp": 34, "source": "SWEAT", "tags": ["vx8uq16G", "kTXPq78D", "J6p4N0io"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'gfya2Pm8' \
    --body '{"passCode": "JHPfZA4g", "passItemId": "smanS9dp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'KnVD8Lar' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'daQdiuNY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '6rsGEwv5' \
    --body '{"passItemId": "KIYIKrrQ", "tierItemCount": 15, "tierItemId": "5RrUXrPv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'AFE7kNHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'jFbkvOGM' \
    --body '{"count": 26, "source": "SWEAT", "tags": ["aH8X638U", "5uJMqKIC", "C85FLhCM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'BlogMIGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    '3IfeShgr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    '182vQD9U' \
    'dUebA2zL' \
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
    '00PZEPGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'auoTao6F' \
    --body '{"passCode": "eWkEx3L9", "rewardCode": "6DEbKvrQ", "tierIndex": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    '2jtSDuSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    's0Zwv9cM' \
    '2zeDeuFx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
