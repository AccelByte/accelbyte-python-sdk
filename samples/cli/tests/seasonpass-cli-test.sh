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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "Pwx8feMQ", "defaultRequiredExp": 17, "draftStoreId": "sK9e5SwR", "end": "1973-09-14T00:00:00Z", "excessStrategy": {"currency": "qVALqNOY", "method": "NONE", "percentPerExp": 23}, "images": [{"as": "rU6YKh3D", "caption": "i24jvKuO", "height": 51, "imageUrl": "QMD2MzXe", "smallImageUrl": "PAglCsx1", "width": 46}, {"as": "y6TKucGb", "caption": "zO8a0mBC", "height": 82, "imageUrl": "1TsZeuDz", "smallImageUrl": "DWQ74Lfr", "width": 80}, {"as": "uqWkdvAI", "caption": "5RlLLyy3", "height": 32, "imageUrl": "9THWx8zv", "smallImageUrl": "RNx8gIiq", "width": 33}], "localizations": {"zQRYQnPy": {"description": "2wFEvpW2", "title": "bnaktBgC"}, "qj97L7JW": {"description": "CLqSn7Kr", "title": "E1xAiXVA"}, "UaAUlDo3": {"description": "1YxYFvRM", "title": "SXcYNlhE"}}, "name": "YSMWcOuq", "start": "1989-09-28T00:00:00Z", "tierItemId": "XmVPXkcC"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["yl80u3wx", "30WabeDt", "OtY9FHV8"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'EnJOGYdV' --login_with_auth "Bearer foo"
seasonpass-delete-season 'rwiZrvKD' --login_with_auth "Bearer foo"
seasonpass-update-season 'CAYVvist' --body '{"autoClaim": true, "defaultLanguage": "07myygO2", "defaultRequiredExp": 73, "draftStoreId": "dDO878dk", "end": "1989-12-06T00:00:00Z", "excessStrategy": {"currency": "oO9sjbyg", "method": "CURRENCY", "percentPerExp": 31}, "images": [{"as": "nrRSSJWo", "caption": "UZI1eYy2", "height": 82, "imageUrl": "fehJ6yvo", "smallImageUrl": "RyKIbEXN", "width": 39}, {"as": "e5DZMiPA", "caption": "NNQTfvpC", "height": 37, "imageUrl": "FLKPJoe4", "smallImageUrl": "MzEjwhb4", "width": 22}, {"as": "LBSL541r", "caption": "BgF1eJzm", "height": 94, "imageUrl": "b58Kt2bp", "smallImageUrl": "Lpw6kdV0", "width": 90}], "localizations": {"C8KV6h4H": {"description": "ZIXMQiJa", "title": "JFMyFBam"}, "HcyIn2IP": {"description": "v9uSN7S4", "title": "v0oZOJrd"}, "Ook4SfgW": {"description": "lVNwd5ox", "title": "UZUKEbBt"}}, "name": "348WKWcH", "start": "1982-10-03T00:00:00Z", "tierItemId": "H7Chyu15"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'zkAJwGrz' --body '{"end": "1971-04-11T00:00:00Z", "name": "ndrnCWpX", "start": "1994-10-27T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'Nx1RqIrn' --login_with_auth "Bearer foo"
seasonpass-query-passes 'ONtlazhH' --login_with_auth "Bearer foo"
seasonpass-create-pass 'ctNZ3bAU' --body '{"autoEnroll": false, "code": "qI5383wp", "displayOrder": 7, "images": [{"as": "Pum6hNd8", "caption": "LhdpwdRj", "height": 43, "imageUrl": "HnnbACv1", "smallImageUrl": "vibnjWI9", "width": 82}, {"as": "r7hMlzmN", "caption": "rdCtyK7M", "height": 51, "imageUrl": "dvW6nDaY", "smallImageUrl": "N1jFShj7", "width": 49}, {"as": "yDj72De9", "caption": "Brx5lGC9", "height": 44, "imageUrl": "hQnau8Wz", "smallImageUrl": "nduBECzB", "width": 49}], "localizations": {"QukGk2dB": {"description": "kOo63450", "title": "BrUTJ5Q9"}, "lLd1UtQG": {"description": "D1iZkgdm", "title": "SRD9klpG"}, "QYLkV2Zf": {"description": "NOLKJYGj", "title": "ldyKdVdB"}}, "passItemId": "kd9iJSEk"}' --login_with_auth "Bearer foo"
seasonpass-get-pass '4QIRh3JD' 'Z5jU32I0' --login_with_auth "Bearer foo"
seasonpass-delete-pass '5joD9YgK' 'Y1Wt0IZq' --login_with_auth "Bearer foo"
seasonpass-update-pass 'TZRejBvg' 'r9LIupFm' --body '{"autoEnroll": true, "displayOrder": 77, "images": [{"as": "K2e563Oi", "caption": "tJEjMdRA", "height": 23, "imageUrl": "8m87aAgA", "smallImageUrl": "rtWRFE4v", "width": 69}, {"as": "G0h0LSzq", "caption": "ciOnsloP", "height": 66, "imageUrl": "Rntjo1mG", "smallImageUrl": "UAQSV2tB", "width": 61}, {"as": "i8TkilMC", "caption": "fWyEfczc", "height": 35, "imageUrl": "Ow0HPvUI", "smallImageUrl": "F4V9zfHx", "width": 91}], "localizations": {"1sfC1p4W": {"description": "zQqjphU7", "title": "dWtQJBRU"}, "W86pDG54": {"description": "gxWIFE6E", "title": "nHNUVepw"}, "ubh8OU79": {"description": "pZgBg8kN", "title": "WHS0SdRv"}}, "passItemId": "KrHK97Sw"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '6q4FnUv3' --login_with_auth "Bearer foo"
seasonpass-retire-season 'E4Y2JDQe' --login_with_auth "Bearer foo"
seasonpass-query-rewards '9C7isISE' --login_with_auth "Bearer foo"
seasonpass-create-reward 'g9PEjN8X' --body '{"code": "V2YyD36Q", "currency": {"currencyCode": "L73cgJei", "namespace": "zEFA4Rf7"}, "image": {"as": "IkQy5ZDB", "caption": "LnPMN6v8", "height": 97, "imageUrl": "lIXdQITZ", "smallImageUrl": "d0KV7fBP", "width": 77}, "itemId": "Guv83sHT", "quantity": 52, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'T81KthMk' 'BBuERoJ1' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'VBDh7pXp' 'mEQyYpPZ' --login_with_auth "Bearer foo"
seasonpass-update-reward 'FyMrVUzk' 'ZknuIaJ1' --body '{"currency": {"currencyCode": "meo1IaO3", "namespace": "ONFioE7l"}, "image": {"as": "GHmjJgj4", "caption": "mp6Zunvv", "height": 51, "imageUrl": "q6MbexJI", "smallImageUrl": "hwAM5xnc", "width": 37}, "itemId": "qhPy34RD", "nullFields": ["0ewkuI41", "DGf6fYPb", "pu0opkNc"], "quantity": 91, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'DxyXFpW0' --login_with_auth "Bearer foo"
seasonpass-create-tier 'pYQpaS1q' --body '{"index": 95, "quantity": 76, "tier": {"requiredExp": 1, "rewards": {"fH32no1b": ["cXcnpje7", "YcO51dsb", "g1GzSoOr"], "d6MJN6PE": ["bBGAxGcF", "8S34jvzV", "sV3m9hkZ"], "FAlOVc3h": ["FdCdfQZp", "rKBXrpdP", "drZzKhx1"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'X56Ven7A' 'hKcO9W06' --body '{"requiredExp": 86, "rewards": {"y9doHwt9": ["4IiYZLrt", "CjASjClU", "14vjGiqf"], "Z0N01xnd": ["EPzNwCUl", "t88mI3bN", "rp6bJdCi"], "CdMm9LTD": ["TDti2jGd", "ojr5zdJr", "YnHzfzzT"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'svWsamhk' 'tcef5t43' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'sPJj79bc' 'eQLMYc5V' --body '{"newIndex": 56}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'cDKRiWEJ' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'DmKx0sYF' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'bWPKopCp' --body '{"exp": 90, "source": "SWEAT", "tags": ["dzQEfrca", "oFdrhESo", "Df79r6XW"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'sN5ORxQZ' --body '{"passCode": "uNcSBWXC", "passItemId": "jf57ORiI"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'UAuJNy6t' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'q4pzP4n0' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable '738qfDv7' --body '{"passItemId": "cAMjbRmh", "tierItemCount": 38, "tierItemId": "FiqBoa15"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'vZJW1ajB' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'PIbiBrmh' --body '{"count": 27, "source": "SWEAT", "tags": ["XfkHTSyC", "1IGSSCtE", "vdyZCHPn"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history '97amzMdf' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'Hzs7hxVe' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'TkHgoe0R' 'Apdnj7fG' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season '5NCxvlm0' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'ljahJDhz' --body '{"passCode": "EyPgDs8L", "rewardCode": "7QquRsfB", "tierIndex": 79}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'rcIEpMjz' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'rQq5UvgJ' 'Wpr9Ax76' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": true, "defaultLanguage": "Nc4garvS", "defaultRequiredExp": 0, "draftStoreId": "ZmhVjUQx", "end": "1976-02-29T00:00:00Z", "excessStrategy": {"currency": "8OWgBxGy", "method": "CURRENCY", "percentPerExp": 54}, "images": [{"as": "HWECDT6s", "caption": "yYLC18Rg", "height": 36, "imageUrl": "6mgcjxbI", "smallImageUrl": "G5knBrMh", "width": 46}, {"as": "zf1n8qJe", "caption": "YJtN0Dku", "height": 60, "imageUrl": "wStiFxu6", "smallImageUrl": "YGJkFFAw", "width": 76}, {"as": "XsJot10h", "caption": "iEsvp1cF", "height": 21, "imageUrl": "7ox7JEUr", "smallImageUrl": "OP3iHKBL", "width": 89}], "localizations": {"jeYuHNNm": {"description": "dd0KVVvb", "title": "2f6udg94"}, "uYXgmh6Z": {"description": "wtjyyBlW", "title": "wQTU2ZD8"}, "n0TEZzbr": {"description": "bECJs1zp", "title": "momPUEXd"}}, "name": "QP9qs1FQ", "start": "1980-01-08T00:00:00Z", "tierItemId": "25Iid2kr"}' \
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
    --body '{"userIds": ["nKBlOG2Z", "dhnD726i", "0YB6Oak8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'wte8Lfei' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'YEVxE3uw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'RdqMRjg5' \
    --body '{"autoClaim": true, "defaultLanguage": "kqPQdzyz", "defaultRequiredExp": 13, "draftStoreId": "rsz06wCs", "end": "1975-08-12T00:00:00Z", "excessStrategy": {"currency": "ikVsx6hf", "method": "NONE", "percentPerExp": 13}, "images": [{"as": "g0CuEcTl", "caption": "kUKy6N6L", "height": 81, "imageUrl": "ns0ASZjr", "smallImageUrl": "RPJNZM6X", "width": 68}, {"as": "mMHEpszJ", "caption": "V8b12JRT", "height": 59, "imageUrl": "1L5ctVEz", "smallImageUrl": "wF3BEqal", "width": 96}, {"as": "SPuKi4Bc", "caption": "r7E0i3MD", "height": 8, "imageUrl": "86tnrrMZ", "smallImageUrl": "dWf1bopX", "width": 75}], "localizations": {"7PDzIKPH": {"description": "miXI4W0z", "title": "TbqDWlDE"}, "BghVaKDR": {"description": "d4PbE4BT", "title": "Udh2HzEu"}, "QYhnkysJ": {"description": "uR5jMMQ3", "title": "50t3crY8"}}, "name": "0fIh7VyS", "start": "1984-11-16T00:00:00Z", "tierItemId": "hkVNBP1I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'qqZbAlwX' \
    --body '{"end": "1987-11-10T00:00:00Z", "name": "IkyICvO2", "start": "1992-04-26T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    '7IOtIt3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'f0G5r6Xr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'jxSOJJnL' \
    --body '{"autoEnroll": true, "code": "AbE3cB3F", "displayOrder": 43, "images": [{"as": "T7f1exR4", "caption": "OKaowHPC", "height": 17, "imageUrl": "uv3CJWyC", "smallImageUrl": "xKCjkoak", "width": 46}, {"as": "Awe4XIdC", "caption": "k7RsgKTC", "height": 39, "imageUrl": "4Psa02AM", "smallImageUrl": "jXrROqjt", "width": 81}, {"as": "rjAgZmUB", "caption": "BBR5LYrs", "height": 38, "imageUrl": "iXUdVwI5", "smallImageUrl": "Z0PFPZYU", "width": 72}], "localizations": {"OQAyQmse": {"description": "Dzz6lyKG", "title": "z3yX6MQS"}, "VOxa1HEC": {"description": "tF40Fme2", "title": "Q09pM7Vl"}, "1hb6ZWpC": {"description": "ktHuqUek", "title": "YKgB3abO"}}, "passItemId": "D1MnGMVy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'xfToNWEA' \
    'wEsFuCLz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'Y7ZqhVFW' \
    'q8e3TThu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'ZlvLT8Vq' \
    '0hTnrV3I' \
    --body '{"autoEnroll": false, "displayOrder": 78, "images": [{"as": "Kg2eg2A2", "caption": "VuEmwlum", "height": 95, "imageUrl": "kZsZviUT", "smallImageUrl": "L5lpkajV", "width": 44}, {"as": "eGF3eIKB", "caption": "aHdrrop2", "height": 100, "imageUrl": "5dBn2Nlk", "smallImageUrl": "V7BYbAQZ", "width": 9}, {"as": "Od1deAFf", "caption": "8pCGhbCH", "height": 45, "imageUrl": "Mirdmhkg", "smallImageUrl": "Xe3SBaqI", "width": 24}], "localizations": {"0rSU6BA3": {"description": "ri4CM45S", "title": "SrBVkXug"}, "J2eBy0SQ": {"description": "6O4LsbH2", "title": "STTEQ2a5"}, "7T24zVyj": {"description": "TUi2DqWN", "title": "yA8nebhO"}}, "passItemId": "DfNqbVak"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'AmL6z8HR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    '3hM5WuIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'jCzfh4eY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'Rc0yK7Rz' \
    --body '{"code": "7vYxKlAK", "currency": {"currencyCode": "4Oi6eDbz", "namespace": "2u8xLsNM"}, "image": {"as": "3MHmOMkB", "caption": "kZqJ2w6g", "height": 92, "imageUrl": "30yjQolc", "smallImageUrl": "qquPjYWn", "width": 90}, "itemId": "3xK8t6o3", "quantity": 2, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'VyyZQsvs' \
    'OmzbbLHL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'eC23sgT5' \
    'BPxQrIk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'Fex62k20' \
    'CP6qSOAN' \
    --body '{"currency": {"currencyCode": "LF7rLF4s", "namespace": "fn3jVFEz"}, "image": {"as": "t9T9QiGb", "caption": "X5Wn2SVt", "height": 15, "imageUrl": "2eadzrQN", "smallImageUrl": "f8D8lqpw", "width": 11}, "itemId": "M19KtSOx", "nullFields": ["2Cym7kaa", "GiosZL1r", "YEjrMolT"], "quantity": 3, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'df2Hcfd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'EHqzKy1r' \
    --body '{"index": 49, "quantity": 97, "tier": {"requiredExp": 10, "rewards": {"0yOmalMP": ["rPuw8msq", "Y3zY5j3f", "vQyMfyYA"], "6e4bn3Mv": ["DGuvttuP", "bRnUZqSH", "R6hu5PmZ"], "TFT7aEzY": ["7PJ8UH4l", "22Q8UDRu", "ocaejUGK"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'YMbpsCK4' \
    'skSmwVQQ' \
    --body '{"requiredExp": 89, "rewards": {"AEk3JczG": ["EtXBNkwI", "VT7EXXhl", "EGdpkhHH"], "4phNvmAt": ["q3cZuMQF", "Q0u89AGn", "SvP3vvpt"], "G3dhM0g3": ["rua0rUJU", "Z00yAQxO", "bcLIm1uU"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'hj8tu1rF' \
    'YNEBr0m7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    '9EFxaavz' \
    'lv8MOOQi' \
    --body '{"newIndex": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'h5B4Xaqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'mkf8ztV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'oeV0mx3K' \
    --body '{"exp": 28, "source": "SWEAT", "tags": ["Jmz5pjUk", "Gi84azA2", "VROybbkT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'TXrJ3U4E' \
    --body '{"passCode": "mYMVlzhD", "passItemId": "rML2skUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'fHZ6oY6y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    '5vVJRK2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '8S6cGr4y' \
    --body '{"passItemId": "agBeovgw", "tierItemCount": 18, "tierItemId": "jFiyjNkO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'fmkNmvbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'N2Yq1pVd' \
    --body '{"count": 32, "source": "PAID_FOR", "tags": ["yA7MmUj8", "K8L40nB6", "dlHSZk8a"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'mlrdRPkO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'NJ4kOkyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'jVoWPAXK' \
    'EgcUGSSU' \
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
    'xvhRsqSr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'VBlIJhUv' \
    --body '{"passCode": "ppZGkNWP", "rewardCode": "SIrfv5gx", "tierIndex": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    '73wm1HkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'CFRgAwQg' \
    'ZolNOgEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
