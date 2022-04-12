#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..321"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListFulfillmentScripts
$PYTHON -m $MODULE 'platform-list-fulfillment-scripts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListFulfillmentScripts' test.out

#- 3 TestFulfillmentScriptEval
$PYTHON -m $MODULE 'platform-test-fulfillment-script-eval' \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'SMNcoAAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'jKNjfcYH' \
    --body '{"grantDays": "m093aYgB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'U1sqjyK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'XH45PaRS' \
    --body '{"grantDays": "OFQBtu23"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "REZ8hRVX", "items": [{"extraSubscriptionDays": 74, "itemId": "GOvDdYiQ", "itemName": "S9i7mV1C", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 31, "name": "xL6ycTQd", "redeemEnd": "1981-03-31T00:00:00Z", "redeemStart": "1977-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["SQWEXL6L"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'E1YHo9m1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '26ZWc8hH' \
    --body '{"description": "tWvbNYqg", "items": [{"extraSubscriptionDays": 92, "itemId": "qslArFPi", "itemName": "HUIvaCv8", "quantity": 20}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 55, "name": "pdsJLhsV", "redeemEnd": "1983-09-03T00:00:00Z", "redeemStart": "1982-05-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["oot0B7WO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'fercZdpM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'ci37Ds7Y' \
    --body '{"categoryPath": "SfExaI3u", "localizationDisplayNames": {"zLteMbFA": "lt4hr7Hm"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'OYiBA5lt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'AOXmlG6e' \
    'h1dTdoTF' \
    --body '{"localizationDisplayNames": {"pBIcuC1d": "QY93OJnJ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '6Te9vD8l' \
    'dz7Hu8AD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '79kdWunv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'yhhERoGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'drysMizB' \
    --body '{"quantity": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
$PYTHON -m $MODULE 'platform-download' \
    'SRdP2l7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'NSZ8Aq0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'iPLQXSe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '7ZddOGTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'lJjBwj9H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'JHQKseEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'SXRDSvgu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "auw1xT7e", "currencySymbol": "MwSl9MLH", "currencyType": "REAL", "decimals": 91, "localizationDescriptions": {"J2ulNzBv": "wJaQa547"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'JllvA8RW' \
    --body '{"localizationDescriptions": {"SpabUt7x": "k6QxyWhf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'qoWfJw2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '8oWUqvPC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'Z2HzT7NX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "mWDlXsuN", "rewards": [{"currency": {"currencyCode": "IdQJR5ls", "namespace": "NOlvkfwa"}, "item": {"itemId": "SbnsuLCg", "itemSku": "ToxuVTek", "itemType": "Jgvg6h5H"}, "quantity": 68, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"0DviplEk": "4vj3LDp4"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'yqDt8QUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "DpxlHasi", "password": "nGcjrkmR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "MttgjDSa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "IVBmft3U", "serviceAccountId": "dg7p9PGm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "Y2H5kX4M", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"isSX28nA": "RxWRpv5o"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "u5xtvd28"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"publisherAuthenticationKey": "OUfCt8UJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "C5flNyj6", "clientSecret": "HsTtX8P3", "organizationId": "llnaaS9l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "qyygPcfk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'JIxfQZza' \
    --body '{"categoryPath": "8kNVbDxV", "targetItemId": "Mq7HJk0F", "targetNamespace": "89xAc3YV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'faENtrl0' \
    --body '{"appId": "pTKZTXqz", "appType": "DLC", "baseAppId": "BMYQSA2j", "boothName": "z1ZOpdOj", "categoryPath": "SyMddB41", "clazz": "JuMf7RUy", "displayOrder": 54, "entitlementType": "DURABLE", "ext": {"8IiRimRl": {}}, "features": ["lHT6Dc40"], "images": [{"as": "vFFA6gpU", "caption": "7EW3x1dC", "height": 30, "imageUrl": "m55gOeqQ", "smallImageUrl": "IqcJVKmB", "width": 76}], "itemIds": ["1J1IbuTr"], "itemQty": {"rkbmuT1w": 15}, "itemType": "CODE", "listable": false, "localizations": {"EnDXIWrB": {"description": "PlSay46m", "localExt": {"v71BAZAO": {}}, "longDescription": "jtFJ2vmT", "title": "j7tT7TZH"}}, "maxCount": 96, "maxCountPerUser": 59, "name": "dCkIsZoA", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 83, "fixedTrialCycles": 66, "graceDays": 4}, "regionData": {"yFAdAtYc": [{"currencyCode": "iLIgRwFR", "currencyNamespace": "r0gwB9tz", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1995-03-26T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1979-10-18T00:00:00Z", "discountedPrice": 39, "expireAt": "1986-04-13T00:00:00Z", "price": 36, "purchaseAt": "1977-03-05T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "w3L7cUd9", "stackable": false, "status": "INACTIVE", "tags": ["tv6JfPZw"], "targetCurrencyCode": "cCVOXcVa", "targetNamespace": "80TmCwtD", "thumbnailUrl": "2lAH01o6", "useCount": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'dcBIgzrD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'yWpFBYGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'mBawMyoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'yNpdAasm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '8xwUfzOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkGetLocaleItems' test.out

#- 83 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'QiZY4NbO' \
    'QXJ7uOTz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'SearchItems' test.out

#- 84 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'QueryUncategorizedItems' test.out

#- 85 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'NMvuq2tN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetItem' test.out

#- 86 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'l4CX4Iji' \
    'K4DEUJRV' \
    --body '{"appId": "K3l9Eb0R", "appType": "GAME", "baseAppId": "0RH8vS1s", "boothName": "meOlngrd", "categoryPath": "TXCzaPBt", "clazz": "kZMio4wc", "displayOrder": 48, "entitlementType": "DURABLE", "ext": {"loVS3rYp": {}}, "features": ["8QtcEmCE"], "images": [{"as": "Vc75Ufey", "caption": "pWjDNhzC", "height": 75, "imageUrl": "5sWS2qwO", "smallImageUrl": "763iEklk", "width": 50}], "itemIds": ["Lm88LpLu"], "itemQty": {"YRO3C55y": 66}, "itemType": "BUNDLE", "listable": true, "localizations": {"K2JaqenD": {"description": "Gn7a2NUp", "localExt": {"lWiLjq06": {}}, "longDescription": "n6a0rW8E", "title": "fkpaXtwY"}}, "maxCount": 70, "maxCountPerUser": 0, "name": "Q4WbwNms", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 38, "fixedTrialCycles": 18, "graceDays": 61}, "regionData": {"urH8eloJ": [{"currencyCode": "zNKtRUaT", "currencyNamespace": "z1ETdsmw", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1976-03-21T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1978-03-09T00:00:00Z", "discountedPrice": 84, "expireAt": "1976-02-25T00:00:00Z", "price": 4, "purchaseAt": "1991-10-29T00:00:00Z", "trialPrice": 2}]}, "seasonType": "PASS", "sku": "lo6DMNpP", "stackable": true, "status": "INACTIVE", "tags": ["TQ1UpjfU"], "targetCurrencyCode": "6wJhy1jO", "targetNamespace": "VkkUlS79", "thumbnailUrl": "527EZ25I", "useCount": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateItem' test.out

#- 87 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '8uCeZFlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteItem' test.out

#- 88 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'tEVpDAEb' \
    --body '{"count": 52, "orderNo": "82jy74lq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AcquireItem' test.out

#- 89 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '0pDE5xRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetApp' test.out

#- 90 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'h5b45ebp' \
    'cM7ScSs3' \
    --body '{"carousel": [{"alt": "UOpAwIp9", "previewUrl": "rRtn1PcC", "thumbnailUrl": "xdbumeYg", "type": "image", "url": "EBWRQiW3", "videoSource": "vimeo"}], "developer": "FfU8icH4", "forumUrl": "081gRB1G", "genres": ["Racing"], "localizations": {"LfLg4RYu": {"announcement": "EbgUDEcJ", "slogan": "yIvsPwOr"}}, "platformRequirements": {"0BmV5iFv": [{"additionals": "fwFjTSmI", "directXVersion": "EqoLyLeU", "diskSpace": "GmomGX9s", "graphics": "XTZ0v8pq", "label": "Lfc5SwGn", "osVersion": "ReUULDX4", "processor": "QUIbb5nh", "ram": "68ZnyUtR", "soundCard": "vW9hNBSF"}]}, "platforms": ["Linux"], "players": ["MMO"], "primaryGenre": "Indie", "publisher": "OmjkFrFV", "releaseDate": "1984-06-06T00:00:00Z", "websiteUrl": "0xF34Xpt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'UpdateApp' test.out

#- 91 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '6ZlTTic0' \
    'kr2a0nI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DisableItem' test.out

#- 92 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'oo7UHCJK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetItemDynamicData' test.out

#- 93 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '5sp0aCvI' \
    'q3aHVYIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'EnableItem' test.out

#- 94 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'ewLRuHY8' \
    '3bGj0HTe' \
    'eWXlIcRi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'FeatureItem' test.out

#- 95 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'dqctDpyg' \
    'Y0ax476E' \
    'D4MMO9Tw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DefeatureItem' test.out

#- 96 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetLocaleItem' test.out

#- 97 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'wHWTgzJF' \
    --body '{"orderNo": "RYw6t1IK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'ReturnItem' test.out

#- 98 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'QueryKeyGroups' test.out

#- 99 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "ZLO6V4Od", "name": "e46QmCid", "status": "ACTIVE", "tags": ["dpP7RTC5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'CreateKeyGroup' test.out

#- 100 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '87lmUmBz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetKeyGroup' test.out

#- 101 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'iPZBnpOf' \
    --body '{"description": "kllxfq0N", "name": "srSjw5Ho", "status": "ACTIVE", "tags": ["0blM1d5M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateKeyGroup' test.out

#- 102 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'StYGczLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetKeyGroupDynamic' test.out

#- 103 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'NlEC0OEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'ListKeys' test.out

#- 104 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'E3yzIsUP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'UploadKeys' test.out

#- 105 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'QueryOrders' test.out

#- 106 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetOrderStatistics' test.out

#- 107 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '0NjluOrG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetOrder' test.out

#- 108 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ZTzsLW7F' \
    --body '{"description": "jfs9nIkc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'RefundOrder' test.out

#- 109 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetPaymentCallbackConfig' test.out

#- 110 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "UEanjKHb", "privateKey": "Xfk1zxdz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'UpdatePaymentCallbackConfig' test.out

#- 111 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'QueryPaymentNotifications' test.out

#- 112 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'QueryPaymentOrders' test.out

#- 113 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "xg0UXcRy", "currencyNamespace": "Hi3u8BzV", "customParameters": {"Wu1tOmhU": {}}, "description": "tCgcpvGr", "extOrderNo": "EbcZUDEx", "extUserId": "H1tayOGX", "itemType": "SEASON", "language": "rJmc-IJLR", "metadata": {"pyyEcQxV": "gJIjMZqc"}, "notifyUrl": "WfMl6dqr", "omitNotification": false, "price": 59, "recurringPaymentOrderNo": "4tnc3ZRB", "region": "3IkdtPfA", "returnUrl": "JEomwenJ", "sandbox": true, "sku": "Q8grtQSv", "subscriptionId": "6EcALcMI", "targetNamespace": "Pms5bT51", "targetUserId": "M4yko8S0", "title": "EnGLvGvf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'CreatePaymentOrderByDedicated' test.out

#- 114 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'uSyCTyjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'ListExtOrderNoByExtTxId' test.out

#- 115 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '4mCaiuMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetPaymentOrder' test.out

#- 116 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'KOF5GJJo' \
    --body '{"extTxId": "oSXUl3YU", "paymentMethod": "35QHGpBA", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ChargePaymentOrder' test.out

#- 117 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'nOlxDznI' \
    --body '{"description": "CQVyqBg3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'RefundPaymentOrderByDedicated' test.out

#- 118 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '4WTtDkn0' \
    --body '{"amount": 34, "currencyCode": "tn6t0Yx4", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 1, "vat": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'SimulatePaymentOrderNotification' test.out

#- 119 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '1rUQYCNT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrderChargeStatus' test.out

#- 120 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "iDX4jE3M", "eventTopic": "2IsTHu8Q", "maxAwarded": 44, "maxAwardedPerUser": 79, "namespaceExpression": "yOlXfIWd", "rewardCode": "0mcq5T4S", "rewardConditions": [{"condition": "Uc7cWfCK", "conditionName": "K6Dij1gF", "eventName": "cenEMySP", "rewardItems": [{"duration": 11, "itemId": "hxBenDiT", "quantity": 16}]}], "userIdExpression": "AqFYmFKj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'CreateReward' test.out

#- 121 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'QueryRewards' test.out

#- 122 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'ExportRewards' test.out

#- 123 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'ImportRewards' test.out

#- 124 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'ELmmll6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetReward' test.out

#- 125 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'exId1OKG' \
    --body '{"description": "UN2Uznd7", "eventTopic": "uVa7t14y", "maxAwarded": 43, "maxAwardedPerUser": 88, "namespaceExpression": "YSV52bHi", "rewardCode": "fCIf4tsu", "rewardConditions": [{"condition": "u6Pkam6t", "conditionName": "FSYFt4Zx", "eventName": "A2PzZFRk", "rewardItems": [{"duration": 55, "itemId": "Nlg6hn5q", "quantity": 40}]}], "userIdExpression": "sKyZAuV6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'UpdateReward' test.out

#- 126 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'uUvqM0lV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'DeleteReward' test.out

#- 127 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '6UZMlEbx' \
    --body '{"payload": {"HNgJRiQE": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CheckEventCondition' test.out

#- 128 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ListStores' test.out

#- 129 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "xaunjdAq", "defaultRegion": "nHUz44tx", "description": "4O6hamPw", "supportedLanguages": ["Noi071ez"], "supportedRegions": ["DK56JFIG"], "title": "e1IMUCLc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'CreateStore' test.out

#- 130 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ImportStore' test.out

#- 131 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetPublishedStore' test.out

#- 132 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'DeletePublishedStore' test.out

#- 133 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPublishedStoreBackup' test.out

#- 134 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RollbackPublishedStore' test.out

#- 135 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'N0DsaD5F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetStore' test.out

#- 136 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'yBsFe9OY' \
    --body '{"defaultLanguage": "EJVsYffm", "defaultRegion": "hyx6J25P", "description": "rM4S3cB8", "supportedLanguages": ["m17hEeLL"], "supportedRegions": ["goaYth6z"], "title": "cf8eA45O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'UpdateStore' test.out

#- 137 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'MvObWejo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'DeleteStore' test.out

#- 138 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '9LfGeegJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'CloneStore' test.out

#- 139 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'MaBGR6D1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ExportStore' test.out

#- 140 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QuerySubscriptions' test.out

#- 141 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'ZoZEZQkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'RecurringChargeSubscription' test.out

#- 142 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '8DSqFnhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetTicketDynamic' test.out

#- 143 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'KvjFCFbS' \
    --body '{"orderNo": "FlEWoMPd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DecreaseTicketSale' test.out

#- 144 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'gK5zn62m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetTicketBoothID' test.out

#- 145 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'hnFSpCTl' \
    --body '{"count": 58, "orderNo": "NBOcygvv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'IncreaseTicketSale' test.out

#- 146 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '2LAgfBGV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'AnonymizeCampaign' test.out

#- 147 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'zanbKYsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AnonymizeEntitlement' test.out

#- 148 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '0gqJ8VhY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AnonymizeFulfillment' test.out

#- 149 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'SikJl2p9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AnonymizeIntegration' test.out

#- 150 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'rBx8N5eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AnonymizeOrder' test.out

#- 151 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'apqxDy4c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AnonymizePayment' test.out

#- 152 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'LfNjzzEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeSubscription' test.out

#- 153 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'YA8jIkMJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AnonymizeWallet' test.out

#- 154 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'b7cZ2bPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryUserEntitlements' test.out

#- 155 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'aLLpEBVE' \
    --body '[{"endDate": "1990-03-23T00:00:00Z", "grantedCode": "5AsKaF2P", "itemId": "44lXkI3z", "itemNamespace": "diRiC5Ib", "language": "ITjw_dF", "quantity": 83, "region": "u5V6QSYx", "source": "GIFT", "startDate": "1994-11-19T00:00:00Z", "storeId": "ryVuZYmg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GrantUserEntitlement' test.out

#- 156 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'UeEPB5AG' \
    'Pgvk0Zth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetUserAppEntitlementByAppId' test.out

#- 157 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'aj0EBA4a' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'QueryUserEntitlementsByAppType' test.out

#- 158 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Rz0d56sm' \
    'obor4p1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserEntitlementByItemId' test.out

#- 159 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'lgQB9EcN' \
    'GOeBRY6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetUserEntitlementBySku' test.out

#- 160 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '5ae07deD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'ExistsAnyUserActiveEntitlement' test.out

#- 161 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'LaZ8JCvb' \
    '["eTfW0hgz"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 162 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'rabLJxEw' \
    'JrEBmQ64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 163 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'haNOzlGu' \
    '68UYyupj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetUserEntitlementOwnershipByItemId' test.out

#- 164 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'dDetnoT0' \
    'rfWtVPwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetUserEntitlementOwnershipBySku' test.out

#- 165 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'fq6V92gb' \
    'fPouNdmP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'RevokeUserEntitlements' test.out

#- 166 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '7fckVnuD' \
    'GvYIb1p5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetUserEntitlement' test.out

#- 167 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'tcR5z8ZJ' \
    'LjSHcaR3' \
    --body '{"endDate": "1995-06-01T00:00:00Z", "nullFieldList": ["Zmwr0QmO"], "startDate": "1977-05-30T00:00:00Z", "status": "REVOKED", "useCount": 13}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'UpdateUserEntitlement' test.out

#- 168 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '49eXp0xQ' \
    'kZ2JjuwW' \
    --body '{"useCount": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'ConsumeUserEntitlement' test.out

#- 169 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'y0tU11PC' \
    'eSrvejUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'DisableUserEntitlement' test.out

#- 170 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'wVfF37Vr' \
    '7mkDzFBI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'EnableUserEntitlement' test.out

#- 171 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '1VwhkVSK' \
    'DlNFOUHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetUserEntitlementHistories' test.out

#- 172 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'JsvTsqk9' \
    'hg4hj6nU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'RevokeUserEntitlement' test.out

#- 173 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'debW6Usk' \
    --body '{"duration": 3, "endDate": "1991-03-24T00:00:00Z", "itemId": "kZAk01f1", "itemSku": "KxCtWADU", "language": "2guN6U9w", "order": {"currency": {"currencyCode": "13W1K9TZ", "currencySymbol": "Q4qRLEi5", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "wE36rfmM"}, "ext": {"0CCs35TP": {}}, "free": false}, "orderNo": "sY8WgwSx", "quantity": 58, "region": "I5GH9bv9", "source": "ACHIEVEMENT", "startDate": "1998-09-19T00:00:00Z", "storeId": "pA6pzjHp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'FulfillItem' test.out

#- 174 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ZO0E9iLg' \
    --body '{"code": "RPJK3nBa", "language": "go", "region": "Qrqra0Pt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'RedeemCode' test.out

#- 175 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'kfvOpY2r' \
    --body '{"rewards": [{"currency": {"currencyCode": "amp5lnBn", "namespace": "6xmBkfMt"}, "item": {"itemId": "C66hFq0k", "itemSku": "POkORm2X", "itemType": "jlNEE5ec"}, "quantity": 83, "type": "CURRENCY"}], "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'FulfillRewards' test.out

#- 176 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'mi0ySJHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'QueryUserIAPOrders' test.out

#- 177 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'PloP1XkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'QueryAllUserIAPOrders' test.out

#- 178 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'K4MgIsDS' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "pYmH-WXhb-199", "productId": "ftll8N0V", "region": "vChHz9ur", "type": "STEAM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'MockFulfillIAPItem' test.out

#- 179 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    't7QWvE8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'QueryUserOrders' test.out

#- 180 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '6Uz8BRuY' \
    'WDTtL6MT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'CountOfPurchasedItem' test.out

#- 181 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'TRkCbb9S' \
    '5Q1IVHGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserOrder' test.out

#- 182 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '88prREBg' \
    'YOWdHJ9J' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "mohtU13g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateUserOrderStatus' test.out

#- 183 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'f7TRigNZ' \
    'j5w5y3Hm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'FulfillUserOrder' test.out

#- 184 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'K8QVOa62' \
    'eQZtbLLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserOrderGrant' test.out

#- 185 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'F671WLtv' \
    '38Hecczo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserOrderHistories' test.out

#- 186 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'pFmeRwpc' \
    'JBZyi3mL' \
    --body '{"additionalData": {"cardSummary": "C4KzekiS"}, "authorisedTime": "1983-02-02T00:00:00Z", "chargebackReversedTime": "1983-04-23T00:00:00Z", "chargebackTime": "1976-04-14T00:00:00Z", "chargedTime": "1991-12-05T00:00:00Z", "createdTime": "1980-03-18T00:00:00Z", "currency": {"currencyCode": "oVHgCytC", "currencySymbol": "6lRG98Yx", "currencyType": "REAL", "decimals": 66, "namespace": "bRdoTKKe"}, "customParameters": {"uSjfZe9i": {}}, "extOrderNo": "1osghF1h", "extTxId": "zi1Nl47s", "extUserId": "yJ5ibzSH", "issuedAt": "1996-01-28T00:00:00Z", "metadata": {"CLIvWPVR": "sdEqA61y"}, "namespace": "TrMgsycT", "nonceStr": "gmPzc20E", "paymentMethod": "uO5dMqGD", "paymentMethodFee": 22, "paymentOrderNo": "SZPY07rE", "paymentProvider": "ADYEN", "paymentProviderFee": 51, "paymentStationUrl": "HjL6ZbXj", "price": 64, "refundedTime": "1985-12-22T00:00:00Z", "salesTax": 25, "sandbox": false, "sku": "p3op8hta", "status": "REFUNDED", "statusReason": "LxtW4PvF", "subscriptionId": "kESTULat", "subtotalPrice": 62, "targetNamespace": "1Le7cR7q", "targetUserId": "6PWhZmmK", "tax": 50, "totalPrice": 17, "totalTax": 91, "txEndTime": "1978-09-11T00:00:00Z", "type": "ipJHahVi", "userId": "JvLYW0kd", "vat": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'ProcessUserOrderNotification' test.out

#- 187 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'lk2luqSO' \
    'OA2VOZBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'DownloadUserOrderReceipt' test.out

#- 188 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'NbB98PuS' \
    --body '{"currencyCode": "GykqFzPw", "currencyNamespace": "SMXT53bB", "customParameters": {"uL38beOY": {}}, "description": "DVuHZQ9L", "extOrderNo": "Yt6w23Wf", "extUserId": "8iEQo72s", "itemType": "APP", "language": "DCdL-SFiU-jP", "metadata": {"K1AyRlzs": "rRXEFZiv"}, "notifyUrl": "QOHG6wVi", "omitNotification": false, "price": 78, "recurringPaymentOrderNo": "ratsvvHL", "region": "mIohfNIS", "returnUrl": "LXMDWDdm", "sandbox": true, "sku": "E4lliQMn", "subscriptionId": "utJbpEo4", "title": "mUNHFtdm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'CreateUserPaymentOrder' test.out

#- 189 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'l2xNviWa' \
    'cJc3Fm7Z' \
    --body '{"description": "548uuKgo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'RefundUserPaymentOrder' test.out

#- 190 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'CBqS5uId' \
    --body '{"code": "CbwCeeq9", "orderNo": "ouEdDtjO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ApplyUserRedemption' test.out

#- 191 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'gsypLkm2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QueryUserSubscriptions' test.out

#- 192 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'ZYew5H7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserSubscriptionActivities' test.out

#- 193 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'm0gnYyj6' \
    --body '{"grantDays": 76, "itemId": "Xf9G1nty", "language": "ebvoeHen", "reason": "AALKt7Ef", "region": "xIH446oU", "source": "nP2S74un"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'PlatformSubscribeSubscription' test.out

#- 194 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'Xwg0JKqV' \
    'WW1rjK1e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 195 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'pwkAvcsY' \
    'vbgfBVPp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserSubscription' test.out

#- 196 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'Ta8Yuq7T' \
    'KiNXmz7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteUserSubscription' test.out

#- 197 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'MrMD5Tba' \
    'UxTCTng0' \
    --body '{"immediate": true, "reason": "jtdBrjs3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'CancelSubscription' test.out

#- 198 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'Kiykt2Ck' \
    '2gOlSatE' \
    --body '{"grantDays": 56, "reason": "Z2UgwQLq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GrantDaysToSubscription' test.out

#- 199 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'DqYSxTPu' \
    'VlBqirdp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserSubscriptionBillingHistories' test.out

#- 200 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '3yxnsETl' \
    '1SvhQuds' \
    --body '{"additionalData": {"cardSummary": "jIhXdxiS"}, "authorisedTime": "1978-05-06T00:00:00Z", "chargebackReversedTime": "1977-04-20T00:00:00Z", "chargebackTime": "1982-02-20T00:00:00Z", "chargedTime": "1995-08-07T00:00:00Z", "createdTime": "1985-11-28T00:00:00Z", "currency": {"currencyCode": "MqzQIxib", "currencySymbol": "hpNYsHtd", "currencyType": "VIRTUAL", "decimals": 69, "namespace": "kjuaZqhJ"}, "customParameters": {"ilrZkSSK": {}}, "extOrderNo": "gP5rxCR7", "extTxId": "7G9d5CA1", "extUserId": "GORSbL9n", "issuedAt": "1997-01-20T00:00:00Z", "metadata": {"bWDEupmd": "LQzPnNfB"}, "namespace": "AcWArbkC", "nonceStr": "fdHIZb03", "paymentMethod": "otqmBuS9", "paymentMethodFee": 95, "paymentOrderNo": "2pCZ23UH", "paymentProvider": "STRIPE", "paymentProviderFee": 20, "paymentStationUrl": "0lpJ4JLl", "price": 32, "refundedTime": "1975-10-25T00:00:00Z", "salesTax": 29, "sandbox": true, "sku": "UoVRUb39", "status": "AUTHORISE_FAILED", "statusReason": "22P4Sp09", "subscriptionId": "cKmjRUbZ", "subtotalPrice": 94, "targetNamespace": "BVS7OK2Z", "targetUserId": "rdcsckMe", "tax": 20, "totalPrice": 87, "totalTax": 80, "txEndTime": "1995-10-17T00:00:00Z", "type": "UTqkK2eF", "userId": "aGLoSmEE", "vat": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'ProcessUserSubscriptionNotification' test.out

#- 201 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'bLywJsyU' \
    'ie6fZgLl' \
    --body '{"count": 23, "orderNo": "UPsO8lg4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AcquireUserTicket' test.out

#- 202 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    '6Si7006v' \
    'L2w4aajD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'CheckWallet' test.out

#- 203 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'AOx0iJjY' \
    'leaktqv2' \
    --body '{"amount": 96, "reason": "kljQuD5m", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'CreditUserWallet' test.out

#- 204 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'JONqHGq8' \
    'mB7mF2lM' \
    --body '{"amount": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'PayWithUserWallet' test.out

#- 205 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'caghFXJI' \
    'JflRHFcs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserWallet' test.out

#- 206 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'IqCy4xDi' \
    'fSSQ5On2' \
    --body '{"amount": 4, "reason": "cEcl3xei"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'DebitUserWallet' test.out

#- 207 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'O4bwF5JO' \
    'jGoGxKM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'DisableUserWallet' test.out

#- 208 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'qMce5tfL' \
    'cpjFZMKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'EnableUserWallet' test.out

#- 209 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'bp0pEbLC' \
    'LFpHxMYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'ListUserWalletTransactions' test.out

#- 210 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'QueryWallets' test.out

#- 211 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    '836075xE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetWallet' test.out

#- 212 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'pzdnYtpj' \
    'a5ig2isQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'SyncOrders' test.out

#- 213 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["Zga6Vy76"], "apiKey": "izPiQRjY", "authoriseAsCapture": false, "blockedPaymentMethods": ["8fv5fIt2"], "clientKey": "2tIZhjhg", "dropInSettings": "kigW22zX", "liveEndpointUrlPrefix": "MWXfbcM0", "merchantAccount": "GIALIbFC", "notificationHmacKey": "QgBcLNT6", "notificationPassword": "iOQVYx5r", "notificationUsername": "W2gMsI1a", "returnUrl": "YBitSn3U", "settings": "DeKj97I4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'TestAdyenConfig' test.out

#- 214 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "WYXLqjN7", "privateKey": "ktOBTraB", "publicKey": "xWRTVuYE", "returnUrl": "qGlKDwTK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'TestAliPayConfig' test.out

#- 215 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "XBrXiQcd", "secretKey": "9IW8kiCK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'TestCheckoutConfig' test.out

#- 216 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'DebugMatchedPaymentMerchantConfig' test.out

#- 217 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "eQJWZBvc", "clientSecret": "q1ETvWBx", "returnUrl": "YZJh7B8g", "webHookId": "bnSu9M2O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'TestPayPalConfig' test.out

#- 218 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["xD2udaeY"], "publishableKey": "pCXYSMiy", "secretKey": "87CTqEQB", "webhookSecret": "g36my3sY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'TestStripeConfig' test.out

#- 219 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "2clrDcai", "key": "n0cOVF1z", "mchid": "HwDTI0sJ", "returnUrl": "1Q0kphMT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'TestWxPayConfig' test.out

#- 220 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "ggSP2SLc", "flowCompletionUrl": "uAP7vU97", "merchantId": 56, "projectId": 50, "projectSecretKey": "w2nbg8C7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'TestXsollaConfig' test.out

#- 221 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'Mvywhu6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetPaymentMerchantConfig' test.out

#- 222 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'jOjuGzo1' \
    --body '{"allowedPaymentMethods": ["Fz4tU0aS"], "apiKey": "n98N8qOU", "authoriseAsCapture": true, "blockedPaymentMethods": ["0z92RaDe"], "clientKey": "8ngT8LRQ", "dropInSettings": "kMnG1LZy", "liveEndpointUrlPrefix": "F2mdYY6Z", "merchantAccount": "MfuTYTKs", "notificationHmacKey": "ue48qBEB", "notificationPassword": "NAV5BTe6", "notificationUsername": "ec1zA92U", "returnUrl": "RCLSGPmR", "settings": "BZWunHW7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'UpdateAdyenConfig' test.out

#- 223 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'MYvr6QA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'TestAdyenConfigById' test.out

#- 224 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Ppepc92H' \
    --body '{"appId": "A94eACde", "privateKey": "yfUpgiPp", "publicKey": "f8nxKJ3d", "returnUrl": "nmtPwa64"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UpdateAliPayConfig' test.out

#- 225 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'Y4gPEKMh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'TestAliPayConfigById' test.out

#- 226 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'hu9a6f3x' \
    --body '{"publicKey": "JNtUlKLl", "secretKey": "IIAeHbm5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateCheckoutConfig' test.out

#- 227 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'M6LsY1VM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'TestCheckoutConfigById' test.out

#- 228 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'uIEcRls6' \
    --body '{"clientID": "8M3MPMRP", "clientSecret": "BepyyMz6", "returnUrl": "zfR1pvTY", "webHookId": "YtDOiEi4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdatePayPalConfig' test.out

#- 229 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'RuEcHCSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'TestPayPalConfigById' test.out

#- 230 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'hpOZQFlw' \
    --body '{"allowedPaymentMethodTypes": ["OiuKGDFg"], "publishableKey": "K49YuKnX", "secretKey": "ks0m8ANr", "webhookSecret": "cRal7ta3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'UpdateStripeConfig' test.out

#- 231 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'fojA3h4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'TestStripeConfigById' test.out

#- 232 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'MW3AJ5zl' \
    --body '{"appId": "sFBwjvLY", "key": "vmg6avud", "mchid": "QFF1CPNY", "returnUrl": "9u2dVYdg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UpdateWxPayConfig' test.out

#- 233 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'lOOoCeK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'UpdateWxPayConfigCert' test.out

#- 234 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'kPKmBqVu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'TestWxPayConfigById' test.out

#- 235 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'x3lXcD8a' \
    --body '{"apiKey": "ertAVCqs", "flowCompletionUrl": "8XT8xy3n", "merchantId": 71, "projectId": 73, "projectSecretKey": "kseA0ARj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'UpdateXsollaConfig' test.out

#- 236 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '9ricfayv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestXsollaConfigById' test.out

#- 237 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'nhi8MDdY' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateXsollaUIConfig' test.out

#- 238 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'QueryPaymentProviderConfig' test.out

#- 239 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "Qp5egdmV", "region": "E8ImivNt", "sandboxTaxJarApiToken": "QxqWRKHo", "specials": ["XSOLLA"], "taxJarApiToken": "ODoWOr98", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CreatePaymentProviderConfig' test.out

#- 240 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetAggregatePaymentProviders' test.out

#- 241 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DebugMatchedPaymentProviderConfig' test.out

#- 242 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetSpecialPaymentProviders' test.out

#- 243 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'BUas9jjz' \
    --body '{"aggregate": "ADYEN", "namespace": "rgiaGrcB", "region": "7dIOVKIP", "sandboxTaxJarApiToken": "SJJHo5W8", "specials": ["CHECKOUT"], "taxJarApiToken": "KH8ou9Sd", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdatePaymentProviderConfig' test.out

#- 244 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'SXcrEFCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'DeletePaymentProviderConfig' test.out

#- 245 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetPaymentTaxConfig' test.out

#- 246 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "qeGNLdIB", "taxJarApiToken": "RdliFQVM", "taxJarEnabled": true, "taxJarProductCodesMapping": {"zVUWlUWD": "s2x1EQU0"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdatePaymentTaxConfig' test.out

#- 247 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'oepEvcja' \
    'SgEh6jJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'SyncPaymentOrders' test.out

#- 248 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PublicGetRootCategories' test.out

#- 249 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'DownloadCategories' test.out

#- 250 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'FxinIHJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetCategory' test.out

#- 251 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'o7aq5Zzn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetChildCategories' test.out

#- 252 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'd5eacobT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetDescendantCategories' test.out

#- 253 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicListCurrencies' test.out

#- 254 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'suRlhreQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetItemByAppId' test.out

#- 255 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicQueryItems' test.out

#- 256 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'VFID3o8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetItemBySku' test.out

#- 257 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'JWVjKIOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicBulkGetItems' test.out

#- 258 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'w70DvAHh' \
    'SGWUvzq1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicSearchItems' test.out

#- 259 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Za3IBC4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetApp' test.out

#- 260 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'QFsUJPfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicGetItemDynamicData' test.out

#- 261 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'aJp1rt7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetItem' test.out

#- 262 GetPaymentCustomization
eval_tap 0 262 'GetPaymentCustomization # SKIP deprecated' test.out

#- 263 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "BgBCe6N0", "paymentProvider": "XSOLLA", "returnUrl": "I65Mn5tn", "ui": "gEYXgPVT", "zipCode": "5CqXDZBV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetPaymentUrl' test.out

#- 264 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'MJyJeKFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetPaymentMethods' test.out

#- 265 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '92YDtaZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetUnpaidPaymentOrder' test.out

#- 266 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'JoKS0Oxy' \
    --body '{"token": "ipZuO4N9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'Pay' test.out

#- 267 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'S2YCgHa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicCheckPaymentOrderPaidStatus' test.out

#- 268 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'cvGRYk5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentPublicConfig' test.out

#- 269 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'UtWHCnhm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetQRCode' test.out

#- 270 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'zzppV7tK' \
    'NKYUQVBX' \
    'WXPAY' \
    'mWcNlHaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicNormalizePaymentReturnUrl' test.out

#- 271 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'xYaGHUpm' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetPaymentTaxValue' test.out

#- 272 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'FyOrFKtx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetRewardByCode' test.out

#- 273 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryRewards1' test.out

#- 274 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'GNAi0fq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetReward1' test.out

#- 275 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicListStores' test.out

#- 276 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicExistsAnyMyActiveEntitlement' test.out

#- 277 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'xChPLd2l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 278 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'Oopc7XoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 279 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'pdd6rCpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 280 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetEntitlementOwnershipToken' test.out

#- 281 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'MrnH9YHX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetMyWallet' test.out

#- 282 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'h7KnCVOK' \
    --body '{"serviceLabel": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicSyncPsnDlcInventory' test.out

#- 283 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'sBRGtd8Q' \
    --body '{"appId": "Y2OLbijr", "steamId": "vfr8hknj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'SyncSteamDLC' test.out

#- 284 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'WUWdMUXH' \
    --body '{"xstsToken": "vw4pNlGL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'SyncXboxDLC' test.out

#- 285 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'jdBxLM07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicQueryUserEntitlements' test.out

#- 286 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '9pDAbTgm' \
    'sEYEq2Gk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetUserAppEntitlementByAppId' test.out

#- 287 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'YK1vYm9f' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryUserEntitlementsByAppType' test.out

#- 288 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'XQ7CQoem' \
    'nQG0dH0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserEntitlementByItemId' test.out

#- 289 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'VM9VEHTP' \
    'qDhkcu5v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserEntitlementBySku' test.out

#- 290 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'nz6GiNMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicExistsAnyUserActiveEntitlement' test.out

#- 291 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'oBJHml0L' \
    'JmpPi4mq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 292 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'hruiCZLG' \
    'GP5UXkHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 293 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'TMapp5Sb' \
    'onsUJKAD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 294 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'r60EkdFr' \
    'pLsGt9yT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserEntitlement' test.out

#- 295 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'XWUSCQcM' \
    'sHN7reI2' \
    --body '{"useCount": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicConsumeUserEntitlement' test.out

#- 296 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    's7I12tAZ' \
    --body '{"code": "c8sxxLx9", "language": "EQnw", "region": "NJbYH5J4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicRedeemCode' test.out

#- 297 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'WiJLv9Nv' \
    --body '{"excludeOldTransactions": true, "language": "WmJ-339", "productId": "WZeUKJJN", "receiptData": "ftRpGgk1", "region": "iseREzzR", "transactionId": "G6z9wmuH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicFulfillAppleIAPItem' test.out

#- 298 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'ddyOdibI' \
    --body '{"epicGamesJwtToken": "1LVyqbdY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'SyncEpicGamesInventory' test.out

#- 299 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '8DGZKAuo' \
    --body '{"autoAck": true, "language": "PZlw-sMmM", "orderId": "G0FoQP8q", "packageName": "7aSsb85g", "productId": "Ah9RD3Zz", "purchaseTime": 78, "purchaseToken": "6N1iJ8lt", "region": "t9IRqCfl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicFulfillGoogleIAPItem' test.out

#- 300 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'gln6r5f0' \
    --body '{"currencyCode": "s5H6lCf3", "price": 0.6656623819884346, "productId": "a11hLLCg", "serviceLabel": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicReconcilePlayStationStore' test.out

#- 301 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    '5av4LExd' \
    --body '{"appId": "abD8g2cv", "language": "FmrU-240", "region": "HUJ0GCmf", "stadiaPlayerId": "lIXkgJ6z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'SyncStadiaEntitlement' test.out

#- 302 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'kTwoakq7' \
    --body '{"appId": "sEejFZ1N", "currencyCode": "tONXb9w9", "language": "Sq-FRLZ", "price": 0.6565137658214307, "productId": "d58dZP5R", "region": "vrinNtvB", "steamId": "tqFSkA68"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'SyncSteamInventory' test.out

#- 303 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'mIVYJ5pS' \
    --body '{"gameId": "VxBsLhty", "language": "EC_133", "region": "wNC4FY69"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'SyncTwitchDropsEntitlement' test.out

#- 304 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'mM87joJN' \
    --body '{"currencyCode": "OGB83Ns6", "price": 0.5299632339050114, "productId": "5Poab6lK", "xstsToken": "oVqNBUzI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'SyncXboxInventory' test.out

#- 305 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'xOfglquS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicQueryUserOrders' test.out

#- 306 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '2q2DoWr9' \
    --body '{"currencyCode": "zvFtKa2m", "discountedPrice": 80, "ext": {"AqOokV1p": {}}, "itemId": "lxQ2YriT", "language": "FIPd", "price": 17, "quantity": 21, "region": "rtLnh2U1", "returnUrl": "RQlMxkfN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicCreateUserOrder' test.out

#- 307 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'MPNtqv2T' \
    'Mz1b7Snz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserOrder' test.out

#- 308 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'kXOek83I' \
    'gm1wkSWs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicCancelUserOrder' test.out

#- 309 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'YvAsu18o' \
    'bUdc8mbv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserOrderHistories' test.out

#- 310 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'XcwcgMqO' \
    'XMziXrVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicDownloadUserOrderReceipt' test.out

#- 311 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'sEc3ClFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetPaymentAccounts' test.out

#- 312 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '3mJwusCB' \
    'card' \
    '4kLcuqL4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicDeletePaymentAccount' test.out

#- 313 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '0NYgekRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicQueryUserSubscriptions' test.out

#- 314 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'vpaGTA9B' \
    --body '{"currencyCode": "TyCCyN4F", "itemId": "w9i6mI2W", "language": "JJc-HeyZ-597", "region": "PAXQBNMP", "returnUrl": "7j3xfPao", "source": "ZaWFspkU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicSubscribeSubscription' test.out

#- 315 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '5kn6PlPq' \
    'D4AgfasB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 316 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'fclBhZjZ' \
    'bLnmghKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserSubscription' test.out

#- 317 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'PyVIn3qa' \
    'HP7KNuly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicChangeSubscriptionBillingAccount' test.out

#- 318 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'frENVQkp' \
    'caWHf6T2' \
    --body '{"immediate": true, "reason": "OOljn7c6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicCancelSubscription' test.out

#- 319 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'c9efJI02' \
    'TZxrgLBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserSubscriptionBillingHistories' test.out

#- 320 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'JEkphFz0' \
    'h6WpoVpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetWallet' test.out

#- 321 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'c2HBBmj6' \
    'cEi02hXl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE