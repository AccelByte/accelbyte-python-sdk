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

OPERATIONS_COUNT=302

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
    --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemType": "SUBSCRIPTION", "language": "ECbZbygy", "listable": false, "localExt": {"arORoeNH": {}}, "longDescription": "Sb8Rh3kg", "maxCount": 37, "maxCountPerUser": 32, "name": "qJbnQsoB", "namespace": "giVpP8Cm", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 52, "fixedTrialCycles": 89, "graceDays": 92}, "region": "oxdxxFqm", "regionData": [{"currencyCode": "AGTJ8IEd", "currencyNamespace": "agEtp4w2", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1997-12-12T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1985-05-11T00:00:00Z", "discountedPrice": 96, "expireAt": "1987-03-22T00:00:00Z", "price": 20, "purchaseAt": "1991-04-12T00:00:00Z", "trialPrice": 30}], "seasonType": "TIER", "sku": "KMfjiX7j", "stackable": false, "status": "ACTIVE", "tags": ["VZk3IaQY"], "targetCurrencyCode": "EmqGodOE", "targetItemId": "Gt9gPOj0", "targetNamespace": "c6i0JkvI", "thumbnailUrl": "as73ucYn", "title": "FAJ3DK5T", "updatedAt": "1999-08-29T00:00:00Z", "useCount": 28}, "namespace": "gg0Y39Uo", "order": {"currency": {"currencyCode": "Ylpv5bVA", "currencySymbol": "gtsDhUTD", "currencyType": "VIRTUAL", "decimals": 5, "namespace": "bQDjbTQu"}, "ext": {"PMz2PTRl": {}}, "free": false}, "source": "REWARD"}, "script": "U89ZPOw6", "type": "grantDays"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'PFJ42cwm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetFulfillmentScript'
delete_file $TEMP_FILE

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'zBBSMNco' \
    --body '{"grantDays": "AAOjKNjf"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateFulfillmentScript'
delete_file $TEMP_FILE

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'cYHm093a' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'YgBU1sqj' \
    --body '{"grantDays": "yK0XH45P"}' \
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
    --body '{"description": "aRSOFQBt", "items": [{"extraSubscriptionDays": 41, "itemId": "23REZ8hR", "itemName": "VX7LGOvD", "quantity": 6}], "maxRedeemCountPerCampaignPerUser": 17, "maxRedeemCountPerCode": 84, "maxRedeemCountPerCodePerUser": 89, "maxSaleCount": 16, "name": "7mV1C91p", "redeemEnd": "1975-09-14T00:00:00Z", "redeemStart": "1974-05-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["cTQdvln2"], "type": "REDEMPTION"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCampaign'
delete_file $TEMP_FILE

#- 9 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'uSQWEXL6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaign'
delete_file $TEMP_FILE

#- 10 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'LFE1YHo9' \
    --body '{"description": "m126ZWc8", "items": [{"extraSubscriptionDays": 14, "itemId": "HtWvbNYq", "itemName": "gUqslArF", "quantity": 82}], "maxRedeemCountPerCampaignPerUser": 17, "maxRedeemCountPerCode": 67, "maxRedeemCountPerCodePerUser": 93, "maxSaleCount": 68, "name": "vaCv8kU9", "redeemEnd": "1972-08-11T00:00:00Z", "redeemStart": "1984-05-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["JLhsVyEx"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCampaign'
delete_file $TEMP_FILE

#- 11 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'rkxoot0B' \
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
    '7WOfercZ' \
    --body '{"categoryPath": "dpMci37D", "localizationDisplayNames": {"s7YSfExa": "I3uzLteM"}}' \
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
    'bFAlt4hr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCategory'
delete_file $TEMP_FILE

#- 16 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '7HmOYiBA' \
    '5ltAOXml' \
    --body '{"localizationDisplayNames": {"G6eh1dTd": "oTFpBIcu"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCategory'
delete_file $TEMP_FILE

#- 17 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'C1dQY93O' \
    'JnJ6Te9v' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCategory'
delete_file $TEMP_FILE

#- 18 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'D8ldz7Hu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetChildCategories'
delete_file $TEMP_FILE

#- 19 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '8AD79kdW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetDescendantCategories'
delete_file $TEMP_FILE

#- 20 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'unvizU0q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCodes'
delete_file $TEMP_FILE

#- 21 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '1pHyhhER' \
    --body '{"quantity": 29}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCodes'
delete_file $TEMP_FILE

#- 22 Download
$PYTHON -m $MODULE 'platform-download' \
    'GgdrysMi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Download'
delete_file $TEMP_FILE

#- 23 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'zBGSRdP2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkDisableCodes'
delete_file $TEMP_FILE

#- 24 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'l7DNSZ8A' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkEnableCodes'
delete_file $TEMP_FILE

#- 25 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'q0XiPLQX' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRedeemHistory'
delete_file $TEMP_FILE

#- 26 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'Se07ZddO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCode'
delete_file $TEMP_FILE

#- 27 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'GTMlJjBw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableCode'
delete_file $TEMP_FILE

#- 28 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'j9HJHQKs' \
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
    --body '{"currencyCode": "eEdSXRDS", "currencySymbol": "vguauw1x", "currencyType": "REAL", "decimals": 76, "localizationDescriptions": {"wSl9MLH0": "NnTJ2ulN"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCurrency'
delete_file $TEMP_FILE

#- 31 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'zBvwJaQa' \
    --body '{"localizationDescriptions": {"547JllvA": "8RWSpabU"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCurrency'
delete_file $TEMP_FILE

#- 32 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    't7xk6Qxy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCurrency'
delete_file $TEMP_FILE

#- 33 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'WhfqoWfJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencyConfig'
delete_file $TEMP_FILE

#- 34 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'w2o8oWUq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencySummary'
delete_file $TEMP_FILE

#- 35 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryEntitlements'
delete_file $TEMP_FILE

#- 36 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'vPCZ2HzT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetEntitlement'
delete_file $TEMP_FILE

#- 37 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryFulfillmentHistories'
delete_file $TEMP_FILE

#- 38 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAppleIAPConfig'
delete_file $TEMP_FILE

#- 39 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "7NXmWDlX", "password": "suNIdQJR"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAppleIAPConfig'
delete_file $TEMP_FILE

#- 40 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 41 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 42 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "5lsNOlvk"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 43 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 44 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetGoogleIAPConfig'
delete_file $TEMP_FILE

#- 45 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "fwaSbnsu", "serviceAccountId": "LCgToxuV"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 46 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 47 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGoogleP12File'
delete_file $TEMP_FILE

#- 48 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 49 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "TekJgvg6"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 50 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 51 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStadiaIAPConfig'
delete_file $TEMP_FILE

#- 52 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 53 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 54 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSteamIAPConfig'
delete_file $TEMP_FILE

#- 55 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"publisherAuthenticationKey": "h5HIpH0D"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSteamIAPConfig'
delete_file $TEMP_FILE

#- 56 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 57 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetXblIAPConfig'
delete_file $TEMP_FILE

#- 58 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "viplEk4v"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblIAPConfig'
delete_file $TEMP_FILE

#- 59 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteXblAPConfig'
delete_file $TEMP_FILE

#- 60 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXblBPCertFile'
delete_file $TEMP_FILE

#- 61 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'j3LDp4yq' \
    --body '{"categoryPath": "Dt8QUZDp", "targetItemId": "xlHasinG", "targetNamespace": "cjrkmRMt"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncInGameItem'
delete_file $TEMP_FILE

#- 62 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'tgjDSaIV' \
    --body '{"appId": "Bmft3Udg", "appType": "SOFTWARE", "baseAppId": "9PGmY2H5", "boothName": "kX4MsisS", "categoryPath": "X28nARxW", "clazz": "Rpv5ou5x", "displayOrder": 39, "entitlementType": "CONSUMABLE", "ext": {"d28OUfCt": {}}, "features": ["8UJC5flN"], "images": [{"as": "yj6HsTtX", "caption": "8P3llnaa", "height": 89, "imageUrl": "9lqyygPc", "smallImageUrl": "fkJIxfQZ", "width": 51}], "itemIds": ["a8kNVbDx"], "itemType": "CODE", "listable": false, "localizations": {"0F89xAc3": {"description": "YVfaENtr", "localExt": {"l0pTKZTX": {}}, "longDescription": "qzHuBMYQ", "title": "SA2jz1ZO"}}, "maxCount": 30, "maxCountPerUser": 7, "name": "OjSyMddB", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 86, "fixedTrialCycles": 93, "graceDays": 48}, "regionData": {"BHRj8IiR": [{"currencyCode": "imRllHT6", "currencyNamespace": "Dc40vFFA", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1994-08-28T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-06-30T00:00:00Z", "discountedPrice": 6, "expireAt": "1985-05-01T00:00:00Z", "price": 24, "purchaseAt": "1999-02-12T00:00:00Z", "trialPrice": 80}]}, "seasonType": "PASS", "sku": "qQIqcJVK", "stackable": false, "status": "INACTIVE", "tags": ["M1J1IbuT"], "targetCurrencyCode": "rrkbmuT1", "targetNamespace": "whOqmEnD", "thumbnailUrl": "XIWrBPlS", "useCount": 1}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateItem'
delete_file $TEMP_FILE

#- 63 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'y46mv71B' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemByAppId'
delete_file $TEMP_FILE

#- 64 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryItems'
delete_file $TEMP_FILE

#- 65 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 66 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'AZAOjtFJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemBySku'
delete_file $TEMP_FILE

#- 67 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '2vmTj7tT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItemBySku'
delete_file $TEMP_FILE

#- 68 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '7TZHWDdC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemIdBySku'
delete_file $TEMP_FILE

#- 69 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'kIsZoArW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetLocaleItems'
delete_file $TEMP_FILE

#- 70 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'wPHcyFAd' \
    'AtYciLIg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SearchItems'
delete_file $TEMP_FILE

#- 71 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUncategorizedItems'
delete_file $TEMP_FILE

#- 72 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'RwFRr0gw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItem'
delete_file $TEMP_FILE

