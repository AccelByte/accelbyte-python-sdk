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

OPERATIONS_COUNT=311

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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'FtBxyZcD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetFulfillmentScript'
delete_file $TEMP_FILE

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'XBpGlsQu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateFulfillmentScript'
delete_file $TEMP_FILE

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'Ju8vMf0I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'sJkTrd8I' \
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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCampaign'
delete_file $TEMP_FILE

#- 9 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'DcV2zXnT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCampaign'
delete_file $TEMP_FILE

#- 10 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'KjXY1bPq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCampaign'
delete_file $TEMP_FILE

#- 11 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'amiBxx9C' \
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
    's18EY84e' \
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
    'kItqRzHU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCategory'
delete_file $TEMP_FILE

#- 16 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '1oh570KQ' \
    'BVaewc72' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCategory'
delete_file $TEMP_FILE

#- 17 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'krSha68n' \
    '3Ynozp1C' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCategory'
delete_file $TEMP_FILE

#- 18 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '2KmIQTuB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetChildCategories'
delete_file $TEMP_FILE

#- 19 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'dNEUsxFb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetDescendantCategories'
delete_file $TEMP_FILE

#- 20 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '8CJ17M7D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryCodes'
delete_file $TEMP_FILE

#- 21 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'JZaMSxEC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCodes'
delete_file $TEMP_FILE

#- 22 Download
$PYTHON -m $MODULE 'platform-download' \
    'bZbygyoa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Download'
delete_file $TEMP_FILE

#- 23 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'rORoeNHS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkDisableCodes'
delete_file $TEMP_FILE

#- 24 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'b8Rh3kgs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkEnableCodes'
delete_file $TEMP_FILE

#- 25 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '9qqJbnQs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRedeemHistory'
delete_file $TEMP_FILE

#- 26 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'oBgiVpP8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCode'
delete_file $TEMP_FILE

#- 27 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'Cm3yvASU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableCode'
delete_file $TEMP_FILE

#- 28 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'oxdxxFqm' \
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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateCurrency'
delete_file $TEMP_FILE

#- 31 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'AGTJ8IEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCurrency'
delete_file $TEMP_FILE

#- 32 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'agEtp4w2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCurrency'
delete_file $TEMP_FILE

#- 33 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '9KOu9c19' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrencyConfig'
delete_file $TEMP_FILE

#- 34 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'R6XDqWHk' \
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
    'kP8npLEK' \
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

#- 61 GetGameServerConfig
$PYTHON -m $MODULE 'platform-get-game-server-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetGameServerConfig'
delete_file $TEMP_FILE

#- 62 UpdateGameServerConfig
$PYTHON -m $MODULE 'platform-update-game-server-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGameServerConfig'
delete_file $TEMP_FILE

#- 63 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'MfjiX7jp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncInGameItem'
delete_file $TEMP_FILE

#- 64 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'kVZk3IaQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateItem'
delete_file $TEMP_FILE

#- 65 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'YEmqGodO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemByAppId'
delete_file $TEMP_FILE

#- 66 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryItems'
delete_file $TEMP_FILE

#- 67 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 68 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'EGt9gPOj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemBySku'
delete_file $TEMP_FILE

#- 69 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '0c6i0Jkv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItemBySku'
delete_file $TEMP_FILE

#- 70 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'Ias73ucY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemIdBySku'
delete_file $TEMP_FILE

#- 71 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'nFAJ3DK5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkGetLocaleItems'
delete_file $TEMP_FILE

#- 72 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'T4Eogg0Y' \
    '39UoYlpv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SearchItems'
delete_file $TEMP_FILE

#- 73 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUncategorizedItems'
delete_file $TEMP_FILE

#- 74 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    '5bVAgtsD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItem'
delete_file $TEMP_FILE

#- 75 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'hUTDUscb' \
    'QDjbTQuP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateItem'
delete_file $TEMP_FILE

#- 76 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'Mz2PTRlk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteItem'
delete_file $TEMP_FILE

#- 77 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'yU89ZPOw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireItem'
delete_file $TEMP_FILE

#- 78 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '6zPFJ42c' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetApp'
delete_file $TEMP_FILE

#- 79 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'wmzBBSMN' \
    'coAAOjKN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateApp'
