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
    --body '{"carousel": [{"alt": "YetjEurH", "previewUrl": "8eloJzNK", "thumbnailUrl": "tRUaTz1E", "type": "image", "url": "smwzjkkn", "videoSource": "generic"}], "developer": "iQl05g7c", "forumUrl": "O3ZMb6Oj", "genres": ["Casual"], "localizations": {"o6DMNpP2": {"announcement": "qMrTQ1Up", "slogan": "jfU6wJhy"}}, "platformRequirements": {"1jOVkkUl": [{"additionals": "S79527EZ", "directXVersion": "25Ia8uCe", "diskSpace": "ZFlLtEVp", "graphics": "DAEbA82j", "label": "y74lq0pD", "osVersion": "E5xRwh5b", "processor": "45ebpcM7", "ram": "ScSs3UOp", "soundCard": "AwIp9rRt"}]}, "platforms": ["MacOS"], "players": ["LocalCoop"], "primaryGenre": "Action", "publisher": "CxdbumeY", "releaseDate": "1974-11-20T00:00:00Z", "websiteUrl": "dEBWRQiW"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateApp'
delete_file $TEMP_FILE

#- 78 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '3KFfU8ic' \
    'H4081gRB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableItem'
delete_file $TEMP_FILE

#- 79 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    '1GyLfLg4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemDynamicData'
delete_file $TEMP_FILE

#- 80 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'RYuEbgUD' \
    'EcJyIvsP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableItem'
delete_file $TEMP_FILE

#- 81 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'wOr0BmV5' \
    'iFvfwFjT' \
    'SmIEqoLy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FeatureItem'
delete_file $TEMP_FILE

#- 82 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'LeUGmomG' \
    'X9sXTZ0v' \
    '8pqLfc5S' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DefeatureItem'
delete_file $TEMP_FILE

#- 83 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'wGnReUUL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItem'
delete_file $TEMP_FILE

#- 84 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'DX4QUIbb' \
    --body '{"orderNo": "5nh68Zny"}' \
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
    --body '{"description": "UtRvW9hN", "name": "BSFTtFrO", "status": "ACTIVE", "tags": ["jkFrFVA8"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateKeyGroup'
delete_file $TEMP_FILE

#- 87 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    't0xF34Xp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroup'
delete_file $TEMP_FILE

#- 88 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    't6ZlTTic' \
    --body '{"description": "0kr2a0nI", "name": "2oo7UHCJ", "status": "INACTIVE", "tags": ["p0aCvIq3"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateKeyGroup'
delete_file $TEMP_FILE

#- 89 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'aHVYIlew' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroupDynamic'
delete_file $TEMP_FILE

#- 90 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'LRuHY83b' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListKeys'
delete_file $TEMP_FILE

#- 91 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'Gj0HTeeW' \
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
    'XlIcRidq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrder'
delete_file $TEMP_FILE

#- 95 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ctDpygY0' \
    --body '{"description": "ax476ED4"}' \
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
    --body '{"dryRun": true, "notifyUrl": "2JH0qhWI", "privateKey": "wHWTgzJF"}' \
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
    --body '{"currencyCode": "RYw6t1IK", "currencyNamespace": "ZLO6V4Od", "customParameters": {"e46QmCid": {}}, "description": "gdpP7RTC", "extOrderNo": "587lmUmB", "extUserId": "ziPZBnpO", "itemType": "COINS", "language": "kllxfq0N", "metadata": {"srSjw5Ho": "g0blM1d5"}, "notifyUrl": "MStYGczL", "omitNotification": false, "price": 60, "recurringPaymentOrderNo": "C0OEsE3y", "region": "zIsUP0Nj", "returnUrl": "luOrGZTz", "sandbox": true, "sku": "LW7Fjfs9", "subscriptionId": "nIkcZ38f", "targetNamespace": "UEanjKHb", "targetUserId": "Xfk1zxdz", "title": "xg0UXcRy"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 101 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'Hi3u8BzV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 102 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'Wu1tOmhU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 103 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'tCgcpvGr' \
    --body '{"extTxId": "EbcZUDEx", "paymentMethod": "H1tayOGX", "paymentProvider": "WXPAY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 104 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'MRjMCtOJ' \
    --body '{"description": "sEijlrbp"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 105 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'yyEcQxVg' \
    --body '{"amount": 71, "currencyCode": "IjMZqcWf", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 32, "vat": 34}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 106 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'pD4tnc3Z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 107 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "RB3IkdtP", "eventTopic": "fAJEomwe", "maxAwarded": 26, "maxAwardedPerUser": 70, "rewardCode": "vQ8grtQS", "rewardConditions": [{"condition": "v6EcALcM", "conditionName": "IPms5bT5", "eventName": "1M4yko8S", "rewardItems": [{"duration": 60, "itemId": "nGLvGvfu", "quantity": 89}]}]}' \
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
    'CTyjj4mC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 112 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'aiuMGKOF' \
    --body '{"description": "5GJJooSX", "eventTopic": "Ul3YU35Q", "maxAwarded": 67, "maxAwardedPerUser": 64, "rewardCode": "pBABnOlx", "rewardConditions": [{"condition": "DznICQVy", "conditionName": "qBg34WTt", "eventName": "Dkn0rtn6", "rewardItems": [{"duration": 39, "itemId": "0Yx4z12E", "quantity": 1}]}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 113 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Q1rUQYCN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 114 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'TiDX4jE3' \
    --body '{"payload": {"M2IsTHu8": {}}}' \
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
    --body '{"defaultLanguage": "QwNyOlXf", "defaultRegion": "IWd0mcq5", "description": "T4SUc7cW", "supportedLanguages": ["fCKK6Dij"], "supportedRegions": ["1gFcenEM"], "title": "ySPfhxBe"}' \
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
    'nDiTiAqF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 123 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'YmFKjaEL' \
    --body '{"defaultLanguage": "mmll6oex", "defaultRegion": "Id1OKGUN", "description": "2Uznd7uV", "supportedLanguages": ["a7t14yvS"], "supportedRegions": ["YSV52bHi"], "title": "fCIf4tsu"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 124 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'u6Pkam6t' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 125 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'FSYFt4Zx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 126 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'A2PzZFRk' \
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
    'BNlg6hn5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 129 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'qusKyZAu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 130 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'V6uUvqM0' \
    --body '{"orderNo": "lV6UZMlE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 131 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'bxHNgJRi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 132 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'QExaunjd' \
    --body '{"count": 52, "orderNo": "qnHUz44t"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 133 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'x4O6hamP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 134 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'wNoi071e' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 135 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'zDK56JFI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 136 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Ge1IMUCL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 137 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'cN0DsaD5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 138 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'FyBsFe9O' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 139 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'YEJVsYff' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 140 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'mhyx6J25' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 141 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'PrM4S3cB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 142 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '8m17hEeL' \
    --body '[{"endDate": "1989-02-15T00:00:00Z", "grantedCode": "oaYth6zc", "itemId": "f8eA45OM", "itemNamespace": "vObWejo9", "language": "LfGeegJM", "quantity": 0, "region": "BGR6D1Zo", "source": "GIFT", "startDate": "1996-12-02T00:00:00Z", "storeId": "kJ8DSqFn"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 143 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'hdKvjFCF' \
    'bSFlEWoM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 144 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'PdgK5zn6' \
    'DLC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 145 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'hnFSpCTl' \
    'DNBOcygv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 146 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'v2LAgfBG' \
    'VzanbKYs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 147 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'B0gqJ8Vh' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 148 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'YSikJl2p' \
    '["9rBx8N5e"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 149 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'gapqxDy4' \
    'cLfNjzzE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 150 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'ZYA8jIkM' \
    'Jb7cZ2bP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 151 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'saLLpEBV' \
    'EMk5AsKa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 152 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'F2P44lXk' \
    'I3zdiRiC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 153 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '5IbPit71' \
    'JWlYCoi4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 154 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'nDfPu5V6' \
    'QSYxEVOr' \
    --body '{"endDate": "1983-06-09T00:00:00Z", "nullFieldList": ["ZYmgUeEP"], "startDate": "1984-07-27T00:00:00Z", "status": "ACTIVE", "useCount": 42}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 155 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'k0Zthaj0' \
    'EBA4azRz' \
    --body '{"useCount": 7}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 156 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '56smobor' \
    '4p1PlgQB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 157 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '9EcNGOeB' \
    'RY6G5ae0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 158 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '7deDLaZ8' \
    'JCvbeTfW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 159 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '0hgzrabL' \
    'JxEwJrEB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 160 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'mQ64haNO' \
    --body '{"duration": 51, "endDate": "1976-09-13T00:00:00Z", "itemId": "u68UYyup", "itemSku": "jdDetnoT", "language": "0rfWtVPw", "order": {"currency": {"currencyCode": "Qfq6V92g", "currencySymbol": "bfPouNdm", "currencyType": "REAL", "decimals": 5, "namespace": "kVnuDGvY"}, "ext": {"Ib1p5tcR": {}}, "free": true}, "orderNo": "8ZJLjSHc", "quantity": 0, "region": "R3X4tZmw", "source": "REFERRAL_BONUS", "startDate": "1997-12-03T00:00:00Z", "storeId": "mOnsEg49"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 161 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'eXp0xQkZ' \
    --body '{"code": "2JjuwWWy", "language": "0tU11PCe", "region": "SrvejUKw"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 162 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'VfF37Vr7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 163 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'mkDzFBI1' \
    --body '{"language": "VwhkVSKD", "productId": "lNFOUHBJ", "region": "svTsqk9h", "type": "APPLE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 164 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '4hj6nUde' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 165 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'bW6UskbP' \
    'kkZAk01f' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 166 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '1KxCtWAD' \
    'U2guN6U9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 167 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'w13W1K9T' \
    'ZQ4qRLEi' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "owE36rfm"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 168 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'M0CCs35T' \
    'PUPLmsY8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 169 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'WgwSx1DI' \
    '5GH9bv9Z' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 170 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'To2HpA6p' \
    'zjHpZO0E' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 171 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '9iLgRPJK' \
    '3nBae3GO' \
    --body '{"additionalData": {"cardSummary": "gbQrqra0"}, "authorisedTime": "1991-06-05T00:00:00Z", "chargebackReversedTime": "1976-02-14T00:00:00Z", "chargebackTime": "1981-11-17T00:00:00Z", "chargedTime": "1978-05-17T00:00:00Z", "createdTime": "1971-04-09T00:00:00Z", "currency": {"currencyCode": "p5lnBn6x", "currencySymbol": "mBkfMtC6", "currencyType": "REAL", "decimals": 62, "namespace": "q0kPOkOR"}, "customParameters": {"m2XjlNEE": {}}, "extOrderNo": "5ecPzAmi", "extTxId": "0ySJHfPl", "extUserId": "oP1XkYK4", "issuedAt": "1990-02-18T00:00:00Z", "metadata": {"IsDSFMPy": "Mhyw1OLZ"}, "namespace": "PVwwxH4B", "nonceStr": "IDJuDoSh", "paymentMethod": "MMftll8N", "paymentMethodFee": 95, "paymentOrderNo": "vChHz9ur", "paymentProvider": "STRIPE", "paymentProviderFee": 39, "paymentStationUrl": "7QWvE8s6", "price": 92, "refundedTime": "1983-08-05T00:00:00Z", "salesTax": 87, "sandbox": true, "sku": "YWDTtL6M", "status": "REFUND_FAILED", "statusReason": "TRkCbb9S", "subscriptionId": "5Q1IVHGT", "subtotalPrice": 30, "targetNamespace": "rREBgYOW", "targetUserId": "dHJ9Jumo", "tax": 15, "totalPrice": 39, "totalTax": 92, "txEndTime": "1997-02-15T00:00:00Z", "type": "f7TRigNZ", "userId": "j5w5y3Hm", "vat": 73}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 172 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '8QVOa62e' \
    'QZtbLLcF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 173 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '671WLtv3' \
    --body '{"currencyCode": "8Hecczop", "currencyNamespace": "FmeRwpcJ", "customParameters": {"BZyi3mLC": {}}, "description": "4KzekiSz", "extOrderNo": "eyolnOQt", "extUserId": "0joVHgCy", "itemType": "CODE", "language": "C6lRG98Y", "metadata": {"xnHbRdoT": "KKeuSjfZ"}, "notifyUrl": "e9i1osgh", "omitNotification": true, "price": 15, "recurringPaymentOrderNo": "zi1Nl47s", "region": "yJ5ibzSH", "returnUrl": "ZeCLIvWP", "sandbox": true, "sku": "dEqA61yT", "subscriptionId": "rMgsycTg", "title": "mPzc20Eu"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 174 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'O5dMqGDl' \
    'SZPY07rE' \
    --body '{"description": "VSjzHjL6"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 175 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'ZbXjG6DS' \
    --body '{"code": "mpp3op8h", "orderNo": "taRLxtW4"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 176 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'PvFkESTU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 177 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Lat5F1Le' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 178 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '7cR7q6PW' \
    --body '{"grantDays": 14, "itemId": "ZmmKz41i", "language": "1Tp78Fip", "reason": "JHahViJv", "region": "LYW0kdml", "source": "k2luqSOO"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 179 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'A2VOZBoN' \
    'bB98PuSG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 180 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'ykqFzPwS' \
    'MXT53bBu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 181 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'L38beOYD' \
    'VuHZQ9LY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 182 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    't6w23Wf8' \
    'iEQo72sH' \
    --body '{"immediate": false, "reason": "RdcDlDyG"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 183 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'csfIuI4D' \
    'v5lEJpK1' \
    --body '{"grantDays": 53, "reason": "yRlzsrRX"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 184 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'EFZivQOH' \
    'G6wVicNr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 185 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'atsvvHLm' \
    'IohfNISL' \
    --body '{"additionalData": {"cardSummary": "XMDWDdm5"}, "authorisedTime": "1986-08-31T00:00:00Z", "chargebackReversedTime": "1999-03-27T00:00:00Z", "chargebackTime": "1976-03-07T00:00:00Z", "chargedTime": "1992-11-02T00:00:00Z", "createdTime": "1977-06-16T00:00:00Z", "currency": {"currencyCode": "tJbpEo4m", "currencySymbol": "UNHFtdml", "currencyType": "VIRTUAL", "decimals": 79, "namespace": "viWacJc3"}, "customParameters": {"Fm7Z548u": {}}, "extOrderNo": "uKgoCBqS", "extTxId": "5uIdCbwC", "extUserId": "eeq9ouEd", "issuedAt": "1985-06-03T00:00:00Z", "metadata": {"jOgsypLk": "m2ZYew5H"}, "namespace": "7Zm0gnYy", "nonceStr": "j6MXf9G1", "paymentMethod": "ntyebvoe", "paymentMethodFee": 67, "paymentOrderNo": "enAALKt7", "paymentProvider": "PAYPAL", "paymentProviderFee": 11, "paymentStationUrl": "xIH446oU", "price": 26, "refundedTime": "1991-12-21T00:00:00Z", "salesTax": 40, "sandbox": false, "sku": "Xwg0JKqV", "status": "DELETED", "statusReason": "W1rjK1ep", "subscriptionId": "wkAvcsYv", "subtotalPrice": 2, "targetNamespace": "gfBVPpTa", "targetUserId": "8Yuq7TKi", "tax": 78, "totalPrice": 99, "totalTax": 24, "txEndTime": "1983-02-02T00:00:00Z", "type": "MrMD5Tba", "userId": "UxTCTng0", "vat": 46}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 186 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'jtdBrjs3' \
    'Kiykt2Ck' \
    --body '{"count": 12, "orderNo": "OlSatECZ"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 187 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    '2UgwQLqD' \
    'qYSxTPuV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 188 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'lBqirdp3' \
    'yxnsETl1' \
    --body '{"amount": 88, "reason": "vhQudsjI", "source": "IAP"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 189 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'XdxiSoWp' \
    'nnxgX7BC' \
    --body '{"amount": 83}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 190 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'MqzQIxib' \
    'hpNYsHtd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 191 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'B3IkjuaZ' \
    'qhJilrZk' \
    --body '{"amount": 88, "reason": "SKgP5rxC"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 192 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    'R77G9d5C' \
    'A1GORSbL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 193 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    '9n0dbWDE' \
    'upmdLQzP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 194 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'nNfBAcWA' \
    'rbkCfdHI' \
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
    'Zb03otqm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 197 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'BuS9V2pC' \
    'Z23UHmk0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 198 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["lpJ4JLl0"], "apiKey": "1qi7L2oD", "authoriseAsCapture": false, "blockedPaymentMethods": ["VRUb39j2"], "liveEndpointUrlPrefix": "2P4Sp09c", "merchantAccount": "KmjRUbZV", "notificationHmacKey": "BVS7OK2Z", "notificationPassword": "rdcsckMe", "notificationUsername": "kROWZ2KU", "returnUrl": "TqkK2eFa", "settings": "GLoSmEEP"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 199 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "bLywJsyU", "privateKey": "ie6fZgLl", "publicKey": "lUPsO8lg", "returnUrl": "46Si7006"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 200 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "vL2w4aaj", "secretKey": "DAOx0iJj"}' \
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
    --body '{"clientID": "Yleaktqv", "clientSecret": "2WkljQuD", "returnUrl": "5mnJONqH", "webHookId": "Gq8mB7mF"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 203 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["2lMFcagh"], "publishableKey": "FXJIJflR", "secretKey": "HFcsIqCy", "webhookSecret": "4xDifSSQ"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 204 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "5On2ccEc", "key": "l3xeiO4b", "mchid": "wF5JOjGo", "returnUrl": "GxKM3qMc"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 205 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "e5tfLcpj", "flowCompletionUrl": "FZMKCbp0", "merchantId": 30, "projectId": 61, "projectSecretKey": "bLCLFpHx"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 206 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'MYF83607' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 207 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '5xEpzdnY' \
    --body '{"allowedPaymentMethods": ["tpja5ig2"], "apiKey": "isQZga6V", "authoriseAsCapture": true, "blockedPaymentMethods": ["76izPiQR"], "liveEndpointUrlPrefix": "jYa8fv5f", "merchantAccount": "It22tIZh", "notificationHmacKey": "jhgkigW2", "notificationPassword": "2zXMWXfb", "notificationUsername": "cM0GIALI", "returnUrl": "bFCQgBcL", "settings": "NT6iOQVY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 208 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'x5rW2gMs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 209 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'I1aYBitS' \
    --body '{"appId": "n3UDeKj9", "privateKey": "7I4WYXLq", "publicKey": "jN7ktOBT", "returnUrl": "raBxWRTV"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 210 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'uYEqGlKD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 211 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'wTKXBrXi' \
    --body '{"publicKey": "Qcd9IW8k", "secretKey": "iCKeQJWZ"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 212 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'Bvcq1ETv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 213 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'WBxYZJh7' \
    --body '{"clientID": "B8gbnSu9", "clientSecret": "M2OxD2ud", "returnUrl": "aeYpCXYS", "webHookId": "Miy87CTq"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 214 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'EQBg36my' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 215 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '3sY2clrD' \
    --body '{"allowedPaymentMethodTypes": ["cain0cOV"], "publishableKey": "F1zHwDTI", "secretKey": "0sJ1Q0kp", "webhookSecret": "hMTggSP2"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 216 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'SLcuAP7v' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 217 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'U971Czw2' \
    --body '{"appId": "nbg8C7Mv", "key": "ywhu6MjO", "mchid": "juGzo1Fz", "returnUrl": "4tU0aSn9"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 218 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '8N8qOUA0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 219 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'z92RaDe8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 220 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'ngT8LRQk' \
    --body '{"apiKey": "MnG1LZyF", "flowCompletionUrl": "2mdYY6ZM", "merchantId": 11, "projectId": 41, "projectSecretKey": "TYTKsue4"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 221 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '8qBEBNAV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 222 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '5BTe6ec1' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
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
    --body '{"aggregate": "ADYEN", "namespace": "LSGPmRBZ", "region": "WunHW7MY", "sandboxTaxJarApiToken": "vr6QA7Pp", "specials": ["XSOLLA"], "taxJarApiToken": "pc92HA94", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
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
    'CdeyfUpg' \
    --body '{"aggregate": "XSOLLA", "namespace": "Ppf8nxKJ", "region": "3dnmtPwa", "sandboxTaxJarApiToken": "64Y4gPEK", "specials": ["XSOLLA"], "taxJarApiToken": "hu9a6f3x", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 229 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'KLlIIAeH' \
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
    --body '{"sandboxTaxJarApiToken": "bm5M6LsY", "taxJarApiToken": "1VMuIEcR", "taxJarEnabled": false, "taxJarProductCodesMapping": {"s68M3MPM": "RPBepyyM"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 232 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'z6zfR1pv' \
    'TYYtDOiE' \
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
    'i4RuEcHC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 236 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'SGhpOZQF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 237 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'lwOiuKGD' \
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
    'FgK49YuK' \
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
    'nXks0m8A' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 242 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'NrcRal7t' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 243 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'a3fojA3h' \
    '4MMW3AJ5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 244 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'zlsFBwjv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 245 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'LYvmg6av' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 246 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'udQFF1CP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 247 GetPaymentCustomization
$PYTHON -m $MODULE 'platform-get-payment-customization' \
    'WALLET' \
    '2dVYdglO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCustomization'
delete_file $TEMP_FILE

#- 248 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "OoCeK0kP", "paymentProvider": "STRIPE", "returnUrl": "BqVux3lX", "ui": "cD8aertA", "zipCode": "VCqs8XT8"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 249 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'xy3nJ06K' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 250 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'kseA0ARj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 251 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '9ricfayv' \
    --body '{"token": "nhi8MDdY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 252 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '4WLHoaUk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 253 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    'Qp5egdmV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 254 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'E8ImivNt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 255 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'QxqWRKHo' \
    'hODoWOr9' \
    'CHECKOUT' \
    'jBUas9jj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 256 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'z2FrgiaG' \
    'STRIPE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 257 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'cB7dIOVK' \
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
    'IPSJJHo5' \
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
    'W8tKH8ou' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 263 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '9SdbxSXc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 264 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'rEFCwqeG' \
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
    'NLdIBRdl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 267 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'iFQVMKEz' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 268 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'VUWlUWDs' \
    '2x1EQU0o' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 269 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'epEvcjaS' \
    'DEMO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 270 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'Eh6jJnFx' \
    'inIHJ1o7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 271 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'aq5Zznd5' \
    'eacobTsu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 272 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'RlhreQVF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 273 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'ID3o8hJW' \
    'VjKIOAw7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 274 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '0DvAHhSG' \
    'WUvzq1Za' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 275 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '3IBC4vQF' \
    'sUJPfiaJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 276 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'p1rt7OBg' \
    'BCe6N0eI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 277 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '65Mn5tng' \
    'EYXgPVT5' \
    --body '{"useCount": 56}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 278 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'qXDZBVMJ' \
    --body '{"code": "yJeKFO92", "language": "YDtaZvJo", "region": "KS0Oxyip"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 279 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'ZuO4N9S2' \
    --body '{"excludeOldTransactions": true, "language": "gHa6XBcv", "productId": "GRYk5rUt", "receiptData": "WHCnhmzz", "region": "ppV7tKNK", "transactionId": "YUQVBXym"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 280 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'WcNlHaFx' \
    --body '{"epicGamesJwtToken": "YaGHUpmB"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 281 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'FyOrFKtx' \
    --body '{"language": "GNAi0fq4", "orderId": "xChPLd2l", "packageName": "Oopc7XoV", "productId": "pdd6rCpy", "purchaseTime": 77, "purchaseToken": "rnH9YHXh", "region": "7KnCVOKY"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 282 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '2zsBRGtd' \
    --body '{"serviceLabel": 84}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 283 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'Y2OLbijr' \
    --body '{"appId": "vfr8hknj", "language": "WUWdMUXH", "region": "vw4pNlGL", "stadiaPlayerId": "jdBxLM07"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 284 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '9pDAbTgm' \
    --body '{"appId": "sEYEq2Gk", "language": "YK1vYm9f", "region": "lXQ7CQoe", "steamId": "mnQG0dH0"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 285 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'NVM9VEHT' \
    --body '{"xstsToken": "PqDhkcu5"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 286 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'vnz6GiNM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 287 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'boBJHml0' \
    --body '{"currencyCode": "LJmpPi4m", "discountedPrice": 32, "ext": {"hruiCZLG": {}}, "itemId": "GP5UXkHN", "language": "TMapp5Sb", "price": 29, "quantity": 26, "region": "sUJKADr6", "returnUrl": "0EkdFrpL"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 288 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'sGt9yTXW' \
    'USCQcMsH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 289 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'N7reI22k' \
    's7I12tAZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 290 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'c8sxxLx9' \
    'XQeqNWLm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 291 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '8cNJbYH5' \
    'J4WiJLv9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 292 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'NvHwtw2M' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 293 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'jcy9ZL6Z' \
    'paypal' \
    '5Bu2XYop' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 294 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'LWZeUKJJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 295 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'NftRpGgk' \
    --body '{"currencyCode": "1iseREzz", "itemId": "RG6z9wmu", "language": "HddyOdib", "region": "I1LVyqbd", "returnUrl": "Y8DGZKAu", "source": "oIKz3Pp3"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 296 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'zLWUxMzM' \
    'tSmMmZP8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 297 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'nG0FoQP8' \
    'q7aSsb85' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 298 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'gAh9RD3Z' \
    'zN6N1iJ8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 299 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'ltt9IRqC' \
    'flgln6r5' \
    --body '{"immediate": false, "reason": "0s5H6lCf"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 300 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '3QHa11hL' \
    'LCgw5av4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 301 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'LExdabD8' \
    'g2cvHfMR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 302 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'upDA5xbj' \
    's3XRdHUJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT