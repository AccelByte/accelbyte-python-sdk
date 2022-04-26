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
echo "1..323"

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

#- 138 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '9LfGeegJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'QueryChanges' test.out

#- 139 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'MaBGR6D1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'PublishAll' test.out

#- 140 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'ZoZEZQkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'CloneStore' test.out

#- 141 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    '8DSqFnhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ExportStore' test.out

#- 142 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'QuerySubscriptions' test.out

#- 143 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'KvjFCFbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'RecurringChargeSubscription' test.out

#- 144 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'FlEWoMPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetTicketDynamic' test.out

#- 145 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'gK5zn62m' \
    --body '{"orderNo": "hnFSpCTl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DecreaseTicketSale' test.out

#- 146 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'DNBOcygv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetTicketBoothID' test.out

#- 147 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'v2LAgfBG' \
    --body '{"count": 94, "orderNo": "zanbKYsB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'IncreaseTicketSale' test.out

#- 148 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '0gqJ8VhY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AnonymizeCampaign' test.out

#- 149 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'SikJl2p9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AnonymizeEntitlement' test.out

#- 150 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'rBx8N5eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AnonymizeFulfillment' test.out

#- 151 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'apqxDy4c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AnonymizeIntegration' test.out

#- 152 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'LfNjzzEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeOrder' test.out

#- 153 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'YA8jIkMJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AnonymizePayment' test.out

#- 154 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'b7cZ2bPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AnonymizeSubscription' test.out

#- 155 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'aLLpEBVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AnonymizeWallet' test.out

#- 156 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'Mk5AsKaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'QueryUserEntitlements' test.out

#- 157 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '2P44lXkI' \
    --body '[{"endDate": "1998-07-21T00:00:00Z", "grantedCode": "diRiC5Ib", "itemId": "Pit71JWl", "itemNamespace": "YCoi4nDf", "language": "Uvqs-YvUz", "quantity": 13, "region": "UeEPB5AG", "source": "IAP", "startDate": "1981-03-25T00:00:00Z", "storeId": "0Zthaj0E"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GrantUserEntitlement' test.out

#- 158 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'BA4azRz0' \
    'd56smobo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetUserAppEntitlementByAppId' test.out

#- 159 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'r4p1PlgQ' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'QueryUserEntitlementsByAppType' test.out

#- 160 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '9EcNGOeB' \
    'RY6G5ae0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetUserEntitlementByItemId' test.out

#- 161 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '7deDLaZ8' \
    'JCvbeTfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetUserEntitlementBySku' test.out

#- 162 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '0hgzrabL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'ExistsAnyUserActiveEntitlement' test.out

#- 163 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'JxEwJrEB' \
    '["mQ64haNO"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 164 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'zlGu68UY' \
    'yupjdDet' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 165 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'noT0rfWt' \
    'VPwQfq6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetUserEntitlementOwnershipByItemId' test.out

#- 166 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '92gbfPou' \
    'NdmP7fck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetUserEntitlementOwnershipBySku' test.out

#- 167 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'VnuDGvYI' \
    'b1p5tcR5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'RevokeUserEntitlements' test.out

#- 168 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'z8ZJLjSH' \
    'caR3X4tZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetUserEntitlement' test.out

#- 169 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'mwr0QmOn' \
    'sEg49eXp' \
    --body '{"endDate": "1997-07-05T00:00:00Z", "nullFieldList": ["QkZ2Jjuw"], "startDate": "1995-07-10T00:00:00Z", "status": "CONSUMED", "useCount": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'UpdateUserEntitlement' test.out

#- 170 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '11PCeSrv' \
    'ejUKwVfF' \
    --body '{"useCount": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'ConsumeUserEntitlement' test.out

#- 171 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'r7mkDzFB' \
    'I1VwhkVS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DisableUserEntitlement' test.out

#- 172 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'KDlNFOUH' \
    'BJsvTsqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'EnableUserEntitlement' test.out

#- 173 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '9hg4hj6n' \
    'UdebW6Us' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementHistories' test.out

#- 174 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'kbPkkZAk' \
    '01f1KxCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'RevokeUserEntitlement' test.out