delete_file $TEMP_FILE

#- 80 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'jfcYHm09' \
    '3aYgBU1s' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableItem'
delete_file $TEMP_FILE

#- 81 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'qjyK0XH4' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetItemDynamicData'
delete_file $TEMP_FILE

#- 82 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '5PaRSOFQ' \
    'Btu23REZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableItem'
delete_file $TEMP_FILE

#- 83 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '8hRVX7LG' \
    'OvDdYiQS' \
    '9i7mV1C9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FeatureItem'
delete_file $TEMP_FILE

#- 84 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '1pjG9gpx' \
    'L6ycTQdv' \
    'ln2LAuSQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DefeatureItem'
delete_file $TEMP_FILE

#- 85 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'WEXL6LFE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLocaleItem'
delete_file $TEMP_FILE

#- 86 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '1YHo9m12' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ReturnItem'
delete_file $TEMP_FILE

#- 87 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryKeyGroups'
delete_file $TEMP_FILE

#- 88 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateKeyGroup'
delete_file $TEMP_FILE

#- 89 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '6ZWc8hHt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroup'
delete_file $TEMP_FILE

#- 90 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'WvbNYqgU' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateKeyGroup'
delete_file $TEMP_FILE

#- 91 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'qslArFPi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetKeyGroupDynamic'
delete_file $TEMP_FILE

#- 92 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'HUIvaCv8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListKeys'
delete_file $TEMP_FILE

#- 93 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'kU9dBBpd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UploadKeys'
delete_file $TEMP_FILE

#- 94 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryOrders'
delete_file $TEMP_FILE

#- 95 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrderStatistics'
delete_file $TEMP_FILE

#- 96 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'sJLhsVyE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetOrder'
delete_file $TEMP_FILE

#- 97 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'xrkxoot0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundOrder'
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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 101 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'B7WOferc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 102 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'ZdpMci37' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrder'
delete_file $TEMP_FILE

#- 103 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'Ds7YSfEx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChargePaymentOrder'
delete_file $TEMP_FILE

#- 104 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'aI3uzLte' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 105 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'MbFAlt4h' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SimulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 106 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'r7HmOYiB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 107 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
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
    '5ltAOXml' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 112 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'G6eh1dTd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 113 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'oTFpBIcu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 114 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'C1dQY93O' \
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
    'JnJ6Te9v' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetStore'
delete_file $TEMP_FILE

#- 123 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'D8ldz7Hu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStore'
delete_file $TEMP_FILE

#- 124 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '8AD79kdW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteStore'
delete_file $TEMP_FILE

#- 125 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'unvizU0q' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CloneStore'
delete_file $TEMP_FILE

#- 126 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    '1pHyhhER' \
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
    'oGgdrysM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RecurringChargeSubscription'
delete_file $TEMP_FILE

#- 129 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'izBGSRdP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketDynamic'
delete_file $TEMP_FILE

#- 130 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '2l7DNSZ8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DecreaseTicketSale'
delete_file $TEMP_FILE

#- 131 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'Aq0XiPLQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTicketBoothID'
delete_file $TEMP_FILE

#- 132 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'XSe07Zdd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IncreaseTicketSale'
delete_file $TEMP_FILE

#- 133 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'OGTMlJjB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeCampaign'
delete_file $TEMP_FILE

#- 134 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'wj9HJHQK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeEntitlement'
delete_file $TEMP_FILE

#- 135 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'seEdSXRD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeFulfillment'
delete_file $TEMP_FILE

#- 136 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Svguauw1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeIntegration'
delete_file $TEMP_FILE

#- 137 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'xT7eMwSl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeOrder'
delete_file $TEMP_FILE

#- 138 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '9MLH0NnT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizePayment'
delete_file $TEMP_FILE

#- 139 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'J2ulNzBv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeSubscription'
delete_file $TEMP_FILE

#- 140 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'wJaQa547' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeWallet'
delete_file $TEMP_FILE

#- 141 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'JllvA8RW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlements'
delete_file $TEMP_FILE

#- 142 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'SpabUt7x' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserEntitlement'
delete_file $TEMP_FILE

