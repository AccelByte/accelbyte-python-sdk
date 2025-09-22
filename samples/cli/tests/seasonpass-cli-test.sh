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
seasonpass-export-season --login_with_auth "Bearer foo"
seasonpass-query-seasons --login_with_auth "Bearer foo"
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "twYCA9kPI6LZrkq6", "defaultRequiredExp": 59, "draftStoreId": "9UzVRiXbqlAw7r6W", "end": "1999-02-03T00:00:00Z", "excessStrategy": {"currency": "ktQG0h5JAav5kRa6", "method": "CURRENCY", "percentPerExp": 29}, "images": [{"as": "zZ0m8SAMTwE6I56I", "caption": "aRDBXxyaNoMR6hks", "height": 32, "imageUrl": "qbPngUNB1vRodwpz", "smallImageUrl": "S6DaDpv8N7ZQVqGj", "width": 26}, {"as": "oDLjWjkY1aXlFcDt", "caption": "gOjchIua5tWEIC32", "height": 28, "imageUrl": "gY1TXp38zsCTCrbC", "smallImageUrl": "bPOyNQkT7NvyE3cw", "width": 50}, {"as": "AQLnzjMf8GZ2WBZq", "caption": "xYG3aREAu2D6QVKN", "height": 58, "imageUrl": "diRilZ7oFgx4c8Ou", "smallImageUrl": "mKtPDKJDXn7Z4U68", "width": 38}], "localizations": {"VbMqSszE8GHavj7A": {"description": "orKsxwkosAVerXpc", "title": "1C8XfwHuKeb9l3rG"}, "N9A3sNm84hddSpHt": {"description": "0P7MIIR7CkyF6C7d", "title": "uuyZ0GhDogqrhBRd"}, "8lDR6qVNPRZYdFLI": {"description": "AjGGJddVCvu9vx5K", "title": "Q7KYnIuMBvaO35ll"}}, "name": "zQRaT5kPxUfofvnn", "start": "1994-05-05T00:00:00Z", "tierItemId": "uB0y5WUlrMdI4sNv"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-bulk-get-user-season-progression --body '{"userIds": ["eabntBSxTeIv53HG", "CiljvjKoyD6SCwGr", "ncqmLtjQHAf8TgoN"]}' --login_with_auth "Bearer foo"
seasonpass-get-item-references 'm03VLisV6zwPuo3t' --login_with_auth "Bearer foo"
seasonpass-get-season 'd6TC6I3lMjGSWN2l' --login_with_auth "Bearer foo"
seasonpass-delete-season 'aRlxfcjHfYakUCTq' --login_with_auth "Bearer foo"
seasonpass-update-season 'GkE7wcWfDslpJSqG' --body '{"autoClaim": true, "defaultLanguage": "LPziZMdjxcBZufQx", "defaultRequiredExp": 66, "draftStoreId": "Q6iiPlSC2uE4o5Vw", "end": "1972-08-16T00:00:00Z", "excessStrategy": {"currency": "o3fePqIJA8IHtrkm", "method": "NONE", "percentPerExp": 90}, "images": [{"as": "0hpDDWVAla2l5BYN", "caption": "tIuS5S5XUdjsoqwG", "height": 49, "imageUrl": "EdscKHPEqgA8yu7V", "smallImageUrl": "k6Jt4Ymos9Jcdos4", "width": 11}, {"as": "OvBMcaYmvCkGZ5dA", "caption": "gqxpBFmaLoxozr6w", "height": 10, "imageUrl": "yliWMNW5NyLu0M3V", "smallImageUrl": "Hh2EI8JlDbPWbQ6Q", "width": 37}, {"as": "lNmqRBaAkLnvxkT1", "caption": "X68cmDc3fxU8MyKr", "height": 88, "imageUrl": "0v52Dlym6puQ23xo", "smallImageUrl": "J8aeCnaLpUKp44YU", "width": 60}], "localizations": {"foWvXa3bMrXsDr6k": {"description": "ILsSSyDdmykmoPYg", "title": "c2L4jk4Lo0LSP0pf"}, "4IxjUkl535X3ateE": {"description": "KDpADz1x3poD3Qgb", "title": "3boLQQ1MzH7Qm8bw"}, "bmXgdAPh1EThG96g": {"description": "AFKK2WDgCcxvONZm", "title": "3EeERmDnyeFoF7VS"}}, "name": "Z6pf3vneSD2Tb3g7", "start": "1977-07-14T00:00:00Z", "tierItemId": "SQUhAEtrmjqU6YE3"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'p4lSck0ZHn5GI39Y' --body '{"end": "1985-06-22T00:00:00Z", "name": "HqaTHeKtW18iGeUl", "start": "1972-12-17T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season '9d9sogWa24CKNS0G' --login_with_auth "Bearer foo"
seasonpass-query-passes 'qVvUfHQvsHXNUNe4' --login_with_auth "Bearer foo"
seasonpass-create-pass 'mhgo5QB65lSAiYnN' --body '{"autoEnroll": false, "code": "lxqMrj3oZk03QXcK", "displayOrder": 79, "images": [{"as": "kBMr1yrOMlNFSrUE", "caption": "irnjX9fDmIbeZxzf", "height": 93, "imageUrl": "WQG26yUZNmTBcvrb", "smallImageUrl": "YCwZtxFHyPLtI8il", "width": 2}, {"as": "oxcwgGLXpUL4pp2n", "caption": "cYAHdNzDmeIP6rOv", "height": 61, "imageUrl": "cJcHm3SZLxoRDFuu", "smallImageUrl": "uySj29a9LJE8HoRS", "width": 93}, {"as": "2PFAAMwzHPxB1Usk", "caption": "Ys4Yw20DOqOBSC2D", "height": 76, "imageUrl": "0sG6vxkfUcmqRRbc", "smallImageUrl": "eJ5i0EeDxOgBnhhq", "width": 63}], "localizations": {"WEi8KlloeH0JT1yd": {"description": "uat2vQR3biBfsu4j", "title": "msRE2w1yEkLgh3tI"}, "Yt4SqYUTLDx9gIiD": {"description": "andpGT2t24aOMh5e", "title": "C3IHeHSKLCa3xreN"}, "DUWehwH3q31A806D": {"description": "Jgas4b6z3LNUj7fd", "title": "gLA84Z8YYk6QEgJj"}}, "passItemId": "BbEDoNf3n0hEoRCA"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'cf80zfFyabWAgIUX' 'iI07A68eaqC2J9jy' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'EW6GLbc0NaKDUL3s' 'a13lk1dQBHO86IlB' --login_with_auth "Bearer foo"
seasonpass-update-pass 'hnetU4RwTqUXlTDB' 'zOuYsaZA2yyd4mbq' --body '{"autoEnroll": false, "displayOrder": 83, "images": [{"as": "kP7cFdP43e5dC9XI", "caption": "BudfZgrbHDIDm4hM", "height": 51, "imageUrl": "lu7WtjCtoYetOO84", "smallImageUrl": "7g8OudOfjnCuHZ3c", "width": 50}, {"as": "6IjGa23YvYmmDg7V", "caption": "YPXIuvUYTZBRujIU", "height": 63, "imageUrl": "9699mCEHThUJkETA", "smallImageUrl": "sSp7gh4TeUTkOkAY", "width": 10}, {"as": "ZwsVC0gL97ZVJSPq", "caption": "Jiwv1qlYB1RSKs6g", "height": 88, "imageUrl": "8ZGF7uYnGzpipNDi", "smallImageUrl": "gNJma1MbqqZtfNWq", "width": 24}], "localizations": {"olB4lkKB4EYOkQ1j": {"description": "MD3cym8xIfkOVW2g", "title": "rREOLx0KOww3HICQ"}, "Lfl7MUBG7qtPu64y": {"description": "AtURKLRkb738HGS6", "title": "rDgMdIIlhS1fSiM9"}, "331m7Ta1PsKc50Kv": {"description": "6ecnEevcAx2K2zkR", "title": "enmPZnGBt4P7Wnbd"}}, "passItemId": "SJtjX7ZshZyZl5x4"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'bRXBHUTrDzZSKscf' --login_with_auth "Bearer foo"
seasonpass-retire-season 'OcYu3dpCROYqUiGK' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'XVFCmpo6sPwVOEDS' --login_with_auth "Bearer foo"
seasonpass-create-reward 'JsEK5QpNhlI2iS5E' --body '{"code": "pGhhvXYck0upMzUY", "currency": {"currencyCode": "nb76tFkEORV3bu1b", "namespace": "NCtX7W40V6Do5sYa"}, "image": {"as": "dCCFrHHC3DpZxkrQ", "caption": "DXuNFviMarv8mnfH", "height": 74, "imageUrl": "WLVd3DlhLuIpomM8", "smallImageUrl": "sm1MiaI1mX2tJoAR", "width": 40}, "itemId": "HBvepnDCjgyJlXe3", "quantity": 25, "type": "CURRENCY"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'nx4V709xbnGezKsD' 'wG2omOR2nvYI9TVq' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'JdvzcWbfUpaXp5JM' 'l5LL4bTxBmZjdrrI' --login_with_auth "Bearer foo"
seasonpass-update-reward 'xsB0NRsB1fPqqRRu' 'lpqpymDkQhtrHWwR' --body '{"currency": {"currencyCode": "VnwVBOqOHi8pWGd1", "namespace": "juYhiqjRJOqB5F93"}, "image": {"as": "zFQbJndUDpdONneA", "caption": "czbBdHb2slt71B1S", "height": 24, "imageUrl": "jlIIk0iKoTTS1j02", "smallImageUrl": "o7JjTXAQN0qdskdQ", "width": 97}, "itemId": "XJRk0eaKQDOJvrTe", "nullFields": ["F7Bl0LcghVHfPEsp", "fglSs6g4iY9u02aC", "NYIWekp18lOC3mNq"], "quantity": 49, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'CfR3ncDlwi3v3MFF' --login_with_auth "Bearer foo"
seasonpass-create-tier 'J1KesKoELCpobBEG' --body '{"index": 77, "quantity": 63, "tier": {"requiredExp": 47, "rewards": {"Dymtj3giPg4x4yiP": ["X6ues1Hhhkg1yLVb", "LFzHEP8cM4NTwr0K", "HaAsmTej52WKi6tA"], "rAURt9plCSVq8PdH": ["6hJPUAc0RVwXgAgn", "tLMCuaXBWQi6BqPg", "4xr0lCancUZGCHsZ"], "YoLfR1KtOv7Zy0b6": ["5uvuKNuy0ytZQ7M6", "Nzy1adnSKOLFKx1d", "X4LuWJu3pDMUAeeZ"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier '97SBROPYuG6XqP6o' 'o7G73zdxTgOfnwId' --body '{"requiredExp": 24, "rewards": {"sv4W2OJhtafxMSJl": ["Heb34sZKHcl5LLLO", "exL4fZvWtND2tcBF", "pX8lNtFEJ7tnkY6M"], "ca5afj12K2IzrBvv": ["Wm4udE0OXudXgNne", "8kJATwlc6esUp6Sw", "1I98jeZQ7hfxnhLd"], "3Knaknoed9DHhLOq": ["QGhCUr6iTrjyEgar", "AdNJOIG36I6tRbRc", "rEveMdAdiPKDUVSC"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier '00PYeDcagginxnFI' 'na3yddcbsPheTH26' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'IUJNvYuGRUvpZaHC' 'uESOiIZsMfB4ZH3m' --body '{"newIndex": 39}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'mDWORBVXTIIJM9Xs' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'YIIZxiXNMR9BgaWc' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'FX3SUBhyoTsMWPAx' --body '{"exp": 96, "source": "PAID_FOR", "tags": ["MkawaGpAyrIwMif3", "BOdkocVTd4BxqGWV", "6mTJ0sQs6XNbjvqh"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'nUVLWu8olKdxL6oz' --body '{"passCode": "RmDD0jJvlfV5OemP", "passItemId": "YdYT7DROCjtuzFMb"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'AG9YI89hmguB8FOT' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'jMLo4b9rIzqYkEps' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'tyVTBcrM8rG0rH0z' --body '{"passItemId": "cswwVeMK6MbGIVIu", "tierItemCount": 79, "tierItemId": "vvwLc7KY3uVoJXTI"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'MtpgkieDyF97lGdM' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'iHKxbWCYzo8yO2KT' --body '{"count": 76, "source": "SWEAT", "tags": ["9tmmOnYnOpas6ghP", "1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'GLuC3brWdTYCfHkI' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'ySok5DiXZtLW87rG' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'ysryod3dNQrmsApR' 'A6HX3RwrKt2ecozL' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season '0TOg54vCE48L5oLF' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward '6M4lNa4JUMSHNgqR' --body '{"passCode": "qCV7usamANkZlOX9", "rewardCode": "Sfo95HgXqKhTPkwf", "tierIndex": 76}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'Osp0LZ5njN86Hl8k' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'UXzt6bSc6bWvgpVy' 'W9dD1kOmvrAejcq2' --login_with_auth "Bearer foo"
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
echo "1..46"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ExportSeason
$PYTHON -m $MODULE 'seasonpass-export-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ExportSeason' test.out

#- 3 QuerySeasons
$PYTHON -m $MODULE 'seasonpass-query-seasons' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'QuerySeasons' test.out

#- 4 CreateSeason
$PYTHON -m $MODULE 'seasonpass-create-season' \
    --body '{"autoClaim": false, "defaultLanguage": "e8aoFzAyBME74HUt", "defaultRequiredExp": 18, "draftStoreId": "BOxrZDyvpcLYOWA8", "end": "1991-03-15T00:00:00Z", "excessStrategy": {"currency": "2faXUr9Sk4lq2faB", "method": "CURRENCY", "percentPerExp": 23}, "images": [{"as": "AXXKlhvyH8paOJtx", "caption": "qMPpcVfRwNj547fH", "height": 91, "imageUrl": "XrKEDpEY8VnocGAj", "smallImageUrl": "ci0V3tBf2jnHGKXp", "width": 15}, {"as": "pQ2FbKPFMycMSQ4q", "caption": "fAacR0LgB5BUXvjc", "height": 42, "imageUrl": "lNos4yBRjrERHEon", "smallImageUrl": "AZR8GmEu0q1p6QCy", "width": 56}, {"as": "6vSkVFWdsbYuVEGV", "caption": "xYheR3j5mNZ6vwv7", "height": 76, "imageUrl": "a08gxefTYKhuxaEc", "smallImageUrl": "7M4P7UckSC6ePeN8", "width": 17}], "localizations": {"DsBZOuYQJ03BAHZ7": {"description": "c53q7akMpcmnnx6R", "title": "VBrop9v7aZK3h65h"}, "bN15zfQSfQrtfF3T": {"description": "QN0OcNDLr36vzohZ", "title": "yjMQAg5mPYhrLTyU"}, "8OhgfY9JQYGF4bYX": {"description": "EcENx9xZlAchob44", "title": "lONDDwMvgI0HlyPR"}}, "name": "7wZNiVsF6xG2mXEQ", "start": "1972-01-14T00:00:00Z", "tierItemId": "F5wWaDhukU4khGG4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateSeason' test.out

#- 5 GetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetCurrentSeason' test.out

#- 6 BulkGetUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-bulk-get-user-season-progression' \
    --body '{"userIds": ["vZFTYnPkmSu4PWam", "1jxR7SETWjteoc8f", "gvZDDhoO05oKqymx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetItemReferences
$PYTHON -m $MODULE 'seasonpass-get-item-references' \
    'LD1Lcvw6T6mZEiwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetItemReferences' test.out

#- 8 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'xElpMYSWIeVzm7z9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSeason' test.out

#- 9 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'noowmlTIKVowi0RY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteSeason' test.out

#- 10 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    '2VN4ZONJREdUQ3z9' \
    --body '{"autoClaim": true, "defaultLanguage": "ETtYmGukz3Mnlrjc", "defaultRequiredExp": 69, "draftStoreId": "9TmXfJWBPrx9Ns8e", "end": "1990-07-24T00:00:00Z", "excessStrategy": {"currency": "9bpjb1tdA3QhjCMW", "method": "CURRENCY", "percentPerExp": 10}, "images": [{"as": "hsYpKPlXn77AtYoF", "caption": "zLAATPY8P8P3cfoi", "height": 43, "imageUrl": "EJIYppuUSsKoHw2h", "smallImageUrl": "yd12uSE7BEv3aevq", "width": 67}, {"as": "iohU1cg4W1IS3Uv1", "caption": "BpWoJBaqdg2FHcun", "height": 38, "imageUrl": "6B6XTmSLyn50sigB", "smallImageUrl": "VZxiKdV57GvRyd9U", "width": 42}, {"as": "hLiD5sf5y1JsxJNG", "caption": "myt0SQDUDoWBZVGL", "height": 23, "imageUrl": "azPAANjfBoldFOyq", "smallImageUrl": "A2clJ5gEOaCgM6Yn", "width": 90}], "localizations": {"dIs0xf4czdt7zqmS": {"description": "KxOEQlVcx6GqsBq8", "title": "vdhWVnuYLgpZehK0"}, "G2nmyuViB9kRTcSQ": {"description": "dTnNYGeAfYFG3wSk", "title": "HKufBdS3ZOokZB4c"}, "XnAXyuGz6LlxHv8S": {"description": "wyagYvDJ3w3UNgIG", "title": "j2jZtEYT8sIPSE1X"}}, "name": "XPzySa0sZoFS6xCO", "start": "1996-11-06T00:00:00Z", "tierItemId": "DXEHeiGTnwyEw6hI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UpdateSeason' test.out

#- 11 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'WDZrpP7rz3ISW510' \
    --body '{"end": "1976-10-01T00:00:00Z", "name": "jYnSoIFeouC2m38k", "start": "1996-05-18T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CloneSeason' test.out

#- 12 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'WfwnwGioVwVzmmBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetFullSeason' test.out

#- 13 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'VFfpqx1AeLtzcPJ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'QueryPasses' test.out

#- 14 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'jtDYBo4FUTH7CGfK' \
    --body '{"autoEnroll": true, "code": "yxgRR1DiCqSMzpqI", "displayOrder": 65, "images": [{"as": "ea0ZtlzUcuHAXz0U", "caption": "V31MfuGaXsAuGsZa", "height": 91, "imageUrl": "YhyiDV90SeI5yppB", "smallImageUrl": "HoytVznCgNyx9fbT", "width": 16}, {"as": "3ShEh8PbGikLjgjc", "caption": "j34uulU6FYBZsWFb", "height": 35, "imageUrl": "T6Hh3OMjAjq2mK8l", "smallImageUrl": "bSEEelxnb5QxWG2H", "width": 64}, {"as": "t65X4N1LQZmB61JM", "caption": "dtwCVUrYQue84dwm", "height": 2, "imageUrl": "XNwvm4e5GX6H742O", "smallImageUrl": "ixhtAoKiVm6URT95", "width": 15}], "localizations": {"1TRT2SKseoe8VLie": {"description": "0LBa36KNzjf005CX", "title": "NGehQ2aTjTDfKFDX"}, "C7eGL5YhJDWh9YWq": {"description": "c0qgV6d9yOfIMLds", "title": "2DbPcaoMdtRLTmSv"}, "TkQQgB7exYvmHMxr": {"description": "5hPCJJztJBg0tTJg", "title": "46IewOXE2AkCh3QI"}}, "passItemId": "ZsUf8lGFXcmwTERH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreatePass' test.out

#- 15 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'clOdxIwqejxe18rN' \
    'db8Otq6j1mqUav7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetPass' test.out

#- 16 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    '05HAQltnSojV4jT6' \
    '5yclX2FtAz0vJjFI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeletePass' test.out

#- 17 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'YWOaNdsimmkW2miH' \
    '3xRHAKy4QxZkaXZ7' \
    --body '{"autoEnroll": true, "displayOrder": 25, "images": [{"as": "NHDOQe91Ps3ztUIV", "caption": "0dS6hIH9c4Vfkyrw", "height": 31, "imageUrl": "ZeMgsRsmH1EQrYmk", "smallImageUrl": "PKTPOlhTtSiZNCxu", "width": 29}, {"as": "YN2NVL70Iw157g00", "caption": "jr9b8MuYmmeKTmBN", "height": 45, "imageUrl": "vQpfbBke8aEdd36x", "smallImageUrl": "j6wySoltDxsbzxrl", "width": 1}, {"as": "MdiS76YApGJ9ufwL", "caption": "YkqIgLuZS6hsQryi", "height": 62, "imageUrl": "NhGztZpr4U4fwQIi", "smallImageUrl": "LXgmRasvjO4lj8m3", "width": 25}], "localizations": {"EwP2b4gd3xOeii8J": {"description": "nmssep2xD2NY0kAB", "title": "eGs9yxahld1pO0Gy"}, "f5PO3COyMvczgEpz": {"description": "Z3FbtxfhcRC7IVYa", "title": "6iZ5uFRYNn3SHiWx"}, "F0YbuU5ar5qTLWUC": {"description": "y0Afgc050XIZRW49", "title": "1e94mQjVOOBnIWhu"}}, "passItemId": "nElqZUodp3IhtCSH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdatePass' test.out

#- 18 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'y1ei1fIrPvfHnRN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublishSeason' test.out

#- 19 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    '6EjRwEQlNapJRfk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RetireSeason' test.out

#- 20 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'f9Zcw1pEHAyNFxcV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'QueryRewards' test.out

#- 21 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'TKuAQTGh5BxjWOoz' \
    --body '{"code": "GoDtsUuYo5p8ED5Q", "currency": {"currencyCode": "ZAufwNa8lzfjv9oY", "namespace": "MXMjlVHY1AHwF3vG"}, "image": {"as": "oav7MK0PcLnEkcok", "caption": "KwcQ0baDT9OyJ2h2", "height": 5, "imageUrl": "GUS2amU7syGlElXd", "smallImageUrl": "EAOrVSnLocLVVYam", "width": 88}, "itemId": "H34mB2yPlRpWjmHZ", "quantity": 55, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateReward' test.out

#- 22 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    '5duE5p4cfs2E41cK' \
    '8QTwiIAvxSvNDlmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetReward' test.out

#- 23 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    '5nQFMGzs7fzjgyc4' \
    '4mEh9tRk8knYSV30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteReward' test.out

#- 24 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'lnroQehMDli6t9un' \
    'QLYXxm09wpGAbpEm' \
    --body '{"currency": {"currencyCode": "DY9vLh3u6EDsUmrV", "namespace": "6kH4OotKwG3UC6XC"}, "image": {"as": "nnZxF8CmQr17W65b", "caption": "r34rBBN9tU6TDm5G", "height": 23, "imageUrl": "VMDu87t0ldWf7iSG", "smallImageUrl": "IiKFtWtn4Yr2svKM", "width": 69}, "itemId": "pqLGZ0TBujELAUK6", "nullFields": ["mQ5iZgbwwm5iGzXt", "4hCmTC34jxW4pIDw", "cknrgidKupvXO6aj"], "quantity": 7, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateReward' test.out

#- 25 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'zW0CpoBCbyJsF5Ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QueryTiers' test.out

#- 26 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'F1c0W338HS6CBgVR' \
    --body '{"index": 50, "quantity": 73, "tier": {"requiredExp": 17, "rewards": {"bEGTUj7YjERL1rEQ": ["G02zccA8wvLsWUNd", "6lPKvqDejvqklTSv", "DwuOrP9lzpiX0VuF"], "pZum7izxe7NPzjOa": ["8E7wY76PxLv9HBEU", "e89AwEw1HO4FnKtx", "4XLKAmlDr19uJ3nq"], "6VerzVCcI8y3Cz0Y": ["qCKUh5RD9vNAp4ji", "nFpnQ5xF9wwbvMZy", "eDeRnVfPUa6xVVBc"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'CreateTier' test.out

#- 27 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'q3wZpFIYeAg79HcL' \
    'JXJ7mpVI6eTYAjdP' \
    --body '{"requiredExp": 23, "rewards": {"rdt4XSpWBAetsanz": ["qP8oxfrtbECD1CYP", "waiBAxfYL8Avt70Z", "UT2fSk3LL0calqxE"], "ewuGS469k2hG0WKt": ["4sUmanYxM0UHZVNY", "zGMNIpWoSLkUrfuf", "4U3WeYeA9t2ENKKW"], "rFtHIi1CMgKAOG5i": ["DcCR5PbCvDLil8wj", "9cKM3Ar6MF35hCER", "4nGmWGgTJfHlJl4t"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateTier' test.out

#- 28 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'HGa4XfZcd9CVnGqM' \
    'X9FieeEssWEUl07b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteTier' test.out

#- 29 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'hwntCVqiYOJf5KwM' \
    'ZQjzvjSozv6CTRDl' \
    --body '{"newIndex": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ReorderTier' test.out

#- 30 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'SohhhuiTnJarYYkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UnpublishSeason' test.out

#- 31 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'BDdSzBXdxapwhd5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserParticipatedSeasons' test.out

#- 32 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'QYBQuxLvPuWYvE3f' \
    --body '{"exp": 38, "source": "SWEAT", "tags": ["6QXmpZ9X3fUSR1l9", "xLPBsmAUrD9L1IiD", "6MlcEPhMDFzjHZ3s"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GrantUserExp' test.out

#- 33 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'IhzOx2CXKlvIomU3' \
    --body '{"passCode": "pIxM9n8D2eLMe3lt", "passItemId": "9qfx2UDcgVE7L9FK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GrantUserPass' test.out

#- 34 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    '6e0MrPc4vtxk9hVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'ExistsAnyPassByPassCodes' test.out

#- 35 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'lG56HlzGr7XjdyRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetCurrentUserSeasonProgression' test.out

#- 36 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'unZPkp6ccIBnWyPw' \
    --body '{"passItemId": "8mj7gyQ7XdIszGRj", "tierItemCount": 89, "tierItemId": "6COPipH1MWVTHG0q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CheckSeasonPurchasable' test.out

#- 37 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'HJCWEfOJpZm9yEYW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'ResetUserSeason' test.out

#- 38 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'NGMy2pgSGSUOK68e' \
    --body '{"count": 34, "source": "SWEAT", "tags": ["GJtWf1Ybgg8rdwY9", "bmrvHmO07KNqX9LM", "2IwEsdOGBXBwnzDX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GrantUserTier' test.out

#- 39 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    '8v3xgC1Ge9PdbTTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistory' test.out

#- 40 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'J2Gp1r0sVZ6LJAOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryUserExpGrantHistoryTag' test.out

#- 41 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'dIL2l3hPjNDKv2LW' \
    'fXqjr8fS79En3wYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserSeason' test.out

#- 42 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentSeason' test.out

#- 43 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'wBdkaZ3y6i38XQjL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetCurrentUserSeason' test.out

#- 44 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'DRqkpiFK5BtiQ272' \
    --body '{"passCode": "Uo9UBJWodpdwsX1j", "rewardCode": "orcyR0x3YiHF8ITG", "tierIndex": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicClaimUserReward' test.out

#- 45 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'tmOFMebS4AdlNzwo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkClaimUserRewards' test.out

#- 46 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'g2IhErkNhNcECWwc' \
    'hW6zL9SkbLlrNXnG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
