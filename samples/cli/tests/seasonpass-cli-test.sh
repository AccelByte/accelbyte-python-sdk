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
seasonpass-create-season --body '{"autoClaim": false, "defaultLanguage": "t9D1JRtU", "defaultRequiredExp": 23, "draftStoreId": "B4RtyP8v", "end": "1998-08-19T00:00:00Z", "excessStrategy": {"currency": "etw0GD9D", "method": "NONE", "percentPerExp": 51}, "images": [{"as": "RBNcuGsP", "caption": "16iIu06b", "height": 68, "imageUrl": "3x3iwW8R", "smallImageUrl": "SHsLp2qa", "width": 34}, {"as": "rOYZEL5o", "caption": "ECCGygYy", "height": 11, "imageUrl": "PfO384CJ", "smallImageUrl": "f4HOubNK", "width": 94}, {"as": "vl8cn2Vk", "caption": "Ac5SPzQw", "height": 28, "imageUrl": "1l7zrGXo", "smallImageUrl": "3IE3s2eu", "width": 30}], "localizations": {"W2DFg6mE": {"description": "s1GmTitD", "title": "atWuiaSZ"}, "80nb5Co3": {"description": "rSfWkPau", "title": "qGg3b1cs"}, "skWoB2wD": {"description": "ZadId9YA", "title": "NlFdTuGI"}}, "name": "QawIEdJt", "start": "1971-03-20T00:00:00Z", "tierItemId": "pHt2mHYc"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["4APSBuUm", "OJXPNlDY", "AWa33lUY"]}' --login_with_auth "Bearer foo"
seasonpass-get-season 'S00c0rfr' --login_with_auth "Bearer foo"
seasonpass-delete-season 'MbeeuTpo' --login_with_auth "Bearer foo"
seasonpass-update-season '4X77ghuG' --body '{"autoClaim": false, "defaultLanguage": "xoOUnT6h", "defaultRequiredExp": 70, "draftStoreId": "oqiuPflS", "end": "1991-07-12T00:00:00Z", "excessStrategy": {"currency": "MtJU0vKJ", "method": "NONE", "percentPerExp": 31}, "images": [{"as": "ziuSJZfP", "caption": "r3m3XhUO", "height": 95, "imageUrl": "GV5N9HPj", "smallImageUrl": "JD9mab7h", "width": 23}, {"as": "KKyVjil6", "caption": "D9m4IyDB", "height": 28, "imageUrl": "eoN3xF8E", "smallImageUrl": "AdX8mfzV", "width": 21}, {"as": "lzhOPRgX", "caption": "HB23MTR8", "height": 60, "imageUrl": "HncA4XJf", "smallImageUrl": "O9BXpjdQ", "width": 99}], "localizations": {"2l3mvhTx": {"description": "e7lOCPrm", "title": "WAno7Jps"}, "rpqSTHCX": {"description": "OvJeMH5R", "title": "pDsNAnki"}, "M7T8wVqI": {"description": "9iOml5Wn", "title": "WMofXNcb"}}, "name": "dSxwMGXA", "start": "1978-10-02T00:00:00Z", "tierItemId": "zFAjHdrd"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'Atghp6UU' --body '{"end": "1976-04-02T00:00:00Z", "name": "HMiwjIaf", "start": "1983-02-14T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'jNMz6RlE' --login_with_auth "Bearer foo"
seasonpass-query-passes 'gCgPK5gJ' --login_with_auth "Bearer foo"
seasonpass-create-pass 'eNXpSwpe' --body '{"autoEnroll": true, "code": "0fNCbrDp", "displayOrder": 61, "images": [{"as": "KpOKlaMw", "caption": "janikJfV", "height": 60, "imageUrl": "RNwBMztY", "smallImageUrl": "PJ2HIXl5", "width": 17}, {"as": "lvzo8WPY", "caption": "7jVqbLTq", "height": 84, "imageUrl": "15K5Hkcw", "smallImageUrl": "B532cTyK", "width": 39}, {"as": "dYHNZCWl", "caption": "fKAvpU30", "height": 65, "imageUrl": "MEl1LSrk", "smallImageUrl": "yjYmVDmc", "width": 85}], "localizations": {"YTsPo3ZO": {"description": "0tivzHLW", "title": "3MvZVbQe"}, "fOASlUFu": {"description": "ZvKdY9BL", "title": "LZSz8AZw"}, "xr4sVYEI": {"description": "YtC0Bo01", "title": "9hk9phF7"}}, "passItemId": "mVtjtU4t"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'tphCMRIB' 'BOhgHSfH' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'KWuMZa1v' '8AosWpvr' --login_with_auth "Bearer foo"
seasonpass-update-pass '03948099' 's6G7RAkj' --body '{"autoEnroll": true, "displayOrder": 14, "images": [{"as": "dVDMcAus", "caption": "ZMCEW6Ei", "height": 21, "imageUrl": "wfLfCH3e", "smallImageUrl": "PO2UHTQ4", "width": 62}, {"as": "bswxgRvZ", "caption": "fO3cTjKN", "height": 29, "imageUrl": "FhYQBdL2", "smallImageUrl": "onpNP3Jt", "width": 29}, {"as": "ezPKREdu", "caption": "L62q7ZYv", "height": 19, "imageUrl": "b8vdbGcM", "smallImageUrl": "CgmsIpAE", "width": 59}], "localizations": {"DNFnPOY5": {"description": "6jSjrL2l", "title": "TndIif7t"}, "pBdU3HsZ": {"description": "tTyJQgr3", "title": "8ruPYGMt"}, "Cp2Wrjtc": {"description": "koCjUdFM", "title": "jaaQ8X9g"}}, "passItemId": "uHBEdAWW"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '6Vhd2rHt' --login_with_auth "Bearer foo"
seasonpass-retire-season 'JG58ipcq' --login_with_auth "Bearer foo"
seasonpass-query-rewards '38wjsHCX' --login_with_auth "Bearer foo"
seasonpass-create-reward 'TaFBcE1f' --body '{"code": "dw7m8PPg", "currency": {"currencyCode": "w60ivjBO", "namespace": "AQ9ChRo6"}, "image": {"as": "OT5FP4eU", "caption": "Z1FUWTh2", "height": 19, "imageUrl": "zECAEYJy", "smallImageUrl": "ApLWmMB4", "width": 48}, "itemId": "nkBDpKv7", "quantity": 59, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'GJgMlE9b' 'My4vew15' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'QwIKH3DK' 'ZNVM08ji' --login_with_auth "Bearer foo"
seasonpass-update-reward 'n34Iao9r' 'Bz4IkgS7' --body '{"currency": {"currencyCode": "LwIWm9SJ", "namespace": "GTr1fvmY"}, "image": {"as": "xajwE45g", "caption": "f7U0rnxX", "height": 21, "imageUrl": "ESbGhyJw", "smallImageUrl": "EmIQPFMZ", "width": 37}, "itemId": "WrTKipYq", "nullFields": ["oh1tbv2U", "22ADxqvg", "BsFa5H8M"], "quantity": 48, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'Cvu2tEHp' --login_with_auth "Bearer foo"
seasonpass-create-tier '31p9NdcC' --body '{"index": 28, "quantity": 12, "tier": {"requiredExp": 20, "rewards": {"e7Yk1MMw": ["eohf7W1j", "S6nDi0mb", "xOkefbAW"], "sbzWGHBf": ["Y7ReQRLk", "EUbobBY5", "ppSGlOVt"], "ZeVo6Gii": ["RKGjsIvP", "z4L5gSZN", "nsfPKkGS"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'AP5ibKAM' 'gPY8izKB' --body '{"requiredExp": 68, "rewards": {"e1TdEFdE": ["IZmI1o8h", "i7xMZzYN", "gI7Btg3l"], "cgJzh45R": ["mPtZUDTT", "h61tH8J6", "g0hQFD2K"], "TVfovKHq": ["XsM6PRvm", "3yVB3XF7", "W1wCo1ke"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'cXgn3c0D' 'hUEnr3J5' --login_with_auth "Bearer foo"
seasonpass-reorder-tier '3fzDQyuV' 'hnhWoMTY' --body '{"newIndex": 39}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'e4x90uDL' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'YcxpynyQ' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp '6dROzJbL' --body '{"exp": 4, "source": "SWEAT", "tags": ["htXrvFu1", "mdbzi1gI", "G6PdIZAZ"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'JZOkir9h' --body '{"passCode": "hbUPEGyK", "passItemId": "2Dw9LWkg"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'rSnuIDK0' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'NAIbyhs6' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'vOujDqnJ' --body '{"passItemId": "Oga30xpH", "tierItemCount": 14, "tierItemId": "I1f1Oe3r"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'EtQKUkdX' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'gZviTPhN' --body '{"count": 60, "source": "SWEAT", "tags": ["w7Ii06co", "EKfhKltR", "m0ClHpo1"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'sIeglAtw' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'I5MfAfNV' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'iuI0B659' '6r2Eseyb' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'mRmOP2MK' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'LBinCdlz' --body '{"passCode": "OwlFTV0B", "rewardCode": "AUiE3DcZ", "tierIndex": 2}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'jByu699G' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'u2gFjyCK' 'NZQJcauP' --login_with_auth "Bearer foo"
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
    --body '{"autoClaim": true, "defaultLanguage": "Dzyf2NPP", "defaultRequiredExp": 50, "draftStoreId": "OWv3pm8M", "end": "1983-12-11T00:00:00Z", "excessStrategy": {"currency": "DNZayQFb", "method": "CURRENCY", "percentPerExp": 79}, "images": [{"as": "Id8PVIzj", "caption": "94VFvr0E", "height": 14, "imageUrl": "uDNGHQmj", "smallImageUrl": "aHFyjDsA", "width": 23}, {"as": "EeUxtIQA", "caption": "rw1GpVqn", "height": 95, "imageUrl": "Q4kax7F4", "smallImageUrl": "ONQ55G55", "width": 66}, {"as": "oj6Czjgh", "caption": "Whnr6fWH", "height": 70, "imageUrl": "Wv31f4Jv", "smallImageUrl": "MFdV7vME", "width": 55}], "localizations": {"YiLhBGFs": {"description": "r9oypOOM", "title": "I8cLrwm5"}, "OvxUouXS": {"description": "vPmWfxgC", "title": "ryqjSekS"}, "Is7zWBTF": {"description": "Da4qqTP1", "title": "8w9h6a1w"}}, "name": "dNYDryhL", "start": "1976-08-04T00:00:00Z", "tierItemId": "4qhPFiWD"}' \
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
    --body '{"userIds": ["O2GNEwO0", "NsveTVeU", "1QL0xr37"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BulkGetUserSeasonProgression' test.out

#- 6 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'ZBhMuKrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetSeason' test.out

#- 7 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'NjzYiDbP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteSeason' test.out

#- 8 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    '172c4blp' \
    --body '{"autoClaim": false, "defaultLanguage": "P2HKXE83", "defaultRequiredExp": 79, "draftStoreId": "Xnd1Xt6T", "end": "1973-04-09T00:00:00Z", "excessStrategy": {"currency": "c9CY8AFC", "method": "NONE", "percentPerExp": 98}, "images": [{"as": "mI1noXUy", "caption": "0IhyGmE1", "height": 26, "imageUrl": "CGrfJRBR", "smallImageUrl": "RGNKTt7q", "width": 63}, {"as": "pAOLzVR4", "caption": "1rLDwCMh", "height": 49, "imageUrl": "QcJniDBo", "smallImageUrl": "pN1Lc9XC", "width": 79}, {"as": "N9gt0KAO", "caption": "4bvo3ZxY", "height": 87, "imageUrl": "eklQhWnm", "smallImageUrl": "xgKFcXJW", "width": 70}], "localizations": {"nRR1eZpQ": {"description": "J6bphokr", "title": "Uo6XPUuP"}, "YmU3qskR": {"description": "Qb0eHH7H", "title": "UcBn8vup"}, "nWC92PFZ": {"description": "ZwQV2XNP", "title": "UDjMrFOU"}}, "name": "pcnjmubh", "start": "1986-05-27T00:00:00Z", "tierItemId": "x7LTn3jm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateSeason' test.out

#- 9 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'lKbyd3Zd' \
    --body '{"end": "1972-11-19T00:00:00Z", "name": "xkZapbiF", "start": "1982-07-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CloneSeason' test.out

#- 10 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'n1i6g1i6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetFullSeason' test.out

#- 11 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'dGuuyN7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'QueryPasses' test.out

#- 12 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'Ut0E3b9o' \
    --body '{"autoEnroll": true, "code": "N0xGrBpB", "displayOrder": 68, "images": [{"as": "oFTN3pWU", "caption": "CGpUV2qs", "height": 34, "imageUrl": "QqZxPlhM", "smallImageUrl": "XkNkvtED", "width": 95}, {"as": "vayBnpmC", "caption": "ULdmckmv", "height": 41, "imageUrl": "1bhlA2HR", "smallImageUrl": "exD7sQRF", "width": 29}, {"as": "SJCwVQ7e", "caption": "2uSTpOoX", "height": 83, "imageUrl": "3I7cyibn", "smallImageUrl": "PslejGGI", "width": 49}], "localizations": {"ZK8Kvar6": {"description": "TfdTCH2X", "title": "5QprsHs2"}, "fqAIgwTa": {"description": "zQp0QlOp", "title": "YM2MMqZr"}, "mBF5nVYK": {"description": "x3GqdYYJ", "title": "4WAc5EwA"}}, "passItemId": "gNjAzTqh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreatePass' test.out

#- 13 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'x3BLqWoL' \
    '7jllSc0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetPass' test.out

#- 14 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    '24tCmzzo' \
    'wqGPe7Ng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeletePass' test.out

#- 15 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'kkOeVGyM' \
    'qW5EyqYo' \
    --body '{"autoEnroll": true, "displayOrder": 78, "images": [{"as": "NNgBkIjl", "caption": "fTpq6Pnd", "height": 41, "imageUrl": "w8JRXG1Y", "smallImageUrl": "lE0UYdmm", "width": 81}, {"as": "ywvoZLqe", "caption": "W2AKRkxI", "height": 67, "imageUrl": "TS1i2hkp", "smallImageUrl": "qWgb86yy", "width": 80}, {"as": "UrTYyw7m", "caption": "36n13v5H", "height": 68, "imageUrl": "W9xHTrhg", "smallImageUrl": "Qdm8Pnyz", "width": 52}], "localizations": {"Dsr3LaCT": {"description": "4fnA12Ra", "title": "yyb7SCGP"}, "5E9GPQs1": {"description": "n7SXEkmj", "title": "ilMGxQV1"}, "ie45Wq1v": {"description": "QXUAdIiM", "title": "XHLC0YBC"}}, "passItemId": "b2gFGEB1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdatePass' test.out

#- 16 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    '8Z62iDSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublishSeason' test.out

#- 17 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    '8TiNInPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetireSeason' test.out

#- 18 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'jNP1FkuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'QueryRewards' test.out

#- 19 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'qlrP0Y4T' \
    --body '{"code": "1sAUEukE", "currency": {"currencyCode": "AUtdzJXX", "namespace": "fGlTu1rT"}, "image": {"as": "bdJu22pV", "caption": "BJmPVFEo", "height": 66, "imageUrl": "yKEeVQaA", "smallImageUrl": "xjIoyF0a", "width": 78}, "itemId": "jb4CSyii", "quantity": 33, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateReward' test.out

#- 20 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'VsgrB3QM' \
    'LxMjIFL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetReward' test.out

#- 21 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'UkV6reSF' \
    'OzDLz4AM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteReward' test.out

#- 22 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'cqRDlMlO' \
    'VeIVD9Bf' \
    --body '{"currency": {"currencyCode": "rV4SHUAr", "namespace": "4qV2YRMk"}, "image": {"as": "IshuJ6ys", "caption": "xx7PBiuE", "height": 72, "imageUrl": "PIEXOuwU", "smallImageUrl": "XbZ1YpXU", "width": 14}, "itemId": "pkCFbXV7", "nullFields": ["iDBSWBY2", "15Sppdam", "mrt3shkT"], "quantity": 93, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateReward' test.out

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'ntm81v5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'QueryTiers' test.out

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'bXt2qeuO' \
    --body '{"index": 6, "quantity": 56, "tier": {"requiredExp": 16, "rewards": {"LXnfUxFq": ["Ssg50US7", "hhc8kPZY", "NdR4PMKj"], "PTfvWApC": ["OxLTeQYA", "oPNAZvuv", "YFQmKAdO"], "2YEkAEgS": ["jFocjqbM", "oP0FUDvf", "qtlDyVbM"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateTier' test.out

#- 25 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'Cgll1APk' \
    '4V5EVYq5' \
    --body '{"requiredExp": 42, "rewards": {"ylH5NRW2": ["UrUHHznu", "AOLEegbj", "a7rPIFVY"], "Zl03rO6x": ["bt3x9HTt", "Gdi13PEX", "qspdmKfK"], "dxC2X9bN": ["q6dv7Cfv", "HfuxLCrE", "kQvoNQSC"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateTier' test.out

#- 26 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    't1hjqwKv' \
    'i9kk98Hl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteTier' test.out

#- 27 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    '2UUxnj5J' \
    'xWNuow64' \
    --body '{"newIndex": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ReorderTier' test.out

#- 28 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'xYnSjPuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UnpublishSeason' test.out

#- 29 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'J7EtH7xH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserParticipatedSeasons' test.out

#- 30 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    '1yO4ruGI' \
    --body '{"exp": 36, "source": "PAID_FOR", "tags": ["LPbOeGrg", "JpvLRHT8", "DRs1W42A"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GrantUserExp' test.out

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'Q8t3dLYx' \
    --body '{"passCode": "nPY8opO1", "passItemId": "JVOxuKnD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserPass' test.out

#- 32 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'shHb2POw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ExistsAnyPassByPassCodes' test.out

#- 33 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'vuIrKmdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCurrentUserSeasonProgression' test.out

#- 34 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '8r54wkIA' \
    --body '{"passItemId": "RwJzlGBW", "tierItemCount": 1, "tierItemId": "LXlMK5Kw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CheckSeasonPurchasable' test.out

#- 35 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'JrFSXfWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ResetUserSeason' test.out

#- 36 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'Dv484Puu' \
    --body '{"count": 30, "source": "PAID_FOR", "tags": ["pDDvBxqt", "OQsyUbIF", "8K1eMlYt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GrantUserTier' test.out

#- 37 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'S1ENXkUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryUserExpGrantHistory' test.out

#- 38 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'vtIfFWLp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistoryTag' test.out

#- 39 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'zD3WrBKl' \
    '8qHbTTwA' \
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
    '3E6FGBBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentUserSeason' test.out

#- 42 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'RexGsOoR' \
    --body '{"passCode": "RZg8JIkt", "rewardCode": "30zHrzcE", "tierIndex": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicClaimUserReward' test.out

#- 43 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'lkQB5UqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicBulkClaimUserRewards' test.out

#- 44 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'UdrlvWtd' \
    'x8tsPWKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
