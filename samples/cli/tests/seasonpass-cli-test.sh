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
seasonpass-create-season --body '{"autoClaim": false, "defaultLanguage": "OvXnS3mS", "defaultRequiredExp": 65, "draftStoreId": "aboNBkgC", "end": "1980-08-16T00:00:00Z", "excessStrategy": {"currency": "gGEb6lgy", "method": "CURRENCY", "percentPerExp": 29}, "images": [{"as": "WUrnhaIa", "caption": "mXlZPt7o", "height": 0, "imageUrl": "0fvCvvaN", "smallImageUrl": "Y8aq7jKv", "width": 78}, {"as": "5efpb9tz", "caption": "wZCaW8YV", "height": 25, "imageUrl": "PBOXJvKf", "smallImageUrl": "4azqj5ro", "width": 93}, {"as": "ouC9crgf", "caption": "ZmX3fcus", "height": 67, "imageUrl": "7fNN8Ts4", "smallImageUrl": "EaITCI1b", "width": 74}], "localizations": {"IOjUpEzl": {"description": "7IVdAPDz", "title": "3lhDyUx2"}, "6Kldf5ib": {"description": "iCJFbCEz", "title": "68ioVq7W"}, "T9i9lakz": {"description": "9F8KusbN", "title": "pAa3Q3Nm"}}, "name": "0LlNPYPZ", "start": "1995-11-04T00:00:00Z", "tierItemId": "s0LIDf3w"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["RQGmBj9D", "W1FdNpmW", "T8Bq575D"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'l1Jtq8ar' --login_with_auth "Bearer foo"
seasonpass-delete-season '3om80Nsg' --login_with_auth "Bearer foo"
seasonpass-update-season 'PlBEBC5m' --body '{"autoClaim": true, "defaultLanguage": "sEctNnl2", "defaultRequiredExp": 99, "draftStoreId": "Pmg0su7j", "end": "1997-01-23T00:00:00Z", "excessStrategy": {"currency": "DLj60WWN", "method": "NONE", "percentPerExp": 79}, "images": [{"as": "q4H8adxz", "caption": "Shpt575h", "height": 10, "imageUrl": "eZLnkI7i", "smallImageUrl": "obdvXQlU", "width": 6}, {"as": "E4avSdIE", "caption": "qroJ2CZB", "height": 46, "imageUrl": "kdtvqouU", "smallImageUrl": "PSm2HuaE", "width": 34}, {"as": "5vciREs7", "caption": "wInPXUKt", "height": 20, "imageUrl": "RhwU8ife", "smallImageUrl": "SDIMAxZH", "width": 29}], "localizations": {"LV9dVivW": {"description": "2YC9rCiY", "title": "GPCzczIJ"}, "9wCiztTA": {"description": "CZkxkCdO", "title": "dOqr69Ri"}, "xc0R8w6o": {"description": "XUo8BYZF", "title": "m5SdItzO"}}, "name": "Vd29j6ix", "start": "1971-04-13T00:00:00Z", "tierItemId": "7AXnQ4x6"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'ZCFd23BV' --body '{"end": "1973-11-17T00:00:00Z", "name": "yu4Sh9vp", "start": "1979-06-23T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'BZXkj8bH' --login_with_auth "Bearer foo"
seasonpass-query-passes 'sog2omDq' --login_with_auth "Bearer foo"
seasonpass-create-pass 'XIqupk1d' --body '{"autoEnroll": false, "code": "sy5zjZ4L", "displayOrder": 56, "images": [{"as": "THwwA6aI", "caption": "rgTbdemM", "height": 24, "imageUrl": "yJM2oXMG", "smallImageUrl": "5rrQ6UuI", "width": 58}, {"as": "qzPofTVd", "caption": "ZEwrphSP", "height": 1, "imageUrl": "bKGRSXA2", "smallImageUrl": "YKLvcJPu", "width": 3}, {"as": "iqjL3bOf", "caption": "gXjpwjWv", "height": 24, "imageUrl": "jA05fsk5", "smallImageUrl": "2ly7O39V", "width": 48}], "localizations": {"Cfj9TDAa": {"description": "ue4IxXyQ", "title": "Gjzxnp37"}, "pFpV53jf": {"description": "Hmm9BU6r", "title": "yj2Lm6zY"}, "9FOniWkS": {"description": "n5W1ojIg", "title": "WhpiWxYP"}}, "passItemId": "aliRlr8e"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'ghQtRHfL' 'phbcLENB' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'Xqs4t33K' 'olXHOhPw' --login_with_auth "Bearer foo"
seasonpass-update-pass 'wIjkOzxV' '9hEbIzyr' --body '{"autoEnroll": false, "displayOrder": 32, "images": [{"as": "FarJh7tG", "caption": "ecfKTiKU", "height": 35, "imageUrl": "mXmpoY5H", "smallImageUrl": "zFa7b6Ht", "width": 13}, {"as": "wrm9mIOa", "caption": "jc0onSk9", "height": 81, "imageUrl": "fQc3cK8R", "smallImageUrl": "4jAizWk2", "width": 67}, {"as": "uu9fs4Vn", "caption": "yEuJdFnq", "height": 21, "imageUrl": "jdrWKli3", "smallImageUrl": "PBnDoepZ", "width": 93}], "localizations": {"F4sVSHYi": {"description": "zu4wOXhk", "title": "4XwrOtQc"}, "rAs8KPqX": {"description": "fM8uPgIT", "title": "tmxj5N7e"}, "6SciWn4o": {"description": "a2WvNFqH", "title": "JPRH5bUQ"}}, "passItemId": "Pdu6cIQY"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'xj0UkFuo' --login_with_auth "Bearer foo"
seasonpass-retire-season 'MnfRkBhw' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'fFerygNh' --login_with_auth "Bearer foo"
seasonpass-create-reward 'JCsAc2Hv' --body '{"code": "Ly0E6wFc", "currency": {"currencyCode": "nrEtZLUu", "namespace": "DU50xX3A"}, "image": {"as": "K9syOIKv", "caption": "M9YYTd68", "height": 38, "imageUrl": "HQq8wa35", "smallImageUrl": "HxswOqvS", "width": 21}, "itemId": "82WRz9wl", "quantity": 94, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'utPmimWs' 'JxKTDTKt' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'Ew1RTWdH' 'P1oxvLfu' --login_with_auth "Bearer foo"
seasonpass-update-reward 'BTo4tHE3' 's5mvtCSe' --body '{"currency": {"currencyCode": "pz7NJEiJ", "namespace": "dZxYw4o4"}, "image": {"as": "cf2pjfmx", "caption": "qi7PGoNX", "height": 57, "imageUrl": "FWzAQyMv", "smallImageUrl": "LqAavXTO", "width": 5}, "itemId": "hF32TZ5P", "nullFields": ["4x3WfF1V", "YC0Vyh0r", "M3UXd4kY"], "quantity": 18, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'TPivbzHY' --login_with_auth "Bearer foo"
seasonpass-create-tier 'NkBETEj6' --body '{"index": 65, "quantity": 99, "tier": {"requiredExp": 48, "rewards": {"NVEB5qJR": ["b9KpQRBS", "H3fkw2U6", "OLYoUtaj"], "CSf8a0mZ": ["vkTTdphS", "nBAYK0jX", "JrEG2WKX"], "DXXjnWXt": ["K1D3py3K", "41S2F19c", "FHj3xQof"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier '2DSv1lyF' 'Ph0W71CY' --body '{"requiredExp": 52, "rewards": {"PmQNBafY": ["nOkLyg2g", "zSo0APtX", "1NIyLqM3"], "ky9C5tAI": ["ocDUGP3V", "lJvxryz9", "v17BiBbt"], "I0TOqEIn": ["2WITganl", "VnK4juiD", "Asb7iFgO"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier '8ICJN0eB' 'NQRFGmQr' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'V3pva0eJ' 'eznFwiMi' --body '{"newIndex": 32}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'dQV3qLnD' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'Ie5dHR8M' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'CAsFJYMY' --body '{"exp": 5, "source": "SWEAT", "tags": ["HPed8q2q", "1Bp3NOqG", "CskLOD4V"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'U54RwVSV' --body '{"passCode": "bKwjElZb", "passItemId": "Xr38cZpT"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'WuDbRFwg' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'jqPSi1bE' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'MbAfxwmc' --body '{"passItemId": "vDkgXxyZ", "tierItemCount": 89, "tierItemId": "jkBcmRgG"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'yl6KG9vQ' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'MIHrNWZ2' --body '{"count": 39, "source": "PAID_FOR", "tags": ["BD3c9AqG", "7icnq3al", "ARNgB1jd"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'GBsqLATc' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'xfzYmzNr' --login_with_auth "Bearer foo"
seasonpass-get-user-season '6JsL6Fed' '2zKNbwAH' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'fdfxS7HZ' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward '2BJ8OHgS' --body '{"passCode": "rIZAJtpw", "rewardCode": "7Q83RcBj", "tierIndex": 33}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'AYDNUwCB' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season '6FAxYGoq' 'EjCFOCnT' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "vZVNLa3Z", "defaultRequiredExp": 78, "draftStoreId": "9wuwwFFx", "end": "1992-04-30T00:00:00Z", "excessStrategy": {"currency": "jDOPm2MQ", "method": "CURRENCY", "percentPerExp": 36}, "images": [{"as": "SEguwmnI", "caption": "9d5i4IFA", "height": 3, "imageUrl": "QieqzYeX", "smallImageUrl": "vzGFYfld", "width": 70}, {"as": "T0ETX0ne", "caption": "5i1MUxoC", "height": 63, "imageUrl": "dPRW6quI", "smallImageUrl": "tz6K0CCP", "width": 1}, {"as": "vFHKYanq", "caption": "pl7DP4HK", "height": 52, "imageUrl": "PCvbUyGw", "smallImageUrl": "CQm4vO6W", "width": 52}], "localizations": {"kMS5GthS": {"description": "ugt5k9vr", "title": "hcjiC6Cv"}, "QjLdc6FQ": {"description": "IFdxfLhB", "title": "8egAyBme"}, "9Y4U2rly": {"description": "vBhGuBFZ", "title": "NdaVjs2l"}}, "name": "FnF5JzLs", "start": "1981-12-14T00:00:00Z", "tierItemId": "wnh7aUWv"}' \
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
    --body '{"userIds": ["yCsmV2Qe", "H3H5DCt6", "Cna1UrTG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    '27kA9lMR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'hn4SBA1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'X7HKI9Ul' \
    --body '{"autoClaim": true, "defaultLanguage": "5LxF3srK", "defaultRequiredExp": 78, "draftStoreId": "dDzTsA15", "end": "1989-02-27T00:00:00Z", "excessStrategy": {"currency": "TAYgR17T", "method": "CURRENCY", "percentPerExp": 98}, "images": [{"as": "TD6kFj0c", "caption": "GFlXDuoF", "height": 43, "imageUrl": "aA5EjX1k", "smallImageUrl": "EQU7j2vD", "width": 4}, {"as": "5nIwrU6m", "caption": "CGw9aXBe", "height": 12, "imageUrl": "cfD5lY2Y", "smallImageUrl": "dBTcvEOb", "width": 73}, {"as": "0dnoEHzx", "caption": "ZOs87AbV", "height": 92, "imageUrl": "9g05AK9L", "smallImageUrl": "vdkzlxUp", "width": 47}], "localizations": {"LsYcuoW9": {"description": "maIVDIrW", "title": "BniudQdI"}, "Y65eTM5J": {"description": "JqXayTF7", "title": "GAtiU1I9"}, "vrARCfoS": {"description": "J3RLFTj2", "title": "NHpqxzTe"}}, "name": "CsMnC4Z9", "start": "1977-09-08T00:00:00Z", "tierItemId": "GGs9y9Wj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'c7We3tJA' \
    --body '{"end": "1984-08-07T00:00:00Z", "name": "g1b1CkSC", "start": "1996-05-31T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    '4UET2MEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'N3BnzBT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'YkPhlech' \
    --body '{"autoEnroll": false, "code": "H7dUjq3R", "displayOrder": 14, "images": [{"as": "ML9TY0bf", "caption": "KE1cQMsh", "height": 27, "imageUrl": "KBQGR0E6", "smallImageUrl": "6eEapjcK", "width": 4}, {"as": "XyBmFrtD", "caption": "tkXxUKPL", "height": 53, "imageUrl": "knxtqvXy", "smallImageUrl": "BqrlDccB", "width": 71}, {"as": "GonrZAJa", "caption": "Hh1Bgtkt", "height": 22, "imageUrl": "xD2f9uoP", "smallImageUrl": "1wZdgyiZ", "width": 88}], "localizations": {"MHuM0xIJ": {"description": "em4XNKvk", "title": "L5A1v03M"}, "lHVQOCYA": {"description": "8LeKWFiY", "title": "5caVliiR"}, "NUYToQYn": {"description": "qrM93haZ", "title": "rnEwUNBx"}}, "passItemId": "9JNUEpta"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'EEK4yreU' \
    '7XH6erAk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'qd5j6366' \
    'YGX0ffks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'vQeK7OuK' \
    '8FKP25WZ' \
    --body '{"autoEnroll": false, "displayOrder": 4, "images": [{"as": "2iSukvY7", "caption": "naVipYkq", "height": 41, "imageUrl": "wdswHjz1", "smallImageUrl": "SOqeLnJ9", "width": 80}, {"as": "XBmL1Cdn", "caption": "wLF5EyoS", "height": 99, "imageUrl": "f5J43gAt", "smallImageUrl": "lOfnYl3L", "width": 0}, {"as": "6ezB8WrN", "caption": "p3biDAMt", "height": 86, "imageUrl": "xohnsUNA", "smallImageUrl": "VhBO0l2Y", "width": 81}], "localizations": {"iKcK77AA": {"description": "CQrVm7t8", "title": "3jplRVx4"}, "WRibdS11": {"description": "5tj7trk8", "title": "LakgP27I"}, "dGl0hlM6": {"description": "6qIJqPwn", "title": "FfjXzcGW"}}, "passItemId": "TSFdmqCE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    '71sxrJDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'T1Equ1pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'kJnojOTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'XcXxP0Ws' \
    --body '{"code": "tMGG6BuD", "currency": {"currencyCode": "j6ziAduB", "namespace": "8RSIIsQZ"}, "image": {"as": "Y2tENGwC", "caption": "KrdZ6eLQ", "height": 60, "imageUrl": "m2AJN71F", "smallImageUrl": "Zol7athz", "width": 52}, "itemId": "b6vNfJ1k", "quantity": 25, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'mcKjjdRr' \
    'ZhfYy3ni' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    '1aZmR0B0' \
    'HhEYuMyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'eX8glpkh' \
    'ucQCXnIp' \
    --body '{"currency": {"currencyCode": "vFI8mbT9", "namespace": "fKFTilLh"}, "image": {"as": "7vclErB7", "caption": "GuSH0kJw", "height": 14, "imageUrl": "Gl33IwE4", "smallImageUrl": "7ktnm80A", "width": 7}, "itemId": "O3OOUaW4", "nullFields": ["Ppf7TmnL", "WR3lZR2h", "bHO4zSiK"], "quantity": 85, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'pUmbOImS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'Z7PJDNJ8' \
    --body '{"index": 21, "quantity": 27, "tier": {"requiredExp": 6, "rewards": {"FsJxPUkk": ["vPpEbfht", "d4LGC4dl", "UAfADXSD"], "es8HQnpw": ["pbeppEEO", "ZxXkBN14", "F2ieGpoH"], "A4QcPvIm": ["1oIZJX2t", "rN6SA3qH", "nlNAj9oJ"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'xgdUgGgb' \
    'RCiDxhDL' \
    --body '{"requiredExp": 63, "rewards": {"1Lfn42J8": ["jvjQZjXk", "Q4wD2eq3", "eqnkQXOr"], "KpK6BO03": ["ePFlCgOY", "R4sCS4XA", "fharIxoz"], "GChpEQNd": ["8I9vQKpJ", "MnrXxiyG", "AVXsUf2D"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'r0DexxcE' \
    'Cay3s5ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'pW9spify' \
    'OQFk6u69' \
    --body '{"newIndex": 60}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'OjzM0rWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'r5Wc6ayM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'gGHAdWD0' \
    --body '{"exp": 59, "source": "PAID_FOR", "tags": ["sC7WI2pm", "QmjUa46B", "JsrPwmNX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'YPeLC7Gn' \
    --body '{"passCode": "JQsaw0Cg", "passItemId": "tHYUhDcP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'Fj8ux34d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'Xmw4ZDSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'eUE8V78y' \
    --body '{"passItemId": "CvdqcYUa", "tierItemCount": 100, "tierItemId": "R7M7Gf33"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    '1Kk2GgSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    '4fyHsPRt' \
    --body '{"count": 61, "source": "SWEAT", "tags": ["4C0Ty6WX", "2haZ5H0G", "YShnRqLz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'pNMIibQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'rmztJpCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'zMM7kdfL' \
    'BuK1RARj' \
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
    'SBsImAo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    '0uL6LIcX' \
    --body '{"passCode": "6FE31B6M", "rewardCode": "5b7lg6rG", "tierIndex": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'BnibyhE6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'ucZbKwGJ' \
    'cEbe0jRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