#- 175 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'WADU2guN' \
    --body '{"duration": 93, "endDate": "1982-10-18T00:00:00Z", "itemId": "9TZQ4qRL", "itemSku": "Ei5wowE3", "language": "6rfmM0CC", "order": {"currency": {"currencyCode": "s35TPUPL", "currencySymbol": "msY8WgwS", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "I5GH9bv9"}, "ext": {"ZTo2HpA6": {}}, "free": false}, "orderNo": "zjHpZO0E", "quantity": 17, "region": "LgRPJK3n", "source": "REWARD", "startDate": "1971-02-10T00:00:00Z", "storeId": "3GOgbQrq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'FulfillItem' test.out

#- 176 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ra0Ptkfv' \
    --body '{"code": "OpY2ramp", "language": "Nb_194", "region": "C66hFq0k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'RedeemCode' test.out

#- 177 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'POkORm2X' \
    --body '{"rewards": [{"currency": {"currencyCode": "jlNEE5ec", "namespace": "PzAmi0yS"}, "item": {"itemId": "JHfPloP1", "itemSku": "XkYK4MgI", "itemType": "sDSFMPyM"}, "quantity": 15, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'FulfillRewards' test.out

#- 178 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '1OLZPVww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'QueryUserIAPOrders' test.out

#- 179 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'xH4BIDJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'QueryAllUserIAPOrders' test.out

#- 180 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'DoShMMft' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "nv-hZUR", "productId": "t7QWvE8s", "region": "6Uz8BRuY", "type": "TWITCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'MockFulfillIAPItem' test.out

#- 181 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'TtL6MTTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'QueryUserOrders' test.out

#- 182 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'kCbb9S5Q' \
    '1IVHGT88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'CountOfPurchasedItem' test.out

#- 183 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'prREBgYO' \
    'WdHJ9Jum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetUserOrder' test.out

#- 184 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'ohtU13gf' \
    '7TRigNZj' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "5y3HmK8Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdateUserOrderStatus' test.out

#- 185 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'VOa62eQZ' \
    'tbLLcF67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'FulfillUserOrder' test.out

#- 186 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '1WLtv38H' \
    'ecczopFm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserOrderGrant' test.out

#- 187 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'eRwpcJBZ' \
    'yi3mLC4K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserOrderHistories' test.out

#- 188 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'zekiSzey' \
    'olnOQt0j' \
    --body '{"additionalData": {"cardSummary": "oVHgCytC"}, "authorisedTime": "1976-12-12T00:00:00Z", "chargebackReversedTime": "1987-07-06T00:00:00Z", "chargebackTime": "1977-09-21T00:00:00Z", "chargedTime": "1971-12-14T00:00:00Z", "createdTime": "1972-04-30T00:00:00Z", "currency": {"currencyCode": "TKKeuSjf", "currencySymbol": "Ze9i1osg", "currencyType": "REAL", "decimals": 62, "namespace": "1hzi1Nl4"}, "customParameters": {"7syJ5ibz": {}}, "extOrderNo": "SHZeCLIv", "extTxId": "WPVRsdEq", "extUserId": "A61yTrMg", "issuedAt": "1980-07-10T00:00:00Z", "metadata": {"cTgmPzc2": "0EuO5dMq"}, "namespace": "GDlSZPY0", "nonceStr": "7rEVSjzH", "paymentMethod": "jL6ZbXjG", "paymentMethodFee": 58, "paymentOrderNo": "Smpp3op8", "paymentProvider": "XSOLLA", "paymentProviderFee": 38, "paymentStationUrl": "aRLxtW4P", "price": 42, "refundedTime": "1986-03-20T00:00:00Z", "salesTax": 61, "sandbox": false, "sku": "t5F1Le7c", "status": "REFUNDED", "statusReason": "7q6PWhZm", "subscriptionId": "mKz41i1T", "subtotalPrice": 31, "targetNamespace": "78FipJHa", "targetUserId": "hViJvLYW", "tax": 20, "totalPrice": 6, "totalTax": 25, "txEndTime": "1976-03-26T00:00:00Z", "type": "2luqSOOA", "userId": "2VOZBoNb", "vat": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ProcessUserOrderNotification' test.out

#- 189 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '98PuSGyk' \
    'qFzPwSMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DownloadUserOrderReceipt' test.out

#- 190 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'T53bBuL3' \
    --body '{"currencyCode": "8beOYDVu", "currencyNamespace": "HZQ9LYt6", "customParameters": {"w23Wf8iE": {}}, "description": "Qo72sH0a", "extOrderNo": "RdcDlDyG", "extUserId": "csfIuI4D", "itemType": "SUBSCRIPTION", "language": "ej-SR", "metadata": {"RXEFZivQ": "OHG6wVic"}, "notifyUrl": "NratsvvH", "omitNotification": false, "price": 69, "recurringPaymentOrderNo": "ohfNISLX", "region": "MDWDdm5F", "returnUrl": "E4lliQMn", "sandbox": true, "sku": "tJbpEo4m", "subscriptionId": "UNHFtdml", "title": "2xNviWac"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'CreateUserPaymentOrder' test.out

#- 191 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'Jc3Fm7Z5' \
    '48uuKgoC' \
    --body '{"description": "BqS5uIdC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'RefundUserPaymentOrder' test.out

#- 192 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'bwCeeq9o' \
    --body '{"code": "uEdDtjOg", "orderNo": "sypLkm2Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'ApplyUserRedemption' test.out

#- 193 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Yew5H7Zm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'QueryUserSubscriptions' test.out

#- 194 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '0gnYyj6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserSubscriptionActivities' test.out

#- 195 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'Xf9G1nty' \
    --body '{"grantDays": 9, "itemId": "bvoeHenA", "language": "ALKt7Efx", "reason": "IH446oUn", "region": "P2S74unX", "source": "wg0JKqVW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'PlatformSubscribeSubscription' test.out

#- 196 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'W1rjK1ep' \
    'wkAvcsYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 197 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'bgfBVPpT' \
    'a8Yuq7TK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserSubscription' test.out

#- 198 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'iNXmz7eM' \
    'rMD5TbaU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DeleteUserSubscription' test.out

#- 199 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'xTCTng0x' \
    'jtdBrjs3' \
    --body '{"immediate": false, "reason": "ykt2Ck2g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'CancelSubscription' test.out

#- 200 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'OlSatECZ' \
    '2UgwQLqD' \
    --body '{"grantDays": 33, "reason": "YSxTPuVl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GrantDaysToSubscription' test.out

#- 201 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'Bqirdp3y' \
    'xnsETl1S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserSubscriptionBillingHistories' test.out

#- 202 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'vhQudsjI' \
    'hXdxiSoW' \
    --body '{"additionalData": {"cardSummary": "pnnxgX7B"}, "authorisedTime": "1985-11-28T00:00:00Z", "chargebackReversedTime": "1990-05-12T00:00:00Z", "chargebackTime": "1983-12-03T00:00:00Z", "chargedTime": "1988-07-03T00:00:00Z", "createdTime": "1975-01-12T00:00:00Z", "currency": {"currencyCode": "hpNYsHtd", "currencySymbol": "B3IkjuaZ", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "JilrZkSS"}, "customParameters": {"KgP5rxCR": {}}, "extOrderNo": "77G9d5CA", "extTxId": "1GORSbL9", "extUserId": "n0dbWDEu", "issuedAt": "1978-04-12T00:00:00Z", "metadata": {"dLQzPnNf": "BAcWArbk"}, "namespace": "CfdHIZb0", "nonceStr": "3otqmBuS", "paymentMethod": "9V2pCZ23", "paymentMethodFee": 92, "paymentOrderNo": "Hmk0lpJ4", "paymentProvider": "ADYEN", "paymentProviderFee": 32, "paymentStationUrl": "i7L2oDUo", "price": 94, "refundedTime": "1992-01-12T00:00:00Z", "salesTax": 19, "sandbox": false, "sku": "09cKmjRU", "status": "INIT", "statusReason": "ZVBVS7OK", "subscriptionId": "2Zrdcsck", "subtotalPrice": 77, "targetNamespace": "ekROWZ2K", "targetUserId": "UTqkK2eF", "tax": 0, "totalPrice": 64, "totalTax": 74, "txEndTime": "1978-12-19T00:00:00Z", "type": "mEEPbLyw", "userId": "JsyUie6f", "vat": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ProcessUserSubscriptionNotification' test.out

#- 203 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'LllUPsO8' \
    'lg46Si70' \
    --body '{"count": 42, "orderNo": "L2w4aajD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AcquireUserTicket' test.out

#- 204 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    'AOx0iJjY' \
    'leaktqv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CheckWallet' test.out

#- 205 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'WkljQuD5' \
    'mnJONqHG' \
    --body '{"amount": 33, "reason": "8mB7mF2l", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'CreditUserWallet' test.out

#- 206 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'FcaghFXJ' \
    'IJflRHFc' \
    --body '{"amount": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'PayWithUserWallet' test.out

#- 207 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'IqCy4xDi' \
    'fSSQ5On2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetUserWallet' test.out

#- 208 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'ccEcl3xe' \
    'iO4bwF5J' \
    --body '{"amount": 80, "reason": "jGoGxKM3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'DebitUserWallet' test.out

#- 209 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'qMce5tfL' \
    'cpjFZMKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'DisableUserWallet' test.out

#- 210 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'bp0pEbLC' \
    'LFpHxMYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'EnableUserWallet' test.out

#- 211 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    '836075xE' \
    'pzdnYtpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'ListUserWalletTransactions' test.out

#- 212 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'QueryWallets' test.out

#- 213 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    'a5ig2isQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetWallet' test.out

#- 214 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'Zga6Vy76' \
    'izPiQRjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'SyncOrders' test.out

#- 215 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["a8fv5fIt"], "apiKey": "22tIZhjh", "authoriseAsCapture": false, "blockedPaymentMethods": ["kigW22zX"], "clientKey": "MWXfbcM0", "dropInSettings": "GIALIbFC", "liveEndpointUrlPrefix": "QgBcLNT6", "merchantAccount": "iOQVYx5r", "notificationHmacKey": "W2gMsI1a", "notificationPassword": "YBitSn3U", "notificationUsername": "DeKj97I4", "returnUrl": "WYXLqjN7", "settings": "ktOBTraB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'TestAdyenConfig' test.out

#- 216 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "xWRTVuYE", "privateKey": "qGlKDwTK", "publicKey": "XBrXiQcd", "returnUrl": "9IW8kiCK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'TestAliPayConfig' test.out

#- 217 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "eQJWZBvc", "secretKey": "q1ETvWBx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'TestCheckoutConfig' test.out

#- 218 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'DebugMatchedPaymentMerchantConfig' test.out

#- 219 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "YZJh7B8g", "clientSecret": "bnSu9M2O", "returnUrl": "xD2udaeY", "webHookId": "pCXYSMiy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'TestPayPalConfig' test.out

#- 220 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["87CTqEQB"], "publishableKey": "g36my3sY", "secretKey": "2clrDcai", "webhookSecret": "n0cOVF1z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'TestStripeConfig' test.out

#- 221 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "HwDTI0sJ", "key": "1Q0kphMT", "mchid": "ggSP2SLc", "returnUrl": "uAP7vU97"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'TestWxPayConfig' test.out

#- 222 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "1Czw2nbg", "flowCompletionUrl": "8C7Mvywh", "merchantId": 41, "projectId": 76, "projectSecretKey": "jOjuGzo1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'TestXsollaConfig' test.out

#- 223 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'Fz4tU0aS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetPaymentMerchantConfig' test.out

#- 224 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'n98N8qOU' \
    --body '{"allowedPaymentMethods": ["A0z92RaD"], "apiKey": "e8ngT8LR", "authoriseAsCapture": false, "blockedPaymentMethods": ["MnG1LZyF"], "clientKey": "2mdYY6ZM", "dropInSettings": "fuTYTKsu", "liveEndpointUrlPrefix": "e48qBEBN", "merchantAccount": "AV5BTe6e", "notificationHmacKey": "c1zA92UR", "notificationPassword": "CLSGPmRB", "notificationUsername": "ZWunHW7M", "returnUrl": "Yvr6QA7P", "settings": "pepc92HA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UpdateAdyenConfig' test.out