#- 143 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'k6QxyWhf' \
    'qoWfJw2o' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 144 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '8oWUqvPC' \
    'SOFTWARE' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 145 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'T7NXmWDl' \
    'XsuNIdQJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 146 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'R5lsNOlv' \
    'kfwaSbns' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 147 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'uLCgToxu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 148 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'VTekJgvg' \
    '["6h5HIpH0"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 149 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'DviplEk4' \
    'vj3LDp4y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 150 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'qDt8QUZD' \
    'pxlHasin' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 151 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'GcjrkmRM' \
    'ttgjDSaI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 152 GetUserDistributionReceivers
$PYTHON -m $MODULE 'platform-get-user-distribution-receivers' \
    'VBmft3Ud' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserDistributionReceivers'
delete_file $TEMP_FILE

#- 153 UpdateUserDistributionReceiver
$PYTHON -m $MODULE 'platform-update-user-distribution-receiver' \
    'g7p9PGmY' \
    '2H5kX4Ms' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserDistributionReceiver'
delete_file $TEMP_FILE

#- 154 CreateUserDistributionReceiver
$PYTHON -m $MODULE 'platform-create-user-distribution-receiver' \
    'isSX28nA' \
    'RxWRpv5o' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserDistributionReceiver'
delete_file $TEMP_FILE

#- 155 DeleteUserDistributionReceiver
$PYTHON -m $MODULE 'platform-delete-user-distribution-receiver' \
    'u5xtvd28' \
    'OUfCt8UJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserDistributionReceiver'
delete_file $TEMP_FILE

#- 156 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'C5flNyj6' \
    'HsTtX8P3' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlements'
delete_file $TEMP_FILE

#- 157 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'llnaaS9l' \
    'qyygPcfk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlement'
delete_file $TEMP_FILE

#- 158 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'JIxfQZza' \
    '8kNVbDxV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserEntitlement'
delete_file $TEMP_FILE

#- 159 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'Mq7HJk0F' \
    '89xAc3YV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 160 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'faENtrl0' \
    'pTKZTXqz' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserEntitlement'
delete_file $TEMP_FILE

#- 161 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'HuBMYQSA' \
    '2jz1ZOpd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserEntitlement'
delete_file $TEMP_FILE

#- 162 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'OjSyMddB' \
    '41JuMf7R' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserEntitlementHistories'
delete_file $TEMP_FILE

#- 163 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'UyBHRj8I' \
    'iRimRllH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RevokeUserEntitlement'
delete_file $TEMP_FILE

#- 164 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'T6Dc40vF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillItem'
delete_file $TEMP_FILE

#- 165 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'FA6gpU7E' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RedeemCode'
delete_file $TEMP_FILE

#- 166 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'W3x1dCpm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserIAPOrders'
delete_file $TEMP_FILE

#- 167 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '55gOeqQI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'MockFulfillIAPItem'
delete_file $TEMP_FILE

#- 168 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'qcJVKmBM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserOrders'
delete_file $TEMP_FILE

#- 169 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '1J1IbuTr' \
    'rkbmuT1w' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CountOfPurchasedItem'
delete_file $TEMP_FILE

#- 170 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'hOqmEnDX' \
    'IWrBPlSa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrder'
delete_file $TEMP_FILE

#- 171 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'y46mv71B' \
    'AZAOjtFJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserOrderStatus'
delete_file $TEMP_FILE

#- 172 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '2vmTj7tT' \
    '7TZHWDdC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'FulfillUserOrder'
delete_file $TEMP_FILE

#- 173 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'kIsZoArW' \
    'wPHcyFAd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderGrant'
delete_file $TEMP_FILE

#- 174 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'AtYciLIg' \
    'RwFRr0gw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserOrderHistories'
delete_file $TEMP_FILE

#- 175 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'B9tz3vp9' \
    '9XVlV8rK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserOrderNotification'
delete_file $TEMP_FILE

#- 176 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '3tE6n0sm' \
    'ip1tw3L7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 177 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'cUd9pqtv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateUserPaymentOrder'
delete_file $TEMP_FILE

#- 178 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '6JfPZwcC' \
    'VOXcVa80' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RefundUserPaymentOrder'
delete_file $TEMP_FILE

#- 179 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'TmCwtD2l' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ApplyUserRedemption'
delete_file $TEMP_FILE

#- 180 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'AH01o6Nd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryUserSubscriptions'
delete_file $TEMP_FILE

#- 181 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'cBIgzrDy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 182 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'WpFBYGmm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PlatformSubscribeSubscription'
delete_file $TEMP_FILE

#- 183 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'BawMyoKy' \
    'NpdAasm8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 184 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'xwUfzOlQ' \
    'iZY4NbOQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscription'
delete_file $TEMP_FILE

#- 185 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'XJ7uOTzN' \
    'Mvuq2tNl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserSubscription'
delete_file $TEMP_FILE

#- 186 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '4CX4IjiK' \
    '4DEUJRVK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CancelSubscription'
delete_file $TEMP_FILE

#- 187 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '3l9Eb0R1' \
    'XRb0RH8v' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantDaysToSubscription'
delete_file $TEMP_FILE

#- 188 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'S1smeOln' \
    'grdTXCza' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 189 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'PBtkZMio' \
    '4wcyhloV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ProcessUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 190 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'S3rYp8Qt' \
    'cEmCEVc7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcquireUserTicket'
delete_file $TEMP_FILE

#- 191 CheckWallet
$PYTHON -m $MODULE 'platform-check-wallet' \
    '5UfeypWj' \
    'DNhzCL5s' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckWallet'
delete_file $TEMP_FILE

#- 192 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'WS2qwO76' \
    '3iEklkzL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreditUserWallet'
delete_file $TEMP_FILE

#- 193 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'm88LpLuY' \
    'RO3C55yH' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PayWithUserWallet'
delete_file $TEMP_FILE

#- 194 GetUserWallet
$PYTHON -m $MODULE 'platform-get-user-wallet' \
    'pwK2Jaqe' \
    'nDGn7a2N' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserWallet'
delete_file $TEMP_FILE

#- 195 DebitUserWallet
$PYTHON -m $MODULE 'platform-debit-user-wallet' \
    'UplWiLjq' \
    '06n6a0rW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebitUserWallet'
delete_file $TEMP_FILE

#- 196 DisableUserWallet
$PYTHON -m $MODULE 'platform-disable-user-wallet' \
    '8EfkpaXt' \
    'wYZJaQ4W' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DisableUserWallet'
delete_file $TEMP_FILE

#- 197 EnableUserWallet
$PYTHON -m $MODULE 'platform-enable-user-wallet' \
    'bwNmsFYe' \
    'tjEurH8e' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'EnableUserWallet'
delete_file $TEMP_FILE

#- 198 ListUserWalletTransactions
$PYTHON -m $MODULE 'platform-list-user-wallet-transactions' \
    'loJzNKtR' \
    'UaTz1ETd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ListUserWalletTransactions'
delete_file $TEMP_FILE

#- 199 QueryWallets
$PYTHON -m $MODULE 'platform-query-wallets' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryWallets'
delete_file $TEMP_FILE

#- 200 GetWallet
$PYTHON -m $MODULE 'platform-get-wallet' \
    'smwzjkkn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetWallet'
delete_file $TEMP_FILE

#- 201 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '9oiQl05g' \
    '7cO3ZMb6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncOrders'
delete_file $TEMP_FILE

#- 202 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfig'
delete_file $TEMP_FILE

#- 203 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfig'
delete_file $TEMP_FILE

#- 204 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfig'
delete_file $TEMP_FILE

#- 205 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 206 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfig'
delete_file $TEMP_FILE

#- 207 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfig'
delete_file $TEMP_FILE

#- 208 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfig'
delete_file $TEMP_FILE

#- 209 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfig'
delete_file $TEMP_FILE

#- 210 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'Ojlo6DMN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 211 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'pP2qMrTQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdyenConfig'
delete_file $TEMP_FILE

#- 212 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '1UpjfU6w' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAdyenConfigById'
delete_file $TEMP_FILE

#- 213 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Jhy1jOVk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAliPayConfig'
delete_file $TEMP_FILE

#- 214 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'kUlS7952' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestAliPayConfigById'
delete_file $TEMP_FILE

#- 215 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '7EZ25Ia8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCheckoutConfig'
delete_file $TEMP_FILE

#- 216 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'uCeZFlLt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestCheckoutConfigById'
delete_file $TEMP_FILE

#- 217 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'EVpDAEbA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePayPalConfig'
delete_file $TEMP_FILE

#- 218 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '82jy74lq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestPayPalConfigById'
delete_file $TEMP_FILE

#- 219 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '0pDE5xRw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateStripeConfig'
delete_file $TEMP_FILE

#- 220 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'h5b45ebp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestStripeConfigById'
delete_file $TEMP_FILE

#- 221 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'cM7ScSs3' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfig'
delete_file $TEMP_FILE

#- 222 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'UOpAwIp9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateWxPayConfigCert'
delete_file $TEMP_FILE

#- 223 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'rRtn1PcC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestWxPayConfigById'
delete_file $TEMP_FILE

#- 224 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'xdbumeYg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaConfig'
delete_file $TEMP_FILE

#- 225 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'OdEBWRQi' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'TestXsollaConfigById'
delete_file $TEMP_FILE

#- 226 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'W3KFfU8i' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateXsollaUIConfig'
delete_file $TEMP_FILE

#- 227 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 228 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 229 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 230 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DebugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 231 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 232 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'cH4081gR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 233 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'B1GyLfLg' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 234 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxConfig'
delete_file $TEMP_FILE

#- 235 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 236 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '4RYuEbgU' \
    'DEcJyIvs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncPaymentOrders'
delete_file $TEMP_FILE

#- 237 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetRootCategories'
delete_file $TEMP_FILE

#- 238 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadCategories'
delete_file $TEMP_FILE

#- 239 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'PwOr0BmV' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCategory'
delete_file $TEMP_FILE

#- 240 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '5iFvfwFj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetChildCategories'
delete_file $TEMP_FILE

#- 241 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'TSmIEqoL' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetDescendantCategories'
delete_file $TEMP_FILE

#- 242 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListCurrencies'
delete_file $TEMP_FILE

#- 243 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'yLeUGmom' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemByAppId'
delete_file $TEMP_FILE

#- 244 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryItems'
delete_file $TEMP_FILE

#- 245 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'GX9sXTZ0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemBySku'
delete_file $TEMP_FILE

#- 246 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'v8pqLfc5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkGetItems'
delete_file $TEMP_FILE

#- 247 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'SwGnReUU' \
    'LDX4QUIb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchItems'
delete_file $TEMP_FILE

#- 248 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'b5nh68Zn' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetApp'
delete_file $TEMP_FILE

#- 249 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'yUtRvW9h' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItemDynamicData'
delete_file $TEMP_FILE

#- 250 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'NBSFTtFr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetItem'
delete_file $TEMP_FILE

#- 251 GetPaymentCustomization
$PYTHON -m $MODULE 'platform-get-payment-customization' \
    'PAYPAL' \
    'jkFrFVA8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentCustomization'
delete_file $TEMP_FILE

#- 252 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentUrl'
delete_file $TEMP_FILE

#- 253 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    't0xF34Xp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentMethods'
delete_file $TEMP_FILE

#- 254 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    't6ZlTTic' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 255 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '0kr2a0nI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'Pay'
delete_file $TEMP_FILE

#- 256 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '2oo7UHCJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 257 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    'p0aCvIq3' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentPublicConfig'
delete_file $TEMP_FILE

#- 258 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'aHVYIlew' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetQRCode'
delete_file $TEMP_FILE

#- 259 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'LRuHY83b' \
    'Gj0HTeeW' \
    'CHECKOUT' \
    'IcRidqct' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 260 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'DpygY0ax' \
    'XSOLLA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPaymentTaxValue'
delete_file $TEMP_FILE

#- 261 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'D4MMO9Tw' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetRewardByCode'
delete_file $TEMP_FILE

#- 262 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards1'
delete_file $TEMP_FILE

#- 263 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    '2JH0qhWI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward1'
delete_file $TEMP_FILE

#- 264 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListStores'
delete_file $TEMP_FILE

#- 265 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 266 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'wHWTgzJF' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 267 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'RYw6t1IK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 268 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'ZLO6V4Od' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 269 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 270 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'e46QmCid' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetMyWallet'
delete_file $TEMP_FILE

