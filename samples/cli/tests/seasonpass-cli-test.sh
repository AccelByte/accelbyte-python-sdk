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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "twYCA9kP", "defaultRequiredExp": 71, "draftStoreId": "tufHIRdH", "end": "1972-07-26T00:00:00Z", "excessStrategy": {"currency": "9nIW0Oai", "method": "NONE", "percentPerExp": 46}, "images": [{"as": "9B0D7eHp", "caption": "zSn3ZPUd", "height": 5, "imageUrl": "5kRa62Wo", "smallImageUrl": "pBJHPtcD", "width": 37}, {"as": "wE6I56Ia", "caption": "RDBXxyaN", "height": 29, "imageUrl": "eFbQ1g7q", "smallImageUrl": "bPngUNB1", "width": 43}, {"as": "zSxwElFH", "caption": "Hdgs21Ju", "height": 4, "imageUrl": "ZQVqGj6o", "smallImageUrl": "DLjWjkY1", "width": 1}], "localizations": {"ODpoMF78": {"description": "NY4YkHs1", "title": "cnz1JSDg"}, "Y1TXp38z": {"description": "sCTCrbCb", "title": "POyNQkT7"}, "NvyE3cwy": {"description": "ALczNIic", "title": "Xm7agSrj"}}, "name": "JW2OQNOs", "start": "1998-12-05T00:00:00Z", "tierItemId": "D6QVKNCW"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["P75TB0i7", "pKxR8dl0", "zRVW4EZG"]}' --login_with_auth "Bearer foo"
seasonpass-get-season '9m0XcgGV' --login_with_auth "Bearer foo"
seasonpass-delete-season 'bMqSszE8' --login_with_auth "Bearer foo"
seasonpass-update-season 'GHavj7Ao' --body '{"autoClaim": true, "defaultLanguage": "IhUDrwoZ", "defaultRequiredExp": 97, "draftStoreId": "MecdKi5r", "end": "1996-12-15T00:00:00Z", "excessStrategy": {"currency": "fwHuKeb9", "method": "CURRENCY", "percentPerExp": 39}, "images": [{"as": "3rGN9A3s", "caption": "Nm84hddS", "height": 31, "imageUrl": "AcBdW19m", "smallImageUrl": "4eu6d5tA", "width": 20}, {"as": "duuyZ0Gh", "caption": "DogqrhBR", "height": 7, "imageUrl": "N05MYzYi", "smallImageUrl": "KWe5dNRl", "width": 19}, {"as": "AjGGJddV", "caption": "Cvu9vx5K", "height": 88, "imageUrl": "kLGMS0ly", "smallImageUrl": "uI9a2I9u", "width": 86}], "localizations": {"Vpbsx5w8": {"description": "hqUI06Up", "title": "OXGSLmCV"}, "uHOPlLlk": {"description": "vR8sKgnu", "title": "RkgghGoY"}, "upD391C2": {"description": "qtPYokah", "title": "FjkQsfCa"}}, "name": "Tmt1d67F", "start": "1996-09-23T00:00:00Z", "tierItemId": "3VLisV6z"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'wPuo3td6' --body '{"end": "1994-02-05T00:00:00Z", "name": "C6I3lMjG", "start": "1993-06-04T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'WN2laRlx' --login_with_auth "Bearer foo"
seasonpass-query-passes 'fcjHfYak' --login_with_auth "Bearer foo"
seasonpass-create-pass 'UCTqGkE7' --body '{"autoEnroll": true, "code": "z1UaLqYS", "displayOrder": 91, "images": [{"as": "WytLPziZ", "caption": "MdjxcBZu", "height": 11, "imageUrl": "5TAQ6iiP", "smallImageUrl": "lSC2uE4o", "width": 61}, {"as": "Vwdo3feP", "caption": "qIJA8IHt", "height": 35, "imageUrl": "qb8RwNmn", "smallImageUrl": "9HrNQy4u", "width": 55}, {"as": "AAiE0mit", "caption": "9RGCCHYz", "height": 96, "imageUrl": "wGyzzWi9", "smallImageUrl": "gwQYv7t1", "width": 30}], "localizations": {"7Vk6Jt4Y": {"description": "mos9Jcdo", "title": "s4fYcTVU"}, "6RBt0zYo": {"description": "McHyCUEX", "title": "lAvxJMda"}, "lwSyliWM": {"description": "NW5NyLu0", "title": "M3VHh2EI"}}, "passItemId": "8JlDbPWb"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'Q6Q9lNmq' 'RBaAkLnv' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'xkT1X68c' 'mDc3fxU8' --login_with_auth "Bearer foo"
seasonpass-update-pass 'MyKrQpM4' 'hkkK6KKX' --body '{"autoEnroll": true, "displayOrder": 48, "images": [{"as": "Gv0IqmF5", "caption": "1TkhjYna", "height": 34, "imageUrl": "UDjasWIP", "smallImageUrl": "UvmEejtG", "width": 8}, {"as": "kILsSSyD", "caption": "dmykmoPY", "height": 13, "imageUrl": "5MXbN9oC", "smallImageUrl": "MNqq98Sj", "width": 93}, {"as": "4IxjUkl5", "caption": "35X3ateE", "height": 75, "imageUrl": "sUC9b6i5", "smallImageUrl": "lZC9xv32", "width": 9}], "localizations": {"boLQQ1Mz": {"description": "H7Qm8bwb", "title": "mXgdAPh1"}, "EThG96gA": {"description": "FKK2WDgC", "title": "cxvONZm3"}, "EeERmDny": {"description": "eFoF7VSZ", "title": "6pf3vneS"}}, "passItemId": "D2Tb3g7m"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'SQUhAEtr' --login_with_auth "Bearer foo"
seasonpass-retire-season 'mjqU6YE3' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'p4lSck0Z' --login_with_auth "Bearer foo"
seasonpass-create-reward 'Hn5GI39Y' --body '{"code": "BHqaTHeK", "currency": {"currencyCode": "tW18iGeU", "namespace": "lc9d9sog"}, "image": {"as": "Wa24CKNS", "caption": "0GqVvUfH", "height": 87, "imageUrl": "W4ZJJ42d", "smallImageUrl": "3PBddN8S", "width": 23}, "itemId": "lSAiYnNj", "quantity": 22, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'fZrQvGgb' 'LdLsFzHk' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'BMr1yrOM' 'lNFSrUEi' --login_with_auth "Bearer foo"
seasonpass-update-reward 'rnjX9fDm' 'IbeZxzfT' --body '{"currency": {"currencyCode": "cyiuATus", "namespace": "9hsfpFDc"}, "image": {"as": "SDG8aMVG", "caption": "LiBNrDjq", "height": 30, "imageUrl": "yDPUIj88", "smallImageUrl": "cekdqCt8", "width": 86}, "itemId": "AHdNzDme", "nullFields": ["IP6rOvDz", "k6YmJFfR", "9KOsb392"], "quantity": 56, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'j29a9LJE' --login_with_auth "Bearer foo"
seasonpass-create-tier '8HoRS1X2' --body '{"index": 84, "quantity": 67, "tier": {"requiredExp": 64, "rewards": {"pAnkCmBU": ["qg2SCnqn", "tX9y1aZS", "WMiVi10s"], "G6vxkfUc": ["mqRRbceJ", "5i0EeDxO", "gBnhhqEl"], "IaDml48w": ["dNFLTm5T", "50x9WT0G", "fH2rtOa4"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'EXsXzOXQ' 'Ak4mqrxz' --body '{"requiredExp": 94, "rewards": {"4SqYUTLD": ["x9gIiDan", "dpGT2t24", "aOMh5eC3"], "IHeHSKLC": ["a3xreNDU", "WehwH3q3", "1A806DJg"], "as4b6z3L": ["NUj7fdgL", "A84Z8YYk", "6QEgJjBb"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'EDoNf3n0' 'hEoRCAcf' --login_with_auth "Bearer foo"
seasonpass-reorder-tier '80zfFyab' 'WAgIUXiI' --body '{"newIndex": 30}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season '7A68eaqC' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons '2J9jyEW6' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'GLbc0NaK' --body '{"exp": 61, "source": "SWEAT", "tags": ["UL3sa13l", "k1dQBHO8", "6IlBhnet"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'U4RwTqUX' --body '{"passCode": "lTDBzOuY", "passItemId": "saZA2yyd"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes '4mbqoOfA' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'DMMAXFaY' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable '9eKa699b' --body '{"passItemId": "RVhyaKww", "tierItemCount": 35, "tierItemId": "Dm4hMzF4"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'TxodenSr' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'UTvfqU0b' --body '{"count": 11, "source": "PAID_FOR", "tags": ["udOfjnCu", "HZ3c46Ij", "Ga23YvYm"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'mDg7VYPX' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'IuvUYTZB' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'RujIUE1T' 'q5jyAZvk' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'RCMNFIur' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'jh2imdb4' --body '{"passCode": "rbkXj0Zw", "rewardCode": "sVC0gL97", "tierIndex": 97}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards '07Y2QD3o' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'D5fLCr3O' 'OlXVv8ZG' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "uYnGzpip", "defaultRequiredExp": 81, "draftStoreId": "Y7KQI1Ae", "end": "1987-11-14T00:00:00Z", "excessStrategy": {"currency": "gPqaOkvo", "method": "NONE", "percentPerExp": 1}, "images": [{"as": "l4nmwAft", "caption": "4gqkNNlW", "height": 22, "imageUrl": "MD3cym8x", "smallImageUrl": "IfkOVW2g", "width": 37}, {"as": "C9LxhvNX", "caption": "TwGBCtoh", "height": 76, "imageUrl": "fl7MUBG7", "smallImageUrl": "qtPu64yA", "width": 40}, {"as": "XCs5SPBb", "caption": "RPZTF6oQ", "height": 54, "imageUrl": "gMdIIlhS", "smallImageUrl": "1fSiM933", "width": 67}], "localizations": {"m7Ta1PsK": {"description": "c50Kv6ec", "title": "nEevcAx2"}, "K2zkRenm": {"description": "PZnGBt4P", "title": "7WnbdSJt"}, "jX7ZshZy": {"description": "Zl5x4bRX", "title": "BHUTrDzZ"}}, "name": "SKscfOcY", "start": "1981-11-21T00:00:00Z", "tierItemId": "3dpCROYq"}' \
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
    --body '{"userIds": ["UiGKXVFC", "mpo6sPwV", "OEDSJsEK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    '5QpNhlI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'iS5EpGhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'vXYck0up' \
    --body '{"autoClaim": true, "defaultLanguage": "0NBMA9OR", "defaultRequiredExp": 49, "draftStoreId": "kEORV3bu", "end": "1998-01-04T00:00:00Z", "excessStrategy": {"currency": "eXUGPJsw", "method": "CURRENCY", "percentPerExp": 16}, "images": [{"as": "Do5sYadC", "caption": "CFrHHC3D", "height": 31, "imageUrl": "JzPyrVEi", "smallImageUrl": "OG4Ucqsu", "width": 67}, {"as": "8mnfHK8C", "caption": "CmE2lPns", "height": 2, "imageUrl": "pomM8sm1", "smallImageUrl": "MiaI1mX2", "width": 40}, {"as": "ugBp3HBv", "caption": "epnDCjgy", "height": 74, "imageUrl": "k0WvGYYn", "smallImageUrl": "x4V709xb", "width": 28}], "localizations": {"e9nzJ6fH": {"description": "24T805tV", "title": "g8JqU0jZ"}, "pjvsugAO": {"description": "S7u8RiWy", "title": "erCSa8SR"}, "gwsAj1ik": {"description": "1jglaDXT", "title": "vKCWwNTA"}}, "name": "hd2wrS0u", "start": "1992-06-05T00:00:00Z", "tierItemId": "djhdinpn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'g5BLy8wb' \
    --body '{"end": "1974-05-05T00:00:00Z", "name": "MssAHjap", "start": "1988-03-06T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'kY9Rf4wP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    '57dBZNR8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    '8YbCtmKy' \
    --body '{"autoEnroll": false, "code": "M9zVrjfG", "displayOrder": 2, "images": [{"as": "ZnqAQUoY", "caption": "1GjlIIk0", "height": 16, "imageUrl": "50CnPb71", "smallImageUrl": "ORYcmQbT", "width": 95}, {"as": "QN0qdskd", "caption": "QV0TqI8E", "height": 64, "imageUrl": "KQDOJvrT", "smallImageUrl": "efglSs6g", "width": 88}, {"as": "iY9u02aC", "caption": "NYIWekp1", "height": 20, "imageUrl": "lOC3mNqF", "smallImageUrl": "7Bl0Lcgh", "width": 98}], "localizations": {"IIlGcHB3": {"description": "CfR3ncDl", "title": "wi3v3MFF"}, "J1KesKoE": {"description": "LCpobBEG", "title": "8X645xpd"}, "Xpai0rYa": {"description": "T5hOPjaf", "title": "3H0tYigh"}}, "passItemId": "U0VUfcYH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'JbBfAKSi' \
    'PW3VgsZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'iR1DJ7HV' \
    'WqMkNSaw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'QUWDFJvJ' \
    'BWic7UkB' \
    --body '{"autoEnroll": false, "displayOrder": 85, "images": [{"as": "IXuqDuAX", "caption": "I66bQ71w", "height": 41, "imageUrl": "deoV9Lx5", "smallImageUrl": "RDA1l2Xc", "width": 35}, {"as": "CancUZGC", "caption": "HsZYoLfR", "height": 89, "imageUrl": "KtOv7Zy0", "smallImageUrl": "b65uvuKN", "width": 41}, {"as": "FnE3Tam6", "caption": "9qSZ7PC6", "height": 12, "imageUrl": "SKOLFKx1", "smallImageUrl": "dX4LuWJu", "width": 32}], "localizations": {"AAz3S4cz": {"description": "z0QKFlAV", "title": "mVLu4AOe"}, "c0z8eBee": {"description": "oip68J1n", "title": "sv4W2OJh"}, "tafxMSJl": {"description": "Heb34sZK", "title": "Hcl5LLLO"}}, "passItemId": "exL4fZvW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'tND2tcBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'pX8lNtFE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'J7tnkY6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'ca5afj12' \
    --body '{"code": "K2IzrBvv", "currency": {"currencyCode": "Wm4udE0O", "namespace": "XudXgNne"}, "image": {"as": "8kJATwlc", "caption": "6esUp6Sw", "height": 26, "imageUrl": "I98jeZQ7", "smallImageUrl": "hfxnhLd3", "width": 75}, "itemId": "G8SWP3gl", "quantity": 95, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    '6muswVJn' \
    'NnN7kAa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'j0riFc5H' \
    'THQIoVsG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'o7dwV9DB' \
    'qFKHQkET' \
    --body '{"currency": {"currencyCode": "JyTlUrwD", "namespace": "TnoujQD4"}, "image": {"as": "IEiH9Z5q", "caption": "Xn3aoRtl", "height": 34, "imageUrl": "eTH26IUJ", "smallImageUrl": "NvYuGRUv", "width": 32}, "itemId": "8X1A3PrI", "nullFields": ["Me4L3mDW", "ORBVXTII", "fapq5AAe"], "quantity": 73, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'M9XsYIIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'xiXNMR9B' \
    --body '{"index": 13, "quantity": 67, "tier": {"requiredExp": 1, "rewards": {"4AvQkqsG": ["nmyo5JJT", "UVmb8GEX", "FTlEMEsF"], "zYqwgK1N": ["p5nodqpL", "m7FhJBNX", "zAFdO0Kh"], "qf6kiTdS": ["Gv2LFjAK", "Y7CbgsWq", "FWZX7kPB"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'om8F9GLL' \
    'TG8phc3n' \
    --body '{"requiredExp": 65, "rewards": {"iLoIllKl": ["pO2pqiXJ", "F3WGRaoQ", "omSJC4Dd"], "rKF7SUQP": ["LG59e0k5", "ZtX6wK7P", "pUlcIW32"], "iK7MGt1i": ["xY5rA1Wo", "VeJIePF8", "ZrQzP4zv"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'tdxdbZUp' \
    'd6FJtHJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'pyVwyKQL' \
    'Y6FEO65R' \
    --body '{"newIndex": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '6ghP1y4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'i7s7QBlk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    '44Z44B1G' \
    --body '{"exp": 14, "source": "SWEAT", "tags": ["g4uKxaCg", "cGLuC3br", "WdTYCfHk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'IySok5Di' \
    --body '{"passCode": "XZtLW87r", "passItemId": "Gysryod3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'dNQrmsAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'RA6HX3Rw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'rKt2ecoz' \
    --body '{"passItemId": "L0TOg54v", "tierItemCount": 57, "tierItemId": "2W7l6jHM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'A2rG3nak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'opAywelu' \
    --body '{"count": 33, "source": "SWEAT", "tags": ["nryEJ0Nq", "oTow0qiO", "iC4j0ikt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'm0ZPLkLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'sp0LZ5nj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'N86Hl8kU' \
    'Xzt6bSc6' \
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
    'bWvgpVyW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    '9dD1kOmv' \
    --body '{"passCode": "rAejcq2L", "rewardCode": "gkQuaS7R", "tierIndex": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'BME74HUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'ipUWYhWV' \
    '1qx8CzPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
