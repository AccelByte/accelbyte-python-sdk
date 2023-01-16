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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "a0GMtmqe", "defaultRequiredExp": 80, "draftStoreId": "NhxAgpZq", "end": "1985-10-18T00:00:00Z", "excessStrategy": {"currency": "cTDKPlOX", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "NPfmrb4w", "caption": "lXsRgKib", "height": 73, "imageUrl": "n0arEuya", "smallImageUrl": "L3k0TTqK", "width": 44}, {"as": "UGpdP1b8", "caption": "G0DkdimW", "height": 93, "imageUrl": "apVatGte", "smallImageUrl": "SeNIFMnC", "width": 95}, {"as": "e4RPzU49", "caption": "dNorpKHM", "height": 91, "imageUrl": "hTTtMXoc", "smallImageUrl": "qOtAKeOB", "width": 35}], "localizations": {"Ve9pSXx3": {"description": "fX2GPCEJ", "title": "JDLOFdyf"}, "ZAFU91U1": {"description": "HPIxyWYf", "title": "7LMIrbD3"}, "3BGKWmwl": {"description": "JcWaH7jD", "title": "wbOpYLGp"}}, "name": "uad4LsAM", "start": "1998-04-06T00:00:00Z", "tierItemId": "kITRUX8A"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["F7MRtOYM", "mWhwqiL2", "NqLgX5Ka"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'Tv9JHCow' --login_with_auth "Bearer foo"
seasonpass-delete-season 'h8qMaegX' --login_with_auth "Bearer foo"
seasonpass-update-season 'DmRcXHMb' --body '{"autoClaim": true, "defaultLanguage": "sAtixOa0", "defaultRequiredExp": 13, "draftStoreId": "2K5O6tqd", "end": "1996-12-13T00:00:00Z", "excessStrategy": {"currency": "sWHR0R4E", "method": "CURRENCY", "percentPerExp": 44}, "images": [{"as": "5gv5OB3N", "caption": "qhpDXVV5", "height": 40, "imageUrl": "A6nhxRDp", "smallImageUrl": "1kKpBmxj", "width": 4}, {"as": "yIeaOj3A", "caption": "LvGZMkWa", "height": 5, "imageUrl": "Ofdtxvqq", "smallImageUrl": "cltkzINH", "width": 61}, {"as": "0VVCoIoS", "caption": "7jYo0xmg", "height": 45, "imageUrl": "USkmGacG", "smallImageUrl": "5nQUpS6t", "width": 37}], "localizations": {"RhK4rkuJ": {"description": "gVw4CRwK", "title": "Lx3gk0V5"}, "yfKBKJNj": {"description": "eUrZVok2", "title": "99uuB47F"}, "m7l61VOZ": {"description": "OYJHxOV9", "title": "9JYHRXdz"}}, "name": "yLICJvWk", "start": "1987-10-09T00:00:00Z", "tierItemId": "sieIBZdM"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'LNBmidv7' --body '{"end": "1975-05-04T00:00:00Z", "name": "Kg68tNMo", "start": "1978-12-28T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'T28hy5m9' --login_with_auth "Bearer foo"
seasonpass-query-passes 'rBkGcVOl' --login_with_auth "Bearer foo"
seasonpass-create-pass 'ptHEXkod' --body '{"autoEnroll": true, "code": "pc8C4phC", "displayOrder": 32, "images": [{"as": "nZD5ADht", "caption": "8q5KIIzc", "height": 45, "imageUrl": "6xPNDYn4", "smallImageUrl": "UwIHJzld", "width": 59}, {"as": "L7Ev4tl0", "caption": "e2t7Dr2h", "height": 65, "imageUrl": "47SGrvv2", "smallImageUrl": "eCSLrw23", "width": 58}, {"as": "REenBcT2", "caption": "qab7tDdn", "height": 25, "imageUrl": "BliCjtzu", "smallImageUrl": "FptgupbA", "width": 72}], "localizations": {"X8xMjhyS": {"description": "fBQvvNxP", "title": "1wiNhrPv"}, "ncAnMQor": {"description": "oqfE1sDi", "title": "jsAj5bpv"}, "dErb3hVb": {"description": "5o9wV7AE", "title": "4cJiRYpu"}}, "passItemId": "zIstReDk"}' --login_with_auth "Bearer foo"
seasonpass-get-pass '7oMCXaF1' 'Hek8WQ3f' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'gcSE9Osj' 'xlPfB9bg' --login_with_auth "Bearer foo"
seasonpass-update-pass 'J8Lxtvj3' 'VGk18jdP' --body '{"autoEnroll": true, "displayOrder": 85, "images": [{"as": "SFgzndak", "caption": "pOfB2lxt", "height": 43, "imageUrl": "qfPg89Rf", "smallImageUrl": "DL4ocZMm", "width": 71}, {"as": "eXxAGiQW", "caption": "uOwzNPcK", "height": 40, "imageUrl": "Jp3DiK8I", "smallImageUrl": "ZLAIY2ZB", "width": 31}, {"as": "dOJLrrUY", "caption": "ySnS9nYf", "height": 28, "imageUrl": "NUY9C2zX", "smallImageUrl": "Ddhqso93", "width": 45}], "localizations": {"VQMOTFiO": {"description": "iPR8a7wF", "title": "lyB2hwkO"}, "5pSONLcH": {"description": "7tfoGDsd", "title": "rfTfnkxi"}, "ptHgz8Hj": {"description": "Y5uoNlhG", "title": "NsHoSVPu"}}, "passItemId": "pvmZDjIK"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '9Yy85SDT' --login_with_auth "Bearer foo"
seasonpass-retire-season 'hxMPqMmI' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'y3VQf2zG' --login_with_auth "Bearer foo"
seasonpass-create-reward 'qoHIDKoV' --body '{"code": "MEq2yWY7", "currency": {"currencyCode": "RWWC1Ozh", "namespace": "T59pbb9Z"}, "image": {"as": "ffIW9GPc", "caption": "rfMK9X0M", "height": 5, "imageUrl": "tixI7HeM", "smallImageUrl": "BE41FZDb", "width": 82}, "itemId": "ERjU14VY", "quantity": 29, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward '06aNl2AJ' 'jds35PdE' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'Ij9AW7Et' 't89Rkuup' --login_with_auth "Bearer foo"
seasonpass-update-reward 'OPF8f20t' 'CKWFvudf' --body '{"currency": {"currencyCode": "orafrThF", "namespace": "wyKZZyfQ"}, "image": {"as": "9rZfx8Xx", "caption": "Rz4nJ6iQ", "height": 24, "imageUrl": "WyUeHrbF", "smallImageUrl": "DSW5esnt", "width": 73}, "itemId": "ykk3r9JK", "nullFields": ["OAKCOMWF", "vQYw1HYO", "8lgnCcS4"], "quantity": 55, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers '9B6JF0RN' --login_with_auth "Bearer foo"
seasonpass-create-tier 'LWVVPRgd' --body '{"index": 35, "quantity": 35, "tier": {"requiredExp": 68, "rewards": {"zJzXzXyN": ["J70qSBkc", "iQt8EMUG", "eaRdLCdB"], "QEhQsNbR": ["Z6MolaMx", "CEFLqksC", "Ub7CbtnL"], "HL9az0P2": ["vaLiOxMV", "lca95llN", "vr5AqPih"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'W4uB6CFV' 'Pf2uTZFr' --body '{"requiredExp": 71, "rewards": {"4RyrvJU8": ["RmHFVxDc", "9VGJvIe9", "Ggj4k03H"], "u8lKUIBg": ["kFrqVSxy", "v9WdTBhV", "JFNH5XPj"], "xN7vPY8s": ["RXPbZh9W", "MjxQcVz2", "fOzPj80O"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier '0osI39Pq' 'O5zCL58L' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'A5U12Ova' 'X9H3drlZ' --body '{"newIndex": 80}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season '5TaGFNvH' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'TGxczqt0' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'ywbYf1K5' --body '{"exp": 61, "source": "PAID_FOR", "tags": ["oMKix4Q0", "1LjZtBad", "sl8jJyUz"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'KLb5iDeR' --body '{"passCode": "egYiJa46", "passItemId": "wu3s6zSn"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'DdMmBzh3' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'oQ8QRC9F' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'JaTuVrAP' --body '{"passItemId": "pHFkldEe", "tierItemCount": 11, "tierItemId": "wsLrHAOC"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'ZfIr6G7N' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'Oqubemlc' --body '{"count": 50, "source": "SWEAT", "tags": ["OjWXbzjm", "KVHmjPii", "KFJAkvOv"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'kBtNBwRE' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'ATcU83uE' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'v2kSZEgb' 'zWr3VRYo' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'OkQEj8BZ' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'Irqoia5b' --body '{"passCode": "g40ndCip", "rewardCode": "X4WSXVDp", "tierIndex": 82}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'y0Q4MKPz' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'OfVKoBeB' 'HXIDa7Bz' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": true, "defaultLanguage": "xI6YPqIX", "defaultRequiredExp": 53, "draftStoreId": "9Z6fg6fd", "end": "1995-12-02T00:00:00Z", "excessStrategy": {"currency": "Mdu6ViIl", "method": "NONE", "percentPerExp": 25}, "images": [{"as": "lB7ppECb", "caption": "AV2z0ruy", "height": 51, "imageUrl": "OkncNNsw", "smallImageUrl": "KQ3WF8i6", "width": 52}, {"as": "EVIvghmp", "caption": "YLWVg8fV", "height": 56, "imageUrl": "Yz4JifjS", "smallImageUrl": "MBjrhTeD", "width": 31}, {"as": "3JHUUtMW", "caption": "5u85tCCA", "height": 52, "imageUrl": "WGgFfbEx", "smallImageUrl": "lQyR2NgO", "width": 99}], "localizations": {"tqYxAshN": {"description": "QWy6zYmr", "title": "Jf4XPIoK"}, "kUBS3qkJ": {"description": "Lx3CDXHe", "title": "OGXwjVDF"}, "QmZwTcYI": {"description": "ihqzJXXj", "title": "up0uQzTt"}}, "name": "gsIbiBIv", "start": "1972-02-01T00:00:00Z", "tierItemId": "TZ4gJKSM"}' \
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
    --body '{"userIds": ["D5JvB2wb", "Pu3mYPrW", "GQQuFRi1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    '6iUDrXgE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'sfoAPR5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'cewcyQBb' \
    --body '{"autoClaim": false, "defaultLanguage": "ZEn5cr5Y", "defaultRequiredExp": 21, "draftStoreId": "iszYn02R", "end": "1995-02-03T00:00:00Z", "excessStrategy": {"currency": "fio0sD2R", "method": "CURRENCY", "percentPerExp": 58}, "images": [{"as": "9ffmUS64", "caption": "LjWCUJlp", "height": 59, "imageUrl": "NSMONwGx", "smallImageUrl": "3p1A0FcI", "width": 55}, {"as": "JF7YtJzK", "caption": "gXqOSrc4", "height": 100, "imageUrl": "Z2RjlMOP", "smallImageUrl": "Ie8WgBlq", "width": 80}, {"as": "KCid7ovi", "caption": "yuavZVaz", "height": 17, "imageUrl": "XGdOTwDL", "smallImageUrl": "CO0xP1Se", "width": 87}], "localizations": {"1l6AaWSa": {"description": "oQkffRFa", "title": "UBGuMePi"}, "L4jJWa8v": {"description": "6U17vEm5", "title": "Z7BPNGr1"}, "9QfOclwF": {"description": "ZS4HksWB", "title": "P4ljSkzs"}}, "name": "Ltp4og3c", "start": "1978-01-05T00:00:00Z", "tierItemId": "EDfdcC1N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'Ol7wWeDF' \
    --body '{"end": "1988-11-27T00:00:00Z", "name": "IFV7Nx7f", "start": "1974-04-15T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'fC4fcwKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'WkAJM3fe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'eX91uSp7' \
    --body '{"autoEnroll": false, "code": "d2jGSL9G", "displayOrder": 89, "images": [{"as": "txVrwj9m", "caption": "1S56hquj", "height": 26, "imageUrl": "lQpeNCiU", "smallImageUrl": "1oQ0RFOf", "width": 44}, {"as": "XjkK9JZU", "caption": "PrL4OKTg", "height": 87, "imageUrl": "GxPvU5G7", "smallImageUrl": "3j9iTGgh", "width": 76}, {"as": "IsjMYevk", "caption": "aK21zpcM", "height": 39, "imageUrl": "6JK1WtEq", "smallImageUrl": "LV6xZv8M", "width": 4}], "localizations": {"6is72K07": {"description": "19lRZnsB", "title": "OivcR3oh"}, "iz83uOUH": {"description": "7kvg0EqF", "title": "OXM70asz"}, "nY2EOb6a": {"description": "lMfQ5GfZ", "title": "ye79RVjl"}}, "passItemId": "vnOsgnFi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'RkeiZ2zV' \
    'UlICHuH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'F9uQuba1' \
    '7F6flMjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'VvBvbshb' \
    'eEj6KgZf' \
    --body '{"autoEnroll": true, "displayOrder": 85, "images": [{"as": "ibbN3Jej", "caption": "O4vPsF44", "height": 88, "imageUrl": "qJyOycPE", "smallImageUrl": "pSb6D7vX", "width": 97}, {"as": "B0dIAa5u", "caption": "8Vhv9eky", "height": 29, "imageUrl": "0lLUquoZ", "smallImageUrl": "GLlTG1dC", "width": 75}, {"as": "HNC3ruOf", "caption": "maYjPn90", "height": 45, "imageUrl": "h3wV4yhV", "smallImageUrl": "EJygqbVi", "width": 98}], "localizations": {"IxTn0hwo": {"description": "iHcBGE99", "title": "fOVcdAwc"}, "eebxdBhv": {"description": "o0Q98F7H", "title": "F2CYWmwx"}, "1cM6qICq": {"description": "bEvKcv2v", "title": "IbT4YBBh"}}, "passItemId": "D1XIS3gd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    '1DeF5gCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'q1lHXeOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'KizkkCjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'lgSz90Y7' \
    --body '{"code": "7gU4zM0t", "currency": {"currencyCode": "vTWWRekQ", "namespace": "aq1Qat3q"}, "image": {"as": "5GIZiOY7", "caption": "KDwlyqim", "height": 57, "imageUrl": "Z2qrXN4I", "smallImageUrl": "giVDL7rN", "width": 62}, "itemId": "zPgnmOiO", "quantity": 37, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    '0NaxJlJw' \
    'riTWNp5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'jYx3xYWx' \
    '4qCWQj2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'Frpu4z6U' \
    'HWyvrzfN' \
    --body '{"currency": {"currencyCode": "sAAY5JYm", "namespace": "uA9Dlwl1"}, "image": {"as": "WI6T3SPI", "caption": "ojn8e5mL", "height": 31, "imageUrl": "arfYi12p", "smallImageUrl": "H9OeZqEL", "width": 27}, "itemId": "Diigkgho", "nullFields": ["7jOjRdxC", "i4CzRcLX", "JIpodZZU"], "quantity": 94, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'EAe5cK0c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'CkEXh2sk' \
    --body '{"index": 44, "quantity": 1, "tier": {"requiredExp": 99, "rewards": {"os5pSw3f": ["Yn0GenXI", "0KlRw00u", "NPxS3G0R"], "tYdwVYrV": ["Sqo6tBmP", "OTQfKJzC", "yiPNOkH0"], "BwlE60mX": ["1SunwPaQ", "U3AAyRg5", "tSCzTTUD"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'eFsPyjQ5' \
    'J8GiP58M' \
    --body '{"requiredExp": 18, "rewards": {"DfnSNzaP": ["EVNg52B4", "2IeNCU8w", "t4gzCtLn"], "sxp7Hbqu": ["qR71O47z", "4VhHPCT2", "bsZBV4QQ"], "r4khmSR7": ["Cu1U0qJQ", "N0X8NMOm", "4qSawzDY"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'qQO0K5He' \
    '6EOm3zHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'xSHmJR7S' \
    't3g4Lz0s' \
    --body '{"newIndex": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'WOoR53Hb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'ovF1hS27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'Xy7Blgsh' \
    --body '{"exp": 19, "source": "SWEAT", "tags": ["zOcvsfFq", "zuanFzDr", "TcIsVKy9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'nJ6ddGg1' \
    --body '{"passCode": "Qujum0uX", "passItemId": "1URyvzyz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'jdTJyvoi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'KcMhYb8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'PQejzmUR' \
    --body '{"passItemId": "u8J9Em1G", "tierItemCount": 7, "tierItemId": "0aCPpJGG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    '1X0KbFUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'pNtOGTP9' \
    --body '{"count": 88, "source": "PAID_FOR", "tags": ["rfbjqRxG", "DjtHozGF", "pyo3DOjk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'WgDI1027' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'syhaNnqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'QpyCZkE1' \
    'lWVgM5Cp' \
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
    '5qWtcRXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'IBqO3AIk' \
    --body '{"passCode": "c44zMIC1", "rewardCode": "j0xnZBii", "tierIndex": 66}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'HSM2xi4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'T8qsd4gJ' \
    '5NXTx2Vo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