#- 271 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'gdpP7RTC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 272 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '587lmUmB' \
    'ziPZBnpO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 273 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'fkllxfq0' \
    'GAME' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 274 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'rSjw5Hog' \
    '0blM1d5M' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 275 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'StYGczLI' \
    'NlEC0OEs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 276 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'E3yzIsUP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 277 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '0NjluOrG' \
    'ZTzsLW7F' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 278 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'jfs9nIkc' \
    'Z38fUEan' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 279 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'jKHbXfk1' \
    'zxdzxg0U' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 280 PublicGetUserDistributionReceivers
$PYTHON -m $MODULE 'platform-public-get-user-distribution-receivers' \
    'XcRyHi3u' \
    '8BzVWu1t' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserDistributionReceivers'
delete_file $TEMP_FILE

#- 281 PublicUpdateUserDistributionReceiver
$PYTHON -m $MODULE 'platform-public-update-user-distribution-receiver' \
    'OmhUtCgc' \
    'pvGrEbcZ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserDistributionReceiver'
delete_file $TEMP_FILE

#- 282 PublicCreateUserDistributionReceiver
$PYTHON -m $MODULE 'platform-public-create-user-distribution-receiver' \
    'UDExH1ta' \
    'yOGXIHzM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserDistributionReceiver'
delete_file $TEMP_FILE

#- 283 PublicDeleteUserDistributionReceiver
$PYTHON -m $MODULE 'platform-public-delete-user-distribution-receiver' \
    'RjMCtOJs' \
    'Eijlrbpy' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeleteUserDistributionReceiver'
delete_file $TEMP_FILE

#- 284 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'yEcQxVgJ' \
    'IjMZqcWf' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserEntitlement'
delete_file $TEMP_FILE

#- 285 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'Ml6dqrpD' \
    '4tnc3ZRB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 286 PublicDistributeUserDistribution
$PYTHON -m $MODULE 'platform-public-distribute-user-distribution' \
    '3IkdtPfA' \
    'JEomwenJ' \
    'vQ8grtQS' \
    'v6EcALcM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDistributeUserDistribution'
delete_file $TEMP_FILE

#- 287 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'IPms5bT5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRedeemCode'
delete_file $TEMP_FILE

#- 288 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '1M4yko8S' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 289 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '0EnGLvGv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncEpicGamesInventory'
delete_file $TEMP_FILE

#- 290 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'fuSyCTyj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 291 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'j4mCaiuM' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 292 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'GKOF5GJJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncStadiaEntitlement'
delete_file $TEMP_FILE

#- 293 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'ooSXUl3Y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncSteamInventory'
delete_file $TEMP_FILE

#- 294 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'U35QHGpB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncXboxInventory'
delete_file $TEMP_FILE

#- 295 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'ABnOlxDz' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserOrders'
delete_file $TEMP_FILE

#- 296 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'nICQVyqB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserOrder'
delete_file $TEMP_FILE

#- 297 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'g34WTtDk' \
    'n0rtn6t0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrder'
delete_file $TEMP_FILE

#- 298 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'Yx4z12Ea' \
    'Q1rUQYCN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserOrder'
delete_file $TEMP_FILE

#- 299 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'TiDX4jE3' \
    'M2IsTHu8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 300 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'QwNyOlXf' \
    'IWd0mcq5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 301 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'T4SUc7cW' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 302 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'fCKK6Dij' \
    'card' \
    'FcenEMyS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 303 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'PfhxBenD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 304 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'iTiAqFYm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubscribeSubscription'
delete_file $TEMP_FILE

#- 305 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'FKjaELmm' \
    'll6oexId' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 306 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '1OKGUN2U' \
    'znd7uVa7' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscription'
delete_file $TEMP_FILE

#- 307 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    't14yvSYS' \
    'V52bHifC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 308 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'If4tsuu6' \
    'Pkam6tFS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelSubscription'
delete_file $TEMP_FILE

#- 309 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'YFt4ZxA2' \
    'PzZFRkBN' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 310 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'lg6hn5qu' \
    'sKyZAuV6' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetWallet'
delete_file $TEMP_FILE

#- 311 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'uUvqM0lV' \
    '6UZMlEbx' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserWalletTransactions'
delete_file $TEMP_FILE
