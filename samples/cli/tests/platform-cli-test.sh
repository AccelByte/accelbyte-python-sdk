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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["ZPUdc0qh", "7eHpzSn3", "Oaiw9B0D"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["kNmKJfh5", "1Jub74CU", "lFHHdgs2"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["RMvqtlB2", "jJCSQT27", "NPX2bOIt"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["MyKrQpM4", "mDc3fxU8", "xkT1X68c"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["naLpUKp4", "4YUDjasW", "IPUvmEej"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["TvhZNkSQ", "MNqq98Sj", "5MXbN9oC"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["8bwbmXgd", "Qgb3boLQ", "Q1MzH7Qm"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["yeFoF7VS", "CcxvONZm", "3EeERmDn"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["lSck0ZHn", "qU6YE3p4", "UhAEtrmj"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["YReVHQip", "2L7vIYhG", "cCx9Zw5D"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["ApflxqMr", "S48l9lyN", "j3oZk03Q"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "saleConfig": {"currencyCode": "81P1ktfI", "price": 29}, "seasonType": "PASS", "sellable": true, "sku": "eIP6rOvD", "stackable": true, "status": "ACTIVE", "tags": ["6YmJFfRB", "yjlBiuFM", "KOsb392k"], "targetCurrencyCode": "3FIoVk8T", "targetItemId": "3GpAnkCm", "targetNamespace": "BUqg2SCn", "thumbnailUrl": "qntX9y1a", "title": "ZSWMiVi1", "updatedAt": "1998-09-29T00:00:00Z", "useCount": 37}, "namespace": "RuPMMWH8", "order": {"currency": {"currencyCode": "Yb33T5UB", "currencySymbol": "JCjfcnLR", "currencyType": "REAL", "decimals": 14, "namespace": "xeCSz9WE"}, "ext": {"i8KlloeH": {}, "0JT1ydua": {}, "t2vQR3bi": {}}, "free": true}, "source": "REFERRAL_BONUS"}, "script": "fsu4jmsR", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'sXzOXQAk' --login_with_auth "Bearer foo"
platform-create-fulfillment-script '4mqrxzTt' --body '{"grantDays": "uLl4XlbG"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'L8QOxtjz' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'm8y2wNhm' --body '{"grantDays": "woYZyI4E"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "FZKBcYrC", "dryRun": true, "fulfillmentUrl": "xreNDUWe", "itemType": "BUNDLE", "purchaseConditionUrl": "x40NLRc6"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'COINS' --login_with_auth "Bearer foo"
platform-get-item-type-config '06DJgas4' --login_with_auth "Bearer foo"
platform-update-item-type-config 'b6z3LNUj' --body '{"clazz": "7fdgLA84", "dryRun": false, "fulfillmentUrl": "YYk6QEgJ", "purchaseConditionUrl": "jBbEDoNf"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config '3n0hEoRC' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "Acf80zfF", "items": [{"extraSubscriptionDays": 50, "itemId": "8mJrYq6h", "itemName": "RkloqxM3", "quantity": 13}, {"extraSubscriptionDays": 0, "itemId": "pwxcfMy9", "itemName": "XzjjI5Yb", "quantity": 37}, {"extraSubscriptionDays": 1, "itemId": "KoADkzJE", "itemName": "N2VHzih3", "quantity": 3}], "maxRedeemCountPerCampaignPerUser": 83, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 39, "maxSaleCount": 71, "name": "VWn3CO39", "redeemEnd": "1992-12-21T00:00:00Z", "redeemStart": "1996-06-30T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["xtXgeO3F", "gkXhjDza", "QY3snn2Z"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'fADMMAXF' --login_with_auth "Bearer foo"
platform-update-campaign 'aY9eKa69' --body '{"description": "9bRVhyaK", "items": [{"extraSubscriptionDays": 47, "itemId": "DIDm4hMz", "itemName": "F4Txoden", "quantity": 91}, {"extraSubscriptionDays": 35, "itemId": "etOO847g", "itemName": "8OudOfjn", "quantity": 59}, {"extraSubscriptionDays": 65, "itemId": "uHZ3c46I", "itemName": "jGa23YvY", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 81, "maxRedeemCountPerCode": 26, "maxRedeemCountPerCodePerUser": 37, "maxSaleCount": 61, "name": "92epxk0i", "redeemEnd": "1982-07-13T00:00:00Z", "redeemStart": "1997-05-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["RujIUE1T", "q5jyAZvk", "RCMNFIur"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'jh2imdb4' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'rbkXj0Zw' --body '{"categoryPath": "sVC0gL97", "localizationDisplayNames": {"ZVJSPqJi": "wv1qlYB1", "RSKs6gQx": "C3Gb7S0o", "4zGYY7KQ": "I1AeFgPq"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'aOkvo1ao' --login_with_auth "Bearer foo"
platform-update-category 'lB4lkKB4' 'EYOkQ1jM' --body '{"localizationDisplayNames": {"D3cym8xI": "fkOVW2gr", "REOLx0KO": "ww3HICQL", "fl7MUBG7": "qtPu64yA"}}' --login_with_auth "Bearer foo"
platform-delete-category 'tURKLRkb' '738HGS6r' --login_with_auth "Bearer foo"
platform-get-child-categories 'DgMdIIlh' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'S1fSiM93' --login_with_auth "Bearer foo"
platform-query-codes '31m7Ta1P' --login_with_auth "Bearer foo"
platform-create-codes 'sKc50Kv6' --body '{"quantity": 8}' --login_with_auth "Bearer foo"
platform-download 'cyomQoIX' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'imBJehyx' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'lNsjUgxB' --login_with_auth "Bearer foo"
platform-query-redeem-history 'kF6wFPoJ' --login_with_auth "Bearer foo"
platform-get-code 'eQediogE' --login_with_auth "Bearer foo"
platform-disable-code 'hhM2rIiz' --login_with_auth "Bearer foo"
platform-enable-code 'GdKvOPdq' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "5xrgxSmy"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "1DN9LFkY", "currencySymbol": "W5DQyj4b", "currencyType": "REAL", "decimals": 64, "localizationDescriptions": {"5Ro2ogaK": "t2ujQSa3", "Zdb65UXm": "y0Zp6iIa", "TIKUkmkk": "9QM0NBMA"}}' --login_with_auth "Bearer foo"
platform-update-currency '9ORxpzwL' --body '{"localizationDescriptions": {"R2AK6eXU": "GPJsw1fi", "P80G9Pcl": "xcft2ulI", "JzPyrVEi": "OG4Ucqsu"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'GKHhMRWL' --login_with_auth "Bearer foo"
platform-get-currency-config 'Vd3DlhLu' --login_with_auth "Bearer foo"
platform-get-currency-summary 'IpomM8sm' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "1MiaI1mX", "rewards": [{"currency": {"currencyCode": "2tJoARtd", "namespace": "bBe7udsM"}, "item": {"itemId": "rok0WvGY", "itemSku": "Ynx4V709", "itemType": "xbnGezKs"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "wG2omOR2", "namespace": "nvYI9TVq"}, "item": {"itemId": "JdvzcWbf", "itemSku": "UpaXp5JM", "itemType": "l5LL4bTx"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "gwsAj1ik", "namespace": "1jglaDXT"}, "item": {"itemId": "vKCWwNTA", "itemSku": "hd2wrS0u", "itemType": "Pdjhdinp"}, "quantity": 27, "type": "ITEM"}]}, {"id": "g5BLy8wb", "rewards": [{"currency": {"currencyCode": "hMssAHja", "namespace": "pIkY9Rf4"}, "item": {"itemId": "wP57dBZN", "itemSku": "R88YbCtm", "itemType": "Ky8M9zVr"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "fGXZnqAQ", "namespace": "UoY1GjlI"}, "item": {"itemId": "Ik0iKoTT", "itemSku": "S1j02o7J", "itemType": "jTXAQN0q"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "skdQV0Tq", "namespace": "I8EFnmDb"}, "item": {"itemId": "xIxi4YKl", "itemSku": "ONk2Q5Y4", "itemType": "Jvaizwii"}, "quantity": 23, "type": "CURRENCY"}]}, {"id": "atuUjjt9", "rewards": [{"currency": {"currencyCode": "lIMGql5E", "namespace": "lEa9EIIl"}, "item": {"itemId": "GcHB3CfR", "itemSku": "3ncDlwi3", "itemType": "v3MFFJ1K"}, "quantity": 9, "type": "ITEM"}, {"currency": {"currencyCode": "ecjXJbZD", "namespace": "KKoxLE1Y"}, "item": {"itemId": "3Dymtj3g", "itemSku": "iPg4x4yi", "itemType": "PX6ues1H"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "hkg1yLVb", "namespace": "LFzHEP8c"}, "item": {"itemId": "M4NTwr0K", "itemSku": "HaAsmTej", "itemType": "52WKi6tA"}, "quantity": 35, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"wQUWDFJv": "JBWic7Uk", "BeIXuqDu": "AXI66bQ7", "1w0deoV9": "Lx5RDA1l"}}, {"platform": "STEAM", "platformDlcIdMap": {"XcrciYNE": "zvSZIPkh", "SgORcz5S": "5BvmgBLx", "h4ijFnE3": "Tam69qSZ"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"C6f6QkmZ": "XElW9YfR", "Sse6AAz3": "S4czz0QK", "FlAVmVLu": "4AOec0z8"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'eBeeoip6' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "8J1nsv4W", "password": "2OJhtafx"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "MSJlHeb3"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "4sZKHcl5", "serviceAccountId": "LLLOexL4"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "fZvWtND2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"DGQhNPEw": "iJCf2XJV", "rlzqQls1": "ozhLVA3k", "E8jKvgat": "OEBM70Td"}}, {"itemIdentity": "lNBJYOmp", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"wlc6esUp": "6Sw1I98j", "eZQ7hfxn": "hLd3Knak", "noed9DHh": "LOqQGhCU"}}, {"itemIdentity": "r6iTrjyE", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"iFc5HTHQ": "IoVsGo7d", "wV9DBqFK": "HQkETJyT", "lUrwDTno": "ujQD4IEi"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "H9Z5qXn3"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "aoRtlqOE", "publisherAuthenticationKey": "CohViHA5"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "CzgFSy8X", "clientSecret": "1A3PrIfa", "organizationId": "pq5AAeMe"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "4L3mDWOR"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'BVXTIIJM' '9XsYIIZx' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'iXNMR9Bg' 'aWcFX3SU' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'BhyoTsMW' --body '{"categoryPath": "PAxUMkaw", "targetItemId": "aGpAyrIw", "targetNamespace": "Mif3BOdk"}' --login_with_auth "Bearer foo"
platform-create-item 'ocVTd4Bx' --body '{"appId": "qGWV6mTJ", "appType": "SOFTWARE", "baseAppId": "sQs6XNbj", "boothName": "vqhnUVLW", "categoryPath": "u8olKdxL", "clazz": "6ozRmDD0", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"X7kPBom8": {}, "F9GLLTG8": {}, "phc3n4iL": {}}, "features": ["WGRaoQom", "oIllKlpO", "2pqiXJF3"], "images": [{"as": "SJC4DdrK", "caption": "F7SUQPLG", "height": 35, "imageUrl": "e0k5ZtX6", "smallImageUrl": "wK7PpUlc", "width": 70}, {"as": "bGIVIu8v", "caption": "vwLc7KY3", "height": 41, "imageUrl": "1WoVeJIe", "smallImageUrl": "PF8ZrQzP", "width": 51}, {"as": "7lGdMiHK", "caption": "xbWCYzo8", "height": 51, "imageUrl": "1pyVwyKQ", "smallImageUrl": "LY6FEO65", "width": 89}], "itemIds": ["s6ghP1y4", "Zi7s7QBl", "k44Z44B1"], "itemQty": {"GZgKg4uK": 47, "db60ufPp": 53, "3brWdTYC": 11}, "itemType": "CODE", "listable": false, "localizations": {"f4jvapse": {"description": "E9LN9bvh", "localExt": {"OrHflIOd": {}, "6X3viLvt": {}, "Ek4mTIpU": {}}, "longDescription": "A9gxo8SV", "title": "38nEhoXm"}, "M2W7l6jH": {"description": "MA2rG3na", "localExt": {"kopAywel": {}, "u01nryEJ": {}, "0NqoTow0": {}}, "longDescription": "qiOiC4j0", "title": "iktm0ZPL"}, "kLOsp0LZ": {"description": "5njN86Hl", "localExt": {"8kUXzt6b": {}, "Sc6bWvgp": {}, "VyW9dD1k": {}}, "longDescription": "OmvrAejc", "title": "q2LgkQua"}}, "lootBoxConfig": {"rewardCount": 91, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "7RBx3vim", "itemSku": "02jBOxrZ", "itemType": "DyvpcLYO"}, {"count": 99, "itemId": "PML52faX", "itemSku": "Ur9Sk4lq", "itemType": "2faBcAXX"}, {"count": 75, "itemId": "ngJOUn18", "itemSku": "G5MlfDTk", "itemType": "8aG40Nln"}], "name": "cceIZSwg", "odds": 0.4318654797298953, "type": "REWARD_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 20, "itemId": "pEY8Vnoc", "itemSku": "GAjci0V3", "itemType": "tBf2jnHG"}, {"count": 75, "itemId": "CqQpQ2Fb", "itemSku": "KPFMycMS", "itemType": "Q4qfAacR"}, {"count": 77, "itemId": "6OCaGBeM", "itemSku": "fPlNos4y", "itemType": "BRjrERHE"}], "name": "onAZR8Gm", "odds": 0.4900015811729306, "type": "REWARD", "weight": 88}, {"lootBoxItems": [{"count": 54, "itemId": "q1p6QCyY", "itemSku": "6vSkVFWd", "itemType": "sbYuVEGV"}, {"count": 49, "itemId": "uDXSxSc3", "itemSku": "aZPV87pn", "itemType": "a08gxefT"}, {"count": 89, "itemId": "KhuxaEc7", "itemSku": "M4P7UckS", "itemType": "C6ePeN8i"}], "name": "4GrFES9z", "odds": 0.956200218515806, "type": "REWARD", "weight": 42}], "rollFunction": "DEFAULT"}, "maxCount": 9, "maxCountPerUser": 54, "name": "HpATHcce", "optionBoxConfig": {"boxItems": [{"count": 8, "itemId": "akMpcmnn", "itemSku": "x6RVBrop", "itemType": "9v7aZK3h"}, {"count": 0, "itemId": "hbN15zfQ", "itemSku": "SfQrtfF3", "itemType": "TQN0OcND"}, {"count": 77, "itemId": "kepEaC4d", "itemSku": "fiOMZfEh", "itemType": "Hr39pysF"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 4, "graceDays": 11}, "regionData": {"1BZG99Ly": [{"currencyCode": "vfvHEsJK", "currencyNamespace": "QQewVLMU", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1984-04-20T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1976-12-27T00:00:00Z", "discountedPrice": 84, "expireAt": "1972-11-25T00:00:00Z", "price": 61, "purchaseAt": "1978-09-01T00:00:00Z", "trialPrice": 45}, {"currencyCode": "FUjfIGaf", "currencyNamespace": "foflEIBy", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1987-02-02T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1983-11-19T00:00:00Z", "discountedPrice": 66, "expireAt": "1998-04-10T00:00:00Z", "price": 26, "purchaseAt": "1973-09-26T00:00:00Z", "trialPrice": 62}, {"currencyCode": "elYF5wWa", "currencyNamespace": "DhukU4kh", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1993-09-27T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1972-02-14T00:00:00Z", "discountedPrice": 64, "expireAt": "1978-04-19T00:00:00Z", "price": 95, "purchaseAt": "1992-01-15T00:00:00Z", "trialPrice": 22}], "tPErqxyM": [{"currencyCode": "yOK06MqQ", "currencyNamespace": "BErxgjVB", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1972-06-25T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1997-08-26T00:00:00Z", "discountedPrice": 61, "expireAt": "1992-02-25T00:00:00Z", "price": 4, "purchaseAt": "1978-04-13T00:00:00Z", "trialPrice": 82}, {"currencyCode": "RDcrg0Dj", "currencyNamespace": "QjBECXve", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1988-04-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-03-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1982-10-16T00:00:00Z", "price": 49, "purchaseAt": "1987-07-08T00:00:00Z", "trialPrice": 90}, {"currencyCode": "ElpMYSWI", "currencyNamespace": "eVzm7z9n", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1982-04-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1976-02-05T00:00:00Z", "discountedPrice": 93, "expireAt": "1977-10-12T00:00:00Z", "price": 63, "purchaseAt": "1990-02-28T00:00:00Z", "trialPrice": 29}], "CFkIf5we": [{"currencyCode": "qZ18MH57", "currencyNamespace": "l2Zsrh90", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1994-11-18T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1991-02-23T00:00:00Z", "discountedPrice": 25, "expireAt": "1977-09-24T00:00:00Z", "price": 20, "purchaseAt": "1981-02-06T00:00:00Z", "trialPrice": 20}, {"currencyCode": "4akncw7w", "currencyNamespace": "u9TmXfJW", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1992-05-21T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-02-24T00:00:00Z", "discountedPrice": 60, "expireAt": "1991-04-15T00:00:00Z", "price": 38, "purchaseAt": "1986-03-25T00:00:00Z", "trialPrice": 9}, {"currencyCode": "dZ9bpjb1", "currencyNamespace": "tdA3QhjC", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1989-03-13T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1974-06-04T00:00:00Z", "discountedPrice": 15, "expireAt": "1979-10-10T00:00:00Z", "price": 74, "purchaseAt": "1975-12-07T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "lXn77AtY", "price": 29}, "seasonType": "PASS", "sellable": true, "sku": "zLAATPY8", "stackable": true, "status": "INACTIVE", "tags": ["Rry0KK5r", "3cfoivvQ", "xevecWw7"], "targetCurrencyCode": "gAGO0dW8", "targetNamespace": "rX2MVUGK", "thumbnailUrl": "SZ4GcLkt", "useCount": 70}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'pK32sJxl' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'ZcCTpTdR' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'tCHvuk6B' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '6XTmSLyn' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '50sigBVZ' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'xiKdV57G' --body '{"itemIds": ["vRyd9UuL", "02Le8HSC", "slsDd4M1"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'F5qRIblS' --body '{"changes": [{"itemIdentities": ["7Nz81GRa", "zPAANjfB", "oldFOyqA"], "itemIdentityType": "ITEM_ID", "regionData": {"clJ5gEOa": [{"currencyCode": "CgM6Yn6R", "currencyNamespace": "ugbNEIpG", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1987-06-04T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1975-07-31T00:00:00Z", "discountedPrice": 83, "expireAt": "1979-04-22T00:00:00Z", "price": 26, "purchaseAt": "1994-04-06T00:00:00Z", "trialPrice": 75}, {"currencyCode": "M7k8nbLz", "currencyNamespace": "vtCIW5yn", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1974-05-14T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1981-04-16T00:00:00Z", "discountedPrice": 18, "expireAt": "1981-01-22T00:00:00Z", "price": 54, "purchaseAt": "1990-02-05T00:00:00Z", "trialPrice": 12}, {"currencyCode": "IVXtoWAX", "currencyNamespace": "hMlW4tLq", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1991-10-12T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1985-12-28T00:00:00Z", "discountedPrice": 10, "expireAt": "1992-01-22T00:00:00Z", "price": 30, "purchaseAt": "1994-08-31T00:00:00Z", "trialPrice": 28}], "1e6oI9Fm": [{"currencyCode": "Yel0kOw7", "currencyNamespace": "2o8Zkgk0", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1993-08-09T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1985-01-22T00:00:00Z", "discountedPrice": 99, "expireAt": "1996-04-20T00:00:00Z", "price": 45, "purchaseAt": "1984-02-16T00:00:00Z", "trialPrice": 16}, {"currencyCode": "yuGz6Llx", "currencyNamespace": "Hv8Swyag", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1977-09-03T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1989-03-24T00:00:00Z", "discountedPrice": 47, "expireAt": "1991-04-20T00:00:00Z", "price": 95, "purchaseAt": "1994-11-20T00:00:00Z", "trialPrice": 27}, {"currencyCode": "gIGj2jZt", "currencyNamespace": "EYT8sIPS", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1996-02-11T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1990-07-28T00:00:00Z", "discountedPrice": 26, "expireAt": "1983-03-06T00:00:00Z", "price": 91, "purchaseAt": "1974-01-02T00:00:00Z", "trialPrice": 60}], "0sZoFS6x": [{"currencyCode": "COWMpyh9", "currencyNamespace": "pMsQgb64", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1974-01-11T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1984-08-30T00:00:00Z", "discountedPrice": 59, "expireAt": "1990-07-02T00:00:00Z", "price": 36, "purchaseAt": "1983-05-06T00:00:00Z", "trialPrice": 30}, {"currencyCode": "P7rz3ISW", "currencyNamespace": "510kHr4i", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1994-10-08T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1987-01-31T00:00:00Z", "discountedPrice": 20, "expireAt": "1978-04-10T00:00:00Z", "price": 43, "purchaseAt": "1982-08-20T00:00:00Z", "trialPrice": 25}, {"currencyCode": "nuHCXWfw", "currencyNamespace": "nwGioVwV", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1977-05-09T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-08-11T00:00:00Z", "discountedPrice": 41, "expireAt": "1995-10-27T00:00:00Z", "price": 97, "purchaseAt": "1979-09-20T00:00:00Z", "trialPrice": 10}]}}, {"itemIdentities": ["M9I6nEwn", "ZhsjwJeG", "waPSDMZz"], "itemIdentityType": "ITEM_SKU", "regionData": {"OYKiqaZD": [{"currencyCode": "63xe5rru", "currencyNamespace": "JVfLGea0", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1980-04-05T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1984-08-22T00:00:00Z", "discountedPrice": 4, "expireAt": "1985-06-16T00:00:00Z", "price": 68, "purchaseAt": "1993-08-03T00:00:00Z", "trialPrice": 12}, {"currencyCode": "Xz0UV31M", "currencyNamespace": "fuGaXsAu", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1996-12-28T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1997-09-25T00:00:00Z", "discountedPrice": 15, "expireAt": "1973-07-18T00:00:00Z", "price": 44, "purchaseAt": "1975-11-30T00:00:00Z", "trialPrice": 61}, {"currencyCode": "0TQNEI3k", "currencyNamespace": "fabxJWWS", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1986-08-17T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1974-11-22T00:00:00Z", "discountedPrice": 30, "expireAt": "1983-07-15T00:00:00Z", "price": 82, "purchaseAt": "1992-02-09T00:00:00Z", "trialPrice": 32}], "bT63ShEh": [{"currencyCode": "8PbGikLj", "currencyNamespace": "gjcj34uu", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1995-04-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1987-05-02T00:00:00Z", "discountedPrice": 47, "expireAt": "1985-01-31T00:00:00Z", "price": 73, "purchaseAt": "1980-04-07T00:00:00Z", "trialPrice": 99}, {"currencyCode": "sBJT6Hh3", "currencyNamespace": "OMjAjq2m", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1986-06-08T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1989-09-06T00:00:00Z", "discountedPrice": 80, "expireAt": "1973-01-25T00:00:00Z", "price": 23, "purchaseAt": "1997-07-06T00:00:00Z", "trialPrice": 87}, {"currencyCode": "nb5QxWG2", "currencyNamespace": "HFnZlA6H", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1985-10-08T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1989-12-14T00:00:00Z", "discountedPrice": 78, "expireAt": "1972-01-31T00:00:00Z", "price": 30, "purchaseAt": "1981-08-11T00:00:00Z", "trialPrice": 46}], "QELcNlZk": [{"currencyCode": "qTZrKgXN", "currencyNamespace": "wvm4e5GX", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1997-04-22T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1971-03-15T00:00:00Z", "discountedPrice": 13, "expireAt": "1983-12-24T00:00:00Z", "price": 15, "purchaseAt": "1989-06-06T00:00:00Z", "trialPrice": 75}, {"currencyCode": "AoKiVm6U", "currencyNamespace": "RT95XhnU", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1981-08-10T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1999-05-31T00:00:00Z", "discountedPrice": 8, "expireAt": "1991-04-28T00:00:00Z", "price": 32, "purchaseAt": "1973-06-19T00:00:00Z", "trialPrice": 37}, {"currencyCode": "VLie0LBa", "currencyNamespace": "36KNzjf0", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1996-11-03T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1973-09-23T00:00:00Z", "discountedPrice": 48, "expireAt": "1973-04-22T00:00:00Z", "price": 15, "purchaseAt": "1971-12-18T00:00:00Z", "trialPrice": 0}]}}, {"itemIdentities": ["7jjYgXch", "CbkXX26u", "EdCfQaMA"], "itemIdentityType": "ITEM_SKU", "regionData": {"uTKfC0I2": [{"currencyCode": "kNjCMDtD", "currencyNamespace": "Mrentgn3", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1974-06-13T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1993-01-17T00:00:00Z", "discountedPrice": 78, "expireAt": "1975-07-08T00:00:00Z", "price": 26, "purchaseAt": "1988-02-06T00:00:00Z", "trialPrice": 44}, {"currencyCode": "ShF9RKb9", "currencyNamespace": "vvxuJlhX", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1974-03-01T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1971-08-28T00:00:00Z", "discountedPrice": 47, "expireAt": "1989-12-07T00:00:00Z", "price": 73, "purchaseAt": "1982-07-25T00:00:00Z", "trialPrice": 93}, {"currencyCode": "tJBg0tTJ", "currencyNamespace": "g46IewOX", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1998-12-15T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1987-03-28T00:00:00Z", "discountedPrice": 57, "expireAt": "1985-03-04T00:00:00Z", "price": 13, "purchaseAt": "1999-12-10T00:00:00Z", "trialPrice": 29}], "IZsUf8lG": [{"currencyCode": "FXcmwTER", "currencyNamespace": "HclOdxIw", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1973-03-31T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1990-07-11T00:00:00Z", "discountedPrice": 29, "expireAt": "1973-01-11T00:00:00Z", "price": 12, "purchaseAt": "1980-10-30T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Lqs2nEZh", "currencyNamespace": "pByfHZin", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1973-10-02T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1984-12-08T00:00:00Z", "discountedPrice": 88, "expireAt": "1984-04-03T00:00:00Z", "price": 46, "purchaseAt": "1981-03-27T00:00:00Z", "trialPrice": 28}, {"currencyCode": "MBsznlBU", "currencyNamespace": "qnLT4AbG", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1981-07-31T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1997-12-28T00:00:00Z", "discountedPrice": 43, "expireAt": "1995-10-17T00:00:00Z", "price": 81, "purchaseAt": "1975-06-30T00:00:00Z", "trialPrice": 64}], "Pbpg7yrR": [{"currencyCode": "vXfZ6rvg", "currencyNamespace": "vEY3Hht1", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1979-07-16T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1997-05-29T00:00:00Z", "discountedPrice": 22, "expireAt": "1989-01-03T00:00:00Z", "price": 76, "purchaseAt": "1996-10-19T00:00:00Z", "trialPrice": 30}, {"currencyCode": "7vmiEd0J", "currencyNamespace": "PxVyQpsh", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1985-07-03T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1972-05-21T00:00:00Z", "discountedPrice": 92, "expireAt": "1994-01-11T00:00:00Z", "price": 15, "purchaseAt": "1972-10-16T00:00:00Z", "trialPrice": 65}, {"currencyCode": "H9c4Vfky", "currencyNamespace": "rwpuXxba", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1993-04-09T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1988-02-09T00:00:00Z", "discountedPrice": 14, "expireAt": "1986-12-02T00:00:00Z", "price": 87, "purchaseAt": "1977-05-24T00:00:00Z", "trialPrice": 17}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'YmkPKTPO' 'lhTtSiZN' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'CxuogFte' --login_with_auth "Bearer foo"
platform-update-item 'THJe4BhS' 'SQkQD6Wm' --body '{"appId": "Ot6D7ufF", "appType": "DLC", "baseAppId": "TOhvQpfb", "boothName": "Bke8aEdd", "categoryPath": "36xj6wyS", "clazz": "oltDxsbz", "displayOrder": 47, "entitlementType": "DURABLE", "ext": {"mcMdiS76": {}, "YApGJ9uf": {}, "wLYkqIgL": {}}, "features": ["uZS6hsQr", "eUNf26Uq", "yiEtOAbp"], "images": [{"as": "kCfgCUYB", "caption": "n2xaOBdP", "height": 64, "imageUrl": "m3XEwP2b", "smallImageUrl": "4gd3xOei", "width": 18}, {"as": "5S3DvPRC", "caption": "zBrVUxmD", "height": 83, "imageUrl": "ABeGs9yx", "smallImageUrl": "ahld1pO0", "width": 67}, {"as": "Cm4fZWuk", "caption": "6pQxDQpK", "height": 33, "imageUrl": "zZ3Fbtxf", "smallImageUrl": "hcRC7IVY", "width": 0}], "itemIds": ["BsaIecRx", "IsZvD6rm", "zVr5XT1N"], "itemQty": {"xw0v1dMQ": 50, "Rrbk6C2c": 98, "XIZRW491": 8}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"6ApCD2VX": {"description": "idT7w0Oc", "localExt": {"15N8WXBP": {}, "p17PAewq": {}, "Sm5x3B4t": {}}, "longDescription": "7WQnp8jX", "title": "Zedgt5cy"}, "Ne27HLtw": {"description": "tVOaxgP6", "localExt": {"Jbct8puM": {}, "ybYGxD9I": {}, "PmmsLmu3": {}}, "longDescription": "kaPj0O4z", "title": "d8Tb7cUN"}, "GPTBxiFF": {"description": "Crn7djjs", "localExt": {"69FTFVGU": {}, "VhvKhJCm": {}, "eisql14m": {}}, "longDescription": "UHVbMPim", "title": "NhcZsU3V"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 6, "itemId": "h23GUS2a", "itemSku": "mU7syGlE", "itemType": "lXdEAOrV"}, {"count": 92, "itemId": "iWXade41", "itemSku": "s3rH34mB", "itemType": "2yPlRpWj"}, {"count": 25, "itemId": "HbiQ5duE", "itemSku": "5p4cfs2E", "itemType": "41cK8QTw"}], "name": "iIAvxSvN", "odds": 0.4697691681496402, "type": "PROBABILITY_GROUP", "weight": 82}, {"lootBoxItems": [{"count": 25, "itemId": "Dbi9Bzup", "itemSku": "BsFpYc77", "itemType": "GtRUcCFe"}, {"count": 20, "itemId": "5g4XgBsb", "itemSku": "fzqxBPNe", "itemType": "8ae1Il4a"}, {"count": 54, "itemId": "QLYXxm09", "itemSku": "wpGAbpEm", "itemType": "DY9vLh3u"}], "name": "6EDsUmrV", "odds": 0.9418021892270804, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 72, "itemId": "4OotKwG3", "itemSku": "UC6XCnnZ", "itemType": "xF8CmQr1"}, {"count": 74, "itemId": "W65br34r", "itemSku": "BBN9tU6T", "itemType": "Dm5GloFS"}, {"count": 75, "itemId": "87t0ldWf", "itemSku": "7iSGIiKF", "itemType": "tWtn4Yr2"}], "name": "svKM6pqL", "odds": 0.5281422784637858, "type": "REWARD_GROUP", "weight": 93}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 42, "name": "jELAUK6m", "optionBoxConfig": {"boxItems": [{"count": 87, "itemId": "1li3Bg7J", "itemSku": "xc9pUnZm", "itemType": "vhidwCkZ"}, {"count": 46, "itemId": "vXO6aj4h", "itemSku": "CmTC34jx", "itemType": "W4pIDwdq"}, {"count": 99, "itemId": "pmRmut9H", "itemSku": "9XyWI8bp", "itemType": "8fQxRuX9"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 56, "fixedTrialCycles": 25, "graceDays": 13}, "regionData": {"trHJbEGT": [{"currencyCode": "Uj7YjERL", "currencyNamespace": "1rEQG02z", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1972-01-22T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-10-23T00:00:00Z", "discountedPrice": 45, "expireAt": "1987-06-23T00:00:00Z", "price": 76, "purchaseAt": "1980-07-21T00:00:00Z", "trialPrice": 100}, {"currencyCode": "VRafCjOu", "currencyNamespace": "SYht83Ad", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1985-12-28T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-12-30T00:00:00Z", "discountedPrice": 61, "expireAt": "1974-07-08T00:00:00Z", "price": 93, "purchaseAt": "1981-03-11T00:00:00Z", "trialPrice": 83}, {"currencyCode": "RJ8daGTV", "currencyNamespace": "X3Bb7jlz", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "discountedPrice": 75, "expireAt": "1975-11-22T00:00:00Z", "price": 71, "purchaseAt": "1992-07-26T00:00:00Z", "trialPrice": 25}], "jOa8E7wY": [{"currencyCode": "76PxLv9H", "currencyNamespace": "BEUe89Aw", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1982-02-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-11-29T00:00:00Z", "discountedPrice": 67, "expireAt": "1995-09-15T00:00:00Z", "price": 66, "purchaseAt": "1978-10-29T00:00:00Z", "trialPrice": 39}, {"currencyCode": "tx4XLKAm", "currencyNamespace": "lDr19uJ3", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1979-10-29T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-02-02T00:00:00Z", "discountedPrice": 27, "expireAt": "1980-07-27T00:00:00Z", "price": 98, "purchaseAt": "1979-08-23T00:00:00Z", "trialPrice": 30}, {"currencyCode": "cI8y3Cz0", "currencyNamespace": "YqCKUh5R", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "discountedPrice": 61, "expireAt": "1979-05-10T00:00:00Z", "price": 19, "purchaseAt": "1993-03-03T00:00:00Z", "trialPrice": 30}], "nFpnQ5xF": [{"currencyCode": "9wwbvMZy", "currencyNamespace": "eDeRnVfP", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1983-06-06T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1992-08-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1987-01-22T00:00:00Z", "price": 11, "purchaseAt": "1979-04-07T00:00:00Z", "trialPrice": 9}, {"currencyCode": "wZpFIYeA", "currencyNamespace": "g79HcLJX", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "discountedPrice": 8, "expireAt": "1973-06-15T00:00:00Z", "price": 93, "purchaseAt": "1987-08-06T00:00:00Z", "trialPrice": 18}, {"currencyCode": "aUyrdt4X", "currencyNamespace": "SpWBAets", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1978-02-26T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1981-05-17T00:00:00Z", "discountedPrice": 28, "expireAt": "1992-01-05T00:00:00Z", "price": 29, "purchaseAt": "1973-07-18T00:00:00Z", "trialPrice": 90}]}, "saleConfig": {"currencyCode": "frtbECD1", "price": 58}, "seasonType": "TIER", "sellable": false, "sku": "AxJrINPX", "stackable": false, "status": "INACTIVE", "tags": ["6tvKgLB9", "pPNO3Afm", "XcgwC3IN"], "targetCurrencyCode": "QmJIOq9d", "targetNamespace": "P5szG71u", "thumbnailUrl": "tjsQ4CrR", "useCount": 2}' --login_with_auth "Bearer foo"
platform-delete-item 'HZVNYzGM' --login_with_auth "Bearer foo"
platform-acquire-item 'NIpWoSLk' --body '{"count": 96, "orderNo": "vfZvyV7A"}' --login_with_auth "Bearer foo"
platform-get-app 'codcZwKj' --login_with_auth "Bearer foo"
platform-update-app 'YDdmJOlz' 'wm9Su4Fn' --body '{"carousel": [{"alt": "S98QqftS", "previewUrl": "jq7sn8yr", "thumbnailUrl": "eciPLfkV", "type": "video", "url": "3Ar6MF35", "videoSource": "generic"}, {"alt": "JgehDJxE", "previewUrl": "N7JlZc8L", "thumbnailUrl": "Mq1o2jZW", "type": "video", "url": "fZcd9CVn", "videoSource": "youtube"}, {"alt": "q1bTHXIj", "previewUrl": "fJKyFlM0", "thumbnailUrl": "u1uuoVdn", "type": "video", "url": "yVoSlKNc", "videoSource": "generic"}], "developer": "MZQjzvjS", "forumUrl": "ozv6CTRD", "genres": ["Casual", "Racing", "RPG"], "localizations": {"SohhhuiT": {"announcement": "nJarYYkH", "slogan": "BDdSzBXd"}, "xapwhd5I": {"announcement": "QYBQuxLv", "slogan": "PuWYvE3f"}, "sNy9Z9Oh": {"announcement": "xXvCp9y7", "slogan": "fLD2qfCX"}}, "platformRequirements": {"nlUnqxT1": [{"additionals": "WsRNMZcA", "directXVersion": "92hzC7MN", "diskSpace": "a8vVe4MH", "graphics": "X6AgMep9", "label": "0AyyUJyA", "osVersion": "K5PRMRMw", "processor": "dvl0hv6g", "ram": "62GxBW2t", "soundCard": "QF5tkTjg"}, {"additionals": "JaMYvNQO", "directXVersion": "sDa4bkcg", "diskSpace": "epqtxjbr", "graphics": "ztee7QLT", "label": "GAak7Kao", "osVersion": "l01DK97D", "processor": "2xnik42m", "ram": "iteR5eQA", "soundCard": "e1rzmmgq"}, {"additionals": "BPRmd6mO", "directXVersion": "4oI8KDqe", "diskSpace": "bm83raNB", "graphics": "J5y7axEk", "label": "vI4oxZED", "osVersion": "xGiBnNbn", "processor": "0zaf7CaO", "ram": "SlHXrUSA", "soundCard": "6sMJzA5m"}], "tqISQ83T": [{"additionals": "TbtefXWz", "directXVersion": "nDe4LQdX", "diskSpace": "fFBii2RA", "graphics": "MEX5RMjB", "label": "FVZGYzQq", "osVersion": "V8d9mDdU", "processor": "IoiIJFNx", "ram": "uNOmUSWw", "soundCard": "18T1IxVW"}, {"additionals": "CxdvPL9e", "directXVersion": "4P01vxP8", "diskSpace": "xj1LyEir", "graphics": "URERnEMz", "label": "pImW6sjA", "osVersion": "HyCK5tNa", "processor": "nGBrkzUv", "ram": "ck3xTtmO", "soundCard": "FMebS4Ad"}, {"additionals": "lNzwog2I", "directXVersion": "hErkNhNc", "diskSpace": "ECWwchW6", "graphics": "zL9SkbLl", "label": "rNXnGanM", "osVersion": "azb8jvRW", "processor": "enURH48a", "ram": "JuALEcSq", "soundCard": "cE15u6D3"}], "1DjOsrs3": [{"additionals": "CUYATdqn", "directXVersion": "QGbqiqOk", "diskSpace": "NeATj7eG", "graphics": "jodd7CcJ", "label": "UrI6MAug", "osVersion": "K5kypNrp", "processor": "2nFe9FmN", "ram": "86sK5LOq", "soundCard": "4ft5jGcM"}, {"additionals": "ICPUYnfG", "directXVersion": "6jl9U4jR", "diskSpace": "eteIMgzI", "graphics": "SomCsodJ", "label": "rhQW41q2", "osVersion": "OspCZbt3", "processor": "Uta5I0uG", "ram": "cL1koyHj", "soundCard": "CH5olYLE"}, {"additionals": "TRpABAmO", "directXVersion": "2EGvJ4UM", "diskSpace": "S93yOxNI", "graphics": "nDByhnol", "label": "uO6ti0QP", "osVersion": "2ssiJ66O", "processor": "zOj84O6t", "ram": "gohjtC7b", "soundCard": "zjPpucdd"}]}, "platforms": ["Windows", "IOS", "Windows"], "players": ["MMO", "MMO", "CrossPlatformMulti"], "primaryGenre": "MassivelyMultiplayer", "publisher": "fF8y959a", "releaseDate": "1978-05-25T00:00:00Z", "websiteUrl": "tzB0B4Cx"}' --login_with_auth "Bearer foo"
platform-disable-item 'yQrUpIFv' 'ORxTi79D' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'pSjb39uk' --login_with_auth "Bearer foo"
platform-enable-item 'cR6c2E2r' '3vk3IfAK' --login_with_auth "Bearer foo"
platform-feature-item 'EbqcNXSG' 'CCvNowNm' 'dpcJgF88' --login_with_auth "Bearer foo"
platform-defeature-item 'ySNq4Mj7' 'mulP4tQ6' 'R1OqKVOT' --login_with_auth "Bearer foo"
platform-get-locale-item 'niBgLsNh' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'dgQ0JWZj' 'NRSzOTqc' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 48, "comparison": "excludes", "name": "vaUoXDmw", "predicateType": "EntitlementPredicate", "value": "sukxncuD", "values": ["3QxCXMd0", "mM45mfIZ", "0YBWCaVV"]}, {"anyOf": 37, "comparison": "isGreaterThanOrEqual", "name": "WhkS476d", "predicateType": "SeasonTierPredicate", "value": "h4IjDq9a", "values": ["T3qZyI0r", "YsWucAkX", "sVJbXi7e"]}, {"anyOf": 88, "comparison": "includes", "name": "Za7WwIc8", "predicateType": "SeasonPassPredicate", "value": "5ImqK6tV", "values": ["saUq3stU", "BiSAylX5", "h5J5Z9Gi"]}]}, {"operator": "and", "predicates": [{"anyOf": 28, "comparison": "includes", "name": "Ns0QJQea", "predicateType": "SeasonTierPredicate", "value": "ytPfds1B", "values": ["df8ZyyZe", "HAWGgJUb", "Yx0EaURy"]}, {"anyOf": 95, "comparison": "is", "name": "bkcTglbU", "predicateType": "EntitlementPredicate", "value": "6FyOjApN", "values": ["HBVfNOUR", "oTynmfIu", "cjY3YYT9"]}, {"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "WgJTNFfM", "predicateType": "SeasonPassPredicate", "value": "M0IW4oe8", "values": ["KDgy0xZf", "AcNg14Ws", "8TIP1LKi"]}]}, {"operator": "and", "predicates": [{"anyOf": 87, "comparison": "isNot", "name": "oLDvumfq", "predicateType": "SeasonPassPredicate", "value": "iKhDcJ7T", "values": ["uppUxDSK", "8aOTGMud", "CcNIsQ3P"]}, {"anyOf": 4, "comparison": "isLessThan", "name": "xlCV4cNb", "predicateType": "SeasonTierPredicate", "value": "RRiLilmO", "values": ["bdRXTGIr", "GF6dLLIe", "IVIjMcdl"]}, {"anyOf": 6, "comparison": "isGreaterThan", "name": "5gJPqTAj", "predicateType": "EntitlementPredicate", "value": "vvDgw0ag", "values": ["iEXqvUWD", "7kSWE0Hi", "qm5IuLry"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'jU1G0EVj' --body '{"orderNo": "VZw1ToLu"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "PakQN1Mp", "name": "Os1RVFrc", "status": "ACTIVE", "tags": ["2635KbtZ", "TGJpqgl2", "IzNXGTuQ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'PIDpor7t' --login_with_auth "Bearer foo"
platform-update-key-group '1aJLNNz6' --body '{"description": "QIVC9Mfu", "name": "c8VOsnmn", "status": "ACTIVE", "tags": ["xmuCCVuF", "jS1GC1d2", "b92B4vEg"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'j3HOmhcW' --login_with_auth "Bearer foo"
platform-list-keys 'm428XejR' --login_with_auth "Bearer foo"
platform-upload-keys 'F94NIY9n' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'MrBZo0lN' --login_with_auth "Bearer foo"
platform-refund-order 'UBDShHD3' --body '{"description": "2vvL28FP"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "MEmtbiWs", "privateKey": "AQHbMrKY"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "i0Zxs5SW", "currencyNamespace": "CqZXHLLa", "customParameters": {"31oQf7BU": {}, "LnZDhutD": {}, "M6BqguqD": {}}, "description": "5xxGxBWt", "extOrderNo": "nTKUe2zn", "extUserId": "sqPzPkwC", "itemType": "LOOTBOX", "language": "OJ-201", "metadata": {"g4MLAo3m": "61P2xaNf", "mn8Onb1a": "9gMz0F2U", "BRmMhAbU": "WmFhdYLW"}, "notifyUrl": "zMuv3zkU", "omitNotification": true, "platform": "0n0BAZkw", "price": 3, "recurringPaymentOrderNo": "FbRkPSSI", "region": "Tz4TjCrJ", "returnUrl": "HXGXku2Y", "sandbox": false, "sku": "uOzhxHmn", "subscriptionId": "rrV9ZGWr", "targetNamespace": "Z05sxe6A", "targetUserId": "6RpmKDeb", "title": "Nkylbynk"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'gT9vayLL' --login_with_auth "Bearer foo"
platform-get-payment-order 'iizac7Ge' --login_with_auth "Bearer foo"
platform-charge-payment-order '6zKJdlt7' --body '{"extTxId": "rjF5RaJw", "paymentMethod": "vkWVco2L", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'XTB9YQzU' --body '{"description": "J9XlYJ8B"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'zP6EUmUX' --body '{"amount": 67, "currencyCode": "MeBXH8x6", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 97, "vat": 22}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'fZVDAiU6' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'IOS' --body '{"allowedBalanceOrigins": ["Xbox", "Playstation", "Xbox"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "Y91lX8DD", "eventTopic": "4MYXlrJ8", "maxAwarded": 9, "maxAwardedPerUser": 24, "namespaceExpression": "C5weXJl7", "rewardCode": "PeiMH8z8", "rewardConditions": [{"condition": "dVej8N2y", "conditionName": "v6VTnOK7", "eventName": "xAvM7tuL", "rewardItems": [{"duration": 62, "itemId": "1lsR7xxS", "quantity": 98}, {"duration": 31, "itemId": "RctmTozC", "quantity": 18}, {"duration": 52, "itemId": "8HeV6jba", "quantity": 24}]}, {"condition": "82JVBRLP", "conditionName": "Z6Iz8tne", "eventName": "5dbguBF6", "rewardItems": [{"duration": 67, "itemId": "WbjE2opX", "quantity": 39}, {"duration": 52, "itemId": "dsJQeJ1t", "quantity": 29}, {"duration": 30, "itemId": "IK9lOLaZ", "quantity": 1}]}, {"condition": "EEBGTtZy", "conditionName": "TjdKNKgY", "eventName": "azujsmSm", "rewardItems": [{"duration": 49, "itemId": "nNuhoJM3", "quantity": 100}, {"duration": 99, "itemId": "3aMb48jI", "quantity": 92}, {"duration": 7, "itemId": "ViEdqQpo", "quantity": 66}]}], "userIdExpression": "SWLWLNfH"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'cPAGv6c1' --login_with_auth "Bearer foo"
platform-update-reward 'ESC6hZYT' --body '{"description": "YZbzf5aA", "eventTopic": "NNNs5kgS", "maxAwarded": 48, "maxAwardedPerUser": 81, "namespaceExpression": "7MSBqabU", "rewardCode": "XOGkkoMU", "rewardConditions": [{"condition": "Zn1YXj5z", "conditionName": "FZeOCOR9", "eventName": "NvBQZSJP", "rewardItems": [{"duration": 84, "itemId": "JZkDnEiy", "quantity": 10}, {"duration": 53, "itemId": "a2LrnpZx", "quantity": 80}, {"duration": 52, "itemId": "nLRH36bq", "quantity": 91}]}, {"condition": "0TuU2aL4", "conditionName": "bPkk11sy", "eventName": "s6GdkDco", "rewardItems": [{"duration": 39, "itemId": "Zc2FbrTF", "quantity": 53}, {"duration": 27, "itemId": "0jvA54CS", "quantity": 33}, {"duration": 100, "itemId": "ZFDsO1sk", "quantity": 88}]}, {"condition": "YSCdnFKL", "conditionName": "c0xcTjqj", "eventName": "dcEfU61O", "rewardItems": [{"duration": 73, "itemId": "UumPKVSZ", "quantity": 59}, {"duration": 49, "itemId": "g3XTc9vQ", "quantity": 8}, {"duration": 6, "itemId": "C6o86cSR", "quantity": 77}]}], "userIdExpression": "vnRCa9Jk"}' --login_with_auth "Bearer foo"
platform-delete-reward 'tyBdxkZK' --login_with_auth "Bearer foo"
platform-check-event-condition 'rEWFw9GY' --body '{"payload": {"xjiiOQAD": {}, "77ci0vfW": {}, "VZoRRMPi": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '57HyKKz5' --body '{"conditionName": "nyI6ulKN", "userId": "KoXa0dgx"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '1JgjC56p' --body '{"active": false, "displayOrder": 8, "endDate": "1971-07-04T00:00:00Z", "ext": {"3YhtQxpC": {}, "YME6x21p": {}, "dX2QSPAd": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 37, "itemCount": 45, "rule": "SEQUENCE"}, "items": [{"id": "oEV6tCdr", "sku": "xw1KOPhu"}, {"id": "vHuYrGWD", "sku": "K41uMOC0"}, {"id": "mRvSoaGk", "sku": "4ktF5wnJ"}], "localizations": {"Dg9Q3WXi": {"description": "ydCOInVo", "localExt": {"lsr6CHmj": {}, "763vLwtY": {}, "EJTSiXjc": {}}, "longDescription": "Y5ZPkv90", "title": "lyKSTWLx"}, "SFZ0Lpup": {"description": "Ei5DbkVs", "localExt": {"3qFTi1t5": {}, "30Wj1Wfz": {}, "Ivc3VlSX": {}}, "longDescription": "rA3XUGud", "title": "4tVjmxEf"}, "4XvVhFJT": {"description": "xFHITBg9", "localExt": {"x4unq3eO": {}, "MHIKeTyB": {}, "G5dCUoEx": {}}, "longDescription": "nKfV3869", "title": "IN4V1Odh"}}, "name": "H4GVU7Ex", "rotationType": "CUSTOM", "startDate": "1998-03-26T00:00:00Z", "viewId": "tIC45C0o"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'aGouFu4h' --login_with_auth "Bearer foo"
platform-get-section 'XONgUwJn' --login_with_auth "Bearer foo"
platform-update-section 'UpryDeRc' 'pUvlrw2M' --body '{"active": true, "displayOrder": 22, "endDate": "1984-12-30T00:00:00Z", "ext": {"1uuokpaI": {}, "jL0Vxe5n": {}, "9Lx3QcFo": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 61, "itemCount": 48, "rule": "SEQUENCE"}, "items": [{"id": "4bmm7jPd", "sku": "KLddfdsU"}, {"id": "qjXVzW1Q", "sku": "qxnWR5sh"}, {"id": "eLgsAF4c", "sku": "tv5guycG"}], "localizations": {"iq9j2EyI": {"description": "knfLDpgH", "localExt": {"nMOn8nc3": {}, "gUZ8ZFyy": {}, "Er0KBXuJ": {}}, "longDescription": "BqK4QtEy", "title": "dPWLPBYi"}, "R3UbJc1Z": {"description": "Yapx7C47", "localExt": {"7etqgfOJ": {}, "DUT0uKAP": {}, "rARya2IM": {}}, "longDescription": "lNiXpF4q", "title": "vsUUpHqi"}, "33TcBGkc": {"description": "0HjUcnkp", "localExt": {"U9oVzl2k": {}, "BuLFXIeC": {}, "EKZUTz3G": {}}, "longDescription": "vCAZ5j24", "title": "acYHbrry"}}, "name": "HB6GO9zP", "rotationType": "FIXED_PERIOD", "startDate": "1987-11-10T00:00:00Z", "viewId": "aepA3b3Y"}' --login_with_auth "Bearer foo"
platform-delete-section 'J9nJM6vt' 'T27xv85K' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "5MU2qmbe", "defaultRegion": "qaVemINd", "description": "ClpF7Ovl", "supportedLanguages": ["BIEgjse5", "kd6GEDo0", "8yq5E5Hl"], "supportedRegions": ["eLoog4me", "2NBFp62x", "lXvVcJer"], "title": "TPW02PWs"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'HiKYArAx' --login_with_auth "Bearer foo"
platform-update-store 'nKBfBfDl' --body '{"defaultLanguage": "rQQuAc10", "defaultRegion": "DjjwMv4v", "description": "rIPRtvhQ", "supportedLanguages": ["IyLarjaL", "OKnX51yA", "B8Pa3uNG"], "supportedRegions": ["KhaLlJzJ", "MSnJIIgs", "AVmaGYxU"], "title": "X1B9oVuz"}' --login_with_auth "Bearer foo"
platform-delete-store 'G2CnYX2Y' --login_with_auth "Bearer foo"
platform-query-changes 'BF2g7TVt' --login_with_auth "Bearer foo"
platform-publish-all 'zYEHUodh' --login_with_auth "Bearer foo"
platform-publish-selected '3iUfBthb' --login_with_auth "Bearer foo"
platform-select-all-records 'epUCTWiZ' --login_with_auth "Bearer foo"
platform-get-statistic '1uqh7GAi' --login_with_auth "Bearer foo"
platform-unselect-all-records '4FEIu44u' --login_with_auth "Bearer foo"
platform-select-record '83ZLRxYl' 'Yqlpq03B' --login_with_auth "Bearer foo"
platform-unselect-record 'GdIk4oEo' 'gFVGR71r' --login_with_auth "Bearer foo"
platform-clone-store 'JOBy6lsj' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '1AKGBjnH' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'maAu4YK8' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '7DYAWWcb' --body '{"orderNo": "cbGWmKgE"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '8CZ4AELr' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '5lraa5v5' --body '{"count": 85, "orderNo": "ultJe32A"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'iwKadEoI' --body '{"achievements": [{"id": "VmprwPsa", "value": 67}, {"id": "YD92CX0r", "value": 70}, {"id": "ldL6rOVG", "value": 4}], "steamUserId": "GeHTnqRb"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'zBB9ZFgJ' 'bQ3Fj1um' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'x4ItzkMJ' --body '{"achievements": [{"id": "7cudf4r9", "value": 1}, {"id": "6GPrhn2e", "value": 39}, {"id": "JPS3lJ80", "value": 53}], "serviceConfigId": "J41U4ooQ", "titleId": "980ywmg1", "xboxUserId": "pWpWit1Q"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'C7FKe0fn' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'HUlmU1un' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'GKM0tgfe' --login_with_auth "Bearer foo"
platform-anonymize-integration 'Wy47bbwM' --login_with_auth "Bearer foo"
platform-anonymize-order 'I4gGmvK9' --login_with_auth "Bearer foo"
platform-anonymize-payment 'gW596FwB' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'NrFXt3TA' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'uKBwBcD1' --login_with_auth "Bearer foo"
platform-anonymize-wallet '2ae6r3hH' --login_with_auth "Bearer foo"
platform-get-user-dlc 'wya4NpdO' 'XBOX' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'VKHA9Dka' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'SOWgtg8y' --body '[{"endDate": "1982-11-20T00:00:00Z", "grantedCode": "8lHEbVDw", "itemId": "BAqanOls", "itemNamespace": "cRIWw82k", "language": "ltx", "quantity": 82, "region": "dubkOFld", "source": "PURCHASE", "startDate": "1985-12-17T00:00:00Z", "storeId": "Q98JH4n0"}, {"endDate": "1989-06-03T00:00:00Z", "grantedCode": "B4fZWEFI", "itemId": "Zs28Ff1k", "itemNamespace": "Zp1Zktx3", "language": "MIyc", "quantity": 70, "region": "rbWEm8bV", "source": "PURCHASE", "startDate": "1978-04-24T00:00:00Z", "storeId": "cfVCPdQh"}, {"endDate": "1975-04-12T00:00:00Z", "grantedCode": "XJvtggDd", "itemId": "XjbdjMBa", "itemNamespace": "hFZZGMTc", "language": "HOy_410", "quantity": 44, "region": "FBUsnnDJ", "source": "OTHER", "startDate": "1988-04-13T00:00:00Z", "storeId": "1sdH2RIJ"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'z1eI7Q5p' 'u9PutLf6' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'IrvZoBGQ' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '7sYLDWAJ' 'OA75K4BY' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'J2fkqYJo' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'F2FI3vyy' 'qRzc20O7' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'FdsJP1G9' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'tyBTfERX' '["dvgD1Qf7", "Ot2DkUt3", "yexZBRvx"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'YnEBhXtA' 'VxCd3meT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'rT7cF9oV' 'Ch89wNOk' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'KYssVejc' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'L3kR3hCG' 'NgaJmuAL' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'lMQl9RLr' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'thbfp0Vg' 'weLlT2sY' --login_with_auth "Bearer foo"
platform-get-user-entitlement '3SsTnDQY' '7kKU2u06' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'Q4veujxt' 'yQENvJrB' --body '{"endDate": "1985-05-15T00:00:00Z", "nullFieldList": ["PK8IxrSZ", "uxWl0Je4", "fJIyFAm3"], "startDate": "1986-12-14T00:00:00Z", "status": "CONSUMED", "useCount": 15}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'R0AbkCPY' '70FmvviV' --body '{"options": ["IBbcujF8", "Vk5qb8Nh", "WWwaxyMc"], "requestId": "hkt8l5IP", "useCount": 91}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'XTUh2dJ9' '0yqHDNac' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'l4F9G6Dl' '5TFwBY6H' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'KXAblkT8' 'VGgSH8MG' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'ZGwiVj7e' 'DTaka9AB' --login_with_auth "Bearer foo"
platform-revoke-use-count 'fX1IByPE' 'OuPhGspR' --body '{"reason": "i3bhPQvB", "useCount": 56}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'XM6IHy7E' 'EvHyLmcv' --body '{"requestId": "rZZOdwe1", "useCount": 47}' --login_with_auth "Bearer foo"
platform-fulfill-item 'eJOD4DMt' --body '{"duration": 33, "endDate": "1989-02-07T00:00:00Z", "itemId": "XE52sUBB", "itemSku": "q2SimQQo", "language": "Lbe5YOJv", "order": {"currency": {"currencyCode": "xGRxUzrT", "currencySymbol": "wagH7BMT", "currencyType": "VIRTUAL", "decimals": 71, "namespace": "Wze94MEd"}, "ext": {"JFAy2JTl": {}, "lJkRGB8j": {}, "qJEd6eqq": {}}, "free": true}, "orderNo": "SjDAM0Ri", "origin": "Playstation", "quantity": 88, "region": "8wLYW3n4", "source": "REFERRAL_BONUS", "startDate": "1975-08-27T00:00:00Z", "storeId": "LD1EDwBX"}' --login_with_auth "Bearer foo"
platform-redeem-code 'w5uBYeQZ' --body '{"code": "OzATNSV9", "language": "CZC-tYZH", "region": "TNIUzxDg"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'BlIbuzm7' --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "htrsf8eI", "namespace": "FSovTGXa"}, "item": {"itemId": "Msq8ePN1", "itemSku": "oco2jx8U", "itemType": "pe8SjMvp"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "M8puggOE", "namespace": "dG47gD5i"}, "item": {"itemId": "2Ni6AnWn", "itemSku": "3NdEPhNH", "itemType": "SH7eKDfR"}, "quantity": 5, "type": "CURRENCY"}, {"currency": {"currencyCode": "OmubxEJr", "namespace": "2qEAuJbp"}, "item": {"itemId": "ZSrcbc4L", "itemSku": "WfKaY5c1", "itemType": "tP5TDuI5"}, "quantity": 12, "type": "ITEM"}], "source": "IAP"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'utRQt28b' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '6o3K0COF' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '74tz6aeX' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'ZOYwbwjM' --body '{"itemIdentityType": "ITEM_ID", "language": "nX_GbCF", "productId": "nRyFS0Ed", "region": "7gTM5AVr", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'RJnj8xN7' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'HDPTUEDP' --body '{"currencyCode": "N1Kb4UTP", "currencyNamespace": "WDXTSb55", "discountedPrice": 14, "ext": {"v12FNXyp": {}, "oOLl13j8": {}, "4P0KqirJ": {}}, "itemId": "4PkMFtsn", "language": "Ffz8Ew0X", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 57, "quantity": 14, "region": "uBSKLSQ4", "returnUrl": "GvLtz50D", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'mNHb6Lx8' 'eq8SGNwE' --login_with_auth "Bearer foo"
platform-get-user-order 'QO8dYXvB' 'SYvJBwb6' --login_with_auth "Bearer foo"
platform-update-user-order-status 'CjZUMRf2' 'VJetWsok' --body '{"status": "FULFILLED", "statusReason": "9gvagF2c"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'SuztsJ5t' 'j64gV7nm' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'Dk29mcjS' 'uz9vbNSt' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'qPtQmQN6' 'eKAGiZFC' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'ftT0RWEC' 'djWYrnul' --body '{"additionalData": {"cardSummary": "xcCKAru8"}, "authorisedTime": "1978-06-23T00:00:00Z", "chargebackReversedTime": "1992-03-21T00:00:00Z", "chargebackTime": "1971-01-04T00:00:00Z", "chargedTime": "1984-09-05T00:00:00Z", "createdTime": "1995-10-09T00:00:00Z", "currency": {"currencyCode": "LDB4k3Jw", "currencySymbol": "kdaxR7GJ", "currencyType": "REAL", "decimals": 51, "namespace": "YmuYCPG1"}, "customParameters": {"81q9GA5D": {}, "ydC2D8UT": {}, "6KOc4VPD": {}}, "extOrderNo": "UR9ayazq", "extTxId": "XRqegIUi", "extUserId": "cYXXzxsB", "issuedAt": "1987-10-01T00:00:00Z", "metadata": {"rUs9BYp6": "TgCejBd5", "o7iTST7R": "3KbbQGER", "MNpqWb51": "y5RUzvMf"}, "namespace": "TkPy0fGv", "nonceStr": "TGgfLKsg", "paymentMethod": "0b1Bq78c", "paymentMethodFee": 62, "paymentOrderNo": "XA4HZHNy", "paymentProvider": "STRIPE", "paymentProviderFee": 17, "paymentStationUrl": "9odanhR1", "price": 2, "refundedTime": "1979-10-02T00:00:00Z", "salesTax": 24, "sandbox": true, "sku": "thUvV87y", "status": "AUTHORISE_FAILED", "statusReason": "PHElug48", "subscriptionId": "TgfNu0rq", "subtotalPrice": 77, "targetNamespace": "UOyToLPI", "targetUserId": "REGIKlJt", "tax": 62, "totalPrice": 7, "totalTax": 86, "txEndTime": "1990-09-12T00:00:00Z", "type": "kKwkENQ8", "userId": "VOHGwbAD", "vat": 79}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '8Gwjg3IO' 'H0SDHgYK' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'qxJiFJdr' --body '{"currencyCode": "mj5vhzgs", "currencyNamespace": "Jwex7wq8", "customParameters": {"ZPlXNaUN": {}, "gdY2vfJu": {}, "je5cPnmG": {}}, "description": "jTvYa5Pq", "extOrderNo": "x1K7qcAo", "extUserId": "ijBPAp6E", "itemType": "SUBSCRIPTION", "language": "BJp-759", "metadata": {"s2yxf6ML": "ZJ2jZfZb", "pTJezzri": "CDWXT59S", "Ru0YqUxK": "Dc84OMIz"}, "notifyUrl": "vTScdbKB", "omitNotification": true, "platform": "xnUNcwjr", "price": 81, "recurringPaymentOrderNo": "gSGhnfuF", "region": "4WZiQVIC", "returnUrl": "VpWd3UM0", "sandbox": false, "sku": "gMXhdf3j", "subscriptionId": "uXW4JprI", "title": "b3CJCAtv"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'SG8Cfa9d' 'zOJDGCTH' --body '{"description": "IOFjeXbs"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'SgR43kID' --body '{"code": "zxBwqRJT", "orderNo": "zrHNZWUs"}' --login_with_auth "Bearer foo"
platform-do-revocation 'q5lQo2jy' --body '{"meta": {"29EJigqY": {}, "hyVhURx1": {}, "yPeczRpd": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "uoZcXQpo", "namespace": "TOxe8y1j"}, "entitlement": {"entitlementId": "orNsg9ZK"}, "item": {"itemIdentity": "YCKoISyX", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 69, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "7DQIi45a", "namespace": "CDHN9mVu"}, "entitlement": {"entitlementId": "g2zkVf6K"}, "item": {"itemIdentity": "gpKOcn3t", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 2, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "T67bOwug", "namespace": "FDa6wUQv"}, "entitlement": {"entitlementId": "ehKqwCh8"}, "item": {"itemIdentity": "6XmRkCEc", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 69, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "tbag82Kg"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'BgyCd5vj' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'kfz3eR4D' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'tNp129hz' --body '{"grantDays": 55, "itemId": "9fxtvsge", "language": "Axo57nKA", "reason": "bZpsbJ4I", "region": "u5KJ0ynx", "source": "GBlacDCd"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'Fe8ATUqV' 'xcSthrpn' --login_with_auth "Bearer foo"
platform-get-user-subscription 'MUBsnUfu' 'QIcSbUt5' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'UGkInFGp' 'uUsdtq4d' --login_with_auth "Bearer foo"
platform-cancel-subscription 'OwNESzCE' 'W9dUVhZj' --body '{"immediate": false, "reason": "ftC3sCS8"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'CpLCqPD9' 'CeDEdCnn' --body '{"grantDays": 78, "reason": "0Fi02aFr"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '8CDapjwN' 'Ol4k8rVN' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'rm8drv8Q' 'D2JOe2Nt' --body '{"additionalData": {"cardSummary": "z7EFvowP"}, "authorisedTime": "1974-10-09T00:00:00Z", "chargebackReversedTime": "1978-09-24T00:00:00Z", "chargebackTime": "1974-06-21T00:00:00Z", "chargedTime": "1971-02-04T00:00:00Z", "createdTime": "1972-06-09T00:00:00Z", "currency": {"currencyCode": "yGDt47f9", "currencySymbol": "GWRlE9hq", "currencyType": "VIRTUAL", "decimals": 81, "namespace": "6rjDNo4r"}, "customParameters": {"hjxUdMM8": {}, "3WekqfWv": {}, "04vvn9bk": {}}, "extOrderNo": "5qr8qs2m", "extTxId": "qtnGAqXU", "extUserId": "jNypF6MM", "issuedAt": "1979-10-19T00:00:00Z", "metadata": {"WpdEJsPo": "aIbYz8cK", "5jlpJdre": "5ur6yvWJ", "DdvM7T7P": "X2vamIRZ"}, "namespace": "HzsIYOCU", "nonceStr": "oiCXNjrd", "paymentMethod": "QL2jdx1e", "paymentMethodFee": 70, "paymentOrderNo": "vl1kCY5b", "paymentProvider": "XSOLLA", "paymentProviderFee": 74, "paymentStationUrl": "okxXxkWZ", "price": 3, "refundedTime": "1996-03-13T00:00:00Z", "salesTax": 39, "sandbox": false, "sku": "4OVUyumB", "status": "AUTHORISE_FAILED", "statusReason": "Qmjo69wo", "subscriptionId": "hJFyTNk5", "subtotalPrice": 65, "targetNamespace": "sQRj7N8I", "targetUserId": "Ajmsonjj", "tax": 90, "totalPrice": 96, "totalTax": 57, "txEndTime": "1974-12-21T00:00:00Z", "type": "5m4axDV5", "userId": "uTcYsoah", "vat": 96}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'zgZVl4gI' 'F7v3qbZu' --body '{"count": 54, "orderNo": "M3OxqVAT"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets '4H1lRZ9Z' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '1JBrHRzE' 'OtIxzPqb' --body '{"allowOverdraft": true, "amount": 27, "balanceOrigin": "IOS", "reason": "3m0jiaDH"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '86d9rsKg' 'zCsMulpB' --login_with_auth "Bearer foo"
platform-credit-user-wallet '8HZUtVVa' 'JCiLgKOw' --body '{"amount": 37, "expireAt": "1986-01-28T00:00:00Z", "origin": "GooglePlay", "reason": "mW8saabP", "source": "DLC"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'xRowfNoj' 'zPXI2v0p' --body '{"amount": 35, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '3OEey0Mk' --body '{"displayOrder": 45, "localizations": {"u9FHuv1M": {"description": "3qfch4Sq", "localExt": {"IV6LQPHl": {}, "aeYl4csF": {}, "q65cU66y": {}}, "longDescription": "Jaj4ovoK", "title": "WE4EW0sw"}, "8v5peiux": {"description": "oBJATauy", "localExt": {"D3XCXVMi": {}, "yEvMf9yi": {}, "lUEujk6o": {}}, "longDescription": "qYo1HQYT", "title": "FzwdOMdu"}, "pwD4O3uN": {"description": "bcIDcIyv", "localExt": {"ZbOy1T4h": {}, "fwkuVykH": {}, "4RpfmjIX": {}}, "longDescription": "FGZ5PKdb", "title": "abJIkNnt"}}, "name": "9P1Tkm08"}' --login_with_auth "Bearer foo"
platform-get-view 'luh4dpPR' --login_with_auth "Bearer foo"
platform-update-view 'MDbUXBWT' 'bpAogG2w' --body '{"displayOrder": 22, "localizations": {"nBurh54C": {"description": "WbYb0Peb", "localExt": {"yt8b4DGs": {}, "cjwrizsF": {}, "UgYwbaLv": {}}, "longDescription": "qvQ2NbmD", "title": "ITuymTBj"}, "n3d2sFzM": {"description": "S3QaVjZF", "localExt": {"7Ax6115K": {}, "g9U8vrQJ": {}, "XQxoIbVi": {}}, "longDescription": "2CLEk277", "title": "Ivjj1A64"}, "7XQ3koaA": {"description": "fZIim0sF", "localExt": {"Pm1YN27b": {}, "ojDVaZLp": {}, "x4kEWYkO": {}}, "longDescription": "6KrKUMhJ", "title": "rASBh61h"}}, "name": "mWKSSrF3"}' --login_with_auth "Bearer foo"
platform-delete-view '5anDGvur' '19V18oIr' --login_with_auth "Bearer foo"
platform-sync-orders 'UKXttgAI' '2QdWJFLm' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["oPEgd8EM", "spOs8nki", "c9gj5vyU"], "apiKey": "MAAmIHYb", "authoriseAsCapture": true, "blockedPaymentMethods": ["ufPSX3Pd", "OU2V9yw9", "4oa8UJ34"], "clientKey": "TIedV3Hy", "dropInSettings": "oX4VnO2L", "liveEndpointUrlPrefix": "pBU08wfn", "merchantAccount": "lHBXFIqF", "notificationHmacKey": "UmgUSMM5", "notificationPassword": "au8GJT0m", "notificationUsername": "kVPI6zUt", "returnUrl": "f3QaJPGr", "settings": "TNcXXTUI"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "ggoH89QN", "privateKey": "mI17UDb1", "publicKey": "9R6H7r1t", "returnUrl": "a3m7jK5p"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "xe82pgFi", "secretKey": "AS6piIzm"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "c8rKrKEP", "clientSecret": "GSAcong6", "returnUrl": "eNERUf8k", "webHookId": "jci1Ctcc"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["v9Gv4tOc", "bnuCqf0l", "m6WBkIzj"], "publishableKey": "oSV31tvm", "secretKey": "MB6jzrpR", "webhookSecret": "GESmooHi"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "CV4GUOnX", "key": "papXQGRa", "mchid": "kUbcG7Pc", "returnUrl": "R4eiU3Id"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "i55jNrGN", "flowCompletionUrl": "T2VHTKuI", "merchantId": 94, "projectId": 64, "projectSecretKey": "yODR2NVy"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'n4PRqf3e' --login_with_auth "Bearer foo"
platform-update-adyen-config 'RbZqBAoK' --body '{"allowedPaymentMethods": ["GcVCdMiS", "NV4qBrt1", "kcLmRv6E"], "apiKey": "Jtl5xWns", "authoriseAsCapture": false, "blockedPaymentMethods": ["ZhckUTGk", "cBOE4qMc", "H1Kyi8ZF"], "clientKey": "vGcV8DY0", "dropInSettings": "XOkDstxZ", "liveEndpointUrlPrefix": "cY1HgAnZ", "merchantAccount": "V4IOglVL", "notificationHmacKey": "qb9lGAJU", "notificationPassword": "g21Lt7Jw", "notificationUsername": "gwMUSuC3", "returnUrl": "Bajy3BcE", "settings": "MCtQs2Fc"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'EcvVAyId' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '6Cp85HVD' --body '{"appId": "sZBQgOnX", "privateKey": "uXsGThYZ", "publicKey": "rmm0wrFM", "returnUrl": "nPpWgrQD"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '4hEk0OLj' --login_with_auth "Bearer foo"
platform-update-checkout-config 'YsnignE7' --body '{"publicKey": "KcMF7fuD", "secretKey": "bzRRYMNX"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'WUsp1tOi' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'bJY9aL9i' --body '{"clientID": "e6vvMbiN", "clientSecret": "URrlm88Q", "returnUrl": "lKyuoya4", "webHookId": "JgakZyUV"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id '7t73VnSF' --login_with_auth "Bearer foo"
platform-update-stripe-config 'buxd4KYZ' --body '{"allowedPaymentMethodTypes": ["0jk0UZdh", "tnKu9oTc", "8pVkiyGs"], "publishableKey": "j5JdXzRx", "secretKey": "fNEjUMTs", "webhookSecret": "8WIObJBT"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'svsw76uI' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'SRX0bKVo' --body '{"appId": "WtoUW1P7", "key": "ocuBAldD", "mchid": "SUS7Haa6", "returnUrl": "unq1yQOS"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'RvyiLBRV' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'tIDi2piI' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'QFVmzMid' --body '{"apiKey": "w70KSahp", "flowCompletionUrl": "YZdKZRyR", "merchantId": 13, "projectId": 55, "projectSecretKey": "1E2k7QLF"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'rVgtX7y0' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'fPOieDCo' --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "7YS0OkL7", "region": "8XeEAtAL", "sandboxTaxJarApiToken": "FI3v8yha", "specials": ["WXPAY", "STRIPE", "ADYEN"], "taxJarApiToken": "5v3SBafn", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'lKNb8Rxv' --body '{"aggregate": "XSOLLA", "namespace": "W3HJkqgS", "region": "2B37wwoP", "sandboxTaxJarApiToken": "YOHiIsxm", "specials": ["STRIPE", "STRIPE", "XSOLLA"], "taxJarApiToken": "vQaKyevW", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'ZjK6J29v' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "8MpBSpo3", "taxJarApiToken": "AKRmnJkz", "taxJarEnabled": false, "taxJarProductCodesMapping": {"HAckUyBk": "sYQfDm0R", "NFwiz70t": "RVLMlHi8", "i9gOVqaj": "UWrgEsWD"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'taKzn8dZ' 'wnnGeZsZ' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'VgbPzPFb' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'rOMZMgWk' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'FN7Tpkx6' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'GcfyOg6Z' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'Urrp9ubg' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '9mndW2JK' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["mQafUs2b", "xYztOEyV", "bKIf1Zbz"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'gUwd8DHo' 'CQykmXHY' --login_with_auth "Bearer foo"
platform-public-get-app 'mkRlg7gY' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 's6unPYQ9' --login_with_auth "Bearer foo"
platform-public-get-item 'jNQN1di1' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "ldhOh6Hv", "paymentProvider": "CHECKOUT", "returnUrl": "StVBUpKg", "ui": "OssFkz0F", "zipCode": "36piDYXe"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'HZ7FHls3' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'nyvconqb' --login_with_auth "Bearer foo"
platform-pay 'HQqKLQKe' --body '{"token": "3xmj6s0G"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'qsWncp5L' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'u5wxq6oJ' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'q4mChmQH' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'QhO9IKBX' 'DFQfXFD5' 'XSOLLA' 'sG6uDhFY' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'lrzJBYSe' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code '3ZgVZCj9' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'ObVGT0Sc' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'wl4kNmCi' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '15XTJTgC' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'NNH7RtG5' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "Xmo9Q0Wb", "language": "pwN_KYpa", "region": "E89WDNoM"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'cOmbfJrC' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'JQIj1haA' --body '{"epicGamesJwtToken": "osKglqaC"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'XE9ytpIO' --body '{"serviceLabel": 3}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '8HoSpGt1' --body '{"serviceLabels": [99, 91, 13]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'GGbT4Hf2' --body '{"appId": "PPKOldkb", "steamId": "gX9CWJKw"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'XXSbv5eg' --body '{"xstsToken": "9q86IaDF"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'jjx6uZer' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'WbtwTX9g' 'NRByjbE8' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'lOLAfTXK' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Cv8q4Thm' 'q09bBgPA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'YxrBE9jl' 'nTgtgW33' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'wDwD9RKv' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'QX4yFQFd' 'rRoM6Foq' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'CYw7AlxO' '6qdFpc71' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'sSck3ggZ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'WJlSlCQM' 'Dji329Pf' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'VrvMEPtp' 'sSNcpK1Q' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'kB2Sy8Ww' '79LVeVsk' --body '{"options": ["qeUB7RSa", "yqGFguhh", "3bvadRth"], "requestId": "dbVApebR", "useCount": 54}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '0zCqoMZv' 'pIOO97Dm' --body '{"requestId": "Q5ZOzx6i", "useCount": 58}' --login_with_auth "Bearer foo"
platform-public-redeem-code '3AyGrZO8' --body '{"code": "GuoXNSoV", "language": "ScJ_BlcP_aZ", "region": "9C05YabF"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'X4FCK5uc' --body '{"excludeOldTransactions": true, "language": "SgQ-Mpjn_639", "productId": "RQvRUbUD", "receiptData": "SiefGEdL", "region": "ucrtO2gC", "transactionId": "QD057DrD"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'lgC2nzS9' --body '{"epicGamesJwtToken": "SiGUjVAw"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '4v3q6JRH' --body '{"autoAck": false, "language": "Mn", "orderId": "oCEkRdo6", "packageName": "qHYIZWnX", "productId": "qQ1oHFJ9", "purchaseTime": 88, "purchaseToken": "SsXegSEh", "region": "rPpK2q8k"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'xR4BuEks' --body '{"currencyCode": "S2A9VOA8", "price": 0.534521994440492, "productId": "9VeHv0L2", "serviceLabel": 55}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'FjsodyJQ' --body '{"currencyCode": "VVBrShGb", "price": 0.5540283865700034, "productId": "IuqK8C40", "serviceLabels": [34, 70, 23]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'goXCR6XO' --body '{"appId": "MXwKdfqk", "currencyCode": "8T4QHK30", "language": "nyG_LtQQ_460", "price": 0.28329440985521603, "productId": "ROIodcmM", "region": "6v2AEozW", "steamId": "WaYvBLE4"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '6bpuJip8' --body '{"gameId": "JyxJ39vr", "language": "lVN-040", "region": "BSKp8Amg"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'whYzk33J' --body '{"currencyCode": "34fiTxK6", "price": 0.8935070922448198, "productId": "OHpnUCGB", "xstsToken": "VfpctNFU"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'sUQ6ZXQc' --login_with_auth "Bearer foo"
platform-public-create-user-order 'b2o1J5eu' --body '{"currencyCode": "LAbBgejq", "discountedPrice": 5, "ext": {"g8Jg5VBy": {}, "eI3ycMcY": {}, "YBixKJXC": {}}, "itemId": "ISQdwec1", "language": "lT-TMxF_wm", "price": 97, "quantity": 22, "region": "o6Xqjz2x", "returnUrl": "UKLNWSmY"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'yVvyelIJ' '8QgaLMqi' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '836ULa7c' 'fZl4VuY6' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'rsZyo6CB' 'RRnoOikI' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'xXKKIR6k' 'Pmswm5TC' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'AU1cKApd' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'JDnE73GL' 'card' 'clrk4hIR' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'n0znIKzA' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'EAHQpBOg' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'HEP5l94s' --body '{"currencyCode": "7CbIJ7eH", "itemId": "nVWOboMk", "language": "KcA_vSAp", "region": "Z0b2p3b6", "returnUrl": "3KrcwIcX", "source": "MhGy83Xi"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 't6boOLGC' 'cg16Dqwd' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'QPQ9HkSS' 'V8e1MgTT' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'LS2FgarY' '903INGIy' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'EfRBEj7q' 'ms9AGQEx' --body '{"immediate": false, "reason": "hgr9gGfC"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '0GjvpgJf' 'uBs1Vpqn' --login_with_auth "Bearer foo"
platform-public-list-views '47GVghTH' --login_with_auth "Bearer foo"
platform-public-get-wallet '2wToOnq9' 'U5lyW89X' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'wt3wmRTr' 'DCjhnKvs' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'HezWTqgY' --body '{"itemIds": ["PixtHk6l", "Wq6tEeUm", "U96FLEak"]}' --login_with_auth "Bearer foo"
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
echo "1..390"

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
    --body '{"context": {"item": {"appId": "0mJqjRYl", "appType": "DEMO", "baseAppId": "jv4Mwrv2", "boothName": "vancmR6Z", "boundItemIds": ["7rb21A2E", "9pX0BWCM", "qPsRk5ht"], "categoryPath": "dM5T3fDS", "clazz": "rSHrkoqv", "createdAt": "1999-04-07T00:00:00Z", "description": "ztrr09CD", "displayOrder": 54, "entitlementType": "DURABLE", "ext": {"Ij5bGKSu": {}, "opWQbaCv": {}, "dPSq8Z27": {}}, "features": ["GpvHCDx5", "jpFzlPsp", "5JZ5z6gu"], "fresh": false, "images": [{"as": "D9IRIpDD", "caption": "ubntPCFx", "height": 10, "imageUrl": "f6E8EajX", "smallImageUrl": "LSAS8MKM", "width": 1}, {"as": "UqWHBW78", "caption": "XREZCiTN", "height": 55, "imageUrl": "G9NCKKXu", "smallImageUrl": "1bqI2M5P", "width": 25}, {"as": "gM16sZ6r", "caption": "jnkH4ExO", "height": 3, "imageUrl": "bmoRvWnf", "smallImageUrl": "mGFy0eUo", "width": 84}], "itemId": "DEOF6gp5", "itemIds": ["UfmjtiVb", "qJnZcrqr", "Pye7fCwi"], "itemQty": {"7Il2wIFl": 68, "5RpMwhWP": 40, "MtJy1Oqn": 30}, "itemType": "SUBSCRIPTION", "language": "tEGm9NYe", "listable": false, "localExt": {"T5P0nx8T": {}, "qSZdZ5C8": {}, "mFI9Tnvz": {}}, "longDescription": "EqBNMF9C", "lootBoxConfig": {"rewardCount": 71, "rewards": [{"lootBoxItems": [{"count": 43, "itemId": "6Vtd4v9k", "itemSku": "4fv3kMiu", "itemType": "Q3DhsKLx"}, {"count": 19, "itemId": "Frepy56e", "itemSku": "W1kmb15Q", "itemType": "eIQF51c4"}, {"count": 78, "itemId": "3z6joBAh", "itemSku": "AlJGI2YY", "itemType": "b6ajBjgq"}], "name": "6eY4PBNH", "odds": 0.5901979772533533, "type": "REWARD_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 48, "itemId": "xyHYutgX", "itemSku": "ucx85vHA", "itemType": "009FAb21"}, {"count": 20, "itemId": "uLXWilRD", "itemSku": "7HD6LCgd", "itemType": "FxRGj00R"}, {"count": 94, "itemId": "oCETQ8gI", "itemSku": "DRdD2wwM", "itemType": "XwKVXGPh"}], "name": "EJsc7rZp", "odds": 0.379851800911306, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 85, "itemId": "X6gmDfNf", "itemSku": "PGYYSTun", "itemType": "Mgt3C8hE"}, {"count": 12, "itemId": "ssw647Yw", "itemSku": "DudnGRuf", "itemType": "OUGfMjTU"}, {"count": 24, "itemId": "l07jPlcY", "itemSku": "aqYM7YfB", "itemType": "mhjI9Y28"}], "name": "qVceS9UX", "odds": 0.9111213836533965, "type": "PROBABILITY_GROUP", "weight": 6}], "rollFunction": "DEFAULT"}, "maxCount": 75, "maxCountPerUser": 85, "name": "R7OqPqIj", "namespace": "S4i0N9yt", "optionBoxConfig": {"boxItems": [{"count": 2, "itemId": "TGh4UdEw", "itemSku": "eeBsJEvB", "itemType": "bAvCmlh6"}, {"count": 72, "itemId": "1oz9Baix", "itemSku": "UUvmzbaj", "itemType": "E2gjooiD"}, {"count": 27, "itemId": "80S5RNB5", "itemSku": "dVCsB7xL", "itemType": "4axSPgPC"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 47, "comparison": "isLessThanOrEqual", "name": "cBP0918J", "predicateType": "EntitlementPredicate", "value": "Vtt3RVTl", "values": ["cHdGGK3x", "76U1EIck", "0tR00oQg"]}, {"anyOf": 23, "comparison": "isGreaterThanOrEqual", "name": "RnP1oK3c", "predicateType": "SeasonPassPredicate", "value": "RVfjB0zi", "values": ["24ol1qqb", "3XrYZUiN", "algizL97"]}, {"anyOf": 49, "comparison": "excludes", "name": "uCAIfNBS", "predicateType": "SeasonTierPredicate", "value": "yQzl7X9f", "values": ["Hr6WvBxm", "Df9B22HG", "BvNj3kta"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "ujxbCu1H", "predicateType": "SeasonTierPredicate", "value": "aZUTmvsE", "values": ["qjwzWpCF", "fmBerp84", "zLPnnGsn"]}, {"anyOf": 44, "comparison": "isNot", "name": "yamjsEzw", "predicateType": "SeasonPassPredicate", "value": "DELJFaIa", "values": ["sCCbnfih", "L72WDyhB", "EMW5bhJy"]}, {"anyOf": 27, "comparison": "isGreaterThanOrEqual", "name": "XKxGxaup", "predicateType": "EntitlementPredicate", "value": "Ty9JrNz1", "values": ["K5M1qgFd", "dYvifGHa", "wNx6yhni"]}]}, {"operator": "or", "predicates": [{"anyOf": 68, "comparison": "excludes", "name": "KkLwioRa", "predicateType": "SeasonTierPredicate", "value": "rKXDIjYC", "values": ["lxUyrs3O", "4df9qswS", "lpCI8Dhj"]}, {"anyOf": 91, "comparison": "isNot", "name": "esE5p0Dw", "predicateType": "EntitlementPredicate", "value": "j2HKUvPY", "values": ["OOsn2Nd8", "UcQBxMSd", "Jpa19GJD"]}, {"anyOf": 74, "comparison": "excludes", "name": "46Eehx7x", "predicateType": "EntitlementPredicate", "value": "nA2SrEdN", "values": ["2tmGuX6r", "KlPKtE6g", "0gBVUUeK"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 75, "fixedTrialCycles": 48, "graceDays": 61}, "region": "mkmCWbs5", "regionData": [{"currencyCode": "qugklBUS", "currencyNamespace": "6uwWrCQt", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1992-02-18T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1984-06-05T00:00:00Z", "discountedPrice": 92, "expireAt": "1990-02-25T00:00:00Z", "price": 54, "purchaseAt": "1988-10-14T00:00:00Z", "trialPrice": 15}, {"currencyCode": "WpcyNkUv", "currencyNamespace": "qn6eXr6F", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1996-10-17T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1980-12-01T00:00:00Z", "discountedPrice": 39, "expireAt": "1980-02-27T00:00:00Z", "price": 51, "purchaseAt": "1997-12-27T00:00:00Z", "trialPrice": 80}, {"currencyCode": "LSSUlugI", "currencyNamespace": "AknXcSaV", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1984-10-05T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1979-05-16T00:00:00Z", "discountedPrice": 76, "expireAt": "1993-03-06T00:00:00Z", "price": 73, "purchaseAt": "1986-05-26T00:00:00Z", "trialPrice": 43}], "saleConfig": {"currencyCode": "K6Or2xx7", "price": 36}, "seasonType": "TIER", "sellable": true, "sku": "rPoWiywn", "stackable": true, "status": "ACTIVE", "tags": ["xoloIH1g", "BCWVFrvl", "uDLLuIaS"], "targetCurrencyCode": "s0ZwosKh", "targetItemId": "DlLfTKxp", "targetNamespace": "VOXvGSrd", "thumbnailUrl": "kqddI3ez", "title": "qu6FB0sL", "updatedAt": "1999-06-04T00:00:00Z", "useCount": 47}, "namespace": "JdoGcwMB", "order": {"currency": {"currencyCode": "megqVUaW", "currencySymbol": "MJBjrV0p", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "7tcHrV0M"}, "ext": {"bJGr4drg": {}, "kDuWS05m": {}, "0pGzazM2": {}}, "free": true}, "source": "REWARD"}, "script": "UXnzUEWT", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'Cc4M2O7N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'rTQO7KLd' \
    --body '{"grantDays": "ZDGwqx7T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '3l1ut2oy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'olliYsTJ' \
    --body '{"grantDays": "UmpscwLc"}' \
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
    --body '{"clazz": "Uml3KuoM", "dryRun": true, "fulfillmentUrl": "h7tprnac", "itemType": "LOOTBOX", "purchaseConditionUrl": "IbJMJ9AB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'APP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'LgKR4LjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'WhOScvtQ' \
    --body '{"clazz": "92iD02YM", "dryRun": true, "fulfillmentUrl": "iPPjpSAl", "purchaseConditionUrl": "ZwFGpea5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'ObBB49Km' \
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
    --body '{"description": "4ClIQmkI", "items": [{"extraSubscriptionDays": 6, "itemId": "TfaSot7a", "itemName": "ohFYy4Vx", "quantity": 45}, {"extraSubscriptionDays": 58, "itemId": "HIJ9gzxq", "itemName": "Aw4vBGQA", "quantity": 8}, {"extraSubscriptionDays": 8, "itemId": "h0VTiTP4", "itemName": "PSrXUS6j", "quantity": 35}], "maxRedeemCountPerCampaignPerUser": 72, "maxRedeemCountPerCode": 21, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 22, "name": "ycqclNlB", "redeemEnd": "1991-12-21T00:00:00Z", "redeemStart": "1979-04-03T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["zpFd6b5J", "c5TETHcu", "p8GG0VCM"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'FJ6svTyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '9RHget5h' \
    --body '{"description": "zB52BDFo", "items": [{"extraSubscriptionDays": 32, "itemId": "9n769zLJ", "itemName": "dKMexeJc", "quantity": 39}, {"extraSubscriptionDays": 82, "itemId": "qE3kuybw", "itemName": "TQFYEJjI", "quantity": 46}, {"extraSubscriptionDays": 5, "itemId": "qfSRy8Gg", "itemName": "Vk77fd1G", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 22, "maxRedeemCountPerCode": 98, "maxRedeemCountPerCodePerUser": 21, "maxSaleCount": 23, "name": "yhAiAItn", "redeemEnd": "1995-08-03T00:00:00Z", "redeemStart": "1994-09-16T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["D225fp1e", "gsx3Erhe", "Nwqd5pri"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'clNNqLyr' \
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
    'lzrJ4QHb' \
    --body '{"categoryPath": "fnAdtkuj", "localizationDisplayNames": {"xHff7n1y": "aNCcjgFh", "S0URBhl0": "L5FCbOn4", "6W2B2uPQ": "Lrt2t6bV"}}' \
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
    'pCgKvPXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'DufmKh78' \
    '3cV54JsV' \
    --body '{"localizationDisplayNames": {"BRB0rY0x": "fWddACyH", "Smo4KX9T": "PO3K1k5Z", "M8btmGsg": "XNXbpqxh"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '76Af5JSw' \
    'jw2fE2g6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'jXV7oai2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'oDm9FaP0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'HJ98tE4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'yoQg0b0s' \
    --body '{"quantity": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    't9ztprSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'W9OutADr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'NGBWSJ1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'QKxVmRTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'wjiZPMoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'ZcyGEHxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'KDQher3u' \
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
    --body '{"grpcServerAddress": "sApPdJPn"}' \
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
    --body '{"currencyCode": "9eIdhIBv", "currencySymbol": "TTupABJ4", "currencyType": "VIRTUAL", "decimals": 69, "localizationDescriptions": {"28GS54vl": "7gIKBc7O", "YTylFRAJ": "KySnC0cf", "Pl3Z2zSB": "bs4PAV72"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'u8AxE2IQ' \
    --body '{"localizationDescriptions": {"eoxYV4Uc": "YzswAGpX", "qQxctuVa": "qPJGAHEZ", "muQrZ8Ga": "Q4OZ2nDo"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'dm4TNs8m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Aj6IKSYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'dJwgZsRP' \
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
    --body '{"data": [{"id": "OzwuDSdG", "rewards": [{"currency": {"currencyCode": "l1A2vaNe", "namespace": "DiSqTfmA"}, "item": {"itemId": "Vg50kOdJ", "itemSku": "agEmTuax", "itemType": "lxgywkbd"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "1DBdoKH6", "namespace": "sREmmfwU"}, "item": {"itemId": "ZLZZS7sn", "itemSku": "x0Q2Gd8m", "itemType": "7Y3wiNlo"}, "quantity": 73, "type": "CURRENCY"}, {"currency": {"currencyCode": "33yjPxib", "namespace": "DjfF7Jkj"}, "item": {"itemId": "CVpZKMxk", "itemSku": "FkBtXMU6", "itemType": "KRIm5xBo"}, "quantity": 71, "type": "ITEM"}]}, {"id": "i99ctgFX", "rewards": [{"currency": {"currencyCode": "asxp5h78", "namespace": "0ktjQw2y"}, "item": {"itemId": "XzaQWaF2", "itemSku": "PqUfbpMp", "itemType": "Rl6xRyV1"}, "quantity": 74, "type": "CURRENCY"}, {"currency": {"currencyCode": "m75VIuCO", "namespace": "Ckt2W1Df"}, "item": {"itemId": "I8QtgODk", "itemSku": "9K6DcMny", "itemType": "CPn1FylW"}, "quantity": 7, "type": "CURRENCY"}, {"currency": {"currencyCode": "dZyyWbUQ", "namespace": "pbcv3Iwm"}, "item": {"itemId": "L7a1K3zI", "itemSku": "UYJmdF1Y", "itemType": "tWNSQlcM"}, "quantity": 53, "type": "CURRENCY"}]}, {"id": "xfppNCrs", "rewards": [{"currency": {"currencyCode": "cDPbklTH", "namespace": "cmgXsrVj"}, "item": {"itemId": "3Mjml6Bp", "itemSku": "CODWGOLM", "itemType": "mCZUeelX"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "wVjc3W2A", "namespace": "NmE3VVsQ"}, "item": {"itemId": "1fm9EUdi", "itemSku": "aRjuLsKZ", "itemType": "oqnpKwhp"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "ByQAMAgq", "namespace": "FEzEt8um"}, "item": {"itemId": "j5XhKnw7", "itemSku": "MHDwFVKU", "itemType": "C2ecnpUD"}, "quantity": 33, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"QixPKVSm": "Wa8TGko1", "6XTqHc0c": "M7ixq8Tj", "nxp5Cl8g": "gaEmCcuK"}}, {"platform": "STEAM", "platformDlcIdMap": {"hHviBEWp": "busO6EyV", "qstpgZpb": "z77y88rU", "Fum2ZcA8": "iKcF0bkf"}}, {"platform": "PSN", "platformDlcIdMap": {"G6ZKQClG": "c1636nbf", "M3J9G40Y": "62bCo941", "ALznQuHV": "skfCjUK8"}}]}' \
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
    'GeX4Q0B2' \
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
    --body '{"bundleId": "Cj0oOmBm", "password": "Xu1KiTTi"}' \
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
    --body '{"sandboxId": "z7yrIvQj"}' \
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
    --body '{"applicationName": "2isN7bRw", "serviceAccountId": "cr16lW5Y"}' \
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
    --body '{"data": [{"itemIdentity": "wgZpjlMM", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nGptHUpl": "xzaDa9PD", "whu31d8e": "Odtrfq6E", "CDD6OGku": "Ls9gNpNo"}}, {"itemIdentity": "n6DKW9A6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"P6d3nuUZ": "41mSeS9S", "nGqhJOvy": "kBcDpzD9", "zh6dtPK4": "fVHLMvrC"}}, {"itemIdentity": "sH3RYxH2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"2a7fCFAU": "zLELiM57", "3TdtWjfV": "ciuLnLsB", "KGsALPuC": "OyphUUAV"}}]}' \
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
    --body '{"environment": "95708zaP"}' \
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
    --body '{"appId": "0wpZgQEv", "publisherAuthenticationKey": "Fzox9wHo"}' \
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
    --body '{"clientId": "cX3DRWob", "clientSecret": "EoGr8W97", "organizationId": "KBedcr6P"}' \
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
    --body '{"relyingPartyCert": "M51z7i0w"}' \
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
    'Q9egK2t4' \
    '6EG8I2lT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'viKbOgVu' \
    'N3nhkn6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'IesNoYqv' \
    --body '{"categoryPath": "VsakylHi", "targetItemId": "kKkpOjqw", "targetNamespace": "gKvfXXs8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'pDqm31AZ' \
    --body '{"appId": "SRkuw6q8", "appType": "DEMO", "baseAppId": "30Lv9iGa", "boothName": "5mkZjnRX", "categoryPath": "Vcg6AByN", "clazz": "pBo2JYkw", "displayOrder": 78, "entitlementType": "CONSUMABLE", "ext": {"dmR97u9M": {}, "VUii4KpY": {}, "cb1AUsES": {}}, "features": ["aBOTHnbX", "9tC9PQlF", "AGbMtEyb"], "images": [{"as": "fcAl0mns", "caption": "AkRT2k0A", "height": 51, "imageUrl": "6XoTNMuq", "smallImageUrl": "ZTHwo1IA", "width": 73}, {"as": "LM8Lfkut", "caption": "0wnT24wh", "height": 84, "imageUrl": "RGSbBMh7", "smallImageUrl": "jpszuVk6", "width": 16}, {"as": "fJBJkSOr", "caption": "F9Dg4FcD", "height": 47, "imageUrl": "CJieqRSG", "smallImageUrl": "N8Mm74Hl", "width": 92}], "itemIds": ["BRSknxyW", "kZObuvig", "8sMuss76"], "itemQty": {"ezTrsDZN": 76, "UV48Oh6I": 79, "7HvUtPYO": 82}, "itemType": "BUNDLE", "listable": false, "localizations": {"k75lkjQN": {"description": "HrjaboGo", "localExt": {"mguUqeuZ": {}, "h5qtrRbN": {}, "nGejdTGv": {}}, "longDescription": "ZgN5hshS", "title": "e5YmZXKE"}, "QLkM6o3e": {"description": "GSP4Htmr", "localExt": {"90TqGf0O": {}, "yqJ9ibJM": {}, "mRgoxNwp": {}}, "longDescription": "1lGkYoq8", "title": "HP1TM0te"}, "fVQPWX1N": {"description": "PO5Wn7rN", "localExt": {"G8rGp7Fa": {}, "dvo5EzpX": {}, "0IttsRez": {}}, "longDescription": "yY9GB5sf", "title": "94ALBmvd"}}, "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "cQkcZb8c", "itemSku": "WdVH9bww", "itemType": "15zZsaYr"}, {"count": 73, "itemId": "iBV8Dpbj", "itemSku": "Gts4UZDT", "itemType": "fhAyZKhq"}, {"count": 17, "itemId": "C7V8BEph", "itemSku": "nRXnSpCz", "itemType": "yb8FkoxQ"}], "name": "brPngi87", "odds": 0.5828861897858582, "type": "REWARD_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 46, "itemId": "QswqKLut", "itemSku": "INusOsa9", "itemType": "2F6iwkJI"}, {"count": 39, "itemId": "OLarmpWy", "itemSku": "vib9CDW2", "itemType": "1ANrlpuX"}, {"count": 60, "itemId": "C2LfL2m5", "itemSku": "rP2A20t6", "itemType": "foPPH94S"}], "name": "UinY5diU", "odds": 0.1821969116751102, "type": "REWARD", "weight": 13}, {"lootBoxItems": [{"count": 16, "itemId": "vY7dPPya", "itemSku": "hppgxJhk", "itemType": "4EdTZ000"}, {"count": 36, "itemId": "D7ZZx1ie", "itemSku": "fATWcDSq", "itemType": "GYRMdz07"}, {"count": 49, "itemId": "EQbCqfh0", "itemSku": "gpABFBER", "itemType": "6WNcDOsR"}], "name": "zBkf9A6H", "odds": 0.15774426246788675, "type": "REWARD", "weight": 38}], "rollFunction": "CUSTOM"}, "maxCount": 36, "maxCountPerUser": 65, "name": "BMtoOeLf", "optionBoxConfig": {"boxItems": [{"count": 78, "itemId": "zzQLZBkt", "itemSku": "k0siMup0", "itemType": "1kyaFwwD"}, {"count": 21, "itemId": "wecuQb4G", "itemSku": "NQHVZMKG", "itemType": "Bnzh4sua"}, {"count": 66, "itemId": "96rsH73h", "itemSku": "RfDgl29G", "itemType": "WKpItMt4"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 26, "fixedTrialCycles": 89, "graceDays": 19}, "regionData": {"ufkDFLYy": [{"currencyCode": "NBPlMrks", "currencyNamespace": "e9SGcMuV", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1978-03-01T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1974-08-11T00:00:00Z", "discountedPrice": 96, "expireAt": "1988-12-21T00:00:00Z", "price": 72, "purchaseAt": "1988-11-01T00:00:00Z", "trialPrice": 95}, {"currencyCode": "yfrXZmiJ", "currencyNamespace": "X4CjKCeI", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1999-05-19T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1979-05-16T00:00:00Z", "discountedPrice": 75, "expireAt": "1980-10-30T00:00:00Z", "price": 5, "purchaseAt": "1979-11-03T00:00:00Z", "trialPrice": 73}, {"currencyCode": "JW9eTJvK", "currencyNamespace": "NDFrx6La", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1983-03-16T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1991-04-20T00:00:00Z", "discountedPrice": 79, "expireAt": "1979-03-23T00:00:00Z", "price": 19, "purchaseAt": "1989-10-20T00:00:00Z", "trialPrice": 74}], "05puX319": [{"currencyCode": "7WrMnJto", "currencyNamespace": "vSMFw8X4", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1983-01-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1974-01-30T00:00:00Z", "discountedPrice": 93, "expireAt": "1973-08-29T00:00:00Z", "price": 12, "purchaseAt": "1983-06-17T00:00:00Z", "trialPrice": 78}, {"currencyCode": "nt1oMNZ6", "currencyNamespace": "8eovHSH3", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1995-11-01T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1994-12-20T00:00:00Z", "discountedPrice": 71, "expireAt": "1993-04-28T00:00:00Z", "price": 98, "purchaseAt": "1978-09-03T00:00:00Z", "trialPrice": 79}, {"currencyCode": "YBd6hMB0", "currencyNamespace": "l7sg7IfM", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1998-03-01T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1993-07-14T00:00:00Z", "discountedPrice": 31, "expireAt": "1998-05-24T00:00:00Z", "price": 76, "purchaseAt": "1997-11-23T00:00:00Z", "trialPrice": 43}], "cLtZw0ef": [{"currencyCode": "mEVcW7mx", "currencyNamespace": "bS5UOoIC", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1993-05-07T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1980-03-12T00:00:00Z", "discountedPrice": 61, "expireAt": "1981-10-16T00:00:00Z", "price": 86, "purchaseAt": "1985-11-20T00:00:00Z", "trialPrice": 21}, {"currencyCode": "iy4NNFpR", "currencyNamespace": "E5pS85yT", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1992-06-19T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1990-02-13T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-07-20T00:00:00Z", "price": 26, "purchaseAt": "1995-09-07T00:00:00Z", "trialPrice": 74}, {"currencyCode": "biRq5Jui", "currencyNamespace": "kmpat75r", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1973-11-26T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1985-01-31T00:00:00Z", "discountedPrice": 57, "expireAt": "1991-06-03T00:00:00Z", "price": 26, "purchaseAt": "1984-06-16T00:00:00Z", "trialPrice": 73}]}, "saleConfig": {"currencyCode": "6OIG1PPL", "price": 89}, "seasonType": "TIER", "sellable": false, "sku": "EXLXZWXv", "stackable": true, "status": "INACTIVE", "tags": ["pMjESLLM", "NBYZSrz7", "PKDXLki6"], "targetCurrencyCode": "Oz5Bygt8", "targetNamespace": "Q0RjSf1s", "thumbnailUrl": "rB7hGwGb", "useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'TooGGnPE' \
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
    'gY0t7QQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'l42byOwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'gKyPhXmc' \
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
    'ysae8HpW' \
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
    'H4xiz3fW' \
    --body '{"itemIds": ["thJSu2pU", "IIuPLFAt", "cWhjAP57"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'QbWvSSp7' \
    --body '{"changes": [{"itemIdentities": ["1zEPPfmA", "QiqRRC2c", "aquMRtQO"], "itemIdentityType": "ITEM_ID", "regionData": {"A9gE6SrY": [{"currencyCode": "Kq6lcVOh", "currencyNamespace": "PJIcEHbi", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1977-11-09T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-03-30T00:00:00Z", "discountedPrice": 57, "expireAt": "1995-02-11T00:00:00Z", "price": 29, "purchaseAt": "1982-04-06T00:00:00Z", "trialPrice": 51}, {"currencyCode": "AWEMmQSP", "currencyNamespace": "DTRqjlvw", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1985-08-17T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1998-06-23T00:00:00Z", "discountedPrice": 40, "expireAt": "1984-02-15T00:00:00Z", "price": 11, "purchaseAt": "1989-01-09T00:00:00Z", "trialPrice": 33}, {"currencyCode": "ushaKTPV", "currencyNamespace": "jyOUpR3u", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1974-11-23T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1976-07-17T00:00:00Z", "discountedPrice": 54, "expireAt": "1994-12-28T00:00:00Z", "price": 71, "purchaseAt": "1989-10-19T00:00:00Z", "trialPrice": 88}], "nqtrjCOs": [{"currencyCode": "E8VjvzhJ", "currencyNamespace": "wNX4bhqC", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1980-07-06T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1980-04-11T00:00:00Z", "discountedPrice": 37, "expireAt": "1990-11-04T00:00:00Z", "price": 88, "purchaseAt": "1990-04-28T00:00:00Z", "trialPrice": 2}, {"currencyCode": "6iic1FIM", "currencyNamespace": "yF7CcNu2", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1996-11-19T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1997-11-19T00:00:00Z", "discountedPrice": 63, "expireAt": "1994-11-14T00:00:00Z", "price": 67, "purchaseAt": "1987-03-24T00:00:00Z", "trialPrice": 74}, {"currencyCode": "51kOTJZl", "currencyNamespace": "uTekDMCG", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1986-08-12T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1980-07-14T00:00:00Z", "discountedPrice": 81, "expireAt": "1991-07-04T00:00:00Z", "price": 12, "purchaseAt": "1975-05-03T00:00:00Z", "trialPrice": 6}], "KnXPVZaD": [{"currencyCode": "cXsV1Tns", "currencyNamespace": "ZioDiBgp", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1983-07-02T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1982-03-05T00:00:00Z", "discountedPrice": 79, "expireAt": "1992-08-12T00:00:00Z", "price": 59, "purchaseAt": "1998-09-12T00:00:00Z", "trialPrice": 78}, {"currencyCode": "KMa0YeyN", "currencyNamespace": "BQWUHDBn", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1973-02-22T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1999-12-06T00:00:00Z", "discountedPrice": 20, "expireAt": "1996-05-07T00:00:00Z", "price": 96, "purchaseAt": "1974-06-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "1Lr5BlO8", "currencyNamespace": "K6LH4dSa", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1991-07-19T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1982-06-14T00:00:00Z", "discountedPrice": 15, "expireAt": "1974-12-30T00:00:00Z", "price": 20, "purchaseAt": "1998-07-05T00:00:00Z", "trialPrice": 62}]}}, {"itemIdentities": ["TogG0N7H", "vnuq1kJ1", "kpHcQtnI"], "itemIdentityType": "ITEM_ID", "regionData": {"pj5tVfKU": [{"currencyCode": "3D8WVPh0", "currencyNamespace": "Z7YiGE2c", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1984-07-14T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1984-11-11T00:00:00Z", "discountedPrice": 45, "expireAt": "1985-06-08T00:00:00Z", "price": 90, "purchaseAt": "1992-06-20T00:00:00Z", "trialPrice": 6}, {"currencyCode": "qJacXR2R", "currencyNamespace": "f4noXDFa", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1978-03-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1992-08-13T00:00:00Z", "discountedPrice": 26, "expireAt": "1984-08-10T00:00:00Z", "price": 52, "purchaseAt": "1997-11-06T00:00:00Z", "trialPrice": 63}, {"currencyCode": "U9jLzNV3", "currencyNamespace": "GaG43R6n", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1993-09-26T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1993-05-22T00:00:00Z", "discountedPrice": 22, "expireAt": "1986-01-05T00:00:00Z", "price": 54, "purchaseAt": "1998-12-06T00:00:00Z", "trialPrice": 33}], "z7I1WkIa": [{"currencyCode": "0oZ1nXpW", "currencyNamespace": "1l70pcZg", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1976-01-08T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-02-18T00:00:00Z", "discountedPrice": 16, "expireAt": "1975-10-08T00:00:00Z", "price": 49, "purchaseAt": "1997-11-05T00:00:00Z", "trialPrice": 63}, {"currencyCode": "IT9Agsjl", "currencyNamespace": "5NmnSHhx", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1990-08-19T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1973-04-25T00:00:00Z", "discountedPrice": 12, "expireAt": "1980-12-01T00:00:00Z", "price": 49, "purchaseAt": "1976-11-12T00:00:00Z", "trialPrice": 69}, {"currencyCode": "sPc9EMgf", "currencyNamespace": "9JCJiEvh", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1997-02-11T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1982-08-20T00:00:00Z", "discountedPrice": 26, "expireAt": "1995-10-19T00:00:00Z", "price": 99, "purchaseAt": "1989-12-27T00:00:00Z", "trialPrice": 51}], "MeNmRocp": [{"currencyCode": "400RZe8B", "currencyNamespace": "zx9aGEI2", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1994-08-19T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1997-04-05T00:00:00Z", "discountedPrice": 38, "expireAt": "1992-02-21T00:00:00Z", "price": 29, "purchaseAt": "1994-07-14T00:00:00Z", "trialPrice": 72}, {"currencyCode": "4TkpEw4Z", "currencyNamespace": "eid4mRoF", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1988-12-17T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1972-02-24T00:00:00Z", "discountedPrice": 21, "expireAt": "1983-11-12T00:00:00Z", "price": 87, "purchaseAt": "1992-02-29T00:00:00Z", "trialPrice": 97}, {"currencyCode": "O3nR8j8D", "currencyNamespace": "lP6OGbn8", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1983-02-11T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1974-01-25T00:00:00Z", "discountedPrice": 67, "expireAt": "1990-06-23T00:00:00Z", "price": 40, "purchaseAt": "1971-11-25T00:00:00Z", "trialPrice": 54}]}}, {"itemIdentities": ["1Off5gRZ", "ZMW3huAI", "zBPWBYKA"], "itemIdentityType": "ITEM_SKU", "regionData": {"sNrJzWBc": [{"currencyCode": "dFlo7oAs", "currencyNamespace": "OlfLB1J1", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1994-03-25T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1987-05-20T00:00:00Z", "discountedPrice": 10, "expireAt": "1981-03-08T00:00:00Z", "price": 67, "purchaseAt": "1990-01-18T00:00:00Z", "trialPrice": 18}, {"currencyCode": "P3r1a8KI", "currencyNamespace": "JH33aKkP", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1996-07-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1999-01-18T00:00:00Z", "discountedPrice": 79, "expireAt": "1979-02-23T00:00:00Z", "price": 52, "purchaseAt": "1994-07-17T00:00:00Z", "trialPrice": 78}, {"currencyCode": "HA58Jt5N", "currencyNamespace": "aROjSKFE", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1997-07-24T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1995-09-20T00:00:00Z", "discountedPrice": 62, "expireAt": "1988-04-05T00:00:00Z", "price": 8, "purchaseAt": "1996-08-09T00:00:00Z", "trialPrice": 74}], "SS4ezBRS": [{"currencyCode": "iOyReviD", "currencyNamespace": "axlPdhwm", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1988-08-11T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1983-01-20T00:00:00Z", "discountedPrice": 29, "expireAt": "1990-11-10T00:00:00Z", "price": 34, "purchaseAt": "1983-06-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "RZ93LuR8", "currencyNamespace": "OEyICvwg", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1985-11-10T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1999-02-01T00:00:00Z", "discountedPrice": 99, "expireAt": "1975-02-05T00:00:00Z", "price": 45, "purchaseAt": "1981-06-07T00:00:00Z", "trialPrice": 6}, {"currencyCode": "pZQjWAN0", "currencyNamespace": "tny16ZHZ", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1981-12-04T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1989-05-11T00:00:00Z", "discountedPrice": 66, "expireAt": "1991-12-11T00:00:00Z", "price": 69, "purchaseAt": "1985-01-05T00:00:00Z", "trialPrice": 36}], "LwYnXxrz": [{"currencyCode": "7sLmP70L", "currencyNamespace": "xN0f3JA2", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1999-07-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1995-10-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1991-07-28T00:00:00Z", "price": 42, "purchaseAt": "1992-10-11T00:00:00Z", "trialPrice": 11}, {"currencyCode": "iz2MiAAK", "currencyNamespace": "cvAXnxnH", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1993-10-08T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1975-09-30T00:00:00Z", "discountedPrice": 30, "expireAt": "1973-10-18T00:00:00Z", "price": 36, "purchaseAt": "1993-07-26T00:00:00Z", "trialPrice": 84}, {"currencyCode": "807VmBT4", "currencyNamespace": "wZXQZZrS", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1997-05-14T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1985-10-12T00:00:00Z", "discountedPrice": 89, "expireAt": "1992-01-11T00:00:00Z", "price": 9, "purchaseAt": "1982-03-12T00:00:00Z", "trialPrice": 46}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateRegionData' test.out

#- 95 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '0pXglJYn' \
    'KkoCAZuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'SearchItems' test.out

#- 96 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'QueryUncategorizedItems' test.out

#- 97 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'lAWnxkIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetItem' test.out

#- 98 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'VbDP0QX3' \
    '1gI7VmnG' \
    --body '{"appId": "IRMvXe6B", "appType": "DLC", "baseAppId": "a6DrSyco", "boothName": "phHw3EoE", "categoryPath": "EClTO9SD", "clazz": "KnMlnKW9", "displayOrder": 20, "entitlementType": "CONSUMABLE", "ext": {"hlmIt2nf": {}, "hUaZGqjs": {}, "lu59GT2E": {}}, "features": ["6AacmZRX", "Zm626POX", "WVj3KP1m"], "images": [{"as": "X0iYHXBU", "caption": "3Uk2tQm3", "height": 98, "imageUrl": "7IORTyHn", "smallImageUrl": "LYDAAg1Y", "width": 55}, {"as": "JZruOJvS", "caption": "RFLDSdj8", "height": 8, "imageUrl": "g1rbhfIM", "smallImageUrl": "StMnSqrK", "width": 99}, {"as": "VPCJ5j18", "caption": "Ou3aY8nc", "height": 10, "imageUrl": "KGhbLhjz", "smallImageUrl": "1v0RBIO2", "width": 35}], "itemIds": ["Js6O0Qj0", "ccMkdz6z", "Pz3BVHAq"], "itemQty": {"p4O9XSja": 31, "ZZbKFsKO": 26, "Wc3migf2": 27}, "itemType": "LOOTBOX", "listable": true, "localizations": {"iQyr5cb5": {"description": "YL6fwBia", "localExt": {"VPmmn0T5": {}, "uzlmi2NY": {}, "26xrkPPd": {}}, "longDescription": "g3pXjmtp", "title": "NfCrIj9n"}, "tYo3dupU": {"description": "HNu8abrV", "localExt": {"VOKxr9Pa": {}, "315FKDjG": {}, "2ApSV94J": {}}, "longDescription": "y6yCSXBq", "title": "JqjAbVwS"}, "aoj1ugjr": {"description": "8mPkr3tZ", "localExt": {"506ERSVy": {}, "5M3rrkxu": {}, "0U9h9gCN": {}}, "longDescription": "VZxHGxhZ", "title": "qNXJ6JXS"}}, "lootBoxConfig": {"rewardCount": 16, "rewards": [{"lootBoxItems": [{"count": 30, "itemId": "0Z3SWISs", "itemSku": "1dYrJKmx", "itemType": "1BT6iLFQ"}, {"count": 9, "itemId": "QdPuWeME", "itemSku": "eL0EJG67", "itemType": "g4W1eAmD"}, {"count": 48, "itemId": "5abnqw8f", "itemSku": "Fa30pVbh", "itemType": "r1BHh1ar"}], "name": "ZAyuLcZo", "odds": 0.49085595886348576, "type": "PROBABILITY_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 86, "itemId": "QxWeHypq", "itemSku": "CWMDPRI2", "itemType": "cCk8zHR8"}, {"count": 98, "itemId": "iDrquccz", "itemSku": "4J6fFQez", "itemType": "J5E3iYHI"}, {"count": 22, "itemId": "u7hZvHfi", "itemSku": "T9s9pK8H", "itemType": "uUY1QQHQ"}], "name": "0NCEddJt", "odds": 0.3763906993606472, "type": "REWARD", "weight": 66}, {"lootBoxItems": [{"count": 63, "itemId": "V01vD7lN", "itemSku": "LxlpvqaB", "itemType": "9P9Gaukf"}, {"count": 59, "itemId": "8WgKSLIp", "itemSku": "neDQCfwu", "itemType": "cHRL3o2N"}, {"count": 38, "itemId": "8Dzyh1N0", "itemSku": "JEKNoMtH", "itemType": "vjM7X1fj"}], "name": "zknv2HZM", "odds": 0.562787298333881, "type": "REWARD_GROUP", "weight": 82}], "rollFunction": "DEFAULT"}, "maxCount": 75, "maxCountPerUser": 3, "name": "KRTHDnta", "optionBoxConfig": {"boxItems": [{"count": 65, "itemId": "nAuujPeP", "itemSku": "9N0vdVB5", "itemType": "a2XkS3XQ"}, {"count": 10, "itemId": "OoLVM7UF", "itemSku": "nuJDzeEk", "itemType": "DxaVogxH"}, {"count": 36, "itemId": "TDXu7Fbl", "itemSku": "eSP5PcdO", "itemType": "uq0m0rva"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 89, "fixedTrialCycles": 73, "graceDays": 90}, "regionData": {"rcwojLRj": [{"currencyCode": "hcaJ56nG", "currencyNamespace": "lYZ2tod2", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1987-08-09T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1996-03-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1991-10-13T00:00:00Z", "price": 50, "purchaseAt": "1997-12-16T00:00:00Z", "trialPrice": 27}, {"currencyCode": "CtPOr1FU", "currencyNamespace": "3QZy3gdD", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1980-02-06T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1976-02-15T00:00:00Z", "discountedPrice": 3, "expireAt": "1977-07-19T00:00:00Z", "price": 16, "purchaseAt": "1981-06-08T00:00:00Z", "trialPrice": 95}, {"currencyCode": "W0UGJpwQ", "currencyNamespace": "ZlXuzu3m", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1973-10-20T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1975-10-16T00:00:00Z", "discountedPrice": 58, "expireAt": "1997-08-25T00:00:00Z", "price": 59, "purchaseAt": "1982-02-20T00:00:00Z", "trialPrice": 80}], "186hGWKf": [{"currencyCode": "O9MnoT3t", "currencyNamespace": "99Hmcxzj", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1974-02-20T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1999-05-16T00:00:00Z", "discountedPrice": 20, "expireAt": "1972-11-17T00:00:00Z", "price": 55, "purchaseAt": "1974-10-30T00:00:00Z", "trialPrice": 21}, {"currencyCode": "tU956hOg", "currencyNamespace": "8oukDVdw", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1988-05-27T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-10-08T00:00:00Z", "discountedPrice": 68, "expireAt": "1982-06-18T00:00:00Z", "price": 94, "purchaseAt": "1999-10-01T00:00:00Z", "trialPrice": 63}, {"currencyCode": "a2k60SzC", "currencyNamespace": "qUgq1gLb", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1994-11-12T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1973-01-04T00:00:00Z", "discountedPrice": 44, "expireAt": "1985-02-04T00:00:00Z", "price": 25, "purchaseAt": "1979-08-23T00:00:00Z", "trialPrice": 66}], "631p7q79": [{"currencyCode": "4bu49lIN", "currencyNamespace": "FTtERAXT", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1999-03-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1972-08-21T00:00:00Z", "discountedPrice": 88, "expireAt": "1978-12-21T00:00:00Z", "price": 45, "purchaseAt": "1984-07-02T00:00:00Z", "trialPrice": 2}, {"currencyCode": "nur0B9jK", "currencyNamespace": "aunAcyls", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1981-03-19T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1981-12-27T00:00:00Z", "discountedPrice": 38, "expireAt": "1993-07-16T00:00:00Z", "price": 26, "purchaseAt": "1984-11-01T00:00:00Z", "trialPrice": 59}, {"currencyCode": "4i3eRyIE", "currencyNamespace": "CEDa1I4l", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1996-11-20T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1989-06-29T00:00:00Z", "discountedPrice": 2, "expireAt": "1992-02-07T00:00:00Z", "price": 8, "purchaseAt": "1979-09-13T00:00:00Z", "trialPrice": 53}]}, "saleConfig": {"currencyCode": "VHevCjth", "price": 72}, "seasonType": "TIER", "sellable": false, "sku": "1gyvjacK", "stackable": true, "status": "ACTIVE", "tags": ["GqxMnoAX", "KQYlqMmu", "Rlcq0mYW"], "targetCurrencyCode": "2pvF6rP0", "targetNamespace": "3bQaq1cT", "thumbnailUrl": "88H6RCW8", "useCount": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateItem' test.out

#- 99 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'rtYvLh56' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteItem' test.out

#- 100 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'AWXoMiow' \
    --body '{"count": 7, "orderNo": "iPhNt2Id"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'AcquireItem' test.out

#- 101 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'H8aYYUT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetApp' test.out

#- 102 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'mma833TD' \
    'zk66ix88' \
    --body '{"carousel": [{"alt": "sAUrXr7M", "previewUrl": "XxCvyy7c", "thumbnailUrl": "axz4MQrO", "type": "video", "url": "qPuQZX5K", "videoSource": "generic"}, {"alt": "BCZx9DJ4", "previewUrl": "V97SJLlr", "thumbnailUrl": "wXmIGamR", "type": "video", "url": "LjTSNDf3", "videoSource": "vimeo"}, {"alt": "V4CXVMrD", "previewUrl": "YKe2eTf1", "thumbnailUrl": "axo16GqT", "type": "video", "url": "vSLLiMvc", "videoSource": "vimeo"}], "developer": "xssm4hxc", "forumUrl": "zskbSUbO", "genres": ["Simulation", "RPG", "Strategy"], "localizations": {"O8NglJtZ": {"announcement": "Th280vfl", "slogan": "FMxIhlIT"}, "8AgyZJ16": {"announcement": "MMd2bzOr", "slogan": "Tn2huwPg"}, "yUzBUWiK": {"announcement": "oNGtvyk5", "slogan": "xEfrJDxK"}}, "platformRequirements": {"sw5Xl7ZZ": [{"additionals": "rDZdbuvC", "directXVersion": "FBaVcohe", "diskSpace": "wKkVuGv9", "graphics": "fQXkErF0", "label": "drbYrrFQ", "osVersion": "P6rW62Ct", "processor": "etBW3pvA", "ram": "JJieHhve", "soundCard": "Gg97PY0t"}, {"additionals": "xzvYwv7a", "directXVersion": "tn9EQv2O", "diskSpace": "j8TFNeGt", "graphics": "JGjKbMgC", "label": "euAYuzrm", "osVersion": "bWofEaKS", "processor": "tqdKu4RO", "ram": "nONpJ849", "soundCard": "chqeiUGQ"}, {"additionals": "MwNwDlYS", "directXVersion": "li3p8YaA", "diskSpace": "del3hHMS", "graphics": "LAiscGRW", "label": "zkCl1ZKu", "osVersion": "PxjDUGRG", "processor": "cCEPjbUy", "ram": "7F82Adu9", "soundCard": "BYRHrVTe"}], "hrqgvEtE": [{"additionals": "s2LpE0qf", "directXVersion": "bvdU8hlD", "diskSpace": "oC9FnxqB", "graphics": "lPBYJ7X6", "label": "uVy7FWTS", "osVersion": "fMi2CPVG", "processor": "xjcdpdCq", "ram": "VeePMSqb", "soundCard": "8y8qJTUQ"}, {"additionals": "Y40Zrpn0", "directXVersion": "vAD9YsPe", "diskSpace": "DWrAVQZS", "graphics": "vgWuCuLs", "label": "UGrVQAbh", "osVersion": "S54ZuQHK", "processor": "ersDmJLU", "ram": "HAKtfXCK", "soundCard": "Ona8Ddjt"}, {"additionals": "Zhh6ofsU", "directXVersion": "oRh6r0e0", "diskSpace": "J6vyqPw7", "graphics": "YlmV3kES", "label": "0Hi88UYg", "osVersion": "SV40OvY7", "processor": "apPCrN5b", "ram": "EhmuHgKe", "soundCard": "WizEpw1z"}], "N0mOYgGh": [{"additionals": "HMz9dddL", "directXVersion": "WJWDuSYt", "diskSpace": "CaIv4Lp9", "graphics": "1wYUJPbv", "label": "zn8TYoMD", "osVersion": "AaUXSuBQ", "processor": "dvdhJoT0", "ram": "WK5ngNUx", "soundCard": "DKfZYofP"}, {"additionals": "GUbSaA00", "directXVersion": "nKxQjYU6", "diskSpace": "KlavIiLx", "graphics": "U2I1GyJS", "label": "48Hxu8Ju", "osVersion": "4XSAnlXR", "processor": "YB9BgSZB", "ram": "vkehRn83", "soundCard": "B0nrW1qx"}, {"additionals": "3NJTugVW", "directXVersion": "Xz8dv7Bi", "diskSpace": "EUqnzxs2", "graphics": "deMF8UAJ", "label": "IHEZv5zy", "osVersion": "UUyNJkvA", "processor": "5xF3zHtZ", "ram": "Sd3QzXhk", "soundCard": "rN4pWryt"}]}, "platforms": ["Linux", "Linux", "Windows"], "players": ["LocalCoop", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "Adventure", "publisher": "p0ni1YfI", "releaseDate": "1974-08-20T00:00:00Z", "websiteUrl": "LZ4YIzEl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateApp' test.out

#- 103 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'rLZOBLHC' \
    'KmLBaIwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'DisableItem' test.out

#- 104 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'okbAFW8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetItemDynamicData' test.out

#- 105 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'gBUwBL28' \
    'BqM8UzvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'EnableItem' test.out

#- 106 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'qeoTiNKG' \
    'RUMrimGA' \
    'z6OhmHOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'FeatureItem' test.out

#- 107 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'Cdr3WzDm' \
    '3hJdd6ua' \
    'O9TiTPnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'DefeatureItem' test.out

#- 108 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'h2iaIBpY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetLocaleItem' test.out

#- 109 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'C4txul6V' \
    'KYlNYYlH' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 59, "comparison": "isNot", "name": "Mjr5M3vw", "predicateType": "EntitlementPredicate", "value": "GqUjjFp6", "values": ["tVqSECsy", "pS42NmYQ", "R8mYZwKf"]}, {"anyOf": 81, "comparison": "is", "name": "drwqytie", "predicateType": "SeasonTierPredicate", "value": "pIZfr5XD", "values": ["CCFqPNDq", "q9dGLHjt", "gE2bTXJx"]}, {"anyOf": 100, "comparison": "includes", "name": "rpkWnnov", "predicateType": "EntitlementPredicate", "value": "RDwYLge8", "values": ["Kvw5TWjA", "51PbK2MF", "h4gy41LL"]}]}, {"operator": "or", "predicates": [{"anyOf": 60, "comparison": "is", "name": "jY5PeNr4", "predicateType": "SeasonTierPredicate", "value": "XK8RGS0z", "values": ["UmKdXiiT", "wUmsy0st", "CYRVmbfz"]}, {"anyOf": 83, "comparison": "isNot", "name": "bNdqkWa1", "predicateType": "SeasonPassPredicate", "value": "g3pgHx6u", "values": ["iXEEM2KO", "erH933X7", "Pf6jQZcY"]}, {"anyOf": 42, "comparison": "isNot", "name": "sNEHcI95", "predicateType": "SeasonTierPredicate", "value": "spT3MLwJ", "values": ["fgff7Et4", "ZquMQSPp", "5XD4S1il"]}]}, {"operator": "or", "predicates": [{"anyOf": 64, "comparison": "includes", "name": "8nlBwGNH", "predicateType": "EntitlementPredicate", "value": "ZUbQQ13F", "values": ["wAjgHFQk", "hD3NExUF", "ipJsUiDa"]}, {"anyOf": 98, "comparison": "isLessThanOrEqual", "name": "Zgeesipb", "predicateType": "SeasonTierPredicate", "value": "2yXMSCcH", "values": ["c0CJ7Lzp", "FvOSF6xK", "ADYpS861"]}, {"anyOf": 55, "comparison": "isGreaterThan", "name": "6yrnvXY5", "predicateType": "EntitlementPredicate", "value": "Lc42eq0O", "values": ["6VsXtOlQ", "c5nPR0Y1", "wj5xPvm7"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'UpdateItemPurchaseCondition' test.out

#- 110 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'sffUaZ64' \
    --body '{"orderNo": "dFpiv8o9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'ReturnItem' test.out

#- 111 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'QueryKeyGroups' test.out

#- 112 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "Gw4QtKgy", "name": "IeySoUxo", "status": "ACTIVE", "tags": ["rj2J4JGQ", "ZAtyjTxn", "lmSyjEaF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'CreateKeyGroup' test.out

#- 113 GetKeyGroupByBoothName
eval_tap 0 113 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 114 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'H2DRN6HI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroup' test.out

#- 115 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'EqIFEcS0' \
    --body '{"description": "ynIMOYWp", "name": "UYUQMooi", "status": "INACTIVE", "tags": ["izikCh6q", "0yq2WAHt", "L7IWE3MF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'UpdateKeyGroup' test.out

#- 116 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'qvfDG5jv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroupDynamic' test.out

#- 117 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'MOaXrDlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ListKeys' test.out

#- 118 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'X42U0syr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UploadKeys' test.out

#- 119 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'QueryOrders' test.out

#- 120 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrderStatistics' test.out

#- 121 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'GNhBmgT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetOrder' test.out

#- 122 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'q0kIbrJ2' \
    --body '{"description": "S5Pf1Lvg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'RefundOrder' test.out

#- 123 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentCallbackConfig' test.out

#- 124 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "kYEVylIN", "privateKey": "JpxFY8E6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdatePaymentCallbackConfig' test.out

#- 125 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'QueryPaymentNotifications' test.out

#- 126 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'QueryPaymentOrders' test.out

#- 127 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "pU8eHjh0", "currencyNamespace": "aTjIOaQt", "customParameters": {"0snbE0yM": {}, "vqF7TJ9u": {}, "B0zypjJi": {}}, "description": "u7BIimNu", "extOrderNo": "wB3hBVhu", "extUserId": "SMHhf5R2", "itemType": "SEASON", "language": "KMYx-bhEF", "metadata": {"E6hXZ7XL": "oWCGf0dZ", "EeXBd6mG": "G6SHcZbX", "2wNnT6A9": "zosmDnXo"}, "notifyUrl": "ncy7NZQ4", "omitNotification": false, "platform": "DsUq38bY", "price": 44, "recurringPaymentOrderNo": "1Fb0y94e", "region": "P7yh0zsK", "returnUrl": "hR60HZwU", "sandbox": true, "sku": "YXXMndxB", "subscriptionId": "PKmHVB7c", "targetNamespace": "NzHhvxc4", "targetUserId": "xAPZ86WN", "title": "nQOhusPn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CreatePaymentOrderByDedicated' test.out

#- 128 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    '4466u8ag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ListExtOrderNoByExtTxId' test.out

#- 129 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'b5HPsBU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrder' test.out

#- 130 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'Eo6QJ9vB' \
    --body '{"extTxId": "RJ4UP09f", "paymentMethod": "abC01Thm", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ChargePaymentOrder' test.out

#- 131 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'BYBVCbi0' \
    --body '{"description": "ifdPyKf3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RefundPaymentOrderByDedicated' test.out

#- 132 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'SwHekWIz' \
    --body '{"amount": 0, "currencyCode": "rXlH5jw9", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 49, "vat": 16}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'SimulatePaymentOrderNotification' test.out

#- 133 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'CjXWcaXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPaymentOrderChargeStatus' test.out

#- 134 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetPlatformWalletConfig' test.out

#- 135 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Xbox' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "Xbox", "System"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdatePlatformWalletConfig' test.out

#- 136 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ResetPlatformWalletConfig' test.out

#- 137 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetRevocationConfig' test.out

#- 138 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateRevocationConfig' test.out

#- 139 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteRevocationConfig' test.out

#- 140 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QueryRevocationHistories' test.out

#- 141 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "Bm2N8PdQ", "eventTopic": "5mQaGXEb", "maxAwarded": 27, "maxAwardedPerUser": 26, "namespaceExpression": "WA76Kl2m", "rewardCode": "HHoz6qBQ", "rewardConditions": [{"condition": "nEDgX49n", "conditionName": "1xTDFcmO", "eventName": "m1sqdIWU", "rewardItems": [{"duration": 83, "itemId": "ERylESgf", "quantity": 17}, {"duration": 6, "itemId": "IVnhlLoM", "quantity": 8}, {"duration": 15, "itemId": "msp7o3F2", "quantity": 76}]}, {"condition": "C62xYtDw", "conditionName": "flNGfufW", "eventName": "5cWeg6eS", "rewardItems": [{"duration": 58, "itemId": "QPa7PPx4", "quantity": 21}, {"duration": 17, "itemId": "JGGCVF6L", "quantity": 36}, {"duration": 69, "itemId": "ILDLviUC", "quantity": 52}]}, {"condition": "f5nlMDOR", "conditionName": "YuXnPNJg", "eventName": "ayPFcyUn", "rewardItems": [{"duration": 75, "itemId": "EBSYBdUS", "quantity": 17}, {"duration": 93, "itemId": "6WF8jtNA", "quantity": 99}, {"duration": 84, "itemId": "9WOKmZRT", "quantity": 40}]}], "userIdExpression": "lJ93CCGB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'CreateReward' test.out

#- 142 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'QueryRewards' test.out

#- 143 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'ExportRewards' test.out

#- 144 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'ImportRewards' test.out

#- 145 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'v4fP4VPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetReward' test.out

#- 146 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'hcH4UJrr' \
    --body '{"description": "CKvrOAi7", "eventTopic": "lMgkVWJY", "maxAwarded": 53, "maxAwardedPerUser": 27, "namespaceExpression": "SCIDxWUx", "rewardCode": "gOzeRNHI", "rewardConditions": [{"condition": "qK5PT404", "conditionName": "mFw4HJv5", "eventName": "T2kIQOec", "rewardItems": [{"duration": 11, "itemId": "J2OzNlJE", "quantity": 76}, {"duration": 42, "itemId": "lrOsJmEw", "quantity": 19}, {"duration": 67, "itemId": "cA0PwZxT", "quantity": 71}]}, {"condition": "smwTV8im", "conditionName": "JHNI0l6j", "eventName": "JVzF1Oi2", "rewardItems": [{"duration": 37, "itemId": "lVWA2dWx", "quantity": 57}, {"duration": 30, "itemId": "s056jkPC", "quantity": 96}, {"duration": 43, "itemId": "uE1pgdHv", "quantity": 24}]}, {"condition": "WMXxVh8H", "conditionName": "TrKqVwnp", "eventName": "Pn8N5xMR", "rewardItems": [{"duration": 12, "itemId": "q94Re5IM", "quantity": 77}, {"duration": 1, "itemId": "CRRUysya", "quantity": 87}, {"duration": 73, "itemId": "Uku3n32a", "quantity": 39}]}], "userIdExpression": "SwrNov2G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateReward' test.out

#- 147 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'W9i54JY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteReward' test.out

#- 148 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '3AUWFTLq' \
    --body '{"payload": {"0W1JqwKs": {}, "1mO80L7I": {}, "OHlf6j8P": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'CheckEventCondition' test.out

#- 149 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'ZOzUiQKZ' \
    --body '{"conditionName": "qz5NSp0B", "userId": "7LODN3Bo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'DeleteRewardConditionRecord' test.out

#- 150 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'QuerySections' test.out

#- 151 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'i2sSAO2n' \
    --body '{"active": true, "displayOrder": 68, "endDate": "1993-01-03T00:00:00Z", "ext": {"t753XQB9": {}, "3rOW0guP": {}, "oQbYzc1R": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 87, "itemCount": 97, "rule": "SEQUENCE"}, "items": [{"id": "hs2lhdzx", "sku": "xgibuqUu"}, {"id": "yW3cMz9Y", "sku": "yduMomEH"}, {"id": "cU15St4v", "sku": "8ry8IyqN"}], "localizations": {"Vv0KVpXJ": {"description": "TMx3Y8Um", "localExt": {"1iqehObg": {}, "3OZ9j0HD": {}, "tbqMFlgH": {}}, "longDescription": "KQIRtLfP", "title": "ngD83roO"}, "eqE7fcCA": {"description": "eExeQX43", "localExt": {"LpmdMiZe": {}, "yIrA4QUK": {}, "SJgECzva": {}}, "longDescription": "WUCA7wKr", "title": "u7ry3AQ2"}, "sEHvSxjW": {"description": "oM1rNJLM", "localExt": {"0OOVG5cG": {}, "6XxENbWq": {}, "lX7idzjp": {}}, "longDescription": "KDfwl6Xl", "title": "CF6YxFMD"}}, "name": "8tJQwZvU", "rotationType": "FIXED_PERIOD", "startDate": "1988-11-05T00:00:00Z", "viewId": "nos5RK10"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CreateSection' test.out

#- 152 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '0yH89i8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'PurgeExpiredSection' test.out

#- 153 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'DPXRL8cb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetSection' test.out

#- 154 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'TAntB1ST' \
    'aab1Ueib' \
    --body '{"active": false, "displayOrder": 96, "endDate": "1993-09-24T00:00:00Z", "ext": {"Ce5BtKcw": {}, "j6PqqOgC": {}, "imr3ZQNB": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 50, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "rXu9czsY", "sku": "r3cFeVw7"}, {"id": "0xdNTuOd", "sku": "LKK0M2B2"}, {"id": "hbqJin37", "sku": "P69t1Kqe"}], "localizations": {"Gz7qbPnX": {"description": "EuOzzkoB", "localExt": {"mMR9C4qP": {}, "qJrAdh1H": {}, "Ik7vCEq7": {}}, "longDescription": "FQ2S5VeW", "title": "9ddxzLPV"}, "8wDjsnyP": {"description": "h5yNbYXm", "localExt": {"lAOi1SC3": {}, "I1SjkH42": {}, "LtyZKrTJ": {}}, "longDescription": "o0L5sHil", "title": "4Q0mqa8G"}, "atrjbJ5Y": {"description": "T7uvqarT", "localExt": {"vrG1DXZA": {}, "Wlvz3c3X": {}, "ALMresGF": {}}, "longDescription": "fsH4aXCD", "title": "hshvEF8r"}}, "name": "Hd250nyi", "rotationType": "CUSTOM", "startDate": "1990-01-21T00:00:00Z", "viewId": "4ozSAg8F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateSection' test.out

#- 155 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'TLrByWOJ' \
    'hbocoGlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'DeleteSection' test.out

#- 156 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ListStores' test.out

#- 157 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "zdfxcC3r", "defaultRegion": "pWhSpq0I", "description": "nxMLpP7n", "supportedLanguages": ["7M3JXjEv", "sj5WcQ99", "M1yuXeqV"], "supportedRegions": ["31LX2ehc", "MnM6Qtjz", "QjDlUMCG"], "title": "nxZwak7K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'CreateStore' test.out

#- 158 ImportStore
eval_tap 0 158 'ImportStore # SKIP deprecated' test.out

#- 159 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetPublishedStore' test.out

#- 160 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'DeletePublishedStore' test.out

#- 161 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetPublishedStoreBackup' test.out

#- 162 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'RollbackPublishedStore' test.out

#- 163 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'HnzGASmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetStore' test.out

#- 164 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'zePIroz4' \
    --body '{"defaultLanguage": "1oQCuXeT", "defaultRegion": "RyJQrNLT", "description": "cqLVTN5Q", "supportedLanguages": ["f4tjPGpu", "27yxb1of", "79zVTWIf"], "supportedRegions": ["gdNphqe9", "fS1m77MA", "g4KoZQPL"], "title": "hDSJx9jz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UpdateStore' test.out

#- 165 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'xaRKph4k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'DeleteStore' test.out

#- 166 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'iIFgS4fL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryChanges' test.out

#- 167 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'qlrKGiS3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishAll' test.out

#- 168 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'XxjkyNfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'PublishSelected' test.out

#- 169 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '3XgTRTjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'SelectAllRecords' test.out

#- 170 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '9oNBzgQ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetStatistic' test.out

#- 171 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'CRwg0sKV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnselectAllRecords' test.out

#- 172 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'eSpMny0G' \
    'rvKI5EVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'SelectRecord' test.out

#- 173 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '9ZFzLNsj' \
    'dCFtKY0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UnselectRecord' test.out

#- 174 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'sxR0rCFk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'CloneStore' test.out

#- 175 ExportStore
eval_tap 0 175 'ExportStore # SKIP deprecated' test.out

#- 176 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'QuerySubscriptions' test.out

#- 177 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'yiQZfMnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'RecurringChargeSubscription' test.out

#- 178 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'bKdwNhiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetTicketDynamic' test.out

#- 179 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'P7dpJ8B8' \
    --body '{"orderNo": "VwFQnVco"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DecreaseTicketSale' test.out

#- 180 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '2oCn1KvJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetTicketBoothID' test.out

#- 181 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'mbjapW9U' \
    --body '{"count": 24, "orderNo": "MgIwkrKF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'IncreaseTicketSale' test.out

#- 182 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'EtwESJCe' \
    --body '{"achievements": [{"id": "2ksG3nZE", "value": 39}, {"id": "3H2fILFz", "value": 83}, {"id": "8ERZcKSY", "value": 78}], "steamUserId": "JLbVWH2X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UnlockSteamUserAchievement' test.out

#- 183 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'LIg3Mgmd' \
    'SvWp3h0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetXblUserAchievements' test.out

#- 184 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'PsVY8qNw' \
    --body '{"achievements": [{"id": "B2TY4v9N", "value": 81}, {"id": "fNMFsZAI", "value": 34}, {"id": "l3FNFFJn", "value": 41}], "serviceConfigId": "a5cRn31D", "titleId": "8ubfdXi7", "xboxUserId": "BycDPcke"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdateXblUserAchievement' test.out

#- 185 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'GJUgU8bD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeCampaign' test.out

#- 186 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '5mGFFmKT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeEntitlement' test.out

#- 187 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'TUxG0mpm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeFulfillment' test.out

#- 188 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'FxxDNXGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeIntegration' test.out

#- 189 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'GJvHf558' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeOrder' test.out

#- 190 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'h1ltyhiS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizePayment' test.out

#- 191 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'GhfqXhxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeRevocation' test.out

#- 192 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'J7zLXioA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeSubscription' test.out

#- 193 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'GkWgSDdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AnonymizeWallet' test.out

#- 194 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'QvpRfGe3' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserDLC' test.out

#- 195 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '4Bn0cPPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlements' test.out

#- 196 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'KaJlw31p' \
    --body '[{"endDate": "1972-02-28T00:00:00Z", "grantedCode": "DrXQ47WS", "itemId": "GyDCKF0L", "itemNamespace": "LhO3lGZ7", "language": "rh", "quantity": 85, "region": "fBnPluOI", "source": "IAP", "startDate": "1985-07-22T00:00:00Z", "storeId": "QUmPHnPu"}, {"endDate": "1977-05-12T00:00:00Z", "grantedCode": "cazKAna0", "itemId": "ji757aND", "itemNamespace": "FeKnQP2j", "language": "Srr", "quantity": 94, "region": "uN4gx0UC", "source": "PROMOTION", "startDate": "1973-01-10T00:00:00Z", "storeId": "WKCFGS97"}, {"endDate": "1993-02-20T00:00:00Z", "grantedCode": "i6XyLVPr", "itemId": "kUxyZ1OH", "itemNamespace": "5Nn4nMT8", "language": "ZqZZ_awSt_TT", "quantity": 68, "region": "aPAocOQc", "source": "OTHER", "startDate": "1978-08-18T00:00:00Z", "storeId": "nwz27DWf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GrantUserEntitlement' test.out

#- 197 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'GRVhbZTv' \
    'CPrrZCTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserAppEntitlementByAppId' test.out

#- 198 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '5WUJizF6' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QueryUserEntitlementsByAppType' test.out

#- 199 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'PSsquWUa' \
    'fwbFPX15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementByItemId' test.out

#- 200 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '633pFgA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserActiveEntitlementsByItemIds' test.out

#- 201 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'i9tqvfHm' \
    'FvUZiUW5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserEntitlementBySku' test.out

#- 202 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'Y0CYw5OX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlement' test.out

#- 203 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'SGwQkJuy' \
    '["9oLFcHHc", "raLXR2n9", "JQvq7NKW"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 204 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'IHYsii3f' \
    'Ch7sieJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 205 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'ZPAkiWum' \
    'llU31uXP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemId' test.out

#- 206 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'wYxedGHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipByItemIds' test.out

#- 207 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'Ikmt4bfJ' \
    'OhNaIT0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetUserEntitlementOwnershipBySku' test.out

#- 208 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'v7XeqO8g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RevokeAllEntitlements' test.out

#- 209 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'Y3c4SryW' \
    'B4yRaDxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RevokeUserEntitlements' test.out

#- 210 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'xwaLM8Hk' \
    'VOW8PnLk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserEntitlement' test.out

#- 211 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'gqkqYZWP' \
    'ZTgKagTz' \
    --body '{"endDate": "1972-03-11T00:00:00Z", "nullFieldList": ["cYcko7U3", "gH239LhR", "x2Laa2Rd"], "startDate": "1980-11-18T00:00:00Z", "status": "REVOKED", "useCount": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UpdateUserEntitlement' test.out

#- 212 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'I8QrQ6H1' \
    'ro5CtU8U' \
    --body '{"options": ["jgyCUpM1", "JBcTzf4d", "z1BojPoQ"], "requestId": "g976409v", "useCount": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'ConsumeUserEntitlement' test.out

#- 213 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'yTHb0sSl' \
    'stb3slUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'DisableUserEntitlement' test.out

#- 214 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '94NxhXsV' \
    'cqTYi1TM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'EnableUserEntitlement' test.out

#- 215 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'BMzaOrxu' \
    'KvtUVtqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserEntitlementHistories' test.out

#- 216 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'DWnJ2i9T' \
    'RmJOqIl7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RevokeUserEntitlement' test.out

#- 217 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'U12hO5vp' \
    'k9DOSgbs' \
    --body '{"reason": "dGVPLD9A", "useCount": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'RevokeUseCount' test.out

#- 218 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'NmuZDUV3' \
    'yHurgOfb' \
    --body '{"requestId": "a1XeoHYT", "useCount": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'SellUserEntitlement' test.out

#- 219 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'll1RimBC' \
    --body '{"duration": 16, "endDate": "1976-12-20T00:00:00Z", "itemId": "xtP5Vok9", "itemSku": "sNK1ORg3", "language": "tChsS3fF", "order": {"currency": {"currencyCode": "paS1uq1m", "currencySymbol": "H3oYfPK2", "currencyType": "REAL", "decimals": 54, "namespace": "9Z9tfGVs"}, "ext": {"glnOxOXB": {}, "fgBLuglk": {}, "d9LIoshG": {}}, "free": false}, "orderNo": "fJOPYpnP", "origin": "Other", "quantity": 19, "region": "GlPnhBDO", "source": "PROMOTION", "startDate": "1979-04-08T00:00:00Z", "storeId": "DU8N3DjV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'FulfillItem' test.out

#- 220 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'Ut0n0jfy' \
    --body '{"code": "DbtIXICL", "language": "Tm_vx", "region": "g3znlg8n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RedeemCode' test.out

#- 221 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'mzQx1RsY' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "pZqISn3m", "namespace": "srykQFtW"}, "item": {"itemId": "8QGKFZLr", "itemSku": "IfqrZuu7", "itemType": "IwKcT7sA"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "v2TKCbYM", "namespace": "VkXEHmsH"}, "item": {"itemId": "wIGGsusS", "itemSku": "0zZRODEK", "itemType": "PdudZsLa"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "x5OFp3jK", "namespace": "Ex4aSGdw"}, "item": {"itemId": "TPX4ig3N", "itemSku": "VFFkP7O3", "itemType": "F4vsohRW"}, "quantity": 60, "type": "CURRENCY"}], "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'FulfillRewards' test.out

#- 222 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'HghAQfAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserIAPOrders' test.out

#- 223 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'YXVzBenL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'QueryAllUserIAPOrders' test.out

#- 224 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'taAoYyRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryUserIAPConsumeHistory' test.out

#- 225 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'iCWrm3s1' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "HkUu_cz", "productId": "MJ04508j", "region": "Kedx0CVR", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'MockFulfillIAPItem' test.out

#- 226 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'jRm5Ki0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'QueryUserOrders' test.out

#- 227 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'rhXrISEa' \
    --body '{"currencyCode": "PZHLQkTH", "currencyNamespace": "vndQsCKA", "discountedPrice": 83, "ext": {"EvKElLfb": {}, "B7gwwAR1": {}, "xFrnyirw": {}}, "itemId": "3iJt5iA3", "language": "JS2xeaJ0", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 92, "quantity": 70, "region": "t1YTWqIt", "returnUrl": "jNWXm9sr", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminCreateUserOrder' test.out

#- 228 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '2TIQzRJY' \
    '7UfYSrdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'CountOfPurchasedItem' test.out

#- 229 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '0JVz4U43' \
    'EcV1FRye' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrder' test.out

#- 230 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'eqehMNeR' \
    'YKeMbL0G' \
    --body '{"status": "FULFILLED", "statusReason": "q9jJTVFo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'UpdateUserOrderStatus' test.out

#- 231 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'FjxZjh5q' \
    'UR1Pq4a4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'FulfillUserOrder' test.out

#- 232 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'uaMfd0SQ' \
    'AfYIyzHL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserOrderGrant' test.out

#- 233 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '8jxakuVu' \
    '5r5B08VZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserOrderHistories' test.out

#- 234 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'xI4TU3ap' \
    'nZXoJ4gI' \
    --body '{"additionalData": {"cardSummary": "4EQKO8xC"}, "authorisedTime": "1986-10-08T00:00:00Z", "chargebackReversedTime": "1987-04-10T00:00:00Z", "chargebackTime": "1980-08-15T00:00:00Z", "chargedTime": "1994-09-02T00:00:00Z", "createdTime": "1978-06-20T00:00:00Z", "currency": {"currencyCode": "3IB2kX5R", "currencySymbol": "EQZsHyXz", "currencyType": "REAL", "decimals": 14, "namespace": "IXNf0KbL"}, "customParameters": {"9HyJttdg": {}, "fLGO3umm": {}, "pllnV6B6": {}}, "extOrderNo": "2P1Kazg7", "extTxId": "3c6UpmA4", "extUserId": "ehxNIIlc", "issuedAt": "1979-04-13T00:00:00Z", "metadata": {"ZzgameT2": "mLkkAMjH", "yI0e2Axj": "0nZHjmoK", "HJngwMe1": "AnQVj6QQ"}, "namespace": "jZtkNJCn", "nonceStr": "DSrsSey2", "paymentMethod": "BqOxgwCy", "paymentMethodFee": 24, "paymentOrderNo": "2MSuwsEH", "paymentProvider": "CHECKOUT", "paymentProviderFee": 2, "paymentStationUrl": "wdeJyhsH", "price": 91, "refundedTime": "1981-05-13T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "b9Ll2EFE", "status": "AUTHORISED", "statusReason": "L1txfX9t", "subscriptionId": "qFSkGXoI", "subtotalPrice": 5, "targetNamespace": "rg3lpqN5", "targetUserId": "bOfnqJ5b", "tax": 51, "totalPrice": 60, "totalTax": 41, "txEndTime": "1993-05-27T00:00:00Z", "type": "zbhMxfED", "userId": "E4TrtIHy", "vat": 50}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ProcessUserOrderNotification' test.out

#- 235 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'RVibTATx' \
    'd7Mzjv1g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DownloadUserOrderReceipt' test.out

#- 236 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'Sj8kcNho' \
    --body '{"currencyCode": "qcRZRNAT", "currencyNamespace": "ojM7daV0", "customParameters": {"VwR3yNKD": {}, "tMqMrAGp": {}, "dyF6WDHn": {}}, "description": "3ePBxQNz", "extOrderNo": "2IUEHMzl", "extUserId": "5jhwVDsu", "itemType": "LOOTBOX", "language": "Rkr-aEnP", "metadata": {"4KEm3uHB": "MCP5ckjp", "hURs4ksg": "sKJ2R6Ja", "cwwu8W1z": "vrKMRPvw"}, "notifyUrl": "A9k6yJz0", "omitNotification": true, "platform": "NETdywPq", "price": 63, "recurringPaymentOrderNo": "errpOm4M", "region": "2pM4fIfc", "returnUrl": "HBWZM50a", "sandbox": false, "sku": "fSr3psWj", "subscriptionId": "OyHLyKe2", "title": "foqsVIfg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreateUserPaymentOrder' test.out

#- 237 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'BTr8RcxR' \
    'QR0NYdJz' \
    --body '{"description": "f3TMhSay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RefundUserPaymentOrder' test.out

#- 238 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'nVs05nZC' \
    --body '{"code": "4Os7hqIH", "orderNo": "2NgARSG3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ApplyUserRedemption' test.out

#- 239 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'QQNGNH2K' \
    --body '{"meta": {"0UuJdeGN": {}, "quQnaXpD": {}, "Q5rU2taD": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "HiCn2hTe", "namespace": "fT8gPFJ4"}, "entitlement": {"entitlementId": "WndMpQhc"}, "item": {"itemIdentity": "LK0WTZbt", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 46, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "ug3nCXhD", "namespace": "7FUz1iOe"}, "entitlement": {"entitlementId": "0pHa0Lms"}, "item": {"itemIdentity": "eIRXeoer", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 49, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "fzssA284", "namespace": "mG7uAojL"}, "entitlement": {"entitlementId": "YBsx8oqM"}, "item": {"itemIdentity": "zbE0ljQa", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 40, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "vLfa4b4h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'DoRevocation' test.out

#- 240 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'TaZBGdX6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'QueryUserSubscriptions' test.out

#- 241 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '6DqPTdur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionActivities' test.out

#- 242 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'R3MYda0Y' \
    --body '{"grantDays": 88, "itemId": "BCO4qPnv", "language": "xERWjKas", "reason": "q5zQ6uZN", "region": "wKjnX7vD", "source": "Iqpcjmaq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'PlatformSubscribeSubscription' test.out

#- 243 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '5KBCsHlw' \
    'NrfKJrkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 244 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'wR40tfd9' \
    'GFXChtxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscription' test.out

#- 245 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '10d4Q8nl' \
    'BthUSu4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'DeleteUserSubscription' test.out

#- 246 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'NfTvD5Uc' \
    'ES1eLMZs' \
    --body '{"immediate": true, "reason": "lSQVDp16"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'CancelSubscription' test.out

#- 247 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'qVIqXCK9' \
    'dS5JTbdJ' \
    --body '{"grantDays": 63, "reason": "zTUe8Kdi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GrantDaysToSubscription' test.out

#- 248 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'zXmrmK0s' \
    'CUsqxKoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserSubscriptionBillingHistories' test.out

#- 249 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'HomtjoU1' \
    'kUqRedwI' \
    --body '{"additionalData": {"cardSummary": "u1TSRr6r"}, "authorisedTime": "1977-08-14T00:00:00Z", "chargebackReversedTime": "1983-06-15T00:00:00Z", "chargebackTime": "1973-11-18T00:00:00Z", "chargedTime": "1980-02-04T00:00:00Z", "createdTime": "1988-01-30T00:00:00Z", "currency": {"currencyCode": "jGrxUMKb", "currencySymbol": "v60ixUuU", "currencyType": "REAL", "decimals": 28, "namespace": "opdqGrqR"}, "customParameters": {"Z124P7Pa": {}, "uXTrpWAj": {}, "watSvtPb": {}}, "extOrderNo": "AFn8oWQc", "extTxId": "mFkkRX6E", "extUserId": "qadAEIzx", "issuedAt": "1976-12-11T00:00:00Z", "metadata": {"d80Ynss7": "hc3VUxxZ", "IgkTLqMe": "JPCbs8jW", "mTteJhwN": "bwHGG39Y"}, "namespace": "AZJ4HuLf", "nonceStr": "eTfFBTOF", "paymentMethod": "FMJ9pq51", "paymentMethodFee": 12, "paymentOrderNo": "jZcTK8zm", "paymentProvider": "CHECKOUT", "paymentProviderFee": 12, "paymentStationUrl": "0E7YaPbl", "price": 4, "refundedTime": "1972-08-09T00:00:00Z", "salesTax": 63, "sandbox": true, "sku": "Vo85r1b8", "status": "CHARGED", "statusReason": "p2QnuhQu", "subscriptionId": "IdvZdj6A", "subtotalPrice": 38, "targetNamespace": "YlJElgJ8", "targetUserId": "kx1WEeDb", "tax": 34, "totalPrice": 60, "totalTax": 24, "txEndTime": "1989-06-18T00:00:00Z", "type": "FtQMu41r", "userId": "nOzbsFBq", "vat": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'ProcessUserSubscriptionNotification' test.out

#- 250 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'jfn8lY4D' \
    'nYRxY8Zh' \
    --body '{"count": 70, "orderNo": "uTaiLxFM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AcquireUserTicket' test.out

#- 251 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'XRpDP9xu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'QueryUserCurrencyWallets' test.out

#- 252 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'tntU8xHw' \
    '4yYJOCVi' \
    --body '{"allowOverdraft": true, "amount": 42, "balanceOrigin": "Xbox", "reason": "nQwpC2eC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'DebitUserWalletByCurrencyCode' test.out

#- 253 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'FUAHZaYS' \
    'vsWiNJtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ListUserCurrencyTransactions' test.out

#- 254 CheckWallet
eval_tap 0 254 'CheckWallet # SKIP deprecated' test.out

#- 255 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'XltZF6aS' \
    'RmHU5iR3' \
    --body '{"amount": 15, "expireAt": "1979-01-28T00:00:00Z", "origin": "Twitch", "reason": "XqhDMQ6t", "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CreditUserWallet' test.out

#- 256 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'ftOgDQAW' \
    'hulbrDf7' \
    --body '{"amount": 34, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PayWithUserWallet' test.out

#- 257 GetUserWallet
eval_tap 0 257 'GetUserWallet # SKIP deprecated' test.out

#- 258 DebitUserWallet
eval_tap 0 258 'DebitUserWallet # SKIP deprecated' test.out

#- 259 DisableUserWallet
eval_tap 0 259 'DisableUserWallet # SKIP deprecated' test.out

#- 260 EnableUserWallet
eval_tap 0 260 'EnableUserWallet # SKIP deprecated' test.out

#- 261 ListUserWalletTransactions
eval_tap 0 261 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 262 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'ListViews' test.out

#- 263 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '0aXFY7SQ' \
    --body '{"displayOrder": 21, "localizations": {"4CNtX2ln": {"description": "qi7cHTSd", "localExt": {"GoLZbC3U": {}, "JruU4uIX": {}, "BZsEYogF": {}}, "longDescription": "WiH9z4E8", "title": "zmaZ5cg0"}, "REtUWY4f": {"description": "VIdqwCWF", "localExt": {"5wmbOubT": {}, "xAAeDCow": {}, "R3MeCNL1": {}}, "longDescription": "oNrF3Smg", "title": "udQusJLs"}, "PlW7ZyOR": {"description": "FkN9EbKb", "localExt": {"TbrDzNgV": {}, "Ecw0lxRa": {}, "m16O6v4V": {}}, "longDescription": "jJf40LjU", "title": "dORELVXU"}}, "name": "FQyVlt9j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'CreateView' test.out

#- 264 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'mxmxpfp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetView' test.out

#- 265 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '1k1uDg59' \
    'PhdUXSha' \
    --body '{"displayOrder": 2, "localizations": {"xEJcKHE7": {"description": "64EwhQfx", "localExt": {"FKIOGT1W": {}, "KSmLoA0I": {}, "LaESC1GJ": {}}, "longDescription": "XsoBwqh0", "title": "TQXa2j7v"}, "3zQJoQLT": {"description": "AlW75icI", "localExt": {"KUpXazsF": {}, "rmaGNoi3": {}, "RPTgWotL": {}}, "longDescription": "Nz0u8ySx", "title": "A0yrjz4q"}, "7e0EJnAD": {"description": "XC2y0DY1", "localExt": {"E1SMK9oA": {}, "4vK56dsY": {}, "I5SKV5pD": {}}, "longDescription": "ANyJ184m", "title": "iBhdVJt8"}}, "name": "1fmLSyGu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateView' test.out

#- 266 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'u5rbJVIw' \
    'RMtwApGb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'DeleteView' test.out

#- 267 QueryWallets
eval_tap 0 267 'QueryWallets # SKIP deprecated' test.out

#- 268 GetWallet
eval_tap 0 268 'GetWallet # SKIP deprecated' test.out

#- 269 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'XnR3yC6f' \
    '2MHGGedk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'SyncOrders' test.out

#- 270 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["0KzXRclO", "XdPYZQxB", "nttu4yW5"], "apiKey": "etl4Xk8H", "authoriseAsCapture": false, "blockedPaymentMethods": ["TcnVVOKM", "ApTcWsFR", "UlWBp4gB"], "clientKey": "s9UufgsV", "dropInSettings": "bG6TUe3j", "liveEndpointUrlPrefix": "buQ7HMPO", "merchantAccount": "4ozK705y", "notificationHmacKey": "kRqSPYZg", "notificationPassword": "Pm4JLsXV", "notificationUsername": "tBOEetHs", "returnUrl": "xAJ8Ny1L", "settings": "RkPU9hrl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'TestAdyenConfig' test.out

#- 271 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "5nkpEdBe", "privateKey": "8bYWdok4", "publicKey": "UnUEOyP0", "returnUrl": "cPZf5Ovo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestAliPayConfig' test.out

#- 272 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "lfI0mqZc", "secretKey": "tohLheRa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestCheckoutConfig' test.out

#- 273 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DebugMatchedPaymentMerchantConfig' test.out

#- 274 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "QkfMLFW9", "clientSecret": "B7jHZro4", "returnUrl": "hhwnANAG", "webHookId": "p8zGqNGr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'TestPayPalConfig' test.out

#- 275 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["cQyoA1TW", "Pcy83iXf", "YXNdMkdg"], "publishableKey": "9TMwxNcQ", "secretKey": "6CkVi8fq", "webhookSecret": "VPRqNbF5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'TestStripeConfig' test.out

#- 276 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "yLnYSa8x", "key": "FLvcYexM", "mchid": "MMiDFh5R", "returnUrl": "bW021cHN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestWxPayConfig' test.out

#- 277 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "3QbzVuJZ", "flowCompletionUrl": "H3k54cEx", "merchantId": 48, "projectId": 14, "projectSecretKey": "WKtdGTW4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'TestXsollaConfig' test.out

#- 278 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'FILotv5y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentMerchantConfig' test.out

#- 279 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'cTa0i6if' \
    --body '{"allowedPaymentMethods": ["YP1zfgjs", "y3VRjX4q", "A4g9OGoW"], "apiKey": "w1qnCAvd", "authoriseAsCapture": false, "blockedPaymentMethods": ["Asd4ifGd", "0bkWrlht", "fTywRW4f"], "clientKey": "mg6btk3m", "dropInSettings": "AO4EtB0h", "liveEndpointUrlPrefix": "n2x1oTOX", "merchantAccount": "5gBQlVDx", "notificationHmacKey": "9neFHWhD", "notificationPassword": "RJtyYEt7", "notificationUsername": "ygZleAoU", "returnUrl": "uVKneoO1", "settings": "0ytPdJ8S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateAdyenConfig' test.out

#- 280 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'Y3qoogOx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestAdyenConfigById' test.out

#- 281 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'oPYvdIBJ' \
    --body '{"appId": "YyGURjEj", "privateKey": "nslEYM8n", "publicKey": "gVT1ewVx", "returnUrl": "vgAocOqs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdateAliPayConfig' test.out

#- 282 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'd5v5n7eX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestAliPayConfigById' test.out

#- 283 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'Co9gZWdx' \
    --body '{"publicKey": "fIdW8fNA", "secretKey": "M5YdHivK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateCheckoutConfig' test.out

#- 284 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '2Q0WwolQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestCheckoutConfigById' test.out

#- 285 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'y037hJMO' \
    --body '{"clientID": "Ev5W0v25", "clientSecret": "yAObZIbr", "returnUrl": "A8XAKKWM", "webHookId": "DebehSjp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdatePayPalConfig' test.out

#- 286 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    't0wrfWPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'TestPayPalConfigById' test.out

#- 287 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'aI1Jb75o' \
    --body '{"allowedPaymentMethodTypes": ["2MFOa6xg", "Pt69QROG", "DeJCyHvU"], "publishableKey": "snLvXCSg", "secretKey": "QHvs25ei", "webhookSecret": "QO3oWdgX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'UpdateStripeConfig' test.out

#- 288 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'dm1IxL1O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'TestStripeConfigById' test.out

#- 289 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'tleUBqBO' \
    --body '{"appId": "0Ze049k9", "key": "W6ZLVJzR", "mchid": "pUsITfVr", "returnUrl": "uDukun42"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'UpdateWxPayConfig' test.out

#- 290 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'zPZvOd4y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateWxPayConfigCert' test.out

#- 291 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'ZyMKyED3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'TestWxPayConfigById' test.out

#- 292 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'qDO5HXp5' \
    --body '{"apiKey": "oVkhESbH", "flowCompletionUrl": "Q7hvTlzf", "merchantId": 46, "projectId": 11, "projectSecretKey": "wQtVIYU8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdateXsollaConfig' test.out

#- 293 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '7NgjDMcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'TestXsollaConfigById' test.out

#- 294 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'xfMfYFlt' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'UpdateXsollaUIConfig' test.out

#- 295 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'QueryPaymentProviderConfig' test.out

#- 296 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "MiyBGygW", "region": "FTAY3Th5", "sandboxTaxJarApiToken": "mOwPCPKV", "specials": ["CHECKOUT", "ADYEN", "ALIPAY"], "taxJarApiToken": "WbtcJUxM", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'CreatePaymentProviderConfig' test.out

#- 297 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetAggregatePaymentProviders' test.out

#- 298 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'DebugMatchedPaymentProviderConfig' test.out

#- 299 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetSpecialPaymentProviders' test.out

#- 300 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'WyDkA5Lm' \
    --body '{"aggregate": "XSOLLA", "namespace": "BmSLi0R7", "region": "zDFMoNTQ", "sandboxTaxJarApiToken": "mlS8lMlY", "specials": ["CHECKOUT", "STRIPE", "CHECKOUT"], "taxJarApiToken": "urHix0QY", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'UpdatePaymentProviderConfig' test.out

#- 301 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'ZM7LkTVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DeletePaymentProviderConfig' test.out

#- 302 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentTaxConfig' test.out

#- 303 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "tVJZVhxC", "taxJarApiToken": "VdjPutJ8", "taxJarEnabled": false, "taxJarProductCodesMapping": {"iRfzJwKu": "c7EpiQEz", "z5N5osRY": "O7wbYh7q", "02W8tkTU": "RUFmqNc8"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'UpdatePaymentTaxConfig' test.out

#- 304 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'xhQqptcc' \
    'NorRls7E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'SyncPaymentOrders' test.out

#- 305 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetRootCategories' test.out

#- 306 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'DownloadCategories' test.out

#- 307 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'C3nDnhFv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetCategory' test.out

#- 308 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'DlFd7iyZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetChildCategories' test.out

#- 309 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'pvWVJFK6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetDescendantCategories' test.out

#- 310 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicListCurrencies' test.out

#- 311 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'GetIAPItemMapping' test.out

#- 312 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'ZuvlzGCI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetItemByAppId' test.out

#- 313 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicQueryItems' test.out

#- 314 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'I156hIg0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemBySku' test.out

#- 315 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'g8HIxpzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicBulkGetItems' test.out

#- 316 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["9AcFhH4Z", "lYY3rEuH", "MWwQNmCQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicValidateItemPurchaseCondition' test.out

#- 317 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'mGCF963C' \
    'bsOawlRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicSearchItems' test.out

#- 318 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'QJH6fNek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetApp' test.out

#- 319 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'hk077gxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetItemDynamicData' test.out

#- 320 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'j55huTA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetItem' test.out

#- 321 GetPaymentCustomization
eval_tap 0 321 'GetPaymentCustomization # SKIP deprecated' test.out

#- 322 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "AvmW0567", "paymentProvider": "XSOLLA", "returnUrl": "7wkY6nuU", "ui": "EGJ3k0HG", "zipCode": "tpK43uOR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetPaymentUrl' test.out

#- 323 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'GREOOwTu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetPaymentMethods' test.out

#- 324 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'Y8dhNCDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUnpaidPaymentOrder' test.out

#- 325 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'WpN3B6te' \
    --body '{"token": "dgFUzBm5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'Pay' test.out

#- 326 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'vGA3itKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicCheckPaymentOrderPaidStatus' test.out

#- 327 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    '9z3WWuv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetPaymentPublicConfig' test.out

#- 328 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'j8T9g1f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetQRCode' test.out

#- 329 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'P3D3rVcC' \
    '2g6t42jE' \
    'ADYEN' \
    'c44yjRdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicNormalizePaymentReturnUrl' test.out

#- 330 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'qZgv34Gq' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxValue' test.out

#- 331 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'AQaCaw9U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'GetRewardByCode' test.out

#- 332 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'QueryRewards1' test.out

#- 333 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'F7cdSDd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'GetReward1' test.out

#- 334 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicListStores' test.out

#- 335 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicExistsAnyMyActiveEntitlement' test.out

#- 336 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '9DQZ7vnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 337 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'x8HDXTJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 338 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'iyw17ogz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 339 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetEntitlementOwnershipToken' test.out

#- 340 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "mbj4SLYD", "language": "hcl_Mmwh-aR", "region": "YRn85brT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncTwitchDropsEntitlement' test.out

#- 341 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'u8F7cuCP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetMyWallet' test.out

#- 342 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'h1TGZJmg' \
    --body '{"epicGamesJwtToken": "WNHWnvOB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'SyncEpicGameDLC' test.out

#- 343 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'RCt4onqR' \
    --body '{"serviceLabel": 29}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicSyncPsnDlcInventory' test.out

#- 344 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'd7c94rEm' \
    --body '{"serviceLabels": [75, 14, 71]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 345 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'uAT5OAcU' \
    --body '{"appId": "wYHGmG5r", "steamId": "NDBF1oU3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'SyncSteamDLC' test.out

#- 346 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '7vjfyX5Y' \
    --body '{"xstsToken": "LaM0wmi0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'SyncXboxDLC' test.out

#- 347 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'i1WABBbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserEntitlements' test.out

#- 348 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '8IzZsMFL' \
    'X9ZhFXcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserAppEntitlementByAppId' test.out

#- 349 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'tfBS3ZIH' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserEntitlementsByAppType' test.out

#- 350 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'XYxGRJM9' \
    '2eX42WW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementByItemId' test.out

#- 351 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'WKf5urEO' \
    'pASBicX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlementBySku' test.out

#- 352 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'ZwzZ7aVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicExistsAnyUserActiveEntitlement' test.out

#- 353 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'rkmhSOEo' \
    'zGOv8D0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 354 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'Vxzrec5k' \
    'NwJAxm0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 355 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'dm9l6nIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 356 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'G5SilDDI' \
    'smj4h625' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 357 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'dIsMKWBx' \
    'F9RAIrI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserEntitlement' test.out

#- 358 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '1ZR2kNzh' \
    '60RQNaTE' \
    --body '{"options": ["hMXMepgz", "Y9jLiAdM", "iQ7eDMke"], "requestId": "BRMur18n", "useCount": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicConsumeUserEntitlement' test.out

#- 359 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'GMx5F6Eh' \
    'M3dKvIG9' \
    --body '{"requestId": "MR0hTINv", "useCount": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicSellUserEntitlement' test.out

#- 360 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'aoYAaCCe' \
    --body '{"code": "RgtstsU3", "language": "ESCs_XBrU_bT", "region": "TTOVf6jr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicRedeemCode' test.out

#- 361 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'r1OL606Q' \
    --body '{"excludeOldTransactions": true, "language": "dXH_197", "productId": "lH55RLEg", "receiptData": "eAsSpQdc", "region": "mGHZuRVQ", "transactionId": "8tzwqMay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicFulfillAppleIAPItem' test.out

#- 362 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'P8A3HGNI' \
    --body '{"epicGamesJwtToken": "3BfjkFd6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'SyncEpicGamesInventory' test.out

#- 363 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'MHo6gGQ5' \
    --body '{"autoAck": false, "language": "HAz", "orderId": "RFizqxCm", "packageName": "udSXivAL", "productId": "3n478mhb", "purchaseTime": 2, "purchaseToken": "I2yBJeCJ", "region": "ghTrk68F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicFulfillGoogleIAPItem' test.out

#- 364 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'WFzuLBdl' \
    --body '{"currencyCode": "rKjUbgZQ", "price": 0.09248844226108255, "productId": "w6Zys3mN", "serviceLabel": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicReconcilePlayStationStore' test.out

#- 365 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'fIcC9Ckh' \
    --body '{"currencyCode": "arfqaoMs", "price": 0.5317540911331466, "productId": "yv1RuSNd", "serviceLabels": [17, 50, 4]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 366 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'HBRUNCPS' \
    --body '{"appId": "re5GmZzC", "currencyCode": "QwilS3Ix", "language": "DJoL-MsLc", "price": 0.3723229661010524, "productId": "G9Lji2Vc", "region": "88W8aLjI", "steamId": "xVGpdOqg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncSteamInventory' test.out

#- 367 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'uxvRwI9Z' \
    --body '{"gameId": "BTipMRlh", "language": "Mexo", "region": "wJnV94Br"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'SyncTwitchDropsEntitlement1' test.out

#- 368 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'MSP31wAk' \
    --body '{"currencyCode": "VH75UcmN", "price": 0.8054161062829824, "productId": "K5RqcIo9", "xstsToken": "lpz9oM52"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'SyncXboxInventory' test.out

#- 369 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'vHPlwVV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicQueryUserOrders' test.out

#- 370 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'jlPKDEYa' \
    --body '{"currencyCode": "hnlLJaLC", "discountedPrice": 43, "ext": {"JHNg6TvN": {}, "GjwI4TbT": {}, "wBufUorJ": {}}, "itemId": "ouduhCEJ", "language": "Iblm_zizf_VN", "price": 32, "quantity": 93, "region": "LxVBcRkf", "returnUrl": "hRuqkOTH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCreateUserOrder' test.out

#- 371 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'Sia7oFd1' \
    'fEmDuyAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserOrder' test.out

#- 372 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'QGzwJR5p' \
    'oI718RQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicCancelUserOrder' test.out

#- 373 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'j4imu6XF' \
    'fRcWDXhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetUserOrderHistories' test.out

#- 374 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '1YmGeygr' \
    '2S4Yw8Nm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicDownloadUserOrderReceipt' test.out

#- 375 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'PaBeryzX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetPaymentAccounts' test.out

#- 376 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '2hOPVVFq' \
    'card' \
    'qxjq1iG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicDeletePaymentAccount' test.out

#- 377 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'TySOh8SI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicListActiveSections' test.out

#- 378 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '75oXbyq8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicQueryUserSubscriptions' test.out

#- 379 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'FBbur80Q' \
    --body '{"currencyCode": "wnlgAVfq", "itemId": "z6gQJh8s", "language": "vB_eMpb", "region": "ClGyzYgn", "returnUrl": "YTdim6Pk", "source": "Roq5TO65"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicSubscribeSubscription' test.out

#- 380 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'KWh8ztRJ' \
    'kXxUAj3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 381 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'zZvEaY10' \
    '3YUIMuSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserSubscription' test.out

#- 382 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'DHz0zPWM' \
    'ZQNNP2Jq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicChangeSubscriptionBillingAccount' test.out

#- 383 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'QqhISTBT' \
    '1Gofv4Su' \
    --body '{"immediate": false, "reason": "sq1l6xo0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicCancelSubscription' test.out

#- 384 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'D4JRbNqO' \
    '6IuP2PY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserSubscriptionBillingHistories' test.out

#- 385 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'hhX6uNah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicListViews' test.out

#- 386 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    '9JoHPj7j' \
    'FWxSv1lY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetWallet' test.out

#- 387 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ylYAiZ8c' \
    '7Zd7EUoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicListUserWalletTransactions' test.out

#- 388 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'QueryItems1' test.out

#- 389 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'ImportStore1' test.out

#- 390 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'zOLw8C1c' \
    --body '{"itemIds": ["5bBB3XZ7", "ColKwlsN", "vtFuunQs"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