#- 225 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '94eACdey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'TestAdyenConfigById' test.out

#- 226 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'fUpgiPpf' \
    --body '{"appId": "8nxKJ3dn", "privateKey": "mtPwa64Y", "publicKey": "4gPEKMhh", "returnUrl": "u9a6f3xJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateAliPayConfig' test.out

#- 227 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'NtUlKLlI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'TestAliPayConfigById' test.out

#- 228 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'IAeHbm5M' \
    --body '{"publicKey": "6LsY1VMu", "secretKey": "IEcRls68"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateCheckoutConfig' test.out

#- 229 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'M3MPMRPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'TestCheckoutConfigById' test.out

#- 230 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'epyyMz6z' \
    --body '{"clientID": "fR1pvTYY", "clientSecret": "tDOiEi4R", "returnUrl": "uEcHCSGh", "webHookId": "pOZQFlwO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'UpdatePayPalConfig' test.out

#- 231 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'iuKGDFgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'TestPayPalConfigById' test.out

#- 232 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '49YuKnXk' \
    --body '{"allowedPaymentMethodTypes": ["s0m8ANrc"], "publishableKey": "Ral7ta3f", "secretKey": "ojA3h4MM", "webhookSecret": "W3AJ5zls"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'UpdateStripeConfig' test.out

#- 233 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'FBwjvLYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'TestStripeConfigById' test.out

#- 234 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'mg6avudQ' \
    --body '{"appId": "FF1CPNY9", "key": "u2dVYdgl", "mchid": "OOoCeK0k", "returnUrl": "PKmBqVux"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateWxPayConfig' test.out

#- 235 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '3lXcD8ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'UpdateWxPayConfigCert' test.out

#- 236 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'rtAVCqs8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestWxPayConfigById' test.out

#- 237 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'XT8xy3nJ' \
    --body '{"apiKey": "06KkseA0", "flowCompletionUrl": "ARj9ricf", "merchantId": 0, "projectId": 49, "projectSecretKey": "vnhi8MDd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdateXsollaConfig' test.out

#- 238 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Y4WLHoaU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'TestXsollaConfigById' test.out

#- 239 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'kYnQp5eg' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'UpdateXsollaUIConfig' test.out

#- 240 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'QueryPaymentProviderConfig' test.out

#- 241 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "ivNtQxqW", "region": "RKHohODo", "sandboxTaxJarApiToken": "WOr98kjB", "specials": ["WALLET"], "taxJarApiToken": "s9jjz2Fr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'CreatePaymentProviderConfig' test.out

#- 242 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetAggregatePaymentProviders' test.out

#- 243 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'DebugMatchedPaymentProviderConfig' test.out

#- 244 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetSpecialPaymentProviders' test.out

#- 245 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'aGrcB7dI' \
    --body '{"aggregate": "XSOLLA", "namespace": "5W8tKH8o", "region": "u9SdbxSX", "sandboxTaxJarApiToken": "crEFCwqe", "specials": ["WALLET"], "taxJarApiToken": "IBRdliFQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'UpdatePaymentProviderConfig' test.out

#- 246 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'VUWlUWDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'DeletePaymentProviderConfig' test.out

#- 247 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetPaymentTaxConfig' test.out

#- 248 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "2x1EQU0o", "taxJarApiToken": "epEvcjaS", "taxJarEnabled": false, "taxJarProductCodesMapping": {"Eh6jJnFx": "inIHJ1o7"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'UpdatePaymentTaxConfig' test.out

#- 249 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'aq5Zznd5' \
    'eacobTsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'SyncPaymentOrders' test.out

#- 250 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetRootCategories' test.out

#- 251 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'DownloadCategories' test.out

#- 252 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'RlhreQVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetCategory' test.out

#- 253 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'ID3o8hJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetChildCategories' test.out

#- 254 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'VjKIOAw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetDescendantCategories' test.out

#- 255 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicListCurrencies' test.out

#- 256 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '0DvAHhSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetItemByAppId' test.out

