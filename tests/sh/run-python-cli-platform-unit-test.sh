#!/bin/bash

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=316

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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListFulfillmentScripts'
delete_file $TEMP_FILE

#- 2 TestFulfillmentScriptEval
$PYTHON -m $MODULE 'platform-test-fulfillment-script-eval' \
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'SMNcoAAO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetFulfillmentScript'
delete_file $TEMP_FILE

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'jKNjfcYH' \
    --body '{"grantDays": "m093aYgB"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateFulfillmentScript'
delete_file $TEMP_FILE

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'U1sqjyK0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'XH45PaRS' \
    --body '{"grantDays": "OFQBtu23"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateFulfillmentScript'
delete_file $TEMP_FILE

#- 7 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCampaigns'
delete_file $TEMP_FILE

#- 8 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "REZ8hRVX", "items": [{"extraSubscriptionDays": 74, "itemId": "GOvDdYiQ", "itemName": "S9i7mV1C", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 31, "name": "xL6ycTQd", "redeemEnd": "1981-03-31T00:00:00Z", "redeemStart": "1977-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["SQWEXL6L"], "type": "REDEMPTION"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCampaign'
delete_file $TEMP_FILE

#- 9 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'E1YHo9m1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaign'
delete_file $TEMP_FILE

#- 10 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '26ZWc8hH' \
    --body '{"description": "tWvbNYqg", "items": [{"extraSubscriptionDays": 92, "itemId": "qslArFPi", "itemName": "HUIvaCv8", "quantity": 20}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 55, "name": "pdsJLhsV", "redeemEnd": "1983-09-03T00:00:00Z", "redeemStart": "1982-05-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["oot0B7WO"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCampaign'
delete_file $TEMP_FILE

#- 11 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'fercZdpM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaignDynamic'
delete_file $TEMP_FILE

#- 12 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetRootCategories'
delete_file $TEMP_FILE

#- 13 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'ci37Ds7Y' \
    --body '{"categoryPath": "SfExaI3u", "localizationDisplayNames": {"zLteMbFA": "lt4hr7Hm"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCategory'
delete_file $TEMP_FILE

#- 14 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListCategoriesBasic'
delete_file $TEMP_FILE

#- 15 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'OYiBA5lt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCategory'
delete_file $TEMP_FILE

#- 16 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'AOXmlG6e' \
    'h1dTdoTF' \
    --body '{"localizationDisplayNames": {"pBIcuC1d": "QY93OJnJ"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCategory'
delete_file $TEMP_FILE

#- 17 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '6Te9vD8l' \
    'dz7Hu8AD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCategory'
delete_file $TEMP_FILE

#- 18 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '79kdWunv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetChildCategories'
delete_file $TEMP_FILE

#- 19 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'izU0q1pH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetDescendantCategories'
delete_file $TEMP_FILE

#- 20 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'yhhERoGg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCodes'
delete_file $TEMP_FILE

#- 21 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'drysMizB' \
    --body '{"quantity": 65}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCodes'
delete_file $TEMP_FILE

#- 22 Download
$PYTHON -m $MODULE 'platform-download' \
    'SRdP2l7D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Download'
delete_file $TEMP_FILE

#- 23 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'NSZ8Aq0X' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkDisableCodes'
delete_file $TEMP_FILE

#- 24 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'iPLQXSe0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkEnableCodes'
delete_file $TEMP_FILE

#- 25 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '7ZddOGTM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRedeemHistory'
delete_file $TEMP_FILE

#- 26 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'lJjBwj9H' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCode'
delete_file $TEMP_FILE

#- 27 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'JHQKseEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableCode'
delete_file $TEMP_FILE

#- 28 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'SXRDSvgu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableCode'
delete_file $TEMP_FILE

#- 29 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListCurrencies'
delete_file $TEMP_FILE

#- 30 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "auw1xT7e", "currencySymbol": "MwSl9MLH", "currencyType": "REAL", "decimals": 91, "localizationDescriptions": {"J2ulNzBv": "wJaQa547"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCurrency'
delete_file $TEMP_FILE

#- 31 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'JllvA8RW' \
    --body '{"localizationDescriptions": {"SpabUt7x": "k6QxyWhf"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCurrency'
delete_file $TEMP_FILE

#- 32 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'qoWfJw2o' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCurrency'
delete_file $TEMP_FILE

#- 33 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '8oWUqvPC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencyConfig'
delete_file $TEMP_FILE

#- 34 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'Z2HzT7NX' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencySummary'
delete_file $TEMP_FILE

#- 35 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetDLCItemConfig'
delete_file $TEMP_FILE

#- 36 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "mWDlXsuN", "rewards": [{"currency": {"currencyCode": "IdQJR5ls", "namespace": "NOlvkfwa"}, "item": {"itemId": "SbnsuLCg", "itemSku": "ToxuVTek", "itemType": "Jgvg6h5H"}, "quantity": 68, "type": "ITEM"}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateDLCItemConfig'
delete_file $TEMP_FILE

#- 37 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteDLCItemConfig'
delete_file $TEMP_FILE

#- 38 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlatformDLCConfig'
delete_file $TEMP_FILE

#- 39 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"0DviplEk": "4vj3LDp4"}}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlatformDLCConfig'
delete_file $TEMP_FILE

#- 40 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlatformDLCConfig'
delete_file $TEMP_FILE

#- 41 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryEntitlements'
delete_file $TEMP_FILE

#- 42 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'yqDt8QUZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetEntitlement'
delete_file $TEMP_FILE

#- 43 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryFulfillmentHistories'
delete_file $TEMP_FILE

#- 44 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAppleIAPConfig'
delete_file $TEMP_FILE

#- 45 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "DpxlHasi", "password": "nGcjrkmR"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAppleIAPConfig'
delete_file $TEMP_FILE

#- 46 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 47 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 48 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "MttgjDSa"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 49 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 50 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetGoogleIAPConfig'
delete_file $TEMP_FILE

#- 51 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "IVBmft3U", "serviceAccountId": "dg7p9PGm"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 52 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 53 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleP12File'
delete_file $TEMP_FILE

#- 54 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetIAPItemConfig'
delete_file $TEMP_FILE

#- 55 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "Y2H5kX4M", "platformProductIdMap": {"sisSX28n": "ARxWRpv5"}}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "ou5xtvd2"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"publisherAuthenticationKey": "8OUfCt8U"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetXblIAPConfig'
delete_file $TEMP_FILE

#- 67 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "JC5flNyj"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblIAPConfig'
delete_file $TEMP_FILE

#- 68 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteXblAPConfig'
delete_file $TEMP_FILE

#- 69 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblBPCertFile'
delete_file $TEMP_FILE

#- 70 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '6HsTtX8P' \
    --body '{"categoryPath": "3llnaaS9", "targetItemId": "lqyygPcf", "targetNamespace": "kJIxfQZz"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncInGameItem'
delete_file $TEMP_FILE

#- 71 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'a8kNVbDx' \
    --body '{"appId": "VMq7HJk0", "appType": "DEMO", "baseAppId": "89xAc3YV", "boothName": "faENtrl0", "categoryPath": "pTKZTXqz", "clazz": "HuBMYQSA", "displayOrder": 18, "entitlementType": "CONSUMABLE", "ext": {"1ZOpdOjS": {}}, "features": ["yMddB41J"], "images": [{"as": "uMf7RUyB", "caption": "HRj8IiRi", "height": 24, "imageUrl": "RllHT6Dc", "smallImageUrl": "40vFFA6g", "width": 30}], "itemIds": ["U7EW3x1d"], "itemQty": {"Cpm55gOe": 33}, "itemType": "CODE", "listable": false, "localizations": {"JVKmBM1J": {"description": "1IbuTrrk", "localExt": {"bmuT1whO": {}}, "longDescription": "qmEnDXIW", "title": "rBPlSay4"}}, "maxCount": 24, "maxCountPerUser": 43, "name": "71BAZAOj", "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 70, "fixedTrialCycles": 42, "graceDays": 25}, "regionData": {"Tj7tT7TZ": [{"currencyCode": "HWDdCkIs", "currencyNamespace": "ZoArWwPH", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1986-07-28T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1984-05-30T00:00:00Z", "discountedPrice": 100, "expireAt": "1972-03-13T00:00:00Z", "price": 75, "purchaseAt": "1988-02-20T00:00:00Z", "trialPrice": 86}]}, "seasonType": "TIER", "sku": "FRr0gwB9", "stackable": true, "status": "INACTIVE", "tags": ["3vp99XVl"], "targetCurrencyCode": "V8rK3tE6", "targetNamespace": "n0smip1t", "thumbnailUrl": "w3L7cUd9", "useCount": 30}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateItem'
delete_file $TEMP_FILE

#- 72 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'qtv6JfPZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemByAppId'
delete_file $TEMP_FILE

#- 73 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryItems'
delete_file $TEMP_FILE

#- 74 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 75 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'wcCVOXcV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemBySku'
delete_file $TEMP_FILE

#- 76 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'a80TmCwt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItemBySku'
delete_file $TEMP_FILE

#- 77 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'D2lAH01o' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemIdBySku'
delete_file $TEMP_FILE

#- 78 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '6NdcBIgz' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetLocaleItems'
delete_file $TEMP_FILE

#- 79 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'rDyWpFBY' \
    'GmmBawMy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SearchItems'
delete_file $TEMP_FILE

#- 80 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUncategorizedItems'
delete_file $TEMP_FILE

#- 81 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'oKyNpdAa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItem'
delete_file $TEMP_FILE

#- 82 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'sm8xwUfz' \
    'OlQiZY4N' \
    --body '{"appId": "bOQXJ7uO", "appType": "DEMO", "baseAppId": "NMvuq2tN", "boothName": "l4CX4Iji", "categoryPath": "K4DEUJRV", "clazz": "K3l9Eb0R", "displayOrder": 99, "entitlementType": "DURABLE", "ext": {"0RH8vS1s": {}}, "features": ["meOlngrd"], "images": [{"as": "TXCzaPBt", "caption": "kZMio4wc", "height": 48, "imageUrl": "hloVS3rY", "smallImageUrl": "p8QtcEmC", "width": 60}], "itemIds": ["Vc75Ufey"], "itemQty": {"pWjDNhzC": 75}, "itemType": "CODE", "listable": true, "localizations": {"wO763iEk": {"description": "lkzLm88L", "localExt": {"pLuYRO3C": {}}, "longDescription": "55yHpwK2", "title": "JaqenDGn"}}, "maxCount": 1, "maxCountPerUser": 78, "name": "UplWiLjq", "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 34, "fixedTrialCycles": 96, "graceDays": 60}, "regionData": {"fkpaXtwY": [{"currencyCode": "ZJaQ4Wbw", "currencyNamespace": "NmsFYetj", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1979-09-21T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1976-04-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1983-11-08T00:00:00Z", "price": 72, "purchaseAt": "1980-12-11T00:00:00Z", "trialPrice": 92}]}, "seasonType": "PASS", "sku": "Tz1ETdsm", "stackable": true, "status": "INACTIVE", "tags": ["jkkn9oiQ"], "targetCurrencyCode": "l05g7cO3", "targetNamespace": "ZMb6Ojlo", "thumbnailUrl": "6DMNpP2q", "useCount": 76}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateItem'
delete_file $TEMP_FILE

#- 83 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'rTQ1Upjf' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteItem'
delete_file $TEMP_FILE

#- 84 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'U6wJhy1j' \
    --body '{"count": 81, "orderNo": "VkkUlS79"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireItem'
delete_file $TEMP_FILE

#- 85 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '527EZ25I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetApp'
delete_file $TEMP_FILE

#- 86 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'a8uCeZFl' \
    'LtEVpDAE' \
    --body '{"carousel": [{"alt": "bA82jy74", "previewUrl": "lq0pDE5x", "thumbnailUrl": "Rwh5b45e", "type": "image", "url": "pcM7ScSs", "videoSource": "vimeo"}], "developer": "OpAwIp9r", "forumUrl": "Rtn1PcCx", "genres": ["Action"], "localizations": {"bumeYgOd": {"announcement": "EBWRQiW3", "slogan": "KFfU8icH"}}, "platformRequirements": {"4081gRB1": [{"additionals": "GyLfLg4R", "directXVersion": "YuEbgUDE", "diskSpace": "cJyIvsPw", "graphics": "Or0BmV5i", "label": "FvfwFjTS", "osVersion": "mIEqoLyL", "processor": "eUGmomGX", "ram": "9sXTZ0v8", "soundCard": "pqLfc5Sw"}]}, "platforms": ["Android"], "players": ["Multi"], "primaryGenre": "Strategy", "publisher": "eUULDX4Q", "releaseDate": "1994-09-25T00:00:00Z", "websiteUrl": "bb5nh68Z"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateApp'
delete_file $TEMP_FILE

#- 87 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'nyUtRvW9' \
    'hNBSFTtF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableItem'
delete_file $TEMP_FILE

#- 88 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'rOmjkFrF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemDynamicData'
delete_file $TEMP_FILE

#- 89 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'VA8t0xF3' \
    '4Xpt6ZlT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableItem'
delete_file $TEMP_FILE

#- 90 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'Tic0kr2a' \
    '0nI2oo7U' \
    'HCJK5sp0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FeatureItem'
delete_file $TEMP_FILE

#- 91 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'aCvIq3aH' \
    'VYIlewLR' \
    'uHY83bGj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DefeatureItem'
delete_file $TEMP_FILE

#- 92 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '0HTeeWXl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItem'
delete_file $TEMP_FILE

#- 93 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'IcRidqct' \
    --body '{"orderNo": "DpygY0ax"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ReturnItem'
delete_file $TEMP_FILE

#- 94 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryKeyGroups'
delete_file $TEMP_FILE

#- 95 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "476ED4MM", "name": "O9Tw2JH0", "status": "INACTIVE", "tags": ["hWIwHWTg"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateKeyGroup'
delete_file $TEMP_FILE

#- 96 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'zJFRYw6t' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroup'
delete_file $TEMP_FILE

#- 97 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '1IKZLO6V' \
    --body '{"description": "4Ode46Qm", "name": "CidgdpP7", "status": "INACTIVE", "tags": ["587lmUmB"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateKeyGroup'
delete_file $TEMP_FILE

#- 98 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'ziPZBnpO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroupDynamic'
delete_file $TEMP_FILE

#- 99 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'fkllxfq0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListKeys'
delete_file $TEMP_FILE

#- 100 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'NsrSjw5H' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UploadKeys'
delete_file $TEMP_FILE

#- 101 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryOrders'
delete_file $TEMP_FILE

#- 102 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrderStatistics'
delete_file $TEMP_FILE

#- 103 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'og0blM1d' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrder'
delete_file $TEMP_FILE

#- 104 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '5MStYGcz' \
    --body '{"description": "LINlEC0O"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundOrder'
delete_file $TEMP_FILE

#- 105 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 106 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "sE3yzIsU", "privateKey": "P0NjluOr"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 107 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentNotifications'
delete_file $TEMP_FILE

#- 108 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentOrders'
delete_file $TEMP_FILE

#- 109 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "GZTzsLW7", "currencyNamespace": "Fjfs9nIk", "customParameters": {"cZ38fUEa": {}}, "description": "njKHbXfk", "extOrderNo": "1zxdzxg0", "extUserId": "UXcRyHi3", "itemType": "SUBSCRIPTION", "language": "8BzVWu1t", "metadata": {"OmhUtCgc": "pvGrEbcZ"}, "notifyUrl": "UDExH1ta", "omitNotification": true, "price": 80, "recurringPaymentOrderNo": "GXIHzMRj", "region": "MCtOJsEi", "returnUrl": "jlrbpyyE", "sandbox": false, "sku": "QxVgJIjM", "subscriptionId": "ZqcWfMl6", "targetNamespace": "dqrpD4tn", "targetUserId": "c3ZRB3Ik", "title": "dtPfAJEo"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 110 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'mwenJvQ8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 111 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'grtQSv6E' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 112 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'cALcMIPm' \
    --body '{"extTxId": "s5bT51M4", "paymentMethod": "yko8S0En", "paymentProvider": "ALIPAY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 113 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'GvfuSyCT' \
    --body '{"description": "yjj4mCai"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 114 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'uMGKOF5G' \
    --body '{"amount": 70, "currencyCode": "JooSXUl3", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 53, "vat": 54}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 115 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'nOlxDznI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 116 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "CQVyqBg3", "eventTopic": "4WTtDkn0", "maxAwarded": 34, "maxAwardedPerUser": 38, "rewardCode": "n6t0Yx4z", "rewardConditions": [{"condition": "12EaQ1rU", "conditionName": "QYCNTiDX", "eventName": "4jE3M2Is", "rewardItems": [{"duration": 90, "itemId": "Hu8QwNyO", "quantity": 22}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 117 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 118 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportRewards'
delete_file $TEMP_FILE

#- 119 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportRewards'
delete_file $TEMP_FILE

#- 120 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'IWd0mcq5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 121 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'T4SUc7cW' \
    --body '{"description": "fCKK6Dij", "eventTopic": "1gFcenEM", "maxAwarded": 48, "maxAwardedPerUser": 89, "rewardCode": "PfhxBenD", "rewardConditions": [{"condition": "iTiAqFYm", "conditionName": "FKjaELmm", "eventName": "ll6oexId", "rewardItems": [{"duration": 81, "itemId": "KGUN2Uzn", "quantity": 6}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 122 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '7uVa7t14' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 123 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'yvSYSV52' \
    --body '{"payload": {"bHifCIf4": {}}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckEventCondition'
delete_file $TEMP_FILE

#- 124 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListStores'
delete_file $TEMP_FILE

#- 125 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "tsuu6Pka", "defaultRegion": "m6tFSYFt", "description": "4ZxA2PzZ", "supportedLanguages": ["FRkBNlg6"], "supportedRegions": ["hn5qusKy"], "title": "ZAuV6uUv"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStore'
delete_file $TEMP_FILE

#- 126 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportStore'
delete_file $TEMP_FILE

#- 127 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStore'
delete_file $TEMP_FILE

#- 128 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePublishedStore'
delete_file $TEMP_FILE

#- 129 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStoreBackup'
delete_file $TEMP_FILE

#- 130 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RollbackPublishedStore'
delete_file $TEMP_FILE

#- 131 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'qM0lV6UZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 132 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'MlEbxHNg' \
    --body '{"defaultLanguage": "JRiQExau", "defaultRegion": "njdAqnHU", "description": "z44tx4O6", "supportedLanguages": ["hamPwNoi"], "supportedRegions": ["071ezDK5"], "title": "6JFIGe1I"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 133 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'MUCLcN0D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 134 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'saD5FyBs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 135 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'Fe9OYEJV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportStore'
delete_file $TEMP_FILE

#- 136 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySubscriptions'
delete_file $TEMP_FILE

#- 137 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'sYffmhyx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 138 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '6J25PrM4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 139 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'S3cB8m17' \
    --body '{"orderNo": "hEeLLgoa"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 140 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'Yth6zcf8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 141 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'eA45OMvO' \
    --body '{"count": 3, "orderNo": "Wejo9LfG"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 142 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'eegJMaBG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 143 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'R6D1ZoZE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 144 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'ZQkJ8DSq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 145 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'FnhdKvjF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 146 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'CFbSFlEW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 147 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'oMPdgK5z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 148 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'n62mhnFS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 149 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'pCTlDNBO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 150 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'cygvv2LA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 151 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'gfBGVzan' \
    --body '[{"endDate": "1971-10-18T00:00:00Z", "grantedCode": "YsB0gqJ8", "itemId": "VhYSikJl", "itemNamespace": "2p9rBx8N", "language": "5egapqxD", "quantity": 48, "region": "4cLfNjzz", "source": "GIFT", "startDate": "1996-07-26T00:00:00Z", "storeId": "8jIkMJb7"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 152 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'cZ2bPsaL' \
    'LpEBVEMk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 153 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '5AsKaF2P' \
    'DLC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 154 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'XkI3zdiR' \
    'iC5IbPit' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 155 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '71JWlYCo' \
    'i4nDfPu5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 156 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'V6QSYxEV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 157 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'OryVuZYm' \
    '["gUeEPB5A"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 158 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'GPgvk0Zt' \
    'haj0EBA4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 159 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'azRz0d56' \
    'smobor4p' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 160 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '1PlgQB9E' \
    'cNGOeBRY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 161 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '6G5ae07d' \
    'eDLaZ8JC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 162 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'vbeTfW0h' \
    'gzrabLJx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 163 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'EwJrEBmQ' \
    '64haNOzl' \
    --body '{"endDate": "1987-06-14T00:00:00Z", "nullFieldList": ["68UYyupj"], "startDate": "1972-08-22T00:00:00Z", "status": "ACTIVE", "useCount": 39}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 164 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'noT0rfWt' \
    'VPwQfq6V' \
    --body '{"useCount": 13}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 165 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'bfPouNdm' \
    'P7fckVnu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 166 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'DGvYIb1p' \
    '5tcR5z8Z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 167 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'JLjSHcaR' \
    '3X4tZmwr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 168 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '0QmOnsEg' \
    '49eXp0xQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 169 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'kZ2JjuwW' \
    --body '{"duration": 96, "endDate": "1983-06-03T00:00:00Z", "itemId": "U11PCeSr", "itemSku": "vejUKwVf", "language": "F37Vr7mk", "order": {"currency": {"currencyCode": "DzFBI1Vw", "currencySymbol": "hkVSKDlN", "currencyType": "VIRTUAL", "decimals": 80, "namespace": "UHBJsvTs"}, "ext": {"qk9hg4hj": {}}, "free": false}, "orderNo": "UdebW6Us", "quantity": 20, "region": "bPkkZAk0", "source": "IAP", "startDate": "1997-10-16T00:00:00Z", "storeId": "xCtWADU2"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 170 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'guN6U9w1' \
    --body '{"code": "3W1K9TZQ", "language": "4qRLEi5w", "region": "owE36rfm"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 171 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'M0CCs35T' \
    --body '{"rewards": [{"currency": {"currencyCode": "PUPLmsY8", "namespace": "WgwSx1DI"}, "item": {"itemId": "5GH9bv9Z", "itemSku": "To2HpA6p", "itemType": "zjHpZO0E"}, "quantity": 17, "type": "ITEM"}], "source": "DLC"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillRewards'
delete_file $TEMP_FILE

#- 172 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'K3nBae3G' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 173 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'OgbQrqra' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 174 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '0PtkfvOp' \
    --body '{"language": "Y2ramp5l", "productId": "nBn6xmBk", "region": "fMtC66hF", "type": "PLAYSTATION"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 175 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '0kPOkORm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 176 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '2XjlNEE5' \
    'ecPzAmi0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 177 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'ySJHfPlo' \
    'P1XkYK4M' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 178 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'gIsDSFMP' \
    'yMhyw1OL' \
    --body '{"status": "DELETED", "statusReason": "VwwxH4BI"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 179 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'DJuDoShM' \
    'Mftll8N0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 180 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'VvChHz9u' \
    'rmt7QWvE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 181 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '8s6Uz8BR' \
    'uYWDTtL6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 182 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'MTTRkCbb' \
    '9S5Q1IVH' \
    --body '{"additionalData": {"cardSummary": "GT88prRE"}, "authorisedTime": "1984-02-18T00:00:00Z", "chargebackReversedTime": "1996-11-12T00:00:00Z", "chargebackTime": "1995-01-24T00:00:00Z", "chargedTime": "1987-10-06T00:00:00Z", "createdTime": "1988-06-10T00:00:00Z", "currency": {"currencyCode": "mohtU13g", "currencySymbol": "f7TRigNZ", "currencyType": "REAL", "decimals": 45, "namespace": "5y3HmK8Q"}, "customParameters": {"VOa62eQZ": {}}, "extOrderNo": "tbLLcF67", "extTxId": "1WLtv38H", "extUserId": "ecczopFm", "issuedAt": "1973-12-17T00:00:00Z", "metadata": {"wpcJBZyi": "3mLC4Kze"}, "namespace": "kiSzeyol", "nonceStr": "nOQt0joV", "paymentMethod": "HgCytC6l", "paymentMethodFee": 86, "paymentOrderNo": "G98YxnHb", "paymentProvider": "WALLET", "paymentProviderFee": 29, "paymentStationUrl": "TKKeuSjf", "price": 8, "refundedTime": "1975-04-28T00:00:00Z", "salesTax": 37, "sandbox": false, "sku": "hF1hzi1N", "status": "AUTHORISE_FAILED", "statusReason": "47syJ5ib", "subscriptionId": "zSHZeCLI", "subtotalPrice": 43, "targetNamespace": "WPVRsdEq", "targetUserId": "A61yTrMg", "tax": 37, "totalPrice": 48, "totalTax": 4, "txEndTime": "1993-02-13T00:00:00Z", "type": "mPzc20Eu", "userId": "O5dMqGDl", "vat": 89}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 183 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ZPY07rEV' \
    'SjzHjL6Z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 184 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'bXjG6DSm' \
    --body '{"currencyCode": "pp3op8ht", "currencyNamespace": "aRLxtW4P", "customParameters": {"vFkESTUL": {}}, "description": "at5F1Le7", "extOrderNo": "cR7q6PWh", "extUserId": "ZmmKz41i", "itemType": "BUNDLE", "language": "78FipJHa", "metadata": {"hViJvLYW": "0kdmlk2l"}, "notifyUrl": "uqSOOA2V", "omitNotification": true, "price": 28, "recurringPaymentOrderNo": "NbB98PuS", "region": "GykqFzPw", "returnUrl": "SMXT53bB", "sandbox": true, "sku": "L38beOYD", "subscriptionId": "VuHZQ9LY", "title": "t6w23Wf8"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 185 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'iEQo72sH' \
    '0aRdcDlD' \
    --body '{"description": "yGcsfIuI"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 186 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '4Dv5lEJp' \
    --body '{"code": "K1AyRlzs", "orderNo": "rRXEFZiv"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 187 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'QOHG6wVi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 188 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'cNratsvv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 189 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'HLmIohfN' \
    --body '{"grantDays": 69, "itemId": "SLXMDWDd", "language": "m5FE4lli", "reason": "QMnutJbp", "region": "Eo4mUNHF", "source": "tdml2xNv"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 190 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'iWacJc3F' \
    'm7Z548uu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 191 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'KgoCBqS5' \
    'uIdCbwCe' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 192 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'eq9ouEdD' \
    'tjOgsypL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 193 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'km2ZYew5' \
    'H7Zm0gnY' \
    --body '{"immediate": true, "reason": "j6MXf9G1"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 194 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'ntyebvoe' \
    'HenAALKt' \
    --body '{"grantDays": 60, "reason": "fxIH446o"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 195 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'UnP2S74u' \
    'nXwg0JKq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 196 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'VWW1rjK1' \
    'epwkAvcs' \
    --body '{"additionalData": {"cardSummary": "YvbgfBVP"}, "authorisedTime": "1978-01-04T00:00:00Z", "chargebackReversedTime": "1996-06-09T00:00:00Z", "chargebackTime": "1979-12-26T00:00:00Z", "chargedTime": "1989-03-07T00:00:00Z", "createdTime": "1990-04-04T00:00:00Z", "currency": {"currencyCode": "z7eMrMD5", "currencySymbol": "TbaUxTCT", "currencyType": "REAL", "decimals": 13, "namespace": "0xjtdBrj"}, "customParameters": {"s3Kiykt2": {}}, "extOrderNo": "Ck2gOlSa", "extTxId": "tECZ2Ugw", "extUserId": "QLqDqYSx", "issuedAt": "1993-11-20T00:00:00Z", "metadata": {"uVlBqird": "p3yxnsET"}, "namespace": "l1SvhQud", "nonceStr": "sjIhXdxi", "paymentMethod": "SoWpnnxg", "paymentMethodFee": 99, "paymentOrderNo": "7BCPMqzQ", "paymentProvider": "ALIPAY", "paymentProviderFee": 17, "paymentStationUrl": "bhpNYsHt", "price": 6, "refundedTime": "1984-10-02T00:00:00Z", "salesTax": 20, "sandbox": false, "sku": "uaZqhJil", "status": "CHARGE_FAILED", "statusReason": "ZkSSKgP5", "subscriptionId": "rxCR77G9", "subtotalPrice": 6, "targetNamespace": "5CA1GORS", "targetUserId": "bL9n0dbW", "tax": 58, "totalPrice": 61, "totalTax": 40, "txEndTime": "1978-04-12T00:00:00Z", "type": "dLQzPnNf", "userId": "BAcWArbk", "vat": 57}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 197 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'fdHIZb03' \
    'otqmBuS9' \
    --body '{"count": 95, "orderNo": "2pCZ23UH"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 198 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    'mk0lpJ4J' \
    'Ll01qi7L' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 199 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '2oDUoVRU' \
    'b39j22P4' \
    --body '{"amount": 89, "reason": "p09cKmjR", "source": "PURCHASE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 200 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'ZVBVS7OK' \
    '2Zrdcsck' \
    --body '{"amount": 77}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 201 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'ekROWZ2K' \
    'UTqkK2eF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 202 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'aGLoSmEE' \
    'PbLywJsy' \
    --body '{"amount": 93, "reason": "ie6fZgLl"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 203 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'lUPsO8lg' \
    '46Si7006' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 204 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'vL2w4aaj' \
    'DAOx0iJj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 205 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'Yleaktqv' \
    '2WkljQuD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListUserWalletTransactions'
delete_file $TEMP_FILE

#- 206 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryWallets'
delete_file $TEMP_FILE

#- 207 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    '5mnJONqH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 208 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'Gq8mB7mF' \
    '2lMFcagh' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 209 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["FXJIJflR"], "apiKey": "HFcsIqCy", "authoriseAsCapture": true, "blockedPaymentMethods": ["DifSSQ5O"], "liveEndpointUrlPrefix": "n2ccEcl3", "merchantAccount": "xeiO4bwF", "notificationHmacKey": "5JOjGoGx", "notificationPassword": "KM3qMce5", "notificationUsername": "tfLcpjFZ", "returnUrl": "MKCbp0pE", "settings": "bLCLFpHx"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 210 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "MYF83607", "privateKey": "5xEpzdnY", "publicKey": "tpja5ig2", "returnUrl": "isQZga6V"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 211 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "y76izPiQ", "secretKey": "RjYa8fv5"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfig'
delete_file $TEMP_FILE

#- 212 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 213 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "fIt22tIZ", "clientSecret": "hjhgkigW", "returnUrl": "22zXMWXf", "webHookId": "bcM0GIAL"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 214 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["IbFCQgBc"], "publishableKey": "LNT6iOQV", "secretKey": "Yx5rW2gM", "webhookSecret": "sI1aYBit"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 215 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "Sn3UDeKj", "key": "97I4WYXL", "mchid": "qjN7ktOB", "returnUrl": "TraBxWRT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 216 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "VuYEqGlK", "flowCompletionUrl": "DwTKXBrX", "merchantId": 17, "projectId": 85, "projectSecretKey": "cd9IW8ki"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 217 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'CKeQJWZB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 218 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'vcq1ETvW' \
    --body '{"allowedPaymentMethods": ["BxYZJh7B"], "apiKey": "8gbnSu9M", "authoriseAsCapture": true, "blockedPaymentMethods": ["D2udaeYp"], "liveEndpointUrlPrefix": "CXYSMiy8", "merchantAccount": "7CTqEQBg", "notificationHmacKey": "36my3sY2", "notificationPassword": "clrDcain", "notificationUsername": "0cOVF1zH", "returnUrl": "wDTI0sJ1", "settings": "Q0kphMTg"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 219 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'gSP2SLcu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 220 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'AP7vU971' \
    --body '{"appId": "Czw2nbg8", "privateKey": "C7Mvywhu", "publicKey": "6MjOjuGz", "returnUrl": "o1Fz4tU0"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 221 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'aSn98N8q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 222 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'OUA0z92R' \
    --body '{"publicKey": "aDe8ngT8", "secretKey": "LRQkMnG1"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 223 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'LZyF2mdY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 224 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'Y6ZMfuTY' \
    --body '{"clientID": "TKsue48q", "clientSecret": "BEBNAV5B", "returnUrl": "Te6ec1zA", "webHookId": "92URCLSG"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 225 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'PmRBZWun' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 226 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'HW7MYvr6' \
    --body '{"allowedPaymentMethodTypes": ["QA7Ppepc"], "publishableKey": "92HA94eA", "secretKey": "CdeyfUpg", "webhookSecret": "iPpf8nxK"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 227 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'J3dnmtPw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 228 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'a64Y4gPE' \
    --body '{"appId": "KMhhu9a6", "key": "f3xJNtUl", "mchid": "KLlIIAeH", "returnUrl": "bm5M6LsY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 229 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '1VMuIEcR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 230 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'ls68M3MP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 231 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'MRPBepyy' \
    --body '{"apiKey": "Mz6zfR1p", "flowCompletionUrl": "vTYYtDOi", "merchantId": 60, "projectId": 17, "projectSecretKey": "4RuEcHCS"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 232 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'GhpOZQFl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 233 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'wOiuKGDF' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaUIConfig'
delete_file $TEMP_FILE

#- 234 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 235 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "s0m8ANrc", "region": "Ral7ta3f", "sandboxTaxJarApiToken": "ojA3h4MM", "specials": ["WXPAY"], "taxJarApiToken": "J5zlsFBw", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 236 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 237 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 239 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'LYvmg6av' \
    --body '{"aggregate": "ADYEN", "namespace": "dQFF1CPN", "region": "Y9u2dVYd", "sandboxTaxJarApiToken": "glOOoCeK", "specials": ["ADYEN"], "taxJarApiToken": "PKmBqVux", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 240 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'D8aertAV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 241 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxConfig'
delete_file $TEMP_FILE

#- 242 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "Cqs8XT8x", "taxJarApiToken": "y3nJ06Kk", "taxJarEnabled": true, "taxJarProductCodesMapping": {"eA0ARj9r": "icfayvnh"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 243 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'i8MDdY4W' \
    'LHoaUkYn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncPaymentOrders'
delete_file $TEMP_FILE

#- 244 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRootCategories'
delete_file $TEMP_FILE

#- 245 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadCategories'
delete_file $TEMP_FILE

#- 246 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'Qp5egdmV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 247 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'E8ImivNt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 248 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'QxqWRKHo' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetDescendantCategories'
delete_file $TEMP_FILE

#- 249 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListCurrencies'
delete_file $TEMP_FILE

#- 250 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'hODoWOr9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemByAppId'
delete_file $TEMP_FILE

#- 251 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryItems'
delete_file $TEMP_FILE

#- 252 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '8kjBUas9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 253 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'jjz2Frgi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 254 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'aGrcB7dI' \
    'OVKIPSJJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 255 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Ho5W8tKH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 256 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '8ou9Sdbx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 257 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'SXcrEFCw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 258 GetPaymentCustomization
$PYTHON -m $MODULE 'platform-get-payment-customization' \
    'STRIPE' \
    'eGNLdIBR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCustomization'
delete_file $TEMP_FILE

#- 259 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "dliFQVMK", "paymentProvider": "PAYPAL", "returnUrl": "zVUWlUWD", "ui": "s2x1EQU0", "zipCode": "oepEvcja"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 260 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'SgEh6jJn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 261 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'FxinIHJ1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 262 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'o7aq5Zzn' \
    --body '{"token": "d5eacobT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 263 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'suRlhreQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 264 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    'ID3o8hJW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 265 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'VjKIOAw7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 266 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '0DvAHhSG' \
    'WUvzq1Za' \
    'WXPAY' \
    'C4vQFsUJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 267 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'PfiaJp1r' \
    'STRIPE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 268 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '7OBgBCe6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetRewardByCode'
delete_file $TEMP_FILE

#- 269 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards1'
delete_file $TEMP_FILE

#- 270 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'N0eI65Mn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward1'
delete_file $TEMP_FILE

#- 271 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListStores'
delete_file $TEMP_FILE

#- 272 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 273 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '5tngEYXg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 274 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'PVT5CqXD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 275 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'ZBVMJyJe' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 276 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 277 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'KFO92YDt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 278 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'aZvJoKS0' \
    --body '{"serviceLabel": 80}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 279 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'xyipZuO4' \
    --body '{"appId": "N9S2YCgH", "steamId": "a6XBcvGR"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamDLC'
delete_file $TEMP_FILE

#- 280 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Yk5rUtWH' \
    --body '{"xstsToken": "Cnhmzzpp"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxDLC'
delete_file $TEMP_FILE

#- 281 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'V7tKNKYU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 282 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'QVBXymWc' \
    'NlHaFxYa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 283 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'GHUpmBFy' \
    'GAME' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 284 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'FKtxGNAi' \
    '0fq4xChP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 285 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'Ld2lOopc' \
    '7XoVpdd6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 286 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'rCpyMrnH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 287 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '9YHXh7Kn' \
    'CVOKY2zs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 288 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'BRGtd8QY' \
    '2OLbijrv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 289 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'fr8hknjW' \
    'UWdMUXHv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 290 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'w4pNlGLj' \
    'dBxLM079' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 291 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'pDAbTgms' \
    'EYEq2GkY' \
    --body '{"useCount": 72}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 292 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '1vYm9flX' \
    --body '{"code": "Q7CQoemn", "language": "QG0dH0NV", "region": "M9VEHTPq"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 293 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'Dhkcu5vn' \
    --body '{"excludeOldTransactions": true, "language": "6GiNMboB", "productId": "JHml0LJm", "receiptData": "pPi4mqhr", "region": "uiCZLGGP", "transactionId": "5UXkHNTM"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 294 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'app5Sbon' \
    --body '{"epicGamesJwtToken": "sUJKADr6"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 295 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '0EkdFrpL' \
    --body '{"language": "sGt9yTXW", "orderId": "USCQcMsH", "packageName": "N7reI22k", "productId": "s7I12tAZ", "purchaseTime": 5, "purchaseToken": "8sxxLx9X", "region": "QeqNWLm8"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 296 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'cNJbYH5J' \
    --body '{"currencyCode": "4WiJLv9N", "price": 0.3426061312085511, "productId": "wtw2Mjcy", "serviceLabel": 74}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 297 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    '6Zs5Bu2X' \
    --body '{"appId": "YopLWZeU", "language": "KJJNftRp", "region": "Ggk1iseR", "stadiaPlayerId": "EzzRG6z9"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 298 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'wmuHddyO' \
    --body '{"appId": "dibI1LVy", "currencyCode": "qbdY8DGZ", "language": "KAuoIKz3", "price": 0.6516336295186507, "productId": "3zLWUxMz", "region": "MtSmMmZP", "steamId": "8nG0FoQP"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 299 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '8q7aSsb8' \
    --body '{"currencyCode": "5gAh9RD3", "price": 0.8119639560551454, "productId": "N6N1iJ8l", "xstsToken": "tt9IRqCf"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 300 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'lgln6r5f' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 301 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '0s5H6lCf' \
    --body '{"currencyCode": "3QHa11hL", "discountedPrice": 74, "ext": {"Cgw5av4L": {}}, "itemId": "ExdabD8g", "language": "2cvHfMRu", "price": 31, "quantity": 59, "region": "A5xbjs3X", "returnUrl": "RdHUJ0GC"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 302 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'mflIXkgJ' \
    '6zkTwoak' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 303 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'q7sEejFZ' \
    '1NtONXb9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 304 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'w9hsQHsz' \
    'IsfrlzKp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 305 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'Qdd58dZP' \
    '5RvrinNt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 306 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'vBtqFSkA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 307 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '68mIVYJ5' \
    'card' \
    'SVxBsLht' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 308 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'y3pecToX' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 309 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'A4M1oUFP' \
    --body '{"currencyCode": "hgo7Z6mw", "itemId": "NC4FY69m", "language": "M87joJNO", "region": "GB83Ns6H", "returnUrl": "l5Poab6l", "source": "KoVqNBUz"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 310 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'IxOfglqu' \
    'S2q2DoWr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 311 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '9zvFtKa2' \
    'mOAqOokV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 312 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    '1plxQ2Yr' \
    'iTPfipD6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 313 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '7jI2hiZk' \
    'rtLnh2U1' \
    --body '{"immediate": false, "reason": "MxkfNMPN"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 314 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'tqv2TMz1' \
    'b7SnzkXO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 315 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'ek83Igm1' \
    'wkSWsYvA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 316 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'su18obUd' \
    'c8mbvXcw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT