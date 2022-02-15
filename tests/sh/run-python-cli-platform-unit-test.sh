#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=320

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 ListFulfillmentScripts
$PYTHON -m $MODULE 'platform-list-fulfillment-scripts' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListFulfillmentScripts'
delete_file $TEMP_FILE

#- 2 TestFulfillmentScriptEval
$PYTHON -m $MODULE 'platform-test-fulfillment-script-eval' \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'SMNcoAAO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetFulfillmentScript'
delete_file $TEMP_FILE

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'jKNjfcYH' \
    --body '{"grantDays": "m093aYgB"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateFulfillmentScript'
delete_file $TEMP_FILE

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'U1sqjyK0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'XH45PaRS' \
    --body '{"grantDays": "OFQBtu23"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateFulfillmentScript'
delete_file $TEMP_FILE

#- 7 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCampaigns'
delete_file $TEMP_FILE

#- 8 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "REZ8hRVX", "items": [{"extraSubscriptionDays": 74, "itemId": "GOvDdYiQ", "itemName": "S9i7mV1C", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 31, "name": "xL6ycTQd", "redeemEnd": "1981-03-31T00:00:00Z", "redeemStart": "1977-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["SQWEXL6L"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCampaign'
delete_file $TEMP_FILE

#- 9 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'E1YHo9m1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaign'
delete_file $TEMP_FILE

#- 10 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '26ZWc8hH' \
    --body '{"description": "tWvbNYqg", "items": [{"extraSubscriptionDays": 92, "itemId": "qslArFPi", "itemName": "HUIvaCv8", "quantity": 20}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 55, "name": "pdsJLhsV", "redeemEnd": "1983-09-03T00:00:00Z", "redeemStart": "1982-05-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["oot0B7WO"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCampaign'
delete_file $TEMP_FILE

#- 11 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'fercZdpM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaignDynamic'
delete_file $TEMP_FILE

#- 12 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRootCategories'
delete_file $TEMP_FILE

#- 13 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'ci37Ds7Y' \
    --body '{"categoryPath": "SfExaI3u", "localizationDisplayNames": {"zLteMbFA": "lt4hr7Hm"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCategory'
delete_file $TEMP_FILE

#- 14 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListCategoriesBasic'
delete_file $TEMP_FILE

#- 15 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'OYiBA5lt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCategory'
delete_file $TEMP_FILE

#- 16 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'AOXmlG6e' \
    'h1dTdoTF' \
    --body '{"localizationDisplayNames": {"pBIcuC1d": "QY93OJnJ"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCategory'
delete_file $TEMP_FILE

#- 17 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '6Te9vD8l' \
    'dz7Hu8AD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCategory'
delete_file $TEMP_FILE

#- 18 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '79kdWunv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetChildCategories'
delete_file $TEMP_FILE

#- 19 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDescendantCategories'
delete_file $TEMP_FILE

#- 20 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'yhhERoGg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCodes'
delete_file $TEMP_FILE

#- 21 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'drysMizB' \
    --body '{"quantity": 65}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCodes'
delete_file $TEMP_FILE

#- 22 Download
$PYTHON -m $MODULE 'platform-download' \
    'SRdP2l7D' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Download'
delete_file $TEMP_FILE

#- 23 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'NSZ8Aq0X' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkDisableCodes'
delete_file $TEMP_FILE

#- 24 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'iPLQXSe0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkEnableCodes'
delete_file $TEMP_FILE

#- 25 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '7ZddOGTM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRedeemHistory'
delete_file $TEMP_FILE

#- 26 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'lJjBwj9H' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCode'
delete_file $TEMP_FILE

#- 27 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'JHQKseEd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableCode'
delete_file $TEMP_FILE

#- 28 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'SXRDSvgu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableCode'
delete_file $TEMP_FILE

#- 29 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListCurrencies'
delete_file $TEMP_FILE

#- 30 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "auw1xT7e", "currencySymbol": "MwSl9MLH", "currencyType": "REAL", "decimals": 91, "localizationDescriptions": {"J2ulNzBv": "wJaQa547"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCurrency'
delete_file $TEMP_FILE

#- 31 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'JllvA8RW' \
    --body '{"localizationDescriptions": {"SpabUt7x": "k6QxyWhf"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCurrency'
delete_file $TEMP_FILE

#- 32 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'qoWfJw2o' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCurrency'
delete_file $TEMP_FILE

#- 33 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '8oWUqvPC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencyConfig'
delete_file $TEMP_FILE

#- 34 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'Z2HzT7NX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencySummary'
delete_file $TEMP_FILE

#- 35 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetDLCItemConfig'
delete_file $TEMP_FILE

#- 36 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "mWDlXsuN", "rewards": [{"currency": {"currencyCode": "IdQJR5ls", "namespace": "NOlvkfwa"}, "item": {"itemId": "SbnsuLCg", "itemSku": "ToxuVTek", "itemType": "Jgvg6h5H"}, "quantity": 68, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDLCItemConfig'
delete_file $TEMP_FILE

#- 37 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDLCItemConfig'
delete_file $TEMP_FILE

#- 38 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlatformDLCConfig'
delete_file $TEMP_FILE

#- 39 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"0DviplEk": "4vj3LDp4"}}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlatformDLCConfig'
delete_file $TEMP_FILE

#- 40 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlatformDLCConfig'
delete_file $TEMP_FILE

#- 41 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryEntitlements'
delete_file $TEMP_FILE

#- 42 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'yqDt8QUZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetEntitlement'
delete_file $TEMP_FILE

#- 43 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryFulfillmentHistories'
delete_file $TEMP_FILE

#- 44 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAppleIAPConfig'
delete_file $TEMP_FILE

#- 45 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "DpxlHasi", "password": "nGcjrkmR"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAppleIAPConfig'
delete_file $TEMP_FILE

#- 46 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 47 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 48 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "MttgjDSa"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 49 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 50 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGoogleIAPConfig'
delete_file $TEMP_FILE

#- 51 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "IVBmft3U", "serviceAccountId": "dg7p9PGm"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 52 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 53 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleP12File'
delete_file $TEMP_FILE

#- 54 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetIAPItemConfig'
delete_file $TEMP_FILE

#- 55 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "Y2H5kX4M", "platformProductIdMap": {"sisSX28n": "ARxWRpv5"}}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "ou5xtvd2"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"publisherAuthenticationKey": "8OUfCt8U"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTwitchIAPConfig'
delete_file $TEMP_FILE

#- 67 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "JC5flNyj", "clientSecret": "6HsTtX8P", "organizationId": "3llnaaS9"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTwitchIAPConfig'
delete_file $TEMP_FILE

#- 68 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTwitchIAPConfig'
delete_file $TEMP_FILE

#- 69 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetXblIAPConfig'
delete_file $TEMP_FILE

#- 70 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "lqyygPcf"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblIAPConfig'
delete_file $TEMP_FILE

#- 71 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteXblAPConfig'
delete_file $TEMP_FILE

#- 72 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblBPCertFile'
delete_file $TEMP_FILE

#- 73 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'kJIxfQZz' \
    --body '{"categoryPath": "a8kNVbDx", "targetItemId": "VMq7HJk0", "targetNamespace": "F89xAc3Y"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncInGameItem'
delete_file $TEMP_FILE

#- 74 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'VfaENtrl' \
    --body '{"appId": "0pTKZTXq", "appType": "DEMO", "baseAppId": "HuBMYQSA", "boothName": "2jz1ZOpd", "categoryPath": "OjSyMddB", "clazz": "41JuMf7R", "displayOrder": 93, "entitlementType": "CONSUMABLE", "ext": {"BHRj8IiR": {}}, "features": ["imRllHT6"], "images": [{"as": "Dc40vFFA", "caption": "6gpU7EW3", "height": 46, "imageUrl": "1dCpm55g", "smallImageUrl": "OeqQIqcJ", "width": 95}], "itemIds": ["KmBM1J1I"], "itemQty": {"buTrrkbm": 41}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"OqmEnDXI": {"description": "WrBPlSay", "localExt": {"46mv71BA": {}}, "longDescription": "ZAOjtFJ2", "title": "vmTj7tT7"}}, "maxCount": 90, "maxCountPerUser": 67, "name": "WDdCkIsZ", "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 34, "fixedTrialCycles": 96, "graceDays": 45}, "regionData": {"PHcyFAdA": [{"currencyCode": "tYciLIgR", "currencyNamespace": "wFRr0gwB", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1998-06-15T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1995-03-26T00:00:00Z", "discountedPrice": 94, "expireAt": "1979-10-18T00:00:00Z", "price": 39, "purchaseAt": "1986-04-13T00:00:00Z", "trialPrice": 36}]}, "seasonType": "PASS", "sku": "ip1tw3L7", "stackable": false, "status": "ACTIVE", "tags": ["9pqtv6Jf"], "targetCurrencyCode": "PZwcCVOX", "targetNamespace": "cVa80TmC", "thumbnailUrl": "wtD2lAH0", "useCount": 29}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateItem'
delete_file $TEMP_FILE

#- 75 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '6NdcBIgz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemByAppId'
delete_file $TEMP_FILE

#- 76 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryItems'
delete_file $TEMP_FILE

#- 77 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 78 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'rDyWpFBY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemBySku'
delete_file $TEMP_FILE

#- 79 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'GmmBawMy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItemBySku'
delete_file $TEMP_FILE

#- 80 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'oKyNpdAa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemIdBySku'
delete_file $TEMP_FILE

#- 81 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'sm8xwUfz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetLocaleItems'
delete_file $TEMP_FILE

#- 82 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'OlQiZY4N' \
    'bOQXJ7uO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SearchItems'
delete_file $TEMP_FILE

#- 83 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUncategorizedItems'
delete_file $TEMP_FILE

#- 84 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'TzNMvuq2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetItem'
delete_file $TEMP_FILE

#- 85 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'tNl4CX4I' \
    'jiK4DEUJ' \
    --body '{"appId": "RVK3l9Eb", "appType": "GAME", "baseAppId": "0RH8vS1s", "boothName": "meOlngrd", "categoryPath": "TXCzaPBt", "clazz": "kZMio4wc", "displayOrder": 48, "entitlementType": "DURABLE", "ext": {"loVS3rYp": {}}, "features": ["8QtcEmCE"], "images": [{"as": "Vc75Ufey", "caption": "pWjDNhzC", "height": 75, "imageUrl": "5sWS2qwO", "smallImageUrl": "763iEklk", "width": 50}], "itemIds": ["Lm88LpLu"], "itemQty": {"YRO3C55y": 66}, "itemType": "BUNDLE", "listable": true, "localizations": {"K2JaqenD": {"description": "Gn7a2NUp", "localExt": {"lWiLjq06": {}}, "longDescription": "n6a0rW8E", "title": "fkpaXtwY"}}, "maxCount": 70, "maxCountPerUser": 0, "name": "Q4WbwNms", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 38, "fixedTrialCycles": 18, "graceDays": 61}, "regionData": {"urH8eloJ": [{"currencyCode": "zNKtRUaT", "currencyNamespace": "z1ETdsmw", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1976-03-21T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1978-03-09T00:00:00Z", "discountedPrice": 84, "expireAt": "1976-02-25T00:00:00Z", "price": 4, "purchaseAt": "1991-10-29T00:00:00Z", "trialPrice": 2}]}, "seasonType": "PASS", "sku": "lo6DMNpP", "stackable": true, "status": "INACTIVE", "tags": ["TQ1UpjfU"], "targetCurrencyCode": "6wJhy1jO", "targetNamespace": "VkkUlS79", "thumbnailUrl": "527EZ25I", "useCount": 1}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateItem'
delete_file $TEMP_FILE

#- 86 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '8uCeZFlL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteItem'
delete_file $TEMP_FILE

#- 87 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'tEVpDAEb' \
    --body '{"count": 52, "orderNo": "82jy74lq"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireItem'
delete_file $TEMP_FILE

#- 88 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '0pDE5xRw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetApp'
delete_file $TEMP_FILE

#- 89 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'h5b45ebp' \
    'cM7ScSs3' \
    --body '{"carousel": [{"alt": "UOpAwIp9", "previewUrl": "rRtn1PcC", "thumbnailUrl": "xdbumeYg", "type": "image", "url": "EBWRQiW3", "videoSource": "vimeo"}], "developer": "FfU8icH4", "forumUrl": "081gRB1G", "genres": ["Racing"], "localizations": {"LfLg4RYu": {"announcement": "EbgUDEcJ", "slogan": "yIvsPwOr"}}, "platformRequirements": {"0BmV5iFv": [{"additionals": "fwFjTSmI", "directXVersion": "EqoLyLeU", "diskSpace": "GmomGX9s", "graphics": "XTZ0v8pq", "label": "Lfc5SwGn", "osVersion": "ReUULDX4", "processor": "QUIbb5nh", "ram": "68ZnyUtR", "soundCard": "vW9hNBSF"}]}, "platforms": ["Linux"], "players": ["MMO"], "primaryGenre": "Indie", "publisher": "OmjkFrFV", "releaseDate": "1984-06-06T00:00:00Z", "websiteUrl": "0xF34Xpt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateApp'
delete_file $TEMP_FILE

#- 90 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '6ZlTTic0' \
    'kr2a0nI2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableItem'
delete_file $TEMP_FILE

#- 91 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'oo7UHCJK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemDynamicData'
delete_file $TEMP_FILE

#- 92 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '5sp0aCvI' \
    'q3aHVYIl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableItem'
delete_file $TEMP_FILE

#- 93 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'ewLRuHY8' \
    '3bGj0HTe' \
    'eWXlIcRi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FeatureItem'
delete_file $TEMP_FILE

#- 94 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'dqctDpyg' \
    'Y0ax476E' \
    'D4MMO9Tw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DefeatureItem'
delete_file $TEMP_FILE

#- 95 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '2JH0qhWI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItem'
delete_file $TEMP_FILE

#- 96 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'wHWTgzJF' \
    --body '{"orderNo": "RYw6t1IK"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ReturnItem'
delete_file $TEMP_FILE

#- 97 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryKeyGroups'
delete_file $TEMP_FILE

#- 98 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "ZLO6V4Od", "name": "e46QmCid", "status": "ACTIVE", "tags": ["dpP7RTC5"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateKeyGroup'
delete_file $TEMP_FILE

#- 99 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '87lmUmBz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroup'
delete_file $TEMP_FILE

#- 100 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'iPZBnpOf' \
    --body '{"description": "kllxfq0N", "name": "srSjw5Ho", "status": "ACTIVE", "tags": ["0blM1d5M"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateKeyGroup'
delete_file $TEMP_FILE

#- 101 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'StYGczLI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroupDynamic'
delete_file $TEMP_FILE

#- 102 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'NlEC0OEs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListKeys'
delete_file $TEMP_FILE

#- 103 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'E3yzIsUP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UploadKeys'
delete_file $TEMP_FILE

#- 104 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryOrders'
delete_file $TEMP_FILE

#- 105 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrderStatistics'
delete_file $TEMP_FILE

#- 106 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '0NjluOrG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrder'
delete_file $TEMP_FILE

#- 107 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ZTzsLW7F' \
    --body '{"description": "jfs9nIkc"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RefundOrder'
delete_file $TEMP_FILE

#- 108 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 109 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "UEanjKHb", "privateKey": "Xfk1zxdz"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 110 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentNotifications'
delete_file $TEMP_FILE

#- 111 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentOrders'
delete_file $TEMP_FILE

#- 112 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "xg0UXcRy", "currencyNamespace": "Hi3u8BzV", "customParameters": {"Wu1tOmhU": {}}, "description": "tCgcpvGr", "extOrderNo": "EbcZUDEx", "extUserId": "H1tayOGX", "itemType": "SEASON", "language": "MRjMCtOJ", "metadata": {"sEijlrbp": "yyEcQxVg"}, "notifyUrl": "JIjMZqcW", "omitNotification": false, "price": 76, "recurringPaymentOrderNo": "l6dqrpD4", "region": "tnc3ZRB3", "returnUrl": "IkdtPfAJ", "sandbox": true, "sku": "omwenJvQ", "subscriptionId": "8grtQSv6", "targetNamespace": "EcALcMIP", "targetUserId": "ms5bT51M", "title": "4yko8S0E"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 113 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'nGLvGvfu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 114 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'SyCTyjj4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 115 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'mCaiuMGK' \
    --body '{"extTxId": "OF5GJJoo", "paymentMethod": "SXUl3YU3", "paymentProvider": "STRIPE"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 116 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'BABnOlxD' \
    --body '{"description": "znICQVyq"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 117 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'Bg34WTtD' \
    --body '{"amount": 21, "currencyCode": "n0rtn6t0", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 60, "vat": 1}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 118 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'Q1rUQYCN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 119 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "TiDX4jE3", "eventTopic": "M2IsTHu8", "maxAwarded": 85, "maxAwardedPerUser": 44, "namespaceExpression": "NyOlXfIW", "rewardCode": "d0mcq5T4", "rewardConditions": [{"condition": "SUc7cWfC", "conditionName": "KK6Dij1g", "eventName": "FcenEMyS", "rewardItems": [{"duration": 83, "itemId": "fhxBenDi", "quantity": 91}]}], "userIdExpression": "iAqFYmFK"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 120 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 121 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportRewards'
delete_file $TEMP_FILE

#- 122 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportRewards'
delete_file $TEMP_FILE

#- 123 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'aELmmll6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 124 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'oexId1OK' \
    --body '{"description": "GUN2Uznd", "eventTopic": "7uVa7t14", "maxAwarded": 48, "maxAwardedPerUser": 43, "namespaceExpression": "SYSV52bH", "rewardCode": "ifCIf4ts", "rewardConditions": [{"condition": "uu6Pkam6", "conditionName": "tFSYFt4Z", "eventName": "xA2PzZFR", "rewardItems": [{"duration": 20, "itemId": "BNlg6hn5", "quantity": 33}]}], "userIdExpression": "usKyZAuV"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 125 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '6uUvqM0l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 126 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'V6UZMlEb' \
    --body '{"payload": {"xHNgJRiQ": {}}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckEventCondition'
delete_file $TEMP_FILE

#- 127 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListStores'
delete_file $TEMP_FILE

#- 128 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "ExaunjdA", "defaultRegion": "qnHUz44t", "description": "x4O6hamP", "supportedLanguages": ["wNoi071e"], "supportedRegions": ["zDK56JFI"], "title": "Ge1IMUCL"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStore'
delete_file $TEMP_FILE

#- 129 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ImportStore'
delete_file $TEMP_FILE

#- 130 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStore'
delete_file $TEMP_FILE

#- 131 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePublishedStore'
delete_file $TEMP_FILE

#- 132 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStoreBackup'
delete_file $TEMP_FILE

#- 133 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RollbackPublishedStore'
delete_file $TEMP_FILE

#- 134 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'cN0DsaD5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 135 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'FyBsFe9O' \
    --body '{"defaultLanguage": "YEJVsYff", "defaultRegion": "mhyx6J25", "description": "PrM4S3cB", "supportedLanguages": ["8m17hEeL"], "supportedRegions": ["LgoaYth6"], "title": "zcf8eA45"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 136 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'OMvObWej' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 137 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'o9LfGeeg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 138 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'JMaBGR6D' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExportStore'
delete_file $TEMP_FILE

#- 139 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySubscriptions'
delete_file $TEMP_FILE

#- 140 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    '1ZoZEZQk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 141 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'J8DSqFnh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 142 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'dKvjFCFb' \
    --body '{"orderNo": "SFlEWoMP"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 143 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'dgK5zn62' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 144 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'mhnFSpCT' \
    --body '{"count": 22, "orderNo": "DNBOcygv"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 145 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'v2LAgfBG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 146 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'VzanbKYs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 147 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'B0gqJ8Vh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 148 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'YSikJl2p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 149 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '9rBx8N5e' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 150 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'gapqxDy4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 151 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'cLfNjzzE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 152 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'ZYA8jIkM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 153 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'Jb7cZ2bP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 154 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'saLLpEBV' \
    --body '[{"endDate": "1986-11-02T00:00:00Z", "grantedCode": "k5AsKaF2", "itemId": "P44lXkI3", "itemNamespace": "zdiRiC5I", "language": "bPit71JW", "quantity": 23, "region": "YCoi4nDf", "source": "REDEEM_CODE", "startDate": "1999-12-01T00:00:00Z", "storeId": "SYxEVOry"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 155 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'VuZYmgUe' \
    'EPB5AGPg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 156 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'vk0Zthaj' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 157 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'BA4azRz0' \
    'd56smobo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 158 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'r4p1PlgQ' \
    'B9EcNGOe' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 159 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'BRY6G5ae' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 160 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '07deDLaZ' \
    '["8JCvbeTf"]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 161 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'W0hgzrab' \
    'LJxEwJrE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 162 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'BmQ64haN' \
    'OzlGu68U' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 163 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'YyupjdDe' \
    'tnoT0rfW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 164 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'tVPwQfq6' \
    'V92gbfPo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 165 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'uNdmP7fc' \
    'kVnuDGvY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 166 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Ib1p5tcR' \
    '5z8ZJLjS' \
    --body '{"endDate": "1987-01-16T00:00:00Z", "nullFieldList": ["aR3X4tZm"], "startDate": "1982-05-15T00:00:00Z", "status": "INACTIVE", "useCount": 81}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 167 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'nsEg49eX' \
    'p0xQkZ2J' \
    --body '{"useCount": 18}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 168 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'uwWWy0tU' \
    '11PCeSrv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 169 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'ejUKwVfF' \
    '37Vr7mkD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 170 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'zFBI1Vwh' \
    'kVSKDlNF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 171 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'OUHBJsvT' \
    'sqk9hg4h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 172 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'j6nUdebW' \
    --body '{"duration": 93, "endDate": "1980-03-23T00:00:00Z", "itemId": "bPkkZAk0", "itemSku": "1f1KxCtW", "language": "ADU2guN6", "order": {"currency": {"currencyCode": "U9w13W1K", "currencySymbol": "9TZQ4qRL", "currencyType": "VIRTUAL", "decimals": 17, "namespace": "5wowE36r"}, "ext": {"fmM0CCs3": {}}, "free": false}, "orderNo": "sY8WgwSx", "quantity": 58, "region": "I5GH9bv9", "source": "ACHIEVEMENT", "startDate": "1998-09-19T00:00:00Z", "storeId": "pA6pzjHp"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 173 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ZO0E9iLg' \
    --body '{"code": "RPJK3nBa", "language": "e3GOgbQr", "region": "qra0Ptkf"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 174 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'vOpY2ram' \
    --body '{"rewards": [{"currency": {"currencyCode": "p5lnBn6x", "namespace": "mBkfMtC6"}, "item": {"itemId": "6hFq0kPO", "itemSku": "kORm2Xjl", "itemType": "NEE5ecPz"}, "quantity": 53, "type": "ITEM"}], "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillRewards'
delete_file $TEMP_FILE

#- 175 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '0ySJHfPl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 176 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'oP1XkYK4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 177 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'MgIsDSFM' \
    --body '{"language": "PyMhyw1O", "productId": "LZPVwwxH", "region": "4BIDJuDo", "type": "GOOGLE"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 178 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'MMftll8N' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 179 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '0VvChHz9' \
    'urmt7QWv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 180 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'E8s6Uz8B' \
    'RuYWDTtL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 181 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '6MTTRkCb' \
    'b9S5Q1IV' \
    --body '{"status": "REFUND_FAILED", "statusReason": "GT88prRE"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 182 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'BgYOWdHJ' \
    '9JumohtU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 183 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '13gf7TRi' \
    'gNZj5w5y' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 184 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '3HmK8QVO' \
    'a62eQZtb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 185 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'LLcF671W' \
    'Ltv38Hec' \
    --body '{"additionalData": {"cardSummary": "czopFmeR"}, "authorisedTime": "1982-05-02T00:00:00Z", "chargebackReversedTime": "1972-10-12T00:00:00Z", "chargebackTime": "1984-07-13T00:00:00Z", "chargedTime": "1975-04-13T00:00:00Z", "createdTime": "1989-08-11T00:00:00Z", "currency": {"currencyCode": "4KzekiSz", "currencySymbol": "eyolnOQt", "currencyType": "REAL", "decimals": 28, "namespace": "VHgCytC6"}, "customParameters": {"lRG98Yxn": {}}, "extOrderNo": "HbRdoTKK", "extTxId": "euSjfZe9", "extUserId": "i1osghF1", "issuedAt": "1974-07-25T00:00:00Z", "metadata": {"i1Nl47sy": "J5ibzSHZ"}, "namespace": "eCLIvWPV", "nonceStr": "RsdEqA61", "paymentMethod": "yTrMgsyc", "paymentMethodFee": 91, "paymentOrderNo": "gmPzc20E", "paymentProvider": "ALIPAY", "paymentProviderFee": 81, "paymentStationUrl": "5dMqGDlS", "price": 83, "refundedTime": "1996-05-12T00:00:00Z", "salesTax": 61, "sandbox": false, "sku": "zHjL6ZbX", "status": "AUTHORISE_FAILED", "statusReason": "G6DSmpp3", "subscriptionId": "op8htaRL", "subtotalPrice": 47, "targetNamespace": "tW4PvFkE", "targetUserId": "STULat5F", "tax": 74, "totalPrice": 8, "totalTax": 4, "txEndTime": "1992-05-06T00:00:00Z", "type": "6PWhZmmK", "userId": "z41i1Tp7", "vat": 63}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 186 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ipJHahVi' \
    'JvLYW0kd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 187 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'mlk2luqS' \
    --body '{"currencyCode": "OOA2VOZB", "currencyNamespace": "oNbB98Pu", "customParameters": {"SGykqFzP": {}}, "description": "wSMXT53b", "extOrderNo": "BuL38beO", "extUserId": "YDVuHZQ9", "itemType": "CODE", "language": "6w23Wf8i", "metadata": {"EQo72sH0": "aRdcDlDy"}, "notifyUrl": "GcsfIuI4", "omitNotification": true, "price": 42, "recurringPaymentOrderNo": "5lEJpK1A", "region": "yRlzsrRX", "returnUrl": "EFZivQOH", "sandbox": true, "sku": "VicNrats", "subscriptionId": "vvHLmIoh", "title": "fNISLXMD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 188 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'WDdm5FE4' \
    'lliQMnut' \
    --body '{"description": "JbpEo4mU"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 189 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'NHFtdml2' \
    --body '{"code": "xNviWacJ", "orderNo": "c3Fm7Z54"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 190 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '8uuKgoCB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 191 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'qS5uIdCb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 192 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'wCeeq9ou' \
    --body '{"grantDays": 60, "itemId": "dDtjOgsy", "language": "pLkm2ZYe", "reason": "w5H7Zm0g", "region": "nYyj6MXf", "source": "9G1ntyeb"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 193 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'voeHenAA' \
    'LKt7EfxI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 194 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'H446oUnP' \
    '2S74unXw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 195 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'g0JKqVWW' \
    '1rjK1epw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 196 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'kAvcsYvb' \
    'gfBVPpTa' \
    --body '{"immediate": true, "reason": "q7TKiNXm"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 197 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'z7eMrMD5' \
    'TbaUxTCT' \
    --body '{"grantDays": 26, "reason": "g0xjtdBr"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 198 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'js3Kiykt' \
    '2Ck2gOlS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 199 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'atECZ2Ug' \
    'wQLqDqYS' \
    --body '{"additionalData": {"cardSummary": "xTPuVlBq"}, "authorisedTime": "1975-05-20T00:00:00Z", "chargebackReversedTime": "1972-05-07T00:00:00Z", "chargebackTime": "1998-07-13T00:00:00Z", "chargedTime": "1982-04-13T00:00:00Z", "createdTime": "1980-08-27T00:00:00Z", "currency": {"currencyCode": "Tl1SvhQu", "currencySymbol": "dsjIhXdx", "currencyType": "REAL", "decimals": 89, "namespace": "oWpnnxgX"}, "customParameters": {"7BCPMqzQ": {}}, "extOrderNo": "IxibhpNY", "extTxId": "sHtdB3Ik", "extUserId": "juaZqhJi", "issuedAt": "1976-05-17T00:00:00Z", "metadata": {"ZkSSKgP5": "rxCR77G9"}, "namespace": "d5CA1GOR", "nonceStr": "SbL9n0db", "paymentMethod": "WDEupmdL", "paymentMethodFee": 84, "paymentOrderNo": "zPnNfBAc", "paymentProvider": "WXPAY", "paymentProviderFee": 35, "paymentStationUrl": "bkCfdHIZ", "price": 2, "refundedTime": "1997-04-17T00:00:00Z", "salesTax": 38, "sandbox": true, "sku": "mBuS9V2p", "status": "CHARGEBACK", "statusReason": "Z23UHmk0", "subscriptionId": "lpJ4JLl0", "subtotalPrice": 32, "targetNamespace": "i7L2oDUo", "targetUserId": "VRUb39j2", "tax": 83, "totalPrice": 89, "totalTax": 30, "txEndTime": "1997-01-17T00:00:00Z", "type": "KmjRUbZV", "userId": "BVS7OK2Z", "vat": 34}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 200 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'dcsckMek' \
    'ROWZ2KUT' \
    --body '{"count": 33, "orderNo": "kK2eFaGL"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 201 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    'oSmEEPbL' \
    'ywJsyUie' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 202 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '6fZgLllU' \
    'PsO8lg46' \
    --body '{"amount": 88, "reason": "i7006vL2", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 203 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '4aajDAOx' \
    '0iJjYlea' \
    --body '{"amount": 21}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 204 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'tqv2Wklj' \
    'QuD5mnJO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 205 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'NqHGq8mB' \
    '7mF2lMFc' \
    --body '{"amount": 1, "reason": "ghFXJIJf"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 206 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'lRHFcsIq' \
    'Cy4xDifS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 207 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'SQ5On2cc' \
    'Ecl3xeiO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 208 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    '4bwF5JOj' \
    'GoGxKM3q' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListUserWalletTransactions'
delete_file $TEMP_FILE

#- 209 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryWallets'
delete_file $TEMP_FILE

#- 210 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    'Mce5tfLc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 211 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'pjFZMKCb' \
    'p0pEbLCL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 212 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["FpHxMYF8"], "apiKey": "36075xEp", "authoriseAsCapture": true, "blockedPaymentMethods": ["dnYtpja5"], "liveEndpointUrlPrefix": "ig2isQZg", "merchantAccount": "a6Vy76iz", "notificationHmacKey": "PiQRjYa8", "notificationPassword": "fv5fIt22", "notificationUsername": "tIZhjhgk", "returnUrl": "igW22zXM", "settings": "WXfbcM0G"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 213 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "IALIbFCQ", "privateKey": "gBcLNT6i", "publicKey": "OQVYx5rW", "returnUrl": "2gMsI1aY"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 214 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "BitSn3UD", "secretKey": "eKj97I4W"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfig'
delete_file $TEMP_FILE

#- 215 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 216 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "YXLqjN7k", "clientSecret": "tOBTraBx", "returnUrl": "WRTVuYEq", "webHookId": "GlKDwTKX"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 217 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["BrXiQcd9"], "publishableKey": "IW8kiCKe", "secretKey": "QJWZBvcq", "webhookSecret": "1ETvWBxY"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 218 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "ZJh7B8gb", "key": "nSu9M2Ox", "mchid": "D2udaeYp", "returnUrl": "CXYSMiy8"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 219 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "7CTqEQBg", "flowCompletionUrl": "36my3sY2", "merchantId": 4, "projectId": 22, "projectSecretKey": "rDcain0c"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 220 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'OVF1zHwD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 221 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'TI0sJ1Q0' \
    --body '{"allowedPaymentMethods": ["kphMTggS"], "apiKey": "P2SLcuAP", "authoriseAsCapture": true, "blockedPaymentMethods": ["U971Czw2"], "liveEndpointUrlPrefix": "nbg8C7Mv", "merchantAccount": "ywhu6MjO", "notificationHmacKey": "juGzo1Fz", "notificationPassword": "4tU0aSn9", "notificationUsername": "8N8qOUA0", "returnUrl": "z92RaDe8", "settings": "ngT8LRQk"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 222 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'MnG1LZyF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 223 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '2mdYY6ZM' \
    --body '{"appId": "fuTYTKsu", "privateKey": "e48qBEBN", "publicKey": "AV5BTe6e", "returnUrl": "c1zA92UR"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 224 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'CLSGPmRB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 225 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'ZWunHW7M' \
    --body '{"publicKey": "Yvr6QA7P", "secretKey": "pepc92HA"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 226 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '94eACdey' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 227 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'fUpgiPpf' \
    --body '{"clientID": "8nxKJ3dn", "clientSecret": "mtPwa64Y", "returnUrl": "4gPEKMhh", "webHookId": "u9a6f3xJ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 228 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'NtUlKLlI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 229 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'IAeHbm5M' \
    --body '{"allowedPaymentMethodTypes": ["6LsY1VMu"], "publishableKey": "IEcRls68", "secretKey": "M3MPMRPB", "webhookSecret": "epyyMz6z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 230 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'fR1pvTYY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 231 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'tDOiEi4R' \
    --body '{"appId": "uEcHCSGh", "key": "pOZQFlwO", "mchid": "iuKGDFgK", "returnUrl": "49YuKnXk"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 232 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    's0m8ANrc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 233 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'Ral7ta3f' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 234 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'ojA3h4MM' \
    --body '{"apiKey": "W3AJ5zls", "flowCompletionUrl": "FBwjvLYv", "merchantId": 25, "projectId": 12, "projectSecretKey": "6avudQFF"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 235 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '1CPNY9u2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 236 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'dVYdglOO' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaUIConfig'
delete_file $TEMP_FILE

#- 237 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "PKmBqVux", "region": "3lXcD8ae", "sandboxTaxJarApiToken": "rtAVCqs8", "specials": ["ALIPAY"], "taxJarApiToken": "y3nJ06Kk", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 239 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 240 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 241 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 242 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'A0ARj9ri' \
    --body '{"aggregate": "XSOLLA", "namespace": "fayvnhi8", "region": "MDdY4WLH", "sandboxTaxJarApiToken": "oaUkYnQp", "specials": ["XSOLLA"], "taxJarApiToken": "gdmVE8Im", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 243 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'NtQxqWRK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 244 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxConfig'
delete_file $TEMP_FILE

#- 245 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "HohODoWO", "taxJarApiToken": "r98kjBUa", "taxJarEnabled": true, "taxJarProductCodesMapping": {"9jjz2Frg": "iaGrcB7d"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 246 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'IOVKIPSJ' \
    'JHo5W8tK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncPaymentOrders'
delete_file $TEMP_FILE

#- 247 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRootCategories'
delete_file $TEMP_FILE

#- 248 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadCategories'
delete_file $TEMP_FILE

#- 249 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'H8ou9Sdb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 250 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'xSXcrEFC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 251 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'wqeGNLdI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetDescendantCategories'
delete_file $TEMP_FILE

#- 252 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListCurrencies'
delete_file $TEMP_FILE

#- 253 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'BRdliFQV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemByAppId'
delete_file $TEMP_FILE

#- 254 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryItems'
delete_file $TEMP_FILE

#- 255 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'MKEzVUWl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 256 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'UWDs2x1E' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 257 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'QU0oepEv' \
    'cjaSgEh6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 258 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'jJnFxinI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 259 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'HJ1o7aq5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 260 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'Zznd5eac' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 261 GetPaymentCustomization
$PYTHON -m $MODULE 'platform-get-payment-customization' \
    'PAYPAL' \
    'bTsuRlhr' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCustomization'
delete_file $TEMP_FILE

#- 262 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "eQVFID3o", "paymentProvider": "XSOLLA", "returnUrl": "JWVjKIOA", "ui": "w70DvAHh", "zipCode": "SGWUvzq1"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 263 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'Za3IBC4v' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 264 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'QFsUJPfi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 265 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'aJp1rt7O' \
    --body '{"token": "BgBCe6N0"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 266 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'eI65Mn5t' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 267 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    'gEYXgPVT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 268 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '5CqXDZBV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 269 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'MJyJeKFO' \
    '92YDtaZv' \
    'PAYPAL' \
    'KS0Oxyip' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 270 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'ZuO4N9S2' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 271 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'gHa6XBcv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetRewardByCode'
delete_file $TEMP_FILE

#- 272 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards1'
delete_file $TEMP_FILE

#- 273 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'GRYk5rUt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward1'
delete_file $TEMP_FILE

#- 274 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListStores'
delete_file $TEMP_FILE

#- 275 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 276 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'WHCnhmzz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 277 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'ppV7tKNK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 278 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'YUQVBXym' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 279 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 280 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'WcNlHaFx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 281 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'YaGHUpmB' \
    --body '{"serviceLabel": 62}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 282 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'yOrFKtxG' \
    --body '{"appId": "NAi0fq4x", "steamId": "ChPLd2lO"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamDLC'
delete_file $TEMP_FILE

#- 283 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'opc7XoVp' \
    --body '{"xstsToken": "dd6rCpyM"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxDLC'
delete_file $TEMP_FILE

#- 284 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'rnH9YHXh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 285 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '7KnCVOKY' \
    '2zsBRGtd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 286 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '8QY2OLbi' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 287 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'rvfr8hkn' \
    'jWUWdMUX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 288 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'Hvw4pNlG' \
    'LjdBxLM0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 289 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '79pDAbTg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 290 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'msEYEq2G' \
    'kYK1vYm9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 291 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'flXQ7CQo' \
    'emnQG0dH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 292 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '0NVM9VEH' \
    'TPqDhkcu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 293 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '5vnz6GiN' \
    'MboBJHml' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 294 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '0LJmpPi4' \
    'mqhruiCZ' \
    --body '{"useCount": 74}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 295 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'GGP5UXkH' \
    --body '{"code": "NTMapp5S", "language": "bonsUJKA", "region": "Dr60EkdF"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 296 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'rpLsGt9y' \
    --body '{"excludeOldTransactions": true, "language": "QcMsHN7r", "productId": "eI22ks7I", "receiptData": "12tAZc8s", "region": "xxLx9XQe", "transactionId": "qNWLm8cN"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 297 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'JbYH5J4W' \
    --body '{"epicGamesJwtToken": "iJLv9NvH"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 298 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'wtw2Mjcy' \
    --body '{"language": "9ZL6Zs5B", "orderId": "u2XYopLW", "packageName": "ZeUKJJNf", "productId": "tRpGgk1i", "purchaseTime": 36, "purchaseToken": "eREzzRG6", "region": "z9wmuHdd"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 299 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'yOdibI1L' \
    --body '{"currencyCode": "VyqbdY8D", "price": 0.5120745585035149, "productId": "KAuoIKz3", "serviceLabel": 83}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 300 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'p3zLWUxM' \
    --body '{"appId": "zMtSmMmZ", "language": "P8nG0FoQ", "region": "P8q7aSsb", "stadiaPlayerId": "85gAh9RD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 301 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '3ZzN6N1i' \
    --body '{"appId": "J8ltt9IR", "currencyCode": "qCflgln6", "language": "r5f0s5H6", "price": 0.17876118748963976, "productId": "f3QHa11h", "region": "LLCgw5av", "steamId": "4LExdabD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 302 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '8g2cvHfM' \
    --body '{"gameId": "RupDA5xb", "language": "js3XRdHU", "region": "J0GCmflI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncTwitchDropsEntitlement'
delete_file $TEMP_FILE

#- 303 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'XkgJ6zkT' \
    --body '{"currencyCode": "woakq7sE", "price": 0.07083368406806057, "productId": "FZ1NtONX", "xstsToken": "b9w9hsQH"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 304 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'szIsfrlz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 305 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'KpQdd58d' \
    --body '{"currencyCode": "ZP5Rvrin", "discountedPrice": 78, "ext": {"tvBtqFSk": {}}, "itemId": "A68mIVYJ", "language": "5pSVxBsL", "price": 14, "quantity": 39, "region": "y3pecToX", "returnUrl": "A4M1oUFP"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 306 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'hgo7Z6mw' \
    'NC4FY69m' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 307 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'M87joJNO' \
    'GB83Ns6H' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 308 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'l5Poab6l' \
    'KoVqNBUz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 309 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'IxOfglqu' \
    'S2q2DoWr' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 310 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    '9zvFtKa2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 311 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'mOAqOokV' \
    'card' \
    'lxQ2YriT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 312 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'PfipD67j' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 313 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'I2hiZkrt' \
    --body '{"currencyCode": "Lnh2U1RQ", "itemId": "lMxkfNMP", "language": "Ntqv2TMz", "region": "1b7SnzkX", "returnUrl": "Oek83Igm", "source": "1wkSWsYv"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 314 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'Asu18obU' \
    'dc8mbvXc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 315 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'wcgMqOXM' \
    'ziXrVdsE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 316 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'c3ClFP3m' \
    'JwusCBTe' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 317 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '4kLcuqL4' \
    '0NYgekRa' \
    --body '{"immediate": true, "reason": "paGTA9BT"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 318 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'yCCyN4Fw' \
    '9i6mI2W3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 319 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'tjjCqPVy' \
    'Ys01hEYz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 320 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'Ww3qrcxM' \
    '0DPAXQBN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT