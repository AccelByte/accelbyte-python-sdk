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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["7eHpzSn3", "ZPUdc0qh", "Oaiw9B0D"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["1Jub74CU", "lFHHdgs2", "kNmKJfh5"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["jJCSQT27", "NPX2bOIt", "RMvqtlB2"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["xkT1X68c", "mDc3fxU8", "MyKrQpM4"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["IPUvmEej", "naLpUKp4", "4YUDjasW"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["TvhZNkSQ", "MNqq98Sj", "5MXbN9oC"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["Qgb3boLQ", "Q1MzH7Qm", "8bwbmXgd"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["3EeERmDn", "yeFoF7VS", "CcxvONZm"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["qU6YE3p4", "UhAEtrmj", "lSck0ZHn"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["YReVHQip", "cCx9Zw5D", "2L7vIYhG"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["j3oZk03Q", "ApflxqMr", "S48l9lyN"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "seasonType": "PASS", "sku": "1P1ktfIo", "stackable": true, "status": "ACTIVE", "tags": ["xoRDFuuu", "JcHm3SZL", "mv9gsR5c"], "targetCurrencyCode": "ySj29a9L", "targetItemId": "JE8HoRS1", "targetNamespace": "X2PFAAMw", "thumbnailUrl": "zHPxB1Us", "title": "kYs4Yw20", "updatedAt": "1986-01-04T00:00:00Z", "useCount": 84}, "namespace": "ZSWMiVi1", "order": {"currency": {"currencyCode": "0sG6vxkf", "currencySymbol": "UcmqRRbc", "currencyType": "REAL", "decimals": 56, "namespace": "J5i0EeDx"}, "ext": {"OgBnhhqE": {}, "lIaDml48": {}, "wdNFLTm5": {}}, "free": false}, "source": "OTHER"}, "script": "0x9WT0Gf", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script '2rtOa4EX' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'sXzOXQAk' --body '{"grantDays": "4mqrxzTt"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'uLl4XlbG' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'L8QOxtjz' --body '{"grantDays": "m8y2wNhm"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "woYZyI4E", "dryRun": false, "fulfillmentUrl": "ZKBcYrCE", "itemType": "LOOTBOX", "purchaseConditionUrl": "reNDUWeh"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'INGAMEITEM' --login_with_auth "Bearer foo"
platform-get-item-type-config '40NLRc6m' --login_with_auth "Bearer foo"
platform-update-item-type-config '8heKnWhz' --body '{"clazz": "fe2Nubeo", "dryRun": false, "fulfillmentUrl": "FeIaFQCY", "purchaseConditionUrl": "oDPICpnd"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'uEEQlULd' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "Jz4mnRBk", "items": [{"extraSubscriptionDays": 78, "itemId": "Acf80zfF", "itemName": "yabWAgIU", "quantity": 88}, {"extraSubscriptionDays": 16, "itemId": "kloqxM3g", "itemName": "pwxcfMy9", "quantity": 100}, {"extraSubscriptionDays": 53, "itemId": "6GLbc0Na", "itemName": "KDUL3sa1", "quantity": 22}], "maxRedeemCountPerCampaignPerUser": 98, "maxRedeemCountPerCode": 20, "maxRedeemCountPerCodePerUser": 68, "maxSaleCount": 51, "name": "dQBHO86I", "redeemEnd": "1976-08-14T00:00:00Z", "redeemStart": "1978-03-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["etU4RwTq", "UXlTDBzO", "uYsaZA2y"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'Y3snn2Zk' --login_with_auth "Bearer foo"
platform-update-campaign 'P7cFdP43' --body '{"description": "e5dC9XIB", "items": [{"extraSubscriptionDays": 43, "itemId": "bRVhyaKw", "itemName": "wrAP2aMl", "quantity": 41}, {"extraSubscriptionDays": 93, "itemId": "WtjCtoYe", "itemName": "tOO847g8", "quantity": 82}, {"extraSubscriptionDays": 29, "itemId": "udOfjnCu", "itemName": "HZ3c46Ij", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 4, "maxRedeemCountPerCode": 0, "maxRedeemCountPerCodePerUser": 87, "maxSaleCount": 99, "name": "3YvYmmDg", "redeemEnd": "1973-05-08T00:00:00Z", "redeemStart": "1997-07-05T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["uvUYTZBR", "ujIUE1Tq", "5jyAZvkR"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'CMNFIurj' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'h2imdb4r' --body '{"categoryPath": "bkXj0Zws", "localizationDisplayNames": {"VC0gL97Z": "VJSPqJiw", "v1qlYB1R": "SKs6gQxC", "3Gb7S0o4": "zGYY7KQI"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category '1AeFgPqa' --login_with_auth "Bearer foo"
platform-update-category 'Okvo1aol' 'B4lkKB4E' --body '{"localizationDisplayNames": {"YOkQ1jMD": "3cym8xIf", "kOVW2grR": "EOLx0KOw", "w3HICQLf": "l7MUBG7q"}}' --login_with_auth "Bearer foo"
platform-delete-category 'tPu64yAt' 'URKLRkb7' --login_with_auth "Bearer foo"
platform-get-child-categories '38HGS6rD' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'gMdIIlhS' --login_with_auth "Bearer foo"
platform-query-codes '1fSiM933' --login_with_auth "Bearer foo"
platform-create-codes '1m7Ta1Ps' --body '{"quantity": 74}' --login_with_auth "Bearer foo"
platform-download 'JE5Vs2Gc' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'yomQoIXi' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'mBJehyxl' --login_with_auth "Bearer foo"
platform-query-redeem-history 'NsjUgxBk' --login_with_auth "Bearer foo"
platform-get-code 'F6wFPoJe' --login_with_auth "Bearer foo"
platform-disable-code 'QediogEh' --login_with_auth "Bearer foo"
platform-enable-code 'hM2rIizG' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "dKvOPdq5"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "xrgxSmy1", "currencySymbol": "DN9LFkYW", "currencyType": "VIRTUAL", "decimals": 61, "localizationDescriptions": {"UiGKXVFC": "mpo6sPwV", "OEDSJsEK": "5QpNhlI2", "iS5EpGhh": "vXYck0up"}}' --login_with_auth "Bearer foo"
platform-update-currency 'MzUYnb76' --body '{"localizationDescriptions": {"tFkEORV3": "bu1bNCtX", "7W40V6Do": "5sYadCCF", "rHHC3DpZ": "xkrQDXuN"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'FviMarv8' --login_with_auth "Bearer foo"
platform-get-currency-config 'mnfHK8CC' --login_with_auth "Bearer foo"
platform-get-currency-summary 'mE2lPnsb' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "D3SGEdlw", "rewards": [{"currency": {"currencyCode": "uUccE536", "namespace": "ugBp3HBv"}, "item": {"itemId": "epnDCjgy", "itemSku": "JlXe36mg", "itemType": "WjLfFmte"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "e9nzJ6fH", "namespace": "24T805tV"}, "item": {"itemId": "g8JqU0jZ", "itemSku": "pjvsugAO", "itemType": "S7u8RiWy"}, "quantity": 8, "type": "ITEM"}, {"currency": {"currencyCode": "L4bTxBmZ", "namespace": "jdrrIxsB"}, "item": {"itemId": "0NRsB1fP", "itemSku": "qqRRulpq", "itemType": "pymDkQht"}, "quantity": 36, "type": "CURRENCY"}]}, {"id": "HWwRVnwV", "rewards": [{"currency": {"currencyCode": "BOqOHi8p", "namespace": "WGd1juYh"}, "item": {"itemId": "iqjRJOqB", "itemSku": "5F93zFQb", "itemType": "JndUDpdO"}, "quantity": 82, "type": "CURRENCY"}, {"currency": {"currencyCode": "M9zVrjfG", "namespace": "XZnqAQUo"}, "item": {"itemId": "Y1GjlIIk", "itemSku": "0iKoTTS1", "itemType": "j02o7JjT"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "U5JX8ccL", "namespace": "jMXJRk0e"}, "item": {"itemId": "aKQDOJvr", "itemSku": "TefglSs6", "itemType": "g4iY9u02"}, "quantity": 0, "type": "CURRENCY"}]}, {"id": "CNYIWekp", "rewards": [{"currency": {"currencyCode": "18lOC3mN", "namespace": "qF7Bl0Lc"}, "item": {"itemId": "ghVHfPEs", "itemSku": "pxwhRON0", "itemType": "bc1eMbEI"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "FJ1KesKo", "namespace": "ELCpobBE"}, "item": {"itemId": "G8X645xp", "itemSku": "dXpai0rY", "itemType": "aT5hOPja"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "3H0tYigh", "namespace": "U0VUfcYH"}, "item": {"itemId": "JbBfAKSi", "itemSku": "PW3VgsZX", "itemType": "iR1DJ7HV"}, "quantity": 99, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"MkNSawQU": "WDFJvJBW", "ic7UkBeI": "XuqDuAXI", "66bQ71w0": "deoV9Lx5"}}, {"platform": "STEAM", "platformDlcIdMap": {"DA1l2Xcr": "ciYNEzvS", "ZIPkhSgO": "Rcz5S5Bv", "mgBLxh4i": "jFnE3Tam"}}, {"platform": "STEAM", "platformDlcIdMap": {"Nzy1adnS": "KOLFKx1d", "X4LuWJu3": "pDMUAeeZ", "97SBROPY": "uG6XqP6o"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'o7G73zdx' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "TgOfnwId", "password": "lNa29fDL"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "h741IslK"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "HzGlLKWU", "serviceAccountId": "tDQs61OQ"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "AoxyyQpR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"CiiPDGQh": "NPEwiJCf", "2XJVrlzq": "Qls1ozhL", "VA3kE8jK": "vgatOEBM"}}, {"itemIdentity": "70TdlNBJ", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Ompu1VCa": "rzBsV6xn", "Z5Jrzzjr": "caug6CWV", "G8SWP3gl": "U6muswVJ"}}, {"itemIdentity": "nNnN7kAa", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"j0riFc5H": "THQIoVsG", "o7dwV9DB": "qFKHQkET", "JyTlUrwD": "TnoujQD4"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "IEiH9Z5q"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "Xn3aoRtl", "publisherAuthenticationKey": "qOECohVi"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "HA5CzgFS", "clientSecret": "y8X1A3Pr", "organizationId": "Ifapq5AA"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "eMe4L3mD"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'WORBVXTI' 'IJM9XsYI' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'IZxiXNMR' '9BgaWcFX' --login_with_auth "Bearer foo"
platform-sync-in-game-item '3SUBhyoT' --body '{"categoryPath": "sMWPAxUM", "targetItemId": "kawaGpAy", "targetNamespace": "rIwMif3B"}' --login_with_auth "Bearer foo"
platform-create-item 'OdkocVTd' --body '{"appId": "4BxqGWV6", "appType": "DLC", "baseAppId": "BNXzAFdO", "boothName": "0Khqf6ki", "categoryPath": "TdSGv2LF", "clazz": "jAKY7Cbg", "displayOrder": 37, "entitlementType": "DURABLE", "ext": {"WqFWZX7k": {}, "PBom8F9G": {}, "LLTG8phc": {}}, "features": ["3n4iLoIl", "lKlpO2pq", "iXJF3WGR"], "images": [{"as": "aoQomSJC", "caption": "4DdrKF7S", "height": 96, "imageUrl": "TBcrM8rG", "smallImageUrl": "0rH0zcsw", "width": 46}, {"as": "7PpUlcIW", "caption": "32iK7MGt", "height": 77, "imageUrl": "ixY5rA1W", "smallImageUrl": "oVeJIePF", "width": 21}, {"as": "ZrQzP4zv", "caption": "tdxdbZUp", "height": 7, "imageUrl": "WCYzo8yO", "smallImageUrl": "2KTK9tmm", "width": 83}], "itemIds": ["6FEO65Rb", "3z7CYLM8", "IlsHqffn"], "itemQty": {"rfsGlfPa": 14, "KBwa3Ddb": 13, "0ufPpzwj": 99}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"GIFmlVf4": {"description": "jvapseE9", "localExt": {"LN9bvhOr": {}, "HflIOd6X": {}, "3viLvtEk": {}}, "longDescription": "4mTIpUA9", "title": "gxo8SV38"}, "nEhoXmM2": {"description": "W7l6jHMA", "localExt": {"2rG3nako": {}, "pAywelu0": {}, "1nryEJ0N": {}}, "longDescription": "qoTow0qi", "title": "OiC4j0ik"}, "tm0ZPLkL": {"description": "Osp0LZ5n", "localExt": {"jN86Hl8k": {}, "UXzt6bSc": {}, "6bWvgpVy": {}}, "longDescription": "W9dD1kOm", "title": "vrAejcq2"}}, "lootBoxConfig": {"rewardCount": 78, "rewards": [{"lootBoxItems": [{"count": 100, "itemId": "gkQuaS7R", "itemSku": "Bx3vim02", "itemType": "jBOxrZDy"}, {"count": 45, "itemId": "1qx8CzPM", "itemSku": "L52faXUr", "itemType": "9Sk4lq2f"}, {"count": 1, "itemId": "sflhjbng", "itemSku": "JOUn18G5", "itemType": "MlfDTk8a"}], "name": "G40Nlncc", "odds": 0.06824383208240015, "type": "REWARD_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 91, "itemId": "XrKEDpEY", "itemSku": "8VnocGAj", "itemType": "ci0V3tBf"}, {"count": 65, "itemId": "jnHGKXph", "itemSku": "n50c9tNL", "itemType": "DljhZ2jx"}, {"count": 76, "itemId": "AacR0LgB", "itemSku": "5BUXvjcu", "itemType": "2s6w3Vif"}], "name": "nKqmTSoG", "odds": 0.5331143500787638, "type": "REWARD_GROUP", "weight": 62}, {"lootBoxItems": [{"count": 66, "itemId": "fY6QAYn6", "itemSku": "WQ5UBEU1", "itemType": "QAOHfZiG"}, {"count": 15, "itemId": "VEGVxYhe", "itemSku": "R3j5mNZ6", "itemType": "vwv7K8As"}, {"count": 45, "itemId": "xefTYKhu", "itemSku": "xaEc7M4P", "itemType": "7UckSC6e"}], "name": "PeN8i4Gr", "odds": 0.5027672399023325, "type": "REWARD", "weight": 43}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 48, "name": "3BAHZ7c5", "optionBoxConfig": {"boxItems": [{"count": 5, "itemId": "q7akMpcm", "itemSku": "nnx6RVBr", "itemType": "op9v7aZK"}, {"count": 76, "itemId": "h65hbN15", "itemSku": "zfQSfQrt", "itemType": "fF3TQN0O"}, {"count": 4, "itemId": "Q40kepEa", "itemSku": "C4dfiOMZ", "itemType": "fEhHr39p"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 50, "fixedTrialCycles": 65, "graceDays": 95}, "regionData": {"O3Zvc1BZ": [{"currencyCode": "G99Lyvfv", "currencyNamespace": "HEsJKQQe", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1995-08-05T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1972-11-12T00:00:00Z", "discountedPrice": 16, "expireAt": "1995-04-24T00:00:00Z", "price": 29, "purchaseAt": "1971-08-09T00:00:00Z", "trialPrice": 28}, {"currencyCode": "4lONDDwM", "currencyNamespace": "vgI0HlyP", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1982-09-04T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1991-08-08T00:00:00Z", "discountedPrice": 17, "expireAt": "1983-05-31T00:00:00Z", "price": 34, "purchaseAt": "1987-02-02T00:00:00Z", "trialPrice": 75}, {"currencyCode": "xG2mXEQd", "currencyNamespace": "bzIVy8al", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1972-03-27T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1975-09-29T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-12-28T00:00:00Z", "price": 68, "purchaseAt": "1981-01-26T00:00:00Z", "trialPrice": 10}], "FTYnPkmS": [{"currencyCode": "u4PWam1j", "currencyNamespace": "xR7SETWj", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1973-02-20T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1976-01-19T00:00:00Z", "discountedPrice": 99, "expireAt": "1985-02-10T00:00:00Z", "price": 51, "purchaseAt": "1974-01-23T00:00:00Z", "trialPrice": 43}, {"currencyCode": "vU4PbmRD", "currencyNamespace": "crg0DjQj", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1990-08-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1996-06-19T00:00:00Z", "discountedPrice": 44, "expireAt": "1982-02-08T00:00:00Z", "price": 0, "purchaseAt": "1994-09-25T00:00:00Z", "trialPrice": 26}, {"currencyCode": "1m2lJFRZ", "currencyNamespace": "3ZprZ60z", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1977-03-03T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1983-10-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1977-03-02T00:00:00Z", "price": 29, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 93}], "mlTIKVow": [{"currencyCode": "i0RY2VN4", "currencyNamespace": "ZONJREdU", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1980-03-05T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-08-09T00:00:00Z", "discountedPrice": 61, "expireAt": "1983-11-21T00:00:00Z", "price": 40, "purchaseAt": "1991-02-23T00:00:00Z", "trialPrice": 25}, {"currencyCode": "nke4aknc", "currencyNamespace": "w7wu9TmX", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1989-03-17T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-05-24T00:00:00Z", "discountedPrice": 84, "expireAt": "1996-05-20T00:00:00Z", "price": 64, "purchaseAt": "1983-02-24T00:00:00Z", "trialPrice": 60}, {"currencyCode": "Ns8eLzYE", "currencyNamespace": "vwSWTaLQ", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1972-03-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-06-22T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-10-25T00:00:00Z", "price": 18, "purchaseAt": "1973-02-28T00:00:00Z", "trialPrice": 38}]}, "seasonType": "PASS", "sku": "pKPlXn77", "stackable": true, "status": "INACTIVE", "tags": ["xBGtEJIY", "KtezapPr", "2QEPx3zT"], "targetCurrencyCode": "ppuUSsKo", "targetNamespace": "Hw2hyd12", "thumbnailUrl": "uSE7BEv3", "useCount": 1}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '2MVUGKSZ' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku '4GcLkt4p' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'K32sJxlZ' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'cCTpTdRt' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'CHvuk6B6' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'XTmSLyn5' --body '{"itemIds": ["0sigBVZx", "iKdV57Gv", "Ryd9UuL0"]}' --login_with_auth "Bearer foo"
platform-search-items '2Le8HSCs' 'lsDd4M1F' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '5qRIblS7' --login_with_auth "Bearer foo"
platform-update-item 'Nz81GRaz' 'PAANjfBo' --body '{"appId": "ldFOyqA2", "appType": "DEMO", "baseAppId": "m51T107X", "boothName": "IZRZ7tZd", "categoryPath": "Is0xf4cz", "clazz": "dt7zqmSK", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"EQlVcx6G": {}, "qsBq8vdh": {}, "WVnuYLgp": {}}, "features": ["myuViB9k", "ZehK0G2n", "RTcSQdTn"], "images": [{"as": "NYGeAfYF", "caption": "G3wSkHKu", "height": 10, "imageUrl": "o8Zkgk0j", "smallImageUrl": "S6rDWUwf", "width": 16}, {"as": "yuGz6Llx", "caption": "Hv8Swyag", "height": 31, "imageUrl": "vDJ3w3UN", "smallImageUrl": "gIGj2jZt", "width": 63}, {"as": "tcvNedgS", "caption": "1fUfKmih", "height": 60, "imageUrl": "0sZoFS6x", "smallImageUrl": "COWMpyh9", "width": 32}], "itemIds": ["iGTnwyEw", "6hIWDZrp", "P7rz3ISW"], "itemQty": {"510kHr4i": 38, "oIFeouC2": 25, "nuHCXWfw": 27}, "itemType": "CODE", "listable": true, "localizations": {"GVE9sJ4N": {"description": "pUtKp6M9", "localExt": {"I6nEwnZh": {}, "sjwJeGwa": {}, "PSDMZz95": {}}, "longDescription": "OYKiqaZD", "title": "63xe5rru"}, "JVfLGea0": {"description": "ZtlzUcuH", "localExt": {"AXz0UV31": {}, "MfuGaXsA": {}, "uGsZaSHe": {}}, "longDescription": "vO0TQNEI", "title": "3kfabxJW"}, "WSI1ECUo": {"description": "1NPpeFhU", "localExt": {"ztXDgB7n": {}, "4C97uAPP": {}, "8PATLpUp": {}}, "longDescription": "xeJlsBJT", "title": "6Hh3OMjA"}}, "lootBoxConfig": {"rewardCount": 18, "rewards": [{"lootBoxItems": [{"count": 16, "itemId": "q2mK8lbS", "itemSku": "EEelxnb5", "itemType": "QxWG2HFn"}, {"count": 23, "itemId": "X4N1LQZm", "itemSku": "B61JMdtw", "itemType": "CVUrYQue"}, {"count": 93, "itemId": "4dwmbwFE", "itemSku": "nAZaWsQJ", "itemType": "tRYoagRJ"}], "name": "K5PX9UcO", "odds": 0.34948478416352957, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 85, "itemId": "95XhnUcv", "itemSku": "WB28Mpus", "itemType": "uhhDJ5sl"}, {"count": 51, "itemId": "6KNzjf00", "itemSku": "5CXNGehQ", "itemType": "2aTjTDfK"}, {"count": 65, "itemId": "hCbkXX26", "itemSku": "uEdCfQaM", "itemType": "AQuTKfC0"}], "name": "I2kNjCMD", "odds": 0.310587965313152, "type": "REWARD", "weight": 38}, {"lootBoxItems": [{"count": 79, "itemId": "2DbPcaoM", "itemSku": "dtRLTmSv", "itemType": "TkQQgB7e"}, {"count": 48, "itemId": "vxuJlhXb", "itemSku": "WhbwPwTo", "itemType": "C6knjVwV"}, {"count": 27, "itemId": "6IewOXE2", "itemSku": "AkCh3QIZ", "itemType": "sUf8lGFX"}], "name": "cmwTERHc", "odds": 0.1788189065875384, "type": "REWARD_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 59, "maxCountPerUser": 48, "name": "jYwWkLob", "optionBoxConfig": {"boxItems": [{"count": 12, "itemId": "rNdb8Otq", "itemSku": "6j1mqUav", "itemType": "7k05HAQl"}, {"count": 41, "itemId": "kMBsznlB", "itemSku": "UqnLT4Ab", "itemType": "GptKaWNv"}, {"count": 86, "itemId": "IYWOaNds", "itemSku": "immkW2mi", "itemType": "H3xRHAKy"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 94, "graceDays": 38}, "regionData": {"kaXZ7vmi": [{"currencyCode": "Ed0JPxVy", "currencyNamespace": "QpshaDwN", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-01-11T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-10-16T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-11-14T00:00:00Z", "price": 5, "purchaseAt": "1984-11-13T00:00:00Z", "trialPrice": 97}, {"currencyCode": "fVXe0GZe", "currencyNamespace": "MgsRsmH1", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1992-04-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1975-04-12T00:00:00Z", "discountedPrice": 8, "expireAt": "1976-10-07T00:00:00Z", "price": 85, "purchaseAt": "1976-10-24T00:00:00Z", "trialPrice": 39}, {"currencyCode": "TPOlhTtS", "currencyNamespace": "iZNCxuog", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1973-11-08T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1989-01-30T00:00:00Z", "discountedPrice": 70, "expireAt": "1982-08-15T00:00:00Z", "price": 14, "purchaseAt": "1994-02-15T00:00:00Z", "trialPrice": 86}], "00jr9b8M": [{"currencyCode": "uYmmeKTm", "currencyNamespace": "BNvGYxEQ", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1973-02-07T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1971-07-03T00:00:00Z", "discountedPrice": 62, "expireAt": "1978-01-31T00:00:00Z", "price": 66, "purchaseAt": "1973-09-23T00:00:00Z", "trialPrice": 30}, {"currencyCode": "6xj6wySo", "currencyNamespace": "ltDxsbzx", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1977-01-22T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-10-22T00:00:00Z", "discountedPrice": 6, "expireAt": "1986-03-05T00:00:00Z", "price": 11, "purchaseAt": "1994-03-20T00:00:00Z", "trialPrice": 30}, {"currencyCode": "6YApGJ9u", "currencyNamespace": "fwLYkqIg", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1985-02-16T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1981-05-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1993-05-19T00:00:00Z", "price": 35, "purchaseAt": "1988-07-20T00:00:00Z", "trialPrice": 53}], "iEtOAbpe": [{"currencyCode": "UNf26Uqk", "currencyNamespace": "CfgCUYBn", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1975-01-02T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1991-08-14T00:00:00Z", "discountedPrice": 23, "expireAt": "1973-03-24T00:00:00Z", "price": 85, "purchaseAt": "1987-04-08T00:00:00Z", "trialPrice": 72}, {"currencyCode": "XEwP2b4g", "currencyNamespace": "d3xOeii8", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1977-06-30T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-05-30T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-08-25T00:00:00Z", "price": 32, "purchaseAt": "1984-08-11T00:00:00Z", "trialPrice": 48}, {"currencyCode": "rVUxmDOj", "currencyNamespace": "3cvRFaTC", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1995-05-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1991-09-25T00:00:00Z", "discountedPrice": 94, "expireAt": "1987-08-21T00:00:00Z", "price": 50, "purchaseAt": "1977-02-14T00:00:00Z", "trialPrice": 10}]}, "seasonType": "TIER", "sku": "COyMvczg", "stackable": true, "status": "ACTIVE", "tags": ["9TsvcMQ7", "dBsaIecR", "qxLGeMvr"], "targetCurrencyCode": "xIsZvD6r", "targetNamespace": "mzVr5XT1", "thumbnailUrl": "Nxw0v1dM", "useCount": 87}' --login_with_auth "Bearer foo"
platform-delete-item 'Cy0Afgc0' --login_with_auth "Bearer foo"
platform-acquire-item '50XIZRW4' --body '{"count": 2, "orderNo": "1e94mQjV"}' --login_with_auth "Bearer foo"
platform-get-app 'OOBnIWhu' --login_with_auth "Bearer foo"
platform-update-app 'nElqZUod' 'p3IhtCSH' --body '{"carousel": [{"alt": "y1ei1fIr", "previewUrl": "PvfHnRN0", "thumbnailUrl": "6EjRwEQl", "type": "video", "url": "apJRfk4f", "videoSource": "youtube"}, {"alt": "Zcw1pEHA", "previewUrl": "yNFxcVTK", "thumbnailUrl": "uAQTGh5B", "type": "video", "url": "9IPmmsLm", "videoSource": "vimeo"}, {"alt": "tsUuYo5p", "previewUrl": "8ED5QZAu", "thumbnailUrl": "fwNa8lzf", "type": "image", "url": "FCrn7djj", "videoSource": "vimeo"}], "developer": "lVHY1AHw", "forumUrl": "F3vGoav7", "genres": ["Sports", "Adventure", "Sports"], "localizations": {"isql14mU": {"announcement": "HVbMPimN", "slogan": "hcZsU3VA"}, "dMDcb4ql": {"announcement": "kiFAamqv", "slogan": "ZI2KwjqP"}, "BiWXade4": {"announcement": "1s3rH34m", "slogan": "B2yPlRpW"}}, "platformRequirements": {"jmHZAAvK": [{"additionals": "TH8MuqIg", "directXVersion": "0Czkguwu", "diskSpace": "JCW7EEFB", "graphics": "67AODbi9", "label": "BzupBsFp", "osVersion": "Yc77GtRU", "processor": "cCFeY5g4", "ram": "XgBsbfzq", "soundCard": "xBPNe8ae"}, {"additionals": "1Il4aAtE", "directXVersion": "bu4IjGdq", "diskSpace": "thRxTjQ7", "graphics": "gkZEY8rG", "label": "0q0Q2Qd2", "osVersion": "JzRbkF2I", "processor": "03dIjvBb", "ram": "A6bfbYaJ", "soundCard": "CJjfk2TU"}, {"additionals": "vn95FhO7", "directXVersion": "VW3mbDVM", "diskSpace": "Du87t0ld", "graphics": "Wf7iSGIi", "label": "KFtWtn4Y", "osVersion": "r2svKM6p", "processor": "qLGZ0TBu", "ram": "jELAUK6m", "soundCard": "Q5iZgbww"}], "m5iGzXtc": [{"additionals": "knrgidKu", "directXVersion": "pvXO6aj4", "diskSpace": "hCmTC34j", "graphics": "xW4pIDwd", "label": "qXpmRmut", "osVersion": "9H9XyWI8", "processor": "bp8fQxRu", "ram": "X91uYmtr", "soundCard": "HJbEGTUj"}, {"additionals": "7YjERL1r", "directXVersion": "EQG02zcc", "diskSpace": "A8wvLsWU", "graphics": "Nd6lPKvq", "label": "DejvqklT", "osVersion": "SvDwuOrP", "processor": "9lzpiX0V", "ram": "uFpZum7i", "soundCard": "zxe7NPzj"}, {"additionals": "Oa8E7wY7", "directXVersion": "6PxLv9HB", "diskSpace": "EUe89AwE", "graphics": "w1HO4FnK", "label": "tx4XLKAm", "osVersion": "lDr19uJ3", "processor": "nq6VerzV", "ram": "CcI8y3Cz", "soundCard": "0YqCKUh5"}], "RD9vNAp4": [{"additionals": "jinFpnQ5", "directXVersion": "xF9wwbvM", "diskSpace": "ZyeDeRnV", "graphics": "fPUa6xVV", "label": "Bcq3wZpF", "osVersion": "IYeAg79H", "processor": "cLJXJ7mp", "ram": "VI6eTYAj", "soundCard": "dPlCiQQC"}, {"additionals": "35cj4KyO", "directXVersion": "VgvnWbfR", "diskSpace": "JtsB7cUQ", "graphics": "Z2QUAxJr", "label": "INPXppPN", "osVersion": "O3AfmXcg", "processor": "wC3IN6tv", "ram": "KgLB9QmJ", "soundCard": "IOq9dP5s"}, {"additionals": "zG71utjs", "directXVersion": "Q4CrRb9g", "diskSpace": "UCeVz7fW", "graphics": "bZIdhevf", "label": "ZvyV7Aco", "osVersion": "dcZwKjYD", "processor": "dmJOlzwm", "ram": "9Su4FnS9", "soundCard": "8QqftSjq"}]}, "platforms": ["Android", "Linux", "MacOS"], "players": ["CrossPlatformMulti", "LocalCoop", "MMO"], "primaryGenre": "RPG", "publisher": "Lil8wj9c", "releaseDate": "1990-11-15T00:00:00Z", "websiteUrl": "yyJsbGpO"}' --login_with_auth "Bearer foo"
platform-disable-item '6JgehDJx' 'EN7JlZc8' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'LMq1o2jZ' --login_with_auth "Bearer foo"
platform-enable-item 'Wu4yA3r0' 'u4q1bTHX' --login_with_auth "Bearer foo"
platform-feature-item 'IjfJKyFl' 'M0u1uuoV' 'dn9yVoSl' --login_with_auth "Bearer foo"
platform-defeature-item 'KNchPHNL' '4X3LLaGP' 'GdqLE8So' --login_with_auth "Bearer foo"
platform-get-locale-item 'hhhuiTnJ' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'arYYkHBD' 'dSzBXdxa' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 85, "comparison": "isLessThan", "name": "mv34h6T7", "predicateType": "SeasonPassPredicate", "value": "uxLvPuWY", "values": ["vE3fsNy9", "Z9OhxXvC", "p9y7fLD2"]}, {"anyOf": 34, "comparison": "includes", "name": "BsmAUrD9", "predicateType": "SeasonTierPredicate", "value": "T1WsRNMZ", "values": ["MNa8vVe4", "MHX6AgMe", "cA92hzC7"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "90AyyUJy", "predicateType": "SeasonPassPredicate", "value": "n8D2eLMe", "values": ["3lt9qfx2", "9FK6e0Mr", "UDcgVE7L"]}]}, {"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isLessThan", "name": "YvNQOsDa", "predicateType": "SeasonTierPredicate", "value": "bkcgepqt", "values": ["7QLTGAak", "xjbrztee", "7Kaol01D"]}, {"anyOf": 76, "comparison": "is", "name": "97D2xnik", "predicateType": "SeasonPassPredicate", "value": "2miteR5e", "values": ["gqBPRmd6", "QAe1rzmm", "mO4oI8KD"]}, {"anyOf": 33, "comparison": "includes", "name": "yEYWNGMy", "predicateType": "SeasonTierPredicate", "value": "pgSGSUOK", "values": ["68eqGJtW", "dwY9bmrv", "f1Ybgg8r"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isGreaterThanOrEqual", "name": "7KNqX9LM", "predicateType": "SeasonPassPredicate", "value": "IwEsdOGB", "values": ["XBwnzDX8", "v3xgC1Ge", "9PdbTTAJ"]}, {"anyOf": 89, "comparison": "isLessThanOrEqual", "name": "p1r0sVZ6", "predicateType": "SeasonTierPredicate", "value": "FVZGYzQq", "values": ["V8d9mDdU", "IoiIJFNx", "uNOmUSWw"]}, {"anyOf": 45, "comparison": "isGreaterThan", "name": "IxVWCxdv", "predicateType": "SeasonTierPredicate", "value": "6i38XQjL", "values": ["Uo9UBJWo", "5BtiQ272", "DRqkpiFK"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'dpdwsX1j' --body '{"orderNo": "orcyR0x3"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "YiHF8ITG", "name": "PRQBCgIs", "status": "INACTIVE", "tags": ["2lzxl0yF", "5m77TTh4", "gUoj8u2W"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'RcLiEtzV' --login_with_auth "Bearer foo"
platform-update-key-group 'lnkflfn7' --body '{"description": "pHY48F1d", "name": "l1q92m3i", "status": "ACTIVE", "tags": ["lfnBAk0C", "wiAsR65y", "Q9ssuHdG"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'mxncCEr0' --login_with_auth "Bearer foo"
platform-list-keys 'KcgeqzGb' --login_with_auth "Bearer foo"
platform-upload-keys 'ruNB72HH' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'MkjzyBB4' --login_with_auth "Bearer foo"
platform-refund-order 'UFKiaoV0' --body '{"description": "VOem2yqP"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "2nFe9FmN", "privateKey": "86sK5LOq"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "4ft5jGcM", "currencyNamespace": "ICPUYnfG", "customParameters": {"6jl9U4jR": {}, "eteIMgzI": {}, "SomCsodJ": {}}, "description": "rhQW41q2", "extOrderNo": "OspCZbt3", "extUserId": "Uta5I0uG", "itemType": "APP", "language": "mdK_ZHin", "metadata": {"weexsIAP": "5vHLjBJ9", "iqMcBL4B": "zhDUjhKP", "wbwcvQU5": "kG8bXGFm"}, "notifyUrl": "PAnOkDiJ", "omitNotification": true, "platform": "zOj84O6t", "price": 12, "recurringPaymentOrderNo": "nVK3YVeO", "region": "Ws9mfVQh", "returnUrl": "3jLBtn9p", "sandbox": true, "sku": "959anrNS", "subscriptionId": "leywHbHi", "targetNamespace": "g6IKWVZ7", "targetUserId": "7KeRWdEC", "title": "aFGzfZ2h"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'xcJ2Fnem' --login_with_auth "Bearer foo"
platform-get-payment-order 'n7M23SzU' --login_with_auth "Bearer foo"
platform-charge-payment-order 'o4hNBDh9' --body '{"extTxId": "ZFP1OW0n", "paymentMethod": "XOErQPS4", "paymentProvider": "STRIPE"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'sRoYIK69' --body '{"description": "yg9ADCGi"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'XaLs2xjH' --body '{"amount": 21, "currencyCode": "LsNhdgQ0", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 58, "vat": 82}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'mhNHSXuq' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Steam' --body '{"allowedBalanceOrigins": ["Epic", "Playstation", "GooglePlay"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-payment-callback-config-1 --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "XDmwWsuk", "eventTopic": "xncuD3Qx", "maxAwarded": 57, "maxAwardedPerUser": 49, "namespaceExpression": "XMd00YBW", "rewardCode": "CaVVmM45", "rewardConditions": [{"condition": "mfIZsWhk", "conditionName": "S476dGGJ", "eventName": "wJ00UH19", "rewardItems": [{"duration": 80, "itemId": "yI0rYsWu", "quantity": 4}, {"duration": 88, "itemId": "AkXsVJbX", "quantity": 17}, {"duration": 0, "itemId": "7eRZa7Ww", "quantity": 71}]}, {"condition": "JaSzUtY4", "conditionName": "ZD0Xtb0U", "eventName": "4pH16NUs", "rewardItems": [{"duration": 98, "itemId": "9GiBiSAy", "quantity": 23}, {"duration": 81, "itemId": "X5cS0IeH", "quantity": 31}, {"duration": 88, "itemId": "CugmfOL0", "quantity": 87}]}, {"condition": "fds1BYx0", "conditionName": "EaURydf8", "eventName": "ZyyZeHAW", "rewardItems": [{"duration": 66, "itemId": "9vMUOPG0", "quantity": 17}, {"duration": 2, "itemId": "HDT8QbF7", "quantity": 12}, {"duration": 69, "itemId": "FyOjApNH", "quantity": 57}]}], "userIdExpression": "2NRqJGIK"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'Y3YYT9oT' --login_with_auth "Bearer foo"
platform-update-reward 'ynmfIuBW' --body '{"description": "gJTNFfM8", "eventTopic": "M0IW4oe8", "maxAwarded": 74, "maxAwardedPerUser": 12, "namespaceExpression": "Dgy0xZfA", "rewardCode": "cNg14Ws8", "rewardConditions": [{"condition": "TIP1LKiF", "conditionName": "QoLDvumf", "eventName": "qrgSfnx2", "rewardItems": [{"duration": 16, "itemId": "TCcNIsQ3", "quantity": 86}, {"duration": 67, "itemId": "uppUxDSK", "quantity": 0}, {"duration": 73, "itemId": "OTGMudcx", "quantity": 24}]}, {"condition": "I8JdiY3R", "conditionName": "RiLilmOG", "eventName": "F6dLLIeI", "rewardItems": [{"duration": 98, "itemId": "t9GlyZVQ", "quantity": 90}, {"duration": 94, "itemId": "7tPZSTpP", "quantity": 33}, {"duration": 73, "itemId": "3xjrElvv", "quantity": 60}]}, {"condition": "THf1ANTJ", "conditionName": "9Yk997Xk", "eventName": "GOdC6Itx", "rewardItems": [{"duration": 61, "itemId": "qvUWDjU1", "quantity": 67}, {"duration": 65, "itemId": "0EVjVZw1", "quantity": 94}, {"duration": 37, "itemId": "oLuPakQN", "quantity": 61}]}], "userIdExpression": "MpOs1RVF"}' --login_with_auth "Bearer foo"
platform-delete-reward 'rcg2CXxe' --login_with_auth "Bearer foo"
platform-check-event-condition 'px78fvsy' --body '{"payload": {"hE2BKtyT": {}, "DSIM7mkm": {}, "vZ7Cmsh4": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'US8o4jfM' --body '{"conditionName": "ANPpmZDd", "userId": "MiCxmuCC"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'VuFjS1GC' --body '{"active": false, "displayOrder": 44, "endDate": "1971-06-20T00:00:00Z", "ext": {"92B4vEgj": {}, "3HOmhcWm": {}, "428XejRF": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 81, "itemCount": 7, "rule": "SEQUENCE"}, "items": [{"id": "nMrBZo0l", "sku": "NUBDShHD"}, {"id": "32vvL28F", "sku": "PwTiXfLc"}, {"id": "xDC9Ynd0", "sku": "2mECIQhf"}], "localizations": {"IhHtADUQ": {"description": "9zimQTQT", "localExt": {"95pFJUAJ": {}, "syAfeKOu": {}, "fV4f15No": {}}, "longDescription": "hXu6opxQ", "title": "GRt6Pqlk"}, "L0diRhLC": {"description": "10ih2EQf", "localExt": {"Y3XCv4hd": {}, "Oa6FdZhN": {}, "Md1onFjG": {}}, "longDescription": "RbxtABPX", "title": "DmgNEJBh"}, "gGq5GIDh": {"description": "NC66szbC", "localExt": {"Cf73IFbR": {}, "kPSSITz4": {}, "TjCrJHXG": {}}, "longDescription": "Xku2YVuO", "title": "zhxHmnrr"}}, "name": "V9ZGWrZ0", "rotationType": "FIXED_PERIOD", "startDate": "1980-03-22T00:00:00Z", "viewId": "xe6A6Rpm"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'KDebNkyl' --login_with_auth "Bearer foo"
platform-get-section 'bynkgT9v' --login_with_auth "Bearer foo"
platform-update-section 'ayLLiiza' 'c7Ge6zKJ' --body '{"active": false, "displayOrder": 83, "endDate": "1976-06-16T00:00:00Z", "ext": {"t7rjF5Ra": {}, "JwvkWVco": {}, "2LTo5ijl": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 88, "itemCount": 61, "rule": "SEQUENCE"}, "items": [{"id": "F8qBWCQ9", "sku": "dLWYyS8z"}, {"id": "dhMeBXH8", "sku": "x6HdVfZV"}, {"id": "DAiU6iJO", "sku": "F7JKZFNk"}], "localizations": {"2NKy59X8": {"description": "iOg2sVBi", "localExt": {"CoeC5weX": {}, "Jl7PeiMH": {}, "8z8dVej8": {}}, "longDescription": "N2yv6VTn", "title": "OK7xAvM7"}, "tuL81lsR": {"description": "7xxSVp3G", "localExt": {"d2TK0HzY": {}, "viTgYmx8": {}, "2JVBRLPZ": {}}, "longDescription": "6Iz8tne5", "title": "dbguBF6G"}, "svvdl8jH": {"description": "z9x7XZIj", "localExt": {"U4IK9lOL": {}, "aZaMphKC": {}, "qTq3EVhe": {}}, "longDescription": "JjoEEXBL", "title": "IxGnNuho"}}, "name": "JM3WWPvv", "rotationType": "FIXED_PERIOD", "startDate": "1975-08-25T00:00:00Z", "viewId": "jISd97KO"}' --login_with_auth "Bearer foo"
platform-delete-section 'RRhxSWLW' 'LNfHRD3V' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "15QaGGL4", "defaultRegion": "6LuxJF3s", "description": "beqWBdQu", "supportedLanguages": ["WfgBAKx2", "7MSBqabU", "XOGkkoMU"], "supportedRegions": ["Zn1YXj5z", "FZeOCOR9", "NvBQZSJP"], "title": "OIKrRBrY"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'Vzi9ui3l' --login_with_auth "Bearer foo"
platform-update-store 'vozTt9Ts' --body '{"defaultLanguage": "H7A0TuU2", "defaultRegion": "aL4bPkk1", "description": "1sys6Gdk", "supportedLanguages": ["Dcos5uVJ", "0BJfZ0jv", "A54CSqZF"], "supportedRegions": ["DsO1skRj", "OU1SMfQV", "Qa6blj9R"], "title": "dd85bdYU"}' --login_with_auth "Bearer foo"
platform-delete-store 'umPKVSZC' --login_with_auth "Bearer foo"
platform-query-changes 'g3XTc9vQ' --login_with_auth "Bearer foo"
platform-publish-all 'e0dHJfF6' --login_with_auth "Bearer foo"
platform-publish-selected 'KIuvnRCa' --login_with_auth "Bearer foo"
platform-select-all-records '9JktyBdx' --login_with_auth "Bearer foo"
platform-get-statistic 'kZKrEWFw' --login_with_auth "Bearer foo"
platform-unselect-all-records '9GYxjiiO' --login_with_auth "Bearer foo"
platform-select-record 'QAD77ci0' 'vfWVZoRR' --login_with_auth "Bearer foo"
platform-unselect-record 'MPi57HyK' 'Kz5nyI6u' --login_with_auth "Bearer foo"
platform-clone-store 'lKNKoXa0' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'dgx1JgjC' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '56pda3Yh' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'tQxpCYME' --body '{"orderNo": "6x21pdX2"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'QSPAd9sx' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'oLnWGP1P' --body '{"count": 0, "orderNo": "w1KOPhuv"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'HuYrGWDK' --body '{"achievements": [{"id": "41uMOC0m", "value": 89}, {"id": "vGjVQ4ae", "value": 3}, {"id": "tF5wnJDg", "value": 30}], "steamUserId": "Q3WXiydC"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'OInVolsr' '6CHmj763' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'vLwtYEJT' --body '{"achievements": [{"id": "SiXjcY5Z", "value": 85}, {"id": "oQVFL8LN", "value": 99}, {"id": "TWLxSFZ0", "value": 76}], "serviceConfigId": "i7k489jR", "titleId": "Cn48bvkC", "xboxUserId": "PfKofwXO"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'IZZQAJza' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '84lKKmVO' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'aTS6xBbN' --login_with_auth "Bearer foo"
platform-anonymize-integration 'rSUAW2ak' --login_with_auth "Bearer foo"
platform-anonymize-order '7ISDrBVg' --login_with_auth "Bearer foo"
platform-anonymize-payment '6NuDZvPb' --login_with_auth "Bearer foo"
platform-anonymize-revocation '1kuUfNfU' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'De4g7q6P' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'HEaqbzHv' --login_with_auth "Bearer foo"
platform-get-user-dlc 'DDl1jiLw' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'MGBA6JXD' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'pA1tIC45' --body '[{"endDate": "1985-03-05T00:00:00Z", "grantedCode": "0oaGouFu", "itemId": "4hXONgUw", "itemNamespace": "JnUpryDe", "language": "RCCQ-943", "quantity": 46, "region": "67rkadH5", "source": "IAP", "startDate": "1979-01-02T00:00:00Z", "storeId": "SLjCPrFa"}, {"endDate": "1997-04-17T00:00:00Z", "grantedCode": "5Xl5TPC5", "itemId": "GODS44bm", "itemNamespace": "m7jPdKLd", "language": "Fj-xd", "quantity": 53, "region": "RRXBxlal", "source": "REFERRAL_BONUS", "startDate": "1988-05-31T00:00:00Z", "storeId": "tWlKxLpS"}, {"endDate": "1972-02-12T00:00:00Z", "grantedCode": "tv5guycG", "itemId": "iq9j2EyI", "itemNamespace": "knfLDpgH", "language": "pn_iE", "quantity": 14, "region": "8c1eJ9sd", "source": "GIFT", "startDate": "1980-12-21T00:00:00Z", "storeId": "KBXuJBqK"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id '4QtEydPW' 'LPBYiR3U' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'bJc1ZYap' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '6aFo0MVw' 'DZCIXFNE' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'L3uWVRz3' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'V7YbJM3b' 'NLWHAbCZ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'ixe2cQ6O' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '30lpzcBQ' '["MAEcNcJq", "rKxnMzSY", "oc4ZjiMY"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id '4H34B6wV' 'd8ipcKDw' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'QeUWtjCC' '2UH6jzMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '3AfmOS5m' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'QNyRPZFP' 'NP56l1AT' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements '6OLKmZhC' 'ZxxPPdPw' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'OtEuWBSO' '2jJepUnE' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'Egja2mIE' '2kLTnJwc' --body '{"endDate": "1978-05-02T00:00:00Z", "nullFieldList": ["mkCuL5W4", "tKt6G3j9", "LYdG7xVP"], "startDate": "1979-08-15T00:00:00Z", "status": "INACTIVE", "useCount": 99}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'e9RDQMBS' 'YAFLqp8P' --body '{"options": ["F5hCcouk", "Wpnbz4ys", "7j6lxuU3"], "requestId": "u2HEG0qf", "useCount": 74}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'LOKnX51y' 'AB8Pa3uN' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'GKhaLlJz' 'JMSnJIIg' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'sAVmaGYx' 'UX1B9oVu' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'zG2CnYX2' 'YBF2g7TV' --login_with_auth "Bearer foo"
platform-fulfill-item 'tzYEHUod' --body '{"duration": 14, "endDate": "1979-04-23T00:00:00Z", "itemId": "iUfBthbe", "itemSku": "pUCTWiZ1", "language": "uqh7GAi4", "order": {"currency": {"currencyCode": "FEIu44u8", "currencySymbol": "3ZLRxYlY", "currencyType": "VIRTUAL", "decimals": 22, "namespace": "lpq03BGd"}, "ext": {"Ik4oEogF": {}, "VGR71rJO": {}, "By6lsj1A": {}}, "free": true}, "orderNo": "GBjnHmaA", "origin": "Playstation", "quantity": 97, "region": "4YK87DYA", "source": "PURCHASE", "startDate": "1996-01-18T00:00:00Z", "storeId": "CzUOIzVc"}' --login_with_auth "Bearer foo"
platform-redeem-code 'y9k3ie64' --body '{"code": "Vnwa0ClG", "language": "kqVL-kEHG-Xi", "region": "KadEoIVm"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'prwPsa9Y' --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "YgwWv5Xl", "namespace": "dL6rOVGc"}, "item": {"itemId": "RAn51rVA", "itemSku": "QSxp4qTB", "itemType": "54mKA3V9"}, "quantity": 61, "type": "CURRENCY"}, {"currency": {"currencyCode": "tzkMJ7cu", "namespace": "df4r916G"}, "item": {"itemId": "Prhn2etV", "itemSku": "IQvRkQJA", "itemType": "tDUH9tx6"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "ywmg1pWp", "namespace": "Wit1QC7F"}, "item": {"itemId": "Ke0fnHUl", "itemSku": "mU1unGKM", "itemType": "0tgfeWy4"}, "quantity": 25, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'CvX1nwvS' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'WdDwD7WJ' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'HzgNZUKs' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'I5y0mR3z' --body '{"itemIdentityType": "ITEM_SKU", "language": "uTA", "productId": "tKqnsIJc", "region": "tAdxyZVK", "type": "GOOGLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'A9DkaSOW' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'gtg8yw8l' --body '{"currencyCode": "HEbVDwBA", "currencyNamespace": "qanOlscR", "discountedPrice": 71, "ext": {"iNjULsx4": {}, "SnKNXLMU": {}, "aDSwwQln": {}}, "itemId": "NRZJHBSB", "language": "4fZWEFIZ", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 25, "quantity": 19, "region": "kZp1Zktx", "returnUrl": "3N7WNMYI", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'bWEm8bVt' 'ZcfVCPdQ' --login_with_auth "Bearer foo"
platform-get-user-order 'him9QKUA' 'FTVYelIl' --login_with_auth "Bearer foo"
platform-update-user-order-status 'GJg9wdc8' 'bihhWjfZ' --body '{"status": "DELETED", "statusReason": "rOv0BJ9S"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'gl7H1sdH' '2RIJz1eI' --login_with_auth "Bearer foo"
platform-get-user-order-grant '7Q5pu9Pu' 'tLf6IrvZ' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'oBGQbO4S' '3rURGWUz' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'PAE6SdV4' 'D5jftRl9' --body '{"additionalData": {"cardSummary": "rZmtQUvr"}, "authorisedTime": "1978-12-03T00:00:00Z", "chargebackReversedTime": "1995-06-28T00:00:00Z", "chargebackTime": "1987-01-27T00:00:00Z", "chargedTime": "1996-05-29T00:00:00Z", "createdTime": "1980-10-17T00:00:00Z", "currency": {"currencyCode": "z9TVmdMK", "currencySymbol": "EohKzuMY", "currencyType": "VIRTUAL", "decimals": 95, "namespace": "Qf7Ot2Dk"}, "customParameters": {"Ut3yexZB": {}, "RvxYnEBh": {}, "XtAVxCd3": {}}, "extOrderNo": "meTrT7cF", "extTxId": "9oVCh89w", "extUserId": "NOkKYssV", "issuedAt": "1973-07-09T00:00:00Z", "metadata": {"jcL3kR3h": "CGNgaJmu", "ALlMQl9R": "Lrthbfp0", "VgweLlT2": "sY3SsTnD"}, "namespace": "QY7kKU2u", "nonceStr": "06Q4veuj", "paymentMethod": "xtyQENvJ", "paymentMethodFee": 35, "paymentOrderNo": "pcYPK8Ix", "paymentProvider": "STRIPE", "paymentProviderFee": 92, "paymentStationUrl": "RWOqO4U0", "price": 2, "refundedTime": "1999-03-03T00:00:00Z", "salesTax": 11, "sandbox": true, "sku": "JIyFAm3D", "status": "REFUNDING", "statusReason": "nR0AbkCP", "subscriptionId": "Y70Fmvvi", "subtotalPrice": 98, "targetNamespace": "bWMZGVL5", "targetUserId": "KLTxahWl", "tax": 91, "totalPrice": 99, "totalTax": 99, "txEndTime": "1996-06-28T00:00:00Z", "type": "dBaKSLCg", "userId": "OOPXM6XT", "vat": 96}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'rJl7wYIV' 'w13NCo9y' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'XlbQ52FT' --body '{"currencyCode": "HTCj6SEA", "currencyNamespace": "zT7TOpyi", "customParameters": {"uvvQUm29": {}, "Iacq4XRL": {}, "aA643nTM": {}}, "description": "tXSAyejn", "extOrderNo": "ny0Ju13b", "extUserId": "6o5uB2XM", "itemType": "OPTIONBOX", "language": "iXZZ-fCVV", "metadata": {"yLmcvrZZ": "Odwe1x8R", "jU6Bi8JX": "E52sUBBq", "2SimQQoL": "be5YOJvx"}, "notifyUrl": "GRxUzrTw", "omitNotification": false, "platform": "BDqMyIAz", "price": 100, "recurringPaymentOrderNo": "ZKTdNFVB", "region": "Q1crBXAu", "returnUrl": "pATO8uXs", "sandbox": true, "sku": "JEd6eqqs", "subscriptionId": "BVyONV0J", "title": "RtozI0jp"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'liCFQ6Wg' 'JpGPigdc' --body '{"description": "5VyC4qvW"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'jVac1cQv' --body '{"code": "SxgTNIUz", "orderNo": "xDgBlIbu"}' --login_with_auth "Bearer foo"
platform-do-revocation 'zm7DzJ20' --body '{"meta": {"NFRJIhFX": {}, "R2dYprPm": {}, "bpuptECG": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "x8Upe8Sj", "namespace": "MvpqM8pu"}, "entitlement": {"clazz": "APP", "entitlementId": "NBYl9iCq", "type": "CONSUMABLE"}, "item": {"itemIdentity": "D5i2Ni6A", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "3NdEPhNH", "namespace": "SH7eKDfR"}, "entitlement": {"clazz": "APP", "entitlementId": "NOmubxEJ", "type": "DURABLE"}, "item": {"itemIdentity": "Qr3RLOM1", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 90, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "4gqDY6jw", "namespace": "yKRxhkLe"}, "entitlement": {"clazz": "OPTIONBOX", "entitlementId": "zohg9s9u", "type": "DURABLE"}, "item": {"itemIdentity": "KC07CnsZ", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 14, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "OF74tz6a"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'eXZOYwbw' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'jMNdxKWl' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'BfnRyFS0' --body '{"grantDays": 62, "itemId": "XN3cjIXm", "language": "FWRJnj8x", "reason": "N7HDPTUE", "region": "DPN1Kb4U", "source": "TPWDXTSb"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '55g8LSTs' '7Nf95lGl' --login_with_auth "Bearer foo"
platform-get-user-subscription 'Prf6obId' 'nI6Ag7eU' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'YcYJ4QzX' 'Cmqr6gmP' --login_with_auth "Bearer foo"
platform-cancel-subscription 'GaHP5SVP' 'vRLiDi0m' --body '{"immediate": true, "reason": "Hb6Lx8eq"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '8SGNwEQO' '8dYXvBSY' --body '{"grantDays": 44, "reason": "BKoUfiHj"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'GmCyPsKC' 'JTv1ic9g' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'vagF2cSu' 'ztsJ5tj6' --body '{"additionalData": {"cardSummary": "4gV7nmDk"}, "authorisedTime": "1998-10-04T00:00:00Z", "chargebackReversedTime": "1977-07-19T00:00:00Z", "chargebackTime": "1972-05-31T00:00:00Z", "chargedTime": "1976-05-31T00:00:00Z", "createdTime": "1993-06-13T00:00:00Z", "currency": {"currencyCode": "A8nP5PQj", "currencySymbol": "pzk2Tb7i", "currencyType": "REAL", "decimals": 54, "namespace": "mNZWosrs"}, "customParameters": {"VBPZ64j0": {}, "HUONscof": {}, "wYLQcDvk": {}}, "extOrderNo": "aEIIPoJT", "extTxId": "83zEGXmV", "extUserId": "BZLyrH9J", "issuedAt": "1992-08-09T00:00:00Z", "metadata": {"G181q9GA": "5DydC2D8", "UT6KOc4V": "PDUR9aya", "zqXRqegI": "UicYXXzx"}, "namespace": "sBFrUs9B", "nonceStr": "Yp6TgCej", "paymentMethod": "Bd5o7iTS", "paymentMethodFee": 94, "paymentOrderNo": "utlYBbLh", "paymentProvider": "XSOLLA", "paymentProviderFee": 90, "paymentStationUrl": "KXx25FZf", "price": 88, "refundedTime": "1983-10-12T00:00:00Z", "salesTax": 29, "sandbox": false, "sku": "UzvMfTkP", "status": "DELETED", "statusReason": "JBIXLGYc", "subscriptionId": "wWVRK6UK", "subtotalPrice": 20, "targetNamespace": "q78cE5O5", "targetUserId": "pmPnbiPJ", "tax": 1, "totalPrice": 20, "totalTax": 27, "txEndTime": "1975-07-01T00:00:00Z", "type": "R1Zrm3th", "userId": "UvV87yfk", "vat": 50}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'Elug48Tg' 'fNu0rqXU' --body '{"count": 84, "orderNo": "e2phYOgT"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets '5kDTyPl3' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'dKF7NXEj' 'rJMki8jv' --body '{"allowOverdraft": false, "amount": 55, "balanceOrigin": "System", "reason": "P8Gwjg3I"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'OH0SDHgY' 'KqxJiFJd' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'rmj5vhzg' 'sJwex7wq' --body '{"amount": 23, "expireAt": "1997-12-07T00:00:00Z", "origin": "GooglePlay", "reason": "lXNaUNgd", "source": "IAP"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '2vfJuje5' 'cPnmGjTv' --body '{"amount": 54, "walletPlatform": "Epic"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'WtLK9TFg' --body '{"displayOrder": 16, "localizations": {"cAoijBPA": {"description": "p6EPb988", "localExt": {"NzxrDKVp": {}, "ULjjiw3N": {}, "eVG4DJi9": {}}, "longDescription": "DaMrc0WF", "title": "gKjE945x"}, "2CPVYYG9": {"description": "WvoGmAmv", "localExt": {"aVV5Yfxn": {}, "UNcwjr7g": {}, "SGhnfuF4": {}}, "longDescription": "WZiQVICV", "title": "pWd3UM08"}, "gMXhdf3j": {"description": "uXW4JprI", "localExt": {"b3CJCAtv": {}, "SG8Cfa9d": {}, "zOJDGCTH": {}}, "longDescription": "IOFjeXbs", "title": "SgR43kID"}}, "name": "zxBwqRJT"}' --login_with_auth "Bearer foo"
platform-get-view 'zrHNZWUs' --login_with_auth "Bearer foo"
platform-update-view 'q5lQo2jy' '29EJigqY' --body '{"displayOrder": 15, "localizations": {"Wxw8OQ13": {"description": "t3uTw6zQ", "localExt": {"uoZcXQpo": {}, "TOxe8y1j": {}, "orNsg9ZK": {}}, "longDescription": "YCKoISyX", "title": "tHzoWGdY"}, "ohxMp3uO": {"description": "QIybqWfG", "localExt": {"9BJ6FVKl": {}, "bYHtbPta": {}, "xvagSlpG": {}}, "longDescription": "gVTF6VeD", "title": "APOGBwwe"}, "yFfXEOEA": {"description": "Etbag82K", "localExt": {"gBgyCd5v": {}, "jkfz3eR4": {}, "DtNp129h": {}}, "longDescription": "zBw3xLUc", "title": "CEt0Dzmk"}}, "name": "Jq1sml5b"}' --login_with_auth "Bearer foo"
platform-delete-view 'Yt76BNsi' '4giR9434' --login_with_auth "Bearer foo"
platform-sync-orders 'WpKKdzxo' 'ufCNlFoO' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["cWQQy4bj", "mQeEweoB", "HTdwAk7Z"], "apiKey": "QnbqY1cQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["dOwNESzC", "EW9dUVhZ", "jLftC3sC"], "clientKey": "S8CpLCqP", "dropInSettings": "D9CeDEdC", "liveEndpointUrlPrefix": "nnL6Kt1B", "merchantAccount": "jj3b8QM8", "notificationHmacKey": "Rr45ULqX", "notificationPassword": "QgvwD3Ps", "notificationUsername": "KDJiWxQB", "returnUrl": "waS7rDBf", "settings": "2S54phbd"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "yGDt47f9", "privateKey": "GWRlE9hq", "publicKey": "z6rjDNo4", "returnUrl": "rhjxUdMM"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "83WekqfW", "secretKey": "v04vvn9b"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "k5qr8qs2", "clientSecret": "mqtnGAqX", "returnUrl": "UjNypF6M", "webHookId": "MqWpdEJs"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["PoaIbYz8", "cK5jlpJd", "re5ur6yv"], "publishableKey": "WJDdvM7T", "secretKey": "7PX2vamI", "webhookSecret": "RZHzsIYO"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "CUoiCXNj", "key": "rdQL2jdx", "mchid": "1eIba1sB", "returnUrl": "0HsJ06Dz"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "fbzRYt4O", "flowCompletionUrl": "VUyumBeI", "merchantId": 33, "projectId": 19, "projectSecretKey": "dQGZC5kM"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '03HHijsQ' --login_with_auth "Bearer foo"
platform-update-adyen-config 'Rj7N8IAj' --body '{"allowedPaymentMethods": ["msonjj0Z", "R50BQ1U6", "aFD3O2kX"], "apiKey": "QSc58zgZ", "authoriseAsCapture": false, "blockedPaymentMethods": ["1btjJOqQ", "MgZWAU6E", "92nHJzvw"], "clientKey": "7tnYtGfv", "dropInSettings": "0EJyjBu4", "liveEndpointUrlPrefix": "EzwRjD7j", "merchantAccount": "mQJeFPgh", "notificationHmacKey": "qamSc5y0", "notificationPassword": "X48eT7Ml", "notificationUsername": "uexk87b9", "returnUrl": "Z5BTsEA3", "settings": "EdmW8saa"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'bP4xRowf' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'NojzPXI2' --body '{"appId": "v0prR3OE", "privateKey": "ey0MkZwS", "publicKey": "6TYwNN3U", "returnUrl": "Yhic03qG"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'Eg5fNzBV' --login_with_auth "Bearer foo"
platform-update-checkout-config 'rjo3g8Cf' --body '{"publicKey": "Rwtyl1He", "secretKey": "T7VEPgG4"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '0QyXzsOz' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'gck078Ig' --body '{"clientID": "hoQBp2mW", "clientSecret": "AOYksczx", "returnUrl": "BS0OBCa2", "webHookId": "vWadLmQt"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'YKmEMzic' --login_with_auth "Bearer foo"
platform-update-stripe-config 'buL2S3Ri' --body '{"allowedPaymentMethodTypes": ["W8dLTCBf", "GUdVEdvd", "QL7sVwcZ"], "publishableKey": "2PofaJoS", "secretKey": "qtrEOqxH", "webhookSecret": "46fRTSZo"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'DdT0fefo' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '74eg3Nt2' --body '{"appId": "c0r4GqF0", "key": "NHglOVuN", "mchid": "Z9LzNeJn", "returnUrl": "Burh54CW"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'bYb0Peby' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 't8b4DGsc' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'jwrizsFU' --body '{"apiKey": "gYwbaLvq", "flowCompletionUrl": "vQ2NbmDI", "merchantId": 93, "projectId": 33, "projectSecretKey": "uymTBjn3"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'd2sFzMS3' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'QaVjZF7A' --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "5Kg9U8vr", "region": "QJXQxoIb", "sandboxTaxJarApiToken": "Vi2CLEk2", "specials": ["STRIPE", "WXPAY", "WALLET"], "taxJarApiToken": "EkXIbE1E", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'JZKMavu4' --body '{"aggregate": "ADYEN", "namespace": "sFPm1YN2", "region": "7bojDVaZ", "sandboxTaxJarApiToken": "Lpx4kEWY", "specials": ["CHECKOUT", "PAYPAL", "STRIPE"], "taxJarApiToken": "MBwbPZTl", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'h61hmWKS' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "SrF35anD", "taxJarApiToken": "Gvur19V1", "taxJarEnabled": true, "taxJarProductCodesMapping": {"oIrUKXtt": "gAI2QdWJ", "FLmoPEgd": "8EMspOs8", "nkic9gj5": "vyUMAAmI"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'HYbsxG5N' '066FXb88' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'SbLOa21D' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'iSFsm0XX' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'QJWszvTQ' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'EuALzDNp' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '1SZ58aDl' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'lwzTRHak' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["1MXxj7Es", "rg7900nm", "l5BidsK9"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'dCEzhVnO' 'v0PQbVIa' --login_with_auth "Bearer foo"
platform-public-get-app 'KiHfoeor' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'Y7A1otGF' --login_with_auth "Bearer foo"
platform-public-get-item 'yv2SMjbE' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "r50qGdCZ", "paymentProvider": "ALIPAY", "returnUrl": "c6EFqBKx", "ui": "bS7Q2OgR", "zipCode": "ucL1jwRX"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'zfjDZZBm' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'Oau6syme' --login_with_auth "Bearer foo"
platform-pay '06c6SKLc' --body '{"token": "2mEC3IXl"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '5XCbkOfH' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ADYEN' 'zjoSV31t' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'vmMB6jzr' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'pRGESmoo' 'HiCV4GUO' 'PAYPAL' 'gVY3YAxZ' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'LKbcOdyj' 'STRIPE' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'cR4eiU3I' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'di55jNrG' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'NT2VHTKu' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'IT5FwwHj' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '0Ur5F2PW' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'GTTD81xh' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'NP4t6kYB' --body '{"epicGamesJwtToken": "UjyXAn3b"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'WQF6QcAi' --body '{"serviceLabel": 73}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'v6EJtl5x' --body '{"serviceLabels": [49, 26, 100]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'ptZhckUT' --body '{"appId": "GkcBOE4q", "steamId": "McH1Kyi8"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'ZFvGcV8D' --body '{"xstsToken": "Y0XOkDst"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'xZcY1HgA' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'nZV4IOgl' 'VLqb9lGA' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'JUg21Lt7' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'wgwMUSuC' '3Bajy3Bc' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'EMCtQs2F' 'cEcvVAyI' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'd6Cp85HV' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'DsZBQgOn' 'XuXsGThY' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'Zrmm0wrF' 'MnPpWgrQ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'D4hEk0OL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'jYsnignE' '7KcMF7fu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'DbzRRYMN' 'XWUsp1tO' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'ibJY9aL9' 'ie6vvMbi' --body '{"options": ["NURrlm88", "QlKyuoya", "4JgakZyU"], "requestId": "V7t73VnS", "useCount": 65}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'yPd12B8Q' --body '{"code": "NUz0hFFN", "language": "Ti", "region": "u9oTc8pV"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'kiyGsj5J' --body '{"excludeOldTransactions": false, "language": "asO_goDf", "productId": "jUMTs8WI", "receiptData": "ObJBTsvs", "region": "w76uISRX", "transactionId": "0bKVoWto"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'UW1P7ocu' --body '{"epicGamesJwtToken": "BAldDSUS"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '7Haa6unq' --body '{"autoAck": true, "language": "MrV-Impc-689", "orderId": "Di2piIQF", "packageName": "VmzMidw7", "productId": "0KSahpYZ", "purchaseTime": 7, "purchaseToken": "vf1fhMg1", "region": "E2k7QLFr"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'VgtX7y0f' --body '{"currencyCode": "POieDCow", "price": 0.8756063062068647, "productId": "zXyFFVpM", "serviceLabel": 77}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '7yqEwEac' --body '{"currencyCode": "QMTlqN4L", "price": 0.5921577587803108, "productId": "kxJ5v3SB", "serviceLabels": [1, 4, 12]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'pBD6lKNb' --body '{"appId": "8RxvN2u5", "currencyCode": "J7baOeLH", "language": "XQ-XqpB", "price": 0.13210008186907574, "productId": "IsxmsLBP", "region": "BJuNLnWR", "steamId": "rtW870qD"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '88ZcduZS' --body '{"gameId": "e7W20UZc", "language": "kAi-Nv", "region": "EZ7PyhqF"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'JkDClOsK' --body '{"currencyCode": "mfsgJdmz", "price": 0.2927350218388176, "productId": "DPsWh1k0", "xstsToken": "cQ08NG6d"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'X2TZkil6' --login_with_auth "Bearer foo"
platform-public-create-user-order '7kRngoUa' --body '{"currencyCode": "83ECh1gq", "discountedPrice": 84, "ext": {"FbrOMZMg": {}, "WkFN7Tpk": {}, "x6GcfyOg": {}}, "itemId": "6ZUrrp9u", "language": "xG_NvDx_rk", "price": 0, "quantity": 88, "region": "fUs2bxYz", "returnUrl": "tOEyVbKI"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'f1ZbzgUw' 'd8DHoCQy' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'kmXHYmkR' 'lg7gYs6u' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'nPYQ9jNQ' 'N1di1ldh' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'Oh6HvjnY' 'uV7NfC4A' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '2ODiZhbf' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'b8QqCyK1' 'card' 'D6vl5eFd' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'FfgK46Gj' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'CWaP8huT' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'mnq3FGQn' --body '{"currencyCode": "3Ahu5wxq", "itemId": "6oJq4mCh", "language": "Or_jmOc", "region": "DFQfXFD5", "returnUrl": "8sG6uDhF", "source": "YlrzJBYS"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'eMuJfQec' 'utjS029B' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'iJWOG1m7' 'MKclr5ig' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'jNTVItrH' '2X78hxJg' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'aVfw5Vny' 'q8OzTE89' --body '{"immediate": true, "reason": "DNoMcOmb"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'fJrCJQIj' '1haAosKg' --login_with_auth "Bearer foo"
platform-public-list-views 'lqaCXE9y' --login_with_auth "Bearer foo"
platform-public-get-wallet 'tpIO8btO' '3OwNEGSW' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '5TaW4to7' 'QCY2NGGv' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'i9kg3rMI' --body '{"itemIds": ["zNmhJTNQ", "jKlwjfJ3", "TJ2xVpge"]}' --login_with_auth "Bearer foo"
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
echo "1..383"

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
    --body '{"context": {"item": {"appId": "70WsLfgb", "appType": "DLC", "baseAppId": "ByjbE8lO", "boothName": "LAfTXKLz", "boundItemIds": ["OSEhQRZI", "brddqcKL", "a7LevxNH"], "categoryPath": "p693lRwt", "clazz": "c43atCuC", "createdAt": "1987-07-14T00:00:00Z", "description": "4yFQFdrR", "displayOrder": 30, "entitlementType": "DURABLE", "ext": {"6FoqCYw7": {}, "AlxO6qdF": {}, "pc71sSck": {}}, "features": ["3ggZWJlS", "lCQMDji3", "29PfVrvM"], "fresh": true, "images": [{"as": "Y4lPzlsC", "caption": "R5rVsyfc", "height": 68, "imageUrl": "8Ww79LVe", "smallImageUrl": "VskqeUB7", "width": 89}, {"as": "dRF9bqMj", "caption": "4ro5B19V", "height": 62, "imageUrl": "thdbVApe", "smallImageUrl": "bRA09rW8", "width": 17}, {"as": "ZvpIOO97", "caption": "DmQ5ZOzx", "height": 18, "imageUrl": "d3AyGrZO", "smallImageUrl": "8GuoXNSo", "width": 98}], "itemId": "xsjqbCKp", "itemIds": ["Mv2Yky9D", "YkD2sIll", "FtBtXJKG"], "itemQty": {"3rqBmILh": 40, "pA3KMxBl": 35, "bUDSiefG": 62}, "itemType": "APP", "language": "elFAadM9", "listable": true, "localExt": {"CQD057Dr": {}, "DlgC2nzS": {}, "9SiGUjVA": {}}, "longDescription": "w4v3q6JR", "lootBoxConfig": {"rewardCount": 69, "rewards": [{"lootBoxItems": [{"count": 68, "itemId": "cn7KaoCE", "itemSku": "kRdo6qHY", "itemType": "IZWnXqQ1"}, {"count": 30, "itemId": "UI9esSsX", "itemSku": "egSEhrPp", "itemType": "K2q8kxR4"}, {"count": 57, "itemId": "0QzZWfmP", "itemSku": "2sx0KO5b", "itemType": "EJaPnAFj"}], "name": "sodyJQVV", "odds": 0.4446952307339699, "type": "REWARD", "weight": 73}, {"lootBoxItems": [{"count": 92, "itemId": "Vl8xs1WI", "itemSku": "d9Wlalqs", "itemType": "hF9Rh2o7"}, {"count": 67, "itemId": "wKdfqk8T", "itemSku": "4QHK30EX", "itemType": "0FclpDl5"}, {"count": 68, "itemId": "2ISArROI", "itemSku": "odcmM6v2", "itemType": "AEozWWaY"}], "name": "vBLE46bp", "odds": 0.335951797524741, "type": "REWARD_GROUP", "weight": 52}, {"lootBoxItems": [{"count": 17, "itemId": "osRCRgVw", "itemSku": "brQKmb01", "itemType": "yA7U7dGM"}, {"count": 20, "itemId": "p8AmgwhY", "itemSku": "zk33J34f", "itemType": "iTxK63OH"}, {"count": 31, "itemId": "NpE130YW", "itemSku": "SgxpKWtd", "itemType": "tdtVW9an"}], "name": "ENmxb9e7", "odds": 0.3447886961451223, "type": "PROBABILITY_GROUP", "weight": 8}], "rollFunction": "CUSTOM"}, "maxCount": 34, "maxCountPerUser": 17, "name": "c0apxqZ2", "namespace": "09BySn8a", "optionBoxConfig": {"boxItems": [{"count": 96, "itemId": "YBixKJXC", "itemSku": "ISQdwec1", "itemType": "m8BusV9t"}, {"count": 95, "itemId": "fqUZXkjH", "itemSku": "vcUOTlxN", "itemType": "f09pefgF"}, {"count": 71, "itemId": "yelIJ8Qg", "itemSku": "aLMqi836", "itemType": "ULa7cfZl"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 62, "comparison": "isGreaterThanOrEqual", "name": "6rsZyo6C", "predicateType": "SeasonPassPredicate", "value": "SogkewIz", "values": ["TCbx7J3g", "TOqKkcjR", "h3l2gAJO"]}, {"anyOf": 82, "comparison": "isNot", "name": "IlTk3Bpc", "predicateType": "EntitlementPredicate", "value": "Zns5owBh", "values": ["v2XiXaBz", "6KLPXkvU", "oUg4LsGP"]}, {"anyOf": 38, "comparison": "excludes", "name": "maxjTZPl", "predicateType": "SeasonTierPredicate", "value": "OboMkyB7", "values": ["FTexsOZ0", "rcwIcXMh", "b2p3b63K"]}]}, {"operator": "or", "predicates": [{"anyOf": 50, "comparison": "isNot", "name": "Xit6boOL", "predicateType": "SeasonTierPredicate", "value": "K1G4kKoo", "values": ["nZ64Iwnc", "SNNUZuiy", "ZPk82GF3"]}, {"anyOf": 8, "comparison": "isNot", "name": "03INGIyE", "predicateType": "EntitlementPredicate", "value": "dzGgGVxo", "values": ["cYbcOpR4", "9OHgfHum", "yfuBNise"]}, {"anyOf": 57, "comparison": "isGreaterThanOrEqual", "name": "DlvSc0Mr", "predicateType": "SeasonTierPredicate", "value": "ghTH2wTo", "values": ["W89Xwt3w", "mRTrDCjh", "Onq9U5ly"]}]}, {"operator": "and", "predicates": [{"anyOf": 9, "comparison": "isLessThan", "name": "bbrmgjhW", "predicateType": "SeasonTierPredicate", "value": "YPixtHk6", "values": ["mU96FLEa", "lWq6tEeU", "k0mJqjRY"]}, {"anyOf": 24, "comparison": "is", "name": "dcTpdeCD", "predicateType": "SeasonPassPredicate", "value": "XPRi4bAQ", "values": ["A8bvXlDh", "L7VE2wL8", "Y4JFVUdz"]}, {"anyOf": 67, "comparison": "isLessThanOrEqual", "name": "T3fDSrSH", "predicateType": "SeasonPassPredicate", "value": "OXJPm5zt", "values": ["rr09CDA8", "opWQbaCv", "Ij5bGKSu"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 16, "fixedTrialCycles": 86, "graceDays": 67}, "region": "Sq8Z27Gp", "regionData": [{"currencyCode": "vHCDx55J", "currencyNamespace": "Z5z6gujp", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1977-10-17T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1988-05-30T00:00:00Z", "discountedPrice": 89, "expireAt": "1979-03-06T00:00:00Z", "price": 87, "purchaseAt": "1977-09-01T00:00:00Z", "trialPrice": 76}, {"currencyCode": "9IRIpDDu", "currencyNamespace": "bntPCFxf", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1986-09-09T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-01-28T00:00:00Z", "discountedPrice": 19, "expireAt": "1993-11-05T00:00:00Z", "price": 52, "purchaseAt": "1994-11-28T00:00:00Z", "trialPrice": 53}, {"currencyCode": "XjO1NQUq", "currencyNamespace": "WHBW78XR", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1997-03-01T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1981-03-06T00:00:00Z", "discountedPrice": 51, "expireAt": "1994-10-11T00:00:00Z", "price": 81, "purchaseAt": "1984-09-19T00:00:00Z", "trialPrice": 47}], "seasonType": "TIER", "sku": "NCKKXu1b", "stackable": true, "status": "INACTIVE", "tags": ["I2M5PmXf", "KnQ7BYGj", "CUDMOrbm"], "targetCurrencyCode": "oRvWnfmG", "targetItemId": "Fy0eUoOB", "targetNamespace": "d90h9EDq", "thumbnailUrl": "STOfoNew", "title": "WjwMWDKE", "updatedAt": "1981-02-01T00:00:00Z", "useCount": 72}, "namespace": "fCwi7Il2", "order": {"currency": {"currencyCode": "wIFlHm9N", "currencySymbol": "6owMHMtJ", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "1Oqn59tE"}, "ext": {"Gm9NYeUT": {}, "5P0nx8Tq": {}, "SZdZ5C8m": {}}, "free": false}, "source": "REFERRAL_BONUS"}, "script": "FMdvYiCB", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'NMF9CZvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'xT5zbreM' \
    --body '{"grantDays": "c9fBoU3R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'HNDFjLKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'repy56eW' \
    --body '{"grantDays": "1kmb15Qe"}' \
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
    --body '{"clazz": "IQF51c4M", "dryRun": true, "fulfillmentUrl": "z6joBAhA", "itemType": "CODE", "purchaseConditionUrl": "Be6dboSd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'BUNDLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'ajBjgq6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'Y4PBNHKP' \
    --body '{"clazz": "x62tHxDb", "dryRun": true, "fulfillmentUrl": "6ZFy3ugl", "purchaseConditionUrl": "Sp2UxvF2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'uLXWilRD' \
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
    --body '{"description": "7HD6LCgd", "items": [{"extraSubscriptionDays": 64, "itemId": "K8aVSCN6", "itemName": "oCETQ8gI", "quantity": 60}, {"extraSubscriptionDays": 3, "itemId": "RdD2wwMX", "itemName": "wKVXGPhE", "quantity": 73}, {"extraSubscriptionDays": 35, "itemId": "sc7rZpxa", "itemName": "PHc9r8eT", "quantity": 28}], "maxRedeemCountPerCampaignPerUser": 84, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 67, "maxSaleCount": 26, "name": "YYSTunMg", "redeemEnd": "1981-09-13T00:00:00Z", "redeemStart": "1999-11-01T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8hEguCql", "MHiQN3HW", "Jw9zIWsi"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '2JQ24meD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'rwEuTyM2' \
    --body '{"description": "qohglzO8", "items": [{"extraSubscriptionDays": 55, "itemId": "I9Y28qVc", "itemName": "eS9UX48d", "quantity": 75}, {"extraSubscriptionDays": 85, "itemId": "R7OqPqIj", "itemName": "S4i0N9yt", "quantity": 2}, {"extraSubscriptionDays": 93, "itemId": "3c8pVZ8G", "itemName": "lU8962e6", "quantity": 12}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 43, "maxSaleCount": 26, "name": "Cmlh6Z1o", "redeemEnd": "1984-08-13T00:00:00Z", "redeemStart": "1991-12-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MNOAzXmy", "HEV4g9P6", "a280S5RN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'B5dVCsB7' \
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
    'xL4axSPg' \
    --body '{"categoryPath": "PCiwLxCF", "localizationDisplayNames": {"LDixZwVt": "t3RVTl0t", "R00oQgcH": "dGGK3x76", "U1EIcklt": "tmrpgF5s"}}' \
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
    'zl0sMY8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    's36r1FgR' \
    '70eNLHkV' \
    --body '{"localizationDisplayNames": {"rEFd8xAr": "WJuCAIfN", "BSHgpFNw": "9K9pmAIc", "6VSfE9nb": "E2PMv12Z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'SRJkujxb' \
    'Cu1HFaj6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'Vxs3GuA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'S1dS7H7y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'IS7b5TSD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'RIoMg7Dc' \
    --body '{"quantity": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'APzfzXDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'LJFaIaEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'W5bhJyL7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '2WDyhBsC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'CbnfihnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'KxGxaupn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'TTq9ihZk' \
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
    --body '{"grpcServerAddress": "vFKfSHQh"}' \
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
    --body '{"currencyCode": "8I9xk3sF", "currencySymbol": "l0cbuCRM", "currencyType": "REAL", "decimals": 76, "localizationDescriptions": {"EQKc0aUv": "rKXDIjYC", "4df9qswS": "lpCI8Dhj", "lxUyrs3O": "SesE5p0D"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'wUj2HKUv' \
    --body '{"localizationDescriptions": {"PYUcQBxM": "SdOOsn2N", "d8Jpa19G": "JDK46Eeh", "x7xasqMY": "9aulsL6N"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'OV5agpS6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'A5mkufBp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'WVxIK9D2' \
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
    --body '{"data": [{"id": "bTcgaKoc", "rewards": [{"currency": {"currencyCode": "caSwWcZm", "namespace": "zCWGI1cI"}, "item": {"itemId": "QcPWAShI", "itemSku": "hieSKUf3", "itemType": "zKbyQk2v"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "YX1xsth2", "namespace": "8NZZgsXy"}, "item": {"itemId": "cuQNGIDe", "itemSku": "Hlf6IcX1", "itemType": "K9JrK6Or"}, "quantity": 82, "type": "ITEM"}, {"currency": {"currencyCode": "pWv46sXv", "namespace": "pOjrpRo4"}, "item": {"itemId": "mYrCeQUn", "itemSku": "YoID2UqO", "itemType": "0iAXA9dB"}, "quantity": 18, "type": "ITEM"}]}, {"id": "b8HDOJ8T", "rewards": [{"currency": {"currencyCode": "NiP8KgEA", "namespace": "j3dbRTI0"}, "item": {"itemId": "i6dO3zkb", "itemSku": "Dseh4tJd", "itemType": "oGcwMBme"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "qVUaWMJB", "namespace": "jrV0p9A7"}, "item": {"itemId": "tcHrV0Mb", "itemSku": "JGr4drgk", "itemType": "DuWS05m0"}, "quantity": 32, "type": "ITEM"}, {"currency": {"currencyCode": "zazM2BUX", "namespace": "nzUEWTiK"}, "item": {"itemId": "MJAf6Agb", "itemSku": "iEDMfCck", "itemType": "WogE5gcf"}, "quantity": 64, "type": "ITEM"}]}, {"id": "AMGZ2FBS", "rewards": [{"currency": {"currencyCode": "93Mg6TKw", "namespace": "dRMraDLr"}, "item": {"itemId": "wh3d0ykR", "itemSku": "GkgqUNIb", "itemType": "JMJ9ABbK"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "EDiqkwKb", "namespace": "pdk7wlDn"}, "item": {"itemId": "gNiPPjpS", "itemSku": "AlZwFGpe", "itemType": "a5ObBB49"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "m4ClIQmk", "namespace": "IdLCvNhZ"}, "item": {"itemId": "6P8aqZ2y", "itemSku": "frC1V7Zp", "itemType": "JZPHCMqv"}, "quantity": 4, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"eh0VTiTP": "4PSrXUS6", "jYI9lsQF": "D43Df5qU", "ZOFzpFd6": "b5Jc5TET"}}, {"platform": "XBOX", "platformDlcIdMap": {"cup8GG0V": "CMTFJ6sv", "Tyo9RHge": "t5hzB52B", "DFopxUwk": "MuSqQnKz"}}, {"platform": "XBOX", "platformDlcIdMap": {"eJc7NvgT": "SgKjCxZj", "Kf8NA4cG": "UaDfy9Xn", "H2r0EKrk": "5VlnKsWC"}}]}' \
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

#- 52 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'PccAFn5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetEntitlement' test.out

#- 53 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'QueryFulfillmentHistories' test.out

#- 54 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetAppleIAPConfig' test.out

#- 55 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "EPoH6opK", "password": "5DSO8JyX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateAppleIAPConfig' test.out

#- 56 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteAppleIAPConfig' test.out

#- 57 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetEpicGamesIAPConfig' test.out

#- 58 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "4IE1z3rD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateEpicGamesIAPConfig' test.out

#- 59 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteEpicGamesIAPConfig' test.out

#- 60 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGoogleIAPConfig' test.out

#- 61 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "wZ1HKsOp", "serviceAccountId": "yq8agQuz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateGoogleIAPConfig' test.out

#- 62 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteGoogleIAPConfig' test.out

#- 63 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateGoogleP12File' test.out

#- 64 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetIAPItemConfig' test.out

#- 65 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "86nc6jLF", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"DIW2ncJJ": "KpqmgvUT", "r8XAtpOq": "UQxzqJZi", "Wi3KQffT": "5Tn61A1x"}}, {"itemIdentity": "W6okIqmd", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ir9op4Yf": "GTno5oHz", "qY3DgykA": "8zBJX0rk", "OHUkY5aS": "lqhYoSXb"}}, {"itemIdentity": "n6l5xAzc", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nc3eFm95": "0dtVAo7w", "4e3v5mh6": "Rum5pbgE", "t39uJQpg": "EtchTe3n"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateIAPItemConfig' test.out

#- 66 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteIAPItemConfig' test.out

#- 67 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetPlayStationIAPConfig' test.out

#- 68 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "t7t9ztpr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "SfW9OutA", "publisherAuthenticationKey": "DrNGBWSJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateSteamIAPConfig' test.out

#- 72 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteSteamIAPConfig' test.out

#- 73 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetTwitchIAPConfig' test.out

#- 74 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "1zQKxVmR", "clientSecret": "TawjiZPM", "organizationId": "oZZcyGEH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateTwitchIAPConfig' test.out

#- 75 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteTwitchIAPConfig' test.out

#- 76 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetXblIAPConfig' test.out

#- 77 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "xAKDQher"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateXblIAPConfig' test.out

#- 78 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteXblAPConfig' test.out

#- 79 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateXblBPCertFile' test.out

#- 80 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '3usApPdJ' \
    'Pn9eIdhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'BvTTupAB' \
    'J4RwH3Ed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'KmYtbqQH' \
    --body '{"categoryPath": "NfIZwrMx", "targetItemId": "f3EnzZVn", "targetNamespace": "kLT0Lb85"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'nmpdN26B' \
    --body '{"appId": "Y5YI0jeO", "appType": "SOFTWARE", "baseAppId": "zMDSy4ky", "boothName": "qyKgrtEP", "categoryPath": "dXXlt8ge", "clazz": "CdiXu3iN", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"EZmuQrZ8": {}, "GaQ4OZ2n": {}, "Dodm4TNs": {}}, "features": ["RPOzwuDS", "8mAj6IKS", "YFdJwgZs"], "images": [{"as": "dGl1A2va", "caption": "NeDiSqTf", "height": 25, "imageUrl": "BpdDFfvz", "smallImageUrl": "eU5iqhx6", "width": 52}, {"as": "xlxgywkb", "caption": "dOsyxX1t", "height": 12, "imageUrl": "H6sREmmf", "smallImageUrl": "wUZLZZS7", "width": 38}, {"as": "8obTlGVT", "caption": "hz4bm41o", "height": 71, "imageUrl": "oJfey3HX", "smallImageUrl": "L6SjljNP", "width": 93}], "itemIds": ["kjCVpZKM", "xkFkBtXM", "U6KRIm5x"], "itemQty": {"BoIi99ct": 12, "8tlkxWKC": 97, "780ktjQw": 68}, "itemType": "LOOTBOX", "listable": true, "localizations": {"XzaQWaF2": {"description": "PqUfbpMp", "localExt": {"Rl6xRyV1": {}, "9cborUHe": {}, "CpqnZ5NW": {}}, "longDescription": "623WWn2Z", "title": "JY3QvRa7"}, "CDRTcsAH": {"description": "zD3dZyyW", "localExt": {"bUQpbcv3": {}, "IwmL7a1K": {}, "3zIUYJmd": {}}, "longDescription": "F1YtWNSQ", "title": "lcMzxfpp"}, "NCrscDPb": {"description": "klTHcmgX", "localExt": {"srVj3Mjm": {}, "l6BpCODW": {}, "GOLMmCZU": {}}, "longDescription": "eelXYyNr", "title": "XweiCnDl"}}, "lootBoxConfig": {"rewardCount": 8, "rewards": [{"lootBoxItems": [{"count": 89, "itemId": "VVsQ1fm9", "itemSku": "EUdiaRju", "itemType": "LsKZoqnp"}, {"count": 75, "itemId": "MC8wsOBy", "itemSku": "QAMAgqFE", "itemType": "zEt8umj5"}, {"count": 15, "itemId": "vIddlxnA", "itemSku": "1VynioJc", "itemType": "APwVHUGc"}], "name": "s1ACMvoY", "odds": 0.9129665643361181, "type": "PROBABILITY_GROUP", "weight": 100}, {"lootBoxItems": [{"count": 93, "itemId": "H9dFmOHW", "itemSku": "0j9suukP", "itemType": "E4JwQONQ"}, {"count": 58, "itemId": "vCbMn0Oi", "itemSku": "a336uiiM", "itemType": "TAductvU"}, {"count": 10, "itemId": "6EyVqstp", "itemSku": "gZpbz77y", "itemType": "88rUFum2"}], "name": "ZcA8iKcF", "odds": 0.8515300632987759, "type": "PROBABILITY_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 21, "itemId": "zCG6ZKQC", "itemSku": "lGc1636n", "itemType": "bfM3J9G4"}, {"count": 98, "itemId": "Y62bCo94", "itemSku": "1ALznQuH", "itemType": "VskfCjUK"}, {"count": 76, "itemId": "GeX4Q0B2", "itemSku": "Cj0oOmBm", "itemType": "Xu1KiTTi"}], "name": "z7yrIvQj", "odds": 0.877628867192412, "type": "PROBABILITY_GROUP", "weight": 61}], "rollFunction": "DEFAULT"}, "maxCount": 71, "maxCountPerUser": 82, "name": "NE3HjCiV", "optionBoxConfig": {"boxItems": [{"count": 90, "itemId": "lW5YwgZp", "itemSku": "jlMMtPWg", "itemType": "8217m7qN"}, {"count": 22, "itemId": "a9PDwhu3", "itemSku": "1d8eOdtr", "itemType": "fq6ECDD6"}, {"count": 82, "itemId": "7mgTtUdP", "itemSku": "VcQijMBh", "itemType": "s0kDP6d3"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 64, "fixedTrialCycles": 94, "graceDays": 16}, "regionData": {"Z41mSeS9": [{"currencyCode": "SnGqhJOv", "currencyNamespace": "ykBcDpzD", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1974-03-08T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1973-08-16T00:00:00Z", "discountedPrice": 41, "expireAt": "1986-12-06T00:00:00Z", "price": 76, "purchaseAt": "1988-12-19T00:00:00Z", "trialPrice": 11}, {"currencyCode": "sE0GHDOF", "currencyNamespace": "jrfqJcyx", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1995-06-03T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1974-08-27T00:00:00Z", "discountedPrice": 86, "expireAt": "1987-03-16T00:00:00Z", "price": 55, "purchaseAt": "1987-05-18T00:00:00Z", "trialPrice": 53}, {"currencyCode": "K7Hip0eO", "currencyNamespace": "NFDgUPSh", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1982-11-06T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1977-09-14T00:00:00Z", "discountedPrice": 78, "expireAt": "1990-05-29T00:00:00Z", "price": 56, "purchaseAt": "1990-08-04T00:00:00Z", "trialPrice": 66}], "MpcwJd4S": [{"currencyCode": "rigIxAhb", "currencyNamespace": "FMZfxazn", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1985-12-12T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1971-12-23T00:00:00Z", "discountedPrice": 53, "expireAt": "1986-06-24T00:00:00Z", "price": 17, "purchaseAt": "1987-09-16T00:00:00Z", "trialPrice": 52}, {"currencyCode": "rQB1yUon", "currencyNamespace": "irH4URx3", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1989-12-14T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1985-05-22T00:00:00Z", "discountedPrice": 74, "expireAt": "1976-08-18T00:00:00Z", "price": 96, "purchaseAt": "1973-01-04T00:00:00Z", "trialPrice": 6}, {"currencyCode": "MiFEWUT8", "currencyNamespace": "cAFO5zEw", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1991-09-07T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1986-09-20T00:00:00Z", "discountedPrice": 86, "expireAt": "1989-10-09T00:00:00Z", "price": 49, "purchaseAt": "1999-07-05T00:00:00Z", "trialPrice": 23}], "Ow7xNQ98": [{"currencyCode": "IEbc9YIT", "currencyNamespace": "N98j4P2A", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1995-03-09T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1972-01-08T00:00:00Z", "discountedPrice": 21, "expireAt": "1993-07-15T00:00:00Z", "price": 90, "purchaseAt": "1977-04-23T00:00:00Z", "trialPrice": 68}, {"currencyCode": "IAJfKVjO", "currencyNamespace": "n6rtILNJ", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1998-08-28T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1979-11-02T00:00:00Z", "discountedPrice": 25, "expireAt": "1990-07-18T00:00:00Z", "price": 54, "purchaseAt": "1985-06-11T00:00:00Z", "trialPrice": 91}, {"currencyCode": "5hDs45si", "currencyNamespace": "G30Lv9iG", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1977-02-05T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1996-04-01T00:00:00Z", "discountedPrice": 20, "expireAt": "1993-04-15T00:00:00Z", "price": 95, "purchaseAt": "1993-06-26T00:00:00Z", "trialPrice": 98}]}, "seasonType": "PASS", "sku": "cHZZjFeg", "stackable": false, "status": "ACTIVE", "tags": ["ii4KpYcb", "2JYkwLdm", "R97u9MVU"], "targetCurrencyCode": "1AUsESaB", "targetNamespace": "OTHnbX9t", "thumbnailUrl": "C9PQlFAG", "useCount": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'Qp3kTyL4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetItemByAppId' test.out

#- 85 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'QueryItems' test.out

#- 86 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'ListBasicItemsByFeatures' test.out

#- 87 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'CsLwiWUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'cpxn4B6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'oTNMuqZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetItemIdBySku' test.out

#- 90 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetBulkItemIdBySkus' test.out

#- 91 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'Hwo1IAJQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkGetLocaleItems' test.out

#- 92 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetAvailablePredicateTypes' test.out

#- 93 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'pb6r8Zea' \
    --body '{"itemIds": ["SHwQuiH3", "Ozu4G6bX", "xp0gYZyF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '9fJBJkSO' \
    'rF9Dg4Fc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'SearchItems' test.out

#- 95 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'QueryUncategorizedItems' test.out

#- 96 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'DwBGyBiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'ewZkwEeu' \
    'zBBRSknx' \
    --body '{"appId": "yWkZObuv", "appType": "DLC", "baseAppId": "IVuGv47X", "boothName": "JpkMiopQ", "categoryPath": "rVL3ZZTV", "clazz": "xqa9XM2g", "displayOrder": 95, "entitlementType": "DURABLE", "ext": {"4iWk12Jf": {}, "fk8dwKNP": {}, "UOHNZxML": {}}, "features": ["nMxge2in", "d6PWz7sV", "3yoBM9qx"], "images": [{"as": "L8fBFP1A", "caption": "BaIKrEt8", "height": 6, "imageUrl": "LkM6o3eG", "smallImageUrl": "SP4Htmr9", "width": 77}, {"as": "TqGf0Oyq", "caption": "J9ibJMmR", "height": 12, "imageUrl": "Ky0IjsDg", "smallImageUrl": "bJ37DN2l", "width": 61}, {"as": "TM0tefVQ", "caption": "PWX1NPO5", "height": 99, "imageUrl": "q7TCUJhD", "smallImageUrl": "sDefAS09", "width": 97}], "itemIds": ["EzpX0Itt", "sRezyY9G", "B5sf94AL"], "itemQty": {"BmvdncQk": 5, "MSPIHPtq": 52, "9bww15zZ": 37}, "itemType": "CODE", "listable": false, "localizations": {"nt1iBV8D": {"description": "pbjGts4U", "localExt": {"ZDTfhAyZ": {}, "Khqilty9": {}, "NVlgxUmn": {}}, "longDescription": "fdOAmu1d", "title": "X1NqD20R"}, "UvvYeJZw": {"description": "6QZFN7wF", "localExt": {"CnqpvNes": {}, "GiVnt9p2": {}, "to7Yja1s": {}}, "longDescription": "oDE1K0Sv", "title": "GrMYwPmP"}, "XC2LfL2m": {"description": "5rP2A20t", "localExt": {"6foPPH94": {}, "SUinY5di": {}, "UlqgvY7d": {}}, "longDescription": "PPyahppg", "title": "xJhk4EdT"}}, "lootBoxConfig": {"rewardCount": 96, "rewards": [{"lootBoxItems": [{"count": 41, "itemId": "00rS9259", "itemSku": "4HLvWFsX", "itemType": "HtMP0k9L"}, {"count": 8, "itemId": "7xEJ40ep", "itemSku": "ssgJJC3C", "itemType": "X0hpB1ZG"}, {"count": 78, "itemId": "RzBkf9A6", "itemSku": "HjCnFRdS", "itemType": "ihcvszzQ"}], "name": "LZBktk0s", "odds": 0.13029118552024532, "type": "REWARD_GROUP", "weight": 42}, {"lootBoxItems": [{"count": 32, "itemId": "rghZwGhd", "itemSku": "ZJkkGhYv", "itemType": "XYMIyaEM"}, {"count": 63, "itemId": "KGBnzh4s", "itemSku": "uaGIzttT", "itemType": "ncVBf5g3"}, {"count": 29, "itemId": "9GWKpItM", "itemSku": "t4GszRuf", "itemType": "kDFLYyNB"}], "name": "PlMrkse9", "odds": 0.7244781350803631, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 5, "itemId": "fMAvvpkA", "itemSku": "HRJHZyfr", "itemType": "XZmiJX4C"}, {"count": 18, "itemId": "XNd6ve29", "itemSku": "lqqtcLJW", "itemType": "9eTJvKND"}, {"count": 64, "itemId": "jaf1f5fj", "itemSku": "NMZjKJ05", "itemType": "puX3197W"}], "name": "rMnJtovS", "odds": 0.6286104627807689, "type": "REWARD_GROUP", "weight": 67}], "rollFunction": "DEFAULT"}, "maxCount": 26, "maxCountPerUser": 75, "name": "zxbdfXgu", "optionBoxConfig": {"boxItems": [{"count": 28, "itemId": "07ZzzIs3", "itemSku": "Jke34ZAU", "itemType": "uLP897oo"}, {"count": 79, "itemId": "YBd6hMB0", "itemSku": "l7sg7IfM", "itemType": "H5Tu1ky1"}, {"count": 76, "itemId": "YvyeHmfo", "itemSku": "FkUDP864", "itemType": "shbnQ3bV"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 43, "fixedTrialCycles": 49, "graceDays": 44}, "regionData": {"QMit8555": [{"currencyCode": "Niy4NNFp", "currencyNamespace": "RE5pS85y", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1992-06-19T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1990-02-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-07-20T00:00:00Z", "price": 26, "purchaseAt": "1995-09-07T00:00:00Z", "trialPrice": 74}, {"currencyCode": "biRq5Jui", "currencyNamespace": "kmpat75r", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1973-11-26T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-01-31T00:00:00Z", "discountedPrice": 57, "expireAt": "1991-06-03T00:00:00Z", "price": 26, "purchaseAt": "1984-06-16T00:00:00Z", "trialPrice": 73}, {"currencyCode": "6OIG1PPL", "currencyNamespace": "RDEXLXZW", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1998-11-13T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1985-11-22T00:00:00Z", "discountedPrice": 69, "expireAt": "1985-06-22T00:00:00Z", "price": 82, "purchaseAt": "1997-05-05T00:00:00Z", "trialPrice": 92}], "eMjMzguq": [{"currencyCode": "6HFIqaqw", "currencyNamespace": "H9J6JLb5", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1999-06-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1985-12-16T00:00:00Z", "discountedPrice": 78, "expireAt": "1998-07-19T00:00:00Z", "price": 89, "purchaseAt": "1989-03-18T00:00:00Z", "trialPrice": 96}, {"currencyCode": "Sf1srB7h", "currencyNamespace": "GwGbUmQm", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1992-02-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1973-02-26T00:00:00Z", "discountedPrice": 62, "expireAt": "1998-11-19T00:00:00Z", "price": 41, "purchaseAt": "1980-12-19T00:00:00Z", "trialPrice": 87}, {"currencyCode": "0hFMdzry", "currencyNamespace": "vhc1YjHm", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1981-07-18T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1980-01-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1973-10-13T00:00:00Z", "price": 62, "purchaseAt": "1988-04-03T00:00:00Z", "trialPrice": 32}], "c2CdRvBb": [{"currencyCode": "0aGnMt62", "currencyNamespace": "5bWHb5sb", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1971-06-04T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1980-03-20T00:00:00Z", "discountedPrice": 20, "expireAt": "1984-12-05T00:00:00Z", "price": 73, "purchaseAt": "1993-01-11T00:00:00Z", "trialPrice": 84}, {"currencyCode": "WvSSp71z", "currencyNamespace": "EPPfmAQi", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1993-12-20T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1985-01-17T00:00:00Z", "discountedPrice": 70, "expireAt": "1971-11-08T00:00:00Z", "price": 33, "purchaseAt": "1982-06-20T00:00:00Z", "trialPrice": 78}, {"currencyCode": "GikW7TFA", "currencyNamespace": "9gE6SrYK", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1976-10-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1993-11-20T00:00:00Z", "discountedPrice": 83, "expireAt": "1978-03-02T00:00:00Z", "price": 64, "purchaseAt": "1992-12-21T00:00:00Z", "trialPrice": 72}]}, "seasonType": "PASS", "sku": "UxdMuvmL", "stackable": false, "status": "ACTIVE", "tags": ["3Wd0Wrb8", "BfwzaaeP", "s3GW0CY0"], "targetCurrencyCode": "vAfbq8xo", "targetNamespace": "Curq4lpH", "thumbnailUrl": "XrbVBh60", "useCount": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'lyU4IJnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'trjCOsE8' \
    --body '{"count": 98, "orderNo": "u4sQPvaf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '1AcweR7t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'JW3MLMob' \
    '1hUnIzIp' \
    --body '{"carousel": [{"alt": "UM8KK1kG", "previewUrl": "FN0NUNGK", "thumbnailUrl": "xdlAUDFQ", "type": "video", "url": "TekDMCGU", "videoSource": "youtube"}, {"alt": "6OBrNwio", "previewUrl": "KnXPVZaD", "thumbnailUrl": "cXsV1Tns", "type": "image", "url": "19Pf2iog", "videoSource": "vimeo"}, {"alt": "ahPB0FKM", "previewUrl": "a0YeyNBQ", "thumbnailUrl": "WUHDBnBe", "type": "image", "url": "34WUV0Wp", "videoSource": "generic"}], "developer": "Lr5BlO8K", "forumUrl": "6LH4dSaa", "genres": ["Strategy", "RPG", "Simulation"], "localizations": {"vhSkxERZ": {"announcement": "2AQ1jvXY", "slogan": "Bar5RMmm"}, "GdWl0wpj": {"announcement": "5tVfKU3D", "slogan": "8WVPh0Z7"}, "YiGE2cyz": {"announcement": "TMBY7Xd0", "slogan": "OoENg2Lw"}}, "platformRequirements": {"7uepmahX": [{"additionals": "ojVZYz2z", "directXVersion": "MU9jLzNV", "diskSpace": "3GaG43R6", "graphics": "nlRPrEAY", "label": "qRBeSc5u", "osVersion": "Shoj3dGH", "processor": "Meoi5DBO", "ram": "sQ0Gax0i", "soundCard": "X05IT9Ag"}, {"additionals": "sjl5NmnS", "directXVersion": "HhxNmCe4", "diskSpace": "txY0MsPc", "graphics": "9EMgf9JC", "label": "JiEvhL8Z", "osVersion": "fwCVJW9y", "processor": "spUOyHC9", "ram": "eKeXzrvz", "soundCard": "BllwzyC1"}, {"additionals": "aTWEmPgo", "directXVersion": "y4TkpEw4", "diskSpace": "Zeid4mRo", "graphics": "FNxv10ck", "label": "MQVjKk3b", "osVersion": "WJ0ZuYSe", "processor": "3sI0x2hc", "ram": "8vaN1Off", "soundCard": "5gRZZMW3"}], "huAIzBPW": [{"additionals": "BYKAEFTd", "directXVersion": "lKNh6GTz", "diskSpace": "KjsCqxx2", "graphics": "4QM35bSk", "label": "FrvGciNH", "osVersion": "b7OY5YIp", "processor": "OLJW52uz", "ram": "3c8pz63M", "soundCard": "0g4xXT5T"}, {"additionals": "s4e0uR47", "directXVersion": "OzUGHeBK", "diskSpace": "tpvyRNgj", "graphics": "ZkdDppvE", "label": "JiUiDGXg", "osVersion": "h8BKcLqt", "processor": "RZ93LuR8", "ram": "OEyICvwg", "soundCard": "wBFehwtd"}, {"additionals": "JLdn3R2w", "directXVersion": "o8beVQvg", "diskSpace": "eP9qOHaL", "graphics": "wYnXxrz7", "label": "sLmP70Lx", "osVersion": "N0f3JA27", "processor": "Qz5SjzQf", "ram": "OLYu9O46", "soundCard": "OOzz9p57"}], "qSpHerzO": [{"additionals": "87cg7Tqt", "directXVersion": "MiQgi7Aj", "diskSpace": "28qCRbww", "graphics": "Zc4ZS1NM", "label": "krnHs1Iy", "osVersion": "hwqk140M", "processor": "olIrnlkR", "ram": "VbcX435T", "soundCard": "DYpkk2Gz"}, {"additionals": "a6DrSyco", "directXVersion": "phHw3EoE", "diskSpace": "EClTO9SD", "graphics": "KnMlnKW9", "label": "jiNMu9QV", "osVersion": "rMeD4bD8", "processor": "gISE34yI", "ram": "AZQeigiA", "soundCard": "3wBrmBYI"}, {"additionals": "lZeheP72", "directXVersion": "AB8EO3Yr", "diskSpace": "lyrWowUp", "graphics": "UDVLlTtu", "label": "JJsHZVsG", "osVersion": "6izJZruO", "processor": "JvSRFLDS", "ram": "dj8elbtH", "soundCard": "vDU91DmH"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["LocalCoop", "CrossPlatformMulti", "Multi"], "primaryGenre": "Indie", "publisher": "WYOuITlY", "releaseDate": "1994-11-25T00:00:00Z", "websiteUrl": "2RYaD9WN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'KGhbLhjz' \
    '1v0RBIO2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'rkJGmPaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '6HEVIQJd' \
    '3930TGew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'jRyfo4nW' \
    'VZZbKFsK' \
    'OmgEhjH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'wFzCpxxJ' \
    'LfAg5cFT' \
    '0gHAkltc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'R3eHFbiA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'luHv7Hss' \
    'd05pHBJX' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 24, "comparison": "isLessThan", "name": "n8PZbYVD", "predicateType": "EntitlementPredicate", "value": "RiaTsdD4", "values": ["PMUvOAUX", "kw36cr2W", "d3kSbTkH"]}, {"anyOf": 73, "comparison": "isLessThanOrEqual", "name": "qS7Tq4YI", "predicateType": "SeasonPassPredicate", "value": "yCSXBqJq", "values": ["jAbVwSao", "Pkr3tZ50", "j1ugjr8m"]}, {"anyOf": 76, "comparison": "isNot", "name": "vqcfSdO1", "predicateType": "EntitlementPredicate", "value": "rkxu0U9h", "values": ["9gCNVZxH", "GxhZqNXJ", "6JXSh0Z3"]}]}, {"operator": "or", "predicates": [{"anyOf": 38, "comparison": "excludes", "name": "to74GcmV", "predicateType": "EntitlementPredicate", "value": "T6iLFQej", "values": ["NZJNF2hm", "n3whPKU5", "0TqBQprH"]}, {"anyOf": 0, "comparison": "excludes", "name": "3qstMuik", "predicateType": "SeasonTierPredicate", "value": "0pVbhr1B", "values": ["uLcZoEkP", "Hh1arZAy", "pqKhP2jW"]}, {"anyOf": 28, "comparison": "isNot", "name": "glw0gdWo", "predicateType": "SeasonPassPredicate", "value": "zHR8VyCC", "values": ["okXbwKDt", "0EQwE0cX", "VmrYQu7h"]}]}, {"operator": "and", "predicates": [{"anyOf": 43, "comparison": "is", "name": "fiT9s9pK", "predicateType": "SeasonPassPredicate", "value": "HuUY1QQH", "values": ["D7lNLxlp", "Q0NCEddJ", "tx6GV01v"]}, {"anyOf": 44, "comparison": "isGreaterThanOrEqual", "name": "ldsgB4hO", "predicateType": "SeasonPassPredicate", "value": "kfCEIeSB", "values": ["HcRuJgYa", "LhTfzigz", "j4I8Dzyh"]}, {"anyOf": 38, "comparison": "includes", "name": "JEKNoMtH", "predicateType": "SeasonPassPredicate", "value": "n63KIDTk", "values": ["HDntaFiu", "UCqbbHGJ", "GOTvKKRT"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'fH2YR6QU' \
    --body '{"orderNo": "7fj6w17a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'ReturnItem' test.out

#- 110 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'QueryKeyGroups' test.out

#- 111 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "rNs12hOo", "name": "LVM7UFnu", "status": "ACTIVE", "tags": ["DzeEkDxa", "VogxHrOo", "n2OW4Zw5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'QwVKWNy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'tnF2MifJ' \
    --body '{"description": "R4hr4gdJ", "name": "DujYnVnF", "status": "ACTIVE", "tags": ["6gB6ZxC6", "yYUVUJYn", "Q3jOGmRO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'IqxqQ0gc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'NeTflyvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'h3w5Ztfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UploadKeys' test.out

#- 118 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'QueryOrders' test.out

#- 119 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetOrderStatistics' test.out

#- 120 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'mOCKpFSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'F0tfGIZC' \
    --body '{"description": "TNiIRc9f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'RefundOrder' test.out

#- 122 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'GetPaymentCallbackConfig' test.out

#- 123 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "fO9MnoT3", "privateKey": "t99Hmcxz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'UpdatePaymentCallbackConfig' test.out

#- 124 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentNotifications' test.out

#- 125 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentOrders' test.out

#- 126 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "jDhTrcBK", "currencyNamespace": "tU956hOg", "customParameters": {"8oukDVdw": {}, "eG0sFHxT": {}, "Ha2k60Sz": {}}, "description": "CqUgq1gL", "extOrderNo": "bcIMevTm", "extUserId": "C631p7q7", "itemType": "SEASON", "language": "BQU_gyuo-Rz", "metadata": {"ByWN2BCn": "Rz9w2nur", "0B9jKaun": "Acylsau7", "wRQmL4i3": "eRyIECED"}, "notifyUrl": "a1I4lwXq", "omitNotification": true, "platform": "bVd20FVH", "price": 8, "recurringPaymentOrderNo": "jtolx64w", "region": "1gyvjacK", "returnUrl": "tGqxMnoA", "sandbox": true, "sku": "lcq0mYWK", "subscriptionId": "QYlqMmu2", "targetNamespace": "pvF6rP03", "targetUserId": "bQaq1cT8", "title": "8H6RCW8g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'JmGzDlqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'tLsR2AGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'iPhNt2Id' \
    --body '{"extTxId": "H8aYYUT6", "paymentMethod": "mma833TD", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'h0UyqxVW' \
    --body '{"description": "lIMY5tTJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'w4KV104M' \
    --body '{"amount": 40, "currencyCode": "xz4MQrOD", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 87, "vat": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'ZX5KjdNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Playstation' \
    --body '{"allowedBalanceOrigins": ["System", "GooglePlay", "Xbox"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 GetPaymentCallbackConfig1
$PYTHON -m $MODULE 'platform-get-payment-callback-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPaymentCallbackConfig1' test.out

#- 137 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateRevocationConfig' test.out

#- 138 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'DeleteRevocationConfig' test.out

#- 139 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'QueryRevocationHistories' test.out

#- 140 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "g4bsO4YH", "eventTopic": "EYLjTSND", "maxAwarded": 10, "maxAwardedPerUser": 35, "namespaceExpression": "zazm6p5Y", "rewardCode": "1tkG9WwU", "rewardConditions": [{"condition": "4Ty6Ch5Q", "conditionName": "YyFjuBqu", "eventName": "E7xssm4h", "rewardItems": [{"duration": 48, "itemId": "pWzpNXgn", "quantity": 29}, {"duration": 83, "itemId": "KIz8O8Ng", "quantity": 22}, {"duration": 72, "itemId": "JtZTh280", "quantity": 45}]}, {"condition": "ZmTTGYRb", "conditionName": "P4QVey9p", "eventName": "Ez1TV5cU", "rewardItems": [{"duration": 39, "itemId": "OrTn2huw", "quantity": 84}, {"duration": 79, "itemId": "gyUzBUWi", "quantity": 74}, {"duration": 10, "itemId": "oNGtvyk5", "quantity": 47}]}, {"condition": "wHv3Jgte", "conditionName": "OLyKp8a1", "eventName": "VqxXnRhD", "rewardItems": [{"duration": 6, "itemId": "BaVcohew", "quantity": 74}, {"duration": 21, "itemId": "qftw1SrM", "quantity": 22}, {"duration": 28, "itemId": "ErF0drbY", "quantity": 36}]}], "userIdExpression": "rMU6A43U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'CreateReward' test.out

#- 141 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'QueryRewards' test.out

#- 142 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'ExportRewards' test.out

#- 143 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ImportRewards' test.out

#- 144 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'pvC1cr5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '1PSXhduT' \
    --body '{"description": "WchzXDv3", "eventTopic": "TAtBjP4H", "maxAwarded": 91, "maxAwardedPerUser": 1, "namespaceExpression": "uiYCbG0U", "rewardCode": "yYUJmNL8", "rewardConditions": [{"condition": "p6AbdtU0", "conditionName": "CDrlQpKB", "eventName": "8qoel2QK", "rewardItems": [{"duration": 41, "itemId": "aSOYdmMD", "quantity": 16}, {"duration": 83, "itemId": "kc3Fjm9H", "quantity": 30}, {"duration": 33, "itemId": "QDemtiQv", "quantity": 95}]}, {"condition": "wDlYSli3", "conditionName": "p8YaAdel", "eventName": "3hHMSLAi", "rewardItems": [{"duration": 38, "itemId": "kdM7FVDC", "quantity": 57}, {"duration": 5, "itemId": "ZKuPxjDU", "quantity": 67}, {"duration": 86, "itemId": "RGcCEPjb", "quantity": 95}]}, {"condition": "j4z4cAM4", "conditionName": "LMJfWNZI", "eventName": "xAgBpeub", "rewardItems": [{"duration": 32, "itemId": "Es2LpE0q", "quantity": 11}, {"duration": 90, "itemId": "bvdU8hlD", "quantity": 30}, {"duration": 95, "itemId": "C9FnxqBl", "quantity": 86}]}], "userIdExpression": "9zmzUW0v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Pj90jmLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    't5YQGawc' \
    --body '{"payload": {"omPoiYoQ": {}, "1f1AYq30": {}, "6Pysv4VP": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'aZWolXyp' \
    --body '{"conditionName": "wucUqqqf", "userId": "f2iWi4yP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeleteRewardConditionRecord' test.out

#- 149 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'QuerySections' test.out

#- 150 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    '3uqNcig6' \
    --body '{"active": true, "displayOrder": 4, "endDate": "1995-08-25T00:00:00Z", "ext": {"QAbhS54Z": {}, "uQHKersD": {}, "mJLUHAKt": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 20, "itemCount": 16, "rule": "SEQUENCE"}, "items": [{"id": "9fbdvUMD", "sku": "ZeO4U55w"}, {"id": "dCpVpnEN", "sku": "iTc9NESV"}, {"id": "22eRBElD", "sku": "4K2Cy1tJ"}], "localizations": {"cPAEkCeV": {"description": "29QsQk10", "localExt": {"0eu5Ucxu": {}, "XXpt0YSP": {}, "X04uEIdA": {}}, "longDescription": "wgDobopb", "title": "dJeVCiKs"}, "2vLyH9kc": {"description": "SBdk7MwQ", "localExt": {"zn28Le5n": {}, "eohqhCzr": {}, "oAzWQDve": {}}, "longDescription": "0Z2G2N09", "title": "VIbbsz24"}, "fQKDZX6p": {"description": "lErw0Gb0", "localExt": {"ceCbphW4": {}, "YMhJ0S50": {}, "bez9ZLHW": {}}, "longDescription": "882riiPf", "title": "RQ3rJ0f5"}}, "name": "lwXvRNDB", "rotationType": "CUSTOM", "startDate": "1999-04-10T00:00:00Z", "viewId": "B0nrW1qx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '3NJTugVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'Xz8dv7Bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'EUqnzxs2' \
    'deMF8UAJ' \
    --body '{"active": true, "displayOrder": 61, "endDate": "1997-10-22T00:00:00Z", "ext": {"v5zyUUyN": {}, "JkvA5xF3": {}, "zHtZSd3Q": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 16, "itemCount": 62, "rule": "SEQUENCE"}, "items": [{"id": "QzOidrWn", "sku": "LrXqImgD"}, {"id": "f3GaJsdC", "sku": "ZND0wgYO"}, {"id": "ilX1e182", "sku": "5iasunES"}], "localizations": {"jcgr2drX": {"description": "G5NkKCyS", "localExt": {"LA8cKCs0": {}, "dFYRSa2O": {}, "ULZ0iOZJ": {}}, "longDescription": "iOAh1SpL", "title": "hMF2Pav1"}, "1FuU8iXC": {"description": "Rz8Kgqgw", "localExt": {"ijYxpGhs": {}, "FArq6lol": {}, "bj7QKvtV": {}}, "longDescription": "RCPMjr5M", "title": "3vw1GqUj"}, "jFp6R8mY": {"description": "ZwKftVqS", "localExt": {"ECsypS42": {}, "NmYQ8HlH": {}, "bHnfs4tL": {}}, "longDescription": "VOYQCWMk", "title": "tmiKd9vL"}}, "name": "PP0w52JR", "rotationType": "FIXED_PERIOD", "startDate": "1985-09-12T00:00:00Z", "viewId": "xMWdoleY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'NHXeOpaR' \
    'DwYLge85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteSection' test.out

#- 155 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'ListStores' test.out

#- 156 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "1PbK2MFK", "defaultRegion": "vw5TWjAh", "description": "4gy41LLz", "supportedLanguages": ["Q2IjY5Pe", "Nr4JmYxH", "2qs28heP"], "supportedRegions": ["JjMp0TKK", "UBfPNI9f", "2oLWDPSZ"], "title": "exfKVxqd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'CreateStore' test.out

#- 157 ImportStore
eval_tap 0 157 'ImportStore # SKIP deprecated' test.out

#- 158 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPublishedStore' test.out

#- 159 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'DeletePublishedStore' test.out

#- 160 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetPublishedStoreBackup' test.out

#- 161 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'RollbackPublishedStore' test.out

#- 162 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'xmh5QWxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'QuI7gdDT' \
    --body '{"defaultLanguage": "Db3WdnOp", "defaultRegion": "zTrRzCCa", "description": "fADJfWBs", "supportedLanguages": ["pT3MLwJZ", "quMQSPp5", "XD4S1ilf"], "supportedRegions": ["gff7Et4u", "Y8nlBwGN", "HgfgwZwV"], "title": "MvshGmsg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '6ZJYnkHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'nHTlRugM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '7a2UZgee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'sipbP027' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'okM5E8tA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'ajVSvLRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '306RDuaS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'ixXEdloY' \
    'ZBkatNLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '42eq0O6V' \
    'sXtOlQwj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '5xPvm7c5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'CloneStore' test.out

#- 174 ExportStore
eval_tap 0 174 'ExportStore # SKIP deprecated' test.out

#- 175 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'QuerySubscriptions' test.out

#- 176 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'nPR0Y1sf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'fUaZ64dF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'piv8o9Gw' \
    --body '{"orderNo": "4QtKgyIe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'ySoUxoMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'j2J4JGQZ' \
    --body '{"count": 55, "orderNo": "bMq4GLj8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'aGsH0qE5' \
    --body '{"achievements": [{"id": "p601ak59", "value": 50}, {"id": "IFEcS0yn", "value": 70}, {"id": "oYWPUS4Z", "value": 42}], "steamUserId": "QMooiKT5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '7rmbjEni' \
    'meR7EFBz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '43E9FkOP' \
    --body '{"achievements": [{"id": "Vu2fDtOj", "value": 99}, {"id": "vMOaXrDl", "value": 63}, {"id": "bBd5wb5H", "value": 66}], "serviceConfigId": "qppoCiHM", "titleId": "D4iBK2O7", "xboxUserId": "qYtOHV5h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'npjc5CNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'nnEvo25a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'Etdjls5o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'adseJg7y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '4Q9CU3fj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'SRaXD4HD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'mdvhMXxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'KR29LKIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'NU43K8bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'hdw3prp0' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'lWUxkBef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'hxRtrqbv' \
    --body '[{"endDate": "1996-08-20T00:00:00Z", "grantedCode": "oqwnCLVc", "itemId": "2qHZuued", "itemNamespace": "bBOd19Dq", "language": "kv-PRSo", "quantity": 78, "region": "DnXoncy7", "source": "PURCHASE", "startDate": "1992-05-11T00:00:00Z", "storeId": "PkAPXBCf"}, {"endDate": "1976-09-11T00:00:00Z", "grantedCode": "vaWLoKzH", "itemId": "nngdfFnO", "itemNamespace": "fY9stXH6", "language": "XLzy", "quantity": 49, "region": "MXHbEwAv", "source": "PURCHASE", "startDate": "1972-05-06T00:00:00Z", "storeId": "NzHhvxc4"}, {"endDate": "1983-10-21T00:00:00Z", "grantedCode": "APZ86WNn", "itemId": "QOhusPn4", "itemNamespace": "466u8agb", "language": "izrw_hwbX-rk", "quantity": 96, "region": "9vBRJ4UP", "source": "IAP", "startDate": "1973-01-04T00:00:00Z", "storeId": "W6LwcAg5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '7BYBVCbi' \
    '0ifdPyKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '3SwHekWI' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'JaOHzpb6' \
    '23EciYoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'OPVg6DLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'Z6DxpwBm' \
    '2N8PdQ5m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'QaGXEbnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'WR0H3Ekr' \
    '["HqaLNdfK", "szYZzOg1", "13h6fIaH"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'Sx5bClxU' \
    'OBmMwv5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'miIVnhlL' \
    'oMemsp7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '3F2LQw7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '2VdSxgXe' \
    'z7VvS0C9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'JLVQQPa7' \
    'PPx4Zi6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'aC8wk7HM' \
    'bJhNwZgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '5nlMDORY' \
    'uXnPNJga' \
    --body '{"endDate": "1983-08-16T00:00:00Z", "nullFieldList": ["PFcyUnKX", "A3mcyMmX", "6WF8jtNA"], "startDate": "1995-11-28T00:00:00Z", "status": "INACTIVE", "useCount": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'SH533YlJ' \
    '93CCGBXv' \
    --body '{"options": ["4fP4VPzh", "cH4UJrrC", "KvrOAi7l"], "requestId": "MgkVWJYz", "useCount": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'ES6YJLlb' \
    '2AfUEEBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'qMMKvkOs' \
    'R1fHUyir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'MVMOFES2' \
    'J2OzNlJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '3uqZz574' \
    'g31cA0Pw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'ZxTIZVSG' \
    --body '{"duration": 88, "endDate": "1983-03-06T00:00:00Z", "itemId": "Tzhs9Asy", "itemSku": "4d629N4Y", "language": "nolVWA2d", "order": {"currency": {"currencyCode": "WxBs056j", "currencySymbol": "kPCUuE1p", "currencyType": "REAL", "decimals": 54, "namespace": "dHvlQKiR"}, "ext": {"7SDQUDav": {}, "OlKT5EIH": {}, "NhJQq94R": {}}, "free": false}, "orderNo": "qNZrLCRR", "origin": "Steam", "quantity": 50, "region": "9IltQUku", "source": "IAP", "startDate": "1984-11-14T00:00:00Z", "storeId": "2atB0QPQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'PEp5UtwU' \
    --body '{"code": "WGt6tooH", "language": "mQKb-WalA_pE", "region": "80L7IOHl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'f6j8PZOz' \
    --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "iQKZqz5N", "namespace": "Sp0B7LOD"}, "item": {"itemId": "N3Boi2sS", "itemSku": "AO2n4MZQ", "itemType": "t753XQB9"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "LmvEOaRc", "namespace": "qTgF0xtQ"}, "item": {"itemId": "AXoDoFkm", "itemSku": "A3fgzcwd", "itemType": "gJMjIyGf"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "NBQy41M1", "namespace": "gzGCbaxw"}, "item": {"itemId": "33rNbE4b", "itemSku": "bDU4FMTb", "itemType": "QaANJOOD"}, "quantity": 67, "type": "CURRENCY"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'qehObg3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'Z9j0HDtb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'qMFlgHKQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'IRtLfPng' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "FR_pOEF-104", "productId": "CAeExeQX", "region": "43LpmdMi", "type": "EPICGAMES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'BWDoc3qN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'cQFFyHv1' \
    --body '{"currencyCode": "41NPqjRU", "currencyNamespace": "MKSQjFdj", "discountedPrice": 34, "ext": {"sEHvSxjW": {}, "oM1rNJLM": {}, "0OOVG5cG": {}}, "itemId": "6XxENbWq", "language": "lX7idzjp", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 9, "quantity": 11, "region": "NLYxMID9", "returnUrl": "pqZ5rryi", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    't6fQtLhz' \
    'ylaquioT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '3QBt29Ai' \
    'RASsuFM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'ahGw7XcF' \
    '1Qwzz606' \
    --body '{"status": "REFUNDED", "statusReason": "Ce5BtKcw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'j6PqqOgC' \
    'imr3ZQNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'BkrXu9cz' \
    'sYr3cFeV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'w70xdNTu' \
    'OdLKK0M2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'B2hbqJin' \
    '37P69t1K' \
    --body '{"additionalData": {"cardSummary": "qeGz7qbP"}, "authorisedTime": "1978-08-02T00:00:00Z", "chargebackReversedTime": "1996-05-26T00:00:00Z", "chargebackTime": "1986-06-12T00:00:00Z", "chargedTime": "1991-11-28T00:00:00Z", "createdTime": "1982-08-01T00:00:00Z", "currency": {"currencyCode": "QAn2LuMj", "currencySymbol": "LqwmVz3z", "currencyType": "REAL", "decimals": 38, "namespace": "h1HIk7vC"}, "customParameters": {"Eq7FQ2S5": {}, "VeW9ddxz": {}, "LPV8wDjs": {}}, "extOrderNo": "nyPh5yNb", "extTxId": "YXmlAOi1", "extUserId": "SC3I1Sjk", "issuedAt": "1988-01-29T00:00:00Z", "metadata": {"42LtyZKr": "TJo0L5sH", "il4Q0mqa": "8GatrjbJ", "5YT7uvqa": "rTvrG1DX"}, "namespace": "ZAWlvz3c", "nonceStr": "3XALMres", "paymentMethod": "GFfsH4aX", "paymentMethodFee": 57, "paymentOrderNo": "UxzXHUvx", "paymentProvider": "ALIPAY", "paymentProviderFee": 36, "paymentStationUrl": "vTZcvRKo", "price": 1, "refundedTime": "1974-11-15T00:00:00Z", "salesTax": 6, "sandbox": false, "sku": "VGHQczI5", "status": "CHARGED", "statusReason": "oTRUkjGo", "subscriptionId": "RkPs2SO9", "subtotalPrice": 49, "targetNamespace": "rgXNIaU1", "targetUserId": "1cBXLwTf", "tax": 28, "totalPrice": 31, "totalTax": 31, "txEndTime": "1992-05-14T00:00:00Z", "type": "7n7M3JXj", "userId": "Evsj5WcQ", "vat": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '9M1yuXeq' \
    'V31LX2eh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'cMnM6Qtj' \
    --body '{"currencyCode": "zQjDlUMC", "currencyNamespace": "GnxZwak7", "customParameters": {"KHnzGASm": {}, "VzePIroz": {}, "41oQCuXe": {}}, "description": "TRyJQrNL", "extOrderNo": "TcqLVTN5", "extUserId": "Qf4tjPGp", "itemType": "INGAMEITEM", "language": "fY_vPJG-vP", "metadata": {"WIfgdNph": "qe9fS1m7", "7MAg4KoZ": "QPLhDSJx", "9jzxaRKp": "h4kiIFgS"}, "notifyUrl": "4fLqlrKG", "omitNotification": false, "platform": "ErmeH0lX", "price": 10, "recurringPaymentOrderNo": "hj0LaXgQ", "region": "94flh775", "returnUrl": "AQfzNjQ7", "sandbox": true, "sku": "eSpMny0G", "subscriptionId": "rvKI5EVB", "title": "9ZFzLNsj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'dCFtKY0K' \
    'sxR0rCFk' \
    --body '{"description": "yiQZfMnT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'bKdwNhiI' \
    --body '{"code": "P7dpJ8B8", "orderNo": "VwFQnVco"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '2oCn1KvJ' \
    --body '{"meta": {"mbjapW9U": {}, "lEqtzDd7": {}, "SgxdxB5k": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "2ksG3nZE", "namespace": "13H2fILF"}, "entitlement": {"clazz": "LOOTBOX", "entitlementId": "X8ERZcKS", "type": "DURABLE"}, "item": {"itemIdentity": "Lo6y7yJM", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 45, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "6LpHCvCY", "namespace": "TgX9JQwE"}, "entitlement": {"clazz": "ENTITLEMENT", "entitlementId": "Y8qNwB2T", "type": "DURABLE"}, "item": {"itemIdentity": "v9NNfQSY", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 71, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "l3FNFFJn", "namespace": "t3rIwZdW"}, "entitlement": {"clazz": "SUBSCRIPTION", "entitlementId": "8ubfdXi7", "type": "DURABLE"}, "item": {"itemIdentity": "816aH6gO", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 95, "type": "ITEM"}], "source": "DLC", "transactionId": "MeL0GL3a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'efSDME8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '2MxILI42' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'BJMPkZma' \
    --body '{"grantDays": 50, "itemId": "f558h1lt", "language": "yhiSGhfq", "reason": "XhxBJ7zL", "region": "XioAGkWg", "source": "SDdDQvpR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'fGe3z2rt' \
    'jWpJAlKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'F0ebxhJ1' \
    '176CeD4d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'WCp4wqlQ' \
    'JcZroNQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'efBnPluO' \
    'IjZyvlGD' \
    --body '{"immediate": false, "reason": "Gv6pNNow"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'EuVVZM28' \
    'w4mnYvvl' \
    --body '{"grantDays": 39, "reason": "P2j2WsQI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'mTwYkiux' \
    'zLrbJ0Bk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'GzCNgesQ' \
    'lZZHIZH0' \
    --body '{"additionalData": {"cardSummary": "iks6kx0a"}, "authorisedTime": "1972-04-18T00:00:00Z", "chargebackReversedTime": "1977-11-10T00:00:00Z", "chargebackTime": "1975-04-13T00:00:00Z", "chargedTime": "1992-12-13T00:00:00Z", "createdTime": "1983-12-02T00:00:00Z", "currency": {"currencyCode": "yzezsHdF", "currencySymbol": "ftHHR6xb", "currencyType": "REAL", "decimals": 88, "namespace": "VVonwz27"}, "customParameters": {"DWfGRVhb": {}, "ZTvCPrrZ": {}, "CTU5WUJi": {}}, "extOrderNo": "zF69PSsq", "extTxId": "uWUafwbF", "extUserId": "PX15633p", "issuedAt": "1987-01-15T00:00:00Z", "metadata": {"gA7i9tqv": "fHmFvUZi", "UW5Y0CYw": "5OXSGwQk", "Juy9oLFc": "HHcraLXR"}, "namespace": "2n9JQvq7", "nonceStr": "NKWIHYsi", "paymentMethod": "i3fCh7si", "paymentMethodFee": 9, "paymentOrderNo": "lulfmya7", "paymentProvider": "WALLET", "paymentProviderFee": 15, "paymentStationUrl": "mllU31uX", "price": 86, "refundedTime": "1992-06-30T00:00:00Z", "salesTax": 55, "sandbox": true, "sku": "wNpmrK5Y", "status": "CHARGE_FAILED", "statusReason": "heA2ewWn", "subscriptionId": "FcqHxXP3", "subtotalPrice": 20, "targetNamespace": "qO8gY3c4", "targetUserId": "SryWB4yR", "tax": 1, "totalPrice": 16, "totalTax": 60, "txEndTime": "1974-07-11T00:00:00Z", "type": "ioL8VvEz", "userId": "HGTt9emd", "vat": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'kgqkqYZW' \
    'PZTgKagT' \
    --body '{"count": 51, "orderNo": "UilcKA84"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'd9pMsl7z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'rNJvDiP2' \
    'hNNEI8Qr' \
    --body '{"allowOverdraft": true, "amount": 68, "balanceOrigin": "Twitch", "reason": "1ro5CtU8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'UjgyCUpM' \
    '1JBcTzf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'dz1BojPo' \
    'Qg976409' \
    --body '{"amount": 45, "expireAt": "1975-09-21T00:00:00Z", "origin": "Steam", "reason": "d5z9r4nJ", "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'UvLp1wxG' \
    'F747468M' \
    --body '{"amount": 94, "walletPlatform": "Other"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PayWithUserWallet' test.out

#- 253 GetUserWallet
eval_tap 0 253 'GetUserWallet # SKIP deprecated' test.out

#- 254 DebitUserWallet
eval_tap 0 254 'DebitUserWallet # SKIP deprecated' test.out

#- 255 DisableUserWallet
eval_tap 0 255 'DisableUserWallet # SKIP deprecated' test.out

#- 256 EnableUserWallet
eval_tap 0 256 'EnableUserWallet # SKIP deprecated' test.out

#- 257 ListUserWalletTransactions
eval_tap 0 257 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 258 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'ListViews' test.out

#- 259 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'i1TMBMza' \
    --body '{"displayOrder": 83, "localizations": {"PmrWVxNZ": {"description": "UvkiU2jX", "localExt": {"SwsBBRop": {}, "Vl38d4NZ": {}, "Gtk6EmWx": {}}, "longDescription": "C75M88TK", "title": "hFYkA9aR"}, "NDe2IoPM": {"description": "SQKcg0OT", "localExt": {"T9JA0ll1": {}, "RimBCiQw": {}, "uyrI87uS": {}}, "longDescription": "yXP6C0jX", "title": "S8au2wcW"}, "Yyj3JvHq": {"description": "Xp4JR7xI", "localExt": {"59Z9tfGV": {}, "sglnOxOX": {}, "BfgBLugl": {}}, "longDescription": "kd9LIosh", "title": "GnFSuHmr"}}, "name": "qej8PRpp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'YY1vlV0M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '2g6oreqy' \
    'BzWzCgMM' \
    --body '{"displayOrder": 99, "localizations": {"XICLkK8Z": {"description": "vbnTg3zn", "localExt": {"lg8nmzQx": {}, "1RsYhcRl": {}, "v16Wwe8Y": {}}, "longDescription": "K3lZFslE", "title": "CI9QzuQc"}, "sjFehD6u": {"description": "TDYnqyNg", "localExt": {"N7GoeMse": {}, "zFZsTBHk": {}, "gcJ0DcEt": {}}, "longDescription": "23pci6xE", "title": "ljer6aGJ"}, "x5OFp3jK": {"description": "Ex4aSGdw", "localExt": {"TPX4ig3N": {}, "VFFkP7O3": {}, "F4vsohRW": {}}, "longDescription": "DyGYIVFD", "title": "bTvRYfpJ"}}, "name": "4wM9WZfO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'OxAzmsbh' \
    'i5QJuc2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'NBaOlXfg' \
    'sgBd7MYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["LoPZrkjR", "m5Ki0orh", "XrISEaPZ"], "apiKey": "HLQkTHvn", "authoriseAsCapture": false, "blockedPaymentMethods": ["aUQV5QEv", "KElLfbB7", "gwwAR1xF"], "clientKey": "rnyirw3i", "dropInSettings": "Jt5iA3JS", "liveEndpointUrlPrefix": "2xeaJ08J", "merchantAccount": "rSHPqdhK", "notificationHmacKey": "Hn6ZjZMd", "notificationPassword": "r1C2TIQz", "notificationUsername": "RJY7UfYS", "returnUrl": "rdN0JVz4", "settings": "U43EcV1F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "RyeeqehM", "privateKey": "NeRYKeMb", "publicKey": "L0G4v5D6", "returnUrl": "ylZguO91"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "8X7rLoex", "secretKey": "HBMBMMAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'TestCheckoutConfig' test.out

#- 269 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'DebugMatchedPaymentMerchantConfig' test.out

#- 270 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "okSWFwaj", "clientSecret": "RGUyklfL", "returnUrl": "VY6g3PO4", "webHookId": "hKAeF4GU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["V5m96qcC", "JsVOWtu5", "RPsqd66I"], "publishableKey": "mBEuhnax", "secretKey": "ZVf6MD9r", "webhookSecret": "1y5Ihr53"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "1Kajxq7l", "key": "zuVRVEvh", "mchid": "KIbrq1xs", "returnUrl": "GpdobYun"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "8hcO55hV", "flowCompletionUrl": "jfWyK02w", "merchantId": 71, "projectId": 88, "projectSecretKey": "IlcrZzga"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'meT2mLkk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'AMjHyI0e' \
    --body '{"allowedPaymentMethods": ["2Axj0nZH", "jmoKHJng", "wMe1AnQV"], "apiKey": "j6QQjZtk", "authoriseAsCapture": true, "blockedPaymentMethods": ["JCnDSrsS", "ey2BqOxg", "wCymCDYs"], "clientKey": "uff3b7G5", "dropInSettings": "FDX4mu0q", "liveEndpointUrlPrefix": "PHb9Ll2E", "merchantAccount": "FEb8Gnst", "notificationHmacKey": "hmQ2Y6ZG", "notificationPassword": "Oiqrg3lp", "notificationUsername": "qN5bOfnq", "returnUrl": "J5bzDRzb", "settings": "hMxfEDE4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'TrtIHyyM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'q79EdB9M' \
    --body '{"appId": "xaF8QHGM", "privateKey": "2IuQYBO8", "publicKey": "m0HgTth4", "returnUrl": "79W8rXqw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'GVIRWgTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'HCka3Wb5' \
    --body '{"publicKey": "kH1BrLWU", "secretKey": "etP7nmES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'QDV3BD1n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'nEzoUlUW' \
    --body '{"clientID": "qP4ElzL4", "clientSecret": "4KEm3uHB", "returnUrl": "MCP5ckjp", "webHookId": "hURs4ksg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'sKJ2R6Ja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'cwwu8W1z' \
    --body '{"allowedPaymentMethodTypes": ["vrKMRPvw", "A9k6yJz0", "3NETdywP"], "publishableKey": "qYerrpOm", "secretKey": "4M2pM4fI", "webhookSecret": "fcHBWZM5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '0aHbPXRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    's3qwYL6L' \
    --body '{"appId": "wGlZGF7X", "key": "QPLAcIL7", "mchid": "FvAMWqhy", "returnUrl": "yNZH1Cdu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'cB5y5iMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'eBG7REG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'meKEabfV' \
    --body '{"apiKey": "XBJPIZqZ", "flowCompletionUrl": "C5d6JuFd", "merchantId": 5, "projectId": 8, "projectSecretKey": "fiNf0DOH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'KwxDF5GJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'hCjVHiCn' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaUIConfig' test.out

#- 291 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'QueryPaymentProviderConfig' test.out

#- 292 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "IFQsrwHq", "region": "FqwVA5mo", "sandboxTaxJarApiToken": "zeeOjIFQ", "specials": ["ALIPAY", "PAYPAL", "CHECKOUT"], "taxJarApiToken": "3YW3ug3n", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'CreatePaymentProviderConfig' test.out

#- 293 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'GetAggregatePaymentProviders' test.out

#- 294 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DebugMatchedPaymentProviderConfig' test.out

#- 295 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetSpecialPaymentProviders' test.out

#- 296 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'me3C6p2r' \
    --body '{"aggregate": "ADYEN", "namespace": "D3NQdjrj", "region": "kX3AMgK3", "sandboxTaxJarApiToken": "JgZufzss", "specials": ["WXPAY", "WXPAY", "XSOLLA"], "taxJarApiToken": "mG7uAojL", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '7CmSiKPj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'DeletePaymentProviderConfig' test.out

#- 298 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentTaxConfig' test.out

#- 299 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "cwAw5Gdx", "taxJarApiToken": "pvLfa4b4", "taxJarEnabled": false, "taxJarProductCodesMapping": {"0FZp2vjO": "Xptxzx6k", "kaZYpl52": "sQR9Znp5", "d1eSwrG2": "GBBEWrDb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'Q1ZzhDuL' \
    'Hq9LTBst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncPaymentOrders' test.out

#- 301 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRootCategories' test.out

#- 302 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'DownloadCategories' test.out

#- 303 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'guOdN0O7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'l3GbKPHd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'DTQDEEE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetDescendantCategories' test.out

#- 306 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicListCurrencies' test.out

#- 307 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'mTsn1NwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemByAppId' test.out

#- 308 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicQueryItems' test.out

#- 309 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '71szsNmn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'qZSWdEyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["VYrTdDq7", "IqbTVv8B", "LsqQW8HS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'rEm5Y7jI' \
    '232Sjkti' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'jiNzTUe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'KdizXmrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'K0sCUsqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "KocHomtj", "paymentProvider": "PAYPAL", "returnUrl": "fVNJNDaS", "ui": "O3FEkk4I", "zipCode": "t6V8Bu7r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'IjGrxUMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'bv60ixUu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'UhopdqGr' \
    --body '{"token": "qRZ124P7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'PauXTrpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'vmjWq9fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'qzulLGfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'MqSLQDlR' \
    'FYMVfiAM' \
    'ADYEN' \
    'xld80Yns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    's7hc3VUx' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'BYLVVznF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'GetRewardByCode' test.out

#- 327 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'QueryRewards1' test.out

#- 328 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    '6hMYfksp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'GetReward1' test.out

#- 329 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicListStores' test.out

#- 330 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicExistsAnyMyActiveEntitlement' test.out

#- 331 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '8VQhYSFe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'BOp0ilGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'FwHUtZug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 334 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetEntitlementOwnershipToken' test.out

#- 335 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'blT3aIDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'n9qJXncm' \
    --body '{"epicGamesJwtToken": "5igpAewb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'mnWk0E7Y' \
    --body '{"serviceLabel": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'k3b5cAFV' \
    --body '{"serviceLabels": [43, 13, 30]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '5r1b8Yp2' \
    --body '{"appId": "QnuhQuId", "steamId": "vZdj6Asp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'WBfRnLcL' \
    --body '{"xstsToken": "bp7OmcrD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'J7u1rrRP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'cnG89rnN' \
    'W1Yjfn8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'Y4DnYRxY' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'hHeb0CaP' \
    'FDjrSotK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'npJWALpT' \
    'oj9rgr5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'ffM5JXvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'dzEpDln0' \
    '4F8BQjzo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'bhDa8VxK' \
    'OrfVfBRI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'fkStOqdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'qhDMQ6tB' \
    'LljC7gcT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '3M1DArk4' \
    'L80aXFY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'SQkym9Kv' \
    'KMHK5fbq' \
    --body '{"options": ["ioeoRIpl", "Y0DIzRCN", "AO6ZpqXJ"], "requestId": "mPJso6M1", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'LLZWKgWx' \
    --body '{"code": "n9YL16HQ", "language": "FT_EQyX_530", "region": "ZIUrIkfm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'dXVvaPQz' \
    --body '{"excludeOldTransactions": true, "language": "loD", "productId": "7N7piT8V", "receiptData": "crXLZnuM", "region": "NpKEIs3G", "transactionId": "C9VTK7tk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'JWFpHt7M' \
    --body '{"epicGamesJwtToken": "dKu9Xwn5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'GHJDGatr' \
    --body '{"autoAck": false, "language": "pmKd_861", "orderId": "lt9jmxmx", "packageName": "pfp41k1u", "productId": "Dg59PhdU", "purchaseTime": 27, "purchaseToken": "ShabwyYC", "region": "xTHrDel8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'oThvr8CU' \
    --body '{"currencyCode": "Ezw4zL1Q", "price": 0.0677594946601715, "productId": "R3EYXBFp", "serviceLabel": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'GJXsoBwq' \
    --body '{"currencyCode": "h0TQXa2j", "price": 0.953684906248472, "productId": "v3zQJoQL", "serviceLabels": [36, 94, 55]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'Ml2RAukC' \
    --body '{"appId": "L26ihdMy", "currencyCode": "9YCLNJEk", "language": "qRu", "price": 0.7243977585314514, "productId": "t8xd8EgE", "region": "15XNuw6Y", "steamId": "7sToQNku"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'ZzJ1XBxw' \
    --body '{"gameId": "01iBBQuk", "language": "bs-dTyC", "region": "V5pDANyJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '184miBhd' \
    --body '{"currencyCode": "VJt81fmL", "price": 0.7203171793419588, "productId": "yGuu5rbJ", "xstsToken": "VIwRMtwA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'pGbXnR3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'C6f2MHGG' \
    --body '{"currencyCode": "edk0KzXR", "discountedPrice": 5, "ext": {"WTm78Fn8": {}, "TvZVTe4L": {}, "2lXrVPX6": {}}, "itemId": "r5ZTcnVV", "language": "qmno-QVuC", "price": 100, "quantity": 37, "region": "sFRUlWBp", "returnUrl": "4gBs9Uuf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'gsVbG6TU' \
    'e3jbuQ7H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'MPO4ozK7' \
    '05ykRqSP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'YZgPm4JL' \
    'sXVtBOEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'tHsxAJ8N' \
    'y1LRkPU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'hrl5nkpE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'dBe8bYWd' \
    'card' \
    'W2b5OHKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'Uv4lTkQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'jxhXdj1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'G0EBgst9' \
    --body '{"currencyCode": "Qu8Ofl2o", "itemId": "B8VTjF0p", "language": "OoH_ow", "region": "AGp8zGqN", "returnUrl": "GrcQyoA1", "source": "TWPcy83i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'XfYXNdMk' \
    'dg9TMwxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'cQ6CkVi8' \
    'fqVPRqNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'F5yLnYSa' \
    '8xFLvcYe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'xMMMiDFh' \
    '5RbW021c' \
    --body '{"immediate": true, "reason": "N3QbzVuJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'ZH3k54cE' \
    'xxWKtdGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'W4FILotv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    '5ycTa0i6' \
    'ifYP1zfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'jsy3VRjX' \
    '4qA4g9OG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicListUserWalletTransactions' test.out

#- 381 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'QueryItems1' test.out

#- 382 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'ImportStore1' test.out

#- 383 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'oWw1qnCA' \
    --body '{"itemIds": ["vdnAcokJ", "0rzqX2KJ", "cYHgiFDx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