#- 257 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicQueryItems' test.out

#- 258 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'WUvzq1Za' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'PublicGetItemBySku' test.out

#- 259 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '3IBC4vQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicBulkGetItems' test.out

#- 260 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'sUJPfiaJ' \
    'p1rt7OBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicSearchItems' test.out

#- 261 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'BCe6N0eI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetApp' test.out

#- 262 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '65Mn5tng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetItemDynamicData' test.out

#- 263 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'EYXgPVT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetItem' test.out

#- 264 GetPaymentCustomization
eval_tap 0 264 'GetPaymentCustomization # SKIP deprecated' test.out

#- 265 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "CqXDZBVM", "paymentProvider": "WXPAY", "returnUrl": "JeKFO92Y", "ui": "DtaZvJoK", "zipCode": "S0OxyipZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetPaymentUrl' test.out

#- 266 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'uO4N9S2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetPaymentMethods' test.out

#- 267 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'CgHa6XBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetUnpaidPaymentOrder' test.out

#- 268 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'vGRYk5rU' \
    --body '{"token": "tWHCnhmz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'Pay' test.out

#- 269 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'zppV7tKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicCheckPaymentOrderPaidStatus' test.out

#- 270 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'XymWcNlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentPublicConfig' test.out

#- 271 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'aFxYaGHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetQRCode' test.out

#- 272 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'pmBFyOrF' \
    'KtxGNAi0' \
    'ALIPAY' \
    'q4xChPLd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicNormalizePaymentReturnUrl' test.out

#- 273 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '2lOopc7X' \
    'PAYPAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetPaymentTaxValue' test.out

#- 274 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'Vpdd6rCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetRewardByCode' test.out

#- 275 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'QueryRewards1' test.out

#- 276 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'yMrnH9YH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetReward1' test.out

#- 277 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicListStores' test.out

#- 278 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicExistsAnyMyActiveEntitlement' test.out

#- 279 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'Xh7KnCVO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 280 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'KY2zsBRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 281 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'td8QY2OL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 282 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetEntitlementOwnershipToken' test.out

#- 283 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'bijrvfr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetMyWallet' test.out

#- 284 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'hknjWUWd' \
    --body '{"serviceLabel": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicSyncPsnDlcInventory' test.out

#- 285 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'UXHvw4pN' \
    --body '{"appId": "lGLjdBxL", "steamId": "M079pDAb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'SyncSteamDLC' test.out

#- 286 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'TgmsEYEq' \
    --body '{"xstsToken": "2GkYK1vY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'SyncXboxDLC' test.out

#- 287 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'm9flXQ7C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryUserEntitlements' test.out

#- 288 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'QoemnQG0' \
    'dH0NVM9V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUserAppEntitlementByAppId' test.out

#- 289 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'EHTPqDhk' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicQueryUserEntitlementsByAppType' test.out

#- 290 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'u5vnz6Gi' \
    'NMboBJHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserEntitlementByItemId' test.out

#- 291 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'l0LJmpPi' \
    '4mqhruiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserEntitlementBySku' test.out

#- 292 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'ZLGGP5UX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicExistsAnyUserActiveEntitlement' test.out

#- 293 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'kHNTMapp' \
    '5SbonsUJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 294 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'KADr60Ek' \
    'dFrpLsGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 295 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '9yTXWUSC' \
    'QcMsHN7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 296 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'eI22ks7I' \
    '12tAZc8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetUserEntitlement' test.out

#- 297 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'xxLx9XQe' \
    'qNWLm8cN' \
    --body '{"useCount": 70}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicConsumeUserEntitlement' test.out

#- 298 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'bYH5J4Wi' \
    --body '{"code": "JLv9NvHw", "language": "WmJ-339", "region": "WZeUKJJN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicRedeemCode' test.out

#- 299 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'ftRpGgk1' \
    --body '{"excludeOldTransactions": false, "language": "Ere-WMUh", "productId": "dyOdibI1", "receiptData": "LVyqbdY8", "region": "DGZKAuoI", "transactionId": "Kz3Pp3zL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicFulfillAppleIAPItem' test.out

#- 300 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'WUxMzMtS' \
    --body '{"epicGamesJwtToken": "mMmZP8nG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncEpicGamesInventory' test.out

#- 301 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '0FoQP8q7' \
    --body '{"autoAck": false, "language": "SBGa-TT", "orderId": "9IRqCflg", "packageName": "ln6r5f0s", "productId": "5H6lCf3Q", "purchaseTime": 67, "purchaseToken": "a11hLLCg", "region": "w5av4LEx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicFulfillGoogleIAPItem' test.out

#- 302 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'dabD8g2c' \
    --body '{"currencyCode": "vHfMRupD", "price": 0.4144751720364458, "productId": "xbjs3XRd", "serviceLabel": 66}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicReconcilePlayStationStore' test.out

#- 303 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'UJ0GCmfl' \
    --body '{"appId": "IXkgJ6zk", "language": "WOAK-EJfz_484", "region": "zIsfrlzK", "stadiaPlayerId": "pQdd58dZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'SyncStadiaEntitlement' test.out

#- 304 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'P5RvrinN' \
    --body '{"appId": "tvBtqFSk", "currencyCode": "A68mIVYJ", "language": "sv-lHTY", "price": 0.07190610455309188, "productId": "cToXA4M1", "region": "oUFPhgo7", "steamId": "Z6mwNC4F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'SyncSteamInventory' test.out

#- 305 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'Y69mM87j' \
    --body '{"gameId": "oJNOGB83", "language": "ShLp", "region": "b6lKoVqN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'SyncTwitchDropsEntitlement' test.out

#- 306 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'BUzIxOfg' \
    --body '{"currencyCode": "lquS2q2D", "price": 0.21949705302146127, "productId": "r9zvFtKa", "xstsToken": "2mOAqOok"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncXboxInventory' test.out

#- 307 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'V1plxQ2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicQueryUserOrders' test.out

#- 308 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'riTPfipD' \
    --body '{"currencyCode": "67jI2hiZ", "discountedPrice": 21, "ext": {"rtLnh2U1": {}}, "itemId": "RQlMxkfN", "language": "pnTQ-sNZK", "price": 21, "quantity": 68, "region": "gm1wkSWs", "returnUrl": "YvAsu18o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateUserOrder' test.out

#- 309 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'bUdc8mbv' \
    'XcwcgMqO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserOrder' test.out

#- 310 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'XMziXrVd' \
    'sEc3ClFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicCancelUserOrder' test.out

#- 311 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '3mJwusCB' \
    'Te4kLcuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserOrderHistories' test.out

#- 312 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'L40NYgek' \
    'RavpaGTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicDownloadUserOrderReceipt' test.out

#- 313 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    '9BTyCCyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentAccounts' test.out

#- 314 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '4Fw9i6mI' \
    'paypal' \
    'jjCqPVyY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicDeletePaymentAccount' test.out

#- 315 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    's01hEYzW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicQueryUserSubscriptions' test.out

#- 316 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'w3qrcxM0' \
    --body '{"currencyCode": "DPAXQBNM", "itemId": "P7j3xfPa", "language": "zA-KuKN", "region": "PqD4Agfa", "returnUrl": "sBfclBhZ", "source": "jZbLnmgh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicSubscribeSubscription' test.out

#- 317 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'KwPyVIn3' \
    'qaHP7KNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 318 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'lyfrENVQ' \
    'kpcaWHf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserSubscription' test.out

#- 319 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'T2xOOljn' \
    '7c6c9efJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicChangeSubscriptionBillingAccount' test.out

#- 320 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'I02TZxrg' \
    'LBFJEkph' \
    --body '{"immediate": true, "reason": "z0h6WpoV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicCancelSubscription' test.out

#- 321 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'pVc2HBBm' \
    'j6cEi02h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserSubscriptionBillingHistories' test.out

#- 322 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'Xl42ubCR' \
    'fy4GjKn5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetWallet' test.out

#- 323 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ItHXLDZq' \
    'pRhqnR74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicListUserWalletTransactions' test.out


rm -f "tmp.dat"

exit $EXIT_CODE