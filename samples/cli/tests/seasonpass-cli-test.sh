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
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "406e8L68", "defaultRequiredExp": 71, "draftStoreId": "yqVTDSHD", "end": "1979-11-10T00:00:00Z", "excessStrategy": {"currency": "6kNQhdm6", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "frjUCZxs", "caption": "smRZIDjB", "height": 37, "imageUrl": "qUOqLm9O", "smallImageUrl": "dYK02RZK", "width": 87}, {"as": "GNBBHsAV", "caption": "3tAQ1Mqx", "height": 89, "imageUrl": "k1cIq3wB", "smallImageUrl": "dzIGLWE9", "width": 8}, {"as": "rJne5wfN", "caption": "RoOIi8mr", "height": 72, "imageUrl": "QPwZ2KB3", "smallImageUrl": "MF9E1BFz", "width": 35}], "localizations": {"YCuRFALg": {"description": "eXMN5OOh", "title": "BYfCv0wE"}, "y4USq9pk": {"description": "TuFfBZ9W", "title": "Be1iRuvZ"}, "AZ4JiA9T": {"description": "6ztpx0mb", "title": "Fi7UqUmd"}}, "name": "8Zf2dYxq", "start": "1983-12-10T00:00:00Z", "tierItemId": "RW5niFLX"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["kZCXpGWD", "QVEW54rG", "sb5iG91j"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'dplFVH6o' --login_with_auth "Bearer foo"
seasonpass-delete-season '443SSxSp' --login_with_auth "Bearer foo"
seasonpass-update-season 'Snn26ANE' --body '{"autoClaim": true, "defaultLanguage": "iNBfLqdl", "defaultRequiredExp": 4, "draftStoreId": "Lbpg3m7L", "end": "1978-10-28T00:00:00Z", "excessStrategy": {"currency": "0V31m8TA", "method": "CURRENCY", "percentPerExp": 27}, "images": [{"as": "6dDv5jsj", "caption": "j3yTK7vN", "height": 11, "imageUrl": "Qtn9SlUT", "smallImageUrl": "m9ArwCW6", "width": 24}, {"as": "mtc9exCL", "caption": "iHs6nhHL", "height": 90, "imageUrl": "KArMUVWM", "smallImageUrl": "sBe9bUxW", "width": 64}, {"as": "wo2Z5T3w", "caption": "eGuOBQvs", "height": 22, "imageUrl": "dbppFu29", "smallImageUrl": "i7XZrg42", "width": 13}], "localizations": {"LUfqubul": {"description": "7caV5MqU", "title": "SeTfqCOS"}, "1OaOjltY": {"description": "bb45qOYS", "title": "mbbbZHIB"}, "lN1lxanB": {"description": "tr0gnls3", "title": "xTzLZ0gz"}}, "name": "EvmVGwwW", "start": "1972-07-08T00:00:00Z", "tierItemId": "jvPRPlae"}' --login_with_auth "Bearer foo"
seasonpass-clone-season '8zMMMXzx' --body '{"end": "1992-07-12T00:00:00Z", "name": "8fCQOKWA", "start": "1984-02-04T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season '07o912vR' --login_with_auth "Bearer foo"
seasonpass-query-passes 'ExY6bM3V' --login_with_auth "Bearer foo"
seasonpass-create-pass 'chRpYTAr' --body '{"autoEnroll": true, "code": "GwQc1rK9", "displayOrder": 70, "images": [{"as": "lfTebtEn", "caption": "CgiH94vq", "height": 14, "imageUrl": "mL0j5SQW", "smallImageUrl": "JrWtNIEE", "width": 23}, {"as": "PiDJo3F9", "caption": "xyPv9nMh", "height": 78, "imageUrl": "p10riWtI", "smallImageUrl": "OYKrT2dc", "width": 47}, {"as": "w072fTA2", "caption": "Lr4X7Xpf", "height": 100, "imageUrl": "FVQUb0cD", "smallImageUrl": "XDIZhFza", "width": 68}], "localizations": {"pt1Y7d2f": {"description": "0FlpAVA2", "title": "J9KyyYJo"}, "0uaj8fsf": {"description": "d9oyntX9", "title": "hVNIlZsd"}, "lLbhbhtj": {"description": "9z8qVCPY", "title": "1ZsQsxbR"}}, "passItemId": "oYzgWINP"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'NHNgRGfk' 'gltjHVrA' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'sKIaCjwD' 'LK2BioJ0' --login_with_auth "Bearer foo"
seasonpass-update-pass 'kyj0der8' 'dJ2LzPaS' --body '{"autoEnroll": true, "displayOrder": 94, "images": [{"as": "XKLDF9Oi", "caption": "gnhYWM8z", "height": 76, "imageUrl": "QPRjn0Ik", "smallImageUrl": "FAtS4Mit", "width": 64}, {"as": "SomhUuTE", "caption": "XRwVw5x9", "height": 57, "imageUrl": "zASS7cFu", "smallImageUrl": "Xji5TiPm", "width": 64}, {"as": "9TMvFMcG", "caption": "QYasVtxE", "height": 91, "imageUrl": "jb7FPkzd", "smallImageUrl": "BYM735WI", "width": 19}], "localizations": {"cY7X57Ny": {"description": "2HOCnMDI", "title": "IcSXXrJn"}, "DBSHlwH7": {"description": "7y55jJwc", "title": "zwttNVHE"}, "C5hnQjcJ": {"description": "yzmv9SJC", "title": "HAxHbyPa"}}, "passItemId": "eMyzQ4zm"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'U2q5GVMY' --login_with_auth "Bearer foo"
seasonpass-retire-season 'a3CisI3I' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'eQXd0ZnC' --login_with_auth "Bearer foo"
seasonpass-create-reward 'BMbOvk2y' --body '{"code": "uuAvpl1J", "currency": {"currencyCode": "q4yvfjvI", "namespace": "2znh7mmY"}, "image": {"as": "Tpvv9Cnw", "caption": "KYKJoJF6", "height": 67, "imageUrl": "VxdWWMYt", "smallImageUrl": "kuXiRXJp", "width": 45}, "itemId": "Xv9rqx9K", "quantity": 41, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'LJpMF2EI' '4ty6WAWZ' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'd6jdMI9P' 'Yqk4LumI' --login_with_auth "Bearer foo"
seasonpass-update-reward 'SQYsrW1q' 'sKySRN8w' --body '{"currency": {"currencyCode": "9Ar3R1Zn", "namespace": "GOpaHt6h"}, "image": {"as": "DFqbd8wO", "caption": "Hj1A0Yx7", "height": 37, "imageUrl": "jJjL7oqn", "smallImageUrl": "eyuPBKRv", "width": 55}, "itemId": "GEragvcL", "nullFields": ["i2LK65q9", "X34ptX5I", "vjRl6Zsd"], "quantity": 19, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'a0dXXxuv' --login_with_auth "Bearer foo"
seasonpass-create-tier 'SxpMyEK6' --body '{"index": 41, "quantity": 36, "tier": {"requiredExp": 2, "rewards": {"X8g02JWA": ["Icg7gKjr", "SE4SFVB4", "TKSFxWKs"], "1zDTq2XC": ["jQvGoW3i", "39s8HYwf", "9ZYA2PjC"], "fE84IYyo": ["OQCsqkNl", "1WHEqHV0", "huXcUON0"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'FUngQfws' 'hKKkKjjj' --body '{"requiredExp": 97, "rewards": {"Wg6z9HKx": ["zcKqsJ81", "MmjmBwfP", "ry8HVboK"], "ZpEqohXS": ["cZHo6QEh", "IZWbs2TS", "4hu7Efzm"], "dj6BS7D7": ["MiNBVHLJ", "6gUrqyEi", "b6XsKUI2"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'nU4LGZcS' 'PfdVHyYE' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'Q9dEM3LL' 'g6fvdXuz' --body '{"newIndex": 59}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'go1YQcS7' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'mwYCswav' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'jzjbwFp3' --body '{"exp": 15, "source": "PAID_FOR", "tags": ["KUrhaoL2", "fXueOoIM", "PqrKbGbP"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass '60H9YDSg' --body '{"passCode": "v84bczqx", "passItemId": "u6esxHAR"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'sUZbpZHx' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'Xo8HGYjn' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'tjxnetVZ' --body '{"passItemId": "ZhX4P8U6", "tierItemCount": 70, "tierItemId": "ofqjJZ49"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season '8U1D2chR' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'gwGvSPO2' --body '{"count": 49, "source": "SWEAT", "tags": ["FYHiGqlS", "Jov9IpiH", "t1G0Ux2Q"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'ubddTXxn' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'kY2laCnV' --login_with_auth "Bearer foo"
seasonpass-get-user-season '9nnnMep4' 'U55xGxl3' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'KrqmrpPX' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'IKNRj0jp' --body '{"passCode": "gDSoPfHO", "rewardCode": "lKxRhjTP", "tierIndex": 76}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'MMGvQqzp' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'yV4Wd9wg' 'bV8zEXiS' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "LKT0bELM", "defaultRequiredExp": 76, "draftStoreId": "gCLmD0gO", "end": "1981-11-21T00:00:00Z", "excessStrategy": {"currency": "T7SYa999", "method": "NONE", "percentPerExp": 52}, "images": [{"as": "O6OCKjfD", "caption": "VTMpIFXt", "height": 33, "imageUrl": "9YdVllcx", "smallImageUrl": "a8esSGZa", "width": 92}, {"as": "QtHAHxOh", "caption": "dPGWiI8Y", "height": 93, "imageUrl": "nIobcyQ0", "smallImageUrl": "lGMjYsx5", "width": 8}, {"as": "OR1BRP41", "caption": "jujyjoAI", "height": 18, "imageUrl": "YCzRO9ox", "smallImageUrl": "Je3vQgSE", "width": 33}], "localizations": {"04Zq90m5": {"description": "YKNzSiE5", "title": "CVRCKjlT"}, "xZhzrW9t": {"description": "wI2HjUQV", "title": "pQP2AE62"}, "i9MX1LSF": {"description": "fLw9MCLW", "title": "ciW3ZdxC"}}, "name": "9oZEe0Ch", "start": "1994-06-30T00:00:00Z", "tierItemId": "SpJGVLJZ"}' \
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
    --body '{"userIds": ["f3DwZSqp", "p4FCMCFg", "9kX8ypxj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'YXzkYcpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    '2g0yANvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'ks5bMdOx' \
    --body '{"autoClaim": false, "defaultLanguage": "718E2jS2", "defaultRequiredExp": 88, "draftStoreId": "75QYu5Oy", "end": "1999-04-29T00:00:00Z", "excessStrategy": {"currency": "jCQcnYHY", "method": "NONE", "percentPerExp": 63}, "images": [{"as": "xTgOkW8K", "caption": "UWteSC8K", "height": 30, "imageUrl": "r0QCf0AF", "smallImageUrl": "DQi2OjDq", "width": 76}, {"as": "D9oLWWtA", "caption": "OUoaKq07", "height": 83, "imageUrl": "hv0air8V", "smallImageUrl": "fLhamltv", "width": 5}, {"as": "kfwpz3au", "caption": "sSEkL98Y", "height": 33, "imageUrl": "2wfH1QN1", "smallImageUrl": "l8G5UdPA", "width": 59}], "localizations": {"dzVNlvug": {"description": "Ia9v77Cr", "title": "k2uSCn0Y"}, "V1U8t005": {"description": "6KDCHDxm", "title": "3xNZl0s5"}, "xcL2amFz": {"description": "nGMMxsej", "title": "gOaqkOST"}}, "name": "gM7jl1Sy", "start": "1988-07-07T00:00:00Z", "tierItemId": "ovWnuZRW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'R995RwoS' \
    --body '{"end": "1971-11-01T00:00:00Z", "name": "NhyGJbGs", "start": "1972-11-12T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'mM5hXrlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'L7xD4AQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'E7C2Q2kk' \
    --body '{"autoEnroll": true, "code": "7iiwT4YK", "displayOrder": 49, "images": [{"as": "bAHPYEnx", "caption": "gyJh9wyZ", "height": 95, "imageUrl": "t3ZBpkRJ", "smallImageUrl": "MT45e8UK", "width": 27}, {"as": "KEcTaMxT", "caption": "FFwfwLOK", "height": 69, "imageUrl": "UElTXlBz", "smallImageUrl": "sJeJI0Tl", "width": 1}, {"as": "V08vJ9G6", "caption": "2Y4JoOeZ", "height": 81, "imageUrl": "xmJPHVUk", "smallImageUrl": "yCANpSIr", "width": 21}], "localizations": {"WI3RrRVE": {"description": "VSeVwj4G", "title": "nLNiGSYA"}, "qGgIpGs4": {"description": "aL1WMnch", "title": "lVX3IgmW"}, "7w8ggCDG": {"description": "I47jMMUo", "title": "hNKDYV2r"}}, "passItemId": "Kg2QPoai"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'M7m5Ejie' \
    '2AJr7xpx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'FaxDs7CH' \
    'MBouIVAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'RdPW8RUW' \
    'UyJlXTbO' \
    --body '{"autoEnroll": true, "displayOrder": 70, "images": [{"as": "1CKSj23H", "caption": "lkF0xsZv", "height": 63, "imageUrl": "7EQYgIfZ", "smallImageUrl": "HsmxQPtp", "width": 38}, {"as": "Jc6d12A8", "caption": "ybrgHOIE", "height": 87, "imageUrl": "3nXna4u6", "smallImageUrl": "IbmObjCX", "width": 28}, {"as": "aaMSGIsh", "caption": "jllqddPm", "height": 29, "imageUrl": "8DO6MEqL", "smallImageUrl": "ibpJJjza", "width": 37}], "localizations": {"68aI8uGH": {"description": "r5wFtl69", "title": "9wHaA9ic"}, "9Ow79TBV": {"description": "beqZUUkA", "title": "cFX3wKN1"}, "jXrheyW1": {"description": "RlD6gIZg", "title": "5P8TwSFg"}}, "passItemId": "WcUx91HS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    '4ChGUbce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'KvC49i19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'rHra24TP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'o3ogJU1u' \
    --body '{"code": "1KpwvCAK", "currency": {"currencyCode": "XURUwG0z", "namespace": "iUQEq3oq"}, "image": {"as": "GTckiNkk", "caption": "47ToOQDu", "height": 86, "imageUrl": "WG2URG8S", "smallImageUrl": "qoNRmgg1", "width": 67}, "itemId": "EhaGVcG8", "quantity": 68, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'IOVas739' \
    'zqmPy8TP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'k4daYSuC' \
    'uumzNIES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'v2x1Pd3O' \
    'xKJGwEes' \
    --body '{"currency": {"currencyCode": "S3VV6ow1", "namespace": "quoKuGeC"}, "image": {"as": "HFf6ym7k", "caption": "Xq7tqibS", "height": 44, "imageUrl": "dPATtJrQ", "smallImageUrl": "wysnib71", "width": 15}, "itemId": "49T4eRz4", "nullFields": ["zBVwhzJ9", "x59PMwe6", "1EjCq3zh"], "quantity": 40, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'kQZH4M1w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    '3gNcvRdB' \
    --body '{"index": 21, "quantity": 9, "tier": {"requiredExp": 64, "rewards": {"HKjWThsH": ["b7zTrv6f", "g6OSB4VE", "TwGOQOM8"], "9XTAnSzg": ["ajyR2ZON", "c83oVC5H", "8efXxnxZ"], "Y6ZzgpiQ": ["6TAQXQm1", "kwIRnfd4", "jNZHcfQL"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'EcSRr9QY' \
    'NNWSuxUF' \
    --body '{"requiredExp": 87, "rewards": {"8fb8Tq1q": ["tawNlUAf", "678k2dp9", "iYUIBRfE"], "bGtu1KRs": ["CbmcXs1c", "RDbt2Lnm", "HovmoosS"], "rgBQ87wG": ["cu1bGE4I", "Lt2OJXci", "cM1KXlko"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    '5ma2T8ok' \
    '1BhWGuGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'zaJt2UBj' \
    'a2nzu9lq' \
    --body '{"newIndex": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'XbiMIVo0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'SGwttDFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'q3VIC1Ak' \
    --body '{"exp": 87, "source": "SWEAT", "tags": ["KUAwIwXw", "BeosQS3n", "6gt4WnSl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'irnZX1oy' \
    --body '{"passCode": "jFcKttSM", "passItemId": "4zzEartS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'JBi8HDvJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'sWsROjwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '1qmg9Mh0' \
    --body '{"passItemId": "IPM5qnVA", "tierItemCount": 77, "tierItemId": "wwy54zfd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'uEiKEWfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'CUdV1aVT' \
    --body '{"count": 69, "source": "SWEAT", "tags": ["e6tCIf0q", "0WYb5NB4", "pFWHzPnW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'ALgmuOsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'F2wAdOkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'zAkQBm5c' \
    '561BIBMU' \
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
    'c2u77JYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'S7hxu81x' \
    --body '{"passCode": "6Nu1yD7b", "rewardCode": "6m2H54fT", "tierIndex": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'xbpw3Nmj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'CPHbZmXc' \
    'eOkVC7tr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
