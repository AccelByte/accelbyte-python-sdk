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
seasonpass-create-season --body '{"autoClaim": false, "defaultLanguage": "4LvJER1X", "defaultRequiredExp": 33, "draftStoreId": "8rtHNqYt", "end": "1973-11-09T00:00:00Z", "excessStrategy": {"currency": "cX7n3Kmx", "method": "NONE", "percentPerExp": 69}, "images": [{"as": "G6q5qo4w", "caption": "kfnLf3wN", "height": 13, "imageUrl": "jX0MkwtY", "smallImageUrl": "rEfHdJ80", "width": 80}, {"as": "sVCy7jAF", "caption": "piOOBeRB", "height": 11, "imageUrl": "jxez5MM7", "smallImageUrl": "mDV1ZMR0", "width": 73}, {"as": "HlIDxQHP", "caption": "1emP9CQF", "height": 40, "imageUrl": "yoMraHvd", "smallImageUrl": "uC3QWKt8", "width": 82}], "localizations": {"KMJk7rrI": {"description": "QBxJQc0n", "title": "agIWgCHZ"}, "d7rY8AHr": {"description": "HRQeNdWe", "title": "a6D4pj7G"}, "y61dUfhe": {"description": "B5JbLx2S", "title": "Ah4ddrYX"}}, "name": "p7kp1XkH", "start": "1982-05-29T00:00:00Z", "tierItemId": "RnFSuIC2"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["RMBlmNbZ", "pV4aHIux", "H9StlksL"]}' --login_with_auth "Bearer foo"
seasonpass-get-season '6OPf5HdA' --login_with_auth "Bearer foo"
seasonpass-delete-season 'lPelXyjX' --login_with_auth "Bearer foo"
seasonpass-update-season '67K6IxXr' --body '{"autoClaim": true, "defaultLanguage": "ARV9uwBU", "defaultRequiredExp": 70, "draftStoreId": "WvEf8ey6", "end": "1975-07-11T00:00:00Z", "excessStrategy": {"currency": "MudSkAeX", "method": "CURRENCY", "percentPerExp": 8}, "images": [{"as": "gCfk5CPY", "caption": "1w2ThuqX", "height": 99, "imageUrl": "zTziaIX0", "smallImageUrl": "3gAKK3l3", "width": 77}, {"as": "Pvoxh3wT", "caption": "9k5NBbDA", "height": 5, "imageUrl": "QuhYjwSj", "smallImageUrl": "cgWWLzAF", "width": 9}, {"as": "IOtBwm4N", "caption": "rmRR2djv", "height": 34, "imageUrl": "L0WrlC9c", "smallImageUrl": "Hdgvhfkv", "width": 88}], "localizations": {"eAyT1jJJ": {"description": "pJDGSEww", "title": "YZZ39kpp"}, "BDmqtsve": {"description": "0YYvoBeb", "title": "ICEAOcvH"}, "Ibjvuocz": {"description": "p8AOztoV", "title": "UQYG3CsR"}}, "name": "bTmVmFPC", "start": "1981-03-30T00:00:00Z", "tierItemId": "NdxTTcBw"}' --login_with_auth "Bearer foo"
seasonpass-clone-season '9tJDIYBT' --body '{"end": "1978-03-06T00:00:00Z", "name": "WX5SmpWg", "start": "1975-06-21T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'D4PAf2Pg' --login_with_auth "Bearer foo"
seasonpass-query-passes 'zqNXg0mW' --login_with_auth "Bearer foo"
seasonpass-create-pass 'TWZXLm2R' --body '{"autoEnroll": false, "code": "24PRE3aP", "displayOrder": 44, "images": [{"as": "vYeAihkI", "caption": "ZAhYGZrU", "height": 23, "imageUrl": "HtKcf73a", "smallImageUrl": "CxBJ0QoV", "width": 66}, {"as": "6Bb197Lz", "caption": "zLiiZzOj", "height": 6, "imageUrl": "jxZ64SkS", "smallImageUrl": "m2d8MrqQ", "width": 89}, {"as": "9gVIC4cB", "caption": "5kXKyrqD", "height": 50, "imageUrl": "UxO7cGk8", "smallImageUrl": "ATDYiFKJ", "width": 83}], "localizations": {"K0EPizcu": {"description": "jLS9iAIm", "title": "xpxEZg7C"}, "A7XbbHyK": {"description": "4XbFztvw", "title": "NxRLv3Kf"}, "b0xisAMp": {"description": "EXzskRCH", "title": "41qpqhgT"}}, "passItemId": "TrLsx4aM"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'UVbc6UzY' 'h8ifTmew' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'fMS2B3y2' '06mQ9rXa' --login_with_auth "Bearer foo"
seasonpass-update-pass 'EDfgQpXj' 'ALVaXUvw' --body '{"autoEnroll": true, "displayOrder": 94, "images": [{"as": "1BD7TRRc", "caption": "huyBMj7B", "height": 5, "imageUrl": "BrfMaxt5", "smallImageUrl": "c46JS2gE", "width": 11}, {"as": "5HCUNZE3", "caption": "cTPYquPr", "height": 78, "imageUrl": "P49PguOS", "smallImageUrl": "DM5UbWOd", "width": 38}, {"as": "UzZS1uTj", "caption": "x8s8T0w1", "height": 44, "imageUrl": "a9nXOdN6", "smallImageUrl": "kCaanPzj", "width": 46}], "localizations": {"yE95IYol": {"description": "UhFwioq9", "title": "yOKFrBsi"}, "oeb6adev": {"description": "N9SqtjEF", "title": "mQrLfwYb"}, "LYRPj4aB": {"description": "rqn7vRDd", "title": "ZxfsXjg6"}}, "passItemId": "tV6sf8tP"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '50vWZW64' --login_with_auth "Bearer foo"
seasonpass-retire-season 'LHowgYIt' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'gIiH95qu' --login_with_auth "Bearer foo"
seasonpass-create-reward 'HFiaFHQe' --body '{"code": "dw5I2QDV", "currency": {"currencyCode": "YpZmh5le", "namespace": "7cAd3jnY"}, "image": {"as": "4A9wFtnm", "caption": "mJopUOV0", "height": 71, "imageUrl": "now8ddH5", "smallImageUrl": "Gp3T5udU", "width": 77}, "itemId": "YwYRpZQu", "quantity": 92, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'wVvvOfdl' 'zzMpNWUD' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'IrFTK0QA' 'llFhXK91' --login_with_auth "Bearer foo"
seasonpass-update-reward 'V1v8T9Om' '4ZUUgdQs' --body '{"currency": {"currencyCode": "5ew2ZsGA", "namespace": "GFlSEObn"}, "image": {"as": "Vbjq0ChZ", "caption": "DSKiczx6", "height": 63, "imageUrl": "hdeCO612", "smallImageUrl": "Fk8rAAPZ", "width": 94}, "itemId": "RrjlKvZ4", "nullFields": ["qAWMQRvC", "ZK20qToR", "Mur3FYCQ"], "quantity": 65, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers '8nD7Uu2V' --login_with_auth "Bearer foo"
seasonpass-create-tier 'NtVHC03i' --body '{"index": 43, "quantity": 79, "tier": {"requiredExp": 86, "rewards": {"Bt1cu9tT": ["4kAH6JJ8", "w0VNYGOW", "bJSsmG4V"], "BLooan2A": ["WnRwV5I1", "WlFjdFfv", "qMhV5Hx9"], "eCROeTRD": ["n8VLZAQF", "44hzHkvj", "cfccyUsz"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'hufoYP6f' 'kVS5u9bx' --body '{"requiredExp": 60, "rewards": {"ZdktaRWI": ["VEAONDNg", "gmWhRv62", "K957xtsI"], "Qai8rw9b": ["m1YCMpnm", "D2gZSJwY", "ROtKpRt6"], "057skBPt": ["DHsb1SPM", "4iAEDD9i", "SzP6cHHW"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'IejvOM3m' '5Ow2KeL3' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'GaiqlpxV' '0h20VMm6' --body '{"newIndex": 55}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'dMVWue2t' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'CVCLNJoD' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp '9REupbA1' --body '{"exp": 39, "source": "PAID_FOR", "tags": ["aWKcnUzt", "mwS0dpVF", "enEIGpSl"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'hOmxDtKV' --body '{"passCode": "gREWVVlz", "passItemId": "OSNuBi1L"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'mjrFPcoy' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'Z4H1H9z7' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable '8qA8XkMw' --body '{"passItemId": "NlWLOXCO", "tierItemCount": 73, "tierItemId": "TS3WrCgu"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'FBW2yCHI' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'aAQDLyJY' --body '{"count": 44, "source": "SWEAT", "tags": ["3t3smq2z", "kSCGw51p", "yKs2cmTO"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'S00qtBmc' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'WZvFMUZ4' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'Xg31hUcJ' 'IiBFcKkJ' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'l1pp4Y40' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'PZU6MSXN' --body '{"passCode": "7mDoG6NX", "rewardCode": "uw9RRHuQ", "tierIndex": 34}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'QY7OYnta' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'LTvR8O90' 'ZvOWI1wq' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": false, "defaultLanguage": "CXNbh1ju", "defaultRequiredExp": 41, "draftStoreId": "0GLuuxka", "end": "1992-03-25T00:00:00Z", "excessStrategy": {"currency": "sbKFUFIX", "method": "NONE", "percentPerExp": 99}, "images": [{"as": "JrVWRpUw", "caption": "RciaixpA", "height": 51, "imageUrl": "JDN04K2q", "smallImageUrl": "aBWhUYWz", "width": 8}, {"as": "YF9N69oi", "caption": "KRMxVUwL", "height": 26, "imageUrl": "w0bK2t8g", "smallImageUrl": "0Wk8Dwr8", "width": 81}, {"as": "7H7wGtXT", "caption": "sh2N5Adu", "height": 89, "imageUrl": "KR41MXbj", "smallImageUrl": "jNAq0Yv9", "width": 70}], "localizations": {"12HpsUfA": {"description": "ghjXqMuA", "title": "tmjDBzQI"}, "nwwjpbIP": {"description": "Efn38s7x", "title": "EwQnp3j7"}, "wS6fbpTA": {"description": "RNsGqemh", "title": "bVpjbK1U"}}, "name": "7p4ik2XZ", "start": "1994-03-15T00:00:00Z", "tierItemId": "9R0JBYHy"}' \
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
    --body '{"userIds": ["4FsgURcc", "q7Y0Kc90", "RBecDWNj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'QLvlGvVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'JACgu8rF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'TLZvWw1F' \
    --body '{"autoClaim": true, "defaultLanguage": "FNsN9ehk", "defaultRequiredExp": 55, "draftStoreId": "QOAM4ef5", "end": "1988-03-25T00:00:00Z", "excessStrategy": {"currency": "dT3jz3mU", "method": "NONE", "percentPerExp": 76}, "images": [{"as": "OWT2G27K", "caption": "FIRLcwiJ", "height": 15, "imageUrl": "uzSjAvNY", "smallImageUrl": "Uue0RHQN", "width": 98}, {"as": "8FFtpRLS", "caption": "aGMNRDv5", "height": 93, "imageUrl": "D1gsrgjo", "smallImageUrl": "Wki8mMnG", "width": 45}, {"as": "UuKTtr3l", "caption": "SMr3EdkG", "height": 27, "imageUrl": "Rdik5EaO", "smallImageUrl": "mrrAGjNv", "width": 32}], "localizations": {"2pXR1y15": {"description": "Ai0nJP2M", "title": "E7Oq7fkj"}, "xnyX2p4r": {"description": "248NGSdI", "title": "Ylj6ooap"}, "f4UuIktR": {"description": "mh3YYqIi", "title": "q2IpHvox"}}, "name": "1RQ0h1YZ", "start": "1977-05-23T00:00:00Z", "tierItemId": "Kj7C3Mzk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'wR7SGf5Q' \
    --body '{"end": "1975-07-29T00:00:00Z", "name": "jwwzqp20", "start": "1998-09-05T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'kpRIIGR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'ozGrRLM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'QDb0cClm' \
    --body '{"autoEnroll": true, "code": "8Y3xxEMp", "displayOrder": 9, "images": [{"as": "NTNIOYfb", "caption": "tHqEs1Sl", "height": 27, "imageUrl": "pel1K4Ah", "smallImageUrl": "MkYSqpbI", "width": 43}, {"as": "I5qCsrzh", "caption": "Q3cwImtl", "height": 61, "imageUrl": "g2Q3MYsq", "smallImageUrl": "cJBIGhBu", "width": 35}, {"as": "7dxucYrt", "caption": "r04qetTV", "height": 75, "imageUrl": "JkZ3lh48", "smallImageUrl": "6Wdtb8mI", "width": 99}], "localizations": {"uQGAW7Z7": {"description": "VmsCnQev", "title": "DBzpQ43P"}, "Lo61gMGM": {"description": "k1EpLNq7", "title": "zlmLPyUx"}, "4IzJp41G": {"description": "Cn9tBKVo", "title": "0VoNNU13"}}, "passItemId": "V6wGdpdx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    '4rmcD0ts' \
    'FQAic9dv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'xLilHhEr' \
    '6xQbOvQ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'KyQhqSRi' \
    '0lrbg1n3' \
    --body '{"autoEnroll": false, "displayOrder": 62, "images": [{"as": "ZpoNRo5n", "caption": "ZYu2bjee", "height": 57, "imageUrl": "T9ACgfHn", "smallImageUrl": "2sGRx0u7", "width": 76}, {"as": "dwkheJNm", "caption": "eox8XlVP", "height": 4, "imageUrl": "c0dmCbHp", "smallImageUrl": "uuHCRTIn", "width": 8}, {"as": "DKKFzz08", "caption": "gZdAZvBM", "height": 13, "imageUrl": "rlrCFMXE", "smallImageUrl": "wKyyXu4K", "width": 72}], "localizations": {"ojeGQK3x": {"description": "bqJsIB77", "title": "umcKHiWc"}, "nH4W9HLI": {"description": "4BxsLeCR", "title": "b38zonIw"}, "rbqHWWxh": {"description": "qAUGC4Lk", "title": "E6vB4lkU"}}, "passItemId": "fJfntMIR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'nk3JkjSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'yk16nOfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'MaCPcdqU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'rk58p5Pl' \
    --body '{"code": "jQ8VqsGZ", "currency": {"currencyCode": "BQJg9WR0", "namespace": "5gFSgetT"}, "image": {"as": "X98Qjs84", "caption": "kdGd7h6I", "height": 88, "imageUrl": "KThu2FWX", "smallImageUrl": "CD6gPSqu", "width": 85}, "itemId": "8eYiu9RB", "quantity": 48, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'NVcAuGV9' \
    'pwCOo7qp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    '7cEiaSBS' \
    'rcX35UXh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'z475dyS5' \
    'BSUzyiis' \
    --body '{"currency": {"currencyCode": "oudFM0R4", "namespace": "MT7C03qQ"}, "image": {"as": "3u8kmuiT", "caption": "DtoTYcxl", "height": 4, "imageUrl": "cbyL8mVz", "smallImageUrl": "8lE6t33o", "width": 85}, "itemId": "B3QeoGu5", "nullFields": ["8F8UWrVc", "iDv1oP2M", "bVv2yfJx"], "quantity": 31, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'h6f70j8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    '7PsxOAIl' \
    --body '{"index": 68, "quantity": 65, "tier": {"requiredExp": 55, "rewards": {"aFcqyeGi": ["c4RNVipS", "gru4EuvO", "urEg8WJF"], "qktMtlEb": ["vv09LGES", "n6O3mJkX", "YA0lEQCU"], "pdBLHbOF": ["W8HvuVD7", "xNMDtvkQ", "OeMB6yxW"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'isFpZqu7' \
    'kAUpxKai' \
    --body '{"requiredExp": 31, "rewards": {"A9hzCQGN": ["AArPNn43", "2qBJ2AoC", "f6YEgzre"], "vBDLzu1q": ["GBF6GX6r", "C2xIYJmG", "WOqkrrn4"], "fDtCrVyk": ["kUnfETJS", "uloLRpb9", "rFUfHefb"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'v763XSAe' \
    'fPQ6vyVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'OoAboePV' \
    '7VJ8aobC' \
    --body '{"newIndex": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    '4fQftaQY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'agcdADvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'UHwt9E62' \
    --body '{"exp": 32, "source": "PAID_FOR", "tags": ["Af6YtlO5", "LeTQOjjB", "RDmVpHGX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'XBkmWbVa' \
    --body '{"passCode": "ioBJB26n", "passItemId": "k9ePVUzH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    '8eDwxYqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'qlYt7tXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'F9AkWQmD' \
    --body '{"passItemId": "xr8j77Kb", "tierItemCount": 35, "tierItemId": "Bm7DqGzm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'hZUyNsZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'OIpyTIX3' \
    --body '{"count": 23, "source": "PAID_FOR", "tags": ["B2VtPaJV", "I2MPPthF", "n27KUGdI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'oelwmgMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'NdE6EEi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'V5Kr60Dq' \
    'RZgZM1nY' \
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
    'Kgiy779c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'CUNGxWES' \
    --body '{"passCode": "Eb396stT", "rewardCode": "NPYMIpE2", "tierIndex": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    '3uy7DEkv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'qKdCM2hh' \
    'G5vNbbwo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
