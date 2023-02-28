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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "wwZWeL55", "defaultRequiredExp": 98, "draftStoreId": "Y9Kn7q7X", "end": "1979-01-28T00:00:00Z", "excessStrategy": {"currency": "1fyLnX5e", "method": "NONE", "percentPerExp": 6}, "images": [{"as": "PS3p89Rq", "caption": "I2VdZxdJ", "height": 80, "imageUrl": "r4cezMY2", "smallImageUrl": "ClmqwgEJ", "width": 79}, {"as": "wVCLT8Tl", "caption": "niOpyupz", "height": 92, "imageUrl": "1H4clOhL", "smallImageUrl": "tZUbKa8U", "width": 58}, {"as": "fmEkSDff", "caption": "d64G8QCs", "height": 69, "imageUrl": "eZ28LwLG", "smallImageUrl": "7np3LI4d", "width": 95}], "localizations": {"jdEoAHPK": {"description": "nHwLhaNe", "title": "jNg3VenF"}, "IZpKljoB": {"description": "HBtmLlgx", "title": "BzYVAHf8"}, "Fbo7WEtZ": {"description": "FtKNGITh", "title": "Hm2lz6qC"}}, "name": "uAifYrax", "start": "1989-04-10T00:00:00Z", "tierItemId": "anHlejIa"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["lFgqvgVu", "CYCYona9", "DPC2gqkC"]}' --login_with_auth "Bearer foo"
seasonpass-get-season '14rK4jZ0' --login_with_auth "Bearer foo"
seasonpass-delete-season 'KV4adzrq' --login_with_auth "Bearer foo"
seasonpass-update-season 'mVQLOERn' --body '{"autoClaim": true, "defaultLanguage": "HDd4R6mk", "defaultRequiredExp": 65, "draftStoreId": "swoUbnBk", "end": "1978-11-28T00:00:00Z", "excessStrategy": {"currency": "b3PtBzeW", "method": "CURRENCY", "percentPerExp": 55}, "images": [{"as": "AzmT6GPT", "caption": "Q5xl2YHZ", "height": 47, "imageUrl": "TUnvvnFr", "smallImageUrl": "HHSpMFGo", "width": 18}, {"as": "k02oB0d0", "caption": "RCXsT2Mp", "height": 36, "imageUrl": "uR2Jt4Vf", "smallImageUrl": "Ri6b8V7j", "width": 79}, {"as": "hmYrBwFK", "caption": "GjeBPQHP", "height": 87, "imageUrl": "bNFkrb4P", "smallImageUrl": "hiPo6ITh", "width": 58}], "localizations": {"aq5EZ2ho": {"description": "RK30f1lv", "title": "9xmX5BfM"}, "t9S4Z4Ta": {"description": "cWYgzG0a", "title": "aCTMpQH7"}, "QIyjiBz2": {"description": "qmVx4Ww6", "title": "MOsETdCP"}}, "name": "Ig7ybjtx", "start": "1997-01-14T00:00:00Z", "tierItemId": "b25CEsnT"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'hXMdlMo2' --body '{"end": "1996-11-05T00:00:00Z", "name": "f0cT1y5p", "start": "1999-08-09T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'jsEGroXr' --login_with_auth "Bearer foo"
seasonpass-query-passes 'ARLyjxoy' --login_with_auth "Bearer foo"
seasonpass-create-pass 'kqU9IcsW' --body '{"autoEnroll": false, "code": "A7jroPi3", "displayOrder": 86, "images": [{"as": "1sHtejM7", "caption": "2VUjvjSv", "height": 11, "imageUrl": "b0EohHFv", "smallImageUrl": "3qlHU9R8", "width": 35}, {"as": "hELJ9s3X", "caption": "bQzTrZB4", "height": 76, "imageUrl": "KikCibk5", "smallImageUrl": "ZZS5DSKT", "width": 41}, {"as": "Rxpsw9Qx", "caption": "s64czzM9", "height": 21, "imageUrl": "E0oDzKJg", "smallImageUrl": "WhwOI22Y", "width": 10}], "localizations": {"ljGNiVLH": {"description": "HwHBh9Ba", "title": "dUrY94f4"}, "BaHP3OZC": {"description": "q6KFJEAD", "title": "LjlpLW7D"}, "F4jLVwBJ": {"description": "pr2LQrL9", "title": "3fwSWYhn"}}, "passItemId": "jk0WUyIM"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'TI18DqsE' 'PRhItq3E' --login_with_auth "Bearer foo"
seasonpass-delete-pass '6AMe8ekN' 'cVReZrSu' --login_with_auth "Bearer foo"
seasonpass-update-pass 'TqB2GPdq' '32XiCDKo' --body '{"autoEnroll": true, "displayOrder": 44, "images": [{"as": "td1KFrfs", "caption": "4Ekt3JsN", "height": 64, "imageUrl": "KaM5kSZN", "smallImageUrl": "OciFJ4Re", "width": 43}, {"as": "1AnKi9QO", "caption": "eiWZSF4W", "height": 63, "imageUrl": "muoFHAwC", "smallImageUrl": "0i4ckgKU", "width": 39}, {"as": "bM4UFdSE", "caption": "QQ0aRx7k", "height": 52, "imageUrl": "SV7Jj29g", "smallImageUrl": "M9a2CL9r", "width": 65}], "localizations": {"H5uSijoa": {"description": "1HkyXPpX", "title": "Ngwq4EzV"}, "aaKDdbB7": {"description": "YGYxMbNn", "title": "PXA9QH3s"}, "buc11ni2": {"description": "5om2YTtw", "title": "T0UHsUCQ"}}, "passItemId": "vPx4DRKn"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'y5Tojp0X' --login_with_auth "Bearer foo"
seasonpass-retire-season 'fwurpWZB' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'zdeNb9fm' --login_with_auth "Bearer foo"
seasonpass-create-reward 'i5AxsSBK' --body '{"code": "pRGJRaLV", "currency": {"currencyCode": "aGDqYCLu", "namespace": "1lh3L2i7"}, "image": {"as": "g07EYyJF", "caption": "lmgGW6j9", "height": 90, "imageUrl": "1v6qzW2B", "smallImageUrl": "2d7ExJe6", "width": 27}, "itemId": "JYq3wW9e", "quantity": 61, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'ghlCOnqu' 'aa0vuDp1' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'Ic1POH9H' 'zQPRU5nt' --login_with_auth "Bearer foo"
seasonpass-update-reward 'd6Uj4h6W' 'TQUK4vcG' --body '{"currency": {"currencyCode": "MwFgVNsN", "namespace": "pu8oYUS8"}, "image": {"as": "8D3dnYsi", "caption": "9MTgFupW", "height": 95, "imageUrl": "wfmB1dFC", "smallImageUrl": "5s8fgq6I", "width": 34}, "itemId": "tPmFKgQz", "nullFields": ["3cStNSlB", "Tyrndewh", "KRXElOdx"], "quantity": 33, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'FnB7Y5ph' --login_with_auth "Bearer foo"
seasonpass-create-tier 'kYPs37h6' --body '{"index": 75, "quantity": 82, "tier": {"requiredExp": 49, "rewards": {"GxtkVuGj": ["clAaQSJ2", "Yyt1uLUn", "V7vsj0xF"], "jkc8Lg61": ["iQxYmAjQ", "4ZTfB8Ls", "OOfA6pRU"], "DGcaatQ8": ["VFnFnF55", "v1D0CNRy", "EqKmQ3Y5"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'FpafWnFS' 'PK0XHl3D' --body '{"requiredExp": 57, "rewards": {"JoQnmos0": ["jskDD0zs", "Ivse1NRv", "cKiQ58km"], "7eHUUfsL": ["UzssI9PQ", "dDuV8YKU", "dQ258qnc"], "YuyokiLp": ["Jqp2NVm2", "GEnaO3UK", "Sqm112jB"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier '8QRyti99' 'kKy9yuyO' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'o2G4Z9Jf' 'HVuHz6xw' --body '{"newIndex": 91}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'DXHuCl8s' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons '3eYhXANc' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp '4F0murG1' --body '{"exp": 93, "source": "SWEAT", "tags": ["bLObRO9L", "QtJ3wh3g", "jCpuJbZi"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'vRU8czhB' --body '{"passCode": "Rv2fYJyY", "passItemId": "Ox94QDE5"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'm3ARTBcD' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'TkV6KlRC' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'RushDP3m' --body '{"passItemId": "dfZpRkeW", "tierItemCount": 73, "tierItemId": "PxxPWZ39"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season '7h9s8kEW' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'mLIQO1IQ' --body '{"count": 21, "source": "SWEAT", "tags": ["SNSoA8jq", "nFIM4CIb", "5g9fVsit"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'zGWnTfoE' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'eB9Qadce' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'uEny4CPS' 'wMyDiSNw' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'yTjN7DFY' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'Zs5DK6t6' --body '{"passCode": "UEv9Qhnp", "rewardCode": "b8DQ2Y7Z", "tierIndex": 1}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards '9VuZ6nr9' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'tthv59Lr' 'xlHUvts6' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "njgrWBER", "defaultRequiredExp": 6, "draftStoreId": "HKROR4GU", "end": "1977-01-28T00:00:00Z", "excessStrategy": {"currency": "uHr8HXSO", "method": "NONE", "percentPerExp": 67}, "images": [{"as": "loSMi2Ug", "caption": "7WU68OWl", "height": 100, "imageUrl": "m8uQ7unl", "smallImageUrl": "Io0gi3bY", "width": 23}, {"as": "VrQSMy3g", "caption": "ZCyQ7c0k", "height": 46, "imageUrl": "Yngmr1C2", "smallImageUrl": "cnT3tJnd", "width": 70}, {"as": "o3bxHfi6", "caption": "xTgx1Mh1", "height": 24, "imageUrl": "8BrnH0XF", "smallImageUrl": "l9DjL3eh", "width": 75}], "localizations": {"S3J0WFvJ": {"description": "kTpfz1L6", "title": "FpLKP7yA"}, "Ukc9qlAx": {"description": "dHOUEZ5Y", "title": "oWrMW5jO"}, "tVNLmLzx": {"description": "1UIZJksh", "title": "xXXfXzj7"}}, "name": "u7fd2xN7", "start": "1975-10-18T00:00:00Z", "tierItemId": "8Sg3ixH3"}' \
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
    --body '{"userIds": ["NaTK3H3T", "nllCbyOh", "ESAcdNS8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'gIHYghdO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'LasgK1fX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'bGzbZbxk' \
    --body '{"autoClaim": false, "defaultLanguage": "t3YJgP7U", "defaultRequiredExp": 9, "draftStoreId": "oLHrqz0s", "end": "1994-07-12T00:00:00Z", "excessStrategy": {"currency": "p0R6tzIa", "method": "CURRENCY", "percentPerExp": 82}, "images": [{"as": "nN8OWdQQ", "caption": "cD5zvIWD", "height": 73, "imageUrl": "Xd3LbohV", "smallImageUrl": "9lMdDRxu", "width": 39}, {"as": "CVpmrsfg", "caption": "BH3vsLxg", "height": 52, "imageUrl": "r7pKxnpP", "smallImageUrl": "Gsvrn5Q2", "width": 99}, {"as": "GMw1IIZ9", "caption": "BjzyCFK2", "height": 50, "imageUrl": "iRq251Aq", "smallImageUrl": "jPFNixt0", "width": 76}], "localizations": {"p7Xfr3fe": {"description": "SU1exG8u", "title": "tCs1uXu5"}, "3P52oWgA": {"description": "wrnk0JTu", "title": "KmtJEfQz"}, "HhbDhEAW": {"description": "3dW2SZrY", "title": "3mI8UJhG"}}, "name": "1Xh77bum", "start": "1991-06-08T00:00:00Z", "tierItemId": "BtFtZ99t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'zCUajVKc' \
    --body '{"end": "1993-01-31T00:00:00Z", "name": "1oV49n0b", "start": "1977-03-26T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'B5PtzpXD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'VGoqr1EJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'sfCSRhNc' \
    --body '{"autoEnroll": true, "code": "CHXhNUKb", "displayOrder": 13, "images": [{"as": "Iaroyi30", "caption": "lw0EFLTP", "height": 82, "imageUrl": "BkRVpGhI", "smallImageUrl": "ttWOsf6u", "width": 69}, {"as": "7s09UlbF", "caption": "2VYSNd7d", "height": 24, "imageUrl": "BHIph7S4", "smallImageUrl": "MFkSwm8z", "width": 79}, {"as": "iymhX5hd", "caption": "GmwYcbpd", "height": 16, "imageUrl": "sG7fGuZm", "smallImageUrl": "6q2mtj8r", "width": 9}], "localizations": {"gtySeXvX": {"description": "Hl32whYQ", "title": "iXIyCoMX"}, "94s5y29H": {"description": "xUe0nAPm", "title": "Q8ng4sRD"}, "DrNZqjMD": {"description": "zZRHI6jV", "title": "557ZLU9z"}}, "passItemId": "ZT8FXEqK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'hl85eLHI' \
    '1UWS4Ltd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'Vk8gTjPZ' \
    'M8YjNK4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    '2tSCHDOX' \
    'Wh8onC02' \
    --body '{"autoEnroll": true, "displayOrder": 0, "images": [{"as": "pYgdzMHS", "caption": "nGeV0I2O", "height": 79, "imageUrl": "epDHV4Ag", "smallImageUrl": "9uHzIhvl", "width": 67}, {"as": "O6xR11VX", "caption": "Qh2ennOR", "height": 78, "imageUrl": "5h25fmdj", "smallImageUrl": "qmaO65X3", "width": 80}, {"as": "DUw7yVpL", "caption": "jNbwqUFF", "height": 75, "imageUrl": "396ryI1v", "smallImageUrl": "eXsZ0qDi", "width": 81}], "localizations": {"ncqaypVZ": {"description": "ERXVj6kL", "title": "fgCoxbTY"}, "Xzb8jvdq": {"description": "8ZzbEgGG", "title": "nc4YtPjd"}, "opx6P5cf": {"description": "1gzYrQQA", "title": "CkWJ0V2X"}}, "passItemId": "AGlMsjVd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'wS0QC8Sz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'HRlGiYEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'HEPLm4kI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'HCzTp9H2' \
    --body '{"code": "2ffs0O6i", "currency": {"currencyCode": "hhIRxtM4", "namespace": "TFqWRSEc"}, "image": {"as": "iLiI5lM5", "caption": "qVznQ0u2", "height": 35, "imageUrl": "9HFFL9qL", "smallImageUrl": "gNv79eCe", "width": 48}, "itemId": "D7ijGfFe", "quantity": 95, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'X2F1fcAP' \
    'HUm9FsAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'VJrVAWyt' \
    'hAbfhThk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    '9DqEX6oD' \
    'jFtdHGPw' \
    --body '{"currency": {"currencyCode": "jr2aShI8", "namespace": "oIu6kZJ2"}, "image": {"as": "oU8IqMWV", "caption": "bPh8tD7n", "height": 13, "imageUrl": "3exrxBtY", "smallImageUrl": "p4S8D4Q0", "width": 79}, "itemId": "pKdR68YQ", "nullFields": ["KFL9Ye1k", "5Z7gWQIE", "BK2jxJp0"], "quantity": 1, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'oGCvhpP3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'nNGQVhp3' \
    --body '{"index": 42, "quantity": 45, "tier": {"requiredExp": 12, "rewards": {"ldlX8Evg": ["4X2TUXo8", "s3d6DNhm", "p3kvFF7b"], "Xfl3IXXv": ["hnWbB0L9", "0lav594A", "sOU2FRZ9"], "BnFFFH0W": ["kSSVxzdp", "XpA7dO59", "JmOZMIqk"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    't89NL0Sr' \
    'e579O7sn' \
    --body '{"requiredExp": 85, "rewards": {"V8EVZWXM": ["Zz9Xd81O", "IxdLe0aE", "fvc0Vbw2"], "J5jXs7X1": ["tz8hFCFT", "vZZSAPyK", "7H6Z9FYc"], "FsSWqdIl": ["l2ufJGBX", "kgUnrwg2", "6BmzY4nZ"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'C5K4a61O' \
    'Xo9nHbIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'TzM4M463' \
    'YreeURba' \
    --body '{"newIndex": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '0b8cJYCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'A6ZtZgQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'Z6ovFSDu' \
    --body '{"exp": 75, "source": "SWEAT", "tags": ["1yeEm8Fm", "RCgRJBMY", "3HQpMYp4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'EE7PieIP' \
    --body '{"passCode": "866Nnx3E", "passItemId": "UR783Tws"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'jJGUIm7p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'nkNKS9OB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'sdA99kH7' \
    --body '{"passItemId": "VaELxsjW", "tierItemCount": 3, "tierItemId": "TONdUGSX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'MD2wj3hs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'rQPNv6QV' \
    --body '{"count": 88, "source": "PAID_FOR", "tags": ["vxa3GZ6K", "dFb2PdpZ", "SLRV3XQR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'f4iLQtpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'pfFJMDby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    '4SoZXQG4' \
    '5Gy98LaF' \
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
    'wbyBfsFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'o4D37Vaz' \
    --body '{"passCode": "2Ib9sHrw", "rewardCode": "mChVpTWO", "tierIndex": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'dweUYjs0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    '7ohMha3R' \
    '0lOA0EAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