#- 73 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'B9tz3vp9' \
    '9XVlV8rK' \
    --body '{"appId": "3tE6n0sm", "appType": "SOFTWARE", "baseAppId": "p1tw3L7c", "boothName": "Ud9pqtv6", "categoryPath": "JfPZwcCV", "clazz": "OXcVa80T", "displayOrder": 25, "entitlementType": "CONSUMABLE", "ext": {"wtD2lAH0": {}}, "features": ["1o6NdcBI"], "images": [{"as": "gzrDyWpF", "caption": "BYGmmBaw", "height": 77, "imageUrl": "yoKyNpdA", "smallImageUrl": "asm8xwUf", "width": 50}], "itemIds": ["OlQiZY4N"], "itemType": "APP", "listable": true, "localizations": {"OTzNMvuq": {"description": "2tNl4CX4", "localExt": {"IjiK4DEU": {}}, "longDescription": "JRVK3l9E", "title": "b0R1XRb0"}}, "maxCount": 86, "maxCountPerUser": 66, "name": "8vS1smeO", "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 13, "fixedTrialCycles": 34, "graceDays": 6}, "regionData": {"TXCzaPBt": [{"currencyCode": "kZMio4wc", "currencyNamespace": "yhloVS3r", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1980-01-22T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1977-08-13T00:00:00Z", "discountedPrice": 60, "expireAt": "1994-01-12T00:00:00Z", "price": 92, "purchaseAt": "1973-02-07T00:00:00Z", "trialPrice": 48}]}, "seasonType": "PASS", "sku": "WjDNhzCL", "stackable": true, "status": "INACTIVE", "tags": ["wO763iEk"], "targetCurrencyCode": "lkzLm88L", "targetNamespace": "pLuYRO3C", "thumbnailUrl": "55yHpwK2", "useCount": 70}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateItem'
delete_file $TEMP_FILE

#- 74 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'aqenDGn7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteItem'
delete_file $TEMP_FILE

#- 75 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'a2NUplWi' \
    --body '{"count": 74, "orderNo": "jq06n6a0"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireItem'
delete_file $TEMP_FILE

#- 76 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'rW8Efkpa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetApp'
delete_file $TEMP_FILE

#- 77 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'XtwYZJaQ' \
    '4WbwNmsF' \
    --body '{"carousel": [{"alt": "YetjEurH", "previewUrl": "8eloJzNK", "thumbnailUrl": "tRUaTz1E", "type": "image", "url": "smwzjkkn", "videoSource": "generic"}], "developer": "iQl05g7c", "forumUrl": "O3ZMb6Oj", "genres": ["lo6DMNpP"], "localizations": {"2qMrTQ1U": {"announcement": "pjfU6wJh", "slogan": "y1jOVkkU"}}, "platformRequirements": {"lS79527E": [{"additionals": "Z25Ia8uC", "directXVersion": "eZFlLtEV", "diskSpace": "pDAEbA82", "graphics": "jy74lq0p", "label": "DE5xRwh5", "osVersion": "b45ebpcM", "processor": "7ScSs3UO", "ram": "pAwIp9rR", "soundCard": "tn1PcCxd"}]}, "platforms": ["bumeYgOd"], "players": ["EBWRQiW3"], "primaryGenre": "Sports", "publisher": "FfU8icH4", "releaseDate": "1997-02-16T00:00:00Z", "websiteUrl": "RB1GyLfL"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateApp'
delete_file $TEMP_FILE

#- 78 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'g4RYuEbg' \
    'UDEcJyIv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableItem'
delete_file $TEMP_FILE

#- 79 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'sPwOr0Bm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemDynamicData'
delete_file $TEMP_FILE

#- 80 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'V5iFvfwF' \
    'jTSmIEqo' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableItem'
delete_file $TEMP_FILE

#- 81 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'LyLeUGmo' \
    'mGX9sXTZ' \
    '0v8pqLfc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FeatureItem'
delete_file $TEMP_FILE

#- 82 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '5SwGnReU' \
    'ULDX4QUI' \
    'bb5nh68Z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DefeatureItem'
delete_file $TEMP_FILE

#- 83 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'nyUtRvW9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItem'
delete_file $TEMP_FILE

#- 84 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'hNBSFTtF' \
    --body '{"orderNo": "rOmjkFrF"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ReturnItem'
delete_file $TEMP_FILE

#- 85 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryKeyGroups'
delete_file $TEMP_FILE

#- 86 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "VA8t0xF3", "name": "4Xpt6ZlT", "status": "ACTIVE", "tags": ["c0kr2a0n"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateKeyGroup'
delete_file $TEMP_FILE

#- 87 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'I2oo7UHC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroup'
delete_file $TEMP_FILE

#- 88 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'JK5sp0aC' \
    --body '{"description": "vIq3aHVY", "name": "IlewLRuH", "status": "ACTIVE", "tags": ["Gj0HTeeW"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateKeyGroup'
delete_file $TEMP_FILE

#- 89 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'XlIcRidq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroupDynamic'
delete_file $TEMP_FILE

#- 90 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'ctDpygY0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListKeys'
delete_file $TEMP_FILE

#- 91 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'ax476ED4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UploadKeys'
delete_file $TEMP_FILE

