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
seasonpass-get-season 'm03VLisV6zwPuo3t' --login_with_auth "Bearer foo"
seasonpass-delete-season 'd6TC6I3lMjGSWN2l' --login_with_auth "Bearer foo"
seasonpass-update-season 'aRlxfcjHfYakUCTq' --body '{"autoClaim": false, "defaultLanguage": "Y69z1UaLqYSYWytL", "defaultRequiredExp": 85, "draftStoreId": "Q0yYoNRKd3IL5TAQ", "end": "1988-03-09T00:00:00Z", "excessStrategy": {"currency": "PllG4cYEzfTD1ZBm", "method": "CURRENCY", "percentPerExp": 80}, "images": [{"as": "ePqIJA8IHtrkmu0h", "caption": "pDDWVAla2l5BYNtI", "height": 42, "imageUrl": "mit9RGCCHYzUOcEd", "smallImageUrl": "scKHPEqgA8yu7Vk6", "width": 72}, {"as": "1DmrhZv15T7quIOv", "caption": "BMcaYmvCkGZ5dAgq", "height": 48, "imageUrl": "UEXlAvxJMdalwSyl", "smallImageUrl": "iWMNW5NyLu0M3VHh", "width": 58}, {"as": "EI8JlDbPWbQ6Q9lN", "caption": "mqRBaAkLnvxkT1X6", "height": 38, "imageUrl": "cmDc3fxU8MyKrQpM", "smallImageUrl": "4hkkK6KKXNB3Gv0I", "width": 33}], "localizations": {"eCnaLpUKp44YUDja": {"description": "sWIPUvmEejtGeoyI", "title": "Pa8ZRrvjj7il35MX"}, "bN9oCMNqq98SjTvh": {"description": "ZNkSQ70D0H6BXksU", "title": "C9b6i5lZC9xv32e8"}, "c5csSovoqsZNBdte": {"description": "9NDUPVJf6c2Z0QZx", "title": "fgPubTDIHrvqAThu"}}, "name": "wjRHpKKTlmVr9Xuo", "start": "1989-02-11T00:00:00Z", "tierItemId": "bRFQSKVPHbn4Xxtu"}' --login_with_auth "Bearer foo"
seasonpass-clone-season '7LQRENjEEztx1WsY' --body '{"end": "1993-03-05T00:00:00Z", "name": "ck0ZHn5GI39YBHqa", "start": "1994-09-28T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-get-full-season 'lvPG6bFYReVHQipc' --login_with_auth "Bearer foo"
seasonpass-query-passes 'Cx9Zw5D2L7vIYhGG' --login_with_auth "Bearer foo"
seasonpass-create-pass 'SyEW4ZJJ42d3PBdd' --body '{"autoEnroll": true, "code": "48l9lyNApflxqMrj", "displayOrder": 66, "images": [{"as": "oZk03QXcKMDYDDxH", "caption": "SZjtqXyJ58f7Gc26", "height": 92, "imageUrl": "DmIbeZxzfTcyiuAT", "smallImageUrl": "us9hsfpFDcSDG8aM", "width": 98}, {"as": "HyPLtI8ilbyDPUIj", "caption": "88cekdqCt81P1ktf", "height": 71, "imageUrl": "DmeIP6rOvDz9KOsb", "smallImageUrl": "392k6YmJFfRByjlB", "width": 16}, {"as": "9LJE8HoRS1X2PFAA", "caption": "MwzHPxB1UskYs4Yw", "height": 50, "imageUrl": "0DOqOBSC2DKHRuPM", "smallImageUrl": "MWH8Yb33T5UBJCjf", "width": 5}], "localizations": {"eDxOgBnhhqElIaDm": {"description": "l48wdNFLTm5T50x9", "title": "WT0GfH2rtOa4EXsX"}, "zOXQAk4mqrxzTtuL": {"description": "l4XlbGL8QOxtjzm8", "title": "y2wNhmwoYZyI4EFZ"}, "KBcYrCEAE7WIsfmx": {"description": "40NLRc6m8heKnWhz", "title": "fe2NubeoKFeIaFQC"}}, "passItemId": "YoDPICpnduEEQlUL"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'dJz4mnRBkMNxvvKg' 'AT8mJrYq6hRkloqx' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'M3gpwxcfMy9XzjjI' '5YbsKoADkzJEN2VH' --login_with_auth "Bearer foo"
seasonpass-update-pass 'zih3bit0VWn3CO39' 'PXDNxtXgeO3FgkXh' --body '{"autoEnroll": false, "displayOrder": 60, "images": [{"as": "A2yyd4mbqoOfADMM", "caption": "AXFaY9eKa699bRVh", "height": 50, "imageUrl": "rbHDIDm4hMzF4Txo", "smallImageUrl": "denSrUTvfqU0bfoM", "width": 25}, {"as": "OfjnCuHZ3c46IjGa", "caption": "23YvYmmDg7VYPXIu", "height": 44, "imageUrl": "VxsZNereSvf9699m", "smallImageUrl": "CEHThUJkETAsSp7g", "width": 15}, {"as": "imdb4rbkXj0ZwsVC", "caption": "0gL97ZVJSPqJiwv1", "height": 34, "imageUrl": "fLCr3OOlXVv8ZGF7", "smallImageUrl": "uYnGzpipNDigNJma", "width": 64}], "localizations": {"MbqqZtfNWql4nmwA": {"description": "ft4gqkNNlWkD9eOz", "title": "iYRFOn0jJLHC9Lxh"}, "vNXTwGBCtohLtl9Z": {"description": "uhytm5UDrT6QXCs5", "title": "SPBbRPZTF6oQAXVG"}, "7tnsZg5QgXjvyGJP": {"description": "N4eXbJE5Vs2Gcyom", "title": "QoIXimBJehyxlNsj"}}, "passItemId": "UgxBkF6wFPoJeQed"}' --login_with_auth "Bearer foo"
seasonpass-publish-season 'iogEhhM2rIizGdKv' --login_with_auth "Bearer foo"
seasonpass-retire-season 'OPdq5xrgxSmy1DN9' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'LFkYW5DQyj4bj5Ro' --login_with_auth "Bearer foo"
seasonpass-create-reward '2ogaKt2ujQSa3Zdb' --body '{"code": "65UXmy0Zp6iIaTIK", "currency": {"currencyCode": "Ukmkk9QM0NBMA9OR", "namespace": "xpzwLR2AK6eXUGPJ"}, "image": {"as": "sw1fiP80G9Pclxcf", "caption": "t2ulIJzPyrVEiOG4", "height": 95, "imageUrl": "iMarv8mnfHK8CCmE", "smallImageUrl": "2lPnsbD3SGEdlwuU", "width": 4}, "itemId": "I1mX2tJoARtdbBe7", "quantity": 41, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'dsMrok0WvGYYnx4V' '709xbnGezKsDwG2o' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'mOR2nvYI9TVqJdvz' 'cWbfUpaXp5JMl5LL' --login_with_auth "Bearer foo"
seasonpass-update-reward '4bTxBmZjdrrIxsB0' 'NRsB1fPqqRRulpqp' --body '{"currency": {"currencyCode": "ymDkQhtrHWwRVnwV", "namespace": "BOqOHi8pWGd1juYh"}, "image": {"as": "iqjRJOqB5F93zFQb", "caption": "JndUDpdONneAczbB", "height": 7, "imageUrl": "GXZnqAQUoY1GjlII", "smallImageUrl": "k0iKoTTS1j02o7Jj", "width": 93}, "itemId": "bTU5JX8ccLjMXJRk", "nullFields": ["s6g4iY9u02aCNYIW", "ekp18lOC3mNqF7Bl", "0eaKQDOJvrTefglS"], "quantity": 23, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'cghVHfPEspxwhRON' --login_with_auth "Bearer foo"
seasonpass-create-tier '0bc1eMbEIjowLqc3' --body '{"index": 10, "quantity": 74, "tier": {"requiredExp": 4, "rewards": {"oELCpobBEG8X645x": ["pdXpai0rYaT5hOPj", "af3H0tYighU0VUfc", "YHJbBfAKSiPW3Vgs"], "ZXiR1DJ7HVWqMkNS": ["awQUWDFJvJBWic7U", "kBeIXuqDuAXI66bQ", "71w0deoV9Lx5RDA1"], "l2XcrciYNEzvSZIP": ["khSgORcz5S5BvmgB", "Lxh4ijFnE3Tam69q", "SZ7PC6f6QkmZXElW"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier '9YfRSse6AAz3S4cz' 'z0QKFlAVmVLu4AOe' --body '{"requiredExp": 4, "rewards": {"7G73zdxTgOfnwIdl": ["Na29fDLh741IslKH", "zGlLKWUtDQs61OQA", "oxyyQpRWCiiPDGQh"], "NPEwiJCf2XJVrlzq": ["Qls1ozhLVA3kE8jK", "vgatOEBM70TdlNBJ", "YOmpu1VCarzBsV6x"], "nZ5Jrzzjrcaug6CW": ["VG8SWP3glU6muswV", "JnNnN7kAa7j0riFc", "5HTHQIoVsGo7dwV9"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'DBqFKHQkETJyTlUr' 'wDTnoujQD4IEiH9Z' --login_with_auth "Bearer foo"
seasonpass-reorder-tier '5qXn3aoRtlqOECoh' 'ViHA5CzgFSy8X1A3' --body '{"newIndex": 85}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'ESOiIZsMfB4ZH3mt' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons 'gWgU4pCAKxeE70Ca' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'unQNxot371W9G4Av' --body '{"exp": 87, "source": "PAID_FOR", "tags": ["3SUBhyoTsMWPAxUM", "kawaGpAyrIwMif3B", "OdkocVTd4BxqGWV6"]}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'mTJ0sQs6XNbjvqhn' --body '{"passCode": "UVLWu8olKdxL6ozR", "passItemId": "mDD0jJvlfV5OemPY"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'dYT7DROCjtuzFMbA' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'G9YI89hmguB8FOTj' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'MLo4b9rIzqYkEpst' --body '{"passItemId": "yVTBcrM8rG0rH0zc", "tierItemCount": 37, "tierItemId": "wK7PpUlcIW32iK7M"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'Gt1ixY5rA1WoVeJI' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'ePF8ZrQzP4zvtdxd' --body '{"count": 2, "source": "SWEAT", "tags": ["pd6FJtHJ1pyVwyKQ", "LY6FEO65Rb3z7CYL", "M8IlsHqffnrfsGlf"]}' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history 'PaZKBwa3Ddb60ufP' --login_with_auth "Bearer foo"
seasonpass-query-user-exp-grant-history-tag 'pzwj1QGIFmlVf4jv' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'apseE9LN9bvhOrHf' 'lIOd6X3viLvtEk4m' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'TIpUA9gxo8SV38nE' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'hoXmM2W7l6jHMA2r' --body '{"passCode": "G3nakopAywelu01n", "rewardCode": "ryEJ0NqoTow0qiOi", "tierIndex": 58}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards '95HgXqKhTPkwfLM9' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season 'uSybRzWek2gZvRrv' 'r0n9d9lvccKMLhrT' --login_with_auth "Bearer foo"
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
echo "1..45"

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
    --body '{"autoClaim": true, "defaultLanguage": "D1kOmvrAejcq2Lgk", "defaultRequiredExp": 87, "draftStoreId": "aoFzAyBME74HUtip", "end": "1994-07-13T00:00:00Z", "excessStrategy": {"currency": "WYhWV1qx8CzPML52", "method": "CURRENCY", "percentPerExp": 83}, "images": [{"as": "aXUr9Sk4lq2faBcA", "caption": "XXKlhvyH8paOJtxq", "height": 78, "imageUrl": "Tk8aG40NlncceIZS", "smallImageUrl": "wgAIkgzh4pTU0Am4", "width": 61}, {"as": "i0V3tBf2jnHGKXph", "caption": "n50c9tNLDljhZ2jx", "height": 76, "imageUrl": "AacR0LgB5BUXvjcu", "smallImageUrl": "2s6w3VifnKqmTSoG", "width": 68}, {"as": "ZR8GmEu0q1p6QCyY", "caption": "6vSkVFWdsbYuVEGV", "height": 49, "imageUrl": "uDXSxSc3aZPV87pn", "smallImageUrl": "a08gxefTYKhuxaEc", "width": 99}], "localizations": {"M4P7UckSC6ePeN8i": {"description": "4GrFES9z7xueHpAT", "title": "Hccee9GXhKcjmSEw"}, "drkEnnqKzFsLfYal": {"description": "UlfwEQKjU7eHGebS", "title": "Vu0LQ40kepEaC4df"}, "iOMZfEhHr39pysFO": {"description": "3Zvc1BZG99LyvfvH", "title": "EsJKQQewVLMUoAna"}}, "name": "RcYp7FUjfIGaffof", "start": "1976-07-03T00:00:00Z", "tierItemId": "EIByYqeKN0meGelY"}' \
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
    --body '{"userIds": ["F5wWaDhukU4khGG4", "vZFTYnPkmSu4PWam", "1jxR7SETWjteoc8f"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'BulkGetUserSeasonProgression' test.out

#- 7 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'gvZDDhoO05oKqymx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetSeason' test.out

#- 8 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'LD1Lcvw6T6mZEiwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'DeleteSeason' test.out

#- 9 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'xElpMYSWIeVzm7z9' \
    --body '{"autoClaim": false, "defaultLanguage": "h94TSenE5hCFkIf5", "defaultRequiredExp": 45, "draftStoreId": "VN4ZONJREdUQ3z9F", "end": "1998-08-09T00:00:00Z", "excessStrategy": {"currency": "ETtYmGukz3Mnlrjc", "method": "CURRENCY", "percentPerExp": 94}, "images": [{"as": "6B8Vj7rXFgDnDkdZ", "caption": "9bpjb1tdA3QhjCMW", "height": 18, "imageUrl": "f4XhIjSoTB2NMKte", "smallImageUrl": "zapPr2QEPx3zTxBG", "width": 39}, {"as": "vvQxevecWw7Rry0K", "caption": "K5rgAGO0dW8rX2MV", "height": 96, "imageUrl": "6iohU1cg4W1IS3Uv", "smallImageUrl": "1BpWoJBaqdg2FHcu", "width": 28}, {"as": "k6B6XTmSLyn50sig", "caption": "BVZxiKdV57GvRyd9", "height": 95, "imageUrl": "3hLiD5sf5y1JsxJN", "smallImageUrl": "Gmyt0SQDUDoWBZVG", "width": 77}], "localizations": {"RazPAANjfBoldFOy": {"description": "qA2clJ5gEOaCgM6Y", "title": "n6RugbNEIpGBFUjO"}, "n5mM7k8nbLzvtCIW": {"description": "5ynMKquUicAeIVXt", "title": "oWAXhMlW4tLqX7OI"}, "Cf5oD1e6oI9FmYel": {"description": "0kOw72o8Zkgk0jS6", "title": "rDWUwfhKvrf2AaH4"}}, "name": "yCWrHSppnIZkNnTn", "start": "1999-10-07T00:00:00Z", "tierItemId": "rzH5NvAtcvNedgS1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateSeason' test.out

#- 10 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'fUfKmihDbmu8ePWl' \
    --body '{"end": "1993-11-28T00:00:00Z", "name": "MVDXEHeiGTnwyEw6", "start": "1974-01-11T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CloneSeason' test.out

#- 11 GetFullSeason
$PYTHON -m $MODULE 'seasonpass-get-full-season' \
    'IWDZrpP7rz3ISW51' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetFullSeason' test.out

#- 12 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    '0kHr4isTKWjmv67n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'QueryPasses' test.out

#- 13 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'uHCXWfwnwGioVwVz' \
    --body '{"autoEnroll": false, "code": "pUtKp6M9I6nEwnZh", "displayOrder": 37, "images": [{"as": "PJ3jtDYBo4FUTH7C", "caption": "GfKSyxgRR1DiCqSM", "height": 52, "imageUrl": "VfLGea0ZtlzUcuHA", "smallImageUrl": "Xz0UV31MfuGaXsAu", "width": 66}, {"as": "LE35YhyiDV90SeI5", "caption": "yppBHoytVznCgNyx", "height": 85, "imageUrl": "fbT63ShEh8PbGikL", "smallImageUrl": "jgjcj34uulU6FYBZ", "width": 37}, {"as": "lsBJT6Hh3OMjAjq2", "caption": "mK8lbSEEelxnb5Qx", "height": 37, "imageUrl": "G2HFnZlA6HKWW4fI", "smallImageUrl": "1IQcoBQELcNlZkqT", "width": 6}], "localizations": {"rKgXNwvm4e5GX6H7": {"description": "42OixhtAoKiVm6UR", "title": "T95XhnUcvWB28Mpu"}, "suhhDJ5slzgiWZEt": {"description": "yd56LfxnbY97jjYg", "title": "XchCbkXX26uEdCfQ"}, "aMAQuTKfC0I2kNjC": {"description": "MDtDMrentgn3Dhqc", "title": "iwIeShF9RKb9vvxu"}}, "passItemId": "JlhXbWhbwPwToC6k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'CreatePass' test.out

#- 14 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'njVwVnzaqSfJiQFC' \
    '2gXoda0kg16yUSpS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetPass' test.out

#- 15 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'OAjHJWwfCjYwWkLo' \
    'b9gKLqs2nEZhpByf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeletePass' test.out

#- 16 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'HZinxNfgPAwkMBsz' \
    'nlBUqnLT4AbGptKa' \
    --body '{"autoEnroll": false, "displayOrder": 45, "images": [{"as": "FIYWOaNdsimmkW2m", "caption": "iH3xRHAKy4QxZkaX", "height": 30, "imageUrl": "7vmiEd0JPxVyQpsh", "smallImageUrl": "aDwNqTbbFMXAMfVX", "width": 8}, {"as": "rwpuXxbaERbfgPmi", "caption": "0eHkt1mr9EOIFg0d", "height": 27, "imageUrl": "xuogFteTHJe4BhSS", "smallImageUrl": "QkQD6WmOt6D7ufFV", "width": 94}, {"as": "BNvGYxEQdf3ewoGG", "caption": "oY7xmFNAmjDDCvs7", "height": 36, "imageUrl": "mcMdiS76YApGJ9uf", "smallImageUrl": "wLYkqIgLuZS6hsQr", "width": 51}], "localizations": {"z4NhGztZpr4U4fwQ": {"description": "IiLXgmRasvjO4lj8", "title": "m3XEwP2b4gd3xOei"}, "i8Jnmssep2xD2NY0": {"description": "kABeGs9yxahld1pO", "title": "0Gyf5PO3COyMvczg"}, "EpzZ3FbtxfhcRC7I": {"description": "VYa6iZ5uFRYNn3SH", "title": "iWxF0YbuU5ar5qTL"}}, "passItemId": "WUCy0Afgc050XIZR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdatePass' test.out

#- 17 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'W491e94mQjVOOBnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublishSeason' test.out

#- 18 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'WhunElqZUodp3Iht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetireSeason' test.out

#- 19 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'CSHy1ei1fIrPvfHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QueryRewards' test.out

#- 20 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'RN06EjRwEQlNapJR' \
    --body '{"code": "fk4f9Zcw1pEHAyNF", "currency": {"currencyCode": "xcVTKuAQTGh5BxjW", "namespace": "OozGoDtsUuYo5p8E"}, "image": {"as": "D5QZAufwNa8lzfjv", "caption": "9oYMXMjlVHY1AHwF", "height": 16, "imageUrl": "vGoav7MK0PcLnEkc", "smallImageUrl": "okKwcQ0baDT9OyJ2", "width": 15}, "itemId": "MDcb4qlkiFAamqvZ", "quantity": 71, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreateReward' test.out

#- 21 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'KwjqPBiWXade41s3' \
    'rH34mB2yPlRpWjmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetReward' test.out

#- 22 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'ZAAvKTH8MuqIg0Cz' \
    'kguwuJCW7EEFB67A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteReward' test.out

#- 23 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'ODbi9BzupBsFpYc7' \
    '7GtRUcCFeY5g4XgB' \
    --body '{"currency": {"currencyCode": "sbfzqxBPNe8ae1Il", "namespace": "4aAtEbu4IjGdqthR"}, "image": {"as": "xTjQ7gkZEY8rG0q0", "caption": "Q2Qd2JzRbkF2I03d", "height": 70, "imageUrl": "XCnnZxF8CmQr17W6", "smallImageUrl": "5br34rBBN9tU6TDm", "width": 3}, "itemId": "GloFSKWM1eym5ydC", "nullFields": ["ECQE1li3Bg7Jxc9p", "6p25xCWTqUOYZENJ", "1QHZQxPRXH7uxBJE"], "quantity": 95, "type": "CURRENCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateReward' test.out

#- 24 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'tcknrgidKupvXO6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QueryTiers' test.out

#- 25 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'j4hCmTC34jxW4pID' \
    --body '{"index": 46, "quantity": 7, "tier": {"requiredExp": 97, "rewards": {"qXpmRmut9H9XyWI8": ["bp8fQxRuX91uYmtr", "HJbEGTUj7YjERL1r", "EQG02zccA8wvLsWU"], "Nd6lPKvqDejvqklT": ["SvDwuOrP9lzpiX0V", "uFpZum7izxe7NPzj", "Oa8E7wY76PxLv9HB"], "EUe89AwEw1HO4FnK": ["tx4XLKAmlDr19uJ3", "nq6VerzVCcI8y3Cz", "0YqCKUh5RD9vNAp4"]}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateTier' test.out

#- 26 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'jinFpnQ5xF9wwbvM' \
    'ZyeDeRnVfPUa6xVV' \
    --body '{"requiredExp": 56, "rewards": {"GfleyCA6jEtcqsnz": ["oVILjkwW61duF87a", "Uyrdt4XSpWBAetsa", "nzqP8oxfrtbECD1C"], "YPwaiBAxfYL8Avt7": ["0ZUT2fSk3LL0calq", "xEewuGS469k2hG0W", "Kt4sUmanYxM0UHZV"], "NYzGMNIpWoSLkUrf": ["uf4U3WeYeA9t2ENK", "KWrFtHIi1CMgKAOG", "5iDcCR5PbCvDLil8"]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateTier' test.out

#- 27 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'wj9cKM3Ar6MF35hC' \
    'ER4nGmWGgTJfHlJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteTier' test.out

#- 28 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    '4tHGa4XfZcd9CVnG' \
    'qMX9FieeEssWEUl0' \
    --body '{"newIndex": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ReorderTier' test.out

#- 29 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'uuoVdn9yVoSlKNch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UnpublishSeason' test.out

#- 30 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'PHNL4X3LLaGPGdqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserParticipatedSeasons' test.out

#- 31 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'E8SohhhuiTnJarYY' \
    --body '{"exp": 20, "source": "PAID_FOR", "tags": ["HBDdSzBXdxapwhd5", "IQYBQuxLvPuWYvE3", "fsNy9Z9OhxXvCp9y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GrantUserExp' test.out

#- 32 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    '7fLD2qfCXnlUnqxT' \
    --body '{"passCode": "1WsRNMZcA92hzC7M", "passItemId": "Na8vVe4MHX6AgMep"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GrantUserPass' test.out

#- 33 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    '90AyyUJyAK5PRMRM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ExistsAnyPassByPassCodes' test.out

#- 34 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'wdvl0hv6g62GxBW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCurrentUserSeasonProgression' test.out

#- 35 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'tQF5tkTjgJaMYvNQ' \
    --body '{"passItemId": "OsDa4bkcgepqtxjb", "tierItemCount": 35, "tierItemId": "yRJunZPkp6ccIBnW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CheckSeasonPurchasable' test.out

#- 36 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'yPw8mj7gyQ7XdIsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ResetUserSeason' test.out

#- 37 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'GRj46COPipH1MWVT' \
    --body '{"count": 69, "source": "SWEAT", "tags": ["G0qHJCWEfOJpZm9y", "EYWNGMy2pgSGSUOK", "68eqGJtWf1Ybgg8r"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GrantUserTier' test.out

#- 38 QueryUserExpGrantHistory
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history' \
    'dwY9bmrvHmO07KNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'QueryUserExpGrantHistory' test.out

#- 39 QueryUserExpGrantHistoryTag
$PYTHON -m $MODULE 'seasonpass-query-user-exp-grant-history-tag' \
    'X9LM2IwEsdOGBXBw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'QueryUserExpGrantHistoryTag' test.out

#- 40 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'nzDX8v3xgC1Ge9Pd' \
    'bTTAJ2Gp1r0sVZ6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetUserSeason' test.out

#- 41 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCurrentSeason' test.out

#- 42 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'JAOddIL2l3hPjNDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCurrentUserSeason' test.out

#- 43 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'v2LWfXqjr8fS79En' \
    --body '{"passCode": "3wYowBdkaZ3y6i38", "rewardCode": "XQjLDRqkpiFK5Bti", "tierIndex": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicClaimUserReward' test.out

#- 44 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'RERnEMzpImW6sjAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicBulkClaimUserRewards' test.out

#- 45 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'yCK5tNanGBrkzUvc' \
    'k3xTtmOFMebS4Adl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserSeason' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
