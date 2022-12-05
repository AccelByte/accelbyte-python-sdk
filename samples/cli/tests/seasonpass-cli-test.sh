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
seasonpass-create-season --body '{"autoClaim": false, "defaultLanguage": "WdJY4VRY", "defaultRequiredExp": 82, "draftStoreId": "eXJoZeM1", "end": "1978-09-24T00:00:00Z", "excessStrategy": {"currency": "VK36CAwZ", "method": "NONE", "percentPerExp": 54}, "images": [{"as": "pk8KvqfF", "caption": "1RnXfjtF", "height": 22, "imageUrl": "thZThcPd", "smallImageUrl": "iRHnYrN1", "width": 40}, {"as": "KbtXFIvW", "caption": "ynZMYO2N", "height": 32, "imageUrl": "AXQjcQbv", "smallImageUrl": "heBKfhbC", "width": 29}, {"as": "JPdN3LRH", "caption": "TijKaeCF", "height": 75, "imageUrl": "Iojq7xQP", "smallImageUrl": "KupdNd5m", "width": 69}], "localizations": {"UNYI63rs": {"description": "Y4BgEfQs", "title": "Md54XVqK"}, "hqbTagw0": {"description": "bIuRYe0c", "title": "sIEA7vem"}, "pAOqoP0f": {"description": "D5Vd1TjM", "title": "6ytPPFMD"}}, "name": "tst91DCb", "start": "1975-02-06T00:00:00Z", "tierItemId": "UvYUVUdT"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["cf2NzAbP", "msXYHLWK", "otUXx20L"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'VxrYSBaZ' --login_with_auth "Bearer foo"
seasonpass-delete-season 'PJewBKiu' --login_with_auth "Bearer foo"
seasonpass-update-season '1IVTYkXK' --body '{"autoClaim": false, "defaultLanguage": "I779h3XI", "defaultRequiredExp": 45, "draftStoreId": "10F0aX5n", "end": "1978-09-30T00:00:00Z", "excessStrategy": {"currency": "g3Fda4og", "method": "NONE", "percentPerExp": 100}, "images": [{"as": "Hy0T0SKu", "caption": "VmGP3ZYF", "height": 50, "imageUrl": "4JfFtcTU", "smallImageUrl": "hHPYRmXx", "width": 26}, {"as": "xrLgZ2hA", "caption": "c8qMFE7r", "height": 27, "imageUrl": "3EvpU37a", "smallImageUrl": "jBf0uyUT", "width": 65}, {"as": "u3ZfPFlF", "caption": "HQazbavp", "height": 58, "imageUrl": "pPq9Rz6M", "smallImageUrl": "wMF3e6NF", "width": 87}], "localizations": {"AIAPObwB": {"description": "bmtEpuQC", "title": "3Kv4z3Jt"}, "4w3kr5qA": {"description": "ZALEhv4X", "title": "Zu1onxIN"}, "HQBhFiyL": {"description": "JWf1YvSo", "title": "qjNULW5h"}}, "name": "8QSk95fg", "start": "1982-06-29T00:00:00Z", "tierItemId": "lMDq4jEB"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'eDICXkpx' --body '{"end": "1973-09-23T00:00:00Z", "name": "4PLEoVXR", "start": "1985-03-13T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'mTjDkQ15' --login_with_auth "Bearer foo"
seasonpass-query-passes 'GPmCfmeD' --login_with_auth "Bearer foo"
seasonpass-create-pass 'wVnlYkGc' --body '{"autoEnroll": true, "code": "IMckQ1Gc", "displayOrder": 69, "images": [{"as": "zKpshF6b", "caption": "XH8G7RcP", "height": 38, "imageUrl": "j9rpd264", "smallImageUrl": "L780zXHZ", "width": 84}, {"as": "FYj39EuW", "caption": "K8NyJCJh", "height": 80, "imageUrl": "Hmoh7rYU", "smallImageUrl": "bneIbw8h", "width": 2}, {"as": "52ybVw5G", "caption": "gXn6XRf3", "height": 30, "imageUrl": "3QhoxJZb", "smallImageUrl": "7y98Wc1Y", "width": 90}], "localizations": {"uQS3NK4O": {"description": "PEW4cby5", "title": "il0nhkfk"}, "ardJRrH9": {"description": "Ccfq9LoB", "title": "SGqnqpGH"}, "qJPKhcev": {"description": "cCSqOb98", "title": "Fsk0Ac8N"}}, "passItemId": "rMsCXa5h"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'd17FwMeo' 'X3zQ6k7Q' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'mdAvGOpk' '2aER6ZHI' --login_with_auth "Bearer foo"
seasonpass-update-pass 'ynnLKO4E' 'YC2eyKRP' --body '{"autoEnroll": true, "displayOrder": 19, "images": [{"as": "LMhZexkG", "caption": "GPyfwCuU", "height": 72, "imageUrl": "uFekqCCw", "smallImageUrl": "InQNuiHR", "width": 31}, {"as": "6L1rEJMU", "caption": "AeWwU6sN", "height": 89, "imageUrl": "GdnEGQa5", "smallImageUrl": "K8Bz5H7J", "width": 75}, {"as": "VpmtD6FD", "caption": "nfGWMGv4", "height": 62, "imageUrl": "ci0L1eqA", "smallImageUrl": "7666KHMa", "width": 87}], "localizations": {"4qz1rrfj": {"description": "kOD4ZxKs", "title": "UCChAfoO"}, "MtTHLQd1": {"description": "aRjbwV8v", "title": "9cz12AnB"}, "0ejCCm6P": {"description": "n5gyiczt", "title": "GpIgjIUg"}}, "passItemId": "Bigc9DKp"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'QFKKuha9' --login_with_auth "Bearer foo"
seasonpass-retire-season 'f7R3hytQ' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'eZyVvGrI' --login_with_auth "Bearer foo"
seasonpass-create-reward 'IKqiackj' --body '{"code": "ZAVZzOZk", "currency": {"currencyCode": "9nyejgMP", "namespace": "K35w2Jv3"}, "image": {"as": "Rg58SuRW", "caption": "CNuUj7NE", "height": 65, "imageUrl": "IB4cVq5V", "smallImageUrl": "gtIaP1cL", "width": 85}, "itemId": "MpH7RwKa", "quantity": 7, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'uPGaUooZ' 'kcEvI4GD' --login_with_auth "Bearer foo"
seasonpass-delete-reward '7opCP94K' 'cREIoxmh' --login_with_auth "Bearer foo"
seasonpass-update-reward 'F6HW4Qd1' '5kWfMXIh' --body '{"currency": {"currencyCode": "Zo7yCP3P", "namespace": "qdxAIaO1"}, "image": {"as": "Wj2t7yC9", "caption": "Nvw61wC2", "height": 69, "imageUrl": "Wvf8nmxI", "smallImageUrl": "nuDV1dPk", "width": 83}, "itemId": "1LK8hzdv", "nullFields": ["Zy9WF8D6", "KyRiLrlo", "94BMahhZ"], "quantity": 77, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'E2aiUtn9' --login_with_auth "Bearer foo"
seasonpass-create-tier 'HR8VUpF9' --body '{"index": 72, "quantity": 73, "tier": {"requiredExp": 63, "rewards": {"W3n96ens": ["lSRBWqp0", "u8NLVZDP", "AH3GOH0m"], "cEAJIM4S": ["cW8RmEpb", "dYRDGIhR", "NzLhTfoI"], "ivBjzZV5": ["v1B2Ns2z", "9WVhv8ot", "qzAiNfEU"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'wqaxvPoP' 'nV7Gwysn' --body '{"requiredExp": 35, "rewards": {"szFRvC3G": ["tFUPH0Eu", "gtdoLNVf", "ZOf1wDX9"], "FH0sfdoD": ["zM6opuQ7", "VjBq7ZWk", "nGEx3B43"], "AA4fSxcc": ["g9UGR9PU", "JkilX5Cs", "Gv6uWmzd"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'SwVYuE9h' 'zCckqm70' --login_with_auth "Bearer foo"
seasonpass-reorder-tier '4e085OZN' 'PbYSckVB' --body '{"newIndex": 53}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'hXGTRTUw' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'HGaBo5i8' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'NQOSAwAh' --body '{"exp": 38, "source": "PAID_FOR", "tags": ["BxLVH6zM", "eGyFn6I7", "sUfE39BX"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'pohuMPyu' --body '{"passCode": "UKZ4u54Z", "passItemId": "OX39ptTL"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'wZuX3Gmm' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'eHnOPYz6' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'gnitZQtB' --body '{"passItemId": "CuUmakfa", "tierItemCount": 62, "tierItemId": "fk1sjzZj"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'K8Q29FZn' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'Hs2PT6sd' --body '{"count": 71, "source": "PAID_FOR", "tags": ["IgChkO4r", "jQ9Cpi6X", "yZ43eKDy"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'Tk97LKyn' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'CAn9lXqv' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'f2fSsmu3' 'SYhYdERQ' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'ygs0PLq8' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward '5BUT8519' --body '{"passCode": "DzzPjUJx", "rewardCode": "4ICEkw6R", "tierIndex": 9}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'l4vO1zjw' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'dMBT50cT' 'M7zhJRib' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "Ige2oxll", "defaultRequiredExp": 54, "draftStoreId": "13vxSGHi", "end": "1992-02-26T00:00:00Z", "excessStrategy": {"currency": "PrIHPWOo", "method": "NONE", "percentPerExp": 45}, "images": [{"as": "CvWpFbE0", "caption": "QsPyGkyU", "height": 88, "imageUrl": "rUliN0oo", "smallImageUrl": "msaCqDAB", "width": 81}, {"as": "oyw5XJ4c", "caption": "2FVOnOga", "height": 80, "imageUrl": "fUDIYzlg", "smallImageUrl": "1EfSAZOf", "width": 17}, {"as": "PwKtv5lh", "caption": "oIEVIiqX", "height": 91, "imageUrl": "DzMJZ14t", "smallImageUrl": "nUcKyAKu", "width": 32}], "localizations": {"mIW7yvic": {"description": "mWema3vX", "title": "7gM31d6b"}, "ZXL0cSJP": {"description": "Q2h1xixv", "title": "o7ZkkY7B"}, "b3UNjYz2": {"description": "130qLOW1", "title": "aB2xfkXC"}}, "name": "xRGHIQGf", "start": "1988-01-23T00:00:00Z", "tierItemId": "SbQ91tZN"}' \
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
    --body '{"userIds": ["oMUnjyWk", "QLNtqDk1", "7GIYauJy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'UyDTYEG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'TH87ltyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'z4XwRtgU' \
    --body '{"autoClaim": false, "defaultLanguage": "urhAPBTn", "defaultRequiredExp": 88, "draftStoreId": "rX6AbdJX", "end": "1981-01-15T00:00:00Z", "excessStrategy": {"currency": "6tQiys4Y", "method": "CURRENCY", "percentPerExp": 65}, "images": [{"as": "S7RKhsTC", "caption": "E1M1sw2B", "height": 62, "imageUrl": "hcgDvVXG", "smallImageUrl": "hgoLZRDX", "width": 66}, {"as": "gjaXdVlC", "caption": "GmhDn965", "height": 22, "imageUrl": "y0ee6yDJ", "smallImageUrl": "D2hIvqo7", "width": 27}, {"as": "y8HmnW3X", "caption": "M7jR96bd", "height": 49, "imageUrl": "mTU2NYrU", "smallImageUrl": "RiOJUX2i", "width": 11}], "localizations": {"J197t15T": {"description": "9A9fxG8u", "title": "FvsDJkEK"}, "mQV2LXYZ": {"description": "rF0Vi7MP", "title": "VSDhBbGq"}, "7zHFkqaq": {"description": "qbJ4ty7I", "title": "AYiqiOeU"}}, "name": "VFsAwAKo", "start": "1990-12-13T00:00:00Z", "tierItemId": "6BWxeZfS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'VJ9YqtCy' \
    --body '{"end": "1994-05-10T00:00:00Z", "name": "WVq9kN2i", "start": "1981-01-10T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'KOOjswXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'BNJunZe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'dbEV3xc7' \
    --body '{"autoEnroll": true, "code": "y8qWTIl0", "displayOrder": 83, "images": [{"as": "BBONdDfP", "caption": "9qerzcNe", "height": 3, "imageUrl": "rwcN4K49", "smallImageUrl": "LVir1fNv", "width": 27}, {"as": "B2GWCBuR", "caption": "WSEI3YXH", "height": 48, "imageUrl": "Qoh95Uj1", "smallImageUrl": "yaBOBmSD", "width": 48}, {"as": "nZb68AlP", "caption": "0fWQQAUP", "height": 19, "imageUrl": "b2FkluPV", "smallImageUrl": "AvcmK9N8", "width": 9}], "localizations": {"NQkFeGNF": {"description": "tJgJpjto", "title": "XlTXu6ZY"}, "R3Mdl8z0": {"description": "hf4e8Xdw", "title": "hpVhyymF"}, "mcElj4Ub": {"description": "vWzGc4cs", "title": "CkwDA1ld"}}, "passItemId": "2F8ytmAd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'EORBM48r' \
    'wvf6XUL6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'btDjnXuj' \
    'RsCLyYjm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'Nu4OoFQQ' \
    'o43fqnrK' \
    --body '{"autoEnroll": false, "displayOrder": 22, "images": [{"as": "UlrZ7wCB", "caption": "pO8YpMiS", "height": 84, "imageUrl": "ygj7qUrf", "smallImageUrl": "tUGuTiKO", "width": 28}, {"as": "8J23UUE7", "caption": "h0IfW2XZ", "height": 83, "imageUrl": "GjTZnqvu", "smallImageUrl": "49QHEJpK", "width": 86}, {"as": "wYSdQQFs", "caption": "6MiZBfQD", "height": 37, "imageUrl": "wkuftwub", "smallImageUrl": "4MWxuzjv", "width": 63}], "localizations": {"31evwEBe": {"description": "lfCYAJbI", "title": "xKyh46rI"}, "gY5tB4b5": {"description": "BPDEMmwR", "title": "WQZQy1Gh"}, "azGuwHNm": {"description": "LoiIz91x", "title": "paAuif5u"}}, "passItemId": "sOuKduyn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'zoHMPhM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    '20urGUqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'k177BvFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    '6MACxnnN' \
    --body '{"code": "dztq2NYQ", "currency": {"currencyCode": "HoTWeUZY", "namespace": "yNwKUvW7"}, "image": {"as": "hlqwVr0h", "caption": "UdrZnOOf", "height": 36, "imageUrl": "ZrLcW4a3", "smallImageUrl": "0U8cMYi6", "width": 70}, "itemId": "AYk0INlx", "quantity": 32, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'G9EOBsZT' \
    'fOixxOkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'M2QjuSzU' \
    't7vnzVVu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'wRxLPB52' \
    '6IWyR3fT' \
    --body '{"currency": {"currencyCode": "eSMq1nTc", "namespace": "8mmxInEt"}, "image": {"as": "OExTeeAy", "caption": "qH6YhTBB", "height": 16, "imageUrl": "762ugWpf", "smallImageUrl": "mvtslgjz", "width": 95}, "itemId": "ZV5rlyDx", "nullFields": ["YIDRuxDR", "smoCtw4e", "QXHFk42R"], "quantity": 97, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'VpbebfDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    '2Ao4XcAI' \
    --body '{"index": 54, "quantity": 7, "tier": {"requiredExp": 35, "rewards": {"1d2VOfy0": ["xqNk5zWw", "s3Z1uNO7", "KMMTRDO9"], "fJkWgCtg": ["3K8Q2ifZ", "Q3MmdfMn", "afSf6khp"], "fCJAWxfA": ["JBdGcnhD", "NyRreCFA", "1zTtVmcO"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    '5Rzmw19U' \
    'x3ut99f5' \
    --body '{"requiredExp": 34, "rewards": {"PGNsWLs1": ["VUgDfJYd", "TOBw9X7H", "9HYMuhrr"], "uMNQRJFU": ["xuCsetwf", "r2l4hhtI", "CSNRfwAy"], "FvxBCmj2": ["CsvJRrKG", "4pH3v4aB", "UxMTj9jI"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'wLqaCoxA' \
    '35xva440' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'Jexhcp2I' \
    'wkhGUpZz' \
    --body '{"newIndex": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'vfFGHFqc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'GTPyriKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'Ee5dQmS8' \
    --body '{"exp": 82, "source": "PAID_FOR", "tags": ["FPUvHOFv", "BPFxM2hT", "3ue4UtTT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'bf4D3yuO' \
    --body '{"passCode": "16xdcvCo", "passItemId": "Zd2lmGAe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'AyKi3BZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'MKULCEOF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'SDFnAHcR' \
    --body '{"passItemId": "2CxNZo5H", "tierItemCount": 52, "tierItemId": "3IUQMmp0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'aYjHriHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'naDJXRjs' \
    --body '{"count": 1, "source": "SWEAT", "tags": ["bCturMvP", "iyMyzv4S", "XeiPteno"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'UVNtpISn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'JBAbBAN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'GZOvCnCk' \
    'MR8GqecT' \
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
    'RlXs8Mm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'pslC5Wb5' \
    --body '{"passCode": "zXzmJwii", "rewardCode": "ClAnxE7e", "tierIndex": 73}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'YkrBUBLB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'fP0vDcEg' \
    'PhU6tSMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
