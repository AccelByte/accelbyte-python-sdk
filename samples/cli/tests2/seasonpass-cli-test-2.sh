#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
seasonpass-query-seasons --login_with_auth "Bearer foo"
seasonpass-create-season --body '{"autoClaim": true, "defaultLanguage": "tBxyZcDX", "defaultRequiredExp": 55, "draftStoreId": "pGlsQuJu", "end": "1981-11-03T00:00:00Z", "excessStrategy": {"currency": "f0IsJkTr", "method": "NONE", "percentPerExp": 68}, "images": [{"as": "DcV2zXnT", "caption": "KjXY1bPq", "height": 1, "imageUrl": "miBxx9Cs", "smallImageUrl": "18EY84ek", "width": 69}], "localizations": {"tqRzHU1o": {"description": "h570KQBV", "title": "aewc72kr"}}, "name": "Sha68n3Y", "start": "1977-04-27T00:00:00Z", "tierItemId": "zp1C2KmI"}' --login_with_auth "Bearer foo"
seasonpass-get-current-season --login_with_auth "Bearer foo"
seasonpass-get-season 'QTuBdNEU' --login_with_auth "Bearer foo"
seasonpass-delete-season 'sxFb8CJ1' --login_with_auth "Bearer foo"
seasonpass-update-season '7M7DJZaM' --body '{"autoClaim": true, "defaultLanguage": "ECbZbygy", "defaultRequiredExp": 29, "draftStoreId": "arORoeNH", "end": "1993-01-05T00:00:00Z", "excessStrategy": {"currency": "8Rh3kgs9", "method": "CURRENCY", "percentPerExp": 33}, "images": [{"as": "JbnQsoBg", "caption": "iVpP8Cm3", "height": 49, "imageUrl": "vASUoxdx", "smallImageUrl": "xFqmAGTJ", "width": 68}], "localizations": {"EdagEtp4": {"description": "w29KOu9c", "title": "19R6XDqW"}}, "name": "HkkP8npL", "start": "1986-10-17T00:00:00Z", "tierItemId": "MfjiX7jp"}' --login_with_auth "Bearer foo"
seasonpass-clone-season 'kVZk3IaQ' --body '{"end": "1996-08-25T00:00:00Z", "name": "mqGodOEG", "start": "1980-02-22T00:00:00Z"}' --login_with_auth "Bearer foo"
seasonpass-query-passes 'POj0c6i0' --login_with_auth "Bearer foo"
seasonpass-create-pass 'JkvIas73' --body '{"autoEnroll": true, "code": "cYnFAJ3D", "displayOrder": 72, "images": [{"as": "5T4Eogg0", "caption": "Y39UoYlp", "height": 43, "imageUrl": "5bVAgtsD", "smallImageUrl": "hUTDUscb", "width": 85}], "localizations": {"DjbTQuPM": {"description": "z2PTRlky", "title": "U89ZPOw6"}}, "passItemId": "zPFJ42cw"}' --login_with_auth "Bearer foo"
seasonpass-get-pass 'mzBBSMNc' 'oAAOjKNj' --login_with_auth "Bearer foo"
seasonpass-delete-pass 'fcYHm093' 'aYgBU1sq' --login_with_auth "Bearer foo"
seasonpass-update-pass 'jyK0XH45' 'PaRSOFQB' --body '{"autoEnroll": true, "displayOrder": 41, "images": [{"as": "23REZ8hR", "caption": "VX7LGOvD", "height": 6, "imageUrl": "YiQS9i7m", "smallImageUrl": "V1C91pjG", "width": 13}], "localizations": {"pxL6ycTQ": {"description": "dvln2LAu", "title": "SQWEXL6L"}}, "passItemId": "FE1YHo9m"}' --login_with_auth "Bearer foo"
seasonpass-publish-season '126ZWc8h' --login_with_auth "Bearer foo"
seasonpass-retire-season 'HtWvbNYq' --login_with_auth "Bearer foo"
seasonpass-query-rewards 'gUqslArF' --login_with_auth "Bearer foo"
seasonpass-create-reward 'PiHUIvaC' --body '{"code": "v8kU9dBB", "currency": {"currencyCode": "pdsJLhsV", "namespace": "yExrkxoo"}, "image": {"as": "t0B7WOfe", "caption": "rcZdpMci", "height": 58, "imageUrl": "s7YSfExa", "smallImageUrl": "I3uzLteM", "width": 3}, "itemId": "FAlt4hr7", "quantity": 67, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-get-reward 'OYiBA5lt' 'AOXmlG6e' --login_with_auth "Bearer foo"
seasonpass-delete-reward 'h1dTdoTF' 'pBIcuC1d' --login_with_auth "Bearer foo"
seasonpass-update-reward 'QY93OJnJ' '6Te9vD8l' --body '{"currency": {"currencyCode": "dz7Hu8AD", "namespace": "79kdWunv"}, "image": {"as": "izU0q1pH", "caption": "yhhERoGg", "height": 7, "imageUrl": "rysMizBG", "smallImageUrl": "SRdP2l7D", "width": 79}, "itemId": "SZ8Aq0Xi", "nullFields": ["PLQXSe07"], "quantity": 7, "type": "ITEM"}' --login_with_auth "Bearer foo"
seasonpass-query-tiers 'OGTMlJjB' --login_with_auth "Bearer foo"
seasonpass-create-tier 'wj9HJHQK' --body '{"index": 36, "quantity": 8, "tier": {"requiredExp": 60, "rewards": {"dSXRDSvg": ["uauw1xT7"]}}}' --login_with_auth "Bearer foo"
seasonpass-update-tier 'eMwSl9ML' 'H0NnTJ2u' --body '{"requiredExp": 22, "rewards": {"NzBvwJaQ": ["a547Jllv"]}}' --login_with_auth "Bearer foo"
seasonpass-delete-tier 'A8RWSpab' 'Ut7xk6Qx' --login_with_auth "Bearer foo"
seasonpass-reorder-tier 'yWhfqoWf' 'Jw2o8oWU' --body '{"newIndex": 32}' --login_with_auth "Bearer foo"
seasonpass-unpublish-season 'vPCZ2HzT' --login_with_auth "Bearer foo"
seasonpass-get-user-participated-seasons '7NXmWDlX' --login_with_auth "Bearer foo"
seasonpass-grant-user-exp 'suNIdQJR' --body '{"exp": 23}' --login_with_auth "Bearer foo"
seasonpass-grant-user-pass 'sNOlvkfw' --body '{"passCode": "aSbnsuLC", "passItemId": "gToxuVTe"}' --login_with_auth "Bearer foo"
seasonpass-exists-any-pass-by-pass-codes 'kJgvg6h5' --login_with_auth "Bearer foo"
seasonpass-get-current-user-season-progression 'HIpH0Dvi' --login_with_auth "Bearer foo"
seasonpass-check-season-purchasable 'plEk4vj3' --body '{"passItemId": "LDp4yqDt", "tierItemCount": 85, "tierItemId": "UZDpxlHa"}' --login_with_auth "Bearer foo"
seasonpass-reset-user-season 'sinGcjrk' --login_with_auth "Bearer foo"
seasonpass-grant-user-tier 'mRMttgjD' --body '{"count": 88}' --login_with_auth "Bearer foo"
seasonpass-get-user-season 'aIVBmft3' 'Udg7p9PG' --login_with_auth "Bearer foo"
seasonpass-public-get-current-season --login_with_auth "Bearer foo"
seasonpass-public-get-current-user-season 'mY2H5kX4' --login_with_auth "Bearer foo"
seasonpass-public-claim-user-reward 'MsisSX28' --body '{"passCode": "nARxWRpv", "rewardCode": "5ou5xtvd", "tierIndex": 80}' --login_with_auth "Bearer foo"
seasonpass-public-bulk-claim-user-rewards 'UfCt8UJC' --login_with_auth "Bearer foo"
seasonpass-public-get-user-season '5flNyj6H' 'sTtX8P3l' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE