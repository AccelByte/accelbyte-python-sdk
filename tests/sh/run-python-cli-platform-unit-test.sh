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
    --body '{"currencyCode": "xg0UXcRy", "currencyNamespace": "Hi3u8BzV", "customParameters": {"Wu1tOmhU": {}}, "description": "tCgcpvGr", "extOrderNo": "EbcZUDEx", "extUserId": "H1tayOGX", "itemType": "SEASON", "language": "rJmc-IJLR", "metadata": {"pyyEcQxV": "gJIjMZqc"}, "notifyUrl": "WfMl6dqr", "omitNotification": false, "price": 59, "recurringPaymentOrderNo": "4tnc3ZRB", "region": "3IkdtPfA", "returnUrl": "JEomwenJ", "sandbox": true, "sku": "Q8grtQSv", "subscriptionId": "6EcALcMI", "targetNamespace": "Pms5bT51", "targetUserId": "M4yko8S0", "title": "EnGLvGvf"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 113 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'uSyCTyjj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 114 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '4mCaiuMG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 115 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'KOF5GJJo' \
    --body '{"extTxId": "oSXUl3YU", "paymentMethod": "35QHGpBA", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 116 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'nOlxDznI' \
    --body '{"description": "CQVyqBg3"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 117 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '4WTtDkn0' \
    --body '{"amount": 34, "currencyCode": "tn6t0Yx4", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 1, "vat": 84}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 118 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '1rUQYCNT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 119 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "iDX4jE3M", "eventTopic": "2IsTHu8Q", "maxAwarded": 44, "maxAwardedPerUser": 79, "namespaceExpression": "yOlXfIWd", "rewardCode": "0mcq5T4S", "rewardConditions": [{"condition": "Uc7cWfCK", "conditionName": "K6Dij1gF", "eventName": "cenEMySP", "rewardItems": [{"duration": 11, "itemId": "hxBenDiT", "quantity": 16}]}], "userIdExpression": "AqFYmFKj"}' \
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
    'ELmmll6o' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 124 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'exId1OKG' \
    --body '{"description": "UN2Uznd7", "eventTopic": "uVa7t14y", "maxAwarded": 43, "maxAwardedPerUser": 88, "namespaceExpression": "YSV52bHi", "rewardCode": "fCIf4tsu", "rewardConditions": [{"condition": "u6Pkam6t", "conditionName": "FSYFt4Zx", "eventName": "A2PzZFRk", "rewardItems": [{"duration": 55, "itemId": "Nlg6hn5q", "quantity": 40}]}], "userIdExpression": "sKyZAuV6"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 125 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'uUvqM0lV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 126 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '6UZMlEbx' \
    --body '{"payload": {"HNgJRiQE": {}}}' \
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
    --body '{"defaultLanguage": "xaunjdAq", "defaultRegion": "nHUz44tx", "description": "4O6hamPw", "supportedLanguages": ["Noi071ez"], "supportedRegions": ["DK56JFIG"], "title": "e1IMUCLc"}' \
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
    'N0DsaD5F' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 135 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'yBsFe9OY' \
    --body '{"defaultLanguage": "EJVsYffm", "defaultRegion": "hyx6J25P", "description": "rM4S3cB8", "supportedLanguages": ["m17hEeLL"], "supportedRegions": ["goaYth6z"], "title": "cf8eA45O"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 136 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'MvObWejo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 137 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '9LfGeegJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 138 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'MaBGR6D1' \
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
    'ZoZEZQkJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 141 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '8DSqFnhd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 142 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'KvjFCFbS' \
    --body '{"orderNo": "FlEWoMPd"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 143 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'gK5zn62m' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 144 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'hnFSpCTl' \
    --body '{"count": 58, "orderNo": "NBOcygvv"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 145 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '2LAgfBGV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 146 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'zanbKYsB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 147 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '0gqJ8VhY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 148 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'SikJl2p9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 149 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'rBx8N5eg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 150 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'apqxDy4c' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 151 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'LfNjzzEZ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 152 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'YA8jIkMJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 153 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'b7cZ2bPs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 154 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'aLLpEBVE' \
    --body '[{"endDate": "1990-03-23T00:00:00Z", "grantedCode": "5AsKaF2P", "itemId": "44lXkI3z", "itemNamespace": "diRiC5Ib", "language": "ITjw_dF", "quantity": 83, "region": "u5V6QSYx", "source": "GIFT", "startDate": "1994-11-19T00:00:00Z", "storeId": "ryVuZYmg"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 155 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'UeEPB5AG' \
    'Pgvk0Zth' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 156 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'aj0EBA4a' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 157 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Rz0d56sm' \
    'obor4p1P' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 158 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'lgQB9EcN' \
    'GOeBRY6G' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 159 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '5ae07deD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 160 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'LaZ8JCvb' \
    '["eTfW0hgz"]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 161 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'rabLJxEw' \
    'JrEBmQ64' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 162 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'haNOzlGu' \
    '68UYyupj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 163 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'dDetnoT0' \
    'rfWtVPwQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 164 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'fq6V92gb' \
    'fPouNdmP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 165 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '7fckVnuD' \
    'GvYIb1p5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 166 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'tcR5z8ZJ' \
    'LjSHcaR3' \
    --body '{"endDate": "1995-06-01T00:00:00Z", "nullFieldList": ["Zmwr0QmO"], "startDate": "1977-05-30T00:00:00Z", "status": "REVOKED", "useCount": 13}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 167 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '49eXp0xQ' \
    'kZ2JjuwW' \
    --body '{"useCount": 96}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 168 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'y0tU11PC' \
    'eSrvejUK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 169 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'wVfF37Vr' \
    '7mkDzFBI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 170 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '1VwhkVSK' \
    'DlNFOUHB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 171 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'JsvTsqk9' \
    'hg4hj6nU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 172 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'debW6Usk' \
    --body '{"duration": 3, "endDate": "1991-03-24T00:00:00Z", "itemId": "kZAk01f1", "itemSku": "KxCtWADU", "language": "2guN6U9w", "order": {"currency": {"currencyCode": "13W1K9TZ", "currencySymbol": "Q4qRLEi5", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "wE36rfmM"}, "ext": {"0CCs35TP": {}}, "free": false}, "orderNo": "sY8WgwSx", "quantity": 58, "region": "I5GH9bv9", "source": "ACHIEVEMENT", "startDate": "1998-09-19T00:00:00Z", "storeId": "pA6pzjHp"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 173 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ZO0E9iLg' \
    --body '{"code": "RPJK3nBa", "language": "go", "region": "Qrqra0Pt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 174 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'kfvOpY2r' \
    --body '{"rewards": [{"currency": {"currencyCode": "amp5lnBn", "namespace": "6xmBkfMt"}, "item": {"itemId": "C66hFq0k", "itemSku": "POkORm2X", "itemType": "jlNEE5ec"}, "quantity": 83, "type": "CURRENCY"}], "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillRewards'
delete_file $TEMP_FILE

#- 175 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'mi0ySJHf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 176 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'PloP1XkY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 177 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'K4MgIsDS' \
    --body '{"language": "mpY-586", "productId": "IDJuDoSh", "region": "MMftll8N", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 178 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'ChHz9urm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 179 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    't7QWvE8s' \
    '6Uz8BRuY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 180 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'WDTtL6MT' \
    'TRkCbb9S' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 181 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '5Q1IVHGT' \
    '88prREBg' \
    --body '{"status": "DELETED", "statusReason": "WdHJ9Jum"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 182 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'ohtU13gf' \
    '7TRigNZj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 183 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '5w5y3HmK' \
    '8QVOa62e' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 184 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'QZtbLLcF' \
    '671WLtv3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 185 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '8Hecczop' \
    'FmeRwpcJ' \
    --body '{"additionalData": {"cardSummary": "BZyi3mLC"}, "authorisedTime": "1999-10-11T00:00:00Z", "chargebackReversedTime": "1983-02-07T00:00:00Z", "chargebackTime": "1976-03-06T00:00:00Z", "chargedTime": "1993-07-16T00:00:00Z", "createdTime": "1973-07-12T00:00:00Z", "currency": {"currencyCode": "olnOQt0j", "currencySymbol": "oVHgCytC", "currencyType": "REAL", "decimals": 86, "namespace": "G98YxnHb"}, "customParameters": {"RdoTKKeu": {}}, "extOrderNo": "SjfZe9i1", "extTxId": "osghF1hz", "extUserId": "i1Nl47sy", "issuedAt": "1988-03-06T00:00:00Z", "metadata": {"bzSHZeCL": "IvWPVRsd"}, "namespace": "EqA61yTr", "nonceStr": "MgsycTgm", "paymentMethod": "Pzc20EuO", "paymentMethodFee": 7, "paymentOrderNo": "MqGDlSZP", "paymentProvider": "CHECKOUT", "paymentProviderFee": 61, "paymentStationUrl": "VSjzHjL6", "price": 2, "refundedTime": "1995-03-13T00:00:00Z", "salesTax": 64, "sandbox": true, "sku": "Smpp3op8", "status": "AUTHORISED", "statusReason": "taRLxtW4", "subscriptionId": "PvFkESTU", "subtotalPrice": 74, "targetNamespace": "at5F1Le7", "targetUserId": "cR7q6PWh", "tax": 24, "totalPrice": 25, "totalTax": 72, "txEndTime": "1983-03-08T00:00:00Z", "type": "1Tp78Fip", "userId": "JHahViJv", "vat": 75}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 186 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'YW0kdmlk' \
    '2luqSOOA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 187 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '2VOZBoNb' \
    --body '{"currencyCode": "B98PuSGy", "currencyNamespace": "kqFzPwSM", "customParameters": {"XT53bBuL": {}}, "description": "38beOYDV", "extOrderNo": "uHZQ9LYt", "extUserId": "6w23Wf8i", "itemType": "MEDIA", "language": "OShA", "metadata": {"DlDyGcsf": "IuI4Dv5l"}, "notifyUrl": "EJpK1AyR", "omitNotification": false, "price": 51, "recurringPaymentOrderNo": "srRXEFZi", "region": "vQOHG6wV", "returnUrl": "icNratsv", "sandbox": true, "sku": "HLmIohfN", "subscriptionId": "ISLXMDWD", "title": "dm5FE4ll"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 188 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'iQMnutJb' \
    'pEo4mUNH' \
    --body '{"description": "Ftdml2xN"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 189 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'viWacJc3' \
    --body '{"code": "Fm7Z548u", "orderNo": "uKgoCBqS"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 190 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '5uIdCbwC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 191 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'eeq9ouEd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 192 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'DtjOgsyp' \
    --body '{"grantDays": 74, "itemId": "km2ZYew5", "language": "H7Zm0gnY", "reason": "yj6MXf9G", "region": "1ntyebvo", "source": "eHenAALK"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 193 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    't7EfxIH4' \
    '46oUnP2S' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 194 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '74unXwg0' \
    'JKqVWW1r' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 195 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'jK1epwkA' \
    'vcsYvbgf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 196 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'BVPpTa8Y' \
    'uq7TKiNX' \
    --body '{"immediate": false, "reason": "z7eMrMD5"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 197 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'TbaUxTCT' \
    'ng0xjtdB' \
    --body '{"grantDays": 35, "reason": "js3Kiykt"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 198 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '2Ck2gOlS' \
    'atECZ2Ug' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 199 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'wQLqDqYS' \
    'xTPuVlBq' \
    --body '{"additionalData": {"cardSummary": "irdp3yxn"}, "authorisedTime": "1980-08-27T00:00:00Z", "chargebackReversedTime": "1993-03-25T00:00:00Z", "chargebackTime": "1997-12-14T00:00:00Z", "chargedTime": "1981-02-26T00:00:00Z", "createdTime": "1992-06-05T00:00:00Z", "currency": {"currencyCode": "dsjIhXdx", "currencySymbol": "iSoWpnnx", "currencyType": "REAL", "decimals": 99, "namespace": "7BCPMqzQ"}, "customParameters": {"IxibhpNY": {}}, "extOrderNo": "sHtdB3Ik", "extTxId": "juaZqhJi", "extUserId": "lrZkSSKg", "issuedAt": "1991-05-16T00:00:00Z", "metadata": {"xCR77G9d": "5CA1GORS"}, "namespace": "bL9n0dbW", "nonceStr": "DEupmdLQ", "paymentMethod": "zPnNfBAc", "paymentMethodFee": 97, "paymentOrderNo": "ArbkCfdH", "paymentProvider": "WALLET", "paymentProviderFee": 28, "paymentStationUrl": "tqmBuS9V", "price": 30, "refundedTime": "1985-09-21T00:00:00Z", "salesTax": 24, "sandbox": false, "sku": "0lpJ4JLl", "status": "CHARGE_FAILED", "statusReason": "i7L2oDUo", "subscriptionId": "VRUb39j2", "subtotalPrice": 83, "targetNamespace": "4Sp09cKm", "targetUserId": "jRUbZVBV", "tax": 88, "totalPrice": 81, "totalTax": 73, "txEndTime": "1998-05-14T00:00:00Z", "type": "dcsckMek", "userId": "ROWZ2KUT", "vat": 33}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 200 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'kK2eFaGL' \
    'oSmEEPbL' \
    --body '{"count": 48, "orderNo": "wJsyUie6"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 201 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    'fZgLllUP' \
    'sO8lg46S' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 202 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'i7006vL2' \
    'w4aajDAO' \
    --body '{"amount": 47, "reason": "0iJjYlea", "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 203 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'tqv2Wklj' \
    'QuD5mnJO' \
    --body '{"amount": 78}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 204 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'qHGq8mB7' \
    'mF2lMFca' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 205 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'ghFXJIJf' \
    'lRHFcsIq' \
    --body '{"amount": 57, "reason": "y4xDifSS"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 206 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'Q5On2ccE' \
    'cl3xeiO4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 207 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'bwF5JOjG' \
    'oGxKM3qM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 208 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'ce5tfLcp' \
    'jFZMKCbp' \
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
    '0pEbLCLF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 211 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'pHxMYF83' \
    '6075xEpz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 212 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["dnYtpja5"], "apiKey": "ig2isQZg", "authoriseAsCapture": false, "blockedPaymentMethods": ["6Vy76izP"], "clientKey": "iQRjYa8f", "dropInSettings": "v5fIt22t", "liveEndpointUrlPrefix": "IZhjhgki", "merchantAccount": "gW22zXMW", "notificationHmacKey": "XfbcM0GI", "notificationPassword": "ALIbFCQg", "notificationUsername": "BcLNT6iO", "returnUrl": "QVYx5rW2", "settings": "gMsI1aYB"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 213 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "itSn3UDe", "privateKey": "Kj97I4WY", "publicKey": "XLqjN7kt", "returnUrl": "OBTraBxW"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 214 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "RTVuYEqG", "secretKey": "lKDwTKXB"}' \
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
    --body '{"clientID": "rXiQcd9I", "clientSecret": "W8kiCKeQ", "returnUrl": "JWZBvcq1", "webHookId": "ETvWBxYZ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 217 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["Jh7B8gbn"], "publishableKey": "Su9M2OxD", "secretKey": "2udaeYpC", "webhookSecret": "XYSMiy87"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 218 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "CTqEQBg3", "key": "6my3sY2c", "mchid": "lrDcain0", "returnUrl": "cOVF1zHw"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 219 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "DTI0sJ1Q", "flowCompletionUrl": "0kphMTgg", "merchantId": 88, "projectId": 82, "projectSecretKey": "2SLcuAP7"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 220 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'vU971Czw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 221 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '2nbg8C7M' \
    --body '{"allowedPaymentMethods": ["vywhu6Mj"], "apiKey": "OjuGzo1F", "authoriseAsCapture": true, "blockedPaymentMethods": ["4tU0aSn9"], "clientKey": "8N8qOUA0", "dropInSettings": "z92RaDe8", "liveEndpointUrlPrefix": "ngT8LRQk", "merchantAccount": "MnG1LZyF", "notificationHmacKey": "2mdYY6ZM", "notificationPassword": "fuTYTKsu", "notificationUsername": "e48qBEBN", "returnUrl": "AV5BTe6e", "settings": "c1zA92UR"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 222 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'CLSGPmRB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 223 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'ZWunHW7M' \
    --body '{"appId": "Yvr6QA7P", "privateKey": "pepc92HA", "publicKey": "94eACdey", "returnUrl": "fUpgiPpf"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 224 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '8nxKJ3dn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 225 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'mtPwa64Y' \
    --body '{"publicKey": "4gPEKMhh", "secretKey": "u9a6f3xJ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 226 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'NtUlKLlI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 227 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'IAeHbm5M' \
    --body '{"clientID": "6LsY1VMu", "clientSecret": "IEcRls68", "returnUrl": "M3MPMRPB", "webHookId": "epyyMz6z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 228 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'fR1pvTYY' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 229 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'tDOiEi4R' \
    --body '{"allowedPaymentMethodTypes": ["uEcHCSGh"], "publishableKey": "pOZQFlwO", "secretKey": "iuKGDFgK", "webhookSecret": "49YuKnXk"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 230 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    's0m8ANrc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 231 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'Ral7ta3f' \
    --body '{"appId": "ojA3h4MM", "key": "W3AJ5zls", "mchid": "FBwjvLYv", "returnUrl": "mg6avudQ"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 232 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'FF1CPNY9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 233 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'u2dVYdgl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 234 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'OOoCeK0k' \
    --body '{"apiKey": "PKmBqVux", "flowCompletionUrl": "3lXcD8ae", "merchantId": 35, "projectId": 38, "projectSecretKey": "AVCqs8XT"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 235 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '8xy3nJ06' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 236 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'KkseA0AR' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' \
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
    --body '{"aggregate": "XSOLLA", "namespace": "ayvnhi8M", "region": "DdY4WLHo", "sandboxTaxJarApiToken": "aUkYnQp5", "specials": ["XSOLLA"], "taxJarApiToken": "gdmVE8Im", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
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
    'NtQxqWRK' \
    --body '{"aggregate": "XSOLLA", "namespace": "hODoWOr9", "region": "8kjBUas9", "sandboxTaxJarApiToken": "jjz2Frgi", "specials": ["WALLET"], "taxJarApiToken": "GrcB7dIO", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 243 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'KH8ou9Sd' \
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
    --body '{"sandboxTaxJarApiToken": "bxSXcrEF", "taxJarApiToken": "CwqeGNLd", "taxJarEnabled": true, "taxJarProductCodesMapping": {"RdliFQVM": "KEzVUWlU"}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 246 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'WDs2x1EQ' \
    'U0oepEvc' \
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
    'jaSgEh6j' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 250 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'JnFxinIH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 251 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'J1o7aq5Z' \
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
    'znd5eaco' \
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
    'bTsuRlhr' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 256 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'eQVFID3o' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 257 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '8hJWVjKI' \
    'OAw70DvA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 258 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'HhSGWUvz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 259 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'q1Za3IBC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 260 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '4vQFsUJP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 261 GetPaymentCustomization
update_status 0 'GetPaymentCustomization (skipped deprecated)'

#- 262 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "fiaJp1rt", "paymentProvider": "WXPAY", "returnUrl": "gBCe6N0e", "ui": "I65Mn5tn", "zipCode": "gEYXgPVT"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 263 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '5CqXDZBV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 264 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'MJyJeKFO' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 265 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '92YDtaZv' \
    --body '{"token": "JoKS0Oxy"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 266 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'ipZuO4N9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 267 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    'gHa6XBcv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 268 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'GRYk5rUt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 269 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'WHCnhmzz' \
    'ppV7tKNK' \
    'WXPAY' \
    'XymWcNlH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 270 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'aFxYaGHU' \
    'PAYPAL' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 271 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'mBFyOrFK' \
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
    'txGNAi0f' \
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
    'q4xChPLd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 277 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '2lOopc7X' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 278 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'oVpdd6rC' \
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
    'pyMrnH9Y' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 281 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'HXh7KnCV' \
    --body '{"serviceLabel": 80}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 282 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'KY2zsBRG' \
    --body '{"appId": "td8QY2OL", "steamId": "bijrvfr8"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamDLC'
delete_file $TEMP_FILE

#- 283 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'hknjWUWd' \
    --body '{"xstsToken": "MUXHvw4p"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxDLC'
delete_file $TEMP_FILE

#- 284 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'NlGLjdBx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 285 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'LM079pDA' \
    'bTgmsEYE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 286 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'q2GkYK1v' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 287 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '9flXQ7CQ' \
    'oemnQG0d' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 288 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'H0NVM9VE' \
    'HTPqDhkc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 289 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'u5vnz6Gi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 290 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'NMboBJHm' \
    'l0LJmpPi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 291 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '4mqhruiC' \
    'ZLGGP5UX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 292 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'kHNTMapp' \
    '5SbonsUJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 293 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'KADr60Ek' \
    'dFrpLsGt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 294 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '9yTXWUSC' \
    'QcMsHN7r' \
    --body '{"useCount": 9}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 295 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'I22ks7I1' \
    --body '{"code": "2tAZc8sx", "language": "lXx_yh", "region": "5J4WiJLv"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 296 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '9NvHwtw2' \
    --body '{"excludeOldTransactions": false, "language": "Yz-xyOP", "productId": "UKJJNftR", "receiptData": "pGgk1ise", "region": "REzzRG6z", "transactionId": "9wmuHddy"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 297 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'OdibI1LV' \
    --body '{"epicGamesJwtToken": "yqbdY8DG"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 298 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'ZKAuoIKz' \
    --body '{"autoAck": false, "language": "lwu-sMmM", "orderId": "G0FoQP8q", "packageName": "7aSsb85g", "productId": "Ah9RD3Zz", "purchaseTime": 78, "purchaseToken": "6N1iJ8lt", "region": "t9IRqCfl"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 299 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'gln6r5f0' \
    --body '{"currencyCode": "s5H6lCf3", "price": 0.6656623819884346, "productId": "a11hLLCg", "serviceLabel": 45}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 300 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    '5av4LExd' \
    --body '{"appId": "abD8g2cv", "language": "FmrU-240", "region": "HUJ0GCmf", "stadiaPlayerId": "lIXkgJ6z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 301 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'kTwoakq7' \
    --body '{"appId": "sEejFZ1N", "currencyCode": "tONXb9w9", "language": "Sq-FRLZ", "price": 0.6565137658214307, "productId": "d58dZP5R", "region": "vrinNtvB", "steamId": "tqFSkA68"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 302 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'mIVYJ5pS' \
    --body '{"gameId": "VxBsLhty", "language": "EC_133", "region": "wNC4FY69"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncTwitchDropsEntitlement'
delete_file $TEMP_FILE

#- 303 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'mM87joJN' \
    --body '{"currencyCode": "OGB83Ns6", "price": 0.5299632339050114, "productId": "5Poab6lK", "xstsToken": "oVqNBUzI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 304 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'xOfglquS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 305 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '2q2DoWr9' \
    --body '{"currencyCode": "zvFtKa2m", "discountedPrice": 80, "ext": {"AqOokV1p": {}}, "itemId": "lxQ2YriT", "language": "FIPd", "price": 17, "quantity": 21, "region": "rtLnh2U1", "returnUrl": "RQlMxkfN"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 306 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'MPNtqv2T' \
    'Mz1b7Snz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 307 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'kXOek83I' \
    'gm1wkSWs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 308 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'YvAsu18o' \
    'bUdc8mbv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 309 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'XcwcgMqO' \
    'XMziXrVd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 310 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'sEc3ClFP' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 311 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '3mJwusCB' \
    'card' \
    '4kLcuqL4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 312 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '0NYgekRa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 313 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'vpaGTA9B' \
    --body '{"currencyCode": "TyCCyN4F", "itemId": "w9i6mI2W", "language": "JJc-HeyZ-597", "region": "PAXQBNMP", "returnUrl": "7j3xfPao", "source": "ZaWFspkU"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 314 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '5kn6PlPq' \
    'D4AgfasB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 315 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'fclBhZjZ' \
    'bLnmghKw' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 316 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'PyVIn3qa' \
    'HP7KNuly' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 317 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'frENVQkp' \
    'caWHf6T2' \
    --body '{"immediate": true, "reason": "OOljn7c6"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 318 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'c9efJI02' \
    'TZxrgLBF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 319 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'JEkphFz0' \
    'h6WpoVpV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 320 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'c2HBBmj6' \
    'cEi02hXl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT