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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["ZPUdc0qh", "7eHpzSn3", "Oaiw9B0D"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["kNmKJfh5", "1Jub74CU", "lFHHdgs2"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["jJCSQT27", "NPX2bOIt", "RMvqtlB2"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["xkT1X68c", "MyKrQpM4", "mDc3fxU8"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["naLpUKp4", "4YUDjasW", "IPUvmEej"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["MNqq98Sj", "5MXbN9oC", "TvhZNkSQ"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["8bwbmXgd", "Q1MzH7Qm", "Qgb3boLQ"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["CcxvONZm", "yeFoF7VS", "3EeERmDn"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["qU6YE3p4", "UhAEtrmj", "lSck0ZHn"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["2L7vIYhG", "YReVHQip", "cCx9Zw5D"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["S48l9lyN", "ApflxqMr", "j3oZk03Q"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "seasonType": "PASS", "sku": "1P1ktfIo", "stackable": true, "status": "ACTIVE", "tags": ["JcHm3SZL", "xoRDFuuu", "mv9gsR5c"], "targetCurrencyCode": "ySj29a9L", "targetItemId": "JE8HoRS1", "targetNamespace": "X2PFAAMw", "thumbnailUrl": "zHPxB1Us", "title": "kYs4Yw20", "updatedAt": "1986-01-04T00:00:00Z", "useCount": 84}, "namespace": "ZSWMiVi1", "order": {"currency": {"currencyCode": "0sG6vxkf", "currencySymbol": "UcmqRRbc", "currencyType": "REAL", "decimals": 56, "namespace": "J5i0EeDx"}, "ext": {"OgBnhhqE": {}, "lIaDml48": {}, "wdNFLTm5": {}}, "free": false}, "source": "OTHER"}, "script": "0x9WT0Gf", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-create-item 'OdkocVTd' --body '{"appId": "4BxqGWV6", "appType": "DLC", "baseAppId": "BNXzAFdO", "boothName": "0Khqf6ki", "categoryPath": "TdSGv2LF", "clazz": "jAKY7Cbg", "displayOrder": 37, "entitlementType": "DURABLE", "ext": {"WqFWZX7k": {}, "PBom8F9G": {}, "LLTG8phc": {}}, "features": ["iXJF3WGR", "3n4iLoIl", "lKlpO2pq"], "images": [{"as": "aoQomSJC", "caption": "4DdrKF7S", "height": 96, "imageUrl": "TBcrM8rG", "smallImageUrl": "0rH0zcsw", "width": 46}, {"as": "7PpUlcIW", "caption": "32iK7MGt", "height": 77, "imageUrl": "ixY5rA1W", "smallImageUrl": "oVeJIePF", "width": 21}, {"as": "ZrQzP4zv", "caption": "tdxdbZUp", "height": 7, "imageUrl": "WCYzo8yO", "smallImageUrl": "2KTK9tmm", "width": 83}], "itemIds": ["6FEO65Rb", "3z7CYLM8", "IlsHqffn"], "itemQty": {"rfsGlfPa": 14, "KBwa3Ddb": 13, "0ufPpzwj": 99}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"GIFmlVf4": {"description": "jvapseE9", "localExt": {"LN9bvhOr": {}, "HflIOd6X": {}, "3viLvtEk": {}}, "longDescription": "4mTIpUA9", "title": "gxo8SV38"}, "nEhoXmM2": {"description": "W7l6jHMA", "localExt": {"2rG3nako": {}, "pAywelu0": {}, "1nryEJ0N": {}}, "longDescription": "qoTow0qi", "title": "OiC4j0ik"}, "tm0ZPLkL": {"description": "Osp0LZ5n", "localExt": {"jN86Hl8k": {}, "UXzt6bSc": {}, "6bWvgpVy": {}}, "longDescription": "W9dD1kOm", "title": "vrAejcq2"}}, "lootBoxConfig": {"rewardCount": 78, "rewards": [{"lootBoxItems": [{"count": 100, "itemId": "gkQuaS7R", "itemSku": "Bx3vim02", "itemType": "jBOxrZDy"}, {"count": 45, "itemId": "1qx8CzPM", "itemSku": "L52faXUr", "itemType": "9Sk4lq2f"}, {"count": 1, "itemId": "sflhjbng", "itemSku": "JOUn18G5", "itemType": "MlfDTk8a"}], "name": "G40Nlncc", "odds": 0.06824383208240015, "type": "REWARD_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 91, "itemId": "XrKEDpEY", "itemSku": "8VnocGAj", "itemType": "ci0V3tBf"}, {"count": 65, "itemId": "jnHGKXph", "itemSku": "n50c9tNL", "itemType": "DljhZ2jx"}, {"count": 76, "itemId": "AacR0LgB", "itemSku": "5BUXvjcu", "itemType": "2s6w3Vif"}], "name": "nKqmTSoG", "odds": 0.5331143500787638, "type": "REWARD_GROUP", "weight": 62}, {"lootBoxItems": [{"count": 66, "itemId": "fY6QAYn6", "itemSku": "WQ5UBEU1", "itemType": "QAOHfZiG"}, {"count": 15, "itemId": "VEGVxYhe", "itemSku": "R3j5mNZ6", "itemType": "vwv7K8As"}, {"count": 45, "itemId": "xefTYKhu", "itemSku": "xaEc7M4P", "itemType": "7UckSC6e"}], "name": "PeN8i4Gr", "odds": 0.5027672399023325, "type": "REWARD", "weight": 43}], "rollFunction": "DEFAULT"}, "maxCount": 73, "maxCountPerUser": 48, "name": "3BAHZ7c5", "optionBoxConfig": {"boxItems": [{"count": 5, "itemId": "q7akMpcm", "itemSku": "nnx6RVBr", "itemType": "op9v7aZK"}, {"count": 76, "itemId": "h65hbN15", "itemSku": "zfQSfQrt", "itemType": "fF3TQN0O"}, {"count": 4, "itemId": "Q40kepEa", "itemSku": "C4dfiOMZ", "itemType": "fEhHr39p"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 50, "fixedTrialCycles": 65, "graceDays": 95}, "regionData": {"O3Zvc1BZ": [{"currencyCode": "G99Lyvfv", "currencyNamespace": "HEsJKQQe", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1995-08-05T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1972-11-12T00:00:00Z", "discountedPrice": 16, "expireAt": "1995-04-24T00:00:00Z", "price": 29, "purchaseAt": "1971-08-09T00:00:00Z", "trialPrice": 28}, {"currencyCode": "4lONDDwM", "currencyNamespace": "vgI0HlyP", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1982-09-04T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1991-08-08T00:00:00Z", "discountedPrice": 17, "expireAt": "1983-05-31T00:00:00Z", "price": 34, "purchaseAt": "1987-02-02T00:00:00Z", "trialPrice": 75}, {"currencyCode": "xG2mXEQd", "currencyNamespace": "bzIVy8al", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1972-03-27T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1975-09-29T00:00:00Z", "discountedPrice": 13, "expireAt": "1987-12-28T00:00:00Z", "price": 68, "purchaseAt": "1981-01-26T00:00:00Z", "trialPrice": 10}], "FTYnPkmS": [{"currencyCode": "u4PWam1j", "currencyNamespace": "xR7SETWj", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1973-02-20T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1976-01-19T00:00:00Z", "discountedPrice": 99, "expireAt": "1985-02-10T00:00:00Z", "price": 51, "purchaseAt": "1974-01-23T00:00:00Z", "trialPrice": 43}, {"currencyCode": "vU4PbmRD", "currencyNamespace": "crg0DjQj", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1990-08-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1996-06-19T00:00:00Z", "discountedPrice": 44, "expireAt": "1982-02-08T00:00:00Z", "price": 0, "purchaseAt": "1994-09-25T00:00:00Z", "trialPrice": 26}, {"currencyCode": "1m2lJFRZ", "currencyNamespace": "3ZprZ60z", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1977-03-03T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1983-10-02T00:00:00Z", "discountedPrice": 10, "expireAt": "1977-03-02T00:00:00Z", "price": 29, "purchaseAt": "1978-07-04T00:00:00Z", "trialPrice": 93}], "mlTIKVow": [{"currencyCode": "i0RY2VN4", "currencyNamespace": "ZONJREdU", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1980-03-05T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-08-09T00:00:00Z", "discountedPrice": 61, "expireAt": "1983-11-21T00:00:00Z", "price": 40, "purchaseAt": "1991-02-23T00:00:00Z", "trialPrice": 25}, {"currencyCode": "nke4aknc", "currencyNamespace": "w7wu9TmX", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1989-03-17T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-05-24T00:00:00Z", "discountedPrice": 84, "expireAt": "1996-05-20T00:00:00Z", "price": 64, "purchaseAt": "1983-02-24T00:00:00Z", "trialPrice": 60}, {"currencyCode": "Ns8eLzYE", "currencyNamespace": "vwSWTaLQ", "currencyType": "REAL", "discountAmount": 15, "discountExpireAt": "1972-03-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-06-22T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-10-25T00:00:00Z", "price": 18, "purchaseAt": "1973-02-28T00:00:00Z", "trialPrice": 38}]}, "seasonType": "PASS", "sku": "pKPlXn77", "stackable": true, "status": "INACTIVE", "tags": ["xBGtEJIY", "2QEPx3zT", "KtezapPr"], "targetCurrencyCode": "ppuUSsKo", "targetNamespace": "Hw2hyd12", "thumbnailUrl": "uSE7BEv3", "useCount": 1}' --login_with_auth "Bearer foo"
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
platform-update-item 'Nz81GRaz' 'PAANjfBo' --body '{"appId": "ldFOyqA2", "appType": "DEMO", "baseAppId": "m51T107X", "boothName": "IZRZ7tZd", "categoryPath": "Is0xf4cz", "clazz": "dt7zqmSK", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"EQlVcx6G": {}, "qsBq8vdh": {}, "WVnuYLgp": {}}, "features": ["myuViB9k", "ZehK0G2n", "RTcSQdTn"], "images": [{"as": "NYGeAfYF", "caption": "G3wSkHKu", "height": 10, "imageUrl": "o8Zkgk0j", "smallImageUrl": "S6rDWUwf", "width": 16}, {"as": "yuGz6Llx", "caption": "Hv8Swyag", "height": 31, "imageUrl": "vDJ3w3UN", "smallImageUrl": "gIGj2jZt", "width": 63}, {"as": "tcvNedgS", "caption": "1fUfKmih", "height": 60, "imageUrl": "0sZoFS6x", "smallImageUrl": "COWMpyh9", "width": 32}], "itemIds": ["iGTnwyEw", "6hIWDZrp", "P7rz3ISW"], "itemQty": {"510kHr4i": 38, "oIFeouC2": 25, "nuHCXWfw": 27}, "itemType": "CODE", "listable": true, "localizations": {"GVE9sJ4N": {"description": "pUtKp6M9", "localExt": {"I6nEwnZh": {}, "sjwJeGwa": {}, "PSDMZz95": {}}, "longDescription": "OYKiqaZD", "title": "63xe5rru"}, "JVfLGea0": {"description": "ZtlzUcuH", "localExt": {"AXz0UV31": {}, "MfuGaXsA": {}, "uGsZaSHe": {}}, "longDescription": "vO0TQNEI", "title": "3kfabxJW"}, "WSI1ECUo": {"description": "1NPpeFhU", "localExt": {"ztXDgB7n": {}, "4C97uAPP": {}, "8PATLpUp": {}}, "longDescription": "xeJlsBJT", "title": "6Hh3OMjA"}}, "lootBoxConfig": {"rewardCount": 18, "rewards": [{"lootBoxItems": [{"count": 16, "itemId": "q2mK8lbS", "itemSku": "EEelxnb5", "itemType": "QxWG2HFn"}, {"count": 23, "itemId": "X4N1LQZm", "itemSku": "B61JMdtw", "itemType": "CVUrYQue"}, {"count": 93, "itemId": "4dwmbwFE", "itemSku": "nAZaWsQJ", "itemType": "tRYoagRJ"}], "name": "K5PX9UcO", "odds": 0.34948478416352957, "type": "PROBABILITY_GROUP", "weight": 94}, {"lootBoxItems": [{"count": 85, "itemId": "95XhnUcv", "itemSku": "WB28Mpus", "itemType": "uhhDJ5sl"}, {"count": 51, "itemId": "6KNzjf00", "itemSku": "5CXNGehQ", "itemType": "2aTjTDfK"}, {"count": 65, "itemId": "hCbkXX26", "itemSku": "uEdCfQaM", "itemType": "AQuTKfC0"}], "name": "I2kNjCMD", "odds": 0.310587965313152, "type": "REWARD", "weight": 38}, {"lootBoxItems": [{"count": 79, "itemId": "2DbPcaoM", "itemSku": "dtRLTmSv", "itemType": "TkQQgB7e"}, {"count": 48, "itemId": "vxuJlhXb", "itemSku": "WhbwPwTo", "itemType": "C6knjVwV"}, {"count": 27, "itemId": "6IewOXE2", "itemSku": "AkCh3QIZ", "itemType": "sUf8lGFX"}], "name": "cmwTERHc", "odds": 0.1788189065875384, "type": "REWARD_GROUP", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 59, "maxCountPerUser": 48, "name": "jYwWkLob", "optionBoxConfig": {"boxItems": [{"count": 12, "itemId": "rNdb8Otq", "itemSku": "6j1mqUav", "itemType": "7k05HAQl"}, {"count": 41, "itemId": "kMBsznlB", "itemSku": "UqnLT4Ab", "itemType": "GptKaWNv"}, {"count": 86, "itemId": "IYWOaNds", "itemSku": "immkW2mi", "itemType": "H3xRHAKy"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 94, "graceDays": 38}, "regionData": {"kaXZ7vmi": [{"currencyCode": "Ed0JPxVy", "currencyNamespace": "QpshaDwN", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1994-01-11T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1972-10-16T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-11-14T00:00:00Z", "price": 5, "purchaseAt": "1984-11-13T00:00:00Z", "trialPrice": 97}, {"currencyCode": "fVXe0GZe", "currencyNamespace": "MgsRsmH1", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1992-04-05T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1975-04-12T00:00:00Z", "discountedPrice": 8, "expireAt": "1976-10-07T00:00:00Z", "price": 85, "purchaseAt": "1976-10-24T00:00:00Z", "trialPrice": 39}, {"currencyCode": "TPOlhTtS", "currencyNamespace": "iZNCxuog", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1973-11-08T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1989-01-30T00:00:00Z", "discountedPrice": 70, "expireAt": "1982-08-15T00:00:00Z", "price": 14, "purchaseAt": "1994-02-15T00:00:00Z", "trialPrice": 86}], "00jr9b8M": [{"currencyCode": "uYmmeKTm", "currencyNamespace": "BNvGYxEQ", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1973-02-07T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1971-07-03T00:00:00Z", "discountedPrice": 62, "expireAt": "1978-01-31T00:00:00Z", "price": 66, "purchaseAt": "1973-09-23T00:00:00Z", "trialPrice": 30}, {"currencyCode": "6xj6wySo", "currencyNamespace": "ltDxsbzx", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1977-01-22T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-10-22T00:00:00Z", "discountedPrice": 6, "expireAt": "1986-03-05T00:00:00Z", "price": 11, "purchaseAt": "1994-03-20T00:00:00Z", "trialPrice": 30}, {"currencyCode": "6YApGJ9u", "currencyNamespace": "fwLYkqIg", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1985-02-16T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1981-05-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1993-05-19T00:00:00Z", "price": 35, "purchaseAt": "1988-07-20T00:00:00Z", "trialPrice": 53}], "iEtOAbpe": [{"currencyCode": "UNf26Uqk", "currencyNamespace": "CfgCUYBn", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1975-01-02T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1991-08-14T00:00:00Z", "discountedPrice": 23, "expireAt": "1973-03-24T00:00:00Z", "price": 85, "purchaseAt": "1987-04-08T00:00:00Z", "trialPrice": 72}, {"currencyCode": "XEwP2b4g", "currencyNamespace": "d3xOeii8", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1977-06-30T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-05-30T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-08-25T00:00:00Z", "price": 32, "purchaseAt": "1984-08-11T00:00:00Z", "trialPrice": 48}, {"currencyCode": "rVUxmDOj", "currencyNamespace": "3cvRFaTC", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1995-05-06T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1991-09-25T00:00:00Z", "discountedPrice": 94, "expireAt": "1987-08-21T00:00:00Z", "price": 50, "purchaseAt": "1977-02-14T00:00:00Z", "trialPrice": 10}]}, "seasonType": "TIER", "sku": "COyMvczg", "stackable": true, "status": "ACTIVE", "tags": ["qxLGeMvr", "9TsvcMQ7", "dBsaIecR"], "targetCurrencyCode": "xIsZvD6r", "targetNamespace": "mzVr5XT1", "thumbnailUrl": "Nxw0v1dM", "useCount": 87}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'arYYkHBD' 'dSzBXdxa' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 85, "comparison": "isLessThan", "name": "mv34h6T7", "predicateType": "SeasonPassPredicate", "value": "uxLvPuWY", "values": ["vE3fsNy9", "Z9OhxXvC", "p9y7fLD2"]}, {"anyOf": 34, "comparison": "includes", "name": "BsmAUrD9", "predicateType": "SeasonTierPredicate", "value": "T1WsRNMZ", "values": ["MNa8vVe4", "MHX6AgMe", "cA92hzC7"]}, {"anyOf": 31, "comparison": "isGreaterThan", "name": "90AyyUJy", "predicateType": "SeasonPassPredicate", "value": "n8D2eLMe", "values": ["UDcgVE7L", "9FK6e0Mr", "3lt9qfx2"]}]}, {"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isLessThan", "name": "YvNQOsDa", "predicateType": "SeasonTierPredicate", "value": "bkcgepqt", "values": ["7Kaol01D", "xjbrztee", "7QLTGAak"]}, {"anyOf": 76, "comparison": "is", "name": "97D2xnik", "predicateType": "SeasonPassPredicate", "value": "2miteR5e", "values": ["QAe1rzmm", "mO4oI8KD", "gqBPRmd6"]}, {"anyOf": 33, "comparison": "includes", "name": "yEYWNGMy", "predicateType": "SeasonTierPredicate", "value": "pgSGSUOK", "values": ["f1Ybgg8r", "68eqGJtW", "dwY9bmrv"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isGreaterThanOrEqual", "name": "7KNqX9LM", "predicateType": "SeasonPassPredicate", "value": "IwEsdOGB", "values": ["XBwnzDX8", "v3xgC1Ge", "9PdbTTAJ"]}, {"anyOf": 89, "comparison": "isLessThanOrEqual", "name": "p1r0sVZ6", "predicateType": "SeasonTierPredicate", "value": "FVZGYzQq", "values": ["uNOmUSWw", "V8d9mDdU", "IoiIJFNx"]}, {"anyOf": 45, "comparison": "isGreaterThan", "name": "IxVWCxdv", "predicateType": "SeasonTierPredicate", "value": "6i38XQjL", "values": ["Uo9UBJWo", "DRqkpiFK", "5BtiQ272"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-do-revocation 'zm7DzJ20' --body '{"meta": {"NFRJIhFX": {}, "R2dYprPm": {}, "bpuptECG": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Epic", "currencyCode": "x8Upe8Sj", "namespace": "MvpqM8pu"}, "entitlement": {"entitlementId": "ggOEdG47"}, "item": {"itemIdentity": "gD5i2Ni6", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 27, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "ij4ysYPo", "namespace": "nb59gQff"}, "entitlement": {"entitlementId": "kNOmubxE"}, "item": {"itemIdentity": "Jr2qEAuJ", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 44, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "rcbc4LWf", "namespace": "KaY5c1tP"}, "entitlement": {"entitlementId": "5TDuI5f6"}, "item": {"itemIdentity": "m4KC07Cn", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 9, "type": "ITEM"}], "source": "DLC", "transactionId": "COF74tz6"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'aeXZOYwb' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'wjMNdxKW' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'lBfnRyFS' --body '{"grantDays": 62, "itemId": "XN3cjIXm", "language": "FWRJnj8x", "reason": "N7HDPTUE", "region": "DPN1Kb4U", "source": "TPWDXTSb"}' --login_with_auth "Bearer foo"
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
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
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
platform-sync-twitch-drops-entitlement --body '{"gameId": "GTTD81xh", "language": "bqPl_wccD", "region": "iSNV4qBr"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 't1kcLmRv' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '6EJtl5xW' --body '{"epicGamesJwtToken": "nsb8oWq9"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '4RImNWVI' --body '{"serviceLabel": 73}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'McH1Kyi8' --body '{"serviceLabels": [64, 17, 98]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'vGcV8DY0' --body '{"appId": "XOkDstxZ", "steamId": "cY1HgAnZ"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'V4IOglVL' --body '{"xstsToken": "qb9lGAJU"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'g21Lt7Jw' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'gwMUSuC3' 'Bajy3BcE' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'MCtQs2Fc' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Wva2FPBu' 'jX0geYCp' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'GJM4sqsP' 'NJMiZXXO' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'FwmGWAvN' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'F0Z0Gkwx' 'UNYyNwGi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'KrknH0Y5' 'mrQgLC6D' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '2qsFiQHg' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'lUQMZi5W' 'jMZfOadp' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'gegCUjTd' 'i1Ehr8Ot' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'qpNJ9R8T' 'uNy4ejmV' --body '{"options": ["A3vMCsGy", "Pd12B8QN", "Uz0hFFNb"], "requestId": "H6j2W4ro", "useCount": 32}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'M2UKAXEE' --body '{"code": "sL5D0oiF", "language": "fH", "region": "MTs8WIOb"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'JBTsvsw7' --body '{"excludeOldTransactions": true, "language": "jjz_xyUN", "productId": "WP0HzSdi", "receiptData": "ylLhVYsz", "region": "m8xY33OQ", "transactionId": "bumu2QHL"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'yZNuysyM' --body '{"epicGamesJwtToken": "4OfCzdQC"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'XMAWnf87' --body '{"autoAck": false, "language": "HEPz_VlFs", "orderId": "yR9AX7Jj", "packageName": "xvNZhM84", "productId": "DiZk6ySr", "purchaseTime": 57, "purchaseToken": "DCow2zXy", "region": "FFVpM87y"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'qEwEacQM' --body '{"currencyCode": "TlqN4LKk", "price": 0.3870731462391487, "productId": "J5v3SBaf", "serviceLabel": 27}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'BD6lKNb8' --body '{"currencyCode": "RxvN2u5J", "price": 0.9530985174995251, "productId": "baOeLH19", "serviceLabels": [33, 10, 47]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'woPYOHiI' --body '{"appId": "sxmsLBPB", "currencyCode": "JuNLnWRr", "language": "Jyl-nPCc", "price": 0.7164483318902327, "productId": "po3AKRmn", "region": "JkzJHAck", "steamId": "UyBksYQf"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'Dm0RNFwi' --body '{"gameId": "z70tRVLM", "language": "Si_IyIG", "region": "VqajUWrg"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'EsWDtaKz' --body '{"currencyCode": "n8dZwnnG", "price": 0.07050280283820665, "productId": "ZsZVgbPz", "xstsToken": "PFbrOMZM"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'gWkFN7Tp' --login_with_auth "Bearer foo"
platform-public-create-user-order 'kx6GcfyO' --body '{"currencyCode": "g6ZUrrp9", "discountedPrice": 43, "ext": {"EWzWlTY7": {}, "0qdgJRvp": {}, "ZrSpWX3K": {}}, "itemId": "Ee2BjV00", "language": "BEZd_Je", "price": 73, "quantity": 68, "region": "JxlgjzIh", "returnUrl": "pgOoIOD7"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '4V21HWDA' 'fvXwdxby' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'p4HAPbBb' 'NPStVBUp' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'KgOssFkz' '0F36piDY' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'XeHZ7FHl' 's3nyvcon' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'qbHQqKLQ' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'Ke3xmj6s' 'card' 'GqsWncp5' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'LrqbiKud' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'v9z75Szo' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'CV8ZMi2o' --body '{"currencyCode": "1nR482D6", "itemId": "gNClk9c8", "language": "HPLS_qkgc-ny", "region": "uJfQecut", "returnUrl": "jS029BiJ", "source": "WOG1m7MK"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'clr5igjN' 'TVItrH2X' --login_with_auth "Bearer foo"
platform-public-get-user-subscription '78hxJgaV' 'fw5Vnyq8' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'OzTE89WD' 'NoMcOmbf' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'JrCJQIj1' 'haAosKgl' --body '{"immediate": true, "reason": "UguyDoN9"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '1uc28HoS' 'pGt1g0GG' --login_with_auth "Bearer foo"
platform-public-list-views 'bT4Hf2PP' --login_with_auth "Bearer foo"
platform-public-get-wallet 'KOldkbgX' '9CWJKwXX' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'Sbv5eg9q' '86IaDFjj' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'x6uZerWb' --body '{"itemIds": ["twTX9gNR", "ByjbE8lO", "LAfTXKLz"]}' --login_with_auth "Bearer foo"
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
echo "1..385"

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
    --body '{"context": {"item": {"appId": "brddqcKL", "appType": "DEMO", "baseAppId": "09bBgPAY", "boothName": "xrBE9jln", "boundItemIds": ["DwD9RKvQ", "X4yFQFdr", "TgtgW33w"], "categoryPath": "RoM6FoqC", "clazz": "Yw7AlxO6", "createdAt": "1979-01-28T00:00:00Z", "description": "dFpc71sS", "displayOrder": 5, "entitlementType": "CONSUMABLE", "ext": {"Ls7mjRxN": {}, "mvvNtjJN": {}, "QepUTGhw": {}}, "features": ["CR5rVsyf", "lY4lPzls", "cH7WjP7H"], "fresh": true, "images": [{"as": "eVskqeUB", "caption": "7RSayqGF", "height": 12, "imageUrl": "j4ro5B19", "smallImageUrl": "VE838c7O", "width": 51}, {"as": "ebRA09rW", "caption": "8i8krFWJ", "height": 15, "imageUrl": "7DmQ5ZOz", "smallImageUrl": "x6iCJTu6", "width": 70}, {"as": "O8GuoXNS", "caption": "oVEBG7Vb", "height": 57, "imageUrl": "pMv2Yky9", "smallImageUrl": "DYkD2sIl", "width": 23}], "itemId": "FCK5ucTF", "itemIds": ["sAFzaO3y", "JpA3KMxB", "lrRytER1"], "itemQty": {"qdTelFAa": 6, "O2gCQD05": 59, "SSGGt3Mi": 56}, "itemType": "SEASON", "language": "9SiGUjVA", "listable": true, "localExt": {"aP1K4CDu": {}, "H1mMIfOC": {}, "DyVAHrHn": {}}, "longDescription": "cR5dShqi", "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 30, "itemId": "UI9esSsX", "itemSku": "egSEhrPp", "itemType": "K2q8kxR4"}, {"count": 57, "itemId": "0QzZWfmP", "itemSku": "2sx0KO5b", "itemType": "EJaPnAFj"}, {"count": 37, "itemId": "960EYQEu", "itemSku": "GJVl8xs1", "itemType": "WId9Wlal"}], "name": "qshF9Rh2", "odds": 0.22851545079564084, "type": "REWARD_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 58, "itemId": "Kdfqk8T4", "itemSku": "QHK30EX0", "itemType": "FclpDl5H"}, {"count": 38, "itemId": "ISArROIo", "itemSku": "dcmM6v2A", "itemType": "EozWWaYv"}, {"count": 56, "itemId": "ekLfjmy8", "itemSku": "zosRCRgV", "itemType": "wbrQKmb0"}], "name": "1yA7U7dG", "odds": 0.620587040353433, "type": "PROBABILITY_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 42, "itemId": "8AmgwhYz", "itemSku": "k33J34fi", "itemType": "TxK63OHp"}, {"count": 28, "itemId": "pE130YWS", "itemSku": "gxpKWtdt", "itemType": "dtVW9anE"}, {"count": 81, "itemId": "J5euLAbB", "itemSku": "gejqc0ap", "itemType": "xqZ209By"}], "name": "Sn8aUaGl", "odds": 0.4217416241028189, "type": "REWARD", "weight": 72}], "rollFunction": "DEFAULT"}, "maxCount": 72, "maxCountPerUser": 58, "name": "slt7N1qc", "namespace": "xKs4nlf1", "optionBoxConfig": {"boxItems": [{"count": 79, "itemId": "Uh74KVo6", "itemSku": "Xqjz2xUK", "itemType": "LNWSmYyV"}, {"count": 44, "itemId": "IiJssShB", "itemSku": "KsQjXvfQ", "itemType": "gQDt6ce8"}, {"count": 80, "itemId": "4VuY6rsZ", "itemSku": "yo6CBRRn", "itemType": "oOikIxXK"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 89, "comparison": "is", "name": "6kPmswm5", "predicateType": "SeasonTierPredicate", "value": "OTCbx7J3", "values": ["IRn0znIK", "gNLIlTk3", "Bpclrk4h"]}, {"anyOf": 53, "comparison": "isGreaterThanOrEqual", "name": "AEAHQpBO", "predicateType": "EntitlementPredicate", "value": "vUv2XiXa", "values": ["Gka7Kv5T", "BzsmaxjT", "ZPlLityt"]}, {"anyOf": 1, "comparison": "excludes", "name": "Z0b2p3b6", "predicateType": "EntitlementPredicate", "value": "KrcwIcXM", "values": ["6boOLGCc", "g16DqwdQ", "hGy83Xit"]}]}, {"operator": "or", "predicates": [{"anyOf": 68, "comparison": "is", "name": "kSSV8e1M", "predicateType": "EntitlementPredicate", "value": "cZPk82GF", "values": ["UDj9dzGg", "GVxo9OHg", "3eTC0vzZ"]}, {"anyOf": 11, "comparison": "isNot", "name": "HumyfuBN", "predicateType": "EntitlementPredicate", "value": "fC0Gjvpg", "values": ["TH2wToOn", "qn47GVgh", "JfuBs1Vp"]}, {"anyOf": 33, "comparison": "isGreaterThanOrEqual", "name": "U5lyW89X", "predicateType": "SeasonPassPredicate", "value": "MqS7Dcmt", "values": ["rmgjhWK0", "x0ZidAJ1", "fh50eObb"]}]}, {"operator": "or", "predicates": [{"anyOf": 34, "comparison": "isLessThan", "name": "eD1La16B", "predicateType": "SeasonPassPredicate", "value": "LEak0mJq", "values": ["i4bAQL7V", "jRYldcTp", "deCD9XPR"]}, {"anyOf": 62, "comparison": "isLessThanOrEqual", "name": "wL8Y4JFV", "predicateType": "SeasonPassPredicate", "value": "dzA8bvXl", "values": ["bKIKuOXJ", "DhG7Bror", "Pm5ztrr0"]}, {"anyOf": 0, "comparison": "isNot", "name": "TvQq2a9Y", "predicateType": "EntitlementPredicate", "value": "KSuopWQb", "values": ["Z27GpvHC", "Dx55JZ5z", "aCvdPSq8"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 21, "fixedTrialCycles": 42, "graceDays": 19}, "region": "7QPkJHRh", "regionData": [{"currencyCode": "mLKQuQVF", "currencyNamespace": "SKiXl8G2", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1973-02-05T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1986-09-09T00:00:00Z", "discountedPrice": 80, "expireAt": "1971-01-28T00:00:00Z", "price": 19, "purchaseAt": "1993-11-05T00:00:00Z", "trialPrice": 52}, {"currencyCode": "SAS8MKMa", "currencyNamespace": "xQ1QyJCp", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1972-03-07T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1981-03-06T00:00:00Z", "discountedPrice": 51, "expireAt": "1994-10-11T00:00:00Z", "price": 81, "purchaseAt": "1984-09-19T00:00:00Z", "trialPrice": 47}, {"currencyCode": "9NCKKXu1", "currencyNamespace": "bqI2M5Pm", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1977-06-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1997-08-13T00:00:00Z", "discountedPrice": 36, "expireAt": "1997-03-12T00:00:00Z", "price": 68, "purchaseAt": "1978-03-21T00:00:00Z", "trialPrice": 21}], "seasonType": "TIER", "sku": "H4ExObpp", "stackable": true, "status": "INACTIVE", "tags": ["659UDEOF", "6gp5Ufmj", "CMYDm5ge"], "targetCurrencyCode": "tiVbqJnZ", "targetItemId": "crqrPye7", "targetNamespace": "fCwi7Il2", "thumbnailUrl": "wIFlHm9N", "title": "6owMHMtJ", "updatedAt": "1983-03-12T00:00:00Z", "useCount": 84}, "namespace": "U9loOxpm", "order": {"currency": {"currencyCode": "EuwDVc12", "currencySymbol": "r0DVUGgG", "currencyType": "REAL", "decimals": 21, "namespace": "Z5C8mFI9"}, "ext": {"TnvzEqBN": {}, "MF9CZvPx": {}, "T5zbreMc": {}}, "free": false}, "source": "GIFT"}, "script": "BoU3RHND", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'Lxjt5srP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'FxBgpFtD' \
    --body '{"grantDays": "BmTLH9kP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '9U53z6jo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'BAhAlJGI' \
    --body '{"grantDays": "2YYb6ajB"}' \
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
    --body '{"clazz": "jgq6eY4P", "dryRun": true, "fulfillmentUrl": "GJeJaxyH", "itemType": "OPTIONBOX", "purchaseConditionUrl": "utgXucx8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'INGAMEITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'uglSp2Ux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'vF2uLXWi' \
    --body '{"clazz": "lRD7HD6L", "dryRun": true, "fulfillmentUrl": "LGgK8aVS", "purchaseConditionUrl": "CN6oCETQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '8gIDRdD2' \
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
    --body '{"description": "wwMXwKVX", "items": [{"extraSubscriptionDays": 67, "itemId": "fTMRrXVR", "itemName": "cAVRDX6g", "quantity": 26}, {"extraSubscriptionDays": 36, "itemId": "DfNfPGYY", "itemName": "STunMgt3", "quantity": 59}, {"extraSubscriptionDays": 48, "itemId": "8hEguCql", "itemName": "MHiQN3HW", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 46, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 10, "name": "zIWsiP2J", "redeemEnd": "1993-04-05T00:00:00Z", "redeemStart": "1977-02-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["jPlcYaqY", "M7YfBmhj", "I9Y28qVc"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'x2ur2ccp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '7R7OqPqI' \
    --body '{"description": "jS4i0N9y", "items": [{"extraSubscriptionDays": 39, "itemId": "6TGh4UdE", "itemName": "weeBsJEv", "quantity": 56}, {"extraSubscriptionDays": 2, "itemId": "gtn5pUAR", "itemName": "JM1T8QwM", "quantity": 82}, {"extraSubscriptionDays": 96, "itemId": "OAzXmyHE", "itemName": "V4g9P6a2", "quantity": 6}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 80, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 89, "name": "b51lEgUw", "redeemEnd": "1993-07-10T00:00:00Z", "redeemStart": "1980-11-04T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["aMOH47CA", "T7cBP091", "8JaEBQBP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '766LUnBB' \
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
    'R84iAO7s' \
    --body '{"categoryPath": "BQt6YJ2t", "localizationDisplayNames": {"WwF7RnP1": "oK3c4RVf", "jB0zi3Xr": "YZUiN24o", "l1qqbalg": "izL97ycJ"}}' \
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
    'V5YqE2my' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'Qzl7X9fH' \
    'r6WvBxmB' \
    --body '{"localizationDisplayNames": {"vNj3ktaD": "f9B22HGg", "xakPt7IY": "zaZUTmvs", "EzLPnnGs": "nfmBerp8"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '4qjwzWpC' \
    'F1vyamjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'EzwtLPxK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '1os4qR8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'aQzEb39s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'ZTdFfC8x' \
    --body '{"quantity": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'aHLsXHlm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '1RJTTy9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'rNz1K5M1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'qgFddYvi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'fGHawNx6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'yhniEHLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'EQKc0aUv' \
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
    --body '{"grpcServerAddress": "rKXDIjYC"}' \
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
    --body '{"currencyCode": "4df9qswS", "currencySymbol": "lpCI8Dhj", "currencyType": "REAL", "decimals": 29, "localizationDescriptions": {"xUyrs3OS": "esE5p0Dw", "Uj2HKUvP": "YUcQBxMS", "dOOsn2Nd": "8Jpa19GJ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'DK46Eehx' \
    --body '{"localizationDescriptions": {"7xasqMY9": "aulsL6NO", "V5agpS6A": "5mkufBpW", "VxIK9D2b": "TcgaKocc"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'aSwWcZmz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'CWGI1cIQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'cPWAShIh' \
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
    --body '{"data": [{"id": "ieSKUf3z", "rewards": [{"currency": {"currencyCode": "KbyQk2vQ", "namespace": "TYX1xsth"}, "item": {"itemId": "28NZZgsX", "itemSku": "ycuQNGID", "itemType": "eHlf6IcX"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "JrK6Or2x", "namespace": "x7rLwrPo"}, "item": {"itemId": "WiywnxuD", "itemSku": "LLuIaSxo", "itemType": "loIH1gBC"}, "quantity": 17, "type": "ITEM"}, {"currency": {"currencyCode": "Frvls0Zw", "namespace": "osKhDlLf"}, "item": {"itemId": "TKxpVOXv", "itemSku": "GSrdkqdd", "itemType": "I3ezqu6F"}, "quantity": 57, "type": "ITEM"}]}, {"id": "0sL2xt6f", "rewards": [{"currency": {"currencyCode": "X9j7rhZC", "namespace": "AlDlVKBs"}, "item": {"itemId": "LZiBRXsz", "itemSku": "E7CL1cQC", "itemType": "SoqHvH7g"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "S05m0pGz", "namespace": "azM2BUXn"}, "item": {"itemId": "zUEWTiKM", "itemSku": "JAf6Agbi", "itemType": "EDMfCckW"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "gE5gcfF8", "namespace": "AMGZ2FBS"}, "item": {"itemId": "93Mg6TKw", "itemSku": "dRMraDLr", "itemType": "wh3d0ykR"}, "quantity": 67, "type": "CURRENCY"}]}, {"id": "kgqUNIbJ", "rewards": [{"currency": {"currencyCode": "MJ9ABbKV", "namespace": "WO2YEDiq"}, "item": {"itemId": "kwKbpdk7", "itemSku": "wlDngNiP", "itemType": "PjpSAlZw"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "pea5ObBB", "namespace": "49Km4ClI"}, "item": {"itemId": "QmkIdLCv", "itemSku": "NhZ6P8aq", "itemType": "Z2yfrC1V"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "zxqAw4vB", "namespace": "GQAeh0VT"}, "item": {"itemId": "iTP4PSrX", "itemSku": "US6jYI9l", "itemType": "sQFD43Df"}, "quantity": 89, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"UZOFzpFd": "6b5Jc5TE", "THcup8GG": "0VCMTFJ6", "svTyo9RH": "get5hzB5"}}, {"platform": "XBOX", "platformDlcIdMap": {"BDFopxUw": "kMuSqQnK", "zDgDAtqE": "3kuybwTQ", "FYEJjIYw": "qfSRy8Gg"}}, {"platform": "PSN", "platformDlcIdMap": {"k77fd1GS": "5YkyhAiA", "ItnWUmD2": "25fp1egs", "x3ErheNw": "qd5pricl"}}]}' \
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
    'NNqLyrlz' \
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
    --body '{"bundleId": "rJ4QHbfn", "password": "AdtkujxH"}' \
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
    --body '{"sandboxId": "ff7n1yaN"}' \
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
    --body '{"applicationName": "CcjgFhS0", "serviceAccountId": "URBhl0L5"}' \
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
    --body '{"data": [{"itemIdentity": "FCbOn46W", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"B2uPQLrt": "2t6bVpCg", "KvPXSDuf": "mKh783cV", "54JsVBRB": "0rY0xfWd"}}, {"itemIdentity": "dACyHSmo", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"KX9TPO3K": "1k5ZM8bt", "mGsgXNXb": "pqxh76Af", "5JSwjw2f": "E2g6jXV7"}}, {"itemIdentity": "oai2oDm9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"aP0HJ98t": "E4UyoQg0", "b0sGOkzx": "Vt15LKmk", "Q7YBhsOu": "J0ypkkt2"}}]}' \
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
    --body '{"environment": "G4eFh2YN"}' \
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
    --body '{"appId": "sdoxpLTB", "publisherAuthenticationKey": "M9Q8t829"}' \
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
    --body '{"clientId": "Ido1Jyve", "clientSecret": "SRiBq23k", "organizationId": "yH9jQbHW"}' \
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
    --body '{"relyingPartyCert": "kcVk0X28"}' \
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
    'GS54vl7g' \
    'IKBc7OYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'ylFRAJKy' \
    'SnC0cfPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '3Z2zSBbs' \
    --body '{"categoryPath": "4PAV72u8", "targetItemId": "AxE2IQeo", "targetNamespace": "xYV4UcYz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'swAGpXqQ' \
    --body '{"appId": "xctuVaqP", "appType": "DLC", "baseAppId": "GAHEZmuQ", "boothName": "rZ8GaQ4O", "categoryPath": "Z2nDodm4", "clazz": "TNs8mAj6", "displayOrder": 70, "entitlementType": "CONSUMABLE", "ext": {"KSYFdJwg": {}, "ZsRPOzwu": {}, "DSdGl1A2": {}}, "features": ["kOdJagEm", "vaNeDiSq", "TfmAVg50"], "images": [{"as": "Tuaxlxgy", "caption": "wkbdOsyx", "height": 6, "imageUrl": "1tfW488o", "smallImageUrl": "YUT4jyCV", "width": 73}, {"as": "S7snx0Q2", "caption": "Gd8m7Y3w", "height": 16, "imageUrl": "1oIcV33y", "smallImageUrl": "jPxibDjf", "width": 65}, {"as": "NPTXA3qb", "caption": "g55Syien", "height": 57, "imageUrl": "XMU6KRIm", "smallImageUrl": "5xBoIi99", "width": 6}], "itemIds": ["zG8tlkxW", "KCU1XN4g", "l7yHvEqp"], "itemQty": {"JSrDXVwC": 22, "bpMpRl6x": 89, "jROYJm75": 98}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"eCpqnZ5N": {"description": "W623WWn2", "localExt": {"ZJY3QvRa": {}, "7CDRTcsA": {}, "HzD3dZyy": {}}, "longDescription": "WbUQpbcv", "title": "3IwmL7a1"}, "K3zIUYJm": {"description": "dF1YtWNS", "localExt": {"QlcMzxfp": {}, "pNCrscDP": {}, "bklTHcmg": {}}, "longDescription": "XsrVj3Mj", "title": "ml6BpCOD"}, "WGOLMmCZ": {"description": "UeelXYyN", "localExt": {"rXweiCnD": {}, "ldRPRfd6": {}, "mLZ0GTJw": {}}, "longDescription": "EjoZrRta", "title": "eWKMC8ws"}}, "lootBoxConfig": {"rewardCount": 83, "rewards": [{"lootBoxItems": [{"count": 6, "itemId": "ByQAMAgq", "itemSku": "FEzEt8um", "itemType": "j5XhKnw7"}, {"count": 78, "itemId": "xnA1Vyni", "itemSku": "oJcAPwVH", "itemType": "UGcs1ACM"}, {"count": 44, "itemId": "SmWa8TGk", "itemSku": "o16XTqHc", "itemType": "0cM7ixq8"}], "name": "Tjnxp5Cl", "odds": 0.9737841637435731, "type": "PROBABILITY_GROUP", "weight": 79}, {"lootBoxItems": [{"count": 14, "itemId": "n0Oia336", "itemSku": "uiiMTAdu", "itemType": "ctvUfVwL"}, {"count": 0, "itemId": "qstpgZpb", "itemSku": "z77y88rU", "itemType": "Fum2ZcA8"}, {"count": 17, "itemId": "5OexAPzC", "itemSku": "G6ZKQClG", "itemType": "c1636nbf"}], "name": "M3J9G40Y", "odds": 0.9445003349303351, "type": "REWARD", "weight": 2}, {"lootBoxItems": [{"count": 42, "itemId": "Co941ALz", "itemSku": "nQuHVskf", "itemType": "CjUK8GeX"}, {"count": 62, "itemId": "Q0B2Cj0o", "itemSku": "OmBmXu1K", "itemType": "iTTiz7yr"}, {"count": 70, "itemId": "DEDVKDIN", "itemSku": "E3HjCiVR", "itemType": "1dQ8kuhb"}], "name": "4pUwnGpt", "odds": 0.535360476952617, "type": "REWARD_GROUP", "weight": 31}], "rollFunction": "CUSTOM"}, "maxCount": 24, "maxCountPerUser": 47, "name": "7qNkQiKp", "optionBoxConfig": {"boxItems": [{"count": 16, "itemId": "oac8QTNE", "itemSku": "uBbeuQqm", "itemType": "9wM7mgTt"}, {"count": 95, "itemId": "9gNpNon6", "itemSku": "DKW9A6Am", "itemType": "nQTNFidI"}, {"count": 26, "itemId": "mSeS9SnG", "itemSku": "qhJOvykB", "itemType": "cDpzD9zh"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 41, "fixedTrialCycles": 62, "graceDays": 85}, "regionData": {"0HRsE0GH": [{"currencyCode": "DOFjrfqJ", "currencyNamespace": "cyxT2a7f", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1987-03-16T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1987-05-18T00:00:00Z", "discountedPrice": 53, "expireAt": "1989-10-29T00:00:00Z", "price": 63, "purchaseAt": "1988-11-04T00:00:00Z", "trialPrice": 18}, {"currencyCode": "iM573Tdt", "currencyNamespace": "WjfVciuL", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1990-10-28T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-08-10T00:00:00Z", "discountedPrice": 76, "expireAt": "1984-09-21T00:00:00Z", "price": 80, "purchaseAt": "1980-05-06T00:00:00Z", "trialPrice": 55}, {"currencyCode": "cwJd4Sri", "currencyNamespace": "gIxAhbFM", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1981-12-31T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1992-07-25T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-04-05T00:00:00Z", "price": 31, "purchaseAt": "1985-12-12T00:00:00Z", "trialPrice": 12}], "bzTiFrQB": [{"currencyCode": "1yUonirH", "currencyNamespace": "4URx3NkK", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1989-03-29T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1995-01-30T00:00:00Z", "discountedPrice": 0, "expireAt": "1972-11-18T00:00:00Z", "price": 5, "purchaseAt": "1975-05-26T00:00:00Z", "trialPrice": 65}, {"currencyCode": "6PM51z7i", "currencyNamespace": "0wQ9egK2", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1986-10-17T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1997-09-17T00:00:00Z", "discountedPrice": 86, "expireAt": "1989-10-09T00:00:00Z", "price": 49, "purchaseAt": "1999-07-05T00:00:00Z", "trialPrice": 23}, {"currencyCode": "Ow7xNQ98", "currencyNamespace": "IEbc9YIT", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1980-11-18T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1978-08-03T00:00:00Z", "discountedPrice": 34, "expireAt": "1988-06-21T00:00:00Z", "price": 8, "purchaseAt": "1995-03-09T00:00:00Z", "trialPrice": 37}], "dXRRnIAJ": [{"currencyCode": "fKVjOn6r", "currencyNamespace": "tILNJVv2", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1990-04-08T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1999-07-16T00:00:00Z", "discountedPrice": 54, "expireAt": "1985-06-11T00:00:00Z", "price": 91, "purchaseAt": "1993-02-28T00:00:00Z", "trialPrice": 22}, {"currencyCode": "Ds45siG3", "currencyNamespace": "0Lv9iGa5", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1976-04-06T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1993-04-15T00:00:00Z", "discountedPrice": 95, "expireAt": "1993-06-26T00:00:00Z", "price": 98, "purchaseAt": "1997-01-13T00:00:00Z", "trialPrice": 5}, {"currencyCode": "g6AByNpB", "currencyNamespace": "o2JYkwLd", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1993-08-06T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1994-06-11T00:00:00Z", "discountedPrice": 71, "expireAt": "1973-11-12T00:00:00Z", "price": 12, "purchaseAt": "1995-01-15T00:00:00Z", "trialPrice": 96}]}, "seasonType": "TIER", "sku": "ii4KpYcb", "stackable": true, "status": "INACTIVE", "tags": ["nh3jvW0Q", "6b8WtaMV", "vLbG04KK"], "targetCurrencyCode": "p3kTyL4C", "targetNamespace": "sLwiWUMc", "thumbnailUrl": "pxn4B6Xo", "useCount": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'unRkTxsG' \
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
    'drpNELM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Lfkut0wn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'T24wh59R' \
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
    'GSbBMh7j' \
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
    'pszuVk6i' \
    --body '{"itemIds": ["PdJ2boQq", "CCyJfThv", "CJieqRSG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'N8Mm74Hl' \
    'SZzp4aEW' \
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
    '4GkHG5OI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'VuGv47XJ' \
    'pkMiopQr' \
    --body '{"appId": "VL3ZZTVx", "appType": "GAME", "baseAppId": "I45X7HvU", "boothName": "tPYONZdF", "categoryPath": "k75lkjQN", "clazz": "HrjaboGo", "displayOrder": 25, "entitlementType": "CONSUMABLE", "ext": {"yoBM9qxd": {}, "6PWz7sVn": {}, "Mxge2inL": {}}, "features": ["3o7cTS9O", "8fBFP1AB", "aIKrEt8d"], "images": [{"as": "IIMErnNT", "caption": "LXHrsOFs", "height": 2, "imageUrl": "J9ibJMmR", "smallImageUrl": "goxNwp1l", "width": 67}, {"as": "bJ37DN2l", "caption": "Dvdh7okH", "height": 23, "imageUrl": "PWX1NPO5", "smallImageUrl": "Wn7rNG8r", "width": 67}, {"as": "sDefAS09", "caption": "VyQB1vR1", "height": 26, "imageUrl": "sRezyY9G", "smallImageUrl": "B5sf94AL", "width": 57}], "itemIds": ["ZSxTzm8o", "MSPIHPtq", "zIWIzg8p"], "itemQty": {"bjnt1iBV": 76, "DpbjGts4": 94, "lO6iPGC9": 88}, "itemType": "SEASON", "listable": false, "localizations": {"hqilty9N": {"description": "VlgxUmnf", "localExt": {"dOAmu1dX": {}, "1NqD20RU": {}, "vvYeJZw6": {}}, "longDescription": "QZFN7wFC", "title": "nqpvNesG"}, "iVnt9p2t": {"description": "o7Yja1so", "localExt": {"DE1K0SvG": {}, "rMYwPmPX": {}, "C2LfL2m5": {}}, "longDescription": "rP2A20t6", "title": "foPPH94S"}, "UinY5diU": {"description": "lqgvY7dP", "localExt": {"Pyahppgx": {}, "Jhk4EdTZ": {}, "000rS925": {}}, "longDescription": "94HLvWFs", "title": "XHtMP0k9"}}, "lootBoxConfig": {"rewardCount": 76, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "5dREQbCq", "itemSku": "fh0gpABF", "itemType": "BER6WNcD"}, {"count": 82, "itemId": "GMMo5DSo", "itemSku": "zCuFsrBM", "itemType": "toOeLfMC"}, {"count": 87, "itemId": "xSeeJOlx", "itemSku": "a395rghZ", "itemType": "wGhdZJkk"}], "name": "GhYvXYMI", "odds": 0.39164270115488053, "type": "PROBABILITY_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 62, "itemId": "ZMKGBnzh", "itemSku": "4suaGIzt", "itemType": "tTncVBf5"}, {"count": 13, "itemId": "l29GWKpI", "itemSku": "tMt4GszR", "itemType": "ufkDFLYy"}, {"count": 80, "itemId": "IejozmG5", "itemSku": "HlrIfMAv", "itemType": "vpkAHRJH"}], "name": "ZyfrXZmi", "odds": 0.5697040250921888, "type": "REWARD_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 58, "itemId": "nXNd6ve2", "itemSku": "9lqqtcLJ", "itemType": "W9eTJvKN"}, {"count": 60, "itemId": "Xjaf1f5f", "itemSku": "jNMZjKJ0", "itemType": "5puX3197"}, {"count": 100, "itemId": "6RQGnnW4", "itemSku": "ugGX6mKB", "itemType": "bgTD9xL0"}], "name": "7ZzzIs3J", "odds": 0.1741370055165502, "type": "PROBABILITY_GROUP", "weight": 45}], "rollFunction": "DEFAULT"}, "maxCount": 95, "maxCountPerUser": 47, "name": "uLP897oo", "optionBoxConfig": {"boxItems": [{"count": 79, "itemId": "YBd6hMB0", "itemSku": "l7sg7IfM", "itemType": "H5Tu1ky1"}, {"count": 76, "itemId": "YvyeHmfo", "itemSku": "FkUDP864", "itemType": "shbnQ3bV"}, {"count": 44, "itemId": "CxQMit85", "itemSku": "55Niy4NN", "itemType": "FpRE5pS8"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 89, "fixedTrialCycles": 86, "graceDays": 99}, "regionData": {"ZbfbmVTE": [{"currencyCode": "biRq5Jui", "currencyNamespace": "kmpat75r", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1973-11-26T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-01-31T00:00:00Z", "discountedPrice": 57, "expireAt": "1991-06-03T00:00:00Z", "price": 26, "purchaseAt": "1984-06-16T00:00:00Z", "trialPrice": 73}, {"currencyCode": "6OIG1PPL", "currencyNamespace": "RDEXLXZW", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1998-11-13T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1985-11-22T00:00:00Z", "discountedPrice": 69, "expireAt": "1985-06-22T00:00:00Z", "price": 82, "purchaseAt": "1997-05-05T00:00:00Z", "trialPrice": 92}, {"currencyCode": "eMjMzguq", "currencyNamespace": "6HFIqaqw", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1989-11-30T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1984-11-07T00:00:00Z", "discountedPrice": 2, "expireAt": "1985-07-20T00:00:00Z", "price": 10, "purchaseAt": "1974-06-10T00:00:00Z", "trialPrice": 91}], "8Q0RjSf1": [{"currencyCode": "srB7hGwG", "currencyNamespace": "bUmQmJHN", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1973-02-26T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1998-11-19T00:00:00Z", "discountedPrice": 41, "expireAt": "1980-12-19T00:00:00Z", "price": 87, "purchaseAt": "1998-02-22T00:00:00Z", "trialPrice": 23}, {"currencyCode": "FMdzryvh", "currencyNamespace": "c1YjHmmu", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1994-01-01T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1973-10-13T00:00:00Z", "discountedPrice": 62, "expireAt": "1988-04-03T00:00:00Z", "price": 32, "purchaseAt": "1972-10-06T00:00:00Z", "trialPrice": 59}, {"currencyCode": "4xiz3fWt", "currencyNamespace": "hJSu2pUI", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1992-11-04T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1987-01-10T00:00:00Z", "discountedPrice": 54, "expireAt": "1996-06-01T00:00:00Z", "price": 4, "purchaseAt": "1971-06-04T00:00:00Z", "trialPrice": 16}], "rjV7XJUO": [{"currencyCode": "tHlzXNHE", "currencyNamespace": "PpzlMlx7", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1999-12-19T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1985-01-17T00:00:00Z", "discountedPrice": 70, "expireAt": "1971-11-08T00:00:00Z", "price": 33, "purchaseAt": "1982-06-20T00:00:00Z", "trialPrice": 78}, {"currencyCode": "GikW7TFA", "currencyNamespace": "9gE6SrYK", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1976-10-09T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1993-11-20T00:00:00Z", "discountedPrice": 83, "expireAt": "1978-03-02T00:00:00Z", "price": 64, "purchaseAt": "1992-12-21T00:00:00Z", "trialPrice": 72}, {"currencyCode": "3GUxdMuv", "currencyNamespace": "mL0UBfwz", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1971-09-08T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1990-12-05T00:00:00Z", "discountedPrice": 25, "expireAt": "1999-12-12T00:00:00Z", "price": 100, "purchaseAt": "1993-01-27T00:00:00Z", "trialPrice": 85}]}, "seasonType": "TIER", "sku": "Wrb8s3GW", "stackable": false, "status": "INACTIVE", "tags": ["CA5tfK5u", "shaKTPVj", "yOUpR3uU"], "targetCurrencyCode": "dgNlyU4I", "targetNamespace": "JnqtrjCO", "thumbnailUrl": "sE8Vjvzh", "useCount": 72}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'vaf1Acwe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'R7tJW3ML' \
    --body '{"count": 79, "orderNo": "V86iic1F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'IMyF7CcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'u2DYn6E9' \
    'Gk51kOTJ' \
    --body '{"carousel": [{"alt": "ZluTekDM", "previewUrl": "CGUJvERx", "thumbnailUrl": "Ng8djSb4", "type": "video", "url": "aDcXsV1T", "videoSource": "generic"}, {"alt": "dI519Pf2", "previewUrl": "iogwxM5D", "thumbnailUrl": "ZM0dgozm", "type": "image", "url": "NBQWUHDB", "videoSource": "generic"}, {"alt": "YQg34WUV", "previewUrl": "0WpmsQnp", "thumbnailUrl": "1n4YGumT", "type": "image", "url": "lDOy5vhS", "videoSource": "generic"}], "developer": "1ZTogG0N", "forumUrl": "7Hvnuq1k", "genres": ["Sports", "Sports", "Casual"], "localizations": {"mmGdWl0w": {"announcement": "pj5tVfKU", "slogan": "3D8WVPh0"}, "Z7YiGE2c": {"announcement": "yzTMBY7X", "slogan": "d0OoENg2"}, "Lw7uepma": {"announcement": "hXojVZYz", "slogan": "2zMU9jLz"}}, "platformRequirements": {"NV3GaG43": [{"additionals": "R6nlRPrE", "directXVersion": "AYqRBeSc", "diskSpace": "5uShoj3d", "graphics": "GHMeoi5D", "label": "BOsQ0Gax", "osVersion": "0iX05IT9", "processor": "Agsjl5Nm", "ram": "nSHhxNmC", "soundCard": "e4txY0Ms"}, {"additionals": "Pc9EMgf9", "directXVersion": "JCJiEvhL", "diskSpace": "8ZfwCVJW", "graphics": "9yspUOyH", "label": "C9eKeXzr", "osVersion": "vzBllwzy", "processor": "C1aTWEmP", "ram": "goy4TkpE", "soundCard": "w4Zeid4m"}, {"additionals": "RoFNxv10", "directXVersion": "ckMQVjKk", "diskSpace": "3bWJ0ZuY", "graphics": "Se3sI0x2", "label": "hc8vaN1O", "osVersion": "ff5gRZZM", "processor": "W3huAIzB", "ram": "PWBYKAEF", "soundCard": "TdlKNh6G"}], "TzKjsCqx": [{"additionals": "x24QM35b", "directXVersion": "SkFrvGci", "diskSpace": "NHb7OY5Y", "graphics": "IpOLJW52", "label": "uz3c8pz6", "osVersion": "3M0g4xXT", "processor": "5Ts4e0uR", "ram": "47OzUGHe", "soundCard": "BKtpvyRN"}, {"additionals": "gjZkdDpp", "directXVersion": "vEJiUiDG", "diskSpace": "Xgh8BKcL", "graphics": "qtRZ93Lu", "label": "R8OEyICv", "osVersion": "wgwBFehw", "processor": "tdJLdn3R", "ram": "2wo8beVQ", "soundCard": "vgeP9qOH"}, {"additionals": "aLwYnXxr", "directXVersion": "z7sLmP70", "diskSpace": "LxN0f3JA", "graphics": "27Qz5Sjz", "label": "QfOLYu9O", "osVersion": "46OOzz9p", "processor": "57qSpHer", "ram": "zO87cg7T", "soundCard": "qtMiQgi7"}], "Aj28qCRb": [{"additionals": "wwZc4ZS1", "directXVersion": "NMkrnHs1", "diskSpace": "Iyhwqk14", "graphics": "0MolIrnl", "label": "kRVbcX43", "osVersion": "5TDYpkk2", "processor": "Gza6DrSy", "ram": "cophHw3E", "soundCard": "oEEClTO9"}, {"additionals": "SDKnMlnK", "directXVersion": "W9jiNMu9", "diskSpace": "QVrMeD4b", "graphics": "D8gISE34", "label": "yIAZQeig", "osVersion": "iA3wBrmB", "processor": "YIlZeheP", "ram": "72AB8EO3", "soundCard": "YrlyrWow"}, {"additionals": "UpUDVLlT", "directXVersion": "tuJJsHZV", "diskSpace": "sG6izJZr", "graphics": "uOJvSRFL", "label": "DSdj8elb", "osVersion": "tHvDU91D", "processor": "mHzwiqVP", "ram": "CJ5j18Ou", "soundCard": "3aY8nceF"}]}, "platforms": ["IOS", "Android", "Windows"], "players": ["Multi", "Multi", "Coop"], "primaryGenre": "FreeToPlay", "publisher": "jz1v0RBI", "releaseDate": "1991-05-13T00:00:00Z", "websiteUrl": "2rkJGmPa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'K6HEVIQJ' \
    'd3930TGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'wjRyfo4n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'WVZZbKFs' \
    'KOmgEhjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '2wFzCpxx' \
    'JLfAg5cF' \
    'T0gHAklt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'cR3eHFbi' \
    'AluHv7Hs' \
    'sd05pHBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'X5ln8PZb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'YVD8RiaT' \
    'sdD4d3kS' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 1, "comparison": "excludes", "name": "kHPMUvOA", "predicateType": "SeasonTierPredicate", "value": "Xkw36cr2", "values": ["6lZfa2jd", "4YIyZAFQ", "WJQqS7Tq"]}, {"anyOf": 80, "comparison": "isLessThan", "name": "aoj1ugjr", "predicateType": "EntitlementPredicate", "value": "mPkr3tZ5", "values": ["U9h9gCNV", "06ERSVy5", "M3rrkxu0"]}, {"anyOf": 13, "comparison": "isLessThanOrEqual", "name": "ci632w6L", "predicateType": "SeasonTierPredicate", "value": "J6JXSh0Z", "values": ["T6iLFQej", "3SWISs1d", "YrJKmx1B"]}]}, {"operator": "or", "predicates": [{"anyOf": 72, "comparison": "includes", "name": "F2hm0TqB", "predicateType": "SeasonTierPredicate", "value": "67g4W1eA", "values": ["tMuikKc6", "VNU8570s", "mDxP23qs"]}, {"anyOf": 17, "comparison": "excludes", "name": "Wm3V9sir", "predicateType": "SeasonPassPredicate", "value": "oEkPpqKh", "values": ["P2jWnRTg", "lw0gdWoE", "4esuiDrq"]}, {"anyOf": 42, "comparison": "isNot", "name": "ccz4J6fF", "predicateType": "SeasonTierPredicate", "value": "XbwKDtVm", "values": ["HfiT9s9p", "rYQu7hZv", "K8HuUY1Q"]}]}, {"operator": "or", "predicates": [{"anyOf": 33, "comparison": "isNot", "name": "x3dkbJFD", "predicateType": "SeasonPassPredicate", "value": "V01vD7lN", "values": ["CEIeSBLh", "9P9Gaukf", "LxlpvqaB"]}, {"anyOf": 93, "comparison": "isGreaterThan", "name": "fzigzHcR", "predicateType": "SeasonPassPredicate", "value": "HRL3o2Ns", "values": ["n63KIDTk", "trL6TsJe", "RcE7GuwK"]}, {"anyOf": 96, "comparison": "is", "name": "CqbbHGJG", "predicateType": "SeasonTierPredicate", "value": "2P2bh14L", "values": ["roFTnAuu", "dVB5a2Xk", "jPeP9N0v"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'S3XQfMuz' \
    --body '{"orderNo": "Zh4AhZRe"}' \
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
    --body '{"description": "2hgU56xt", "name": "yJtnbTDX", "status": "INACTIVE", "tags": ["2OW4Zw5Q", "wVKWNy2t", "nF2MifJR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '4hr4gdJD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'ujYnVnFK' \
    --body '{"description": "6gB6ZxC6", "name": "yYUVUJYn", "status": "INACTIVE", "tags": ["3jOGmROI", "qxqQ0gcN", "eTflyvUh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '3w5Ztfwm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'OCKpFSMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '0tfGIZCT' \
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
    'NiIRc9fE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'jkZhEpAJ' \
    --body '{"description": "MCxMp2J0"}' \
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
    --body '{"dryRun": false, "notifyUrl": "DhTrcBKt", "privateKey": "U956hOg8"}' \
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
    --body '{"currencyCode": "oukDVdwe", "currencyNamespace": "G0sFHxTH", "customParameters": {"a2k60SzC": {}, "qUgq1gLb": {}, "cIMevTmC": {}}, "description": "631p7q79", "extOrderNo": "4bu49lIN", "extUserId": "FTtERAXT", "itemType": "BUNDLE", "language": "IbCd-375", "metadata": {"TnNQnVUh": "A5WnzVZd", "j8tsyzC4": "QaLXp3o4", "TDraEEaD": "NJbVd20F"}, "notifyUrl": "VHevCjth", "omitNotification": true, "platform": "b7jKuMrF", "price": 2, "recurringPaymentOrderNo": "tGqxMnoA", "region": "XRlcq0mY", "returnUrl": "WKQYlqMm", "sandbox": true, "sku": "MW0ByjsR", "subscriptionId": "UrAHNRkI", "targetNamespace": "cC4wNFzs", "targetUserId": "brtYvLh5", "title": "6AWXoMio"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'wdWSs9DQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '0VU1HED9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'CGo9aUXj' \
    --body '{"extTxId": "3rh0Uyqx", "paymentMethod": "VWlIMY5t", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'xCvyy7ca' \
    --body '{"description": "xz4MQrOD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'LNlxiEjQ' \
    --body '{"amount": 57, "currencyCode": "dNrEwfWo", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 72, "vat": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'LlrwXmIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Nintendo' \
    --body '{"allowedBalanceOrigins": ["System", "System", "Xbox"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Steam' \
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
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --body '{"description": "f3zazm6p", "eventTopic": "5Y1tkG9W", "maxAwarded": 46, "maxAwardedPerUser": 10, "namespaceExpression": "U4Ty6Ch5", "rewardCode": "QYyFjuBq", "rewardConditions": [{"condition": "uE7xssm4", "conditionName": "hxczskbS", "eventName": "UbOZ9WNl", "rewardItems": [{"duration": 82, "itemId": "apJmNAbl", "quantity": 12}, {"duration": 45, "itemId": "ZmTTGYRb", "quantity": 86}, {"duration": 71, "itemId": "4QVey9pE", "quantity": 52}]}, {"condition": "6MMd2bzO", "conditionName": "rTn2huwP", "eventName": "gyUzBUWi", "rewardItems": [{"duration": 74, "itemId": "eDNfUESL", "quantity": 23}, {"duration": 47, "itemId": "wHv3Jgte", "quantity": 82}, {"duration": 46, "itemId": "LyKp8a1V", "quantity": 34}]}, {"condition": "ZdbuvCFB", "conditionName": "aVcohewK", "eventName": "kVuGv9fQ", "rewardItems": [{"duration": 22, "itemId": "nhSEanfU", "quantity": 36}, {"duration": 37, "itemId": "rFQP6rW6", "quantity": 66}, {"duration": 59, "itemId": "pvC1cr5T", "quantity": 53}]}], "userIdExpression": "PSXhduTW"}' \
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
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ImportRewards' test.out

#- 144 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'Gg97PY0t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'xzvYwv7a' \
    --body '{"description": "tn9EQv2O", "eventTopic": "j8TFNeGt", "maxAwarded": 73, "maxAwardedPerUser": 68, "namespaceExpression": "AbdtU0CD", "rewardCode": "rlQpKB8q", "rewardConditions": [{"condition": "oel2QK3a", "conditionName": "SOYdmMDi", "eventName": "kc3Fjm9H", "rewardItems": [{"duration": 30, "itemId": "qeiUGQMw", "quantity": 80}, {"duration": 95, "itemId": "wDlYSli3", "quantity": 32}, {"duration": 90, "itemId": "8YaAdel3", "quantity": 15}]}, {"condition": "7lxXq7Tk", "conditionName": "dM7FVDCB", "eventName": "cvVegrZd", "rewardItems": [{"duration": 7, "itemId": "GRGcCEPj", "quantity": 2}, {"duration": 69, "itemId": "Uy7F82Ad", "quantity": 42}, {"duration": 77, "itemId": "9BYRHrVT", "quantity": 10}]}, {"condition": "AgBpeubp", "conditionName": "rKX68jTy", "eventName": "Rd3LrR1x", "rewardItems": [{"duration": 30, "itemId": "U1v6zSLj", "quantity": 24}, {"duration": 86, "itemId": "9zmzUW0v", "quantity": 86}, {"duration": 50, "itemId": "j90jmLTt", "quantity": 57}]}], "userIdExpression": "QGawcomP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'oiYoQ1f1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'AYq306Py' \
    --body '{"payload": {"sv4VPaZW": {}, "olXypwuc": {}, "Uqqqff2i": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'Wi4yP3uq' \
    --body '{"conditionName": "Ncig6YcD", "userId": "A8Z3g62o"}' \
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
    'GYwkrjLI' \
    --body '{"active": true, "displayOrder": 77, "endDate": "1988-10-20T00:00:00Z", "ext": {"HAKtfXCK": {}, "Ona8Ddjt": {}, "Zhh6ofsU": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 32, "itemCount": 89, "rule": "SEQUENCE"}, "items": [{"id": "pnENiTc9", "sku": "NESV22eR"}, {"id": "BElD4K2C", "sku": "y1tJcPAE"}, {"id": "kCeV29Qs", "sku": "Qk100eu5"}], "localizations": {"UcxuXXpt": {"description": "0YSPX04u", "localExt": {"EIdAwgDo": {}, "bopbdJeV": {}, "CiKs2vLy": {}}, "longDescription": "H9kcSBdk", "title": "7MwQzn28"}, "Le5neohq": {"description": "hCzroAzW", "localExt": {"QDve0Z2G": {}, "2N09VIbb": {}, "sz24fQKD": {}}, "longDescription": "ZX6plErw", "title": "0Gb0ceCb"}, "phW4YMhJ": {"description": "0S50bez9", "localExt": {"ZLHW882r": {}, "iiPfRQ3r": {}, "J0f5lwXv": {}}, "longDescription": "RNDBnmL1", "title": "KQn77hiP"}}, "name": "1lzkzjYD", "rotationType": "FIXED_PERIOD", "startDate": "1972-06-30T00:00:00Z", "viewId": "mLBordrJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'kD6vy60u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'RMT1Xw9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '9Yb68a8y' \
    'gYx2Tqkh' \
    --body '{"active": false, "displayOrder": 69, "endDate": "1979-06-08T00:00:00Z", "ext": {"MnE9Wj90": {}, "EQzOidrW": {}, "nLrXqImg": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 12, "itemCount": 28, "rule": "SEQUENCE"}, "items": [{"id": "GaJsdCZN", "sku": "D0wgYOil"}, {"id": "X1e1825i", "sku": "asunESjc"}, {"id": "gr2drXG5", "sku": "NkKCySLA"}], "localizations": {"8cKCs0dF": {"description": "YRSa2OUL", "localExt": {"Z0iOZJiO": {}, "Ah1SpLhM": {}, "F2Pav11F": {}}, "longDescription": "uU8iXCRz", "title": "8Kgqgwij"}, "YxpGhsFA": {"description": "rq6lolbj", "localExt": {"7QKvtVRC": {}, "PMjr5M3v": {}, "w1GqUjjF": {}}, "longDescription": "p6R8mYZw", "title": "KftVqSEC"}, "sypS42Nm": {"description": "YQ8HlHbH", "localExt": {"nfs4tLVO": {}, "YQCWMktm": {}, "iKd9vLPP": {}}, "longDescription": "0w52JRAZ", "title": "xMWdoleY"}}, "name": "NHXeOpaR", "rotationType": "FIXED_PERIOD", "startDate": "1982-11-04T00:00:00Z", "viewId": "uE5cYVP9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'tQSa27Bn' \
    'Pyq3I1BL' \
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
    --body '{"defaultLanguage": "tGEZDRNk", "defaultRegion": "k4DJUofJ", "description": "XK8RGS0z", "supportedLanguages": ["CYRVmbfz", "wUmsy0st", "UmKdXiiT"], "supportedRegions": ["ObNdqkWa", "13g3pgHx", "6uPf6jQZ"], "title": "cYerH933"}' \
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
    'X7iXEEM2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'KOusNEHc' \
    --body '{"defaultLanguage": "I95GGdJv", "defaultRegion": "ucDbs6Ud", "description": "ccuM2ykR", "supportedLanguages": ["j3WnyAaU", "aQBKFedL", "2uduXvZU"], "supportedRegions": ["bQQ13FhD", "3NExUFip", "JsUiDawA"], "title": "jgHFQk0V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'zWRNFNiU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'n2yXMSCc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'HADYpS86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '1c0CJ7Lz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'pFvOSF6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'KA6yrnvX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'Y5dDwnea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'c75C6S2e' \
    'HsH4Y84h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'L75QboMH' \
    'CtzEF9FS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'eg6WYgtf' \
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
    'uqJHrs4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '3RnWR30M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'dBZezfwc' \
    --body '{"orderNo": "3H0qSbMq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '4GLj8aGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'H0qE5p60' \
    --body '{"count": 0, "orderNo": "HIEqIFEc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'S0ynIMOY' \
    --body '{"achievements": [{"id": "WpUYUQMo", "value": 29}, {"id": "Tt6M2Xiz", "value": 16}, {"id": "jEnimeR7", "value": 63}], "steamUserId": "2WAHtL7I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'WE3MFqvf' \
    'DG5jvMOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'XrDlEX42' \
    --body '{"achievements": [{"id": "U0syrGNh", "value": 57}, {"id": "oCiHMD4i", "value": 56}, {"id": "brJ2S5Pf", "value": 69}], "serviceConfigId": "Lvg8kYEV", "titleId": "ylINJpxF", "xboxUserId": "Y8E6pU8e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'Hjh0aTjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'OaQt0snb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'E0yMvqF7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'TJ9uB0zy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'pjJiu7BI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'imNuwB3h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'BVhuSMHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'f5R2MkxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'TAYGfE6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'XZ7XLoWC' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'f0dZEeXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'd6mGG6SH' \
    --body '[{"endDate": "1972-11-28T00:00:00Z", "grantedCode": "ZbX2wNnT", "itemId": "6A9zosmD", "itemNamespace": "nXoncy7N", "language": "rQr-771", "quantity": 2, "region": "kE1Fb0y9", "source": "REWARD", "startDate": "1973-04-23T00:00:00Z", "storeId": "P7yh0zsK"}, {"endDate": "1974-12-26T00:00:00Z", "grantedCode": "9stXH6LY", "itemId": "XXMndxBP", "itemNamespace": "KmHVB7cN", "language": "Eii", "quantity": 45, "region": "XiJcJqYS", "source": "REDEEM_CODE", "startDate": "1995-10-26T00:00:00Z", "storeId": "NnQOhusP"}, {"endDate": "1977-08-08T00:00:00Z", "grantedCode": "4466u8ag", "itemId": "b5HPsBU0", "itemNamespace": "Eo6QJ9vB", "language": "Dkpc", "quantity": 0, "region": "W6LwcAg5", "source": "GIFT", "startDate": "1985-08-08T00:00:00Z", "storeId": "BVCbi0if"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'dPyKf3Sw' \
    'HekWIz4r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'XlH5jw99' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'xCjXWcaX' \
    'BcfXXeV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'BXefsSgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'xSYnVwXq' \
    'F6K0WA76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'Kl2mHHoz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '6qBQnEDg' \
    '["X49n1xTD", "FcmOm1sq", "dIWU6ERy"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'lESgf5dX' \
    'MrPoYSoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'frLyXMSr' \
    'C62xYtDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'flNGfufW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '5cWeg6eS' \
    'CypsceIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'TkJGGCVF' \
    '6LrILDLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'iUCzmDAa' \
    'W5xz1c7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'uZXUCBYn' \
    'kY0LEBSY' \
    --body '{"endDate": "1984-01-20T00:00:00Z", "nullFieldList": ["dUSiTOrh", "B8hVs29W", "OKmZRTtg"], "startDate": "1983-01-20T00:00:00Z", "status": "REVOKED", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'CGBXv4fP' \
    '4VPzhcH4' \
    --body '{"options": ["UJrrCKvr", "OAi7lMgk", "VWJYzSCI"], "requestId": "DxWUxgOz", "useCount": 9}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'UEEBbqMM' \
    'KvkOsR1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'HUyirMVM' \
    'OFES2J2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'zNlJE3uq' \
    'Zz574g31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'cA0PwZxT' \
    'IZVSGQyT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'zhs9Asy4' \
    --body '{"duration": 6, "endDate": "1989-07-29T00:00:00Z", "itemId": "9N4YnolV", "itemSku": "WA2dWxBs", "language": "056jkPCU", "order": {"currency": {"currencyCode": "uE1pgdHv", "currencySymbol": "lQKiR7SD", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "KqVwnpPn"}, "ext": {"8N5xMRgU": {}, "7cPqNZrL": {}, "CRRUysya": {}}, "free": false}, "orderNo": "rvTzMTMS", "origin": "Playstation", "quantity": 36, "region": "QPQPEp5U", "source": "PROMOTION", "startDate": "1982-10-15T00:00:00Z", "storeId": "WGt6tooH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'P5kAww01' \
    --body '{"code": "zalTddhA", "language": "jPpX_GZBJ_532", "region": "meegRwPP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'bn7lttd2' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "Boi2sSAO", "namespace": "2n4MZQt7"}, "item": {"itemId": "53XQB93r", "itemSku": "OW0guPoQ", "itemType": "bYzc1RDV"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "oDoFkmA3", "namespace": "fgzcwdgJ"}, "item": {"itemId": "MjIyGfiN", "itemSku": "BQy41M1g", "itemType": "zGCbaxw3"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "8IyqNVv0", "namespace": "KVpXJTMx"}, "item": {"itemId": "3Y8Um1iq", "itemSku": "ehObg3OZ", "itemType": "9j0HDtbq"}, "quantity": 79, "type": "ITEM"}], "source": "REFERRAL_BONUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '6iKBGm5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'j7RqnJUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'fDmofxvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '8pRGoUtm' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "mf", "productId": "mdMiZeyI", "region": "rA4QUKSJ", "type": "EPICGAMES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'FyHv141N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'PqjRUMKS' \
    --body '{"currencyCode": "QjFdjqTa", "currencyNamespace": "ZFsWzbqw", "discountedPrice": 94, "ext": {"rNJLM0OO": {}, "VG5cG6Xx": {}, "ENbWqlX7": {}}, "itemId": "idzjpKDf", "language": "wl6XlCF6", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 65, "quantity": 79, "region": "rryiMMt6", "returnUrl": "fQtLhzyl", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'K100yH89' \
    'i8ZDPXRL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '8cbTAntB' \
    '1STaab1U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'eibXg7RC' \
    'e5BtKcwj' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "PqqOgCim"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'r3ZQNBBk' \
    'rXu9czsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'r3cFeVw7' \
    '0xdNTuOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'LKK0M2B2' \
    'hbqJin37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'P69t1Kqe' \
    'Gz7qbPnX' \
    --body '{"additionalData": {"cardSummary": "EuOzzkoB"}, "authorisedTime": "1977-06-15T00:00:00Z", "chargebackReversedTime": "1990-11-12T00:00:00Z", "chargebackTime": "1993-03-12T00:00:00Z", "chargedTime": "1990-08-18T00:00:00Z", "createdTime": "1979-07-08T00:00:00Z", "currency": {"currencyCode": "qPqJrAdh", "currencySymbol": "1HIk7vCE", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "7FQ2S5Ve"}, "customParameters": {"W9ddxzLP": {}, "V8wDjsny": {}, "Ph5yNbYX": {}}, "extOrderNo": "mlAOi1SC", "extTxId": "3I1SjkH4", "extUserId": "2LtyZKrT", "issuedAt": "1989-04-20T00:00:00Z", "metadata": {"o0L5sHil": "4Q0mqa8G", "atrjbJ5Y": "T7uvqarT", "vrG1DXZA": "Wlvz3c3X"}, "namespace": "ALMresGF", "nonceStr": "fsH4aXCD", "paymentMethod": "hshvEF8r", "paymentMethodFee": 68, "paymentOrderNo": "TZcvRKoa", "paymentProvider": "ADYEN", "paymentProviderFee": 95, "paymentStationUrl": "ozSAg8FT", "price": 77, "refundedTime": "1997-05-17T00:00:00Z", "salesTax": 30, "sandbox": true, "sku": "TRUkjGoR", "status": "CHARGEBACK", "statusReason": "oGlPzdfx", "subscriptionId": "cC3rpWhS", "subtotalPrice": 32, "targetNamespace": "cBXLwTfo", "targetUserId": "pqeZtHJn", "tax": 89, "totalPrice": 19, "totalTax": 12, "txEndTime": "1986-01-05T00:00:00Z", "type": "vsj5WcQ9", "userId": "9M1yuXeq", "vat": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'cmZKKKYA' \
    'Rape2tsN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'czam4Cdd' \
    --body '{"currencyCode": "1QYvww4X", "currencyNamespace": "Dokltgq2", "customParameters": {"vXtUnY6U": {}, "hDJ4pe0s": {}, "0Cuhl3dU": {}}, "description": "9b4seYCy", "extOrderNo": "iB4tDCWx", "extUserId": "3cEX8wTi", "itemType": "INGAMEITEM", "language": "AxB_407", "metadata": {"phqe9fS1": "m77MAg4K", "oZQPLhDS": "Jx9jzxaR", "Kph4kiIF": "gS4fLqlr"}, "notifyUrl": "KGiS3Xxj", "omitNotification": false, "platform": "lX1hj0La", "price": 90, "recurringPaymentOrderNo": "gQ94flh7", "region": "75AQfzNj", "returnUrl": "Q7IuMSY2", "sandbox": false, "sku": "y0GrvKI5", "subscriptionId": "EVB9ZFzL", "title": "NsjdCFtK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'Y0KsxR0r' \
    'CFkyiQZf' \
    --body '{"description": "MnTbKdwN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'hiIP7dpJ' \
    --body '{"code": "8B8VwFQn", "orderNo": "Vco2oCn1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'KvJmbjap' \
    --body '{"meta": {"W9UlEqtz": {}, "Dd7Sgxdx": {}, "B5kvtM8a": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "nZE13H2f", "namespace": "ILFzOlAZ"}, "entitlement": {"entitlementId": "bDQAEJLb"}, "item": {"itemIdentity": "VWH2XLIg", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 70, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "System", "currencyCode": "dSvWp3h0", "namespace": "xPsVY8qN"}, "entitlement": {"entitlementId": "wB2TY4v9"}, "item": {"itemIdentity": "NNfQSYLF", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "1zi0JSa5", "namespace": "cRn31D8u"}, "entitlement": {"entitlementId": "bfdXi7By"}, "item": {"itemIdentity": "cDPckeGJ", "itemIdentityType": "ITEM_ID", "origin": "Xbox"}, "quantity": 94, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "bD5mGFFm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'KTTUxG0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'pmFxxDNX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'GlGJvHf5' \
    --body '{"grantDays": 37, "itemId": "8h1ltyhi", "language": "SGhfqXhx", "reason": "BJ7zLXio", "region": "AGkWgSDd", "source": "DQvpRfGe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '3z2rtjWp' \
    'JAlKHF0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'bxhJ1176' \
    'CeD4dWCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '4wqlQJcZ' \
    'roNQiefB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'nPluOIjZ' \
    'yvlGDQGv' \
    --body '{"immediate": false, "reason": "pNNowEuV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'VZM28w4m' \
    'nYvvlt1e' \
    --body '{"grantDays": 38, "reason": "2WsQImTw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'YkiuxzLr' \
    'bJ0BkGzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'NgesQlZZ' \
    'HIZH0iks' \
    --body '{"additionalData": {"cardSummary": "6kx0adni"}, "authorisedTime": "1977-12-06T00:00:00Z", "chargebackReversedTime": "1992-07-17T00:00:00Z", "chargebackTime": "1992-07-17T00:00:00Z", "chargedTime": "1983-07-31T00:00:00Z", "createdTime": "1994-01-30T00:00:00Z", "currency": {"currencyCode": "uUSD9Imt", "currencySymbol": "aPAocOQc", "currencyType": "REAL", "decimals": 29, "namespace": "BWSNrCjS"}, "customParameters": {"NEAdojkC": {}, "MmYyTGO0": {}, "7foRZ6Fu": {}}, "extOrderNo": "jpIWo0qJ", "extTxId": "tqp4Q6Xg", "extUserId": "ICLgMHcP", "issuedAt": "1998-01-31T00:00:00Z", "metadata": {"i9tqvfHm": "FvUZiUW5", "Y0CYw5OX": "SGwQkJuy", "9oLFcHHc": "raLXR2n9"}, "namespace": "JQvq7NKW", "nonceStr": "IHYsii3f", "paymentMethod": "Ch7sieJj", "paymentMethodFee": 11, "paymentOrderNo": "PAkiWuml", "paymentProvider": "PAYPAL", "paymentProviderFee": 0, "paymentStationUrl": "U31uXPwY", "price": 47, "refundedTime": "1982-02-08T00:00:00Z", "salesTax": 82, "sandbox": false, "sku": "pmrK5Y5h", "status": "AUTHORISE_FAILED", "statusReason": "bfJOhNaI", "subscriptionId": "T0pv7Xeq", "subtotalPrice": 83, "targetNamespace": "htrBcBof", "targetUserId": "WTGYx2ih", "tax": 12, "totalPrice": 47, "totalTax": 17, "txEndTime": "1982-05-01T00:00:00Z", "type": "xwaLM8Hk", "userId": "VOW8PnLk", "vat": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'mzJbdkyk' \
    'VAnmnRfU' \
    --body '{"count": 17, "orderNo": "cYcko7U3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'gH239LhR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'x2Laa2Rd' \
    'tVb6VgA5' \
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

#- 307 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetIAPItemMapping' test.out

#- 308 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'mTsn1NwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetItemByAppId' test.out

#- 309 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryItems' test.out

#- 310 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '71szsNmn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemBySku' test.out

#- 311 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'qZSWdEyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicBulkGetItems' test.out

#- 312 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["VYrTdDq7", "IqbTVv8B", "LsqQW8HS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicValidateItemPurchaseCondition' test.out

#- 313 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'rEm5Y7jI' \
    '232Sjkti' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicSearchItems' test.out

#- 314 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'jiNzTUe8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetApp' test.out

#- 315 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'KdizXmrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItemDynamicData' test.out

#- 316 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'K0sCUsqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetItem' test.out

#- 317 GetPaymentCustomization
eval_tap 0 317 'GetPaymentCustomization # SKIP deprecated' test.out

#- 318 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "KocHomtj", "paymentProvider": "PAYPAL", "returnUrl": "fVNJNDaS", "ui": "O3FEkk4I", "zipCode": "t6V8Bu7r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentUrl' test.out

#- 319 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'IjGrxUMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetPaymentMethods' test.out

#- 320 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'bv60ixUu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUnpaidPaymentOrder' test.out

#- 321 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'UhopdqGr' \
    --body '{"token": "qRZ124P7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'Pay' test.out

#- 322 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'PauXTrpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicCheckPaymentOrderPaidStatus' test.out

#- 323 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'vmjWq9fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'GetPaymentPublicConfig' test.out

#- 324 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'qzulLGfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetQRCode' test.out

#- 325 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'MqSLQDlR' \
    'FYMVfiAM' \
    'ADYEN' \
    'xld80Yns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicNormalizePaymentReturnUrl' test.out

#- 326 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    's7hc3VUx' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'GetPaymentTaxValue' test.out

#- 327 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'BYLVVznF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetRewardByCode' test.out

#- 328 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'QueryRewards1' test.out

#- 329 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    '6hMYfksp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetReward1' test.out

#- 330 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicListStores' test.out

#- 331 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicExistsAnyMyActiveEntitlement' test.out

#- 332 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '8VQhYSFe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 333 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'BOp0ilGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 334 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'FwHUtZug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 335 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetEntitlementOwnershipToken' test.out

#- 336 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "blT3aIDK", "language": "gg_CRMJ", "region": "jZcTK8zm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncTwitchDropsEntitlement' test.out

#- 337 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'MfyshYk3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyWallet' test.out

#- 338 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'b5cAFVo8' \
    --body '{"epicGamesJwtToken": "5r1b8Yp2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'SyncEpicGameDLC' test.out

#- 339 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'QnuhQuId' \
    --body '{"serviceLabel": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicSyncPsnDlcInventory' test.out

#- 340 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'EGnRPgYl' \
    --body '{"serviceLabels": [72, 57, 63]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 341 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'fRnLcLbp' \
    --body '{"appId": "7OmcrDJ7", "steamId": "u1rrRPcn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncSteamDLC' test.out

#- 342 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'G89rnNW1' \
    --body '{"xstsToken": "Yjfn8lY4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxDLC' test.out

#- 343 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'DnYRxY8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlements' test.out

#- 344 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'hHeb0CaP' \
    'FDjrSotK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserAppEntitlementByAppId' test.out

#- 345 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'npJWALpT' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlementsByAppType' test.out

#- 346 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'w4yYJOCV' \
    'iHwunQwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementByItemId' test.out

#- 347 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'C2eCFUAH' \
    'ZaYSvsWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlementBySku' test.out

#- 348 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'NJtqXltZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicExistsAnyUserActiveEntitlement' test.out

#- 349 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'F6aSRmHU' \
    '5iR3hXIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 350 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'zWPKOkzf' \
    'tOgDQAWh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 351 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'ulbrDf7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 352 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '4cAnpmLi' \
    'Eu4CNtX2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 353 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'lnqi7cHT' \
    'SdGoLZbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlement' test.out

#- 354 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '3UJruU4u' \
    'IXBZsEYo' \
    --body '{"options": ["gFWiH9z4", "E8zmaZ5c", "g0REtUWY"], "requestId": "4fVIdqwC", "useCount": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicConsumeUserEntitlement' test.out

#- 355 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'xNg33ZIU' \
    --body '{"code": "rIkfmdXV", "language": "XAt_dloD", "region": "oNrF3Smg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicRedeemCode' test.out

#- 356 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'udQusJLs' \
    --body '{"excludeOldTransactions": false, "language": "ylf-Koxu_290", "productId": "WFpHt7Md", "receiptData": "Ku9Xwn5G", "region": "HJDGatrY", "transactionId": "OMO91CYE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillAppleIAPItem' test.out

#- 357 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'jX867n9P' \
    --body '{"epicGamesJwtToken": "T9fR7mMu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'SyncEpicGamesInventory' test.out

#- 358 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'BXPDKCri' \
    --body '{"autoAck": true, "language": "evH_xA", "orderId": "bxEJcKHE", "packageName": "764EwhQf", "productId": "xFKIOGT1", "purchaseTime": 99, "purchaseToken": "4zL1QeR3", "region": "EYXBFpUX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicFulfillGoogleIAPItem' test.out

#- 359 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '9y4tY7o5' \
    --body '{"currencyCode": "FFi1n10v", "price": 0.47676785216556383, "productId": "gyoHXIlr", "serviceLabel": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicReconcilePlayStationStore' test.out

#- 360 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'lW75icIK' \
    --body '{"currencyCode": "UpXazsFr", "price": 0.19799283007317958, "productId": "aGNoi3RP", "serviceLabels": [90, 93, 14]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 361 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'WotLNz0u' \
    --body '{"appId": "8ySxA0yr", "currencyCode": "jz4q7e0E", "language": "KNVb-zZcY-769", "price": 0.32520586990928657, "productId": "kgQ94ZvP", "region": "CWcMX0ov", "steamId": "3U2sKjIe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncSteamInventory' test.out

#- 362 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'yFS97dYD' \
    --body '{"gameId": "7LkcTKYp", "language": "hFV-kw", "region": "cJfAV5iO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'SyncTwitchDropsEntitlement1' test.out

#- 363 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'fzwt3bpx' \
    --body '{"currencyCode": "RNt6lKoM", "price": 0.14540584428710157, "productId": "CPtEKeBW", "xstsToken": "Tm78Fn8T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'SyncXboxInventory' test.out

#- 364 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'vZVTe4L2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicQueryUserOrders' test.out

#- 365 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'lXrVPX6r' \
    --body '{"currencyCode": "5ZTcnVVO", "discountedPrice": 76, "ext": {"Mvsu9osw": {}, "EPTvzwwG": {}, "npbx8MCI": {}}, "itemId": "jKzylqW8", "language": "JV-895", "price": 86, "quantity": 62, "region": "O4ozK705", "returnUrl": "ykRqSPYZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserOrder' test.out

#- 366 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'gPm4JLsX' \
    'VtBOEetH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrder' test.out

#- 367 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'sxAJ8Ny1' \
    'LRkPU9hr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicCancelUserOrder' test.out

#- 368 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'l5nkpEdB' \
    'e8bYWdok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserOrderHistories' test.out

#- 369 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '4UnUEOyP' \
    '0cPZf5Ov' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicDownloadUserOrderReceipt' test.out

#- 370 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'olfI0mqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentAccounts' test.out

#- 371 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'ctohLheR' \
    'card' \
    '8Ofl2oB8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicDeletePaymentAccount' test.out

#- 372 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'VTjF0pD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicListActiveSections' test.out

#- 373 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'NHU8iYUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicQueryUserSubscriptions' test.out

#- 374 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'tG5gbQSK' \
    --body '{"currencyCode": "W2MdgCH4", "itemId": "bWxRF6fB", "language": "zAyo_au", "region": "p8jaJs2d", "returnUrl": "uQqawPrx", "source": "i6F4elhy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicSubscribeSubscription' test.out

#- 375 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '9CZ94CAU' \
    'VW8FoEf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 376 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'tjCjWc22' \
    'qqDfNz59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetUserSubscription' test.out

#- 377 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'jHwSDQHa' \
    'dmAo0lzh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicChangeSubscriptionBillingAccount' test.out

#- 378 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'Pm7RmaOr' \
    '6TLwVyE4' \
    --body '{"immediate": true, "reason": "a0i6ifYP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicCancelSubscription' test.out

#- 379 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '1zfgjsy3' \
    'VRjX4qA4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscriptionBillingHistories' test.out

#- 380 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'g9OGoWw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicListViews' test.out

#- 381 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'qnCAvdnA' \
    'cokJ0rzq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetWallet' test.out

#- 382 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'X2KJcYHg' \
    'iFDxclBX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicListUserWalletTransactions' test.out

#- 383 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'QueryItems1' test.out

#- 384 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'ImportStore1' test.out

#- 385 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'ap6j73do' \
    --body '{"itemIds": ["CWxhubMX", "bxNvT6wA", "ffv4uzKA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
