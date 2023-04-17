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
platform-list-fulfillment-scripts --login_with_auth "Bearer foo"
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["7eHpzSn3", "ZPUdc0qh", "Oaiw9B0D"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["lFHHdgs2", "kNmKJfh5", "1Jub74CU"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["jJCSQT27", "NPX2bOIt", "RMvqtlB2"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["xkT1X68c", "mDc3fxU8", "MyKrQpM4"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["4YUDjasW", "naLpUKp4", "IPUvmEej"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["MNqq98Sj", "TvhZNkSQ", "5MXbN9oC"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["8bwbmXgd", "Q1MzH7Qm", "Qgb3boLQ"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["yeFoF7VS", "3EeERmDn", "CcxvONZm"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["qU6YE3p4", "UhAEtrmj", "lSck0ZHn"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["YReVHQip", "cCx9Zw5D", "2L7vIYhG"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["ApflxqMr", "j3oZk03Q", "S48l9lyN"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "saleConfig": {"currencyCode": "81P1ktfI", "price": 29}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "mv9gsR5c", "stackable": false, "status": "ACTIVE", "tags": ["mJFfRByj", "lBiuFM3F", "sb392k6Y"], "targetCurrencyCode": "IoVk8T3G", "targetItemId": "pAnkCmBU", "targetNamespace": "qg2SCnqn", "thumbnailUrl": "tX9y1aZS", "title": "WMiVi10s", "updatedAt": "1987-06-13T00:00:00Z", "useCount": 85}, "namespace": "vxkfUcmq", "order": {"currency": {"currencyCode": "RRbceJ5i", "currencySymbol": "0EeDxOgB", "currencyType": "REAL", "decimals": 59, "namespace": "hhqElIaD"}, "ext": {"ml48wdNF": {}, "LTm5T50x": {}, "9WT0GfH2": {}}, "free": true}, "source": "PROMOTION"}, "script": "tOa4EXsX", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script '1yEkLgh3' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'tIYt4SqY' --body '{"grantDays": "UTLDx9gI"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'iDandpGT' --login_with_auth "Bearer foo"
platform-update-fulfillment-script '2t24aOMh' --body '{"grantDays": "5eC3IHeH"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "SKLCa3xr", "dryRun": false, "fulfillmentUrl": "7WIsfmx4", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "q31A806D"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'SEASON' --login_with_auth "Bearer foo"
platform-get-item-type-config 'KnWhzfe2' --login_with_auth "Bearer foo"
platform-update-item-type-config 'NubeoKFe' --body '{"clazz": "IaFQCYoD", "dryRun": false, "fulfillmentUrl": "ICpnduEE", "purchaseConditionUrl": "QlULdJz4"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'mnRBkMNx' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "vvKgAT8m", "items": [{"extraSubscriptionDays": 72, "itemId": "WAgIUXiI", "itemName": "07A68eaq", "quantity": 59}, {"extraSubscriptionDays": 48, "itemId": "2J9jyEW6", "itemName": "GLbc0NaK", "quantity": 61}, {"extraSubscriptionDays": 54, "itemId": "UL3sa13l", "itemName": "k1dQBHO8", "quantity": 71}], "maxRedeemCountPerCampaignPerUser": 97, "maxRedeemCountPerCode": 23, "maxRedeemCountPerCodePerUser": 100, "maxSaleCount": 56, "name": "n3CO39PX", "redeemEnd": "1986-11-21T00:00:00Z", "redeemStart": "1979-07-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["geO3FgkX", "hjDzaQY3", "snn2ZkP7"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'MMAXFaY9' --login_with_auth "Bearer foo"
platform-update-campaign 'eKa699bR' --body '{"description": "VhyaKwwr", "items": [{"extraSubscriptionDays": 54, "itemId": "m4hMzF4T", "itemName": "xodenSrU", "quantity": 94}, {"extraSubscriptionDays": 82, "itemId": "vfqU0bfo", "itemName": "Mm5cTtFW", "quantity": 3}, {"extraSubscriptionDays": 30, "itemId": "3c46IjGa", "itemName": "23YvYmmD", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 8, "maxRedeemCountPerCode": 98, "maxRedeemCountPerCodePerUser": 31, "maxSaleCount": 47, "name": "PXIuvUYT", "redeemEnd": "1997-11-20T00:00:00Z", "redeemStart": "1985-02-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["eSvf9699", "mCEHThUJ", "kETAsSp7"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'gh4TeUTk' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'OkAYfJB8' --body '{"categoryPath": "AT9t4Tv2", "localizationDisplayNames": {"07Y2QD3o": "D5fLCr3O", "OlXVv8ZG": "F7uYnGzp", "ipNDigNJ": "ma1MbqqZ"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'tfNWql4n' --login_with_auth "Bearer foo"
platform-update-category 'mwAft4gq' 'kNNlWkD9' --body '{"localizationDisplayNames": {"eOziYRFO": "n0jJLHC9", "LxhvNXTw": "GBCtohLt", "l9Zuhytm": "5UDrT6QX"}}' --login_with_auth "Bearer foo"
platform-delete-category 'Cs5SPBbR' 'PZTF6oQA' --login_with_auth "Bearer foo"
platform-get-child-categories 'XVG7tnsZ' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'g5QgXjvy' --login_with_auth "Bearer foo"
platform-query-codes 'GJPN4eXb' --login_with_auth "Bearer foo"
platform-create-codes 'JE5Vs2Gc' --body '{"quantity": 51}' --login_with_auth "Bearer foo"
platform-download 'nEevcAx2' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'K2zkRenm' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'PZnGBt4P' --login_with_auth "Bearer foo"
platform-query-redeem-history '7WnbdSJt' --login_with_auth "Bearer foo"
platform-get-code 'jX7ZshZy' --login_with_auth "Bearer foo"
platform-disable-code 'Zl5x4bRX' --login_with_auth "Bearer foo"
platform-enable-code 'BHUTrDzZ' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "SKscfOcY"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "u3dpCROY", "currencySymbol": "qUiGKXVF", "currencyType": "VIRTUAL", "decimals": 89, "localizationDescriptions": {"mpo6sPwV": "OEDSJsEK", "5QpNhlI2": "iS5EpGhh", "vXYck0up": "MzUYnb76"}}' --login_with_auth "Bearer foo"
platform-update-currency 'tFkEORV3' --body '{"localizationDescriptions": {"bu1bNCtX": "7W40V6Do", "5sYadCCF": "rHHC3DpZ", "xkrQDXuN": "FviMarv8"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'mnfHK8CC' --login_with_auth "Bearer foo"
platform-get-currency-config 'mE2lPnsb' --login_with_auth "Bearer foo"
platform-get-currency-summary 'D3SGEdlw' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "uUccE536", "rewards": [{"currency": {"currencyCode": "ugBp3HBv", "namespace": "epnDCjgy"}, "item": {"itemId": "JlXe36mg", "itemSku": "WjLfFmte", "itemType": "ue9nzJ6f"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "T805tVg8", "namespace": "JqU0jZpj"}, "item": {"itemId": "vsugAOS7", "itemSku": "u8RiWyer", "itemType": "CSa8SRgw"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "Aj1ik1jg", "namespace": "laDXTvKC"}, "item": {"itemId": "WwNTAhd2", "itemSku": "wrS0uPdj", "itemType": "hdinpng5"}, "quantity": 56, "type": "ITEM"}]}, {"id": "y8wbhMss", "rewards": [{"currency": {"currencyCode": "AHjapIkY", "namespace": "9Rf4wP57"}, "item": {"itemId": "dBZNR88Y", "itemSku": "bCtmKy8M", "itemType": "9zVrjfGX"}, "quantity": 28, "type": "ITEM"}, {"currency": {"currencyCode": "qAQUoY1G", "namespace": "jlIIk0iK"}, "item": {"itemId": "oTTS1j02", "itemSku": "o7JjTXAQ", "itemType": "N0qdskdQ"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "k0eaKQDO", "namespace": "JvrTefgl"}, "item": {"itemId": "Ss6g4iY9", "itemSku": "u02aCNYI", "itemType": "Wekp18lO"}, "quantity": 58, "type": "CURRENCY"}]}, {"id": "mNqF7Bl0", "rewards": [{"currency": {"currencyCode": "LcghVHfP", "namespace": "EspxwhRO"}, "item": {"itemId": "N0bc1eMb", "itemSku": "EIjowLqc", "itemType": "3ecjXJbZ"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "KKoxLE1Y", "namespace": "3Dymtj3g"}, "item": {"itemId": "iPg4x4yi", "itemSku": "PX6ues1H", "itemType": "hhkg1yLV"}, "quantity": 2, "type": "CURRENCY"}, {"currency": {"currencyCode": "LFzHEP8c", "namespace": "M4NTwr0K"}, "item": {"itemId": "HaAsmTej", "itemSku": "52WKi6tA", "itemType": "rAURt9pl"}, "quantity": 58, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"q8PdH6hJ": "PUAc0RVw", "XgAgntLM": "CuaXBWQi", "6BqPg4xr": "0lCancUZ"}}, {"platform": "STEAM", "platformDlcIdMap": {"CHsZYoLf": "R1KtOv7Z", "y0b65uvu": "KNuy0ytZ", "Q7M6Nzy1": "adnSKOLF"}}, {"platform": "XBOX", "platformDlcIdMap": {"ElW9YfRS": "se6AAz3S", "4czz0QKF": "lAVmVLu4", "AOec0z8e": "Beeoip68"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1989-10-11T00:00:00Z", "grantedCode": "1nsv4W2O", "itemId": "JhtafxMS", "itemNamespace": "JlHeb34s", "language": "mUie", "quantity": 37, "region": "5LLLOexL", "source": "REDEEM_CODE", "startDate": "1973-12-15T00:00:00Z", "storeId": "ZvWtND2t"}, {"endDate": "1972-09-24T00:00:00Z", "grantedCode": "BFpX8lNt", "itemId": "FEJ7tnkY", "itemNamespace": "6Mca5afj", "language": "mm-SfbW", "quantity": 43, "region": "KvgatOEB", "source": "PURCHASE", "startDate": "1998-01-25T00:00:00Z", "storeId": "TdlNBJYO"}, {"endDate": "1977-08-10T00:00:00Z", "grantedCode": "pu1VCarz", "itemId": "BsV6xnZ5", "itemNamespace": "Jrzzjrca", "language": "NHI_AuKy", "quantity": 84, "region": "oed9DHhL", "source": "PURCHASE", "startDate": "1979-12-16T00:00:00Z", "storeId": "JnNnN7kA"}], "userIds": ["sGo7dwV9", "5HTHQIoV", "a7j0riFc"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["DBqFKHQk", "ETJyTlUr", "wDTnoujQ"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'D4IEiH9Z' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "5qXn3aoR", "password": "tlqOECoh"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "ViHA5Czg"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "FSy8X1A3", "serviceAccountId": "PrIfapq5"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "AAeMe4L3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"gWgU4pCA": "KxeE70Ca", "unQNxot3": "71W9G4Av", "QkqsGnmy": "o5JJTUVm"}}, {"itemIdentity": "b8GEXFTl", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"yrIwMif3": "BOdkocVT", "d4BxqGWV": "6mTJ0sQs", "6XNbjvqh": "nUVLWu8o"}}, {"itemIdentity": "lKdxL6oz", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"mDD0jJvl": "fV5OemPY", "dYT7DROC": "jtuzFMbA", "G9YI89hm": "guB8FOTj"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "MLo4b9rI"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "zqYkEpst", "publisherAuthenticationKey": "yVTBcrM8"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "rG0rH0zc", "clientSecret": "swwVeMK6", "organizationId": "MbGIVIu8"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "vvwLc7KY"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details '3uVoJXTI' 'MtpgkieD' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'yF97lGdM' 'iHKxbWCY' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'zo8yO2KT' --body '{"categoryPath": "K9tmmOnY", "targetItemId": "nOpas6gh", "targetNamespace": "P1y4Zi7s"}' --login_with_auth "Bearer foo"
platform-create-item '7QBlk44Z' --body '{"appId": "44B1GZgK", "appType": "DEMO", "baseAppId": "wa3Ddb60", "boothName": "ufPpzwj1", "categoryPath": "QGIFmlVf", "clazz": "4jvapseE", "displayOrder": 78, "entitlementType": "DURABLE", "ext": {"N9bvhOrH": {}, "flIOd6X3": {}, "viLvtEk4": {}}, "features": ["xo8SV38n", "mTIpUA9g", "EhoXmM2W"], "images": [{"as": "7l6jHMA2", "caption": "rG3nakop", "height": 55, "imageUrl": "SHNgqRqC", "smallImageUrl": "V7usamAN", "width": 21}, {"as": "Tow0qiOi", "caption": "C4j0iktm", "height": 93, "imageUrl": "ZPLkLOsp", "smallImageUrl": "0LZ5njN8", "width": 68}, {"as": "gZvRrvr0", "caption": "n9d9lvcc", "height": 76, "imageUrl": "pVyW9dD1", "smallImageUrl": "kOmvrAej", "width": 5}], "itemIds": ["tKZWe8ao", "FzAyBME7", "4HUtipUW"], "itemQty": {"YhWV1qx8": 59, "OWA8NjxO": 28, "XUr9Sk4l": 33}, "itemType": "MEDIA", "listable": true, "localizations": {"faBcAXXK": {"description": "lhvyH8pa", "localExt": {"OJtxqMPp": {}, "cVfRwNj5": {}, "47fH0XrK": {}}, "longDescription": "EDpEY8Vn", "title": "ocGAjci0"}, "V3tBf2jn": {"description": "HGKXphn5", "localExt": {"0c9tNLDl": {}, "jhZ2jxLR": {}, "X3z46OCa": {}}, "longDescription": "GBeMfPlN", "title": "os4yBRjr"}, "ERHEonAZ": {"description": "R8GmEu0q", "localExt": {"1p6QCyY6": {}, "vSkVFWds": {}, "bYuVEGVx": {}}, "longDescription": "YheR3j5m", "title": "NZ6vwv7K"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 38, "itemId": "gxefTYKh", "itemSku": "uxaEc7M4", "itemType": "P7UckSC6"}, {"count": 9, "itemId": "DAF8KDsB", "itemSku": "ZOuYQJ03", "itemType": "BAHZ7c53"}, {"count": 34, "itemId": "ee9GXhKc", "itemSku": "jmSEwdrk", "itemType": "EnnqKzFs"}], "name": "LfYalUlf", "odds": 0.35976340187309075, "type": "REWARD", "weight": 10}, {"lootBoxItems": [{"count": 87, "itemId": "QSfQrtfF", "itemSku": "3TQN0OcN", "itemType": "DLr36vzo"}, {"count": 15, "itemId": "dfiOMZfE", "itemSku": "hHr39pys", "itemType": "FO3Zvc1B"}, {"count": 73, "itemId": "G99Lyvfv", "itemSku": "HEsJKQQe", "itemType": "wVLMUoAn"}], "name": "aRcYp7FU", "odds": 0.16121794362571462, "type": "PROBABILITY_GROUP", "weight": 71}, {"lootBoxItems": [{"count": 71, "itemId": "0HlyPR7w", "itemSku": "ZNiVsF6x", "itemType": "G2mXEQdb"}, {"count": 52, "itemId": "5wWaDhuk", "itemSku": "U4khGG4v", "itemType": "ZFTYnPkm"}, {"count": 91, "itemId": "ErqxyMyO", "itemSku": "K06MqQBE", "itemType": "rxgjVByc"}], "name": "vU4PbmRD", "odds": 0.043584020710082494, "type": "REWARD", "weight": 75}], "rollFunction": "CUSTOM"}, "maxCount": 34, "maxCountPerUser": 50, "name": "DjQjBECX", "optionBoxConfig": {"boxItems": [{"count": 44, "itemId": "w6T6mZEi", "itemSku": "wxxElpMY", "itemType": "SWIeVzm7"}, {"count": 51, "itemId": "Heh94TSe", "itemSku": "nE5hCFkI", "itemType": "f5weqZ18"}, {"count": 78, "itemId": "JREdUQ3z", "itemSku": "9F1BxNNg", "itemType": "nke4aknc"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 20, "fixedTrialCycles": 46, "graceDays": 5}, "regionData": {"u9TmXfJW": [{"currencyCode": "BPrx9Ns8", "currencyNamespace": "eLzYEvwS", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1972-01-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-12-13T00:00:00Z", "expireAt": "1993-03-12T00:00:00Z", "price": 15, "purchaseAt": "1972-03-16T00:00:00Z", "trialPrice": 40}, {"currencyCode": "CMW64f4X", "currencyNamespace": "hIjSoTB2", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-10-26T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1978-02-09T00:00:00Z", "expireAt": "1987-07-31T00:00:00Z", "price": 52, "purchaseAt": "1971-11-04T00:00:00Z", "trialPrice": 31}, {"currencyCode": "AATPY8P8", "currencyNamespace": "P3cfoivv", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1979-06-23T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-06-21T00:00:00Z", "expireAt": "1972-12-31T00:00:00Z", "price": 46, "purchaseAt": "1980-10-27T00:00:00Z", "trialPrice": 90}], "oHw2hyd1": [{"currencyCode": "2uSE7BEv", "currencyNamespace": "3aevq6io", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1998-09-20T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1972-02-24T00:00:00Z", "expireAt": "1990-03-23T00:00:00Z", "price": 41, "purchaseAt": "1998-10-04T00:00:00Z", "trialPrice": 31}, {"currencyCode": "S3Uv1BpW", "currencyNamespace": "oJBaqdg2", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1988-01-15T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1981-06-13T00:00:00Z", "expireAt": "1978-03-26T00:00:00Z", "price": 38, "purchaseAt": "1993-08-13T00:00:00Z", "trialPrice": 24}, {"currencyCode": "XTmSLyn5", "currencyNamespace": "0sigBVZx", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1974-01-27T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1983-12-07T00:00:00Z", "expireAt": "1987-07-21T00:00:00Z", "price": 44, "purchaseAt": "1997-12-24T00:00:00Z", "trialPrice": 61}], "yd9UuL02": [{"currencyCode": "Le8HSCsl", "currencyNamespace": "sDd4M1F5", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1993-12-15T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1986-01-11T00:00:00Z", "expireAt": "1995-03-28T00:00:00Z", "price": 61, "purchaseAt": "1993-04-28T00:00:00Z", "trialPrice": 99}, {"currencyCode": "Nz81GRaz", "currencyNamespace": "PAANjfBo", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1973-09-18T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1991-11-10T00:00:00Z", "expireAt": "1983-03-21T00:00:00Z", "price": 34, "purchaseAt": "1974-08-05T00:00:00Z", "trialPrice": 66}, {"currencyCode": "2clJ5gEO", "currencyNamespace": "aCgM6Yn6", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1988-02-19T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1971-11-26T00:00:00Z", "expireAt": "1983-09-06T00:00:00Z", "price": 11, "purchaseAt": "1988-05-07T00:00:00Z", "trialPrice": 4}]}, "saleConfig": {"currencyCode": "GBFUjOn5", "price": 25}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "8nbLzvtC", "stackable": true, "status": "INACTIVE", "tags": ["5ynMKquU", "oWAXhMlW", "icAeIVXt"], "targetCurrencyCode": "4tLqX7OI", "targetNamespace": "Cf5oD1e6", "thumbnailUrl": "oI9FmYel", "useCount": 91}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'kOw72o8Z' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'kgk0jS6r' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'DWUwfhKv' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'rf2AaH4y' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'CWrHSppn' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'IZkNnTn3' --body '{"itemIds": ["rzH5NvAt", "cvNedgS1", "fUfKmihD"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'bmu8ePWl' --body '{"changes": [{"itemIdentities": ["QMVDXEHe", "iGTnwyEw", "6hIWDZrp"], "itemIdentityType": "ITEM_ID", "regionData": {"rz3ISW51": [{"currencyCode": "0kHr4isT", "currencyNamespace": "KWjmv67n", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1976-08-21T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1996-08-26T00:00:00Z", "discountedPrice": 11, "expireAt": "1997-07-02T00:00:00Z", "price": 100, "purchaseAt": "1977-04-05T00:00:00Z", "trialPrice": 47}, {"currencyCode": "GVE9sJ4N", "currencyNamespace": "pUtKp6M9", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1984-09-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1982-11-07T00:00:00Z", "discountedPrice": 28, "expireAt": "1981-07-26T00:00:00Z", "price": 16, "purchaseAt": "1972-05-31T00:00:00Z", "trialPrice": 85}, {"currencyCode": "jwJeGwaP", "currencyNamespace": "SDMZz95O", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1989-03-09T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1979-07-24T00:00:00Z", "discountedPrice": 1, "expireAt": "1983-02-21T00:00:00Z", "price": 61, "purchaseAt": "1993-12-23T00:00:00Z", "trialPrice": 48}], "DiCqSMzp": [{"currencyCode": "qIFGLkDs", "currencyNamespace": "7ACC1RgB", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1995-11-17T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1980-09-30T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-09-18T00:00:00Z", "price": 10, "purchaseAt": "1975-06-17T00:00:00Z", "trialPrice": 66}, {"currencyCode": "qJLgmBLE", "currencyNamespace": "35YhyiDV", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1988-10-05T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1983-02-12T00:00:00Z", "discountedPrice": 32, "expireAt": "1971-05-06T00:00:00Z", "price": 3, "purchaseAt": "1984-07-13T00:00:00Z", "trialPrice": 68}, {"currencyCode": "JWWSI1EC", "currencyNamespace": "Uo1NPpeF", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1993-07-29T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1981-09-10T00:00:00Z", "discountedPrice": 14, "expireAt": "1986-02-19T00:00:00Z", "price": 84, "purchaseAt": "1984-01-13T00:00:00Z", "trialPrice": 66}], "n4C97uAP": [{"currencyCode": "P8PATLpU", "currencyNamespace": "pxeJlsBJ", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1999-11-23T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1990-03-18T00:00:00Z", "discountedPrice": 26, "expireAt": "1984-08-12T00:00:00Z", "price": 18, "purchaseAt": "1975-05-18T00:00:00Z", "trialPrice": 44}, {"currencyCode": "2mK8lbSE", "currencyNamespace": "Eelxnb5Q", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1996-05-26T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1982-08-08T00:00:00Z", "discountedPrice": 69, "expireAt": "1974-09-14T00:00:00Z", "price": 40, "purchaseAt": "1978-04-03T00:00:00Z", "trialPrice": 53}, {"currencyCode": "4N1LQZmB", "currencyNamespace": "61JMdtwC", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1991-03-29T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-06-09T00:00:00Z", "discountedPrice": 22, "expireAt": "1973-05-20T00:00:00Z", "price": 93, "purchaseAt": "1997-01-21T00:00:00Z", "trialPrice": 35}]}}, {"itemIdentities": ["wmbwFEnA", "ZaWsQJtR", "YoagRJK5"], "itemIdentityType": "ITEM_ID", "regionData": {"9UcOvhPy": [{"currencyCode": "E11TRT2S", "currencyNamespace": "Kseoe8VL", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1973-08-30T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1990-08-11T00:00:00Z", "discountedPrice": 38, "expireAt": "1971-04-06T00:00:00Z", "price": 51, "purchaseAt": "1974-10-27T00:00:00Z", "trialPrice": 16}, {"currencyCode": "Nzjf005C", "currencyNamespace": "XNGehQ2a", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1975-09-05T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1974-10-26T00:00:00Z", "discountedPrice": 5, "expireAt": "1987-03-03T00:00:00Z", "price": 61, "purchaseAt": "1985-01-10T00:00:00Z", "trialPrice": 58}, {"currencyCode": "kXX26uEd", "currencyNamespace": "CfQaMAQu", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1974-08-20T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1998-10-06T00:00:00Z", "discountedPrice": 8, "expireAt": "1999-03-21T00:00:00Z", "price": 49, "purchaseAt": "1991-11-29T00:00:00Z", "trialPrice": 19}], "fIMLds2D": [{"currencyCode": "bPcaoMdt", "currencyNamespace": "RLTmSvTk", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1985-01-07T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1981-07-12T00:00:00Z", "discountedPrice": 45, "expireAt": "1996-07-08T00:00:00Z", "price": 44, "purchaseAt": "1981-04-14T00:00:00Z", "trialPrice": 74}, {"currencyCode": "HMxr5hPC", "currencyNamespace": "JJztJBg0", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1994-10-15T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-04-21T00:00:00Z", "discountedPrice": 52, "expireAt": "1987-12-31T00:00:00Z", "price": 9, "purchaseAt": "1979-07-08T00:00:00Z", "trialPrice": 91}, {"currencyCode": "OXE2AkCh", "currencyNamespace": "3QIZsUf8", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1983-09-18T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1996-12-25T00:00:00Z", "discountedPrice": 6, "expireAt": "1978-04-09T00:00:00Z", "price": 91, "purchaseAt": "1982-11-26T00:00:00Z", "trialPrice": 93}], "AjHJWwfC": [{"currencyCode": "jYwWkLob", "currencyNamespace": "9gKLqs2n", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1997-03-01T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1978-08-17T00:00:00Z", "discountedPrice": 25, "expireAt": "1983-05-15T00:00:00Z", "price": 10, "purchaseAt": "1994-09-26T00:00:00Z", "trialPrice": 1}, {"currencyCode": "ZinxNfgP", "currencyNamespace": "AwkMBszn", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1984-05-18T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1983-11-07T00:00:00Z", "discountedPrice": 5, "expireAt": "1994-04-01T00:00:00Z", "price": 54, "purchaseAt": "1998-01-10T00:00:00Z", "trialPrice": 64}, {"currencyCode": "GptKaWNv", "currencyNamespace": "Pbpg7yrR", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1996-04-04T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1977-03-31T00:00:00Z", "discountedPrice": 100, "expireAt": "1979-06-25T00:00:00Z", "price": 25, "purchaseAt": "1974-03-10T00:00:00Z", "trialPrice": 44}]}}, {"itemIdentities": ["H3xRHAKy", "4QxZkaXZ", "7vmiEd0J"], "itemIdentityType": "ITEM_SKU", "regionData": {"1Ps3ztUI": [{"currencyCode": "V0dS6hIH", "currencyNamespace": "9c4Vfkyr", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1978-06-16T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1996-11-09T00:00:00Z", "discountedPrice": 47, "expireAt": "1974-01-13T00:00:00Z", "price": 37, "purchaseAt": "1971-12-26T00:00:00Z", "trialPrice": 62}, {"currencyCode": "smH1EQrY", "currencyNamespace": "mkPKTPOl", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1994-11-25T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1988-09-14T00:00:00Z", "discountedPrice": 16, "expireAt": "1974-11-21T00:00:00Z", "price": 7, "purchaseAt": "1985-04-16T00:00:00Z", "trialPrice": 47}, {"currencyCode": "WIYN2NVL", "currencyNamespace": "70Iw157g", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1976-08-30T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1995-01-11T00:00:00Z", "discountedPrice": 25, "expireAt": "1992-11-05T00:00:00Z", "price": 40, "purchaseAt": "1981-08-28T00:00:00Z", "trialPrice": 25}], "7ufFVTOh": [{"currencyCode": "vQpfbBke", "currencyNamespace": "8aEdd36x", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1977-07-07T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1983-11-18T00:00:00Z", "discountedPrice": 91, "expireAt": "1984-04-28T00:00:00Z", "price": 25, "purchaseAt": "1977-03-19T00:00:00Z", "trialPrice": 40}, {"currencyCode": "DDCvs78m", "currencyNamespace": "cMdiS76Y", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1999-09-19T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-04-27T00:00:00Z", "discountedPrice": 42, "expireAt": "1981-02-12T00:00:00Z", "price": 89, "purchaseAt": "1982-11-01T00:00:00Z", "trialPrice": 95}, {"currencyCode": "kqIgLuZS", "currencyNamespace": "6hsQryiE", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1992-09-25T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1984-01-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1978-02-09T00:00:00Z", "price": 31, "purchaseAt": "1995-05-24T00:00:00Z", "trialPrice": 81}], "4U4fwQIi": [{"currencyCode": "LXgmRasv", "currencyNamespace": "jO4lj8m3", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-07-02T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1979-07-07T00:00:00Z", "discountedPrice": 3, "expireAt": "1994-02-20T00:00:00Z", "price": 5, "purchaseAt": "1972-06-18T00:00:00Z", "trialPrice": 48}, {"currencyCode": "HHPB5S3D", "currencyNamespace": "vPRCzBrV", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1998-08-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1991-08-07T00:00:00Z", "discountedPrice": 19, "expireAt": "1985-02-01T00:00:00Z", "price": 5, "purchaseAt": "1987-06-24T00:00:00Z", "trialPrice": 39}, {"currencyCode": "RFaTC11W", "currencyNamespace": "0TGTCm4f", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1976-12-04T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1978-11-13T00:00:00Z", "discountedPrice": 86, "expireAt": "1982-07-12T00:00:00Z", "price": 4, "purchaseAt": "1986-07-30T00:00:00Z", "trialPrice": 88}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'gEpzZ3Fb' 'txfhcRC7' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'IVYa6iZ5' --login_with_auth "Bearer foo"
platform-update-item 'uFRYNn3S' 'HiWxF0Yb' --body '{"appId": "uU5ar5qT", "appType": "DEMO", "baseAppId": "WUCy0Afg", "boothName": "c050XIZR", "categoryPath": "W491e94m", "clazz": "QjVOOBnI", "displayOrder": 99, "entitlementType": "CONSUMABLE", "ext": {"hunElqZU": {}, "odp3IhtC": {}, "SHy1ei1f": {}}, "features": ["QlNapJRf", "IrPvfHnR", "N06EjRwE"], "images": [{"as": "k4f9Zcw1", "caption": "pEHAyNFx", "height": 6, "imageUrl": "ct8puMyb", "smallImageUrl": "YGxD9IPm", "width": 25}, {"as": "zGoDtsUu", "caption": "Yo5p8ED5", "height": 87, "imageUrl": "b7cUNGPT", "smallImageUrl": "BxiFFCrn", "width": 79}, {"as": "djjs69FT", "caption": "FVGUVhvK", "height": 14, "imageUrl": "av7MK0Pc", "smallImageUrl": "LnEkcokK", "width": 46}], "itemIds": ["PimNhcZs", "U3VAdMDc", "b4qlkiFA"], "itemQty": {"amqvZI2K": 47, "AOrVSnLo": 4, "de41s3rH": 47}, "itemType": "COINS", "listable": false, "localizations": {"B2yPlRpW": {"description": "jmHZAAvK", "localExt": {"TH8MuqIg": {}, "0Czkguwu": {}, "JCW7EEFB": {}}, "longDescription": "67AODbi9", "title": "BzupBsFp"}, "Yc77GtRU": {"description": "cCFeY5g4", "localExt": {"XgBsbfzq": {}, "xBPNe8ae": {}, "1Il4aAtE": {}}, "longDescription": "bu4IjGdq", "title": "thRxTjQ7"}, "gkZEY8rG": {"description": "0q0Q2Qd2", "localExt": {"JzRbkF2I": {}, "03dIjvBb": {}, "A6bfbYaJ": {}}, "longDescription": "CJjfk2TU", "title": "vn95FhO7"}}, "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 93, "itemId": "W3mbDVMD", "itemSku": "u87t0ldW", "itemType": "f7iSGIiK"}, {"count": 64, "itemId": "CWTqUOYZ", "itemSku": "ENJ1QHZQ", "itemType": "xPRXH7ux"}, {"count": 56, "itemId": "LAUK6mQ5", "itemSku": "iZgbwwm5", "itemType": "iGzXtckn"}], "name": "rgidKupv", "odds": 0.7904243107669983, "type": "REWARD_GROUP", "weight": 77}, {"lootBoxItems": [{"count": 0, "itemId": "fTiCO1ND", "itemSku": "BvQvRPnA", "itemType": "z4VzW0Cp"}, {"count": 30, "itemId": "ut9H9XyW", "itemSku": "I8bp8fQx", "itemType": "RuX91uYm"}, {"count": 40, "itemId": "VRyihYNZ", "itemSku": "84CVhziX", "itemType": "V8HwSmvc"}], "name": "vcDKF19y", "odds": 0.7667253147354595, "type": "REWARD_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 1, "itemId": "d6lPKvqD", "itemSku": "ejvqklTS", "itemType": "vDwuOrP9"}, {"count": 23, "itemId": "aGTVX3Bb", "itemSku": "7jlz5IfH", "itemType": "gKjI9mwJ"}, {"count": 90, "itemId": "8E7wY76P", "itemSku": "xLv9HBEU", "itemType": "e89AwEw1"}], "name": "HO4FnKtx", "odds": 0.9090717921042875, "type": "REWARD_GROUP", "weight": 78}], "rollFunction": "DEFAULT"}, "maxCount": 25, "maxCountPerUser": 66, "name": "lDr19uJ3", "optionBoxConfig": {"boxItems": [{"count": 27, "itemId": "FK0nnX2p", "itemSku": "oMfZ1hDH", "itemType": "tbh4HtMl"}, {"count": 65, "itemId": "D9vNAp4j", "itemSku": "inFpnQ5x", "itemType": "F9wwbvMZ"}, {"count": 49, "itemId": "u11A3HTo", "itemSku": "vFi4tPAG", "itemType": "fleyCA6j"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 39, "fixedTrialCycles": 55, "graceDays": 6}, "regionData": {"g79HcLJX": [{"currencyCode": "J7mpVI6e", "currencyNamespace": "TYAjdPlC", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1992-12-11T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1993-05-06T00:00:00Z", "expireAt": "1996-01-15T00:00:00Z", "price": 56, "purchaseAt": "1976-08-09T00:00:00Z", "trialPrice": 8}, {"currencyCode": "KyOVgvnW", "currencyNamespace": "bfRJtsB7", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1994-12-15T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1997-12-07T00:00:00Z", "expireAt": "1992-06-30T00:00:00Z", "price": 96, "purchaseAt": "1971-08-10T00:00:00Z", "trialPrice": 17}, {"currencyCode": "xJrINPXp", "currencyNamespace": "pPNO3Afm", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1993-02-22T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1982-08-22T00:00:00Z", "expireAt": "1990-11-01T00:00:00Z", "price": 71, "purchaseAt": "1998-11-19T00:00:00Z", "trialPrice": 5}], "6tvKgLB9": [{"currencyCode": "QmJIOq9d", "currencyNamespace": "P5szG71u", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1975-01-03T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-12-17T00:00:00Z", "expireAt": "1997-07-04T00:00:00Z", "price": 58, "purchaseAt": "1990-05-21T00:00:00Z", "trialPrice": 88}, {"currencyCode": "UHZVNYzG", "currencyNamespace": "MNIpWoSL", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1995-06-18T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1973-02-13T00:00:00Z", "expireAt": "1997-06-14T00:00:00Z", "price": 44, "purchaseAt": "1973-07-22T00:00:00Z", "trialPrice": 99}, {"currencyCode": "U3WeYeA9", "currencyNamespace": "t2ENKKWr", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1984-09-27T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1988-04-06T00:00:00Z", "expireAt": "1975-08-27T00:00:00Z", "price": 42, "purchaseAt": "1990-02-19T00:00:00Z", "trialPrice": 64}], "KAOG5iDc": [{"currencyCode": "CR5PbCvD", "currencyNamespace": "Lil8wj9c", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1984-10-14T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1980-01-12T00:00:00Z", "expireAt": "1991-09-20T00:00:00Z", "price": 65, "purchaseAt": "1978-11-26T00:00:00Z", "trialPrice": 15}, {"currencyCode": "JgehDJxE", "currencyNamespace": "N7JlZc8L", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1999-06-06T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1988-09-24T00:00:00Z", "expireAt": "1975-01-03T00:00:00Z", "price": 99, "purchaseAt": "1996-06-14T00:00:00Z", "trialPrice": 11}, {"currencyCode": "4yA3r0u4", "currencyNamespace": "q1bTHXIj", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1989-05-28T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1980-07-24T00:00:00Z", "expireAt": "1996-09-15T00:00:00Z", "price": 63, "purchaseAt": "1976-11-12T00:00:00Z", "trialPrice": 24}]}, "saleConfig": {"currencyCode": "0u1uuoVd", "price": 28}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "VoSlKNch", "stackable": false, "status": "INACTIVE", "tags": ["hhhuiTnJ", "4X3LLaGP", "GdqLE8So"], "targetCurrencyCode": "arYYkHBD", "targetNamespace": "dSzBXdxa", "thumbnailUrl": "pwhd5IQY", "useCount": 56}' --login_with_auth "Bearer foo"
platform-delete-item '7Esufmfx' --login_with_auth "Bearer foo"
platform-acquire-item 'KYB4LM6H' --body '{"count": 88, "orderNo": "Z9OhxXvC"}' --login_with_auth "Bearer foo"
platform-get-app 'p9y7fLD2' --login_with_auth "Bearer foo"
platform-update-app 'qfCXnlUn' 'qxT1WsRN' --body '{"carousel": [{"alt": "MZcA92hz", "previewUrl": "C7MNa8vV", "thumbnailUrl": "e4MHX6Ag", "type": "video", "url": "ep90AyyU", "videoSource": "youtube"}, {"alt": "M9n8D2eL", "previewUrl": "Me3lt9qf", "thumbnailUrl": "x2UDcgVE", "type": "video", "url": "9FK6e0Mr", "videoSource": "youtube"}, {"alt": "JaMYvNQO", "previewUrl": "sDa4bkcg", "thumbnailUrl": "epqtxjbr", "type": "video", "url": "RJunZPkp", "videoSource": "vimeo"}], "developer": "ccIBnWyP", "forumUrl": "w8mj7gyQ", "genres": ["FreeToPlay", "Casual", "Action"], "localizations": {"k42miteR": {"announcement": "5eQAe1rz", "slogan": "mmgqBPRm"}, "d6mO4oI8": {"announcement": "KDqebm83", "slogan": "raNBJ5y7"}, "axEkvI4o": {"announcement": "xZEDxGiB", "slogan": "nNbn0zaf"}}, "platformRequirements": {"7CaOSlHX": [{"additionals": "rUSA6sMJ", "directXVersion": "zA5mtqIS", "diskSpace": "Q83TTbte", "graphics": "fXWznDe4", "label": "LQdXfFBi", "osVersion": "i2RAMEX5", "processor": "RMjBFVZG", "ram": "YzQqV8d9", "soundCard": "mDdUIoiI"}, {"additionals": "JFNxuNOm", "directXVersion": "USWw18T1", "diskSpace": "IxVWCxdv", "graphics": "PL9e4P01", "label": "vxP8xj1L", "osVersion": "yEirURER", "processor": "nEMzpImW", "ram": "6sjAHyCK", "soundCard": "5tNanGBr"}, {"additionals": "kzUvck3x", "directXVersion": "TtmOFMeb", "diskSpace": "S4AdlNzw", "graphics": "og2IhErk", "label": "NhNcECWw", "osVersion": "chW6zL9S", "processor": "kbLlrNXn", "ram": "GanMazb8", "soundCard": "jvRWenUR"}], "H48aJuAL": [{"additionals": "EcSqcE15", "directXVersion": "u6D31DjO", "diskSpace": "srs3CUYA", "graphics": "TdqnQGbq", "label": "iqOkNeAT", "osVersion": "j7eGjodd", "processor": "7CcJUrI6", "ram": "MAugK5ky", "soundCard": "pNrp2nFe"}, {"additionals": "9FmN86sK", "directXVersion": "5LOq4ft5", "diskSpace": "jGcMICPU", "graphics": "YnfG6jl9", "label": "U4jReteI", "osVersion": "MgzISomC", "processor": "sodJrhQW", "ram": "41q2OspC", "soundCard": "Zbt3Uta5"}, {"additionals": "I0uGcL1k", "directXVersion": "oyHjCH5o", "diskSpace": "lYLETRpA", "graphics": "BAmO2EGv", "label": "J4UMS93y", "osVersion": "OxNInDBy", "processor": "hnoluO6t", "ram": "i0QP2ssi", "soundCard": "J66OzOj8"}], "4O6tgohj": [{"additionals": "tC7bzjPp", "directXVersion": "ucddXJ5z", "diskSpace": "ifF8y959", "graphics": "anrNSley", "label": "wHbHig6I", "osVersion": "KWVZ77Ke", "processor": "RWdECaFG", "ram": "zfZ2hxcJ", "soundCard": "2Fnemn7M"}, {"additionals": "23SzUo4h", "directXVersion": "NBDh9ZFP", "diskSpace": "1OW0nXOE", "graphics": "rQPS4VsR", "label": "oYIK69yg", "osVersion": "9ADCGiXa", "processor": "Ls2xjHki", "ram": "nOD975nA", "soundCard": "RHCmhNHS"}, {"additionals": "XuqIHsxv", "directXVersion": "aUoXDmwW", "diskSpace": "sukxncuD", "graphics": "3QxCXMd0", "label": "0YBWCaVV", "osVersion": "mM45mfIZ", "processor": "sWhkS476", "ram": "dGGJwJ00", "soundCard": "UH197MJ6"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["Multi", "Multi", "LocalCoop"], "primaryGenre": "Sports", "publisher": "cAkXsVJb", "releaseDate": "1996-07-29T00:00:00Z", "websiteUrl": "i7eRZa7W"}' --login_with_auth "Bearer foo"
platform-disable-item 'wIc895Im' 'qK6tVsaU' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'q3stUh5J' --login_with_auth "Bearer foo"
platform-enable-item '5Z9GiBiS' 'AylX5cS0' --login_with_auth "Bearer foo"
platform-feature-item 'IeHpWCug' 'mfOL0QQp' 'xsuD8PGq' --login_with_auth "Bearer foo"
platform-defeature-item 'ku59eFJr' 'OXyDYz9v' 'MUOPG0iH' --login_with_auth "Bearer foo"
platform-get-locale-item 'DT8QbF7g' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'HPTPQbvL' 't2NRqJGI' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 53, "comparison": "isLessThanOrEqual", "name": "YYT9oTyn", "predicateType": "EntitlementPredicate", "value": "Ornyx34l", "values": ["uLdvtsTK", "Pvfn2Qt9", "XMjiw6gY"]}, {"anyOf": 17, "comparison": "includes", "name": "yq3Nyk8n", "predicateType": "EntitlementPredicate", "value": "1LKiFQoL", "values": ["X9dN1MGR", "Dvumfqrg", "Sfnx2h61"]}, {"anyOf": 31, "comparison": "isNot", "name": "UxDSK8aO", "predicateType": "SeasonTierPredicate", "value": "9qjNLwvI", "values": ["6dLLIeIV", "iLilmOGF", "8JdiY3RR"]}]}, {"operator": "and", "predicates": [{"anyOf": 66, "comparison": "is", "name": "cdlbdRXT", "predicateType": "SeasonTierPredicate", "value": "tPZSTpPq", "values": ["3xjrElvv", "Dgw0ag7k", "SWE0Hiqm"]}, {"anyOf": 67, "comparison": "isLessThan", "name": "dC6ItxDT", "predicateType": "SeasonTierPredicate", "value": "p4n4XCFk", "values": ["zbZxuHSg", "DOK8bjoF", "D1AJLCws"]}, {"anyOf": 35, "comparison": "excludes", "name": "cg2CXxep", "predicateType": "SeasonPassPredicate", "value": "ZTGJpqgl", "values": ["t1aJLNNz", "QPIDpor7", "2IzNXGTu"]}]}, {"operator": "and", "predicates": [{"anyOf": 72, "comparison": "is", "name": "C9Mfuc8V", "predicateType": "SeasonTierPredicate", "value": "DdMiCxmu", "values": ["GC1d2b92", "CCVuFjS1", "B4vEgj3H"]}, {"anyOf": 82, "comparison": "isGreaterThan", "name": "Iz0jcgDI", "predicateType": "EntitlementPredicate", "value": "Pkz96vd8", "values": ["eqhwVhjn", "0msqIm5b", "ufnBqrpL"]}, {"anyOf": 28, "comparison": "is", "name": "PwTiXfLc", "predicateType": "SeasonPassPredicate", "value": "sAQHbMrK", "values": ["WCqZXHLL", "a31oQf7B", "Yi0Zxs5S"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'ULnZDhut' --body '{"orderNo": "DM6Bqguq"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "D5xxGxBW", "name": "tnTKUe2z", "status": "ACTIVE", "tags": ["Rt6PqlkL", "0diRhLC1", "0ih2EQfY"]}' --login_with_auth "Bearer foo"
platform-get-key-group '3XCv4hdO' --login_with_auth "Bearer foo"
platform-update-key-group 'a6FdZhNM' --body '{"description": "d1onFjGR", "name": "bxtABPXD", "status": "ACTIVE", "tags": ["bUWmFhdY", "LWzMuv3z", "kUY0n0BA"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'ZkwbYkBL' --login_with_auth "Bearer foo"
platform-list-keys 'yO6A0Fqf' --login_with_auth "Bearer foo"
platform-upload-keys 'hnaB3YxK' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'NdOTacCc' --login_with_auth "Bearer foo"
platform-refund-order 'JfIfXshu' --body '{"description": "LUk5Wdpx"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "xe6A6Rpm", "privateKey": "KDebNkyl"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "bynkgT9v", "currencyNamespace": "ayLLiiza", "customParameters": {"c7Ge6zKJ": {}, "dlt7rjF5": {}, "RaJwvkWV": {}}, "description": "co2LTo5i", "extOrderNo": "jlvDF8qB", "extUserId": "WCQ9dLWY", "itemType": "LOOTBOX", "language": "uvN_honE_XP", "metadata": {"6HdVfZVD": "AiU6iJOF", "7JKZFNk2": "NKy59X8i", "Og2sVBiC": "oeC5weXJ"}, "notifyUrl": "l7PeiMH8", "omitNotification": true, "platform": "jAkO3HKs", "price": 62, "recurringPaymentOrderNo": "yv6VTnOK", "region": "7xAvM7tu", "returnUrl": "L81lsR7x", "sandbox": true, "sku": "344RctmT", "subscriptionId": "ozCi8HeV", "targetNamespace": "6jbalHmq", "targetUserId": "BBfi7sSF", "title": "5BoGiTCV"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'sXsygWbj' --login_with_auth "Bearer foo"
platform-get-payment-order 'E2opXtds' --login_with_auth "Bearer foo"
platform-charge-payment-order 'JQeJ1too' --body '{"extTxId": "0qvxphTL", "paymentMethod": "EEBGTtZy", "paymentProvider": "CHECKOUT"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'EVheJjoE' --body '{"description": "EXBLIxGn"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'NuhoJM3W' --body '{"amount": 99, "currencyCode": "3aMb48jI", "notifyType": "CHARGE", "paymentProvider": "CHECKOUT", "salesTax": 62, "vat": 75}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'dqQpoGkU' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Steam' --body '{"allowedBalanceOrigins": ["GooglePlay", "IOS", "Twitch"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "1ESC6hZY", "eventTopic": "TYZbzf5a", "maxAwarded": 55, "maxAwardedPerUser": 7, "namespaceExpression": "NNNs5kgS", "rewardCode": "ZZNUHbIT", "rewardConditions": [{"condition": "9szApmWJ", "conditionName": "O5vzzXZj", "eventName": "08a6K1XR", "rewardItems": [{"duration": 98, "itemId": "R9NvBQZS", "quantity": 73}, {"duration": 85, "itemId": "BJZkDnEi", "quantity": 51}, {"duration": 98, "itemId": "fa2LrnpZ", "quantity": 48}]}, {"condition": "ozTt9TsH", "conditionName": "7A0TuU2a", "eventName": "L4bPkk11", "rewardItems": [{"duration": 39, "itemId": "HEAj1cT3", "quantity": 43}, {"duration": 30, "itemId": "6Zc2FbrT", "quantity": 65}, {"duration": 10, "itemId": "znTgDIwZ", "quantity": 71}]}, {"condition": "SqZFDsO1", "conditionName": "skRjOU1S", "eventName": "MfQVQa6b", "rewardItems": [{"duration": 22, "itemId": "qjdcEfU6", "quantity": 6}, {"duration": 83, "itemId": "YUumPKVS", "quantity": 99}, {"duration": 59, "itemId": "ynp1ck1v", "quantity": 93}]}], "userIdExpression": "e0dHJfF6"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'L9cgbUmu' --login_with_auth "Bearer foo"
platform-update-reward 'lhe98oaF' --body '{"description": "KlQicdrx", "eventTopic": "VhrtwSd9", "maxAwarded": 88, "maxAwardedPerUser": 100, "namespaceExpression": "7ci0vfWV", "rewardCode": "ZoRRMPi5", "rewardConditions": [{"condition": "7HyKKz5n", "conditionName": "yI6ulKNK", "eventName": "oXa0dgx1", "rewardItems": [{"duration": 72, "itemId": "7hLi6Hwe", "quantity": 45}, {"duration": 8, "itemId": "YhtQxpCY", "quantity": 78}, {"duration": 27, "itemId": "E6x21pdX", "quantity": 4}]}, {"condition": "QSPAd9sx", "conditionName": "oLnWGP1P", "eventName": "afIjLX8c", "rewardItems": [{"duration": 9, "itemId": "HuYrGWDK", "quantity": 23}, {"duration": 41, "itemId": "JfmQplvG", "quantity": 19}, {"duration": 30, "itemId": "VQ4aebjf", "quantity": 13}]}, {"condition": "wnJDg9Q3", "conditionName": "WXiydCOI", "eventName": "nVolsr6C", "rewardItems": [{"duration": 68, "itemId": "6jaGfsD1", "quantity": 4}, {"duration": 40, "itemId": "fswmeFpv", "quantity": 40}, {"duration": 5, "itemId": "DtetoQVF", "quantity": 77}]}], "userIdExpression": "lyKSTWLx"}' --login_with_auth "Bearer foo"
platform-delete-reward 'SFZ0Lpup' --login_with_auth "Bearer foo"
platform-check-event-condition 'Ei5DbkVs' --body '{"payload": {"3qFTi1t5": {}, "30Wj1Wfz": {}, "Ivc3VlSX": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'rA3XUGud' --body '{"conditionName": "4tVjmxEf", "userId": "4XvVhFJT"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'xFHITBg9' --body '{"active": true, "displayOrder": 44, "endDate": "1981-12-08T00:00:00Z", "ext": {"nq3eOMHI": {}, "KeTyBG5d": {}, "CUoExnKf": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 60, "itemCount": 60, "rule": "SEQUENCE"}, "items": [{"id": "9IN4V1Od", "sku": "hH4GVU7E"}, {"id": "xlkmc4xY", "sku": "iLjLyZrX"}, {"id": "r9Bhtzn8", "sku": "jAdTn6xB"}], "localizations": {"hrciryLm": {"description": "67rkadH5", "localExt": {"Y41SLjCP": {}, "rFa05Xl5": {}, "TPC5GODS": {}}, "longDescription": "44bmm7jP", "title": "dKLddfds"}, "UqjXVzW1": {"description": "QqxnWR5s", "localExt": {"heLgsAF4": {}, "ctv5guyc": {}, "Giq9j2Ey": {}}, "longDescription": "IknfLDpg", "title": "HnMOn8nc"}, "3gUZ8ZFy": {"description": "yEr0KBXu", "localExt": {"JBqK4QtE": {}, "ydPWLPBY": {}, "iR3UbJc1": {}}, "longDescription": "ZYapx7C4", "title": "77etqgfO"}}, "name": "JDUT0uKA", "rotationType": "NONE", "startDate": "1995-05-19T00:00:00Z", "viewId": "Rz3V7YbJ"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'M3bNLWHA' --login_with_auth "Bearer foo"
platform-get-section 'bCZixe2c' --login_with_auth "Bearer foo"
platform-update-section 'Q6O30lpz' 'cBQMAEcN' --body '{"active": false, "displayOrder": 72, "endDate": "1978-05-19T00:00:00Z", "ext": {"Vzl2kBuL": {}, "FXIeCEKZ": {}, "UTz3GvCA": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 19, "itemCount": 17, "rule": "SEQUENCE"}, "items": [{"id": "4acYHbrr", "sku": "yHB6GO9z"}, {"id": "P3FaepA3", "sku": "b3YJ9nJM"}, {"id": "6vtT27xv", "sku": "85K5MU2q"}], "localizations": {"mbeqaVem": {"description": "INdClpF7", "localExt": {"OvlBIEgj": {}, "se5kd6GE": {}, "Do08yq5E": {}}, "longDescription": "5HleLoog", "title": "4me2NBFp"}, "62xlXvVc": {"description": "JerTPW02", "localExt": {"PWsHiKYA": {}, "rAxnKBfB": {}, "fDlrQQuA": {}}, "longDescription": "c10DjjwM", "title": "v4vrIPRt"}, "vhQIyLar": {"description": "jaLOKnX5", "localExt": {"1yAB8Pa3": {}, "uNGKhaLl": {}, "JzJMSnJI": {}}, "longDescription": "IgsAVmaG", "title": "YxUX1B9o"}}, "name": "VuzG2CnY", "rotationType": "CUSTOM", "startDate": "1996-01-04T00:00:00Z", "viewId": "BF2g7TVt"}' --login_with_auth "Bearer foo"
platform-delete-section 'zYEHUodh' '3iUfBthb' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "epUCTWiZ", "defaultRegion": "1uqh7GAi", "description": "4FEIu44u", "supportedLanguages": ["83ZLRxYl", "Yqlpq03B", "GdIk4oEo"], "supportedRegions": ["gFVGR71r", "JOBy6lsj", "1AKGBjnH"], "title": "maAu4YK8"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '7DYAWWcb' --login_with_auth "Bearer foo"
platform-update-store 'cbGWmKgE' --body '{"defaultLanguage": "8CZ4AELr", "defaultRegion": "5lraa5v5", "description": "P5Cj8hgF", "supportedLanguages": ["sqHC9h5J", "PiMEtgKu", "iGTYgwWv"], "supportedRegions": ["5XldL6rO", "VGcRAn51", "rVAQSxp4"], "title": "qTB54mKA"}' --login_with_auth "Bearer foo"
platform-delete-store '3V9DKlCe' --login_with_auth "Bearer foo"
platform-query-changes 'Z7mLYsHo' --login_with_auth "Bearer foo"
platform-publish-all 'oOIaxIpb' --login_with_auth "Bearer foo"
platform-publish-selected '1cIOJPS3' --login_with_auth "Bearer foo"
platform-select-all-records 'lJ80YJ41' --login_with_auth "Bearer foo"
platform-get-statistic 'U4ooQ980' --login_with_auth "Bearer foo"
platform-unselect-all-records 'ywmg1pWp' --login_with_auth "Bearer foo"
platform-select-record 'Wit1QC7F' 'Ke0fnHUl' --login_with_auth "Bearer foo"
platform-unselect-record 'mU1unGKM' '0tgfeWy4' --login_with_auth "Bearer foo"
platform-clone-store '7bbwMI4g' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'GmvK9gW5' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '96FwBNrF' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'Xt3TAuKB' --body '{"orderNo": "wBcD12ae"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '6r3hHwya' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '4NpdOzg3' --body '{"count": 16, "orderNo": "A9DkaSOW"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'gtg8yw8l' --body '{"achievements": [{"id": "HEbVDwBA", "value": 34}, {"id": "RMG541PA", "value": 18}, {"id": "Ww82k5K5", "value": 98}], "steamUserId": "nKNXLMUa"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'DSwwQlnN' 'RZJHBSB4' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'fZWEFIZs' --body '{"achievements": [{"id": "28Ff1kZp", "value": 44}, {"id": "Zktx3N7W", "value": 81}, {"id": "PbarbWEm", "value": 77}], "serviceConfigId": "bVtZcfVC", "titleId": "PdQhim9Q", "xboxUserId": "KUAFTVYe"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'lIlGJg9w' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'dc8bihhW' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'jfZpfcFB' --login_with_auth "Bearer foo"
platform-anonymize-integration 'UsnnDJlm' --login_with_auth "Bearer foo"
platform-anonymize-order 'D1iEokbU' --login_with_auth "Bearer foo"
platform-anonymize-payment 'iYzCQh2i' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'NTwtnohd' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'dMzMTQ9P' --login_with_auth "Bearer foo"
platform-anonymize-wallet '7sYLDWAJ' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'OA75K4BY' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-user-dlc '2fkqYJoF' --login_with_auth "Bearer foo"
platform-query-user-entitlements '2FI3vyyq' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'Rzc20O7F' --body '[{"endDate": "1972-06-04T00:00:00Z", "grantedCode": "sz9TVmdM", "itemId": "KEohKzuM", "itemNamespace": "YDUTLBeC", "language": "eD", "quantity": 40, "region": "uGgx8ncX", "source": "GIFT", "startDate": "1983-03-16T00:00:00Z", "storeId": "YnEBhXtA"}, {"endDate": "1995-03-19T00:00:00Z", "grantedCode": "xCd3meTr", "itemId": "T7cF9oVC", "itemNamespace": "h89wNOkK", "language": "TwSD", "quantity": 47, "region": "jcL3kR3h", "source": "REFERRAL_BONUS", "startDate": "1980-09-24T00:00:00Z", "storeId": "u1DhGAYO"}, {"endDate": "1988-04-02T00:00:00Z", "grantedCode": "R5BWa9Vz", "itemId": "IkaQEl1i", "itemNamespace": "UProNB6h", "language": "uTju_Crvz", "quantity": 100, "region": "kKU2u06Q", "source": "PURCHASE", "startDate": "1982-02-03T00:00:00Z", "storeId": "V3zDuqVl"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'VTypcYPK' '8IxrSZux' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'Wl0Je4fJ' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'LzwRoWnR' '0AbkCPY7' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '0FmvviVI' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'BbcujF8V' 'k5qb8NhW' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'WwaxyMch' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'kt8l5IPS' '["rwrJl7wY", "IVw13NCo", "9yXlbQ52"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'FTHTCj6S' 'EAzT7TOp' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'yiuvvQUm' '29Iacq4X' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'RLaA643n' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'TMtXSAye' 'jnny0Ju1' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '3b6o5uB2' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'XM6IHy7E' 'EvHyLmcv' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'rZZOdwe1' 'x8RjU6Bi' --login_with_auth "Bearer foo"
platform-update-user-entitlement '8JXE52sU' 'BBq2SimQ' --body '{"endDate": "1993-11-17T00:00:00Z", "nullFieldList": ["oLbe5YOJ", "vxGRxUzr", "TwagH7BM"], "startDate": "1994-08-01T00:00:00Z", "status": "REVOKED", "useCount": 71}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'Wze94MEd' 'JFAy2JTl' --body '{"options": ["lJkRGB8j", "qJEd6eqq", "sBVyONV0"], "requestId": "JRtozI0j", "useCount": 30}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '4F3LD1ED' 'wBXw5uBY' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'eQZOzATN' 'SV9E9yyN' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'b7yaLXzA' 'VYymOuhC' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'kZu4htrs' 'f8eIFSov' --login_with_auth "Bearer foo"
platform-revoke-use-count 'TGXaMsq8' 'ePN1oco2' --body '{"reason": "jx8Upe8S", "useCount": 18}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'esc6y68w' 'hNBYl9iC' --body '{"requestId": "qfW6rqGO", "useCount": 88}' --login_with_auth "Bearer foo"
platform-fulfill-item 'AnWn3NdE' --body '{"duration": 86, "endDate": "1996-02-28T00:00:00Z", "itemId": "Ponb59gQ", "itemSku": "ffkNOmub", "language": "xEJr2qEA", "order": {"currency": {"currencyCode": "uJbpZSrc", "currencySymbol": "bc4LWfKa", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "hkLe5zoh"}, "ext": {"g9s9utRQ": {}, "t28b6o3K": {}, "0COF74tz": {}}, "free": false}, "orderNo": "MBb3ckvo", "origin": "Epic", "quantity": 20, "region": "JYdMqGeg", "source": "ACHIEVEMENT", "startDate": "1973-02-26T00:00:00Z", "storeId": "nRyFS0Ed"}' --login_with_auth "Bearer foo"
platform-redeem-code '7gTM5AVr' --body '{"code": "tBQiDTcN", "language": "ie-259", "region": "HXXdiC9Z"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'Dj4E4mv1' --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "Ts7Nf95l", "namespace": "GlPrf6ob"}, "item": {"itemId": "IdnI6Ag7", "itemSku": "eUYcYJ4Q", "itemType": "zXCmqr6g"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "PGaHP5SV", "namespace": "PvRLiDi0"}, "item": {"itemId": "mNHb6Lx8", "itemSku": "eq8SGNwE", "itemType": "QO8dYXvB"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "YvJBwb6C", "namespace": "jZUMRf2V"}, "item": {"itemId": "JetWsokv", "itemSku": "x3BHuTEc", "itemType": "zr9KjQ3t"}, "quantity": 39, "type": "ITEM"}], "source": "DLC"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'MTBt1xk9' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'IyssSA8n' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'P5PQjpzk' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '2Tb7iYdm' --body '{"itemIdentityType": "ITEM_ID", "language": "OdSF-uwcs-Jy", "productId": "HUONscof", "region": "wYLQcDvk", "type": "APPLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'AVLDB4k3' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'JwkdaxR7' --body '{"currencyCode": "GJpYmuYC", "currencyNamespace": "PG181q9G", "discountedPrice": 55, "ext": {"LkP5hc2F": {}, "h04JTsqD": {}, "TynCewqJ": {}}, "itemId": "ligLlRxO", "language": "elKykICR", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 65, "quantity": 57, "region": "6HtlER2t", "returnUrl": "xs4qrNAR", "sandbox": true, "sectionId": "5o7iTST7"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'R3KbbQGE' 'RMNpqWb5' --login_with_auth "Bearer foo"
platform-get-user-order '1y5RUzvM' 'fTkPy0fG' --login_with_auth "Bearer foo"
platform-update-user-order-status 'vTGgfLKs' 'g0b1Bq78' --body '{"status": "CHARGEBACK", "statusReason": "rXA4HZHN"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'yq9odanh' 'R1Zrm3th' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'UvV87yfk' 'ycLSVdle' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'SaAylsmL' 'Ye2phYOg' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'T5kDTyPl' '3dKF7NXE' --body '{"additionalData": {"cardSummary": "jrJMki8j"}, "authorisedTime": "1982-01-10T00:00:00Z", "chargebackReversedTime": "1972-08-11T00:00:00Z", "chargebackTime": "1999-08-25T00:00:00Z", "chargedTime": "1992-11-09T00:00:00Z", "createdTime": "1973-09-30T00:00:00Z", "currency": {"currencyCode": "uOmh0lci", "currencySymbol": "RhVZ2Deo", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "XMzLSrzo"}, "customParameters": {"iBnYi5UW": {}, "s3tYlYeM": {}, "oCimJySo": {}}, "extOrderNo": "cRvUWDOr", "extTxId": "FZKPNoN9", "extUserId": "AWtLK9TF", "issuedAt": "1974-05-14T00:00:00Z", "metadata": {"i9j2XMh9": "WpifqjNj", "LOtNQts2": "yxf6MLZJ", "2jZfZbpT": "JezzriCD"}, "namespace": "WXT59SRu", "nonceStr": "0YqUxKDc", "paymentMethod": "84OMIzvT", "paymentMethodFee": 92, "paymentOrderNo": "aVV5Yfxn", "paymentProvider": "ADYEN", "paymentProviderFee": 51, "paymentStationUrl": "wjr7gSGh", "price": 27, "refundedTime": "1973-09-09T00:00:00Z", "salesTax": 41, "sandbox": false, "sku": "F4WZiQVI", "status": "INIT", "statusReason": "eRbzTPwD", "subscriptionId": "3jxF7vxR", "subtotalPrice": 95, "targetNamespace": "juXW4Jpr", "targetUserId": "Ib3CJCAt", "tax": 45, "totalPrice": 91, "totalTax": 67, "txEndTime": "1974-08-25T00:00:00Z", "type": "8nfaKqdZ", "userId": "FLbZEHxs", "vat": 60}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'eXbsSgR4' '3kIDzxBw' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'qRJTzrHN' --body '{"currencyCode": "ZWUsq5lQ", "currencyNamespace": "o2jy29EJ", "customParameters": {"igqYhyVh": {}, "URx1yPec": {}, "zRpdk0HA": {}}, "description": "TGylx2JG", "extOrderNo": "2KNGfhzf", "extUserId": "CTxxrsRR", "itemType": "SEASON", "language": "EtEY_Peyr", "metadata": {"i45aCDHN": "9mVug2zk", "Vf6KgpKO": "cn3tMD9U", "T67bOwug": "FDa6wUQv"}, "notifyUrl": "ehKqwCh8", "omitNotification": false, "platform": "XmRkCEcf", "price": 69, "recurringPaymentOrderNo": "Etbag82K", "region": "gBgyCd5v", "returnUrl": "jkfz3eR4", "sandbox": true, "sku": "8f2cIoBy", "subscriptionId": "k9fxtvsg", "title": "eAxo57nK"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'AbZpsbJ4' 'Iu5KJ0yn' --body '{"description": "xGBlacDC"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'dFe8ATUq' --body '{"code": "VxcSthrp", "orderNo": "nMUBsnUf"}' --login_with_auth "Bearer foo"
platform-do-revocation 'uQIcSbUt' --body '{"meta": {"5UGkInFG": {}, "puUsdtq4": {}, "dOwNESzC": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "KAo9MM2C", "namespace": "qm84jVi9"}, "entitlement": {"entitlementId": "kIpqgrzp"}, "item": {"itemIdentity": "UkNOBWyd", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 64, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "t1Bjj3b8", "namespace": "QM8Rr45U"}, "entitlement": {"entitlementId": "LqXQgvwD"}, "item": {"itemIdentity": "3PsKDJiW", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 57, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "tz7EFvow", "namespace": "PgIGuetx"}, "entitlement": {"entitlementId": "FMqXCQMA"}, "item": {"itemIdentity": "qQ2ZRGzN", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 35, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "DNo4rhjx"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'UdMM83We' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'kqfWv04v' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'vn9bk5qr' --body '{"grantDays": 36, "itemId": "qs2mqtnG", "language": "AqXUjNyp", "reason": "F6MMqWpd", "region": "EJsPoaIb", "source": "Yz8cK5jl"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'pJdre5ur' '6yvWJDdv' --login_with_auth "Bearer foo"
platform-get-user-subscription 'M7T7PX2v' 'amIRZHzs' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'IYOCUoiC' 'XNjrdQL2' --login_with_auth "Bearer foo"
platform-cancel-subscription 'jdx1eIba' '1sB0HsJ0' --body '{"immediate": true, "reason": "DzfbzRYt"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '4OVUyumB' 'eIqdQGZC' --body '{"grantDays": 14, "reason": "kM03HHij"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'sQRj7N8I' 'Ajmsonjj' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '0ZR50BQ1' 'U6aFD3O2' --body '{"additionalData": {"cardSummary": "kXQSc58z"}, "authorisedTime": "1974-09-07T00:00:00Z", "chargebackReversedTime": "1997-10-31T00:00:00Z", "chargebackTime": "1995-12-13T00:00:00Z", "chargedTime": "1976-01-14T00:00:00Z", "createdTime": "1974-06-08T00:00:00Z", "currency": {"currencyCode": "IF7v3qbZ", "currencySymbol": "u9M3OxqV", "currencyType": "VIRTUAL", "decimals": 68, "namespace": "T4H1lRZ9"}, "customParameters": {"Z1JBrHRz": {}, "EOtIxzPq": {}, "b6n73m0j": {}}, "extOrderNo": "iaDH86d9", "extTxId": "rsKgzCsM", "extUserId": "ulpB8HZU", "issuedAt": "1980-01-11T00:00:00Z", "metadata": {"aJCiLgKO": "wrSfWhT5", "B4Wedopz": "wSluBtRF", "PKThyGnb": "jmPDKFS6"}, "namespace": "u9FHuv1M", "nonceStr": "3qfch4Sq", "paymentMethod": "IV6LQPHl", "paymentMethodFee": 0, "paymentOrderNo": "Vrjo3g8C", "paymentProvider": "ALIPAY", "paymentProviderFee": 88, "paymentStationUrl": "5cU66yJa", "price": 19, "refundedTime": "1995-04-25T00:00:00Z", "salesTax": 63, "sandbox": true, "sku": "PgG40QyX", "status": "DELETED", "statusReason": "sw8v5pei", "subscriptionId": "uxoBJATa", "subtotalPrice": 41, "targetNamespace": "2mWAOYks", "targetUserId": "czxBS0OB", "tax": 59, "totalPrice": 17, "totalTax": 0, "txEndTime": "1977-06-23T00:00:00Z", "type": "Eujk6oqY", "userId": "o1HQYTFz", "vat": 46}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'uL2S3RiW' '8dLTCBfG' --body '{"count": 96, "orderNo": "DcIyvZbO"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'y1T4hfwk' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'uVykH4Rp' 'fmjIXFGZ' --body '{"allowOverdraft": false, "amount": 86, "balanceOrigin": "Xbox", "reason": "TSZoDdT0"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'fefo74eg' '3Nt2c0r4' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'GqF0NHgl' 'OVuNZ9Lz' --body '{"amount": 80, "expireAt": "1999-02-05T00:00:00Z", "origin": "Playstation", "reason": "JnBurh54", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'FI8NijFI' '0GKwJ3vf' --body '{"amount": 4, "walletPlatform": "IOS"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'jwrizsFU' --body '{"displayOrder": 13, "localizations": {"UAGxHnmS": {"description": "xvkG9UR5", "localExt": {"q9neoW6J": {}, "BcGp9Rx2": {}, "RfcRhXpm": {}}, "longDescription": "eeHdvpha", "title": "s9S7ivHE"}, "oLbUMM47": {"description": "f1UreUpx", "localExt": {"EkXIbE1E": {}, "TzRJZKMa": {}, "vu4Ul2Ia": {}}, "longDescription": "ieEbPSE7", "title": "TGkeHsYs"}, "W9oGBN1p": {"description": "YMBwbPZT", "localExt": {"lMlUvFEi": {}, "GprcNSQ9": {}, "kEeXBZ6F": {}}, "longDescription": "VrBzyhyh", "title": "oS6a9oe0"}}, "name": "JaXFpff2"}' --login_with_auth "Bearer foo"
platform-get-view '8uYbe4Cf' --login_with_auth "Bearer foo"
platform-update-view '2HEHvVev' 'hISjbtBJ' --body '{"displayOrder": 96, "localizations": {"AmIHYbsx": {"description": "G5N066FX", "localExt": {"b88SbLOa": {}, "21DiSFsm": {}, "0XXQJWsz": {}}, "longDescription": "vTQEuALz", "title": "DNp1SZ58"}, "aDllwzTR": {"description": "Hak1MXxj", "localExt": {"7Esrg790": {}, "0nml5Bid": {}, "sK9dCEzh": {}}, "longDescription": "VnOv0PQb", "title": "VIaKiHfo"}, "eorY7A1o": {"description": "tGFyv2SM", "localExt": {"jbEr50qG": {}, "dCZIc6EF": {}, "qBKxbS7Q": {}}, "longDescription": "2OgRucL1", "title": "jwRXzfjD"}}, "name": "ZZBmOau6"}' --login_with_auth "Bearer foo"
platform-delete-view 'syme06c6' 'SKLc2mEC' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 42, "expireAt": "1988-08-17T00:00:00Z", "origin": "Other", "reason": "l5XCbkOf", "source": "REFERRAL_BONUS"}, "currencyCode": "IzjoSV31", "userIds": ["oHiCV4GU", "tvmMB6jz", "rpRGESmo"]}, {"creditRequest": {"amount": 84, "expireAt": "1985-04-23T00:00:00Z", "origin": "GooglePlay", "reason": "XpapXQGR", "source": "ACHIEVEMENT"}, "currencyCode": "KbcOdyjq", "userIds": ["f6Q4oiwo", "JcaRMEb1", "5LBlTVuf"]}, {"creditRequest": {"amount": 5, "expireAt": "1994-09-12T00:00:00Z", "origin": "Steam", "reason": "wwHj0Ur5", "source": "REFERRAL_BONUS"}, "currencyCode": "4PRqf3eR", "userIds": ["bZqBAoKG", "V4qBrt1k", "cVCdMiSN"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "cLmRv6EJ", "request": {"allowOverdraft": true, "amount": 14, "balanceOrigin": "Nintendo", "reason": "roixptZh"}, "userIds": ["ckUTGkcB", "OE4qMcH1", "Kyi8ZFvG"]}, {"currencyCode": "cV8DY0XO", "request": {"allowOverdraft": false, "amount": 100, "balanceOrigin": "System", "reason": "4N70wYS4"}, "userIds": ["Kj7Yi2Vv", "81dYdvGx", "oQNW8Yc4"]}, {"currencyCode": "JAMDRA1L", "request": {"allowOverdraft": true, "amount": 20, "balanceOrigin": "System", "reason": "dWlekFwO"}, "userIds": ["JhWva2FP", "BujX0geY", "94VBCV9q"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'CpGJM4sq' 'sPNJMiZX' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["XOFwmGWA", "vNF0Z0Gk", "wxUNYyNw"], "apiKey": "GiKrknH0", "authoriseAsCapture": false, "blockedPaymentMethods": ["cMF7fuDb", "zRRYMNXW", "Usp1tOib"], "clientKey": "JY9aL9ie", "dropInSettings": "6vvMbiNU", "liveEndpointUrlPrefix": "Rrlm88Ql", "merchantAccount": "Kyuoya4J", "notificationHmacKey": "gakZyUV7", "notificationPassword": "t73VnSFb", "notificationUsername": "uxd4KYZ0", "returnUrl": "jk0UZdht", "settings": "nKu9oTc8"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "pVkiyGsj", "privateKey": "5JdXzRxf", "publicKey": "NEjUMTs8", "returnUrl": "WIObJBTs"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "vsw76uIS", "secretKey": "RX0bKVoW"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "toUW1P7o", "clientSecret": "cuBAldDS", "returnUrl": "US7Haa6u", "webHookId": "nq1yQOSR"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["vyiLBRVt", "IDi2piIQ", "FVmzMidw"], "publishableKey": "70KSahpY", "secretKey": "ZdKZRyR9", "webhookSecret": "AX7JjxvN"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "ZhM84DiZ", "key": "k6ySrB9S", "mchid": "VFctW7YS", "returnUrl": "0OkL78Xe"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "EAtALFI3", "flowCompletionUrl": "v8yha4pd", "merchantId": 44, "projectId": 55, "projectSecretKey": "3SBafnKN"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'iMPbFkFG' --login_with_auth "Bearer foo"
platform-update-adyen-config 'A85W3HJk' --body '{"allowedPaymentMethods": ["qgS2B37w", "woPYOHiI", "sxmsLBPB"], "apiKey": "JuNLnWRr", "authoriseAsCapture": true, "blockedPaymentMethods": ["jK6J29v8", "MpBSpo3A", "KRmnJkzJ"], "clientKey": "HAckUyBk", "dropInSettings": "sYQfDm0R", "liveEndpointUrlPrefix": "NFwiz70t", "merchantAccount": "RVLMlHi8", "notificationHmacKey": "i9gOVqaj", "notificationPassword": "UWrgEsWD", "notificationUsername": "taKzn8dZ", "returnUrl": "wnnGeZsZ", "settings": "VgbPzPFb"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'rOMZMgWk' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'FN7Tpkx6' --body '{"appId": "GcfyOg6Z", "privateKey": "Urrp9ubg", "publicKey": "9mndW2JK", "returnUrl": "mQafUs2b"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'xYztOEyV' --login_with_auth "Bearer foo"
platform-update-checkout-config 'bKIf1Zbz' --body '{"publicKey": "gUwd8DHo", "secretKey": "CQykmXHY"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'mkRlg7gY' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 's6unPYQ9' --body '{"clientID": "jNQN1di1", "clientSecret": "ldhOh6Hv", "returnUrl": "jnYuV7Nf", "webHookId": "C4A2ODiZ"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'hbfb8QqC' --login_with_auth "Bearer foo"
platform-update-stripe-config 'yK1XH9D6' --body '{"allowedPaymentMethodTypes": ["vl5eFdFf", "gK46GjCW", "aP8huTmn"], "publishableKey": "q3FGQn3A", "secretKey": "hu5wxq6o", "webhookSecret": "Jq4mChmQ"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'HQhO9IKB' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'XDFQfXFD' --body '{"appId": "58sG6uDh", "key": "FYlrzJBY", "mchid": "SeMuJfQe", "returnUrl": "cutjS029"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'BiJWOG1m' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '7MKclr5i' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'gjNTVItr' --body '{"apiKey": "H2X78hxJ", "flowCompletionUrl": "gaVfw5Vn", "merchantId": 50, "projectId": 11, "projectSecretKey": "q8OzTE89"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'WDNoMcOm' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'bfJrCJQI' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "AosKglqa", "region": "CXE9ytpI", "sandboxTaxJarApiToken": "O8btO3Ow", "specials": ["WALLET", "XSOLLA", "ALIPAY"], "taxJarApiToken": "SW5TaW4t", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'KOldkbgX' --body '{"aggregate": "ADYEN", "namespace": "CWJKwXXS", "region": "bv5eg9q8", "sandboxTaxJarApiToken": "6IaDFjjx", "specials": ["WALLET", "WALLET", "STRIPE"], "taxJarApiToken": "erWbtwTX", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'bZieRvJI' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "5sT9DH3D", "taxJarApiToken": "fLCv8q4T", "taxJarEnabled": false, "taxJarProductCodesMapping": {"KLa7Levx": "NHOSEhQR", "ZIp693lR": "wtc43atC", "uCFxbfbz": "4aQERziP"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'L4dHhOqG' '5KDdUvk0' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'LEi26Ls7' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'mjRxNmvv' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'NtjJNQep' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'UTGhwlY4' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'lPzlsCR5' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'rVsyfcH7' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["WjP7HuGz", "3b5WAEvd", "RF9bqMj4"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'ro5B19VE' '838c7Oyd' --login_with_auth "Bearer foo"
platform-public-get-app 'Vw0zCqoM' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'ZvpIOO97' --login_with_auth "Bearer foo"
platform-public-get-item 'DmQ5ZOzx' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "6iCJTu60", "paymentProvider": "CHECKOUT", "returnUrl": "8GuoXNSo", "ui": "VEBG7VbB", "zipCode": "PUWipz9C"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods '05YabFX4' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'FCK5ucTF' --login_with_auth "Bearer foo"
platform-pay 'sAFzaO3y' --body '{"token": "JpA3KMxB"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'lrRytER1' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'GEdLucrt' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'O2gCQD05' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '7DrDlgC2' 'nzS9SiGU' 'CHECKOUT' 'kKoaP1K4' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'CDuH1mMI' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'oCEkRdo6' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'qHYIZWnX' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'qQ1oHFJ9' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Q0vqsL9S' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'omqWsGA7' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "6yxi0QzZ", "language": "FMbq-miqw", "region": "eHv0L2Ac"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'm960EYQE' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'uGJVl8xs' --body '{"epicGamesJwtToken": "1WId9Wla"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'lqshF9Rh' --body '{"serviceLabel": 83}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'o7GCQGPC' --body '{"serviceLabels": [48, 93, 46]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'EdkyuT3M' --body '{"appId": "gzReRq01", "steamId": "12ISArRO"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'IodcmM6v' --body '{"xstsToken": "2AEozWWa"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'YvBLE46b' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'puJip8Jy' 'xJ39vrtu' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'WWrqTZbS' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'dGMjupZk' 'ZQY8CNyT' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '4k3DIbfT' '22G5NpE1' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '30YWSgxp' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'KWtdtdtV' 'W9anENmx' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'b9e7vXZV' '3ig8Jg5V' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'ByeI3ycM' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'cYYBixKJ' 'XCISQdwe' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'c1m8BusV' '9tUh74KV' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'o6Xqjz2x' 'UKLNWSmY' --body '{"options": ["yVvyelIJ", "8QgaLMqi", "836ULa7c"], "requestId": "fZl4VuY6", "useCount": 36}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '82FrR1GS' 'ogkewIzT' --body '{"requestId": "OqKkcjRh", "useCount": 26}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'l2gAJOTC' --body '{"code": "bx7J3gNL", "language": "NMfv-uL", "region": "Zns5owBh"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'oUg4LsGP' --body '{"excludeOldTransactions": false, "language": "cypK-204", "productId": "BzsmaxjT", "receiptData": "ZPlLityt", "region": "Gka7Kv5T", "transactionId": "acQKF4Ol"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'RGdmXxET' --body '{"epicGamesJwtToken": "LEQrr3KC"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'AV9alq3h' --body '{"autoAck": true, "language": "hG_505", "orderId": "HkSSV8e1", "packageName": "MgTTLS2F", "productId": "garY903I", "purchaseTime": 81, "purchaseToken": "ZUDj9dzG", "region": "gGVxo9OH"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'gfHumyfu' --body '{"currencyCode": "BNisecYb", "price": 0.038446100482559364, "productId": "OpR45VDl", "serviceLabel": 44}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'pqn47GVg' --body '{"currencyCode": "hTH2wToO", "price": 0.21844900413965573, "productId": "q9U5lyW8", "serviceLabels": [78, 20, 46]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 't3wmRTrD' --body '{"appId": "CjhnKvsH", "currencyCode": "ezWTqgYP", "language": "YT", "price": 0.16432803441519117, "productId": "6lWq6tEe", "region": "UmU96FLE", "steamId": "ak0mJqjR"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'YldcTpde' --body '{"gameId": "CD9XPRi4", "language": "br_bXmf-964", "region": "A8bvXlDh"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'G7BrorbK' --body '{"currencyCode": "IKuOXJPm", "price": 0.9197326690028839, "productId": "ztrr09CD", "xstsToken": "A8Ij5bGK"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'SuopWQba' --login_with_auth "Bearer foo"
platform-public-create-user-order 'CvdPSq8Z' --body '{"currencyCode": "27GpvHCD", "discountedPrice": 49, "ext": {"AogcnGkX": {}, "k17QPkJH": {}, "RhmLKQuQ": {}}, "itemId": "VFSKiXl8", "language": "gYVF", "price": 30, "quantity": 62, "region": "W2NdSWzO", "returnUrl": "XjO1NQUq", "sectionId": "WHBW78XR"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'EZCiTNAx' 'q26gZrPq' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'CsSDspvg' 'M16sZ6rj' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'nkH4ExOb' 'ppC6CMYD' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'm5ge659U' 'DEOF6gp5' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'UfmjtiVb' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'qJnZcrqr' 'paypal' 'ye7fCwi7' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'Il2wIFlH' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'm9N6owMH' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'MtJy1Oqn' --body '{"currencyCode": "59tEGm9N", "itemId": "YeUT5P0n", "language": "wwv_KAQd_jg", "region": "9TnvzEqB", "returnUrl": "NMF9CZvP", "source": "xT5zbreM"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'c9fBoU3R' 'HNDFjLKF' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'repy56eW' '1kmb15Qe' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'IQF51c4M' 'qJzDSvEL' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'gBe6dboS' 'dhkBzAzP' --body '{"immediate": false, "reason": "eY4PBNHK"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'Px62tHxD' 'b06ZFy3u' --login_with_auth "Bearer foo"
platform-public-list-views 'glSp2Uxv' --login_with_auth "Bearer foo"
platform-public-get-wallet 'F2uLXWil' 'RD7HD6LC' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'gdFxRGj0' '0RT6Lvcn' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'GMJbJIYL' --body '{"itemIds": ["ssMvy9gk", "fTMRrXVR", "cAVRDX6g"]}' --login_with_auth "Bearer foo"
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
echo "1..396"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListFulfillmentScripts
$PYTHON -m $MODULE 'platform-list-fulfillment-scripts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListFulfillmentScripts' test.out

#- 3 TestFulfillmentScriptEval
$PYTHON -m $MODULE 'platform-test-fulfillment-script-eval' \
    --body '{"context": {"item": {"appId": "mDfNfPGY", "appType": "GAME", "baseAppId": "BPOKFLxI", "boothName": "wKssw647", "boundItemIds": ["TU226l07", "YwDudnGR", "ufOUGfMj"], "categoryPath": "jPlcYaqY", "clazz": "M7YfBmhj", "createdAt": "1989-09-09T00:00:00Z", "description": "9Y28qVce", "displayOrder": 91, "entitlementType": "DURABLE", "ext": {"UX48dKPC": {}, "FUIeyYEy": {}, "mNXzNX6T": {}}, "features": ["eBsJEvBb", "Gh4UdEwe", "AvCmlh6Z"], "fresh": false, "images": [{"as": "1T8QwMNO", "caption": "AzXmyHEV", "height": 13, "imageUrl": "g9P6a280", "smallImageUrl": "S5RNB5dV", "width": 59}, {"as": "UwQ9tkWa", "caption": "MOH47CAT", "height": 49, "imageUrl": "cBP0918J", "smallImageUrl": "aEBQBP76", "width": 77}, {"as": "tR00oQgc", "caption": "HdGGK3x7", "height": 95, "imageUrl": "J2tWwF7R", "smallImageUrl": "nP1oK3c4", "width": 89}], "itemId": "l0sMY8es", "itemIds": ["36r1FgR7", "0eNLHkVr", "EFd8xArW"], "itemQty": {"JuCAIfNB": 91, "myQzl7X9": 10, "9pmAIc6V": 92}, "itemType": "LOOTBOX", "language": "fE9nbE2P", "listable": false, "localExt": {"v12ZSRJk": {}, "ujxbCu1H": {}, "Faj6Vxs3": {}}, "longDescription": "GuA4S1dS", "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 70, "itemId": "mBerp84q", "itemSku": "jwzWpCF1", "itemType": "vyamjsEz"}, {"count": 46, "itemId": "XDELJFaI", "itemSku": "aEMW5bhJ", "itemType": "yL72WDyh"}, {"count": 57, "itemId": "FfC8x5aH", "itemSku": "LsXHlm1R", "itemType": "JTTy9JrN"}], "name": "z1K5M1qg", "odds": 0.5090835964821802, "type": "PROBABILITY_GROUP", "weight": 15}, {"lootBoxItems": [{"count": 7, "itemId": "8I9xk3sF", "itemSku": "l0cbuCRM", "itemType": "69XKkLwi"}, {"count": 30, "itemId": "aUvrKXDI", "itemSku": "jYC4df9q", "itemType": "swSlpCI8"}, {"count": 60, "itemId": "4ulonMFj", "itemSku": "mYqE1wJh", "itemType": "fogWg2Ap"}], "name": "m0sUy18a", "odds": 0.7886272398925366, "type": "PROBABILITY_GROUP", "weight": 78}, {"lootBoxItems": [{"count": 91, "itemId": "5Co0vdCk", "itemSku": "8so6JSaZ", "itemType": "AIadKDEZ"}, {"count": 50, "itemId": "7xasqMY9", "itemSku": "aulsL6NO", "itemType": "V5agpS6A"}, {"count": 9, "itemId": "mkufBpWV", "itemSku": "xIK9D2bT", "itemType": "cgaKocca"}], "name": "SwWcZmzC", "odds": 0.7854484787918738, "type": "REWARD_GROUP", "weight": 58}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 71, "name": "6Jrg8tLA", "namespace": "JWpcyNkU", "optionBoxConfig": {"boxItems": [{"count": 43, "itemId": "zKbyQk2v", "itemSku": "QTYX1xst", "itemType": "h28NZZgs"}, {"count": 42, "itemId": "ycuQNGID", "itemSku": "eHlf6IcX", "itemType": "1K9JrK6O"}, {"count": 37, "itemId": "UOpWv46s", "itemSku": "XvpOjrpR", "itemType": "o4mYrCeQ"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 30, "comparison": "is", "name": "oID2UqO0", "predicateType": "EntitlementPredicate", "value": "VFrvls0Z", "values": ["fTKxpVOX", "vGSrdkqd", "wosKhDlL"]}, {"anyOf": 7, "comparison": "is", "name": "I3ezqu6F", "predicateType": "SeasonPassPredicate", "value": "seh4tJdo", "values": ["GcwMBmeg", "qVUaWMJB", "jrV0p9A7"]}, {"anyOf": 39, "comparison": "isNot", "name": "cHrV0MbJ", "predicateType": "SeasonTierPredicate", "value": "oqHvH7g6", "values": ["F5i3gr3C", "3cOx6yrI", "w37pKOLr"]}]}, {"operator": "and", "predicates": [{"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "2O7NrTQO", "predicateType": "SeasonTierPredicate", "value": "KLdZDGwq", "values": ["x7T3l1ut", "2oyolliY", "sTJUmpsc"]}, {"anyOf": 47, "comparison": "isGreaterThanOrEqual", "name": "cUml3Kuo", "predicateType": "SeasonTierPredicate", "value": "0ykRGkgq", "values": ["YEDiqkwK", "ABbKVWO2", "UNIbJMJ9"]}, {"anyOf": 3, "comparison": "isLessThan", "name": "pdk7wlDn", "predicateType": "EntitlementPredicate", "value": "MvEUNfoL", "values": ["exPekTsQ", "7JCcMo7G", "xxXdbYCR"]}]}, {"operator": "or", "predicates": [{"anyOf": 70, "comparison": "excludes", "name": "TfaSot7a", "predicateType": "EntitlementPredicate", "value": "8aqZ2yfr", "values": ["C1V7ZpJZ", "meDLYEzs", "PHCMqvcY"]}, {"anyOf": 92, "comparison": "isGreaterThanOrEqual", "name": "dKr6vgqk", "predicateType": "EntitlementPredicate", "value": "lsQFD43D", "values": ["f5qUZOFz", "pFd6b5Jc", "5TETHcup"]}, {"anyOf": 64, "comparison": "includes", "name": "0VCMTFJ6", "predicateType": "SeasonPassPredicate", "value": "yHq4bBb0", "values": ["BRPGV9n7", "69zLJdKM", "n1JhPUS8"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 52, "fixedTrialCycles": 48, "graceDays": 60}, "region": "eJc7NvgT", "regionData": [{"currencyCode": "SgKjCxZj", "currencyNamespace": "Kf8NA4cG", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1986-07-17T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1983-09-20T00:00:00Z", "discountedPrice": 13, "expireAt": "1996-04-20T00:00:00Z", "price": 22, "purchaseAt": "1988-05-21T00:00:00Z", "trialPrice": 11}, {"currencyCode": "0EKrk5Vl", "currencyNamespace": "nKsWCPcc", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1987-04-11T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1986-08-23T00:00:00Z", "discountedPrice": 62, "expireAt": "1992-02-11T00:00:00Z", "price": 29, "purchaseAt": "1978-09-30T00:00:00Z", "trialPrice": 10}, {"currencyCode": "opK5DSO8", "currencyNamespace": "JyX4IE1z", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1976-09-02T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1982-11-25T00:00:00Z", "discountedPrice": 34, "expireAt": "1998-11-03T00:00:00Z", "price": 68, "purchaseAt": "1983-10-24T00:00:00Z", "trialPrice": 35}], "saleConfig": {"currencyCode": "sOpyq8ag", "price": 88}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "z86nc6jL", "stackable": false, "status": "ACTIVE", "tags": ["DIW2ncJJ", "KpqmgvUT", "r8XAtpOq"], "targetCurrencyCode": "UQxzqJZi", "targetItemId": "Wi3KQffT", "targetNamespace": "5Tn61A1x", "thumbnailUrl": "W6okIqmd", "title": "87ir9op4", "updatedAt": "1997-02-10T00:00:00Z", "useCount": 72}, "namespace": "GTno5oHz", "order": {"currency": {"currencyCode": "qY3DgykA", "currencySymbol": "8zBJX0rk", "currencyType": "REAL", "decimals": 83, "namespace": "Y5aSlqhY"}, "ext": {"oSXbn6l5": {}, "xAzc1nc3": {}, "eFm950dt": {}}, "free": true}, "source": "DLC"}, "script": "o7w4e3v5", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'oai2oDm9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'FaP0HJ98' \
    --body '{"grantDays": "tE4UyoQg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '0b0sGOkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'xVt15LKm' \
    --body '{"grantDays": "kQ7YBhsO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 ListItemTypeConfigs
$PYTHON -m $MODULE 'platform-list-item-type-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ListItemTypeConfigs' test.out

#- 9 CreateItemTypeConfig
$PYTHON -m $MODULE 'platform-create-item-type-config' \
    --body '{"clazz": "uJ0ypkkt", "dryRun": false, "fulfillmentUrl": "G4eFh2YN", "itemType": "EXTENSION", "purchaseConditionUrl": "MoZZcyGE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'OPTIONBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    '9Q8t829I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'do1JyveS' \
    --body '{"clazz": "RiBq23ky", "dryRun": true, "fulfillmentUrl": "9jQbHWkc", "purchaseConditionUrl": "Vk0X28GS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '54vl7gIK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteItemTypeConfig' test.out

#- 14 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'QueryCampaigns' test.out

#- 15 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "Bc7OYTyl", "items": [{"extraSubscriptionDays": 65, "itemId": "3EnzZVnk", "itemName": "LT0Lb85n", "quantity": 25}, {"extraSubscriptionDays": 51, "itemId": "pdN26BY5", "itemName": "YI0jeO2z", "quantity": 78}, {"extraSubscriptionDays": 70, "itemId": "DSy4kyqy", "itemName": "KgrtEPdX", "quantity": 23}], "maxRedeemCountPerCampaignPerUser": 33, "maxRedeemCountPerCode": 39, "maxRedeemCountPerCodePerUser": 87, "maxSaleCount": 48, "name": "geCdiXu3", "redeemEnd": "1975-09-28T00:00:00Z", "redeemStart": "1991-08-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["EZmuQrZ8", "GaQ4OZ2n", "Dodm4TNs"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'bXzWnVO2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'U4uyzZo1' \
    --body '{"description": "rj0ZrLQj", "items": [{"extraSubscriptionDays": 21, "itemId": "l1A2vaNe", "itemName": "DiSqTfmA", "quantity": 97}, {"extraSubscriptionDays": 7, "itemId": "g50kOdJa", "itemName": "gEmTuaxl", "quantity": 48}, {"extraSubscriptionDays": 62, "itemId": "gywkbdOs", "itemName": "yxX1tfW4", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 63, "maxRedeemCountPerCode": 28, "maxRedeemCountPerCodePerUser": 25, "maxSaleCount": 25, "name": "UT4jyCVJ", "redeemEnd": "1998-05-27T00:00:00Z", "redeemStart": "1977-04-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["0Q2Gd8m7", "Y3wiNloJ", "fey3HXL6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'SjljNPTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCampaignDynamic' test.out

#- 19 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetRootCategories' test.out

#- 20 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'A3qbg55S' \
    --body '{"categoryPath": "yienCODZ", "localizationDisplayNames": {"0mnOpPTV": "xEgBFzG8", "tlkxWKCU": "1XN4gl7y", "HvEqpJSr": "DXVwCkhO"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreateCategory' test.out

#- 21 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListCategoriesBasic' test.out

#- 22 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'Q161TFjR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'OYJm75VI' \
    'uCOCkt2W' \
    --body '{"localizationDisplayNames": {"1DfI8Qtg": "ODk9K6Dc", "MnyCPn1F": "ylWdaNV1", "VaZTkbbu": "WiiA4UTD"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'gS2SVEo5' \
    'M80LLbku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '9GYH4ijq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'OVM50tCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'kZfsSxAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'DJ7sHCLu' \
    --body '{"quantity": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'ml6BpCOD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'WGOLMmCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'UeelXYyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'rXweiCnD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'ldRPRfd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'mLZ0GTJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'EjoZrRta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 GetServicePluginConfig
$PYTHON -m $MODULE 'platform-get-service-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetServicePluginConfig' test.out

#- 37 UpdateServicePluginConfig
$PYTHON -m $MODULE 'platform-update-service-plugin-config' \
    --body '{"grpcServerAddress": "eWKMC8ws"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateServicePluginConfig' test.out

#- 38 DeleteServicePluginConfig
$PYTHON -m $MODULE 'platform-delete-service-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteServicePluginConfig' test.out

#- 39 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'ListCurrencies' test.out

#- 40 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "OByQAMAg", "currencySymbol": "qFEzEt8u", "currencyType": "REAL", "decimals": 76, "localizationDescriptions": {"j5XhKnw7": "MHDwFVKU", "C2ecnpUD": "qvLQixPK", "VSmWa8TG": "ko16XTqH"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'c0cM7ixq' \
    --body '{"localizationDescriptions": {"8Tjnxp5C": "l8ggaEmC", "cuK2hHvi": "BEWpbusO", "6EyVqstp": "gZpbz77y"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    '88rUFum2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'ZcA8iKcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '0bkfjcTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetCurrencySummary' test.out

#- 45 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetDLCItemConfig' test.out

#- 46 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "FXcTwEtn", "rewards": [{"currency": {"currencyCode": "HxP5pVtN", "namespace": "4jNVIdru"}, "item": {"itemId": "EA39uCJz", "itemSku": "sE8WObt6", "itemType": "t0w8LOBx"}, "quantity": 62, "type": "ITEM"}, {"currency": {"currencyCode": "JYj4IqWK", "namespace": "09l4wkrz"}, "item": {"itemId": "ahXR1sDE", "itemSku": "DVKDINE3", "itemType": "HjCiVR1d"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "kuhb4pUw", "namespace": "nGptHUpl"}, "item": {"itemId": "xzaDa9PD", "itemSku": "whu31d8e", "itemType": "Odtrfq6E"}, "quantity": 59, "type": "CURRENCY"}]}, {"id": "DD6OGkuL", "rewards": [{"currency": {"currencyCode": "s9gNpNon", "namespace": "6DKW9A6A"}, "item": {"itemId": "mnQTNFid", "itemSku": "ImWONTvC", "itemType": "PMGLdbYE"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "nHPKrZ7T", "namespace": "iNBE0HRs"}, "item": {"itemId": "E0GHDOFj", "itemSku": "rfqJcyxT", "itemType": "2a7fCFAU"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "Hip0eONF", "namespace": "DgUPShG8"}, "item": {"itemId": "wwFKY9AM", "itemSku": "pcwJd4Sr", "itemType": "igIxAhbF"}, "quantity": 80, "type": "CURRENCY"}]}, {"id": "zaP0wpZg", "rewards": [{"currency": {"currencyCode": "QEvFzox9", "namespace": "wHocX3DR"}, "item": {"itemId": "WobEoGr8", "itemSku": "W97KBedc", "itemType": "r6PM51z7"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "5zEw8GEN", "namespace": "EJYPKxxO"}, "item": {"itemId": "w7xNQ98I", "itemSku": "Ebc9YITN", "itemType": "98j4P2AG"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "sakylHik", "namespace": "KkpOjqwg"}, "item": {"itemId": "KvfXXs8p", "itemSku": "Dqm31AZS", "itemType": "Rkuw6q8F"}, "quantity": 12, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateDLCItemConfig' test.out

#- 47 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteDLCItemConfig' test.out

#- 48 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetPlatformDLCConfig' test.out

#- 49 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"6RsFK7eY": "lSU3vYcH", "ZZjFegVn": "ZOn0tk4I", "ATSIefcq": "NEn4IZ0D"}}, {"platform": "STEAM", "platformDlcIdMap": {"AUsESaBO": "THnbX9tC", "9PQlFAGb": "MtEybfcA", "l0mnsAkR": "T2k0Azdg"}}, {"platform": "STEAM", "platformDlcIdMap": {"NMuqZTHw": "o1IAJQpb", "6r8ZeaSH": "wQuiH3Oz", "u4G6bXxp": "0gYZyF9f"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePlatformDLCConfig' test.out

#- 50 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeletePlatformDLCConfig' test.out

#- 51 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'QueryEntitlements' test.out

#- 52 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'QueryEntitlements1' test.out

#- 53 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"endDate": "1989-01-24T00:00:00Z", "grantedCode": "BJkSOrF9", "itemId": "Dg4FcDwB", "itemNamespace": "GyBiHewZ", "language": "nX_377", "quantity": 90, "region": "zp4aEW4G", "source": "IAP", "startDate": "1992-09-28T00:00:00Z", "storeId": "buvig8sM"}, {"endDate": "1981-05-30T00:00:00Z", "grantedCode": "7XJpkMio", "itemId": "pQrVL3ZZ", "itemNamespace": "TVxqa9XM", "language": "GWvT", "quantity": 82, "region": "12Jffk8d", "source": "PURCHASE", "startDate": "1975-10-27T00:00:00Z", "storeId": "QNHrjabo"}, {"endDate": "1988-11-09T00:00:00Z", "grantedCode": "omguUqeu", "itemId": "Zh5qtrRb", "itemNamespace": "NnGejdTG", "language": "NmG_617", "quantity": 0, "region": "YmZXKEQL", "source": "IAP", "startDate": "1978-11-12T00:00:00Z", "storeId": "7cTS9OII"}], "userIds": ["HrsOFsbh", "MErnNTLX", "Row4iaYK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GrantEntitlements' test.out

#- 54 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["y0IjsDgb", "J37DN2lD", "vdh7okHl"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'RevokeEntitlements' test.out

#- 55 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    '1wMht2Iz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetEntitlement' test.out

#- 56 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'QueryFulfillmentHistories' test.out

#- 57 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetAppleIAPConfig' test.out

#- 58 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "q7TCUJhD", "password": "sDefAS09"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateAppleIAPConfig' test.out

#- 59 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteAppleIAPConfig' test.out

#- 60 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetEpicGamesIAPConfig' test.out

#- 61 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "VyQB1vR1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateEpicGamesIAPConfig' test.out

#- 62 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteEpicGamesIAPConfig' test.out

#- 63 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetGoogleIAPConfig' test.out

#- 64 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "mx6K17GL", "serviceAccountId": "1CrO4Zuo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'UpdateGoogleIAPConfig' test.out

#- 65 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteGoogleIAPConfig' test.out

#- 66 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateGoogleP12File' test.out

#- 67 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetIAPItemConfig' test.out

#- 68 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "GZSxTzm8", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"cZb8cWdV": "H9bww15z", "ZsaYrJAe": "5Kd5QB96", "ndlO6iPG": "C9RhzMC7"}}, {"itemIdentity": "V8BEphnR", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"nSpCzyb8": "FkoxQbrP", "ngi87K58": "pQswqKLu", "tINusOsa": "92F6iwkJ"}}, {"itemIdentity": "IYOLarmp", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"yvib9CDW": "21ANrlpu", "XD9H1u1C": "vzWPcZwk", "j1l6bf2F": "9EXOBj7v"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateIAPItemConfig' test.out

#- 69 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteIAPItemConfig' test.out

#- 70 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetPlayStationIAPConfig' test.out

#- 71 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "8LHYivmD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdatePlaystationIAPConfig' test.out

#- 72 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeletePlaystationIAPConfig' test.out

#- 73 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "0ekycMKl", "publisherAuthenticationKey": "wJTNL2UC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "WUtaAD7Z", "clientSecret": "Zx1iefAT", "organizationId": "WcDSqGYR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "Mdz07xEJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '40epssgJ' \
    'JC3CX0hp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'B1ZGMMo5' \
    'DSozCuFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'rBMtoOeL' \
    --body '{"categoryPath": "fMCYxSee", "targetItemId": "JOlxa395", "targetNamespace": "rghZwGhd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'ZJkkGhYv' \
    --body '{"appId": "XYMIyaEM", "appType": "SOFTWARE", "baseAppId": "KGBnzh4s", "boothName": "uaGIzttT", "categoryPath": "ncVBf5g3", "clazz": "oeuHiNyL", "displayOrder": 22, "entitlementType": "DURABLE", "ext": {"fPQPmjUk": {}, "vSs5YmIe": {}, "jozmG5Hl": {}}, "features": ["rIfMAvvp", "kAHRJHZy", "frXZmiJX"], "images": [{"as": "4CjKCeIR", "caption": "Ir997KKp", "height": 73, "imageUrl": "JW9eTJvK", "smallImageUrl": "NDFrx6La", "width": 3}, {"as": "fjNMZjKJ", "caption": "05puX319", "height": 94, "imageUrl": "WrMnJtov", "smallImageUrl": "SMFw8X4z", "width": 48}, {"as": "bgTD9xL0", "caption": "7ZzzIs3J", "height": 22, "imageUrl": "ovHSH3xV", "smallImageUrl": "3URIRVDY", "width": 57}], "itemIds": ["nemwKAvg", "DXNrFEE4", "Jf4hQpsL"], "itemQty": {"OcLtZw0e": 10, "kUDP864s": 15, "bS5UOoIC": 49}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"Mit8555N": {"description": "iy4NNFpR", "localExt": {"E5pS85yT": {}, "IRWvLRy5": {}, "8UKWPv3F": {}}, "longDescription": "7S0wCVlY", "title": "Qi9cfMCe"}, "Nnu6OIG1": {"description": "PPLRDEXL", "localExt": {"XZWXvqNC": {}, "HvNpeMjM": {}, "zguq6HFI": {}}, "longDescription": "qaqwH9J6", "title": "JLb5f3SB"}, "MyJUdwEB": {"description": "RrHAWUFq", "localExt": {"TooGGnPE": {}, "gY0t7QQW": {}, "l42byOwX": {}}, "longDescription": "gKyPhXmc", "title": "ysae8HpW"}}, "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 59, "itemId": "4xiz3fWt", "itemSku": "hJSu2pUI", "itemType": "IuPLFAtc"}, {"count": 100, "itemId": "srjV7XJU", "itemSku": "OtHlzXNH", "itemType": "EPpzlMlx"}, {"count": 34, "itemId": "b2H2THLw", "itemSku": "ZGikW7TF", "itemType": "A9gE6SrY"}], "name": "Kq6lcVOh", "odds": 0.6685649655876094, "type": "REWARD_GROUP", "weight": 71}, {"lootBoxItems": [{"count": 66, "itemId": "cEHbiKHW", "itemSku": "7flVolAW", "itemType": "EMmQSPDT"}, {"count": 89, "itemId": "b8s3GW0C", "itemSku": "Y0vAfbq8", "itemType": "xoCurq4l"}, {"count": 31, "itemId": "OUpR3uUd", "itemSku": "gNlyU4IJ", "itemType": "nqtrjCOs"}], "name": "E8VjvzhJ", "odds": 0.3676523268668569, "type": "REWARD_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 54, "itemId": "bhqCjlwr", "itemSku": "msSRV86i", "itemType": "ic1FIMyF"}, {"count": 58, "itemId": "KK1kGFN0", "itemSku": "NUNGKxdl", "itemType": "AUDFQuGP"}, {"count": 52, "itemId": "DMCGUJvE", "itemSku": "RxNg8djS", "itemType": "b4Vt2vKQ"}], "name": "5vlCdI51", "odds": 0.9928469246358186, "type": "REWARD_GROUP", "weight": 18}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 14, "name": "iogwxM5D", "optionBoxConfig": {"boxItems": [{"count": 65, "itemId": "M0dgozmc", "itemSku": "o41750xd", "itemType": "YQg34WUV"}, {"count": 99, "itemId": "t1Lr5BlO", "itemSku": "8K6LH4dS", "itemType": "aa8XYHug"}, {"count": 20, "itemId": "1ZTogG0N", "itemSku": "7Hvnuq1k", "itemType": "J1kpHcQt"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 4, "fixedTrialCycles": 31, "graceDays": 20}, "regionData": {"z70LFQMI": [{"currencyCode": "0oZuEjY0", "currencyNamespace": "rNBbbB9t", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1984-11-11T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-06-08T00:00:00Z", "expireAt": "1996-12-22T00:00:00Z", "price": 87, "purchaseAt": "1996-06-19T00:00:00Z", "trialPrice": 6}, {"currencyCode": "qJacXR2R", "currencyNamespace": "f4noXDFa", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1978-03-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1992-08-13T00:00:00Z", "expireAt": "1996-04-12T00:00:00Z", "price": 53, "purchaseAt": "1985-07-25T00:00:00Z", "trialPrice": 78}, {"currencyCode": "EJH3ebM7", "currencyNamespace": "1Tg922xi", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1974-12-23T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1992-05-22T00:00:00Z", "expireAt": "1976-09-04T00:00:00Z", "price": 1, "purchaseAt": "1984-12-09T00:00:00Z", "trialPrice": 33}], "z7I1WkIa": [{"currencyCode": "0oZ1nXpW", "currencyNamespace": "1l70pcZg", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1976-01-08T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-02-18T00:00:00Z", "expireAt": "1998-03-01T00:00:00Z", "price": 17, "purchaseAt": "1988-07-15T00:00:00Z", "trialPrice": 78}, {"currencyCode": "5IT9Agsj", "currencyNamespace": "l5NmnSHh", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1991-06-17T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1990-08-19T00:00:00Z", "expireAt": "1988-02-02T00:00:00Z", "price": 28, "purchaseAt": "1974-06-08T00:00:00Z", "trialPrice": 84}, {"currencyCode": "xY0MsPc9", "currencyNamespace": "EMgf9JCJ", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1986-06-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1975-09-06T00:00:00Z", "expireAt": "1990-07-24T00:00:00Z", "price": 95, "purchaseAt": "1997-02-11T00:00:00Z", "trialPrice": 96}], "wCVJW9ys": [{"currencyCode": "pUOyHC9e", "currencyNamespace": "KeXzrvzB", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1971-07-06T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1984-09-10T00:00:00Z", "expireAt": "1983-10-10T00:00:00Z", "price": 58, "purchaseAt": "1998-12-26T00:00:00Z", "trialPrice": 56}, {"currencyCode": "TWEmPgoy", "currencyNamespace": "4TkpEw4Z", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1975-02-02T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-04-10T00:00:00Z", "expireAt": "1976-12-28T00:00:00Z", "price": 65, "purchaseAt": "1978-02-20T00:00:00Z", "trialPrice": 65}, {"currencyCode": "M62HQtgz", "currencyNamespace": "QhO3nR8j", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1997-12-07T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1996-11-25T00:00:00Z", "expireAt": "1994-09-18T00:00:00Z", "price": 9, "purchaseAt": "1971-04-22T00:00:00Z", "trialPrice": 37}]}, "saleConfig": {"currencyCode": "8vmfMYGL", "price": 40}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "Off5gRZZ", "stackable": true, "status": "INACTIVE", "tags": ["huAIzBPW", "BYKAEFTd", "lKNh6GTz"], "targetCurrencyCode": "KjsCqxx2", "targetNamespace": "4QM35bSk", "thumbnailUrl": "FrvGciNH", "useCount": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '1a8KIJH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    '3aKkPuWD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '59MgTy1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'A58Jt5Na' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'ROjSKFEu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'Zo2ElXYS' \
    --body '{"itemIds": ["S4ezBRSi", "OyReviDa", "xlPdhwmc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'H03yoMxz' \
    --body '{"changes": [{"itemIdentities": ["RR6xd9rT", "h3ureaIb", "xM3Wev9p"], "itemIdentityType": "ITEM_ID", "regionData": {"jWAN0tny": [{"currencyCode": "16ZHZtuS", "currencyNamespace": "JGQCrM7J", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1982-12-27T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1992-07-23T00:00:00Z", "discountedPrice": 20, "expireAt": "1973-05-30T00:00:00Z", "price": 93, "purchaseAt": "1990-01-17T00:00:00Z", "trialPrice": 26}, {"currencyCode": "AzkIlndN", "currencyNamespace": "5xeayr3v", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1984-06-15T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1989-02-10T00:00:00Z", "discountedPrice": 17, "expireAt": "1991-07-29T00:00:00Z", "price": 76, "purchaseAt": "1999-11-08T00:00:00Z", "trialPrice": 41}, {"currencyCode": "iAAKcvAX", "currencyNamespace": "nxnH0QIh", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1989-05-22T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1984-11-30T00:00:00Z", "discountedPrice": 5, "expireAt": "1995-02-18T00:00:00Z", "price": 25, "purchaseAt": "1985-05-16T00:00:00Z", "trialPrice": 41}], "wZXQZZrS": [{"currencyCode": "suYiIPei", "currencyNamespace": "0pXglJYn", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1979-04-30T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-09-27T00:00:00Z", "discountedPrice": 55, "expireAt": "1980-06-21T00:00:00Z", "price": 70, "purchaseAt": "1978-07-19T00:00:00Z", "trialPrice": 22}, {"currencyCode": "hwqk140M", "currencyNamespace": "olIrnlkR", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1988-01-21T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1999-04-06T00:00:00Z", "discountedPrice": 27, "expireAt": "1987-10-12T00:00:00Z", "price": 60, "purchaseAt": "1993-11-07T00:00:00Z", "trialPrice": 31}, {"currencyCode": "vXe6Biph", "currencyNamespace": "IFe2bzr6", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1993-06-28T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1978-02-16T00:00:00Z", "discountedPrice": 61, "expireAt": "1993-09-06T00:00:00Z", "price": 63, "purchaseAt": "1985-03-30T00:00:00Z", "trialPrice": 22}], "TO9SDKnM": [{"currencyCode": "lnKW9jiN", "currencyNamespace": "Mu9QVrMe", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1997-01-07T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1986-05-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1974-05-30T00:00:00Z", "price": 70, "purchaseAt": "1976-06-19T00:00:00Z", "trialPrice": 63}, {"currencyCode": "59GT2E6A", "currencyNamespace": "acmZRXZm", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1997-12-05T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1991-03-30T00:00:00Z", "discountedPrice": 100, "expireAt": "1973-03-07T00:00:00Z", "price": 18, "purchaseAt": "1973-12-11T00:00:00Z", "trialPrice": 75}, {"currencyCode": "72AB8EO3", "currencyNamespace": "YrlyrWow", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1995-08-29T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-10-10T00:00:00Z", "discountedPrice": 24, "expireAt": "1991-12-19T00:00:00Z", "price": 39, "purchaseAt": "1994-06-16T00:00:00Z", "trialPrice": 50}]}}, {"itemIdentities": ["JJsHZVsG", "6izJZruO", "JvSRFLDS"], "itemIdentityType": "ITEM_ID", "regionData": {"Pf8g1rbh": [{"currencyCode": "fIMStMnS", "currencyNamespace": "qrKWYOuI", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1998-11-24T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1992-12-31T00:00:00Z", "discountedPrice": 0, "expireAt": "1996-08-22T00:00:00Z", "price": 28, "purchaseAt": "1995-01-18T00:00:00Z", "trialPrice": 82}, {"currencyCode": "eFU5GKmc", "currencyNamespace": "EKp8AQwq", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1989-03-25T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1989-09-26T00:00:00Z", "discountedPrice": 84, "expireAt": "1977-12-11T00:00:00Z", "price": 88, "purchaseAt": "1971-03-23T00:00:00Z", "trialPrice": 75}, {"currencyCode": "0ccMkdz6", "currencyNamespace": "zPz3BVHA", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1979-12-25T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1991-02-15T00:00:00Z", "discountedPrice": 29, "expireAt": "1996-04-17T00:00:00Z", "price": 18, "purchaseAt": "1994-12-28T00:00:00Z", "trialPrice": 97}], "p24esyjh": [{"currencyCode": "6Wc3migf", "currencyNamespace": "2n6iQyr5", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1971-08-08T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1997-10-31T00:00:00Z", "discountedPrice": 5, "expireAt": "1987-02-12T00:00:00Z", "price": 93, "purchaseAt": "1982-08-16T00:00:00Z", "trialPrice": 13}, {"currencyCode": "iaVPmmn0", "currencyNamespace": "T5uzlmi2", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1983-05-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1980-03-22T00:00:00Z", "discountedPrice": 6, "expireAt": "1992-12-01T00:00:00Z", "price": 6, "purchaseAt": "1978-02-25T00:00:00Z", "trialPrice": 70}, {"currencyCode": "3pXjmtpN", "currencyNamespace": "fCrIj9nt", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1994-05-24T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1972-06-17T00:00:00Z", "discountedPrice": 60, "expireAt": "1979-01-27T00:00:00Z", "price": 69, "purchaseAt": "1999-11-20T00:00:00Z", "trialPrice": 22}], "u8abrVVO": [{"currencyCode": "Kxr9Pa31", "currencyNamespace": "5FKDjG2A", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-05-14T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1997-07-12T00:00:00Z", "discountedPrice": 72, "expireAt": "1983-07-21T00:00:00Z", "price": 59, "purchaseAt": "1984-12-28T00:00:00Z", "trialPrice": 65}, {"currencyCode": "XBqJqjAb", "currencyNamespace": "VwSaoj1u", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1975-05-24T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1977-06-22T00:00:00Z", "discountedPrice": 86, "expireAt": "1976-05-21T00:00:00Z", "price": 81, "purchaseAt": "1999-05-02T00:00:00Z", "trialPrice": 40}, {"currencyCode": "VLT0Lvqc", "currencyNamespace": "fSdO1nAj", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1994-06-22T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1975-09-04T00:00:00Z", "discountedPrice": 3, "expireAt": "1974-08-25T00:00:00Z", "price": 67, "purchaseAt": "1991-12-12T00:00:00Z", "trialPrice": 13}]}}, {"itemIdentities": ["xHGxhZqN", "XJ6JXSh0", "Z3SWISs1"], "itemIdentityType": "ITEM_ID", "regionData": {"to74GcmV": [{"currencyCode": "f0fbCU9Q", "currencyNamespace": "dPuWeMEe", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1989-08-15T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1992-05-04T00:00:00Z", "discountedPrice": 37, "expireAt": "1974-10-05T00:00:00Z", "price": 27, "purchaseAt": "1996-07-02T00:00:00Z", "trialPrice": 8}, {"currencyCode": "hPKU5abn", "currencyNamespace": "qw8fFa30", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1995-01-05T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1974-05-24T00:00:00Z", "discountedPrice": 57, "expireAt": "1988-02-26T00:00:00Z", "price": 37, "purchaseAt": "1998-03-06T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Wm3V9sir", "currencyNamespace": "E0JOQxWe", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1975-05-13T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1985-04-20T00:00:00Z", "discountedPrice": 99, "expireAt": "1993-11-13T00:00:00Z", "price": 93, "purchaseAt": "1986-02-19T00:00:00Z", "trialPrice": 85}], "lw0gdWoE": [{"currencyCode": "4esuiDrq", "currencyNamespace": "uccz4J6f", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1996-01-31T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1984-06-29T00:00:00Z", "discountedPrice": 73, "expireAt": "1990-08-30T00:00:00Z", "price": 63, "purchaseAt": "1981-03-09T00:00:00Z", "trialPrice": 26}, {"currencyCode": "YHIknvPc", "currencyNamespace": "JkjRevVY", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1975-09-10T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1983-06-19T00:00:00Z", "discountedPrice": 32, "expireAt": "1995-08-05T00:00:00Z", "price": 12, "purchaseAt": "1998-04-22T00:00:00Z", "trialPrice": 87}, {"currencyCode": "K9YDq1x3", "currencyNamespace": "dkbJFDEB", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1981-11-28T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1982-10-20T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-08-08T00:00:00Z", "price": 76, "purchaseAt": "1989-07-13T00:00:00Z", "trialPrice": 9}], "lpvqaB9P": [{"currencyCode": "9GaukfCE", "currencyNamespace": "IeSBLhTf", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1975-12-18T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1985-07-28T00:00:00Z", "discountedPrice": 10, "expireAt": "1988-07-05T00:00:00Z", "price": 5, "purchaseAt": "1981-12-25T00:00:00Z", "trialPrice": 5}, {"currencyCode": "uJgYaj4I", "currencyNamespace": "8Dzyh1N0", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1989-09-05T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1978-09-23T00:00:00Z", "discountedPrice": 80, "expireAt": "1981-06-06T00:00:00Z", "price": 47, "purchaseAt": "1988-10-26T00:00:00Z", "trialPrice": 43}, {"currencyCode": "n63KIDTk", "currencyNamespace": "UCqbbHGJ", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1971-10-26T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1993-09-27T00:00:00Z", "discountedPrice": 78, "expireAt": "1986-05-21T00:00:00Z", "price": 28, "purchaseAt": "1978-06-13T00:00:00Z", "trialPrice": 65}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateRegionData' test.out

#- 98 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'aFiufH2Y' \
    'R6QU7fj6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'SearchItems' test.out

#- 99 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'QueryUncategorizedItems' test.out

#- 100 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'w17arNs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetItem' test.out

#- 101 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '2hOoLVM7' \
    'UFnuJDze' \
    --body '{"appId": "EkDxaVog", "appType": "GAME", "baseAppId": "nbTDXu7F", "boothName": "bleSP5Pc", "categoryPath": "dOuq0m0r", "clazz": "vakR8rcw", "displayOrder": 30, "entitlementType": "CONSUMABLE", "ext": {"gdJDujYn": {}, "VnFK6gB6": {}, "ZxC6yYUV": {}}, "features": ["UJYnQ3jO", "GmROIqxq", "Q0gcNeTf"], "images": [{"as": "lyvUh3w5", "caption": "ZtfwmOCK", "height": 31, "imageUrl": "u3m9u67J", "smallImageUrl": "jCDwg186", "width": 14}, {"as": "c9fEjkZh", "caption": "EpAJMCxM", "height": 31, "imageUrl": "cxzjDhTr", "smallImageUrl": "cBKtU956", "width": 16}, {"as": "9gD9tGN0", "caption": "nE7M36mI", "height": 47, "imageUrl": "u3EeZtLQ", "smallImageUrl": "ij2JXsqd", "width": 77}], "itemIds": ["fhZTTaCe", "qGv7meuQ", "hJuq1C6J"], "itemQty": {"HkWMSUbq": 56, "T2h3hcQ2": 45, "z9w2nur0": 57}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"jKaunAcy": {"description": "lsau7wRQ", "localExt": {"mL4i3eRy": {}, "IECEDa1I": {}, "4lwXqwPf": {}}, "longDescription": "q3VzHQjt", "title": "olx64w1g"}, "yvjacKtG": {"description": "qxMnoAXR", "localExt": {"lcq0mYWK": {}, "QYlqMmu2": {}, "pvF6rP03": {}}, "longDescription": "bQaq1cT8", "title": "8H6RCW8g"}, "JmGzDlqx": {"description": "tLsR2AGO", "localExt": {"iPhNt2Id": {}, "H8aYYUT6": {}, "mma833TD": {}}, "longDescription": "zk66ix88", "title": "sAUrXr7M"}}, "lootBoxConfig": {"rewardCount": 46, "rewards": [{"lootBoxItems": [{"count": 48, "itemId": "4KV104Mt", "itemSku": "MhKHmSjq", "itemType": "PuQZX5Kj"}, {"count": 7, "itemId": "CZx9DJ4V", "itemSku": "97SJLlrw", "itemType": "XmIGamRC"}, {"count": 55, "itemId": "jTSNDf3z", "itemSku": "azm6p5Y1", "itemType": "tkG9WwU4"}], "name": "Ty6Ch5QY", "odds": 0.40263410165043234, "type": "REWARD_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 19, "itemId": "LLiMvcu3", "itemSku": "9YZJypWz", "itemType": "pNXgnoKI"}, {"count": 53, "itemId": "WNl3apJm", "itemSku": "NAbl1g5Z", "itemType": "mTTGYRbP"}, {"count": 93, "itemId": "QVey9pEz", "itemSku": "1TV5cUtP", "itemType": "Bsw01i5M"}], "name": "f7WvbNSe", "odds": 0.08032122429338384, "type": "REWARD", "weight": 81}, {"lootBoxItems": [{"count": 82, "itemId": "Gtvyk5xE", "itemSku": "frJDxKsw", "itemType": "5Xl7ZZrD"}, {"count": 49, "itemId": "dbuvCFBa", "itemSku": "VcohewKk", "itemType": "VuGv9fQX"}, {"count": 22, "itemId": "nhSEanfU", "itemSku": "YrMU6A43", "itemType": "UKGpvC1c"}], "name": "r5T1PSXh", "odds": 0.061317328652495506, "type": "REWARD", "weight": 15}], "rollFunction": "DEFAULT"}, "maxCount": 100, "maxCountPerUser": 10, "name": "chzXDv3T", "optionBoxConfig": {"boxItems": [{"count": 54, "itemId": "xzvYwv7a", "itemSku": "tn9EQv2O", "itemType": "j8TFNeGt"}, {"count": 73, "itemId": "6AbdtU0C", "itemSku": "DrlQpKB8", "itemType": "qoel2QK3"}, {"count": 0, "itemId": "qdKu4ROn", "itemSku": "ONpJ849c", "itemType": "hqeiUGQM"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 80, "fixedTrialCycles": 95, "graceDays": 45}, "regionData": {"RYZCeF30": [{"currencyCode": "RT9rBgM8", "currencyNamespace": "o7lxXq7T", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1972-09-27T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1993-09-09T00:00:00Z", "expireAt": "1984-03-25T00:00:00Z", "price": 60, "purchaseAt": "1985-08-17T00:00:00Z", "trialPrice": 24}, {"currencyCode": "BcvVegrZ", "currencyNamespace": "ddP8lLQo", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1971-10-07T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1976-07-23T00:00:00Z", "expireAt": "1984-09-17T00:00:00Z", "price": 6, "purchaseAt": "1999-07-30T00:00:00Z", "trialPrice": 54}, {"currencyCode": "M4LMJfWN", "currencyNamespace": "ZIxAgBpe", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1971-06-13T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1986-05-24T00:00:00Z", "expireAt": "1980-10-24T00:00:00Z", "price": 78, "purchaseAt": "1978-09-05T00:00:00Z", "trialPrice": 19}], "0qfbvdU8": [{"currencyCode": "hlDoC9Fn", "currencyNamespace": "xqBlPBYJ", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1995-12-06T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1976-09-17T00:00:00Z", "expireAt": "1998-03-15T00:00:00Z", "price": 94, "purchaseAt": "1977-12-30T00:00:00Z", "trialPrice": 76}, {"currencyCode": "fMi2CPVG", "currencyNamespace": "xjcdpdCq", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-12-06T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1984-05-14T00:00:00Z", "expireAt": "1979-01-10T00:00:00Z", "price": 51, "purchaseAt": "1992-05-13T00:00:00Z", "trialPrice": 50}, {"currencyCode": "JTUQY40Z", "currencyNamespace": "rpn0vAD9", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1992-05-10T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1979-08-28T00:00:00Z", "expireAt": "1973-02-18T00:00:00Z", "price": 36, "purchaseAt": "1999-08-04T00:00:00Z", "trialPrice": 17}], "VQZSvgWu": [{"currencyCode": "CuLsUGrV", "currencyNamespace": "QAbhS54Z", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1992-09-29T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1989-03-25T00:00:00Z", "expireAt": "1973-05-22T00:00:00Z", "price": 35, "purchaseAt": "1975-06-06T00:00:00Z", "trialPrice": 77}, {"currencyCode": "DmJLUHAK", "currencyNamespace": "tfXCKOna", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1972-08-29T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1997-06-06T00:00:00Z", "expireAt": "1973-11-30T00:00:00Z", "price": 16, "purchaseAt": "1975-05-01T00:00:00Z", "trialPrice": 10}, {"currencyCode": "wdCpVpnE", "currencyNamespace": "NiTc9NES", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1977-12-22T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-09-05T00:00:00Z", "expireAt": "1999-03-30T00:00:00Z", "price": 21, "purchaseAt": "1986-09-10T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "K2Cy1tJc", "price": 86}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "0OvY7apP", "stackable": true, "status": "ACTIVE", "tags": ["rN5bEhmu", "HgKeWizE", "pw1zN0mO"], "targetCurrencyCode": "YgGhHMz9", "targetNamespace": "dddLWJWD", "thumbnailUrl": "uSYtCaIv", "useCount": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateItem' test.out

#- 102 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'Lp91wYUJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeleteItem' test.out

#- 103 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'Pbvzn8TY' \
    --body '{"count": 29, "orderNo": "neohqhCz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'AcquireItem' test.out

#- 104 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'roAzWQDv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetApp' test.out

#- 105 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'e0Z2G2N0' \
    '9VIbbsz2' \
    --body '{"carousel": [{"alt": "4fQKDZX6", "previewUrl": "plErw0Gb", "thumbnailUrl": "0ceCbphW", "type": "video", "url": "MhJ0S50b", "videoSource": "generic"}, {"alt": "48Hxu8Ju", "previewUrl": "4XSAnlXR", "thumbnailUrl": "YB9BgSZB", "type": "video", "url": "XvRNDBnm", "videoSource": "youtube"}, {"alt": "0nrW1qx3", "previewUrl": "NJTugVWX", "thumbnailUrl": "z8dv7BiE", "type": "image", "url": "qnzxs2de", "videoSource": "youtube"}], "developer": "0uRMT1Xw", "forumUrl": "9K9Yb68a", "genres": ["Strategy", "RPG", "Sports"], "localizations": {"gYx2Tqkh": {"announcement": "lqMnE9Wj", "slogan": "90EQzOid"}, "rWnLrXqI": {"announcement": "mgDf3GaJ", "slogan": "sdCZND0w"}, "gYOilX1e": {"announcement": "1825iasu", "slogan": "nESjcgr2"}}, "platformRequirements": {"drXG5NkK": [{"additionals": "CySLA8cK", "directXVersion": "Cs0dFYRS", "diskSpace": "a2OULZ0i", "graphics": "OZJiOAh1", "label": "SpLhMF2P", "osVersion": "av11FuU8", "processor": "iXCRz8Kg", "ram": "qgwijYxp", "soundCard": "GhsFArq6"}, {"additionals": "lolbj7QK", "directXVersion": "vtVRCPMj", "diskSpace": "r5M3vw1G", "graphics": "qUjjFp6R", "label": "8mYZwKft", "osVersion": "VqSECsyp", "processor": "S42NmYQ8", "ram": "HlHbHnfs", "soundCard": "4tLVOYQC"}, {"additionals": "WMktmiKd", "directXVersion": "9vLPP0w5", "diskSpace": "2JRAZxMW", "graphics": "doleYNHX", "label": "eOpaRDwY", "osVersion": "Lge851Pb", "processor": "K2MFKvw5", "ram": "TWjAh4gy", "soundCard": "41LLzQ2I"}], "jY5PeNr4": [{"additionals": "JmYxH2qs", "directXVersion": "28hePJjM", "diskSpace": "p0TKKUBf", "graphics": "PNI9f2oL", "label": "WDPSZexf", "osVersion": "KVxqdxmh", "processor": "5QWxuQuI", "ram": "7gdDTDb3", "soundCard": "WdnOpzTr"}, {"additionals": "RzCCafAD", "directXVersion": "JfWBspT3", "diskSpace": "MLwJZquM", "graphics": "QSPp5XD4", "label": "S1ilfgff", "osVersion": "7Et4uY8n", "processor": "lBwGNHgf", "ram": "gwZwVMvs", "soundCard": "hGmsg6ZJ"}, {"additionals": "YnkHDnHT", "directXVersion": "lRugM7a2", "diskSpace": "UZgeesip", "graphics": "bP027okM", "label": "5E8tAajV", "osVersion": "SvLRj306", "processor": "RDuaSixX", "ram": "EdloYZBk", "soundCard": "atNLc42e"}], "q0O6VsXt": [{"additionals": "OlQwj5xP", "directXVersion": "vm7c5nPR", "diskSpace": "0Y1sffUa", "graphics": "Z64dFpiv", "label": "8o9Gw4Qt", "osVersion": "KgyIeySo", "processor": "UxoMrj2J", "ram": "4JGQZAty", "soundCard": "jTxnlmSy"}, {"additionals": "jEaFH2DR", "directXVersion": "N6HIEqIF", "diskSpace": "EcS0ynIM", "graphics": "OYWpUYUQ", "label": "MooiKT57", "osVersion": "rmbjEnim", "processor": "eR7EFBz4", "ram": "3E9FkOPV", "soundCard": "u2fDtOjW"}, {"additionals": "1iSYQbce", "directXVersion": "bBd5wb5H", "diskSpace": "3qppoCiH", "graphics": "MD4iBK2O", "label": "7qYtOHV5", "osVersion": "hnpjc5CN", "processor": "LnnEvo25", "ram": "aEtdjls5", "soundCard": "oadseJg7"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["CrossPlatformMulti", "MMO", "Coop"], "primaryGenre": "Racing", "publisher": "3fjSRaXD", "releaseDate": "1999-10-19T00:00:00Z", "websiteUrl": "HDmdvhMX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateApp' test.out

#- 106 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'xiKR29LK' \
    'IhNU43K8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DisableItem' test.out

#- 107 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'bihdw3pr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItemDynamicData' test.out

#- 108 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'p0UHlWUx' \
    'kBefhxRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'EnableItem' test.out

#- 109 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'rqbv56oq' \
    'wnCLVc2q' \
    'HZuuedbB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'FeatureItem' test.out

#- 110 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'Od19DqZJ' \
    'RYV1oqNL' \
    'mPAUIMwa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'DefeatureItem' test.out

#- 111 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '2wYq6DsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetLocaleItem' test.out

#- 112 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'q38bYvaW' \
    'LoKzHnng' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 14, "comparison": "includes", "name": "0zsKhR60", "predicateType": "SeasonTierPredicate", "value": "XH6LYXXM", "values": ["ndxBPKmH", "VB7cNzHh", "vxc4xAPZ"]}, {"anyOf": 48, "comparison": "isGreaterThan", "name": "YMimVLzA", "predicateType": "SeasonTierPredicate", "value": "466u8agb", "values": ["o6QJ9vBR", "5HPsBU0E", "J4UP09fa"]}, {"anyOf": 3, "comparison": "isNot", "name": "LwcAg57B", "predicateType": "SeasonPassPredicate", "value": "BVCbi0if", "values": ["XlH5jw99", "dPyKf3Sw", "HekWIz4r"]}]}, {"operator": "and", "predicates": [{"anyOf": 49, "comparison": "is", "name": "CjXWcaXB", "predicateType": "EntitlementPredicate", "value": "DLEZ6Dxp", "values": ["wBm2N8Pd", "bnmWR0H3", "Q5mQaGXE"]}, {"anyOf": 63, "comparison": "is", "name": "mHHoz6qB", "predicateType": "SeasonTierPredicate", "value": "KszYZzOg", "values": ["HSx5bClx", "UOBmMwv5", "113h6fIa"]}, {"anyOf": 31, "comparison": "includes", "name": "miIVnhlL", "predicateType": "EntitlementPredicate", "value": "SohfrLyX", "values": ["MSrC62xY", "tDwflNGf", "ufW5cWeg"]}]}, {"operator": "and", "predicates": [{"anyOf": 97, "comparison": "isNot", "name": "QPa7PPx4", "predicateType": "EntitlementPredicate", "value": "i6WaC8wk", "values": ["7HMbJhNw", "Zgf5nlMD", "ORYuXnPN"]}, {"anyOf": 74, "comparison": "includes", "name": "UCBYnkY0", "predicateType": "SeasonTierPredicate", "value": "KXA3mcyM", "values": ["533YlJ93", "NAVOYqSH", "mX6WF8jt"]}, {"anyOf": 58, "comparison": "isLessThanOrEqual", "name": "CGBXv4fP", "predicateType": "EntitlementPredicate", "value": "PzhcH4UJ", "values": ["rrCKvrOA", "i7lMgkVW", "JYzSCIDx"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'UpdateItemPurchaseCondition' test.out

#- 113 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'WUxgOzeR' \
    --body '{"orderNo": "NHIqK5PT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ReturnItem' test.out

#- 114 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryKeyGroups' test.out

#- 115 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "404mFw4H", "name": "Jv5T2kIQ", "status": "INACTIVE", "tags": ["ecfLsYKT", "mUnKlrOs", "JmEwjGYN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'CreateKeyGroup' test.out

#- 116 GetKeyGroupByBoothName
eval_tap 0 116 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 117 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '8VNPXNsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetKeyGroup' test.out

#- 118 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'wTV8imJH' \
    --body '{"description": "NI0l6jJV", "name": "zF1Oi2sQ", "status": "INACTIVE", "tags": ["WA2dWxBs", "056jkPCU", "uE1pgdHv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateKeyGroup' test.out

#- 119 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'lQKiR7SD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetKeyGroupDynamic' test.out

#- 120 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'QUDavOlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ListKeys' test.out

#- 121 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'T5EIHNhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'UploadKeys' test.out

#- 122 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'QueryOrders' test.out

#- 123 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetOrderStatistics' test.out

#- 124 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'Qq94Re5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetOrder' test.out

#- 125 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'M1akNKz9' \
    --body '{"description": "IltQUku3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'RefundOrder' test.out

#- 126 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetPaymentCallbackConfig' test.out

#- 127 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "zMTMSwrN", "privateKey": "ov2GW9i5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdatePaymentCallbackConfig' test.out

#- 128 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentNotifications' test.out

#- 129 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'QueryPaymentOrders' test.out

#- 130 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "4JY23AUW", "currencyNamespace": "FTLq0W1J", "customParameters": {"qwKs1mO8": {}, "0L7IOHlf": {}, "6j8PZOzU": {}}, "description": "iQKZqz5N", "extOrderNo": "Sp0B7LOD", "extUserId": "N3Boi2sS", "itemType": "LOOTBOX", "language": "pa_isAU", "metadata": {"53XQB93r": "OW0guPoQ", "bYzc1RDV": "hs2lhdzx", "xgibuqUu": "yW3cMz9Y"}, "notifyUrl": "yduMomEH", "omitNotification": false, "platform": "gzGCbaxw", "price": 35, "recurringPaymentOrderNo": "3rNbE4bb", "region": "DU4FMTbQ", "returnUrl": "aANJOODG", "sandbox": false, "sku": "qehObg3O", "subscriptionId": "Z9j0HDtb", "targetNamespace": "qMFlgHKQ", "targetUserId": "IRtLfPng", "title": "D83roOeq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'CreatePaymentOrderByDedicated' test.out

#- 131 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'E7fcCAeE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'ListExtOrderNoByExtTxId' test.out

#- 132 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'xeQX43Lp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrder' test.out

#- 133 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'mdMiZeyI' \
    --body '{"extTxId": "rA4QUKSJ", "paymentMethod": "gECzvaWU", "paymentProvider": "XSOLLA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'ChargePaymentOrder' test.out

#- 134 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'PqjRUMKS' \
    --body '{"description": "QjFdjqTa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'RefundPaymentOrderByDedicated' test.out

#- 135 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'ZFsWzbqw' \
    --body '{"amount": 94, "currencyCode": "rNJLM0OO", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 4, "vat": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'SimulatePaymentOrderNotification' test.out

#- 136 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'G6XxENbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentOrderChargeStatus' test.out

#- 137 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetPlatformWalletConfig' test.out

#- 138 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'IOS' \
    --body '{"allowedBalanceOrigins": ["Xbox", "IOS", "Xbox"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdatePlatformWalletConfig' test.out

#- 139 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ResetPlatformWalletConfig' test.out

#- 140 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetRevocationConfig' test.out

#- 141 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateRevocationConfig' test.out

#- 142 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteRevocationConfig' test.out

#- 143 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'QueryRevocationHistories' test.out

#- 144 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "CeNLYxMI", "eventTopic": "D9pqZ5rr", "maxAwarded": 50, "maxAwardedPerUser": 40, "namespaceExpression": "iMMt6fQt", "rewardCode": "Lhzylaqu", "rewardConditions": [{"condition": "ioT3QBt2", "conditionName": "9AiRASsu", "eventName": "FM4ahGw7", "rewardItems": [{"duration": 0, "itemId": "cF1Qwzz6", "quantity": 14}, {"duration": 96, "itemId": "RCe5BtKc", "quantity": 47}, {"duration": 19, "itemId": "Mef7AvS3", "quantity": 93}]}, {"condition": "mr3ZQNBB", "conditionName": "krXu9czs", "eventName": "Yr3cFeVw", "rewardItems": [{"duration": 95, "itemId": "0xdNTuOd", "quantity": 77}, {"duration": 15, "itemId": "KK0M2B2h", "quantity": 2}, {"duration": 30, "itemId": "qJin37P6", "quantity": 39}]}, {"condition": "IlTpEhjT", "conditionName": "FYdzsUNv", "eventName": "QAn2LuMj", "rewardItems": [{"duration": 77, "itemId": "C4qPqJrA", "quantity": 7}, {"duration": 38, "itemId": "h1HIk7vC", "quantity": 63}, {"duration": 49, "itemId": "q7FQ2S5V", "quantity": 9}]}], "userIdExpression": "COguSq2A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'CreateReward' test.out

#- 145 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryRewards' test.out

#- 146 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'ExportRewards' test.out

#- 147 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'ImportRewards' test.out

#- 148 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'wDdSkNfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetReward' test.out

#- 149 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'JtA3QiX9' \
    --body '{"description": "ZvtydbaV", "eventTopic": "b0scd97A", "maxAwarded": 49, "maxAwardedPerUser": 66, "namespaceExpression": "ZKrTJo0L", "rewardCode": "5sHil4Q0", "rewardConditions": [{"condition": "mqa8Gatr", "conditionName": "jbJ5YT7u", "eventName": "vqarTvrG", "rewardItems": [{"duration": 60, "itemId": "YgRpk2IF", "quantity": 67}, {"duration": 4, "itemId": "IgIpscUp", "quantity": 97}, {"duration": 67, "itemId": "Aciu2XPP", "quantity": 96}]}, {"condition": "DhshvEF8", "conditionName": "rHd250ny", "eventName": "ihcUVGHQ", "rewardItems": [{"duration": 4, "itemId": "8FTLrByW", "quantity": 84}, {"duration": 21, "itemId": "JhbocoGl", "quantity": 85}, {"duration": 91, "itemId": "zdfxcC3r", "quantity": 32}]}, {"condition": "aU11cBXL", "conditionName": "wTfopqeZ", "eventName": "tHJnRgaG", "rewardItems": [{"duration": 12, "itemId": "j5WcQ99M", "quantity": 85}, {"duration": 50, "itemId": "ZGzVLcmZ", "quantity": 74}, {"duration": 74, "itemId": "2ehcMnM6", "quantity": 87}]}], "userIdExpression": "tsNczam4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateReward' test.out

#- 150 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Cdd1QYvw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteReward' test.out

#- 151 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'w4XDoklt' \
    --body '{"payload": {"gq2vXtUn": {}, "Y6UhDJ4p": {}, "e0s0Cuhl": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CheckEventCondition' test.out

#- 152 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '3dU9b4se' \
    --body '{"conditionName": "YCyiB4tD", "userId": "CWx3cEX8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'DeleteRewardConditionRecord' test.out

#- 153 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'QuerySections' test.out

#- 154 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'wTi1v2ab' \
    --body '{"active": false, "displayOrder": 100, "endDate": "1985-10-09T00:00:00Z", "ext": {"WytPEi9Z": {}, "e0hL9rPk": {}, "V5GkSrcl": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 61, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "zU7qlNVk", "sku": "7qnmBS3X"}, {"id": "KDhp1OkM", "sku": "cErmeH0l"}, {"id": "X1hj0LaX", "sku": "gQ94flh7"}], "localizations": {"75AQfzNj": {"description": "Q7IuMSY2", "localExt": {"epRDJjDy": {}, "MDKQhuTj": {}, "tQZyIiAm": {}}, "longDescription": "CL8bNTTf", "title": "qLCv9DYB"}, "OProN4UW": {"description": "bQaKFrTv", "localExt": {"4JWElmOC": {}, "xqPrq9I3": {}, "XJWBxTLc": {}}, "longDescription": "Oef8MgIw", "title": "krKFEtwE"}, "SJCe2ksG": {"description": "3nZE13H2", "localExt": {"fILFzOlA": {}, "ZbDQAEJL": {}, "bVWH2XLI": {}}, "longDescription": "g3MgmdSv", "title": "Wp3h0xPs"}}, "name": "VY8qNwB2", "rotationType": "NONE", "startDate": "1995-06-24T00:00:00Z", "viewId": "v9NNfQSY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'CreateSection' test.out

#- 155 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'LFKSl3FN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'PurgeExpiredSection' test.out

#- 156 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'FFJnt3rI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetSection' test.out

#- 157 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'wZdW02Su' \
    '6aCnL816' \
    --body '{"active": false, "displayOrder": 85, "endDate": "1988-01-22T00:00:00Z", "ext": {"6gOBUIMe": {}, "L0GL3aef": {}, "SDME8X2M": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 31, "itemCount": 70, "rule": "SEQUENCE"}, "items": [{"id": "LI42BJMP", "sku": "kZmay4Cs"}, {"id": "ye3iJLtj", "sku": "su6ZJRCo"}, {"id": "Dq3geuHF", "sku": "FaZzPIjE"}], "localizations": {"TqcKN1ga": {"description": "Q4Bn0cPP", "localExt": {"tKaJlw31": {}, "pdDrXQ47": {}, "WSGyDCKF": {}}, "longDescription": "0LLhO3lG", "title": "Z7eGOPj2"}, "XoFug8BU": {"description": "QUmPHnPu", "localExt": {"mcazKAna": {}, "0ji757aN": {}, "DFeKnQP2": {}}, "longDescription": "j2WsQImT", "title": "wYkiuxzL"}, "rbJ0BkGz": {"description": "CNgesQlZ", "localExt": {"ZHIZH0ik": {}, "s6kx0adn": {}, "imPyyzez": {}}, "longDescription": "sHdFftHH", "title": "R6xbcVVo"}}, "name": "nwz27DWf", "rotationType": "NONE", "startDate": "1986-12-22T00:00:00Z", "viewId": "AdojkCMm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateSection' test.out

#- 158 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'YyTGO07f' \
    'oRZ6Fujp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeleteSection' test.out

#- 159 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'ListStores' test.out

#- 160 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "IWo0qJtq", "defaultRegion": "p4Q6XgIC", "description": "LgMHcP1e", "supportedLanguages": ["E6sjWQll", "YsONpp6Q", "GW56CNis"], "supportedRegions": ["zHE69D1M", "Moaf6Klg", "RtwaM2Io"], "title": "yY1wpIdj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CreateStore' test.out

#- 161 ImportStore
eval_tap 0 161 'ImportStore # SKIP deprecated' test.out

#- 162 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetPublishedStore' test.out

#- 163 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeletePublishedStore' test.out

#- 164 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetPublishedStoreBackup' test.out

#- 165 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'RollbackPublishedStore' test.out

#- 166 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'cAtTj1IM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetStore' test.out

#- 167 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'uuhxxlul' \
    --body '{"defaultLanguage": "fmya73hX", "defaultRegion": "0a8Ri85P", "description": "A9wNpmrK", "supportedLanguages": ["5Y5heA2e", "wWnFcqHx", "XP3kRhtr"], "supportedRegions": ["BcBofWTG", "Yx2ihgio", "L8VvEzHG"], "title": "Tt9emdCL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'UpdateStore' test.out

#- 168 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'mzJbdkyk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DeleteStore' test.out

#- 169 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'VAnmnRfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'QueryChanges' test.out

#- 170 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'ilcKA84d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'PublishAll' test.out

#- 171 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '9pMsl7zr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'PublishSelected' test.out

#- 172 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'NJvDiP2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'SelectAllRecords' test.out

#- 173 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'NNEI8QrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetStatistic' test.out

#- 174 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '6H1ro5Ct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UnselectAllRecords' test.out

#- 175 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'U8UjgyCU' \
    'pM1JBcTz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'SelectRecord' test.out

#- 176 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'f4dz1Boj' \
    'PoQg9764' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UnselectRecord' test.out

#- 177 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '09vFd5z9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'CloneStore' test.out

#- 178 ExportStore
eval_tap 0 178 'ExportStore # SKIP deprecated' test.out

#- 179 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'QuerySubscriptions' test.out

#- 180 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'r4nJWUvL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'RecurringChargeSubscription' test.out

#- 181 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'p1wxGF74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetTicketDynamic' test.out

#- 182 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '7468MXUq' \
    --body '{"orderNo": "3uIffkIp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'DecreaseTicketSale' test.out

#- 183 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'PmrWVxNZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetTicketBoothID' test.out

#- 184 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'UvkiU2jX' \
    --body '{"count": 92, "orderNo": "i9TRmJOq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'IncreaseTicketSale' test.out

#- 185 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'Il7U12hO' \
    --body '{"achievements": [{"id": "5vpk9DOS", "value": 13}, {"id": "75M88TKh", "value": 65}, {"id": "9A5NmuZD", "value": 96}], "steamUserId": "e2IoPMSQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'UnlockSteamUserAchievement' test.out

#- 186 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'Kcg0OTT9' \
    'JA0ll1Ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetXblUserAchievements' test.out

#- 187 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'mBCiQwuy' \
    --body '{"achievements": [{"id": "rI87uSyX", "value": 86}, {"id": "ORg3tChs", "value": 91}, {"id": "u2wcWYyj", "value": 33}], "serviceConfigId": "JvHqXp4J", "titleId": "R7xI59Z9", "xboxUserId": "tfGVsgln"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateXblUserAchievement' test.out

#- 188 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'OxOXBfgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeCampaign' test.out

#- 189 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'Luglkd9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeEntitlement' test.out

#- 190 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'IoshGnFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeFulfillment' test.out

#- 191 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'uHmrqej8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeIntegration' test.out

#- 192 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'PRppYY1v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeOrder' test.out

#- 193 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'lV0M2g6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AnonymizePayment' test.out

#- 194 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'reqyBzWz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AnonymizeRevocation' test.out

#- 195 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'CgMMWZuD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AnonymizeSubscription' test.out

#- 196 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '6tmIR28x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AnonymizeWallet' test.out

#- 197 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'VxbtpSKO' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserDLCByPlatform' test.out

#- 198 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'mzQx1RsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserDLC' test.out

#- 199 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'hcRlv16W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QueryUserEntitlements' test.out

#- 200 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'we8YK3lZ' \
    --body '[{"endDate": "1987-05-30T00:00:00Z", "grantedCode": "QGKFZLrI", "itemId": "fqrZuu7I", "itemNamespace": "wKcT7sAs", "language": "pGv_zEnn_fg", "quantity": 68, "region": "ZsTBHkgc", "source": "PURCHASE", "startDate": "1998-05-30T00:00:00Z", "storeId": "DcEt23pc"}, {"endDate": "1975-10-26T00:00:00Z", "grantedCode": "6xEljer6", "itemId": "aGJx5OFp", "itemNamespace": "3jKEx4aS", "language": "ZDXz", "quantity": 96, "region": "3NVFFkP7", "source": "REWARD", "startDate": "1989-03-14T00:00:00Z", "storeId": "vsohRWDy"}, {"endDate": "1987-02-17T00:00:00Z", "grantedCode": "YIVFDbTv", "itemId": "RYfpJ4wM", "itemNamespace": "9WZfOOxA", "language": "yNS_HTIb", "quantity": 73, "region": "3TII70MI", "source": "ACHIEVEMENT", "startDate": "1976-08-15T00:00:00Z", "storeId": "XfgsgBd7"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GrantUserEntitlement' test.out

#- 201 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'MYLLoPZr' \
    'kjRm5Ki0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementByAppId' test.out

#- 202 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'orhXrISE' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'QueryUserEntitlementsByAppType' test.out

#- 203 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'uMMgI13n' \
    'plXaUQV5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementByItemId' test.out

#- 204 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'QEvKElLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserActiveEntitlementsByItemIds' test.out

#- 205 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'bB7gwwAR' \
    '1xFrnyir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementBySku' test.out

#- 206 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'w3iJt5iA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ExistsAnyUserActiveEntitlement' test.out

#- 207 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '3JS2xeaJ' \
    '["08JrSHPq", "dhKHn6Zj", "ZMdr1C2T"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 208 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'IQzRJY7U' \
    'fYSrdN0J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 209 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'Vz4U43Ec' \
    'V1FRyeeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlementOwnershipByItemId' test.out

#- 210 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'ehMNeRYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlementOwnershipByItemIds' test.out

#- 211 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'eMbL0G4v' \
    '5D6ylZgu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementOwnershipBySku' test.out

#- 212 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'O918X7rL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeAllEntitlements' test.out

#- 213 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'oexHBMBM' \
    'MAYokSWF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'RevokeUserEntitlements' test.out

#- 214 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'wajRGUyk' \
    'lfLVY6g3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlement' test.out

#- 215 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'PO4hKAeF' \
    '4GUV5m96' \
    --body '{"endDate": "1979-01-17T00:00:00Z", "nullFieldList": ["XoJ4gI4E", "QKO8xC4D", "0FsUo3IB"], "startDate": "1998-07-09T00:00:00Z", "status": "CONSUMED", "useCount": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserEntitlement' test.out

#- 216 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '5REQZsHy' \
    'XzoIXNf0' \
    --body '{"options": ["KbL9HyJt", "tdgfLGO3", "ummpllnV"], "requestId": "6B62P1Ka", "useCount": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ConsumeUserEntitlement' test.out

#- 217 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'cO55hVjf' \
    'WyK02w5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DisableUserEntitlement' test.out

#- 218 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'ytAmkanu' \
    'kAzAMaRv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'EnableUserEntitlement' test.out

#- 219 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'IUhUwguG' \
    'gbLLN3O7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserEntitlementHistories' test.out

#- 220 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'CEYjxqEl' \
    'P5lA2FJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RevokeUserEntitlement' test.out

#- 221 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'iGLRTXGs' \
    'C5mxxse4' \
    --body '{"reason": "eeuMgEct", "useCount": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'RevokeUseCount' test.out

#- 222 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'wCymCDYs' \
    'uff3b7G5' \
    --body '{"requestId": "FDX4mu0q", "useCount": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'SellUserEntitlement' test.out

#- 223 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'PudWviQs' \
    --body '{"duration": 95, "endDate": "1986-11-03T00:00:00Z", "itemId": "b8Gnsthm", "itemSku": "Q2Y6ZGOi", "language": "qrg3lpqN", "order": {"currency": {"currencyCode": "5bOfnqJ5", "currencySymbol": "bzDRzbhM", "currencyType": "VIRTUAL", "decimals": 15, "namespace": "fEDE4Trt"}, "ext": {"IHyyMq79": {}, "EdB9MxaF": {}, "8QHGM2Iu": {}}, "free": false}, "orderNo": "BO8m0HgT", "origin": "Playstation", "quantity": 93, "region": "h479W8rX", "source": "OTHER", "startDate": "1995-07-02T00:00:00Z", "storeId": "wR3yNKDt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'FulfillItem' test.out

#- 224 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'MqMrAGpd' \
    --body '{"code": "yF6WDHn3", "language": "Eq-rOoN-876", "region": "D1nnEzoU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'RedeemCode' test.out

#- 225 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'lUWqP4El' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "eoaIBrTh", "namespace": "0EKkJioU"}, "item": {"itemId": "pvGnkcHg", "itemSku": "CfaWzPUv", "itemType": "CnfqsPGg"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "yRwigaMu", "namespace": "07Zek8WO"}, "item": {"itemId": "bpf0FHYf", "itemSku": "ViEj70KY", "itemType": "KIfFt4GY"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "Ut4F1ZVy", "namespace": "2qFfSr3p"}, "item": {"itemId": "sWjOyHLy", "itemSku": "Ke2foqsV", "itemType": "IfgBTr8R"}, "quantity": 6, "type": "ITEM"}], "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'FulfillRewards' test.out

#- 226 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'AMWqhyyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'QueryUserIAPOrders' test.out

#- 227 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'ZH1CducB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'QueryAllUserIAPOrders' test.out

#- 228 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    '5y5iMdeB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'QueryUserIAPConsumeHistory' test.out

#- 229 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'G7REG4me' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "pB", "productId": "ARSG3QQN", "region": "GNH2K0Uu", "type": "APPLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'MockFulfillIAPItem' test.out

#- 230 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'deGNquQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'QueryUserOrders' test.out

#- 231 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'aXpDQ5rU' \
    --body '{"currencyCode": "2taDWh9J", "currencyNamespace": "V5oc5IFQ", "discountedPrice": 38, "ext": {"gPFJ4Wnd": {}, "MpQhcLK0": {}, "WTZbtmQk": {}}, "itemId": "wC8azx3I", "language": "RWme3C6p", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 83, "quantity": 10, "region": "D3NQdjrj", "returnUrl": "kX3AMgK3", "sandbox": false, "sectionId": "AxbDPXU5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminCreateUserOrder' test.out

#- 232 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'xJBhIpJ9' \
    'b0Ap7CmS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CountOfPurchasedItem' test.out

#- 233 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'iKPjcwAw' \
    '5GdxpvLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrder' test.out

#- 234 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'a4b4hTaZ' \
    'BGdX66Dq' \
    --body '{"status": "REFUND_FAILED", "statusReason": "zx6kkaZY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserOrderStatus' test.out

#- 235 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'pl52sQR9' \
    'Znp5d1eS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'FulfillUserOrder' test.out

#- 236 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'wrG2GBBE' \
    'WrDbQ1Zz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'GetUserOrderGrant' test.out

#- 237 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'hDuLHq9L' \
    'TBstguOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserOrderHistories' test.out

#- 238 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'N0O7l3Gb' \
    'KPHdDTQD' \
    --body '{"additionalData": {"cardSummary": "EEE2mTsn"}, "authorisedTime": "1998-08-14T00:00:00Z", "chargebackReversedTime": "1991-02-27T00:00:00Z", "chargebackTime": "1982-06-09T00:00:00Z", "chargedTime": "1989-07-06T00:00:00Z", "createdTime": "1985-05-26T00:00:00Z", "currency": {"currencyCode": "0d4Q8nlB", "currencySymbol": "thUSu4WN", "currencyType": "REAL", "decimals": 93, "namespace": "TvD5UcES"}, "customParameters": {"1eLMZs9l": {}, "SQVDp16q": {}, "VIqXCK9d": {}}, "extOrderNo": "S5JTbdJE", "extTxId": "e6mnkYAf", "extUserId": "w61kyKk0", "issuedAt": "1995-05-25T00:00:00Z", "metadata": {"UF2523OT": "vOmfVNJN", "DaSO3FEk": "k4It6V8B", "u7rIjGrx": "UMKbv60i"}, "namespace": "xUuUhopd", "nonceStr": "qGrqRZ12", "paymentMethod": "4P7PauXT", "paymentMethodFee": 36, "paymentOrderNo": "7c0vmjWq", "paymentProvider": "WALLET", "paymentProviderFee": 10, "paymentStationUrl": "tPbAFn8o", "price": 100, "refundedTime": "1993-12-13T00:00:00Z", "salesTax": 79, "sandbox": false, "sku": "qSLQDlRF", "status": "CHARGED", "statusReason": "MVfiAMa6", "subscriptionId": "Pco7Mfvi", "subtotalPrice": 21, "targetNamespace": "hc3VUxxZ", "targetUserId": "IgkTLqMe", "tax": 73, "totalPrice": 78, "totalTax": 85, "txEndTime": "1996-08-20T00:00:00Z", "type": "fksp8VQh", "userId": "YSFeBOp0", "vat": 18}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ProcessUserOrderNotification' test.out

#- 239 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'GG39YAZJ' \
    '4HuLfeTf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'DownloadUserOrderReceipt' test.out

#- 240 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'FBTOFFMJ' \
    --body '{"currencyCode": "9pq511jZ", "currencyNamespace": "cTK8zmMf", "customParameters": {"yshYk3b5": {}, "cAFVo85r": {}, "1b8Yp2Qn": {}}, "description": "uhQuIdvZ", "extOrderNo": "dj6AspWB", "extUserId": "fRnLcLbp", "itemType": "MEDIA", "language": "FNeC-958", "metadata": {"1rrRPcnG": "89rnNW1Y", "jfn8lY4D": "nYRxY8Zh", "Heb0CaPF": "DjrSotKn"}, "notifyUrl": "pJWALpTo", "omitNotification": false, "platform": "4yYJOCVi", "price": 68, "recurringPaymentOrderNo": "M5JXvPdz", "region": "EpDln04F", "returnUrl": "8BQjzobh", "sandbox": true, "sku": "tqXltZF6", "subscriptionId": "aSRmHU5i", "title": "R3hXIbzW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'CreateUserPaymentOrder' test.out

#- 241 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'PKOkzftO' \
    'gDQAWhul' \
    --body '{"description": "brDf7q4c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RefundUserPaymentOrder' test.out

#- 242 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'AnpmLiEu' \
    --body '{"code": "4CNtX2ln", "orderNo": "qi7cHTSd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ApplyUserRedemption' test.out

#- 243 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'GoLZbC3U' \
    --body '{"meta": {"JruU4uIX": {}, "BZsEYogF": {}, "WiH9z4E8": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "ZWKgWxn9", "namespace": "YL16HQdt"}, "entitlement": {"entitlementId": "AneXGgxN"}, "item": {"itemIdentity": "g33ZIUrI", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 11, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "eDCowR3M", "namespace": "eCNL1oNr"}, "entitlement": {"entitlementId": "F3SmgudQ"}, "item": {"itemIdentity": "usJLsPlW", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 50, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "FkN9EbKb", "namespace": "TbrDzNgV"}, "entitlement": {"entitlementId": "Ecw0lxRa"}, "item": {"itemIdentity": "m16O6v4V", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 84, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "40LjUdOR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'DoRevocation' test.out

#- 244 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'ELVXUFQy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserSubscriptions' test.out

#- 245 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Vlt9jmxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserSubscriptionActivities' test.out

#- 246 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'xpfp41k1' \
    --body '{"grantDays": 42, "itemId": "zTZ7TXAV", "language": "RnUVbxEJ", "reason": "cKHE764E", "region": "whQfxFKI", "source": "OGT1WKSm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'PlatformSubscribeSubscription' test.out

#- 247 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'LoA0ILaE' \
    'SC1GJXso' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 248 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'Bwqh0TQX' \
    'a2j7v3zQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscription' test.out

#- 249 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'JoQLTAlW' \
    '75icIKUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'DeleteUserSubscription' test.out

#- 250 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'XazsFrma' \
    'GNoi3RPT' \
    --body '{"immediate": false, "reason": "SUSt8xd8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'CancelSubscription' test.out

#- 251 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'EgE15XNu' \
    'w6Y7sToQ' \
    --body '{"grantDays": 82, "reason": "JnADXC2y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GrantDaysToSubscription' test.out

#- 252 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '0DY1E1SM' \
    'K9oA4vK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserSubscriptionBillingHistories' test.out

#- 253 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '6dsYI5SK' \
    'V5pDANyJ' \
    --body '{"additionalData": {"cardSummary": "184miBhd"}, "authorisedTime": "1995-08-29T00:00:00Z", "chargebackReversedTime": "1989-06-03T00:00:00Z", "chargebackTime": "1990-03-22T00:00:00Z", "chargedTime": "1998-01-19T00:00:00Z", "createdTime": "1973-04-10T00:00:00Z", "currency": {"currencyCode": "KYpCfl6H", "currencySymbol": "Py5cJfAV", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "ApGbXnR3"}, "customParameters": {"yC6f2MHG": {}, "Gedk0KzX": {}, "RclOXdPY": {}}, "extOrderNo": "ZQxBnttu", "extTxId": "4yW5etl4", "extUserId": "Xk8Hd1lR", "issuedAt": "1981-04-26T00:00:00Z", "metadata": {"OKMApTcW": "sFRUlWBp", "4gBs9Uuf": "gsVbG6TU", "e3jbuQ7H": "MPO4ozK7"}, "namespace": "05ykRqSP", "nonceStr": "YZgPm4JL", "paymentMethod": "sXVtBOEe", "paymentMethodFee": 40, "paymentOrderNo": "G2V3baMk", "paymentProvider": "XSOLLA", "paymentProviderFee": 22, "paymentStationUrl": "qBIkUID0", "price": 62, "refundedTime": "1976-09-07T00:00:00Z", "salesTax": 31, "sandbox": true, "sku": "InZNLwwA", "status": "AUTHORISE_FAILED", "statusReason": "ok4UnUEO", "subscriptionId": "yP0cPZf5", "subtotalPrice": 84, "targetNamespace": "jxhXdj1C", "targetUserId": "G0EBgst9", "tax": 88, "totalPrice": 89, "totalTax": 41, "txEndTime": "1971-12-21T00:00:00Z", "type": "Ofl2oB8V", "userId": "TjF0pD3N", "vat": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ProcessUserSubscriptionNotification' test.out

#- 254 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'hwnANAGp' \
    '8zGqNGrc' \
    --body '{"count": 88, "orderNo": "MdgCH4bW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AcquireUserTicket' test.out

#- 255 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'xRF6fBPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'QueryUserCurrencyWallets' test.out

#- 256 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '6GOuV5z0' \
    'p8jaJs2d' \
    --body '{"allowOverdraft": true, "amount": 22, "balanceOrigin": "Other", "reason": "i8fqVPRq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'DebitUserWalletByCurrencyCode' test.out

#- 257 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'NbF5yLnY' \
    'Sa8xFLvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ListUserCurrencyTransactions' test.out

#- 258 CheckWallet
eval_tap 0 258 'CheckWallet # SKIP deprecated' test.out

#- 259 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'YexMMMiD' \
    'Fh5RbW02' \
    --body '{"amount": 10, "expireAt": "1972-11-24T00:00:00Z", "origin": "Twitch", "reason": "z59jHwSD", "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreditUserWallet' test.out

#- 260 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'ZH3k54cE' \
    'xxWKtdGT' \
    --body '{"amount": 100, "walletPlatform": "Other"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PayWithUserWallet' test.out

#- 261 GetUserWallet
eval_tap 0 261 'GetUserWallet # SKIP deprecated' test.out

#- 262 DebitUserWallet
eval_tap 0 262 'DebitUserWallet # SKIP deprecated' test.out

#- 263 DisableUserWallet
eval_tap 0 263 'DisableUserWallet # SKIP deprecated' test.out

#- 264 EnableUserWallet
eval_tap 0 264 'EnableUserWallet # SKIP deprecated' test.out

#- 265 ListUserWalletTransactions
eval_tap 0 265 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 266 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'ListViews' test.out

#- 267 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'FILotv5y' \
    --body '{"displayOrder": 4, "localizations": {"2ApAb7CK": {"description": "t79wAopZ", "localExt": {"L9Cw6K9h": {}, "55mwUvhd": {}, "BOgumV4w": {}}, "longDescription": "Asd4ifGd", "title": "0bkWrlht"}, "fTywRW4f": {"description": "mg6btk3m", "localExt": {"AO4EtB0h": {}, "n2x1oTOX": {}, "5gBQlVDx": {}}, "longDescription": "9neFHWhD", "title": "RJtyYEt7"}, "ygZleAoU": {"description": "uVKneoO1", "localExt": {"0ytPdJ8S": {}, "Y3qoogOx": {}, "oPYvdIBJ": {}}, "longDescription": "YyGURjEj", "title": "nslEYM8n"}}, "name": "gVT1ewVx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CreateView' test.out

#- 268 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'vgAocOqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetView' test.out

#- 269 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'd5v5n7eX' \
    'Co9gZWdx' \
    --body '{"displayOrder": 11, "localizations": {"h3pCRB3i": {"description": "nfEVxArF", "localExt": {"7TB6A6a7": {}, "1zAJpaPe": {}, "udUtKPJU": {}}, "longDescription": "mAvxBxJN", "title": "PlvvYZw4"}, "MWzWFTuN": {"description": "Pf5JCSDy", "localExt": {"Yy4e5qoT": {}, "ZxSoZbQU": {}, "nUxS6m68": {}}, "longDescription": "WL3HDL4y", "title": "x5I0euBs"}, "ccHPA2v9": {"description": "XP9enfEX", "localExt": {"7lloLgIY": {}, "qxFfSNJl": {}, "HCjxLNnY": {}}, "longDescription": "UlGQsFpy", "title": "9ZVlLIFw"}}, "name": "LgT78noo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdateView' test.out

#- 270 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'tfUs9559' \
    'ilm3cauh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'DeleteView' test.out

#- 271 QueryWallets
eval_tap 0 271 'QueryWallets # SKIP deprecated' test.out

#- 272 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 35, "expireAt": "1986-07-03T00:00:00Z", "origin": "Twitch", "reason": "n2z5cnbm", "source": "SELL_BACK"}, "currencyCode": "z2Aa24yB", "userIds": ["Tw3wfNGy", "Bq5bcfPW", "Wf3VujS7"]}, {"creditRequest": {"amount": 32, "expireAt": "1987-12-07T00:00:00Z", "origin": "IOS", "reason": "ZB9YXltC", "source": "PURCHASE"}, "currencyCode": "yBGygWFT", "userIds": ["wPCPKVPl", "OGfFBlu2", "AY3Th5mO"]}, {"creditRequest": {"amount": 48, "expireAt": "1992-11-08T00:00:00Z", "origin": "Twitch", "reason": "AWyDkA5L", "source": "IAP"}, "currencyCode": "oBmSLi0R", "userIds": ["7zDFMoNT", "Y8UjprhC", "QmlS8lMl"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'BulkCredit' test.out

#- 273 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "xhzW6ZM7", "request": {"allowOverdraft": true, "amount": 22, "balanceOrigin": "GooglePlay", "reason": "TVrtVJZV"}, "userIds": ["hxCVdjPu", "J5imghdf", "tJ8dkAVO"]}, {"currencyCode": "Vhjnjd66", "request": {"allowOverdraft": true, "amount": 38, "balanceOrigin": "Nintendo", "reason": "7wbYh7q0"}, "userIds": ["2W8tkTUR", "hQqptccN", "UFmqNc8x"]}, {"currencyCode": "orRls7EC", "request": {"allowOverdraft": true, "amount": 28, "balanceOrigin": "System", "reason": "1cpgvoDB"}, "userIds": ["AZEvbvxq", "gYfLBdGN", "a0K7VUbj"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'BulkDebit' test.out

#- 274 GetWallet
eval_tap 0 274 'GetWallet # SKIP deprecated' test.out

#- 275 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'UnzirnEs' \
    'xSE4vBzG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'SyncOrders' test.out

#- 276 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["7VK8sWEs", "hmZf5fEd", "vjbyJPQ1"], "apiKey": "qdRcJjsm", "authoriseAsCapture": false, "blockedPaymentMethods": ["wlRBQJH6", "fNekhk07", "7gxaj55h"], "clientKey": "uTA6AvmW", "dropInSettings": "0567BFqb", "liveEndpointUrlPrefix": "rPIuxKmB", "merchantAccount": "XLi6Gpnq", "notificationHmacKey": "AeMvg3w0", "notificationPassword": "FQ1520WM", "notificationUsername": "3TxWXSdT", "returnUrl": "iKdva2UR", "settings": "EoBSFtCL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfig' test.out

#- 277 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "y2CqgCG7", "privateKey": "JwJCDqkz", "publicKey": "OdFwLJpI", "returnUrl": "PxzLE1V9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'TestAliPayConfig' test.out

#- 278 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "U1NgpH7O", "secretKey": "c44yjRdf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestCheckoutConfig' test.out

#- 279 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'DebugMatchedPaymentMerchantConfig' test.out

#- 280 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "qZgv34Gq", "clientSecret": "qjelcN0G", "returnUrl": "JmPwUTWM", "webHookId": "x0MiPAjn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestPayPalConfig' test.out

#- 281 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["WIhFrqSn", "4erXEtU1", "CaD8AqsM"], "publishableKey": "CGBNhmUt", "secretKey": "6fzYRn85", "webhookSecret": "brTu8F7c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'TestStripeConfig' test.out

#- 282 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "uCPh1TGZ", "key": "JmgWNHWn", "mchid": "vOBRCt4o", "returnUrl": "nqRo2PnM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestWxPayConfig' test.out

#- 283 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "SRarKg4c", "flowCompletionUrl": "oy3AFpUL", "merchantId": 71, "projectId": 66, "projectSecretKey": "n21Nf2FN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'TestXsollaConfig' test.out

#- 284 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'gDWNC6yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'GetPaymentMerchantConfig' test.out

#- 285 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '7kgTHlrx' \
    --body '{"allowedPaymentMethods": ["KbsV4Xtr", "I7SFBEgk", "wHifMHYI"], "apiKey": "581HbF7f", "authoriseAsCapture": false, "blockedPaymentMethods": ["HofhwyM6", "Bw2sFGQ5", "DQoDwzrK"], "clientKey": "POZZnV3z", "dropInSettings": "R7YxSu6a", "liveEndpointUrlPrefix": "ddocg10H", "merchantAccount": "y9jx7gBH", "notificationHmacKey": "TOHHArjl", "notificationPassword": "d0LnREsr", "notificationUsername": "rB2pJ7V8", "returnUrl": "BSrucjO3", "settings": "zvSM5KeV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateAdyenConfig' test.out

#- 286 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'NHU9GcOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'TestAdyenConfigById' test.out

#- 287 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'vIfcCJt4' \
    --body '{"appId": "U8VSgXoi", "privateKey": "9Fw25b9q", "publicKey": "XzlIK2G6", "returnUrl": "AUjBCdf0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'UpdateAliPayConfig' test.out

#- 288 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'Rp5e5IvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'TestAliPayConfigById' test.out

#- 289 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'uN1oUsCn' \
    --body '{"publicKey": "BmGMx5F6", "secretKey": "EhM3dKvI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'UpdateCheckoutConfig' test.out

#- 290 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'G9MR0hTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'TestCheckoutConfigById' test.out

#- 291 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'Nvq1VR9S' \
    --body '{"clientID": "JUfQEX99", "clientSecret": "6Mh1sQ3D", "returnUrl": "w3uyjgQN", "webHookId": "As9188Qm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'UpdatePayPalConfig' test.out

#- 292 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '3W1De2Mc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'TestPayPalConfigById' test.out

#- 293 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'Gd10wefF' \
    --body '{"allowedPaymentMethodTypes": ["0CJlH55R", "LEgeAsSp", "QdcmGHZu"], "publishableKey": "RVQ8tzwq", "secretKey": "MayP8A3H", "webhookSecret": "GNI3Bfjk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'UpdateStripeConfig' test.out

#- 294 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'Fd6MHo6g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'TestStripeConfigById' test.out

#- 295 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'GQ5mChYo' \
    --body '{"appId": "KD7yqCR0", "key": "3RovQZhw", "mchid": "fjkq9iyT", "returnUrl": "byD3D01t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'UpdateWxPayConfig' test.out

#- 296 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'RpuuyIag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdateWxPayConfigCert' test.out

#- 297 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'SSzEL8H4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestWxPayConfigById' test.out

#- 298 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'euLufhQj' \
    --body '{"apiKey": "2KP3LLxl", "flowCompletionUrl": "9Hs2L2wl", "merchantId": 32, "projectId": 21, "projectSecretKey": "KBVURxHe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'UpdateXsollaConfig' test.out

#- 299 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'fz77a9fn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestXsollaConfigById' test.out

#- 300 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'tCNiHBRU' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'UpdateXsollaUIConfig' test.out

#- 301 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'QueryPaymentProviderConfig' test.out

#- 302 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "Sre5GmZz", "region": "CQwilS3I", "sandboxTaxJarApiToken": "xSjlyvR9", "specials": ["CHECKOUT", "WALLET", "XSOLLA"], "taxJarApiToken": "9Lji2Vc8", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'CreatePaymentProviderConfig' test.out

#- 303 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetAggregatePaymentProviders' test.out

#- 304 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'DebugMatchedPaymentProviderConfig' test.out

#- 305 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetSpecialPaymentProviders' test.out

#- 306 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '8aLjIxVG' \
    --body '{"aggregate": "XSOLLA", "namespace": "jSmHFTtf", "region": "M2mGUUpq", "sandboxTaxJarApiToken": "3ix7Am7W", "specials": ["ALIPAY", "ADYEN", "WALLET"], "taxJarApiToken": "I4ryVDvN", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'UpdatePaymentProviderConfig' test.out

#- 307 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'P31wAkVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'DeletePaymentProviderConfig' test.out

#- 308 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetPaymentTaxConfig' test.out

#- 309 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "75UcmNXK", "taxJarApiToken": "5RqcIo9l", "taxJarEnabled": false, "taxJarProductCodesMapping": {"5z03wxB3": "E9hrE9f9", "COFrOr6w": "JDBwIDsJ", "HNg6TvNG": "jwI4TbTw"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdatePaymentTaxConfig' test.out

#- 310 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'BufUorJo' \
    'uduhCEJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'SyncPaymentOrders' test.out

#- 311 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRootCategories' test.out

#- 312 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'DownloadCategories' test.out

#- 313 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'XiKDIE9Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetCategory' test.out

#- 314 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'ugcupLxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetChildCategories' test.out

#- 315 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'BcRkfhRu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetDescendantCategories' test.out

#- 316 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicListCurrencies' test.out

#- 317 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'GetIAPItemMapping' test.out

#- 318 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'qkOTHSia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItemByAppId' test.out

#- 319 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryItems' test.out

#- 320 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '7oFd1fEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItemBySku' test.out

#- 321 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'DuyAsQGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicBulkGetItems' test.out

#- 322 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["wJR5poI7", "18RQnj4i", "mu6XFfRc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicValidateItemPurchaseCondition' test.out

#- 323 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'WDXhq1Ym' \
    'Geygr2S4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicSearchItems' test.out

#- 324 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Yw8NmPaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetApp' test.out

#- 325 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'eryzX2hO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetItemDynamicData' test.out

#- 326 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'PVVFqVqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetItem' test.out

#- 327 GetPaymentCustomization
eval_tap 0 327 'GetPaymentCustomization # SKIP deprecated' test.out

#- 328 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "jq1iG3Ty", "paymentProvider": "ALIPAY", "returnUrl": "QR0UJMr8", "ui": "ouccGH0B", "zipCode": "4LCe2h0i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentUrl' test.out

#- 329 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'FCCZgFWs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetPaymentMethods' test.out

#- 330 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '5s0nT89A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUnpaidPaymentOrder' test.out

#- 331 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '88GDOUCl' \
    --body '{"token": "GyzYgnYT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'Pay' test.out

#- 332 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'dim6PkRo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckPaymentOrderPaidStatus' test.out

#- 333 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    '3lCzvjHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GetPaymentPublicConfig' test.out

#- 334 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'DHOrSJ1v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetQRCode' test.out

#- 335 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'bB7LRHd9' \
    '6dGLgkfr' \
    'WALLET' \
    'MuSjDHz0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicNormalizePaymentReturnUrl' test.out

#- 336 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'zPWMZQNN' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'GetPaymentTaxValue' test.out

#- 337 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'JqQqhIST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'GetRewardByCode' test.out

#- 338 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'QueryRewards1' test.out

#- 339 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'BT1Gofv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'GetReward1' test.out

#- 340 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicListStores' test.out

#- 341 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicExistsAnyMyActiveEntitlement' test.out

#- 342 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'SuaZ8yCB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 343 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '9TVZnuzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 344 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'vAZJRm71' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 345 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetEntitlementOwnershipToken' test.out

#- 346 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "EC3ENuvD", "language": "pI_iqJE_582", "region": "eWPnVeFd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'SyncTwitchDropsEntitlement' test.out

#- 347 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'y5ezlCU6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetMyWallet' test.out

#- 348 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'SGzkMpTL' \
    --body '{"epicGamesJwtToken": "2wxobjxA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'SyncEpicGameDLC' test.out

#- 349 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'bagqEmXn' \
    --body '{"serviceLabel": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicSyncPsnDlcInventory' test.out

#- 350 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'U2VeV2em' \
    --body '{"serviceLabels": [74, 43, 7]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 351 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'JecJA4sk' \
    --body '{"appId": "qCbPxRkI", "steamId": "AFQh9yDd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'SyncSteamDLC' test.out

#- 352 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'oLE2s7mr' \
    --body '{"xstsToken": "VrmTJwtB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncXboxDLC' test.out

#- 353 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'TzQTrNo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserEntitlements' test.out

#- 354 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'LcWNf7xH' \
    'pi1JZJjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserAppEntitlementByAppId' test.out

#- 355 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'RtCfqDHS' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryUserEntitlementsByAppType' test.out

#- 356 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '7iW7VpCn' \
    'gWAv5DAG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementByItemId' test.out

#- 357 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    '8dPdkKgQ' \
    'qjyzUZR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlementBySku' test.out

#- 358 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'rFIAuALN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicExistsAnyUserActiveEntitlement' test.out

#- 359 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'hNCyscsM' \
    'BRLsWadk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 360 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '2OQ421q7' \
    'Nb1vrKth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 361 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'VvU5on06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 362 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '5ApCkVN3' \
    'QchuQ6pn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 363 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'txB648ss' \
    '7rBnvQHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserEntitlement' test.out

#- 364 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'M8gSdIyb' \
    'KUByHBzf' \
    --body '{"options": ["vgtRTPPz", "wJmKaLCx", "3gcidEAL"], "requestId": "We6RG5wW", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicConsumeUserEntitlement' test.out

#- 365 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'MnIr4b7j' \
    'yfL3zMkk' \
    --body '{"requestId": "lGCPISls", "useCount": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicSellUserEntitlement' test.out

#- 366 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '3dUwWHhQ' \
    --body '{"code": "W3I1y9tj", "language": "XmNx-QnMA-831", "region": "yBIQumxD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicRedeemCode' test.out

#- 367 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'fAxNqCUt' \
    --body '{"excludeOldTransactions": false, "language": "amHn_YBtc", "productId": "Lgohp8By", "receiptData": "Ti2F6AyU", "region": "X8w77riP", "transactionId": "lPgJcLbe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicFulfillAppleIAPItem' test.out

#- 368 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Qf9MICxX' \
    --body '{"epicGamesJwtToken": "7xKyCfgw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGamesInventory' test.out

#- 369 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'SPz14asy' \
    --body '{"autoAck": false, "language": "GN", "orderId": "pagfP0Ff", "packageName": "OMBOpeQT", "productId": "4zYIbU4i", "purchaseTime": 39, "purchaseToken": "mLyX46Al", "region": "t08rrnG8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicFulfillGoogleIAPItem' test.out

#- 370 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'y2ScXkwj' \
    --body '{"currencyCode": "pAp82pGc", "price": 0.3780224656204184, "productId": "vXaG9LzH", "serviceLabel": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicReconcilePlayStationStore' test.out

#- 371 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'kRvdPR8g' \
    --body '{"currencyCode": "x2rX5dck", "price": 0.9834397731297553, "productId": "NFKPgT6L", "serviceLabels": [9, 37, 79]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 372 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'F3f5KLtp' \
    --body '{"appId": "TSsPMGDZ", "currencyCode": "TOwEP5Bh", "language": "HE-jU", "price": 0.1007760877688142, "productId": "gmhfAzVd", "region": "NYP7Ao1z", "steamId": "7FeJM2fW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamInventory' test.out

#- 373 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'XGk7JObS' \
    --body '{"gameId": "HksRkabp", "language": "EW-PyTz_Nu", "region": "O0JK4dP1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncTwitchDropsEntitlement1' test.out

#- 374 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'aZFiSkmh' \
    --body '{"currencyCode": "wVVMGkXN", "price": 0.36943329460515617, "productId": "MYwFyljy", "xstsToken": "5bYQdQ87"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncXboxInventory' test.out

#- 375 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'hUHA0FJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicQueryUserOrders' test.out

#- 376 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'wP8GslMp' \
    --body '{"currencyCode": "x3m7lEXT", "discountedPrice": 25, "ext": {"dezbmf39": {}, "2ersoZ2K": {}, "bMb5jal0": {}}, "itemId": "ruZmBXlG", "language": "PWPg-kVhF", "price": 30, "quantity": 92, "region": "5wSDHnya", "returnUrl": "bk493I3p", "sectionId": "vHKDaWhT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCreateUserOrder' test.out

#- 377 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'N1qyxpUz' \
    'WIZWJTDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserOrder' test.out

#- 378 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'Wguhujw1' \
    'EoR58uCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelUserOrder' test.out

#- 379 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'ldefonHJ' \
    'ZAiX4abm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserOrderHistories' test.out

#- 380 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'qqi90KTW' \
    'wZk0HGeJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicDownloadUserOrderReceipt' test.out

#- 381 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'NaBjVdMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetPaymentAccounts' test.out

#- 382 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '5kMzKycY' \
    'paypal' \
    '2jHbAPNG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicDeletePaymentAccount' test.out

#- 383 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'Invbnf4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicListActiveSections' test.out

#- 384 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'wKFFLoGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserSubscriptions' test.out

#- 385 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'gX4gQWyZ' \
    --body '{"currencyCode": "ocvYfr0R", "itemId": "nl02R1IV", "language": "yOpA", "region": "KS71Xs1B", "returnUrl": "phA9BXpK", "source": "YgF9Ouig"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicSubscribeSubscription' test.out

#- 386 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'DP0Vjmy7' \
    'j2BrdCAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 387 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '3slCwaBq' \
    'HpE55sjx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserSubscription' test.out

#- 388 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'BGijw0dQ' \
    'tZNonMrP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicChangeSubscriptionBillingAccount' test.out

#- 389 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'kzUe9Sgl' \
    'AJGyZS0I' \
    --body '{"immediate": true, "reason": "FevJiT98"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicCancelSubscription' test.out

#- 390 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'HUBp56Q4' \
    'WETxtGMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserSubscriptionBillingHistories' test.out

#- 391 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '5tPKPuK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicListViews' test.out

#- 392 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'K4PiMDTR' \
    '7LxihuOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetWallet' test.out

#- 393 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '57io0d9d' \
    'G3yzaNbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicListUserWalletTransactions' test.out

#- 394 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'QueryItems1' test.out

#- 395 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'ImportStore1' test.out

#- 396 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'eASX83SL' \
    --body '{"itemIds": ["iIbAP2qy", "UnHnfrEd", "DfY4TTxu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