#- 92 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryOrders'
delete_file $TEMP_FILE

#- 93 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrderStatistics'
delete_file $TEMP_FILE

#- 94 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'MMO9Tw2J' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrder'
delete_file $TEMP_FILE

#- 95 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'H0qhWIwH' \
    --body '{"description": "WTgzJFRY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundOrder'
delete_file $TEMP_FILE

#- 96 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 97 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "6t1IKZLO", "privateKey": "6V4Ode46"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 98 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentNotifications'
delete_file $TEMP_FILE

#- 99 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentOrders'
delete_file $TEMP_FILE

#- 100 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "QmCidgdp", "currencyNamespace": "P7RTC587", "customParameters": {"lmUmBziP": {}}, "description": "ZBnpOfkl", "extOrderNo": "lxfq0Nsr", "extUserId": "Sjw5Hog0", "itemType": "APP", "language": "lM1d5MSt", "metadata": {"YGczLINl": "EC0OEsE3"}, "notifyUrl": "yzIsUP0N", "omitNotification": false, "price": 23, "recurringPaymentOrderNo": "uOrGZTzs", "region": "LW7Fjfs9", "returnUrl": "nIkcZ38f", "sandbox": true, "sku": "anjKHbXf", "subscriptionId": "k1zxdzxg", "targetNamespace": "0UXcRyHi", "targetUserId": "3u8BzVWu", "title": "1tOmhUtC"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 101 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'gcpvGrEb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 102 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'cZUDExH1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 103 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'tayOGXIH' \
    --body '{"extTxId": "zMRjMCtO", "paymentMethod": "JsEijlrb", "paymentProvider": "STRIPE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 104 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'yyEcQxVg' \
    --body '{"description": "JIjMZqcW"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 105 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'fMl6dqrp' \
    --body '{"amount": 59, "currencyCode": "4tnc3ZRB", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 39, "vat": 82}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 106 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'fAJEomwe' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 107 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "nJvQ8grt", "eventTopic": "QSv6EcAL", "maxAwarded": 5, "maxAwardedPerUser": 76, "rewardCode": "IPms5bT5", "rewardConditions": [{"condition": "1M4yko8S", "conditionName": "0EnGLvGv", "eventName": "fuSyCTyj", "rewardItems": [{"duration": 19, "itemId": "4mCaiuMG", "quantity": 73}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 108 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 109 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportRewards'
delete_file $TEMP_FILE

#- 110 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'True' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportRewards'
delete_file $TEMP_FILE

#- 111 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '5GJJooSX' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 112 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'Ul3YU35Q' \
    --body '{"description": "HGpBABnO", "eventTopic": "lxDznICQ", "maxAwarded": 95, "maxAwardedPerUser": 48, "rewardCode": "qBg34WTt", "rewardConditions": [{"condition": "Dkn0rtn6", "conditionName": "t0Yx4z12", "eventName": "EaQ1rUQY", "rewardItems": [{"duration": 56, "itemId": "NTiDX4jE", "quantity": 76}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 113 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '2IsTHu8Q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 114 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'wNyOlXfI' \
    --body '{"payload": {"Wd0mcq5T": {}}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckEventCondition'
delete_file $TEMP_FILE

#- 115 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListStores'
delete_file $TEMP_FILE

#- 116 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "4SUc7cWf", "defaultRegion": "CKK6Dij1", "description": "gFcenEMy", "supportedLanguages": ["SPfhxBen"], "supportedRegions": ["DiTiAqFY"], "title": "mFKjaELm"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateStore'
delete_file $TEMP_FILE

#- 117 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportStore'
delete_file $TEMP_FILE

#- 118 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStore'
delete_file $TEMP_FILE

#- 119 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePublishedStore'
delete_file $TEMP_FILE

#- 120 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPublishedStoreBackup'
delete_file $TEMP_FILE

#- 121 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RollbackPublishedStore'
delete_file $TEMP_FILE

#- 122 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'mll6oexI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 123 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'd1OKGUN2' \
    --body '{"defaultLanguage": "Uznd7uVa", "defaultRegion": "7t14yvSY", "description": "SV52bHif", "supportedLanguages": ["CIf4tsuu"], "supportedRegions": ["6Pkam6tF"], "title": "SYFt4ZxA"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 124 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '2PzZFRkB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 125 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'Nlg6hn5q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 126 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'usKyZAuV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportStore'
delete_file $TEMP_FILE

#- 127 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySubscriptions'
delete_file $TEMP_FILE

#- 128 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    '6uUvqM0l' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 129 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'V6UZMlEb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 130 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'xHNgJRiQ' \
    --body '{"orderNo": "ExaunjdA"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 131 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'qnHUz44t' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 132 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'x4O6hamP' \
    --body '{"count": 45, "orderNo": "Noi071ez"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 133 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'DK56JFIG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 134 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'e1IMUCLc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 135 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'N0DsaD5F' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 136 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'yBsFe9OY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 137 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'EJVsYffm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 138 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'hyx6J25P' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 139 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'rM4S3cB8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 140 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'm17hEeLL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 141 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'goaYth6z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 142 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'cf8eA45O' \
    --body '[{"endDate": "1990-06-16T00:00:00Z", "grantedCode": "ObWejo9L", "itemId": "fGeegJMa", "itemNamespace": "BGR6D1Zo", "language": "ZEZQkJ8D", "quantity": 88, "region": "qFnhdKvj", "source": "GIFT", "startDate": "1985-09-05T00:00:00Z", "storeId": "bSFlEWoM"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 143 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'PdgK5zn6' \
    '2mhnFSpC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 144 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'TlDNBOcy' \
    'DEMO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 145 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'vv2LAgfB' \
    'GVzanbKY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 146 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'sB0gqJ8V' \
    'hYSikJl2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 147 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'p9rBx8N5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 148 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'egapqxDy' \
    '["4cLfNjzz"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 149 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'EZYA8jIk' \
    'MJb7cZ2b' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 150 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'PsaLLpEB' \
    'VEMk5AsK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 151 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'aF2P44lX' \
    'kI3zdiRi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 152 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'C5IbPit7' \
    '1JWlYCoi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 153 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '4nDfPu5V' \
    '6QSYxEVO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 154 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'ryVuZYmg' \
    'UeEPB5AG' \
    --body '{"endDate": "1991-02-16T00:00:00Z", "nullFieldList": ["vk0Zthaj"], "startDate": "1997-08-25T00:00:00Z", "status": "REVOKED", "useCount": 52}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 155 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '4azRz0d5' \
    '6smobor4' \
    --body '{"useCount": 30}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 156 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '1PlgQB9E' \
    'cNGOeBRY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 157 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '6G5ae07d' \
    'eDLaZ8JC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 158 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'vbeTfW0h' \
    'gzrabLJx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 159 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'EwJrEBmQ' \
    '64haNOzl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 160 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'Gu68UYyu' \
    --body '{"duration": 30, "endDate": "1975-01-31T00:00:00Z", "itemId": "DetnoT0r", "itemSku": "fWtVPwQf", "language": "q6V92gbf", "order": {"currency": {"currencyCode": "PouNdmP7", "currencySymbol": "fckVnuDG", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "Ib1p5tcR"}, "ext": {"5z8ZJLjS": {}}, "free": false}, "orderNo": "aR3X4tZm", "quantity": 44, "region": "r0QmOnsE", "source": "IAP", "startDate": "1999-01-29T00:00:00Z", "storeId": "Xp0xQkZ2"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 161 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'JjuwWWy0' \
    --body '{"code": "tU11PCeS", "language": "rvejUKwV", "region": "fF37Vr7m"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 162 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'kDzFBI1V' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 163 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'whkVSKDl' \
    --body '{"language": "NFOUHBJs", "productId": "vTsqk9hg", "region": "4hj6nUde", "type": "APPLE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 164 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'W6UskbPk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 165 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'kZAk01f1' \
    'KxCtWADU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 166 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '2guN6U9w' \
    '13W1K9TZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 167 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'Q4qRLEi5' \
    'wowE36rf' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "M0CCs35T"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 168 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'PUPLmsY8' \
    'WgwSx1DI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 169 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '5GH9bv9Z' \
    'To2HpA6p' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 170 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'zjHpZO0E' \
    '9iLgRPJK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 171 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '3nBae3GO' \
    'gbQrqra0' \
    --body '{"additionalData": {"cardSummary": "PtkfvOpY"}, "authorisedTime": "1998-05-12T00:00:00Z", "chargebackReversedTime": "1971-04-09T00:00:00Z", "chargebackTime": "1978-04-02T00:00:00Z", "chargedTime": "1977-08-11T00:00:00Z", "createdTime": "1977-07-07T00:00:00Z", "currency": {"currencyCode": "mBkfMtC6", "currencySymbol": "6hFq0kPO", "currencyType": "REAL", "decimals": 80, "namespace": "Rm2XjlNE"}, "customParameters": {"E5ecPzAm": {}}, "extOrderNo": "i0ySJHfP", "extTxId": "loP1XkYK", "extUserId": "4MgIsDSF", "issuedAt": "1990-11-28T00:00:00Z", "metadata": {"yMhyw1OL": "ZPVwwxH4"}, "namespace": "BIDJuDoS", "nonceStr": "hMMftll8", "paymentMethod": "N0VvChHz", "paymentMethodFee": 40, "paymentOrderNo": "rmt7QWvE", "paymentProvider": "CHECKOUT", "paymentProviderFee": 92, "paymentStationUrl": "z8BRuYWD", "price": 90, "refundedTime": "1980-10-26T00:00:00Z", "salesTax": 77, "sandbox": false, "sku": "Cbb9S5Q1", "status": "CHARGEBACK_REVERSED", "statusReason": "VHGT88pr", "subscriptionId": "REBgYOWd", "subtotalPrice": 66, "targetNamespace": "J9Jumoht", "targetUserId": "U13gf7TR", "tax": 16, "totalPrice": 12, "totalTax": 79, "txEndTime": "1996-03-13T00:00:00Z", "type": "5w5y3HmK", "userId": "8QVOa62e", "vat": 85}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 172 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ZtbLLcF6' \
    '71WLtv38' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 173 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'HecczopF' \
    --body '{"currencyCode": "meRwpcJB", "currencyNamespace": "Zyi3mLC4", "customParameters": {"KzekiSze": {}}, "description": "yolnOQt0", "extOrderNo": "joVHgCyt", "extUserId": "C6lRG98Y", "itemType": "SUBSCRIPTION", "language": "nHbRdoTK", "metadata": {"KeuSjfZe": "9i1osghF"}, "notifyUrl": "1hzi1Nl4", "omitNotification": true, "price": 48, "recurringPaymentOrderNo": "J5ibzSHZ", "region": "eCLIvWPV", "returnUrl": "RsdEqA61", "sandbox": true, "sku": "TrMgsycT", "subscriptionId": "gmPzc20E", "title": "uO5dMqGD"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 174 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'lSZPY07r' \
    'EVSjzHjL' \
    --body '{"description": "6ZbXjG6D"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 175 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'Smpp3op8' \
    --body '{"code": "htaRLxtW", "orderNo": "4PvFkEST"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 176 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'ULat5F1L' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 177 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'e7cR7q6P' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 178 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'WhZmmKz4' \
    --body '{"grantDays": 17, "itemId": "1Tp78Fip", "language": "JHahViJv", "reason": "LYW0kdml", "region": "k2luqSOO", "source": "A2VOZBoN"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 179 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'bB98PuSG' \
    'ykqFzPwS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 180 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'MXT53bBu' \
    'L38beOYD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 181 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'VuHZQ9LY' \
    't6w23Wf8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 182 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'iEQo72sH' \
    '0aRdcDlD' \
    --body '{"immediate": true, "reason": "GcsfIuI4"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 183 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'Dv5lEJpK' \
    '1AyRlzsr' \
    --body '{"grantDays": 87, "reason": "XEFZivQO"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 184 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'HG6wVicN' \
    'ratsvvHL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 185 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'mIohfNIS' \
    'LXMDWDdm' \
    --body '{"additionalData": {"cardSummary": "5FE4lliQ"}, "authorisedTime": "1990-04-16T00:00:00Z", "chargebackReversedTime": "1981-06-03T00:00:00Z", "chargebackTime": "1988-01-09T00:00:00Z", "chargedTime": "1978-08-28T00:00:00Z", "createdTime": "1978-04-11T00:00:00Z", "currency": {"currencyCode": "UNHFtdml", "currencySymbol": "2xNviWac", "currencyType": "REAL", "decimals": 63, "namespace": "m7Z548uu"}, "customParameters": {"KgoCBqS5": {}}, "extOrderNo": "uIdCbwCe", "extTxId": "eq9ouEdD", "extUserId": "tjOgsypL", "issuedAt": "1976-04-06T00:00:00Z", "metadata": {"2ZYew5H7": "Zm0gnYyj"}, "namespace": "6MXf9G1n", "nonceStr": "tyebvoeH", "paymentMethod": "enAALKt7", "paymentMethodFee": 60, "paymentOrderNo": "fxIH446o", "paymentProvider": "STRIPE", "paymentProviderFee": 83, "paymentStationUrl": "2S74unXw", "price": 13, "refundedTime": "1997-10-04T00:00:00Z", "salesTax": 73, "sandbox": true, "sku": "VWW1rjK1", "status": "AUTHORISED", "statusReason": "pwkAvcsY", "subscriptionId": "vbgfBVPp", "subtotalPrice": 91, "targetNamespace": "a8Yuq7TK", "targetUserId": "iNXmz7eM", "tax": 35, "totalPrice": 76, "totalTax": 59, "txEndTime": "1999-12-25T00:00:00Z", "type": "baUxTCTn", "userId": "g0xjtdBr", "vat": 18}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 186 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    's3Kiykt2' \
    'Ck2gOlSa' \
    --body '{"count": 38, "orderNo": "ECZ2UgwQ"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 187 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    'LqDqYSxT' \
    'PuVlBqir' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 188 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'dp3yxnsE' \
    'Tl1SvhQu' \
    --body '{"amount": 7, "reason": "sjIhXdxi", "source": "ACHIEVEMENT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 189 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'WpnnxgX7' \
    'BCPMqzQI' \
    --body '{"amount": 46}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 190 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'ibhpNYsH' \
    'tdB3Ikju' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 191 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'aZqhJilr' \
    'ZkSSKgP5' \
    --body '{"amount": 34, "reason": "xCR77G9d"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 192 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    '5CA1GORS' \
    'bL9n0dbW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 193 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'DEupmdLQ' \
    'zPnNfBAc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 194 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'WArbkCfd' \
    'HIZb03ot' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListUserWalletTransactions'
delete_file $TEMP_FILE

#- 195 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryWallets'
delete_file $TEMP_FILE

#- 196 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    'qmBuS9V2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 197 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'pCZ23UHm' \
    'k0lpJ4JL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 198 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["l01qi7L2"], "apiKey": "oDUoVRUb", "authoriseAsCapture": false, "blockedPaymentMethods": ["22P4Sp09"], "liveEndpointUrlPrefix": "cKmjRUbZ", "merchantAccount": "VBVS7OK2", "notificationHmacKey": "ZrdcsckM", "notificationPassword": "ekROWZ2K", "notificationUsername": "UTqkK2eF", "returnUrl": "aGLoSmEE", "settings": "PbLywJsy"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 199 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Uie6fZgL", "privateKey": "llUPsO8l", "publicKey": "g46Si700", "returnUrl": "6vL2w4aa"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 200 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "jDAOx0iJ", "secretKey": "jYleaktq"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfig'
delete_file $TEMP_FILE

#- 201 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 202 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "v2WkljQu", "clientSecret": "D5mnJONq", "returnUrl": "HGq8mB7m", "webHookId": "F2lMFcag"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 203 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["hFXJIJfl"], "publishableKey": "RHFcsIqC", "secretKey": "y4xDifSS", "webhookSecret": "Q5On2ccE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 204 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "cl3xeiO4", "key": "bwF5JOjG", "mchid": "oGxKM3qM", "returnUrl": "ce5tfLcp"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 205 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "jFZMKCbp", "flowCompletionUrl": "0pEbLCLF", "merchantId": 30, "projectId": 67, "projectSecretKey": "xMYF8360"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 206 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    '75xEpzdn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 207 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'Ytpja5ig' \
    --body '{"allowedPaymentMethods": ["2isQZga6"], "apiKey": "Vy76izPi", "authoriseAsCapture": false, "blockedPaymentMethods": ["Ya8fv5fI"], "liveEndpointUrlPrefix": "t22tIZhj", "merchantAccount": "hgkigW22", "notificationHmacKey": "zXMWXfbc", "notificationPassword": "M0GIALIb", "notificationUsername": "FCQgBcLN", "returnUrl": "T6iOQVYx", "settings": "5rW2gMsI"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 208 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '1aYBitSn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 209 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '3UDeKj97' \
    --body '{"appId": "I4WYXLqj", "privateKey": "N7ktOBTr", "publicKey": "aBxWRTVu", "returnUrl": "YEqGlKDw"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 210 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'TKXBrXiQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 211 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'cd9IW8ki' \
    --body '{"publicKey": "CKeQJWZB", "secretKey": "vcq1ETvW"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 212 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'BxYZJh7B' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 213 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '8gbnSu9M' \
    --body '{"clientID": "2OxD2uda", "clientSecret": "eYpCXYSM", "returnUrl": "iy87CTqE", "webHookId": "QBg36my3"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 214 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'sY2clrDc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 215 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'ain0cOVF' \
    --body '{"allowedPaymentMethodTypes": ["1zHwDTI0"], "publishableKey": "sJ1Q0kph", "secretKey": "MTggSP2S", "webhookSecret": "LcuAP7vU"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 216 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '971Czw2n' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 217 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'bg8C7Mvy' \
    --body '{"appId": "whu6MjOj", "key": "uGzo1Fz4", "mchid": "tU0aSn98", "returnUrl": "N8qOUA0z"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 218 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '92RaDe8n' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 219 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'gT8LRQkM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 220 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'nG1LZyF2' \
    --body '{"apiKey": "mdYY6ZMf", "flowCompletionUrl": "uTYTKsue", "merchantId": 32, "projectId": 54, "projectSecretKey": "EBNAV5BT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 221 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'e6ec1zA9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 222 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '2URCLSGP' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaUIConfig'
delete_file $TEMP_FILE

#- 223 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 224 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "r6QA7Ppe", "region": "pc92HA94", "sandboxTaxJarApiToken": "eACdeyfU", "specials": ["pgiPpf8n"], "taxJarApiToken": "xKJ3dnmt", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 225 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 226 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 227 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 228 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '64Y4gPEK' \
    --body '{"aggregate": "XSOLLA", "namespace": "hu9a6f3x", "region": "JNtUlKLl", "sandboxTaxJarApiToken": "IIAeHbm5", "specials": ["M6LsY1VM"], "taxJarApiToken": "uIEcRls6", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 229 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'pyyMz6zf' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 230 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxConfig'
delete_file $TEMP_FILE

#- 231 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "R1pvTYYt", "taxJarApiToken": "DOiEi4Ru", "taxJarEnabled": true, "taxJarProductCodesMapping": {"cHCSGhpO": "ZQFlwOiu"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 232 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'KGDFgK49' \
    'YuKnXks0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncPaymentOrders'
delete_file $TEMP_FILE

#- 233 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRootCategories'
delete_file $TEMP_FILE

#- 234 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadCategories'
delete_file $TEMP_FILE

#- 235 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'm8ANrcRa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 236 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'l7ta3foj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 237 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'A3h4MMW3' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetDescendantCategories'
delete_file $TEMP_FILE

#- 238 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListCurrencies'
delete_file $TEMP_FILE

#- 239 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'AJ5zlsFB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemByAppId'
delete_file $TEMP_FILE

#- 240 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryItems'
delete_file $TEMP_FILE

#- 241 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'wjvLYvmg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 242 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '6avudQFF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 243 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '1CPNY9u2' \
    'dVYdglOO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 244 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'oCeK0kPK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 245 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'mBqVux3l' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 246 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'XcD8aert' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 247 GetPaymentCustomization
$PYTHON -m $MODULE 'platform-get-payment-customization' \
    'WXPAY' \
    'VCqs8XT8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCustomization'
delete_file $TEMP_FILE

#- 248 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "xy3nJ06K", "paymentProvider": "ADYEN", "returnUrl": "seA0ARj9", "ui": "ricfayvn", "zipCode": "hi8MDdY4"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 249 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'WLHoaUkY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 250 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'nQp5egdm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 251 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'VE8ImivN' \
    --body '{"token": "tQxqWRKH"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 252 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'ohODoWOr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 253 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'jBUas9jj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 254 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'z2FrgiaG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 255 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'rcB7dIOV' \
    'KIPSJJHo' \
    'STRIPE' \
    'KH8ou9Sd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 256 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'bxSXcrEF' \
    'XSOLLA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 257 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'wqeGNLdI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetRewardByCode'
delete_file $TEMP_FILE

#- 258 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards1'
delete_file $TEMP_FILE

#- 259 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'BRdliFQV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward1'
delete_file $TEMP_FILE

#- 260 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListStores'
delete_file $TEMP_FILE

#- 261 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 262 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'MKEzVUWl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 263 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'UWDs2x1E' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 264 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'QU0oepEv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 265 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 266 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'cjaSgEh6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 267 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'jJnFxinI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 268 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'HJ1o7aq5' \
    'Zznd5eac' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 269 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'obTsuRlh' \
    'GAME' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 270 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'eQVFID3o' \
    '8hJWVjKI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 271 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'OAw70DvA' \
    'HhSGWUvz' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 272 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'q1Za3IBC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 273 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '4vQFsUJP' \
    'fiaJp1rt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 274 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '7OBgBCe6' \
    'N0eI65Mn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 275 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '5tngEYXg' \
    'PVT5CqXD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 276 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'ZBVMJyJe' \
    'KFO92YDt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 277 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'aZvJoKS0' \
    'OxyipZuO' \
    --body '{"useCount": 79}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 278 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '9S2YCgHa' \
    --body '{"code": "6XBcvGRY", "language": "k5rUtWHC", "region": "nhmzzppV"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 279 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '7tKNKYUQ' \
    --body '{"excludeOldTransactions": true, "language": "XymWcNlH", "productId": "aFxYaGHU", "receiptData": "pmBFyOrF", "region": "KtxGNAi0", "transactionId": "fq4xChPL"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 280 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'd2lOopc7' \
    --body '{"epicGamesJwtToken": "XoVpdd6r"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 281 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'CpyMrnH9' \
    --body '{"language": "YHXh7KnC", "orderId": "VOKY2zsB", "packageName": "RGtd8QY2", "productId": "OLbijrvf", "purchaseTime": 34, "purchaseToken": "8hknjWUW", "region": "dMUXHvw4"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 282 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'pNlGLjdB' \
    --body '{"serviceLabel": 47}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 283 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'LM079pDA' \
    --body '{"appId": "bTgmsEYE", "language": "q2GkYK1v", "region": "Ym9flXQ7", "stadiaPlayerId": "CQoemnQG"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 284 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '0dH0NVM9' \
    --body '{"appId": "VEHTPqDh", "language": "kcu5vnz6", "region": "GiNMboBJ", "steamId": "Hml0LJmp"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 285 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'Pi4mqhru' \
    --body '{"xstsToken": "iCZLGGP5"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 286 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'UXkHNTMa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 287 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'pp5Sbons' \
    --body '{"currencyCode": "UJKADr60", "discountedPrice": 61, "ext": {"kdFrpLsG": {}}, "itemId": "t9yTXWUS", "language": "CQcMsHN7", "price": 35, "quantity": 9, "region": "I22ks7I1", "returnUrl": "2tAZc8sx"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 288 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'xLx9XQeq' \
    'NWLm8cNJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 289 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'bYH5J4Wi' \
    'JLv9NvHw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 290 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'tw2Mjcy9' \
    'ZL6Zs5Bu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 291 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '2XYopLWZ' \
    'eUKJJNft' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 292 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'RpGgk1is' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 293 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'eREzzRG6' \
    'paypal' \
    '9wmuHddy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 294 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'OdibI1LV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 295 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'yqbdY8DG' \
    --body '{"currencyCode": "ZKAuoIKz", "itemId": "3Pp3zLWU", "language": "xMzMtSmM", "region": "mZP8nG0F", "returnUrl": "oQP8q7aS", "source": "sb85gAh9"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 296 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'RD3ZzN6N' \
    '1iJ8ltt9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 297 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'IRqCflgl' \
    'n6r5f0s5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 298 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'H6lCf3QH' \
    'a11hLLCg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 299 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'w5av4LEx' \
    'dabD8g2c' \
    --body '{"immediate": true, "reason": "HfMRupDA"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 300 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '5xbjs3XR' \
    'dHUJ0GCm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 301 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'flIXkgJ6' \
    'zkTwoakq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 302 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '7sEejFZ1' \
    'NtONXb9w' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'