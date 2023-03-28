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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "EAxcVpFr", "appType": "GAME", "baseAppId": "I6LZrkq6", "boothName": "Dc09nIW0", "boundItemIds": ["ZPUdc0qh", "Oaiw9B0D", "7eHpzSn3"], "categoryPath": "4n8mzZ0m", "clazz": "8SAMTwE6", "createdAt": "1988-10-30T00:00:00Z", "description": "6IaRDBXx", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"aNoMR6hk": {}, "spInrAip": {}, "6lyzSxwE": {}}, "features": ["1Jub74CU", "kNmKJfh5", "lFHHdgs2"], "fresh": false, "images": [{"as": "kY1aXlFc", "caption": "DtgOjchI", "height": 42, "imageUrl": "Hs1cnz1J", "smallImageUrl": "SDgY1TXp", "width": 3}, {"as": "8zsCTCrb", "caption": "CbPOyNQk", "height": 93, "imageUrl": "6XM4OI18", "smallImageUrl": "mAQLnzjM", "width": 11}, {"as": "cXm7agSr", "caption": "jJW2OQNO", "height": 38, "imageUrl": "u2D6QVKN", "smallImageUrl": "CWP75TB0", "width": 18}], "itemId": "Fgx4c8Ou", "itemIds": ["mKtPDKJD", "Xn7Z4U68", "su8Xfqlq"], "itemQty": {"NiTvB6Sd": 55, "orKsxwko": 39, "Z5MecdKi": 58}, "itemType": "EXTENSION", "language": "8XfwHuKe", "listable": false, "localExt": {"Ezth6mXh": {}, "zkzWkFeZ": {}, "SoEAcBdW": {}}, "longDescription": "19m4eu6d", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 40, "itemId": "6C7duuyZ", "itemSku": "0GhDogqr", "itemType": "hBRd8lDR"}, {"count": 53, "itemId": "qVNPRZYd", "itemSku": "FLIAjGGJ", "itemType": "ddVCvu9v"}, {"count": 47, "itemId": "SevkLGMS", "itemSku": "0lyuI9a2", "itemType": "I9u6Vpbs"}], "name": "x5w8hqUI", "odds": 0.8444144295138901, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 92, "itemId": "pOXGSLmC", "itemSku": "VuHOPlLl", "itemType": "kvR8sKgn"}, {"count": 41, "itemId": "TeIv53HG", "itemSku": "CiljvjKo", "itemType": "yD6SCwGr"}, {"count": 27, "itemId": "FjkQsfCa", "itemSku": "Tmt1d67F", "itemType": "XGk2s9Q0"}], "name": "mPVo3twu", "odds": 0.8515712018765591, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 10, "itemId": "C6I3lMjG", "itemSku": "SWN2laRl", "itemType": "xfcjHfYa"}, {"count": 21, "itemId": "MbwL6IY6", "itemSku": "9z1UaLqY", "itemType": "SYWytLPz"}, {"count": 18, "itemId": "yYoNRKd3", "itemSku": "IL5TAQ6i", "itemType": "iPlSC2uE"}], "name": "4o5Vwdo3", "odds": 0.09427513649391428, "type": "PROBABILITY_GROUP", "weight": 33}], "rollFunction": "DEFAULT"}, "maxCount": 4, "maxCountPerUser": 70, "name": "UmLZZbSq", "namespace": "b8RwNmn9", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "VAla2l5B", "itemSku": "YNtIuS5S", "itemType": "5XUdjsoq"}, {"count": 45, "itemId": "OcEdscKH", "itemSku": "PEqgA8yu", "itemType": "7Vk6Jt4Y"}, {"count": 25, "itemId": "hZv15T7q", "itemSku": "uIOvBMca", "itemType": "YmvCkGZ5"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "includes", "name": "yCUEXlAv", "predicateType": "SeasonPassPredicate", "value": "oxozr6wf", "values": ["jJCSQT27", "NPX2bOIt", "RMvqtlB2"]}, {"anyOf": 3, "comparison": "excludes", "name": "YGu0rdlg", "predicateType": "EntitlementPredicate", "value": "RBaAkLnv", "values": ["mDc3fxU8", "MyKrQpM4", "xkT1X68c"]}, {"anyOf": 16, "comparison": "isNot", "name": "kkK6KKXN", "predicateType": "SeasonPassPredicate", "value": "3xoJ8aeC", "values": ["4YUDjasW", "naLpUKp4", "IPUvmEej"]}]}, {"operator": "or", "predicates": [{"anyOf": 35, "comparison": "includes", "name": "kILsSSyD", "predicateType": "EntitlementPredicate", "value": "rvjj7il3", "values": ["MNqq98Sj", "TvhZNkSQ", "5MXbN9oC"]}, {"anyOf": 60, "comparison": "excludes", "name": "6BXksUC9", "predicateType": "EntitlementPredicate", "value": "z1x3poD3", "values": ["Q1MzH7Qm", "8bwbmXgd", "Qgb3boLQ"]}, {"anyOf": 55, "comparison": "is", "name": "VJf6c2Z0", "predicateType": "SeasonTierPredicate", "value": "AFKK2WDg", "values": ["CcxvONZm", "3EeERmDn", "yeFoF7VS"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JbRFQSKV", "predicateType": "SeasonTierPredicate", "value": "Tb3g7mSQ", "values": ["qU6YE3p4", "UhAEtrmj", "lSck0ZHn"]}, {"anyOf": 92, "comparison": "isNot", "name": "I39YBHqa", "predicateType": "SeasonTierPredicate", "value": "XlvPG6bF", "values": ["YReVHQip", "cCx9Zw5D", "2L7vIYhG"]}, {"anyOf": 67, "comparison": "includes", "name": "yEW4ZJJ4", "predicateType": "SeasonTierPredicate", "value": "d3PBddN8", "values": ["S48l9lyN", "ApflxqMr", "j3oZk03Q"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 51, "fixedTrialCycles": 74, "graceDays": 69}, "region": "MDYDDxHS", "regionData": [{"currencyCode": "ZjtqXyJ5", "currencyNamespace": "8f7Gc26S", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-02-11T00:00:00Z", "discountedPrice": 21, "expireAt": "1997-07-16T00:00:00Z", "price": 47, "purchaseAt": "1972-07-27T00:00:00Z", "trialPrice": 46}, {"currencyCode": "fTcyiuAT", "currencyNamespace": "us9hsfpF", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-08-26T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1982-09-24T00:00:00Z", "discountedPrice": 39, "expireAt": "1971-07-13T00:00:00Z", "price": 80, "purchaseAt": "1987-10-03T00:00:00Z", "trialPrice": 67}, {"currencyCode": "yPLtI8il", "currencyNamespace": "byDPUIj8", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1995-02-05T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1976-01-25T00:00:00Z", "discountedPrice": 32, "expireAt": "1979-05-05T00:00:00Z", "price": 59, "purchaseAt": "1999-06-03T00:00:00Z", "trialPrice": 26}], "saleConfig": {"currencyCode": "81P1ktfI", "price": 29}, "seasonType": "PASS", "sellable": true, "sku": "eIP6rOvD", "stackable": true, "status": "ACTIVE", "tags": ["yjlBiuFM", "KOsb392k", "6YmJFfRB"], "targetCurrencyCode": "3FIoVk8T", "targetItemId": "3GpAnkCm", "targetNamespace": "BUqg2SCn", "thumbnailUrl": "qntX9y1a", "title": "ZSWMiVi1", "updatedAt": "1998-09-29T00:00:00Z", "useCount": 37}, "namespace": "RuPMMWH8", "order": {"currency": {"currencyCode": "Yb33T5UB", "currencySymbol": "JCjfcnLR", "currencyType": "REAL", "decimals": 14, "namespace": "xeCSz9WE"}, "ext": {"i8KlloeH": {}, "0JT1ydua": {}, "t2vQR3bi": {}}, "free": true}, "source": "REFERRAL_BONUS"}, "script": "fsu4jmsR", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-create-item 'ocVTd4Bx' --body '{"appId": "qGWV6mTJ", "appType": "SOFTWARE", "baseAppId": "sQs6XNbj", "boothName": "vqhnUVLW", "categoryPath": "u8olKdxL", "clazz": "6ozRmDD0", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"X7kPBom8": {}, "F9GLLTG8": {}, "phc3n4iL": {}}, "features": ["2pqiXJF3", "oIllKlpO", "WGRaoQom"], "images": [{"as": "SJC4DdrK", "caption": "F7SUQPLG", "height": 35, "imageUrl": "e0k5ZtX6", "smallImageUrl": "wK7PpUlc", "width": 70}, {"as": "bGIVIu8v", "caption": "vwLc7KY3", "height": 41, "imageUrl": "1WoVeJIe", "smallImageUrl": "PF8ZrQzP", "width": 51}, {"as": "7lGdMiHK", "caption": "xbWCYzo8", "height": 51, "imageUrl": "1pyVwyKQ", "smallImageUrl": "LY6FEO65", "width": 89}], "itemIds": ["s6ghP1y4", "Zi7s7QBl", "k44Z44B1"], "itemQty": {"GZgKg4uK": 47, "db60ufPp": 53, "3brWdTYC": 11}, "itemType": "CODE", "listable": false, "localizations": {"f4jvapse": {"description": "E9LN9bvh", "localExt": {"OrHflIOd": {}, "6X3viLvt": {}, "Ek4mTIpU": {}}, "longDescription": "A9gxo8SV", "title": "38nEhoXm"}, "M2W7l6jH": {"description": "MA2rG3na", "localExt": {"kopAywel": {}, "u01nryEJ": {}, "0NqoTow0": {}}, "longDescription": "qiOiC4j0", "title": "iktm0ZPL"}, "kLOsp0LZ": {"description": "5njN86Hl", "localExt": {"8kUXzt6b": {}, "Sc6bWvgp": {}, "VyW9dD1k": {}}, "longDescription": "OmvrAejc", "title": "q2LgkQua"}}, "lootBoxConfig": {"rewardCount": 91, "rewards": [{"lootBoxItems": [{"count": 52, "itemId": "7RBx3vim", "itemSku": "02jBOxrZ", "itemType": "DyvpcLYO"}, {"count": 99, "itemId": "PML52faX", "itemSku": "Ur9Sk4lq", "itemType": "2faBcAXX"}, {"count": 75, "itemId": "ngJOUn18", "itemSku": "G5MlfDTk", "itemType": "8aG40Nln"}], "name": "cceIZSwg", "odds": 0.4318654797298953, "type": "REWARD_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 20, "itemId": "pEY8Vnoc", "itemSku": "GAjci0V3", "itemType": "tBf2jnHG"}, {"count": 75, "itemId": "CqQpQ2Fb", "itemSku": "KPFMycMS", "itemType": "Q4qfAacR"}, {"count": 77, "itemId": "6OCaGBeM", "itemSku": "fPlNos4y", "itemType": "BRjrERHE"}], "name": "onAZR8Gm", "odds": 0.4900015811729306, "type": "REWARD", "weight": 88}, {"lootBoxItems": [{"count": 54, "itemId": "q1p6QCyY", "itemSku": "6vSkVFWd", "itemType": "sbYuVEGV"}, {"count": 49, "itemId": "uDXSxSc3", "itemSku": "aZPV87pn", "itemType": "a08gxefT"}, {"count": 89, "itemId": "KhuxaEc7", "itemSku": "M4P7UckS", "itemType": "C6ePeN8i"}], "name": "4GrFES9z", "odds": 0.956200218515806, "type": "REWARD", "weight": 42}], "rollFunction": "DEFAULT"}, "maxCount": 9, "maxCountPerUser": 54, "name": "HpATHcce", "optionBoxConfig": {"boxItems": [{"count": 8, "itemId": "akMpcmnn", "itemSku": "x6RVBrop", "itemType": "9v7aZK3h"}, {"count": 0, "itemId": "hbN15zfQ", "itemSku": "SfQrtfF3", "itemType": "TQN0OcND"}, {"count": 77, "itemId": "kepEaC4d", "itemSku": "fiOMZfEh", "itemType": "Hr39pysF"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 14, "fixedTrialCycles": 4, "graceDays": 11}, "regionData": {"1BZG99Ly": [{"currencyCode": "vfvHEsJK", "currencyNamespace": "QQewVLMU", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1984-04-20T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1976-12-27T00:00:00Z", "discountedPrice": 84, "expireAt": "1972-11-25T00:00:00Z", "price": 61, "purchaseAt": "1978-09-01T00:00:00Z", "trialPrice": 45}, {"currencyCode": "FUjfIGaf", "currencyNamespace": "foflEIBy", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1987-02-02T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1983-11-19T00:00:00Z", "discountedPrice": 66, "expireAt": "1998-04-10T00:00:00Z", "price": 26, "purchaseAt": "1973-09-26T00:00:00Z", "trialPrice": 62}, {"currencyCode": "elYF5wWa", "currencyNamespace": "DhukU4kh", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1993-09-27T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1972-02-14T00:00:00Z", "discountedPrice": 64, "expireAt": "1978-04-19T00:00:00Z", "price": 95, "purchaseAt": "1992-01-15T00:00:00Z", "trialPrice": 22}], "tPErqxyM": [{"currencyCode": "yOK06MqQ", "currencyNamespace": "BErxgjVB", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1972-06-25T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1997-08-26T00:00:00Z", "discountedPrice": 61, "expireAt": "1992-02-25T00:00:00Z", "price": 4, "purchaseAt": "1978-04-13T00:00:00Z", "trialPrice": 82}, {"currencyCode": "RDcrg0Dj", "currencyNamespace": "QjBECXve", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1988-04-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1986-03-12T00:00:00Z", "discountedPrice": 22, "expireAt": "1982-10-16T00:00:00Z", "price": 49, "purchaseAt": "1987-07-08T00:00:00Z", "trialPrice": 90}, {"currencyCode": "ElpMYSWI", "currencyNamespace": "eVzm7z9n", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1982-04-10T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1976-02-05T00:00:00Z", "discountedPrice": 93, "expireAt": "1977-10-12T00:00:00Z", "price": 63, "purchaseAt": "1990-02-28T00:00:00Z", "trialPrice": 29}], "CFkIf5we": [{"currencyCode": "qZ18MH57", "currencyNamespace": "l2Zsrh90", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1994-11-18T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1991-02-23T00:00:00Z", "discountedPrice": 25, "expireAt": "1977-09-24T00:00:00Z", "price": 20, "purchaseAt": "1981-02-06T00:00:00Z", "trialPrice": 20}, {"currencyCode": "4akncw7w", "currencyNamespace": "u9TmXfJW", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1992-05-21T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1983-02-24T00:00:00Z", "discountedPrice": 60, "expireAt": "1991-04-15T00:00:00Z", "price": 38, "purchaseAt": "1986-03-25T00:00:00Z", "trialPrice": 9}, {"currencyCode": "dZ9bpjb1", "currencyNamespace": "tdA3QhjC", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1989-03-13T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1974-06-04T00:00:00Z", "discountedPrice": 15, "expireAt": "1979-10-10T00:00:00Z", "price": 74, "purchaseAt": "1975-12-07T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "lXn77AtY", "price": 29}, "seasonType": "PASS", "sellable": true, "sku": "zLAATPY8", "stackable": true, "status": "INACTIVE", "tags": ["xevecWw7", "Rry0KK5r", "3cfoivvQ"], "targetCurrencyCode": "gAGO0dW8", "targetNamespace": "rX2MVUGK", "thumbnailUrl": "SZ4GcLkt", "useCount": 70}' --login_with_auth "Bearer foo"
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
platform-update-item 'THJe4BhS' 'SQkQD6Wm' --body '{"appId": "Ot6D7ufF", "appType": "DLC", "baseAppId": "TOhvQpfb", "boothName": "Bke8aEdd", "categoryPath": "36xj6wyS", "clazz": "oltDxsbz", "displayOrder": 47, "entitlementType": "DURABLE", "ext": {"mcMdiS76": {}, "YApGJ9uf": {}, "wLYkqIgL": {}}, "features": ["yiEtOAbp", "eUNf26Uq", "uZS6hsQr"], "images": [{"as": "kCfgCUYB", "caption": "n2xaOBdP", "height": 64, "imageUrl": "m3XEwP2b", "smallImageUrl": "4gd3xOei", "width": 18}, {"as": "5S3DvPRC", "caption": "zBrVUxmD", "height": 83, "imageUrl": "ABeGs9yx", "smallImageUrl": "ahld1pO0", "width": 67}, {"as": "Cm4fZWuk", "caption": "6pQxDQpK", "height": 33, "imageUrl": "zZ3Fbtxf", "smallImageUrl": "hcRC7IVY", "width": 0}], "itemIds": ["BsaIecRx", "IsZvD6rm", "zVr5XT1N"], "itemQty": {"xw0v1dMQ": 50, "Rrbk6C2c": 98, "XIZRW491": 8}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"6ApCD2VX": {"description": "idT7w0Oc", "localExt": {"15N8WXBP": {}, "p17PAewq": {}, "Sm5x3B4t": {}}, "longDescription": "7WQnp8jX", "title": "Zedgt5cy"}, "Ne27HLtw": {"description": "tVOaxgP6", "localExt": {"Jbct8puM": {}, "ybYGxD9I": {}, "PmmsLmu3": {}}, "longDescription": "kaPj0O4z", "title": "d8Tb7cUN"}, "GPTBxiFF": {"description": "Crn7djjs", "localExt": {"69FTFVGU": {}, "VhvKhJCm": {}, "eisql14m": {}}, "longDescription": "UHVbMPim", "title": "NhcZsU3V"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 6, "itemId": "h23GUS2a", "itemSku": "mU7syGlE", "itemType": "lXdEAOrV"}, {"count": 92, "itemId": "iWXade41", "itemSku": "s3rH34mB", "itemType": "2yPlRpWj"}, {"count": 25, "itemId": "HbiQ5duE", "itemSku": "5p4cfs2E", "itemType": "41cK8QTw"}], "name": "iIAvxSvN", "odds": 0.4697691681496402, "type": "PROBABILITY_GROUP", "weight": 82}, {"lootBoxItems": [{"count": 25, "itemId": "Dbi9Bzup", "itemSku": "BsFpYc77", "itemType": "GtRUcCFe"}, {"count": 20, "itemId": "5g4XgBsb", "itemSku": "fzqxBPNe", "itemType": "8ae1Il4a"}, {"count": 54, "itemId": "QLYXxm09", "itemSku": "wpGAbpEm", "itemType": "DY9vLh3u"}], "name": "6EDsUmrV", "odds": 0.9418021892270804, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 72, "itemId": "4OotKwG3", "itemSku": "UC6XCnnZ", "itemType": "xF8CmQr1"}, {"count": 74, "itemId": "W65br34r", "itemSku": "BBN9tU6T", "itemType": "Dm5GloFS"}, {"count": 75, "itemId": "87t0ldWf", "itemSku": "7iSGIiKF", "itemType": "tWtn4Yr2"}], "name": "svKM6pqL", "odds": 0.5281422784637858, "type": "REWARD_GROUP", "weight": 93}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 42, "name": "jELAUK6m", "optionBoxConfig": {"boxItems": [{"count": 87, "itemId": "1li3Bg7J", "itemSku": "xc9pUnZm", "itemType": "vhidwCkZ"}, {"count": 46, "itemId": "vXO6aj4h", "itemSku": "CmTC34jx", "itemType": "W4pIDwdq"}, {"count": 99, "itemId": "pmRmut9H", "itemSku": "9XyWI8bp", "itemType": "8fQxRuX9"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 56, "fixedTrialCycles": 25, "graceDays": 13}, "regionData": {"trHJbEGT": [{"currencyCode": "Uj7YjERL", "currencyNamespace": "1rEQG02z", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1972-01-22T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1986-10-23T00:00:00Z", "discountedPrice": 45, "expireAt": "1987-06-23T00:00:00Z", "price": 76, "purchaseAt": "1980-07-21T00:00:00Z", "trialPrice": 100}, {"currencyCode": "VRafCjOu", "currencyNamespace": "SYht83Ad", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1985-12-28T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1980-12-30T00:00:00Z", "discountedPrice": 61, "expireAt": "1974-07-08T00:00:00Z", "price": 93, "purchaseAt": "1981-03-11T00:00:00Z", "trialPrice": 83}, {"currencyCode": "RJ8daGTV", "currencyNamespace": "X3Bb7jlz", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "discountedPrice": 75, "expireAt": "1975-11-22T00:00:00Z", "price": 71, "purchaseAt": "1992-07-26T00:00:00Z", "trialPrice": 25}], "jOa8E7wY": [{"currencyCode": "76PxLv9H", "currencyNamespace": "BEUe89Aw", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1982-02-27T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1977-11-29T00:00:00Z", "discountedPrice": 67, "expireAt": "1995-09-15T00:00:00Z", "price": 66, "purchaseAt": "1978-10-29T00:00:00Z", "trialPrice": 39}, {"currencyCode": "tx4XLKAm", "currencyNamespace": "lDr19uJ3", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1979-10-29T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1977-02-02T00:00:00Z", "discountedPrice": 27, "expireAt": "1980-07-27T00:00:00Z", "price": 98, "purchaseAt": "1979-08-23T00:00:00Z", "trialPrice": 30}, {"currencyCode": "cI8y3Cz0", "currencyNamespace": "YqCKUh5R", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "discountedPrice": 61, "expireAt": "1979-05-10T00:00:00Z", "price": 19, "purchaseAt": "1993-03-03T00:00:00Z", "trialPrice": 30}], "nFpnQ5xF": [{"currencyCode": "9wwbvMZy", "currencyNamespace": "eDeRnVfP", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1983-06-06T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1992-08-05T00:00:00Z", "discountedPrice": 56, "expireAt": "1987-01-22T00:00:00Z", "price": 11, "purchaseAt": "1979-04-07T00:00:00Z", "trialPrice": 9}, {"currencyCode": "wZpFIYeA", "currencyNamespace": "g79HcLJX", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "discountedPrice": 8, "expireAt": "1973-06-15T00:00:00Z", "price": 93, "purchaseAt": "1987-08-06T00:00:00Z", "trialPrice": 18}, {"currencyCode": "aUyrdt4X", "currencyNamespace": "SpWBAets", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1978-02-26T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1981-05-17T00:00:00Z", "discountedPrice": 28, "expireAt": "1992-01-05T00:00:00Z", "price": 29, "purchaseAt": "1973-07-18T00:00:00Z", "trialPrice": 90}]}, "saleConfig": {"currencyCode": "frtbECD1", "price": 58}, "seasonType": "TIER", "sellable": false, "sku": "AxJrINPX", "stackable": false, "status": "INACTIVE", "tags": ["6tvKgLB9", "pPNO3Afm", "XcgwC3IN"], "targetCurrencyCode": "QmJIOq9d", "targetNamespace": "P5szG71u", "thumbnailUrl": "tjsQ4CrR", "useCount": 2}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'dgQ0JWZj' 'NRSzOTqc' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 48, "comparison": "excludes", "name": "vaUoXDmw", "predicateType": "EntitlementPredicate", "value": "sukxncuD", "values": ["3QxCXMd0", "mM45mfIZ", "0YBWCaVV"]}, {"anyOf": 37, "comparison": "isGreaterThanOrEqual", "name": "WhkS476d", "predicateType": "SeasonTierPredicate", "value": "h4IjDq9a", "values": ["T3qZyI0r", "YsWucAkX", "sVJbXi7e"]}, {"anyOf": 88, "comparison": "includes", "name": "Za7WwIc8", "predicateType": "SeasonPassPredicate", "value": "5ImqK6tV", "values": ["saUq3stU", "h5J5Z9Gi", "BiSAylX5"]}]}, {"operator": "and", "predicates": [{"anyOf": 28, "comparison": "includes", "name": "Ns0QJQea", "predicateType": "SeasonTierPredicate", "value": "ytPfds1B", "values": ["df8ZyyZe", "Yx0EaURy", "HAWGgJUb"]}, {"anyOf": 95, "comparison": "is", "name": "bkcTglbU", "predicateType": "EntitlementPredicate", "value": "6FyOjApN", "values": ["HBVfNOUR", "oTynmfIu", "cjY3YYT9"]}, {"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "WgJTNFfM", "predicateType": "SeasonPassPredicate", "value": "M0IW4oe8", "values": ["8TIP1LKi", "AcNg14Ws", "KDgy0xZf"]}]}, {"operator": "and", "predicates": [{"anyOf": 87, "comparison": "isNot", "name": "oLDvumfq", "predicateType": "SeasonPassPredicate", "value": "iKhDcJ7T", "values": ["8aOTGMud", "uppUxDSK", "CcNIsQ3P"]}, {"anyOf": 4, "comparison": "isLessThan", "name": "xlCV4cNb", "predicateType": "SeasonTierPredicate", "value": "RRiLilmO", "values": ["bdRXTGIr", "IVIjMcdl", "GF6dLLIe"]}, {"anyOf": 6, "comparison": "isGreaterThan", "name": "5gJPqTAj", "predicateType": "EntitlementPredicate", "value": "vvDgw0ag", "values": ["7kSWE0Hi", "iEXqvUWD", "qm5IuLry"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-get-payment-callback-config-1 --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "2NKy59X8", "eventTopic": "iOg2sVBi", "maxAwarded": 58, "maxAwardedPerUser": 28, "namespaceExpression": "1lHvv9rq", "rewardCode": "vEoM8YmV", "rewardConditions": [{"condition": "jAkO3HKs", "conditionName": "Ep6KlqwW", "eventName": "4djrexcb", "rewardItems": [{"duration": 68, "itemId": "L81lsR7x", "quantity": 48}, {"duration": 91, "itemId": "44RctmTo", "quantity": 52}, {"duration": 59, "itemId": "HzYviTgY", "quantity": 25}]}, {"condition": "alHmqBBf", "conditionName": "i7sSF5Bo", "eventName": "GiTCVsXs", "rewardItems": [{"duration": 50, "itemId": "6Gsvvdl8", "quantity": 20}, {"duration": 68, "itemId": "tdsJQeJ1", "quantity": 40}, {"duration": 96, "itemId": "oo0qvxph", "quantity": 93}]}, {"condition": "ZaMphKCq", "conditionName": "Tq3EVheJ", "eventName": "joEEXBLI", "rewardItems": [{"duration": 48, "itemId": "mylT1Ytx", "quantity": 70}, {"duration": 33, "itemId": "WWPvvCiC", "quantity": 11}, {"duration": 71, "itemId": "33ViEdqQ", "quantity": 31}]}], "userIdExpression": "hxSWLWLN"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'k5UcPAGv' --login_with_auth "Bearer foo"
platform-update-reward '6c1ESC6h' --body '{"description": "ZYTYZbzf", "eventTopic": "5aANNNs5", "maxAwarded": 21, "maxAwardedPerUser": 57, "namespaceExpression": "gSZZNUHb", "rewardCode": "IT9szApm", "rewardConditions": [{"condition": "WJO5vzzX", "conditionName": "Zj08a6K1", "eventName": "XRVfriSp", "rewardItems": [{"duration": 86, "itemId": "ZSJPOIKr", "quantity": 89}, {"duration": 28, "itemId": "BrYVzi9u", "quantity": 17}, {"duration": 27, "itemId": "3lvozTt9", "quantity": 94}]}, {"condition": "36bqS2oF", "conditionName": "Y76PU1Az", "eventName": "iBOHEAj1", "rewardItems": [{"duration": 4, "itemId": "kDcos5uV", "quantity": 72}, {"duration": 2, "itemId": "0BJfZ0jv", "quantity": 55}, {"duration": 71, "itemId": "54CSqZFD", "quantity": 39}]}, {"condition": "3by2kYSC", "conditionName": "dnFKLc0x", "eventName": "cTjqjdcE", "rewardItems": [{"duration": 10, "itemId": "85bdYUum", "quantity": 85}, {"duration": 100, "itemId": "KVSZCg3X", "quantity": 92}, {"duration": 4, "itemId": "c9vQe0dH", "quantity": 72}]}], "userIdExpression": "o86cSRL9"}' --login_with_auth "Bearer foo"
platform-delete-reward 'cgbUmulh' --login_with_auth "Bearer foo"
platform-check-event-condition 'e98oaFKl' --body '{"payload": {"QicdrxVh": {}, "rtwSd9QW": {}, "VMYz7TU1": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'TsxsChSc' --body '{"conditionName": "lSkb5aBi", "userId": "9K9zyv6g"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'FZXI5nXJ' --body '{"active": false, "displayOrder": 15, "endDate": "1975-11-05T00:00:00Z", "ext": {"C56pda3Y": {}, "htQxpCYM": {}, "E6x21pdX": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 87, "itemCount": 35, "rule": "SEQUENCE"}, "items": [{"id": "PAd9sxoL", "sku": "nWGP1Paf"}, {"id": "IjLX8ce0", "sku": "KbNN7Ycl"}, {"id": "2JfmQplv", "sku": "GjVQ4aeb"}], "localizations": {"jfgGu472": {"description": "oWJlfglL", "localExt": {"M4xjfkNL": {}, "4lU6jaGf": {}, "sD1cfswm": {}}, "longDescription": "eFpvtDte", "title": "toQVFL8L"}, "NW11vtpa": {"description": "Txi7k489", "localExt": {"jRCn48bv": {}, "kCPfKofw": {}, "XOIZZQAJ": {}}, "longDescription": "za84lKKm", "title": "VOaTS6xB"}, "bNrSUAW2": {"description": "ak7ISDrB", "localExt": {"Vg6NuDZv": {}, "Pb1kuUfN": {}, "fUDe4g7q": {}}, "longDescription": "6PHEaqbz", "title": "HvDDl1ji"}}, "name": "Lw3XMGBA", "rotationType": "NONE", "startDate": "1994-08-30T00:00:00Z", "viewId": "Exlkmc4x"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'YiLjLyZr' --login_with_auth "Bearer foo"
platform-get-section 'Xr9Bhtzn' --login_with_auth "Bearer foo"
platform-update-section '8jAdTn6x' 'BhrciryL' --body '{"active": false, "displayOrder": 46, "endDate": "1998-11-05T00:00:00Z", "ext": {"rkadH5Y4": {}, "1SLjCPrF": {}, "a05Xl5TP": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 64, "itemCount": 29, "rule": "SEQUENCE"}, "items": [{"id": "DS44bmm7", "sku": "jPdKLddf"}, {"id": "dsUqjXVz", "sku": "W1QqxnWR"}, {"id": "5sheLgsA", "sku": "F4ctv5gu"}], "localizations": {"ycGiq9j2": {"description": "EyIknfLD", "localExt": {"pgHnMOn8": {}, "nc3gUZ8Z": {}, "FyyEr0KB": {}}, "longDescription": "XuJBqK4Q", "title": "tEydPWLP"}, "BYiR3UbJ": {"description": "c1ZYapx7", "localExt": {"C477etqg": {}, "fOJDUT0u": {}, "KAPrARya": {}}, "longDescription": "2IMlNiXp", "title": "F4qvsUUp"}, "Hqi33TcB": {"description": "Gkc0HjUc", "localExt": {"nkpU9oVz": {}, "l2kBuLFX": {}, "IeCEKZUT": {}}, "longDescription": "z3GvCAZ5", "title": "j24acYHb"}}, "name": "rryHB6GO", "rotationType": "NONE", "startDate": "1984-12-06T00:00:00Z", "viewId": "jzMO3Afm"}' --login_with_auth "Bearer foo"
platform-delete-section 'OS5mQNyR' 'PZFPNP56' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "l1AT6OLK", "defaultRegion": "mZhCZxxP", "description": "PdPwOtEu", "supportedLanguages": ["WBSO2jJe", "pUnEEgja", "2mIE2kLT"], "supportedRegions": ["nJwc5Xmk", "CuL5W4tK", "t6G3j9LY"], "title": "dG7xVPqB"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'qe9RDQMB' --login_with_auth "Bearer foo"
platform-update-store 'SYAFLqp8' --body '{"defaultLanguage": "PF5hCcou", "defaultRegion": "kWpnbz4y", "description": "s7j6lxuU", "supportedLanguages": ["3u2HEG0q", "fKegvFTD", "1sPykS8Y"], "supportedRegions": ["LmwtYgWG", "cA0h4G1L", "Z1HaX5UB"], "title": "MbsF44VT"}' --login_with_auth "Bearer foo"
platform-delete-store 'sLDRzdq2' --login_with_auth "Bearer foo"
platform-query-changes '2cbnyK3g' --login_with_auth "Bearer foo"
platform-publish-all 'gFDh2kaZ' --login_with_auth "Bearer foo"
platform-publish-selected 'P7pnnVfx' --login_with_auth "Bearer foo"
platform-select-all-records 'Pwc259HF' --login_with_auth "Bearer foo"
platform-get-statistic '9ejHaILQ' --login_with_auth "Bearer foo"
platform-unselect-all-records 'ruAuYyJL' --login_with_auth "Bearer foo"
platform-select-record 'YGqMv824' 'ouSgkpK7' --login_with_auth "Bearer foo"
platform-unselect-record '0uJmUL0u' 'zElixc02' --login_with_auth "Bearer foo"
platform-clone-store '3dIvDiA0' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'tQWlHwBc' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'Ttztx3VA' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'l6tXFbnA' --body '{"orderNo": "TCzUOIzV"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'cy9k3ie6' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '4Vnwa0Cl' --body '{"count": 66, "orderNo": "v5P5Cj8h"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'gFsqHC9h' --body '{"achievements": [{"id": "5JPiMEtg", "value": 74}, {"id": "sa9YD92C", "value": 45}, {"id": "0rITajpw", "value": 69}], "steamUserId": "VGcRAn51"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'rVAQSxp4' 'qTB54mKA' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '3V9DKlCe' --body '{"achievements": [{"id": "Z7mLYsHo", "value": 29}, {"id": "r916GPrh", "value": 27}, {"id": "cIOJPS3l", "value": 72}], "serviceConfigId": "kQJAtDUH", "titleId": "9tx60Aeh", "xboxUserId": "Gz1ermJY"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'XsYgL7Tf' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'yIlAwjTZ' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'dRZJJzWZ' --login_with_auth "Bearer foo"
platform-anonymize-integration 'wvTX2bam' --login_with_auth "Bearer foo"
platform-anonymize-order 'SCvX1nwv' --login_with_auth "Bearer foo"
platform-anonymize-payment 'SWdDwD7W' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'JHzgNZUK' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'sI5y0mR3' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'zMyTsftK' --login_with_auth "Bearer foo"
platform-get-user-dlc 'qnsIJctA' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'pdOzg3hr' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '6ucHf7db' --body '[{"endDate": "1974-02-22T00:00:00Z", "grantedCode": "2iKNUl0q", "itemId": "JqzoKMRM", "itemNamespace": "G541PAiN", "language": "vm-pD", "quantity": 41, "region": "LMUaDSww", "source": "IAP", "startDate": "1978-11-26T00:00:00Z", "storeId": "JH4n0Jtg"}, {"endDate": "1979-02-13T00:00:00Z", "grantedCode": "zZv5kVu4", "itemId": "S95mj8YR", "itemNamespace": "vae4f4lh", "language": "oqn", "quantity": 70, "region": "rbWEm8bV", "source": "PURCHASE", "startDate": "1978-04-24T00:00:00Z", "storeId": "cfVCPdQh"}, {"endDate": "1975-04-12T00:00:00Z", "grantedCode": "XJvtggDd", "itemId": "XjbdjMBa", "itemNamespace": "hFZZGMTc", "language": "HOy_410", "quantity": 44, "region": "FBUsnnDJ", "source": "OTHER", "startDate": "1988-04-13T00:00:00Z", "storeId": "1sdH2RIJ"}]' --login_with_auth "Bearer foo"
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
platform-revoke-user-entitlements 'lMQl9RLr' 'thbfp0Vg' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'weLlT2sY' '3SsTnDQY' --login_with_auth "Bearer foo"
platform-update-user-entitlement '7kKU2u06' 'Q4veujxt' --body '{"endDate": "1983-05-15T00:00:00Z", "nullFieldList": ["QENvJrBC", "qeg67d4R", "WOqO4U0b"], "startDate": "1975-02-14T00:00:00Z", "status": "INACTIVE", "useCount": 72}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'NQLzwRoW' 'nR0AbkCP' --body '{"options": ["Y70Fmvvi", "VIBbcujF", "8Vk5qb8N"], "requestId": "hWWwaxyM", "useCount": 5}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'LCgOOPXM' '6XTUh2dJ' --login_with_auth "Bearer foo"
platform-enable-user-entitlement '90yqHDNa' 'cl4F9G6D' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'l5TFwBY6' 'HKXAblkT' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement '8VGgSH8M' 'GZGwiVj7' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'eDTaka9A' 'BfX1IByP' --body '{"requestId": "EOuPhGsp", "useCount": 89}' --login_with_auth "Bearer foo"
platform-fulfill-item '13b6o5uB' --body '{"duration": 56, "endDate": "1996-10-18T00:00:00Z", "itemId": "M6IHy7EE", "itemSku": "vHyLmcvr", "language": "ZZOdwe1x", "order": {"currency": {"currencyCode": "8RjU6Bi8", "currencySymbol": "JXE52sUB", "currencyType": "VIRTUAL", "decimals": 13, "namespace": "q2SimQQo"}, "ext": {"Lbe5YOJv": {}, "xGRxUzrT": {}, "wagH7BMT": {}}, "free": true}, "orderNo": "IZKTdNFV", "origin": "System", "quantity": 74, "region": "Q1crBXAu", "source": "OTHER", "startDate": "1989-07-30T00:00:00Z", "storeId": "kRGB8jqJ"}' --login_with_auth "Bearer foo"
platform-redeem-code 'Ed6eqqsB' --body '{"code": "VyONV0JR", "language": "XOm_PLgI-159", "region": "BXw5uBYe"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'QZOzATNS' --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "E9yyNb7y", "namespace": "aLXzAVYy"}, "item": {"itemId": "mOuhCkZu", "itemSku": "4htrsf8e", "itemType": "IFSovTGX"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "sq8ePN1o", "namespace": "co2jx8Up"}, "item": {"itemId": "e8SjMvpq", "itemSku": "M8puggOE", "itemType": "dG47gD5i"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "OQny4ij4", "namespace": "ysYPonb5"}, "item": {"itemId": "9gQffkNO", "itemSku": "mubxEJr2", "itemType": "qEAuJbpZ"}, "quantity": 90, "type": "ITEM"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '4gqDY6jw' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'yKRxhkLe' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '5zohg9s9' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'utRQt28b' --body '{"itemIdentityType": "ITEM_ID", "language": "lH-gCcU-170", "productId": "ZOYwbwjM", "region": "NdxKWlBf", "type": "PLAYSTATION"}' --login_with_auth "Bearer foo"
platform-query-user-orders '3eRvBZXN' --login_with_auth "Bearer foo"
platform-admin-create-user-order '3cjIXmFW' --body '{"currencyCode": "RJnj8xN7", "currencyNamespace": "HDPTUEDP", "discountedPrice": 80, "ext": {"u6HXXdiC": {}, "9ZDj4E4m": {}, "v12FNXyp": {}}, "itemId": "oOLl13j8", "language": "4P0KqirJ", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 22, "quantity": 79, "region": "eUYcYJ4Q", "returnUrl": "zXCmqr6g", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'BSKLSQ4G' 'vLtz50D3' --login_with_auth "Bearer foo"
platform-get-user-order 'rpBfBovq' 'LwXBuT30' --login_with_auth "Bearer foo"
platform-update-user-order-status 'EYeRj17x' 'GhaBKoUf' --body '{"status": "CHARGED", "statusReason": "CjZUMRf2"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'VJetWsok' 'vx3BHuTE' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'czr9KjQ3' 'ttz8MTBt' --login_with_auth "Bearer foo"
platform-get-user-order-histories '1xk9Iyss' 'SA8nP5PQ' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'jpzk2Tb7' 'iYdmNZWo' --body '{"additionalData": {"cardSummary": "srsVBPZ6"}, "authorisedTime": "1972-03-20T00:00:00Z", "chargebackReversedTime": "1975-10-08T00:00:00Z", "chargebackTime": "1996-05-18T00:00:00Z", "chargedTime": "1991-04-15T00:00:00Z", "createdTime": "1991-06-12T00:00:00Z", "currency": {"currencyCode": "scofwYLQ", "currencySymbol": "cDvkaEII", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "4k3Jwkda"}, "customParameters": {"xR7GJpYm": {}, "uYCPG181": {}, "q9GA5Dyd": {}}, "extOrderNo": "C2D8UT6K", "extTxId": "Oc4VPDUR", "extUserId": "9ayazqXR", "issuedAt": "1979-12-28T00:00:00Z", "metadata": {"egIUicYX": "XzxsBFrU", "s9BYp6Tg": "CejBd5o7", "iTST7R3K": "bbQGERMN"}, "namespace": "pqWb51y5", "nonceStr": "RUzvMfTk", "paymentMethod": "Py0fGvTG", "paymentMethodFee": 13, "paymentOrderNo": "cwWVRK6U", "paymentProvider": "XSOLLA", "paymentProviderFee": 20, "paymentStationUrl": "q78cE5O5", "price": 31, "refundedTime": "1997-04-06T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "yq9odanh", "status": "REFUND_FAILED", "statusReason": "xmbH3rVa", "subscriptionId": "auufxkPH", "subtotalPrice": 62, "targetNamespace": "cLSVdleS", "targetUserId": "aAylsmLY", "tax": 10, "totalPrice": 50, "totalTax": 94, "txEndTime": "1979-05-01T00:00:00Z", "type": "hYOgT5kD", "userId": "TyPl3dKF", "vat": 75}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'NXEjrJMk' 'i8jvc3P8' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'Gwjg3IOH' --body '{"currencyCode": "0SDHgYKq", "currencyNamespace": "xJiFJdrm", "customParameters": {"j5vhzgsJ": {}, "wex7wq8Z": {}, "PlXNaUNg": {}}, "description": "dY2vfJuj", "extOrderNo": "e5cPnmGj", "extUserId": "TvYa5Pqx", "itemType": "SEASON", "language": "GQID_IyJo_327", "metadata": {"fqjNjLOt": "NQts2yxf", "6MLZJ2jZ": "fZbpTJez", "zriCDWXT": "59SRu0Yq"}, "notifyUrl": "UxKDc84O", "omitNotification": false, "platform": "zvTScdbK", "price": 55, "recurringPaymentOrderNo": "fxnUNcwj", "region": "r7gSGhnf", "returnUrl": "uF4WZiQV", "sandbox": true, "sku": "eRbzTPwD", "subscriptionId": "3jxF7vxR", "title": "UY0ilrNo"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'FT98SgtJ' 'd4Z5f8nf' --body '{"description": "aKqdZFLb"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'ZEHxsDxe' --body '{"code": "R6d7r1SQ", "orderNo": "w80JfMpP"}' --login_with_auth "Bearer foo"
platform-do-revocation 'rSqYypRU' --body '{"meta": {"nq5o4ETe": {}, "CUYG9ccT": {}, "t7Wxw8OQ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "t3uTw6zQ", "namespace": "uoZcXQpo"}, "entitlement": {"entitlementId": "TOxe8y1j"}, "item": {"itemIdentity": "orNsg9ZK", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 90, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "Lee3TcJ7", "namespace": "DQIi45aC"}, "entitlement": {"entitlementId": "DHN9mVug"}, "item": {"itemIdentity": "2zkVf6Kg", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 75, "type": "ITEM"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "cn3tMD9U", "namespace": "T67bOwug"}, "entitlement": {"entitlementId": "FDa6wUQv"}, "item": {"itemIdentity": "ehKqwCh8", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 25, "type": "ITEM"}], "source": "OTHER", "transactionId": "fXEOEAEt"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'bag82KgB' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'gyCd5vjk' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'fz3eR4Dt' --body '{"grantDays": 80, "itemId": "2cIoByk9", "language": "fxtvsgeA", "reason": "xo57nKAb", "region": "ZpsbJ4Iu", "source": "5KJ0ynxG"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'BlacDCdF' 'e8ATUqVx' --login_with_auth "Bearer foo"
platform-get-user-subscription 'cSthrpnM' 'UBsnUfuQ' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'IcSbUt5U' 'GkInFGpu' --login_with_auth "Bearer foo"
platform-cancel-subscription 'Usdtq4dO' 'wNESzCEW' --body '{"immediate": false, "reason": "dUVhZjLf"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'tC3sCS8C' 'pLCqPD9C' --body '{"grantDays": 8, "reason": "OBWydXV0"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'Fi02aFr8' 'CDapjwNO' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'l4k8rVNr' 'm8drv8QD' --body '{"additionalData": {"cardSummary": "2JOe2Ntz"}, "authorisedTime": "1980-09-10T00:00:00Z", "chargebackReversedTime": "1986-09-11T00:00:00Z", "chargebackTime": "1985-06-23T00:00:00Z", "chargedTime": "1974-04-30T00:00:00Z", "createdTime": "1999-06-29T00:00:00Z", "currency": {"currencyCode": "S54phbdy", "currencySymbol": "GDt47f9G", "currencyType": "VIRTUAL", "decimals": 90, "namespace": "Q2ZRGzNt"}, "customParameters": {"rThFa9XU": {}, "8mosluiH": {}, "ZJ7O8sAQ": {}}, "extOrderNo": "32wj9uaD", "extTxId": "zsr9xYiW", "extUserId": "RuuzQJiL", "issuedAt": "1972-07-18T00:00:00Z", "metadata": {"1eI9w3JE": "hxPGbEk7", "s7gw07Fl": "ounC3vJK", "BC7SwgoV": "iPeIB4Eh"}, "namespace": "y0Y5aSJV", "nonceStr": "DginxAM7", "paymentMethod": "7eY9C14F", "paymentMethodFee": 3, "paymentOrderNo": "2jdx1eIb", "paymentProvider": "ADYEN", "paymentProviderFee": 22, "paymentStationUrl": "sB0HsJ06", "price": 59, "refundedTime": "1996-07-22T00:00:00Z", "salesTax": 48, "sandbox": false, "sku": "kWZbjf7G", "status": "REQUEST_FOR_INFORMATION", "statusReason": "xaossQmj", "subscriptionId": "o69wohJF", "subtotalPrice": 50, "targetNamespace": "3HHijsQR", "targetUserId": "j7N8IAjm", "tax": 37, "totalPrice": 28, "totalTax": 63, "txEndTime": "1977-03-21T00:00:00Z", "type": "jj0ZR50B", "userId": "Q1U6aFD3", "vat": 82}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'uTcYsoah' 'UrELQ1bt' --body '{"count": 19, "orderNo": "F7v3qbZu"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets '9M3OxqVA' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'T4H1lRZ9' 'Z1JBrHRz' --body '{"allowOverdraft": true, "amount": 20, "balanceOrigin": "Steam", "reason": "tIxzPqb6"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'n73m0jia' 'DH86d9rs' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'KgzCsMul' 'pB8HZUtV' --body '{"amount": 99, "expireAt": "1971-01-05T00:00:00Z", "origin": "Xbox", "reason": "Z5BTsEA3", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'SfWhT5B4' 'WedopzwS' --body '{"amount": 24, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'uBtRFPKT' --body '{"displayOrder": 15, "localizations": {"prR3OEey": {"description": "0MkZwS6T", "localExt": {"YwNN3UYh": {}, "ic03qGEg": {}, "5fNzBVrj": {}}, "longDescription": "o3g8CfRw", "title": "tyl1HeT7"}, "VEPgG40Q": {"description": "yXzsOzgc", "localExt": {"k078Igho": {}, "QBp2mWAO": {}, "YksczxBS": {}}, "longDescription": "0OBCa2vW", "title": "adLmQtYK"}, "mEMzicbu": {"description": "L2S3RiW8", "localExt": {"dLTCBfGU": {}, "dVEdvdQL": {}, "7sVwcZ2P": {}}, "longDescription": "ofaJoSqt", "title": "rEOqxH46"}}, "name": "fRTSZoDd"}' --login_with_auth "Bearer foo"
platform-get-view 'T0fefo74' --login_with_auth "Bearer foo"
platform-update-view 'eg3Nt2c0' 'r4GqF0NH' --body '{"displayOrder": 14, "localizations": {"XBWTbpAo": {"description": "gG2wlZkL", "localExt": {"huU5FI8N": {}, "ijFI0GKw": {}, "J3vfXlsA": {}}, "longDescription": "My2Zp2UA", "title": "GxHnmSxv"}, "kG9UR5q9": {"description": "neoW6JBc", "localExt": {"Gp9Rx2Rf": {}, "cRhXpmee": {}, "Hdvphas9": {}}, "longDescription": "S7ivHEoL", "title": "bUMM47f1"}, "UreUpxEk": {"description": "XIbE1ETz", "localExt": {"RJZKMavu": {}, "4Ul2Iaie": {}, "EbPSE7TG": {}}, "longDescription": "keHsYsW9", "title": "oGBN1pYM"}}, "name": "BwbPZTlM"}' --login_with_auth "Bearer foo"
platform-delete-view 'lUvFEiGp' 'rcNSQ9kE' --login_with_auth "Bearer foo"
platform-sync-orders 'eXBZ6FVr' 'BzyhyhoS' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["6a9oe0Ja", "XFpff28u", "Ybe4Cf2H"], "apiKey": "EHvVevhI", "authoriseAsCapture": false, "blockedPaymentMethods": ["vyUMAAmI", "HYbsxG5N", "066FXb88"], "clientKey": "SbLOa21D", "dropInSettings": "iSFsm0XX", "liveEndpointUrlPrefix": "QJWszvTQ", "merchantAccount": "EuALzDNp", "notificationHmacKey": "1SZ58aDl", "notificationPassword": "lwzTRHak", "notificationUsername": "1MXxj7Es", "returnUrl": "rg7900nm", "settings": "l5BidsK9"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "dCEzhVnO", "privateKey": "v0PQbVIa", "publicKey": "KiHfoeor", "returnUrl": "Y7A1otGF"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "yv2SMjbE", "secretKey": "r50qGdCZ"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "Ic6EFqBK", "clientSecret": "xbS7Q2Og", "returnUrl": "RucL1jwR", "webHookId": "XzfjDZZB"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["mOau6sym", "e06c6SKL", "c2mEC3IX"], "publishableKey": "l5XCbkOf", "secretKey": "HaGr5kda", "webhookSecret": "zlypvt6l"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "SLfU7HBy", "key": "GXPMqxj4", "mchid": "hBgVY3YA", "returnUrl": "xZLKbcOd"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "yjqf6Q4o", "flowCompletionUrl": "iwoJcaRM", "merchantId": 62, "projectId": 35, "projectSecretKey": "b15LBlTV"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'ufc5ZyOD' --login_with_auth "Bearer foo"
platform-update-adyen-config 'R2NVyn4P' --body '{"allowedPaymentMethods": ["Rqf3eRbZ", "qBAoKGcV", "CdMiSNV4"], "apiKey": "qBrt1kcL", "authoriseAsCapture": false, "blockedPaymentMethods": ["iJpXIrgr", "oixptZhc", "kUTGkcBO"], "clientKey": "E4qMcH1K", "dropInSettings": "yi8ZFvGc", "liveEndpointUrlPrefix": "V8DY0XOk", "merchantAccount": "DstxZcY1", "notificationHmacKey": "HgAnZV4I", "notificationPassword": "OglVLqb9", "notificationUsername": "lGAJUg21", "returnUrl": "Lt7JwgwM", "settings": "USuC3Baj"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'y3BcEMCt' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'Qs2FcEcv' --body '{"appId": "VAyId6Cp", "privateKey": "85HVDsZB", "publicKey": "QgOnXuXs", "returnUrl": "GThYZrmm"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '0wrFMnPp' --login_with_auth "Bearer foo"
platform-update-checkout-config 'WgrQD4hE' --body '{"publicKey": "k0OLjYsn", "secretKey": "ignE7KcM"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'F7fuDbzR' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'RYMNXWUs' --body '{"clientID": "p1tOibJY", "clientSecret": "9aL9ie6v", "returnUrl": "vMbiNURr", "webHookId": "lm88QlKy"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'uoya4Jga' --login_with_auth "Bearer foo"
platform-update-stripe-config 'kZyUV7t7' --body '{"allowedPaymentMethodTypes": ["3VnSFbux", "d4KYZ0jk", "0UZdhtnK"], "publishableKey": "u9oTc8pV", "secretKey": "kiyGsj5J", "webhookSecret": "dXzRxfNE"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'jUMTs8WI' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'ObJBTsvs' --body '{"appId": "w76uISRX", "key": "0bKVoWto", "mchid": "UW1P7ocu", "returnUrl": "BAldDSUS"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '7Haa6unq' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '1yQOSRvy' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'iLBRVtID' --body '{"apiKey": "i2piIQFV", "flowCompletionUrl": "mzMidw70", "merchantId": 74, "projectId": 86, "projectSecretKey": "SahpYZdK"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'ZRyR9AX7' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'JjxvNZhM' --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "fPOieDCo", "region": "w2zXyFFV", "sandboxTaxJarApiToken": "pM87yqEw", "specials": ["XSOLLA", "WXPAY", "ADYEN"], "taxJarApiToken": "tALFI3v8", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'KkxJ5v3S' --body '{"aggregate": "XSOLLA", "namespace": "YcpBD6lK", "region": "Nb8RxvN2", "sandboxTaxJarApiToken": "u5J7baOe", "specials": ["XSOLLA", "ALIPAY", "WALLET"], "taxJarApiToken": "qBwNbNe1", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'fYRtIvQa' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "KyevWYtZ", "taxJarApiToken": "jK6J29v8", "taxJarEnabled": false, "taxJarProductCodesMapping": {"cduZSe7W": "20UZcDai", "q0nEZ7Py": "hqFJkDCl", "OsKmfsgJ": "dmzsDPsW"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'h1k0cQ08' 'NG6dX2TZ' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'kil67kRn' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'goUa83EC' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'h1gqPeS1' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '93TNNzot' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '3sVli3GN' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '2XTrFibR' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["AhzzEWzW", "lTY70qdg", "JRvpZrSp"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'WX3KEe2B' 'jV00ReCX' --login_with_auth "Bearer foo"
platform-public-get-app 'FffjJJxl' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'gjzIhpgO' --login_with_auth "Bearer foo"
platform-public-get-item 'oIOD74V2' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "1HWDAfvX", "paymentProvider": "WALLET", "returnUrl": "QN1di1ld", "ui": "hOh6Hvjn", "zipCode": "YuV7NfC4"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'A2ODiZhb' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'fb8QqCyK' --login_with_auth "Bearer foo"
platform-pay '1XH9D6vl' --body '{"token": "5eFdFfgK"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '46GjCWaP' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'PAYPAL' 'huTmnq3F' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'GQn3Ahu5' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'wxq6oJq4' 'mChmQHQh' 'CHECKOUT' 'IKBXDFQf' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'XFD58sG6' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'c87hosaP' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'FC5zBW3Z' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'gVZCj9Ob' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'VGT0Scwl' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '4kNmCi15' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "XTJTgCNN", "language": "URsi_OYkr", "region": "0Wb07N17"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'fkxZSc6V' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'bE0AGcek' --body '{"epicGamesJwtToken": "jMNHuPXt"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'z8tXxrmz' --body '{"serviceLabel": 0}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'glqaCXE9' --body '{"serviceLabels": [81, 49, 40]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '91uc28Ho' --body '{"appId": "SpGt1g0G", "steamId": "GbT4Hf2P"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'PKOldkbg' --body '{"xstsToken": "X9CWJKwX"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'XSbv5eg9' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'q86IaDFj' 'jx6uZerW' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'btwTX9gN' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'ByjbE8lO' 'LAfTXKLz' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'brddqcKL' 'a7LevxNH' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'OSEhQRZI' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'p693lRwt' 'c43atCuC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'Fxbfbz4a' 'QERziPL4' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'dHhOqG5K' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'DdUvk0LE' 'i26Ls7mj' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'RxNmvvNt' 'jJNQepUT' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'GhwlY4lP' 'zlsCR5rV' --body '{"options": ["syfcH7Wj", "P7HuGz3b", "5WAEvdRF"], "requestId": "9bqMj4ro", "useCount": 2}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'B19VE838' 'c7OydVw0' --body '{"requestId": "zCqoMZvp", "useCount": 71}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'FWJhe03c' --body '{"code": "oRFok5d3", "language": "uZV_haVn", "region": "hkk5Pxsj"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'qbCKpMv2' --body '{"excludeOldTransactions": false, "language": "aZ-eABT", "productId": "4FCK5ucT", "receiptData": "FsAFzaO3", "region": "yJpA3KMx", "transactionId": "BlrRytER"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '1qdTelFA' --body '{"epicGamesJwtToken": "adM9y66D"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'rf4SSGGt' --body '{"autoAck": false, "language": "Zc", "orderId": "iGUjVAw4", "packageName": "v3q6JRHc", "productId": "n7KaoCEk", "purchaseTime": 89, "purchaseToken": "VAHrHncR", "region": "5dShqiBU"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'I9esSsXe' --body '{"currencyCode": "gSEhrPpK", "price": 0.8826481738653852, "productId": "q8kxR4Bu", "serviceLabel": 62}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'zZWfmP2s' --body '{"currencyCode": "x0KO5bEJ", "price": 0.007489449138258775, "productId": "PnAFjsod", "serviceLabels": [73, 51, 63]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'YQEuGJVl' --body '{"appId": "8xs1WId9", "currencyCode": "WlalqshF", "language": "sHyp-rR", "price": 0.4657710580094703, "productId": "xwEdkyuT", "region": "3MgzReRq", "steamId": "0112ISAr"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'ROIodcmM' --body '{"gameId": "6v2AEozW", "language": "rv-mLfm", "region": "6bpuJip8"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'JyxJ39vr' --body '{"currencyCode": "tuWWrqTZ", "price": 0.017996622197380074, "productId": "SqBSKp8A", "xstsToken": "mgwhYzk3"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '3J34fiTx' --login_with_auth "Bearer foo"
platform-public-create-user-order 'K63OHpnU' --body '{"currencyCode": "CGBVfpct", "discountedPrice": 82, "ext": {"pKWtdtdt": {}, "VW9anENm": {}, "xb9e7vXZ": {}}, "itemId": "V3ig8Jg5", "language": "YEj-uCNo", "price": 0, "quantity": 96, "region": "YBixKJXC", "returnUrl": "ISQdwec1"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'm8BusV9t' 'Uh74KVo6' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'Xqjz2xUK' 'LNWSmYyV' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'vyelIJ8Q' 'gaLMqi83' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '6ULa7cfZ' 'l4VuY6rs' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'Zyo6CBRR' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'noOikIxX' 'card' 'IR6kPmsw' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'm5TCAU1c' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'KApdJDnE' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '73GLmSZn' --body '{"currencyCode": "s5owBhoU", "itemId": "g4LsGP6K", "language": "Pqcy", "region": "vUv2XiXa", "returnUrl": "BzsmaxjT", "source": "ZPlLityt"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'Gka7Kv5T' 'acQKF4Ol' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'RGdmXxET' 'LEQrr3KC' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'AV9alq3h' 'K1G4kKoo' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'SNNUZuiy' 'nZ64Iwnc' --body '{"immediate": false, "reason": "S2FgarY9"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '03INGIyE' 'fRBEj7qm' --login_with_auth "Bearer foo"
platform-public-list-views 's9AGQExP' --login_with_auth "Bearer foo"
platform-public-get-wallet 'hgr9gGfC' '0GjvpgJf' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'uBs1Vpqn' '47GVghTH' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '2wToOnq9' --body '{"itemIds": ["U5lyW89X", "wt3wmRTr", "DCjhnKvs"]}' --login_with_auth "Bearer foo"
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
echo "1..388"

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
    --body '{"context": {"item": {"appId": "HezWTqgY", "appType": "SOFTWARE", "baseAppId": "ixtHk6lW", "boothName": "q6tEeUmU", "boundItemIds": ["mJqjRYld", "cTpdeCD9", "96FLEak0"], "categoryPath": "XPRi4bAQ", "clazz": "L7VE2wL8", "createdAt": "1996-05-05T00:00:00Z", "description": "4JFVUdzA", "displayOrder": 38, "entitlementType": "CONSUMABLE", "ext": {"Rk5htdM5": {}, "T3fDSrSH": {}, "rkoqv2mM": {}}, "features": ["q2a9YdFN", "tRVSO0js", "6soMaTvQ"], "fresh": false, "images": [{"as": "hG9xmSnz", "caption": "d7zgUxAo", "height": 12, "imageUrl": "JZ5z6guj", "smallImageUrl": "pFzlPspQ", "width": 61}, {"as": "LKQuQVFS", "caption": "KiXl8G2u", "height": 11, "imageUrl": "eoW2NdSW", "smallImageUrl": "zOXjO1NQ", "width": 95}, {"as": "xQ1QyJCp", "caption": "KedhuzI7", "height": 66, "imageUrl": "xq26gZrP", "smallImageUrl": "qCsSDspv", "width": 13}], "itemId": "XfKnQ7BY", "itemIds": ["GjCUDMOr", "bmoRvWnf", "mGFy0eUo"], "itemQty": {"OBd90h9E": 59, "UfmjtiVb": 33, "wWjwMWDK": 63}, "itemType": "LOOTBOX", "language": "t6JhbJ0f", "listable": true, "localExt": {"l2wIFlHm": {}, "9N6owMHM": {}, "tJy1Oqn5": {}}, "longDescription": "9tEGm9NY", "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 97, "itemId": "UT5P0nx8", "itemSku": "TqSZdZ5C", "itemType": "8mFI9Tnv"}, {"count": 52, "itemId": "iCBuzUUw", "itemSku": "yI6Vtd4v", "itemType": "9k4fv3kM"}, {"count": 17, "itemId": "U3RHNDFj", "itemSku": "LKFrepy5", "itemType": "6eW1kmb1"}], "name": "5QeIQF51", "odds": 0.04648504966733624, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 51, "itemId": "JzDSvELg", "itemSku": "Be6dboSd", "itemType": "hkBzAzPk"}, {"count": 39, "itemId": "Y4PBNHKP", "itemSku": "x62tHxDb", "itemType": "06ZFy3ug"}, {"count": 23, "itemId": "009FAb21", "itemSku": "jxeWXk80", "itemType": "y9uxgVLG"}], "name": "gK8aVSCN", "odds": 0.9426000769159497, "type": "PROBABILITY_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 76, "itemId": "ETQ8gIDR", "itemSku": "dD2wwMXw", "itemType": "KVXGPhEJ"}, {"count": 37, "itemId": "XVRcAVRD", "itemSku": "X6gmDfNf", "itemType": "PGYYSTun"}, {"count": 78, "itemId": "OKFLxIwK", "itemSku": "ssw647Yw", "itemType": "DudnGRuf"}], "name": "OUGfMjTU", "odds": 0.8760541519322673, "type": "PROBABILITY_GROUP", "weight": 24}], "rollFunction": "CUSTOM"}, "maxCount": 60, "maxCountPerUser": 36, "name": "jPlcYaqY", "namespace": "M7YfBmhj", "optionBoxConfig": {"boxItems": [{"count": 72, "itemId": "El6A9sh2", "itemSku": "x2ur2ccp", "itemType": "7R7OqPqI"}, {"count": 18, "itemId": "EymNXzNX", "itemSku": "6TGh4UdE", "itemType": "weeBsJEv"}, {"count": 56, "itemId": "6gtn5pUA", "itemSku": "RJM1T8Qw", "itemType": "MNOAzXmy"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 63, "comparison": "includes", "name": "g9P6a280", "predicateType": "SeasonTierPredicate", "value": "NUb51lEg", "values": ["UwQ9tkWa", "MOH47CAT", "7cBP0918"]}, {"anyOf": 72, "comparison": "isLessThan", "name": "aEBQBP76", "predicateType": "SeasonTierPredicate", "value": "tR00oQgc", "values": ["HdGGK3x7", "ttmrpgF5", "6U1EIckl"]}, {"anyOf": 38, "comparison": "isLessThanOrEqual", "name": "RVfjB0zi", "predicateType": "SeasonPassPredicate", "value": "r1FgR70e", "values": ["CAIfNBSH", "d8xArWJu", "NLHkVrEF"]}]}, {"operator": "and", "predicates": [{"anyOf": 86, "comparison": "isGreaterThanOrEqual", "name": "zl7X9fHr", "predicateType": "SeasonPassPredicate", "value": "WvBxmBvN", "values": ["B22HGgxa", "kPt7IYza", "j3ktaDf9"]}, {"anyOf": 20, "comparison": "isGreaterThan", "name": "xs3GuA4S", "predicateType": "SeasonTierPredicate", "value": "dS7H7yIS", "values": ["7b5TSDRI", "PzfzXDEL", "oMg7Dc5A"]}, {"anyOf": 73, "comparison": "excludes", "name": "os4qR8La", "predicateType": "SeasonTierPredicate", "value": "JyL72WDy", "values": ["aupnTTq9", "ihnXKxGx", "hBsCCbnf"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "includes", "name": "z1K5M1qg", "predicateType": "SeasonTierPredicate", "value": "Qh8I9xk3", "values": ["wioRaKnW", "sFl0cbuC", "RM69XKkL"]}, {"anyOf": 16, "comparison": "isNot", "name": "lh80BhYe", "predicateType": "SeasonPassPredicate", "value": "fJDS6T75", "values": ["hfogWg2A", "jmYqE1wJ", "Q4ulonMF"]}, {"anyOf": 32, "comparison": "isGreaterThan", "name": "UvPYUcQB", "predicateType": "SeasonPassPredicate", "value": "n65Co0vd", "values": ["aZAIadKD", "Ck8so6JS", "EZywonA2"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 62, "fixedTrialCycles": 1, "graceDays": 7}, "region": "ulsL6NOV", "regionData": [{"currencyCode": "5agpS6A5", "currencyNamespace": "mkufBpWV", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1989-04-21T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1996-07-06T00:00:00Z", "discountedPrice": 61, "expireAt": "1977-03-25T00:00:00Z", "price": 2, "purchaseAt": "1977-08-24T00:00:00Z", "trialPrice": 4}, {"currencyCode": "Wbs5qugk", "currencyNamespace": "lBUS6uwW", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1985-10-07T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1998-06-01T00:00:00Z", "discountedPrice": 4, "expireAt": "1988-12-17T00:00:00Z", "price": 72, "purchaseAt": "1972-05-21T00:00:00Z", "trialPrice": 85}, {"currencyCode": "g8tLAJWp", "currencyNamespace": "cyNkUvqn", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1992-03-25T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1999-06-24T00:00:00Z", "discountedPrice": 64, "expireAt": "1992-11-20T00:00:00Z", "price": 92, "purchaseAt": "1971-10-27T00:00:00Z", "trialPrice": 73}], "saleConfig": {"currencyCode": "1xsth28N", "price": 91}, "seasonType": "PASS", "sellable": true, "sku": "lugIAknX", "stackable": false, "status": "INACTIVE", "tags": ["7qSiDvsf", "SaVYcAYp", "MUOpWv46"], "targetCurrencyCode": "sXvpOjrp", "targetItemId": "Ro4mYrCe", "targetNamespace": "QUnYoID2", "thumbnailUrl": "UqO0iAXA", "title": "9dB4ib8H", "updatedAt": "1986-03-04T00:00:00Z", "useCount": 83}, "namespace": "DlLfTKxp", "order": {"currency": {"currencyCode": "VOXvGSrd", "currencySymbol": "kqddI3ez", "currencyType": "VIRTUAL", "decimals": 52, "namespace": "u6FB0sL2"}, "ext": {"xt6fX9j7": {}, "rhZCAlDl": {}, "VKBsLZiB": {}}, "free": true}, "source": "OTHER"}, "script": "7tcHrV0M", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'CSoqHvH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'g63cOx6y' \
    --body '{"grantDays": "rIw37pKO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'LrF5i3gr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '3Cc4M2O7' \
    --body '{"grantDays": "NrTQO7KL"}' \
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
    --body '{"clazz": "dZDGwqx7", "dryRun": false, "fulfillmentUrl": "3l1ut2oy", "itemType": "COINS", "purchaseConditionUrl": "FBS93Mg6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'COINS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'KwdRMraD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'Lrwh3d0y' \
    --body '{"clazz": "kRGkgqUN", "dryRun": false, "fulfillmentUrl": "4xmIOjFL", "purchaseConditionUrl": "gKR4LjEW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'hOScvtQ9' \
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
    --body '{"description": "2iD02YMv", "items": [{"extraSubscriptionDays": 62, "itemId": "PPjpSAlZ", "itemName": "wFGpea5O", "quantity": 2}, {"extraSubscriptionDays": 6, "itemId": "BB49Km4C", "itemName": "lIQmkIdL", "quantity": 58}, {"extraSubscriptionDays": 0, "itemId": "vNhZ6P8a", "itemName": "qZ2yfrC1", "quantity": 98}], "maxRedeemCountPerCampaignPerUser": 72, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 32, "maxSaleCount": 52, "name": "JZPHCMqv", "redeemEnd": "1972-12-18T00:00:00Z", "redeemStart": "1997-08-02T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["eDLYEzs2", "SQUdKr6v", "gqkjycqc"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '43Df5qUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'OFzpFd6b' \
    --body '{"description": "5Jc5TETH", "items": [{"extraSubscriptionDays": 4, "itemId": "ynjFZgF3", "itemName": "erw7UsyH", "quantity": 34}, {"extraSubscriptionDays": 50, "itemId": "4bBb0n1J", "itemName": "hPUS8BRP", "quantity": 67}, {"extraSubscriptionDays": 29, "itemId": "V9n769zL", "itemName": "JdKMexeJ", "quantity": 5}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 39, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 33, "name": "vgTSgKjC", "redeemEnd": "1983-12-17T00:00:00Z", "redeemStart": "1997-09-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["f8NA4cGU", "aDfy9XnH", "2r0EKrk5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'VlnKsWCP' \
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
    'ccAFn5CE' \
    --body '{"categoryPath": "PoH6opK5", "localizationDisplayNames": {"DSO8JyX4": "IE1z3rDw", "Z1HKsOpy": "q8agQuz8", "6nc6jLF9": "DIW2ncJJ"}}' \
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
    'KpqmgvUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'r8XAtpOq' \
    'UQxzqJZi' \
    --body '{"localizationDisplayNames": {"Wi3KQffT": "5Tn61A1x", "W6okIqmd": "87ir9op4", "YfGTno5o": "HzqY3Dgy"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'kA8zBJX0' \
    'rkOHUkY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'aSlqhYoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'Xbn6l5xA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'zc1nc3eF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'm950dtVA' \
    --body '{"quantity": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'E2g6jXV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'oai2oDm9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'FaP0HJ98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'tE4UyoQg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    '0b0sGOkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'xVt15LKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'kQ7YBhsO' \
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
    --body '{"grpcServerAddress": "uJ0ypkkt"}' \
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
    --body '{"currencyCode": "2G4eFh2Y", "currencySymbol": "NsdoxpLT", "currencyType": "VIRTUAL", "decimals": 63, "localizationDescriptions": {"M9Q8t829": "Ido1Jyve", "SRiBq23k": "yH9jQbHW", "kcVk0X28": "GS54vl7g"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'IKBc7OYT' \
    --body '{"localizationDescriptions": {"ylFRAJKy": "SnC0cfPl", "3Z2zSBbs": "4PAV72u8", "AxE2IQeo": "xYV4UcYz"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'swAGpXqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'xctuVaqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'JGAHEZmu' \
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
    --body '{"data": [{"id": "QrZ8GaQ4", "rewards": [{"currency": {"currencyCode": "OZ2nDodm", "namespace": "4TNs8mAj"}, "item": {"itemId": "6IKSYFdJ", "itemSku": "wgZsRPOz", "itemType": "wuDSdGl1"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "2vaNeDiS", "namespace": "qTfmAVg5"}, "item": {"itemId": "0kOdJagE", "itemSku": "mTuaxlxg", "itemType": "ywkbdOsy"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "X1tfW488", "namespace": "oYUT4jyC"}, "item": {"itemId": "VJ0V8obT", "itemSku": "lGVThz4b", "itemType": "m41oIcV3"}, "quantity": 50, "type": "ITEM"}]}, {"id": "3HXL6Sjl", "rewards": [{"currency": {"currencyCode": "jNPTXA3q", "namespace": "bg55Syie"}, "item": {"itemId": "nCODZ0mn", "itemSku": "OpPTVxEg", "itemType": "BFzG8tlk"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "WKCU1XN4", "namespace": "gl7yHvEq"}, "item": {"itemId": "pJSrDXVw", "itemSku": "CkhOQ161", "itemType": "TFjROYJm"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "VIuCOCkt", "namespace": "2W1DfI8Q"}, "item": {"itemId": "tgODk9K6", "itemSku": "DcMnyCPn", "itemType": "1FylWdaN"}, "quantity": 98, "type": "ITEM"}]}, {"id": "1VaZTkbb", "rewards": [{"currency": {"currencyCode": "uWiiA4UT", "namespace": "DgS2SVEo"}, "item": {"itemId": "5M80LLbk", "itemSku": "u9GYH4ij", "itemType": "qOVM50tC"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "bklTHcmg", "namespace": "XsrVj3Mj"}, "item": {"itemId": "ml6BpCOD", "itemSku": "WGOLMmCZ", "itemType": "UeelXYyN"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "XweiCnDl", "namespace": "dRPRfd6m"}, "item": {"itemId": "LZ0GTJwE", "itemSku": "joZrRtae", "itemType": "WKMC8wsO"}, "quantity": 56, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"5UMa8ymx": "tEFLwELC", "Y2vIddlx": "nA1Vynio", "JcAPwVHU": "Gcs1ACMv"}}, {"platform": "PSN", "platformDlcIdMap": {"mWa8TGko": "16XTqHc0", "cM7ixq8T": "jnxp5Cl8", "ggaEmCcu": "K2hHviBE"}}, {"platform": "STEAM", "platformDlcIdMap": {"pbusO6Ey": "VqstpgZp", "bz77y88r": "UFum2ZcA", "8iKcF0bk": "fjcTEFXc"}}]}' \
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
    'TwEtnHxP' \
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
    --body '{"bundleId": "5pVtN4jN", "password": "VIdruEA3"}' \
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
    --body '{"sandboxId": "9uCJzsE8"}' \
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
    --body '{"applicationName": "WObt6t0w", "serviceAccountId": "8LOBxE15"}' \
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
    --body '{"data": [{"itemIdentity": "JYj4IqWK", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"9l4wkrza": "hXR1sDED", "VKDINE3H": "jCiVR1dQ", "8kuhb4pU": "wnGptHUp"}}, {"itemIdentity": "lxzaDa9P", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"p2oac8QT": "NEuBbeuQ", "qm9wM7mg": "TtUdPVcQ", "ijMBhs0k": "DP6d3nuU"}}, {"itemIdentity": "Z41mSeS9", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nGqhJOvy": "kBcDpzD9", "zh6dtPK4": "fVHLMvrC", "sH3RYxH2": "Up9VthPj"}}]}' \
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
    --body '{"environment": "FrK7Hip0"}' \
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
    --body '{"appId": "eONFDgUP", "publisherAuthenticationKey": "ShG8wwFK"}' \
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
    --body '{"clientId": "Y9AMpcwJ", "clientSecret": "d4SrigIx", "organizationId": "AhbFMZfx"}' \
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
    --body '{"relyingPartyCert": "aznlDQbz"}' \
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
    'TiFrQB1y' \
    'UonirH4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'Rx3NkKQB' \
    'YrlUaMiF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'EWUT8cAF' \
    --body '{"categoryPath": "O5zEw8GE", "targetItemId": "NEJYPKxx", "targetNamespace": "Ow7xNQ98"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'IEbc9YIT' \
    --body '{"appId": "N98j4P2A", "appType": "GAME", "baseAppId": "eidXRRnI", "boothName": "AJfKVjOn", "categoryPath": "6rtILNJV", "clazz": "v2DLLUyB", "displayOrder": 41, "entitlementType": "CONSUMABLE", "ext": {"kuw6q8Fg": {}, "qG46RsFK": {}, "7eYlSU3v": {}}, "features": ["k4IATSIe", "gVnZOn0t", "YcHZZjFe"], "images": [{"as": "fcqNEn4I", "caption": "Z0Dv6b8W", "height": 39, "imageUrl": "aBOTHnbX", "smallImageUrl": "9tC9PQlF", "width": 54}, {"as": "W0Qp3kTy", "caption": "L4CsLwiW", "height": 96, "imageUrl": "kRT2k0Az", "smallImageUrl": "dgIunRkT", "width": 48}, {"as": "THwo1IAJ", "caption": "Qpb6r8Ze", "height": 1, "imageUrl": "wnT24wh5", "smallImageUrl": "9RGSbBMh", "width": 48}], "itemIds": ["jpszuVk6", "iPdJ2boQ", "qCCyJfTh"], "itemQty": {"vCJieqRS": 66, "wZkwEeuz": 56, "SZzp4aEW": 20}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"Obuvig8s": {"description": "Muss76ez", "localExt": {"TrsDZNYU": {}, "V48Oh6I4": {}, "5X7HvUtP": {}}, "longDescription": "YONZdFk7", "title": "5lkjQNHr"}, "jaboGomg": {"description": "uUqeuZh5", "localExt": {"qtrRbNnG": {}, "ejdTGvZg": {}, "N5hshSe5": {}}, "longDescription": "YmZXKEQL", "title": "kM6o3eGS"}, "P4Htmr90": {"description": "TqGf0Oyq", "localExt": {"J9ibJMmR": {}, "goxNwp1l": {}, "GkYoq8HP": {}}, "longDescription": "1TM0tefV", "title": "QPWX1NPO"}}, "lootBoxConfig": {"rewardCount": 53, "rewards": [{"lootBoxItems": [{"count": 99, "itemId": "q7TCUJhD", "itemSku": "sDefAS09", "itemType": "VyQB1vR1"}, {"count": 26, "itemId": "sRezyY9G", "itemSku": "B5sf94AL", "itemType": "BmvdncQk"}, {"count": 5, "itemId": "MSPIHPtq", "itemSku": "zIWIzg8p", "itemType": "bjnt1iBV"}], "name": "8DpbjGts", "odds": 0.9131265808024053, "type": "REWARD_GROUP", "weight": 23}, {"lootBoxItems": [{"count": 82, "itemId": "DTfhAyZK", "itemSku": "hqilty9N", "itemType": "VlgxUmnf"}, {"count": 7, "itemId": "Czyb8Fko", "itemSku": "xQbrPngi", "itemType": "87K58pQs"}, {"count": 45, "itemId": "ZFN7wFCn", "itemSku": "qpvNesGi", "itemType": "Vnt9p2to"}], "name": "7Yja1soD", "odds": 0.48543059101190056, "type": "REWARD_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 61, "itemId": "SvGrMYwP", "itemSku": "mPXC2LfL", "itemType": "2m5rP2A2"}, {"count": 22, "itemId": "t6foPPH9", "itemSku": "4SUinY5d", "itemType": "iUlqgvY7"}, {"count": 7, "itemId": "0ekycMKl", "itemSku": "wJTNL2UC", "itemType": "WUtaAD7Z"}], "name": "Zx1iefAT", "odds": 0.7764967255006636, "type": "PROBABILITY_GROUP", "weight": 60}], "rollFunction": "DEFAULT"}, "maxCount": 34, "maxCountPerUser": 80, "name": "GYRMdz07", "optionBoxConfig": {"boxItems": [{"count": 49, "itemId": "EQbCqfh0", "itemSku": "gpABFBER", "itemType": "6WNcDOsR"}, {"count": 51, "itemId": "o5DSozCu", "itemSku": "FsrBMtoO", "itemType": "eLfMCYxS"}, {"count": 8, "itemId": "Bktk0siM", "itemSku": "up01kyaF", "itemType": "wwD7wecu"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 67, "fixedTrialCycles": 80, "graceDays": 80}, "regionData": {"IyaEMEqO": [{"currencyCode": "pwetb82b", "currencyNamespace": "96rsH73h", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1973-09-01T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1974-04-06T00:00:00Z", "discountedPrice": 29, "expireAt": "1973-09-27T00:00:00Z", "price": 42, "purchaseAt": "1996-10-01T00:00:00Z", "trialPrice": 75}, {"currencyCode": "iNyLkfPQ", "currencyNamespace": "PmjUkvSs", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1991-10-05T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1973-12-07T00:00:00Z", "discountedPrice": 19, "expireAt": "1977-04-27T00:00:00Z", "price": 79, "purchaseAt": "1984-05-25T00:00:00Z", "trialPrice": 26}, {"currencyCode": "kse9SGcM", "currencyNamespace": "uV5phhU3", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1973-05-22T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1996-11-09T00:00:00Z", "discountedPrice": 26, "expireAt": "1992-03-04T00:00:00Z", "price": 72, "purchaseAt": "1999-07-21T00:00:00Z", "trialPrice": 58}], "nXNd6ve2": [{"currencyCode": "9lqqtcLJ", "currencyNamespace": "W9eTJvKN", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1975-05-22T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1982-02-14T00:00:00Z", "discountedPrice": 76, "expireAt": "1973-01-07T00:00:00Z", "price": 3, "purchaseAt": "1973-07-19T00:00:00Z", "trialPrice": 19}, {"currencyCode": "DnqXjXKP", "currencyNamespace": "Icxh0x7T", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1990-12-15T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1987-10-22T00:00:00Z", "discountedPrice": 28, "expireAt": "1981-04-21T00:00:00Z", "price": 29, "purchaseAt": "1996-06-23T00:00:00Z", "trialPrice": 91}, {"currencyCode": "ugGX6mKB", "currencyNamespace": "bgTD9xL0", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1990-07-29T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1988-05-26T00:00:00Z", "discountedPrice": 72, "expireAt": "1973-03-31T00:00:00Z", "price": 30, "purchaseAt": "1973-07-01T00:00:00Z", "trialPrice": 69}], "4ZAUuLP8": [{"currencyCode": "97ooMLne", "currencyNamespace": "mwKAvgDX", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1987-02-15T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1991-09-08T00:00:00Z", "discountedPrice": 68, "expireAt": "1999-10-17T00:00:00Z", "price": 92, "purchaseAt": "1973-06-17T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ky1ZYvye", "currencyNamespace": "HmfoFkUD", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1977-05-31T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-01-10T00:00:00Z", "discountedPrice": 3, "expireAt": "1993-04-16T00:00:00Z", "price": 87, "purchaseAt": "1994-11-25T00:00:00Z", "trialPrice": 2}, {"currencyCode": "oICxQMit", "currencyNamespace": "8555Niy4", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1975-09-21T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1985-12-20T00:00:00Z", "discountedPrice": 73, "expireAt": "1986-05-02T00:00:00Z", "price": 1, "purchaseAt": "1994-11-10T00:00:00Z", "trialPrice": 86}]}, "saleConfig": {"currencyCode": "5yTIRWvL", "price": 89}, "seasonType": "PASS", "sellable": true, "sku": "mVTEbiRq", "stackable": true, "status": "ACTIVE", "tags": ["0wCVlYQi", "9cfMCeNn", "u6OIG1PP"], "targetCurrencyCode": "LRDEXLXZ", "targetNamespace": "WXvqNCHv", "thumbnailUrl": "NpeMjMzg", "useCount": 41}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ESLLMPKD' \
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
    'XLki6Oz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Bygt8Q0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'jSf1srB7' \
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
    'hGwGbUmQ' \
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
    'mJHNffZE' \
    --body '{"itemIds": ["Ns9X0hFM", "dzryvhc1", "YjHmmulS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'BIElc2Cd' \
    --body '{"changes": [{"itemIdentities": ["RvBb0aGn", "Mt625bWH", "b5sbX6as"], "itemIdentityType": "ITEM_SKU", "regionData": {"jAP57QbW": [{"currencyCode": "vSSp71zE", "currencyNamespace": "PPfmAQiq", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1972-10-08T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1990-05-10T00:00:00Z", "discountedPrice": 46, "expireAt": "1981-11-10T00:00:00Z", "price": 66, "purchaseAt": "1993-03-07T00:00:00Z", "trialPrice": 40}, {"currencyCode": "kW7TFA9g", "currencyNamespace": "E6SrYKq6", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1972-11-25T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1978-03-02T00:00:00Z", "discountedPrice": 64, "expireAt": "1992-12-21T00:00:00Z", "price": 72, "purchaseAt": "1999-10-09T00:00:00Z", "trialPrice": 66}, {"currencyCode": "cEHbiKHW", "currencyNamespace": "7flVolAW", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1990-12-05T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1999-12-12T00:00:00Z", "discountedPrice": 100, "expireAt": "1993-01-27T00:00:00Z", "price": 85, "purchaseAt": "1998-08-28T00:00:00Z", "trialPrice": 100}], "TRqjlvwn": [{"currencyCode": "nCA5tfK5", "currencyNamespace": "ushaKTPV", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1983-05-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1988-05-08T00:00:00Z", "discountedPrice": 35, "expireAt": "1993-01-08T00:00:00Z", "price": 98, "purchaseAt": "1981-08-13T00:00:00Z", "trialPrice": 96}, {"currencyCode": "h60NUA2a", "currencyNamespace": "KQwnXrmi", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1985-12-30T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1981-03-18T00:00:00Z", "discountedPrice": 44, "expireAt": "1980-07-26T00:00:00Z", "price": 88, "purchaseAt": "1974-12-07T00:00:00Z", "trialPrice": 72}, {"currencyCode": "vaf1Acwe", "currencyNamespace": "R7tJW3ML", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1998-03-10T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1975-01-23T00:00:00Z", "discountedPrice": 28, "expireAt": "1998-10-06T00:00:00Z", "price": 65, "purchaseAt": "1983-10-12T00:00:00Z", "trialPrice": 70}], "MyF7CcNu": [{"currencyCode": "2DYn6E9G", "currencyNamespace": "k51kOTJZ", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1981-06-14T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1987-02-03T00:00:00Z", "discountedPrice": 85, "expireAt": "1976-07-29T00:00:00Z", "price": 61, "purchaseAt": "1984-11-11T00:00:00Z", "trialPrice": 41}, {"currencyCode": "CGUJvERx", "currencyNamespace": "Ng8djSb4", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1998-08-24T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1972-10-27T00:00:00Z", "discountedPrice": 88, "expireAt": "1980-06-23T00:00:00Z", "price": 24, "purchaseAt": "1994-08-23T00:00:00Z", "trialPrice": 28}, {"currencyCode": "dI519Pf2", "currencyNamespace": "iogwxM5D", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1974-04-27T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1973-04-12T00:00:00Z", "discountedPrice": 50, "expireAt": "1972-11-21T00:00:00Z", "price": 30, "purchaseAt": "1985-12-13T00:00:00Z", "trialPrice": 100}]}}, {"itemIdentities": ["750xdYQg", "34WUV0Wp", "msQnp1n4"], "itemIdentityType": "ITEM_SKU", "regionData": {"H4dSaa8X": [{"currencyCode": "YHug51ZT", "currencyNamespace": "ogG0N7Hv", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1985-05-14T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1998-05-15T00:00:00Z", "discountedPrice": 21, "expireAt": "1989-12-24T00:00:00Z", "price": 78, "purchaseAt": "1976-04-10T00:00:00Z", "trialPrice": 31}, {"currencyCode": "mGdWl0wp", "currencyNamespace": "j5tVfKU3", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1996-06-12T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1986-02-25T00:00:00Z", "discountedPrice": 20, "expireAt": "1998-05-21T00:00:00Z", "price": 81, "purchaseAt": "1975-08-16T00:00:00Z", "trialPrice": 67}, {"currencyCode": "bbB9txAv", "currencyNamespace": "tRQvqJac", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1990-02-10T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1977-06-18T00:00:00Z", "discountedPrice": 30, "expireAt": "1973-05-06T00:00:00Z", "price": 60, "purchaseAt": "1977-09-18T00:00:00Z", "trialPrice": 1}], "aEUkPUBn": [{"currencyCode": "B0ZEJH3e", "currencyNamespace": "bM71Tg92", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1978-08-12T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1974-12-23T00:00:00Z", "discountedPrice": 68, "expireAt": "1992-05-22T00:00:00Z", "price": 22, "purchaseAt": "1986-01-05T00:00:00Z", "trialPrice": 54}, {"currencyCode": "0Pz7I1Wk", "currencyNamespace": "Ia0oZ1nX", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1996-11-08T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1977-04-27T00:00:00Z", "discountedPrice": 18, "expireAt": "1998-05-03T00:00:00Z", "price": 60, "purchaseAt": "1972-08-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "gIn4lPgh", "currencyNamespace": "HyMEHBzA", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1972-03-17T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1976-11-19T00:00:00Z", "discountedPrice": 26, "expireAt": "1991-04-15T00:00:00Z", "price": 21, "purchaseAt": "1993-10-12T00:00:00Z", "trialPrice": 68}], "FQxuMHnf": [{"currencyCode": "OlX6HYVE", "currencyNamespace": "iaereFCP", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1986-06-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1975-09-06T00:00:00Z", "discountedPrice": 78, "expireAt": "1984-02-15T00:00:00Z", "price": 96, "purchaseAt": "1982-08-20T00:00:00Z", "trialPrice": 26}, {"currencyCode": "VJW9yspU", "currencyNamespace": "OyHC9eKe", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1979-06-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1984-07-26T00:00:00Z", "discountedPrice": 56, "expireAt": "1983-04-06T00:00:00Z", "price": 23, "purchaseAt": "1971-07-06T00:00:00Z", "trialPrice": 67}, {"currencyCode": "zyC1aTWE", "currencyNamespace": "mPgoy4Tk", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1986-05-20T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1990-02-05T00:00:00Z", "discountedPrice": 64, "expireAt": "1975-02-02T00:00:00Z", "price": 5, "purchaseAt": "1973-04-10T00:00:00Z", "trialPrice": 23}]}}, {"itemIdentities": ["RoFNxv10", "ckMQVjKk", "3bWJ0ZuY"], "itemIdentityType": "ITEM_ID", "regionData": {"bn8vmfMY": [{"currencyCode": "GLt1AjKh", "currencyNamespace": "h3JMX7xS", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1983-06-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1986-10-11T00:00:00Z", "discountedPrice": 69, "expireAt": "1984-08-12T00:00:00Z", "price": 85, "purchaseAt": "1999-08-06T00:00:00Z", "trialPrice": 79}, {"currencyCode": "YKAEFTdl", "currencyNamespace": "KNh6GTzK", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1980-08-02T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1980-05-17T00:00:00Z", "discountedPrice": 83, "expireAt": "1982-04-02T00:00:00Z", "price": 48, "purchaseAt": "1973-11-06T00:00:00Z", "trialPrice": 56}, {"currencyCode": "QM35bSkF", "currencyNamespace": "rvGciNHb", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1997-10-25T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1997-10-13T00:00:00Z", "discountedPrice": 70, "expireAt": "1988-05-05T00:00:00Z", "price": 84, "purchaseAt": "1999-10-30T00:00:00Z", "trialPrice": 1}], "JW52uz3c": [{"currencyCode": "8pz63M0g", "currencyNamespace": "4xXT5Ts4", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1998-06-13T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1993-09-16T00:00:00Z", "discountedPrice": 63, "expireAt": "1981-11-28T00:00:00Z", "price": 52, "purchaseAt": "1978-09-24T00:00:00Z", "trialPrice": 62}, {"currencyCode": "HeBKtpvy", "currencyNamespace": "RNgjZkdD", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1979-03-12T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1986-09-06T00:00:00Z", "discountedPrice": 1, "expireAt": "1989-07-07T00:00:00Z", "price": 17, "purchaseAt": "1976-12-11T00:00:00Z", "trialPrice": 18}, {"currencyCode": "dhwmcH03", "currencyNamespace": "yoMxzRR6", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1972-06-22T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1980-12-02T00:00:00Z", "discountedPrice": 14, "expireAt": "1986-07-17T00:00:00Z", "price": 42, "purchaseAt": "1988-05-21T00:00:00Z", "trialPrice": 59}], "eaIbxM3W": [{"currencyCode": "ev9pZQjW", "currencyNamespace": "AN0tny16", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1980-02-07T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1992-10-18T00:00:00Z", "discountedPrice": 33, "expireAt": "1987-11-25T00:00:00Z", "price": 87, "purchaseAt": "1988-08-23T00:00:00Z", "trialPrice": 1}, {"currencyCode": "rM7JEMRP", "currencyNamespace": "kdTcAzkI", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1977-11-25T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1997-11-20T00:00:00Z", "discountedPrice": 12, "expireAt": "1999-07-11T00:00:00Z", "price": 73, "purchaseAt": "1973-08-05T00:00:00Z", "trialPrice": 1}, {"currencyCode": "27Qz5Sjz", "currencyNamespace": "QfOLYu9O", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1982-11-29T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1984-07-27T00:00:00Z", "discountedPrice": 27, "expireAt": "1982-05-10T00:00:00Z", "price": 28, "purchaseAt": "1988-05-10T00:00:00Z", "trialPrice": 87}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateRegionData' test.out

#- 95 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'SpHerzO8' \
    '7cg7TqtM' \
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
    'iQgi7Aj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetItem' test.out

#- 98 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '8qCRbwwZ' \
    'c4ZS1NMk' \
    --body '{"appId": "rnHs1Iyh", "appType": "GAME", "baseAppId": "WnxkImVb", "boothName": "DP0QX31g", "categoryPath": "I7VmnGIR", "clazz": "MvXe6Bip", "displayOrder": 16, "entitlementType": "DURABLE", "ext": {"IFe2bzr6": {}, "qQw6fSES": {}, "kM19OPMB": {}}, "features": ["UaZGqjsl", "lmIt2nfh", "b12gpmSh"], "images": [{"as": "u59GT2E6", "caption": "AacmZRXZ", "height": 26, "imageUrl": "rmBYIlZe", "smallImageUrl": "heP72AB8", "width": 62}, {"as": "iYHXBU3U", "caption": "k2tQm307", "height": 71, "imageUrl": "lTtuJJsH", "smallImageUrl": "ZVsG6izJ", "width": 21}, {"as": "ruOJvSRF", "caption": "LDSdj8el", "height": 2, "imageUrl": "rbhfIMSt", "smallImageUrl": "MnSqrKWY", "width": 84}], "itemIds": ["CJ5j18Ou", "3aY8nceF", "U5GKmcEK"], "itemQty": {"p8AQwqgJ": 38, "JGmPaK6H": 63, "Mkdz6zPz": 56}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"Aqp4O9XS": {"description": "jap24esy", "localExt": {"jh6Wc3mi": {}, "gf2n6iQy": {}, "r5cb5YL6": {}}, "longDescription": "fwBiaVPm", "title": "mn0T5uzl"}, "mi2NY26x": {"description": "rkPPdg3p", "localExt": {"XjmtpNfC": {}, "rIj9ntYo": {}, "3dupUHNu": {}}, "longDescription": "8abrVVOK", "title": "xr9Pa315"}, "FKDjG2Ap": {"description": "SV94Jy6y", "localExt": {"CSXBqJqj": {}, "AbVwSaoj": {}, "1ugjr8mP": {}}, "longDescription": "kr3tZ506", "title": "ERSVy5M3"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 28, "itemId": "rkxu0U9h", "itemSku": "9gCNVZxH", "itemType": "GxhZqNXJ"}, {"count": 69, "itemId": "JXSh0Z3S", "itemSku": "WISs1dYr", "itemType": "JKmx1BT6"}, {"count": 17, "itemId": "bCU9QdPu", "itemSku": "WeMEeL0E", "itemType": "JG67g4W1"}], "name": "eAmDxP23", "odds": 0.27187774525816155, "type": "REWARD", "weight": 47}, {"lootBoxItems": [{"count": 41, "itemId": "8fFa30pV", "itemSku": "bhr1BHh1", "itemType": "arZAyuLc"}, {"count": 61, "itemId": "oEkPpqKh", "itemSku": "P2jWnRTg", "itemType": "lw0gdWoE"}, {"count": 69, "itemId": "esuiDrqu", "itemSku": "ccz4J6fF", "itemType": "QezJ5E3i"}], "name": "YHIknvPc", "odds": 0.5649486969290065, "type": "PROBABILITY_GROUP", "weight": 11}, {"lootBoxItems": [{"count": 19, "itemId": "iT9s9pK8", "itemSku": "HuUY1QQH", "itemType": "Q0NCEddJ"}, {"count": 40, "itemId": "JFDEBEOO", "itemSku": "vJ5BKeip", "itemType": "IldsgB4h"}, {"count": 84, "itemId": "ukfCEIeS", "itemSku": "BLhTfzig", "itemType": "zHcRuJgY"}], "name": "aj4I8Dzy", "odds": 0.11682472921388054, "type": "REWARD", "weight": 82}], "rollFunction": "CUSTOM"}, "maxCount": 73, "maxCountPerUser": 89, "name": "EKNoMtHv", "optionBoxConfig": {"boxItems": [{"count": 19, "itemId": "63KIDTkU", "itemSku": "CqbbHGJG", "itemType": "OTvKKRTH"}, {"count": 60, "itemId": "roFTnAuu", "itemSku": "jPeP9N0v", "itemType": "dVB5a2Xk"}, {"count": 92, "itemId": "s12hOoLV", "itemSku": "M7UFnuJD", "itemType": "zeEkDxaV"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 41, "fixedTrialCycles": 47, "graceDays": 28}, "regionData": {"HrOon2OW": [{"currencyCode": "4Zw5QwVK", "currencyNamespace": "WNy2tnF2", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1976-02-13T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1989-12-24T00:00:00Z", "discountedPrice": 36, "expireAt": "1972-02-29T00:00:00Z", "price": 46, "purchaseAt": "1979-05-02T00:00:00Z", "trialPrice": 20}, {"currencyCode": "gdJDujYn", "currencyNamespace": "VnFK6gB6", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1972-08-22T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1983-09-25T00:00:00Z", "discountedPrice": 55, "expireAt": "1994-03-15T00:00:00Z", "price": 96, "purchaseAt": "1991-10-13T00:00:00Z", "trialPrice": 50}, {"currencyCode": "YnQ3jOGm", "currencyNamespace": "ROIqxqQ0", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1972-04-10T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1980-02-06T00:00:00Z", "discountedPrice": 93, "expireAt": "1976-02-15T00:00:00Z", "price": 3, "purchaseAt": "1977-07-19T00:00:00Z", "trialPrice": 16}], "vUh3w5Zt": [{"currencyCode": "fwmOCKpF", "currencyNamespace": "SMF0tfGI", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1982-02-20T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1998-03-06T00:00:00Z", "discountedPrice": 71, "expireAt": "1993-02-24T00:00:00Z", "price": 4, "purchaseAt": "1988-02-12T00:00:00Z", "trialPrice": 74}, {"currencyCode": "EjkZhEpA", "currencyNamespace": "JMCxMp2J", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1986-08-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1974-05-22T00:00:00Z", "discountedPrice": 20, "expireAt": "1972-11-17T00:00:00Z", "price": 55, "purchaseAt": "1974-10-30T00:00:00Z", "trialPrice": 21}, {"currencyCode": "tU956hOg", "currencyNamespace": "8oukDVdw", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1988-05-27T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-10-08T00:00:00Z", "discountedPrice": 68, "expireAt": "1982-06-18T00:00:00Z", "price": 94, "purchaseAt": "1999-10-01T00:00:00Z", "trialPrice": 63}], "a2k60SzC": [{"currencyCode": "qUgq1gLb", "currencyNamespace": "cIMevTmC", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1979-02-04T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1979-12-14T00:00:00Z", "discountedPrice": 16, "expireAt": "1989-06-15T00:00:00Z", "price": 2, "purchaseAt": "1979-06-16T00:00:00Z", "trialPrice": 59}, {"currencyCode": "9lINFTtE", "currencyNamespace": "RAXT2h3h", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1993-04-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1982-07-28T00:00:00Z", "discountedPrice": 97, "expireAt": "1999-06-29T00:00:00Z", "price": 2, "purchaseAt": "1977-08-12T00:00:00Z", "trialPrice": 41}, {"currencyCode": "TnNQnVUh", "currencyNamespace": "A5WnzVZd", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1981-12-27T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1993-07-16T00:00:00Z", "discountedPrice": 26, "expireAt": "1984-11-01T00:00:00Z", "price": 59, "purchaseAt": "1999-03-08T00:00:00Z", "trialPrice": 87}]}, "saleConfig": {"currencyCode": "3eRyIECE", "price": 60}, "seasonType": "TIER", "sellable": false, "sku": "raEEaDNJ", "stackable": false, "status": "ACTIVE", "tags": ["d20FVHev", "jKuMrFao", "CjthJUb7"], "targetCurrencyCode": "Lulzp3sZ", "targetNamespace": "xImVK5yh", "thumbnailUrl": "2LcM8LaM", "useCount": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateItem' test.out

#- 99 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'pvF6rP03' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeleteItem' test.out

#- 100 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'bQaq1cT8' \
    --body '{"count": 70, "orderNo": "wNFzsbrt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'AcquireItem' test.out

#- 101 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'YvLh56AW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetApp' test.out

#- 102 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'XoMiowdW' \
    'Ss9DQ0VU' \
    --body '{"carousel": [{"alt": "1HED9CGo", "previewUrl": "9aUXj3rh", "thumbnailUrl": "0UyqxVWl", "type": "video", "url": "Y5tTJw4K", "videoSource": "vimeo"}, {"alt": "104MtMhK", "previewUrl": "HmSjqPuQ", "thumbnailUrl": "ZX5KjdNr", "type": "video", "url": "9DJ4V97S", "videoSource": "youtube"}, {"alt": "lLg4bsO4", "previewUrl": "YHEYLjTS", "thumbnailUrl": "NDf3zazm", "type": "video", "url": "MrDYKe2e", "videoSource": "youtube"}], "developer": "wU4Ty6Ch", "forumUrl": "5QYyFjuB", "genres": ["Indie", "Sports", "MassivelyMultiplayer"], "localizations": {"vcu39YZJ": {"announcement": "ypWzpNXg", "slogan": "noKIz8O8"}, "NglJtZTh": {"announcement": "280vflFM", "slogan": "xIhlIT8A"}, "gyZJ16MM": {"announcement": "d2bzOrTn", "slogan": "2huwPgyU"}}, "platformRequirements": {"zBUWiKoN": [{"additionals": "Gtvyk5xE", "directXVersion": "frJDxKsw", "diskSpace": "5Xl7ZZrD", "graphics": "ZdbuvCFB", "label": "aVcohewK", "osVersion": "kVuGv9fQ", "processor": "XkErF0dr", "ram": "bYrrFQP6", "soundCard": "rW62Ctet"}, {"additionals": "BW3pvAJJ", "directXVersion": "ieHhveGg", "diskSpace": "97PY0txz", "graphics": "vYwv7atn", "label": "9EQv2Oj8", "osVersion": "TFNeGtJG", "processor": "jKbMgCeu", "ram": "AYuzrmbW", "soundCard": "ofEaKStq"}, {"additionals": "dKu4ROnO", "directXVersion": "NpJ849ch", "diskSpace": "qeiUGQMw", "graphics": "NwDlYSli", "label": "3p8YaAde", "osVersion": "l3hHMSLA", "processor": "iscGRWzk", "ram": "Cl1ZKuPx", "soundCard": "jDUGRGcC"}], "EPjbUy7F": [{"additionals": "82Adu9BY", "directXVersion": "RHrVTehr", "diskSpace": "qgvEtEs2", "graphics": "LpE0qfbv", "label": "dU8hlDoC", "osVersion": "9FnxqBlP", "processor": "BYJ7X6uV", "ram": "y7FWTSfM", "soundCard": "i2CPVGxj"}, {"additionals": "cdpdCqVe", "directXVersion": "ePMSqb8y", "diskSpace": "8qJTUQY4", "graphics": "0Zrpn0vA", "label": "D9YsPeDW", "osVersion": "rAVQZSvg", "processor": "WuCuLsUG", "ram": "rVQAbhS5", "soundCard": "4ZuQHKer"}, {"additionals": "sDmJLUHA", "directXVersion": "KtfXCKOn", "diskSpace": "a8DdjtZh", "graphics": "h6ofsUoR", "label": "h6r0e0J6", "osVersion": "vyqPw7Yl", "processor": "mV3kES0H", "ram": "i88UYgSV", "soundCard": "40OvY7ap"}], "PCrN5bEh": [{"additionals": "muHgKeWi", "directXVersion": "zEpw1zN0", "diskSpace": "mOYgGhHM", "graphics": "z9dddLWJ", "label": "WDuSYtCa", "osVersion": "Iv4Lp91w", "processor": "YUJPbvzn", "ram": "8TYoMDAa", "soundCard": "UXSuBQdv"}, {"additionals": "dhJoT0WK", "directXVersion": "5ngNUxDK", "diskSpace": "fZYofPGU", "graphics": "bSaA00nK", "label": "xQjYU6Kl", "osVersion": "avIiLxU2", "processor": "I1GyJS48", "ram": "Hxu8Ju4X", "soundCard": "SAnlXRYB"}, {"additionals": "9BgSZBvk", "directXVersion": "ehRn83B0", "diskSpace": "nrW1qx3N", "graphics": "JTugVWXz", "label": "8dv7BiEU", "osVersion": "qnzxs2de", "processor": "MF8UAJIH", "ram": "EZv5zyUU", "soundCard": "yNJkvA5x"}]}, "platforms": ["Windows", "IOS", "Android"], "players": ["MMO", "CrossPlatformMulti", "Multi"], "primaryGenre": "Indie", "publisher": "tZSd3QzX", "releaseDate": "1975-09-09T00:00:00Z", "websiteUrl": "krN4pWry"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateApp' test.out

#- 103 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    't4XTNwpp' \
    '0ni1YfIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'DisableItem' test.out

#- 104 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'LZ4YIzEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetItemDynamicData' test.out

#- 105 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'rLZOBLHC' \
    'KmLBaIwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'EnableItem' test.out

#- 106 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'okbAFW8R' \
    'gBUwBL28' \
    'BqM8UzvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'FeatureItem' test.out

#- 107 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'qeoTiNKG' \
    'RUMrimGA' \
    'z6OhmHOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'DefeatureItem' test.out

#- 108 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'Cdr3WzDm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetLocaleItem' test.out

#- 109 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '3hJdd6ua' \
    'O9TiTPnI' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 18, "comparison": "is", "name": "iaIBpYC4", "predicateType": "SeasonPassPredicate", "value": "rq6lolbj", "values": ["PMjr5M3v", "w1GqUjjF", "7QKvtVRC"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "8mYZwKft", "predicateType": "EntitlementPredicate", "value": "qSECsypS", "values": ["tLVOYQCW", "42NmYQ8H", "lHbHnfs4"]}, {"anyOf": 79, "comparison": "isNot", "name": "ktmiKd9v", "predicateType": "SeasonTierPredicate", "value": "gE2bTXJx", "values": ["WrpkWnno", "CCFqPNDq", "va15WVuE"]}]}, {"operator": "and", "predicates": [{"anyOf": 97, "comparison": "excludes", "name": "9tQSa27B", "predicateType": "EntitlementPredicate", "value": "TWjAh4gy", "values": ["41LLzQ2I", "jY5PeNr4", "JmYxH2qs"]}, {"anyOf": 58, "comparison": "is", "name": "RVmbfzwU", "predicateType": "EntitlementPredicate", "value": "KKUBfPNI", "values": ["SZexfKVx", "qdxmh5QW", "9f2oLWDP"]}, {"anyOf": 48, "comparison": "includes", "name": "uQuI7gdD", "predicateType": "SeasonTierPredicate", "value": "H933X7iX", "values": ["EEM2KOus", "GdJvucDb", "NEHcI95G"]}]}, {"operator": "or", "predicates": [{"anyOf": 34, "comparison": "isLessThan", "name": "UdccuM2y", "predicateType": "EntitlementPredicate", "value": "4S1ilfgf", "values": ["fgwZwVMv", "f7Et4uY8", "nlBwGNHg"]}, {"anyOf": 39, "comparison": "isNot", "name": "hGmsg6ZJ", "predicateType": "SeasonTierPredicate", "value": "nkHDnHTl", "values": ["RugM7a2U", "Zgeesipb", "P027okM5"]}, {"anyOf": 63, "comparison": "isLessThanOrEqual", "name": "8tAajVSv", "predicateType": "SeasonTierPredicate", "value": "0CJ7LzpF", "values": ["dDwneac7", "6yrnvXY5", "vOSF6xKA"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'UpdateItemPurchaseCondition' test.out

#- 110 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '5C6S2eHs' \
    --body '{"orderNo": "H4Y84hL7"}' \
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
    --body '{"description": "5QboMHCt", "name": "zEF9FSeg", "status": "ACTIVE", "tags": ["WYgtfuqJ", "Hrs4e3Rn", "WR30MdBZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'CreateKeyGroup' test.out

#- 113 GetKeyGroupByBoothName
eval_tap 0 113 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 114 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'ezfwc3H0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroup' test.out

#- 115 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'qSbMq4GL' \
    --body '{"description": "j8aGsH0q", "name": "E5p601ak", "status": "INACTIVE", "tags": ["9yFSfdZI", "v8oYWPUS", "4Zu0SbTt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'UpdateKeyGroup' test.out

#- 116 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '6M2Xizik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroupDynamic' test.out

#- 117 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'Ch6q0yq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ListKeys' test.out

#- 118 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'WAHtL7IW' \
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
    'E3MFqvfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetOrder' test.out

#- 122 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'G5jvMOaX' \
    --body '{"description": "rDlEX42U"}' \
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
    --body '{"dryRun": false, "notifyUrl": "syrGNhBm", "privateKey": "gT2q0kIb"}' \
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
    --body '{"currencyCode": "rJ2S5Pf1", "currencyNamespace": "Lvg8kYEV", "customParameters": {"ylINJpxF": {}, "Y8E6pU8e": {}, "Hjh0aTjI": {}}, "description": "OaQt0snb", "extOrderNo": "E0yMvqF7", "extUserId": "TJ9uB0zy", "itemType": "COINS", "language": "Yk", "metadata": {"KR29LKIh": "NU43K8bi", "hdw3prp0": "UHlWUxkB", "efhxRtrq": "bv56oqwn"}, "notifyUrl": "CLVc2qHZ", "omitNotification": true, "platform": "GG6SHcZb", "price": 60, "recurringPaymentOrderNo": "wNnT6A9z", "region": "osmDnXon", "returnUrl": "cy7NZQ4P", "sandbox": false, "sku": "DsUq38bY", "subscriptionId": "vaWLoKzH", "targetNamespace": "nngdfFnO", "targetUserId": "fY9stXH6", "title": "LYXXMndx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CreatePaymentOrderByDedicated' test.out

#- 128 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'BPKmHVB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ListExtOrderNoByExtTxId' test.out

#- 129 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'cNzHhvxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrder' test.out

#- 130 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '4xAPZ86W' \
    --body '{"extTxId": "NnQOhusP", "paymentMethod": "n4466u8a", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ChargePaymentOrder' test.out

#- 131 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'qEFXUhGA' \
    --body '{"description": "wpYq1UqZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'RefundPaymentOrderByDedicated' test.out

#- 132 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'ydOB0MTh' \
    --body '{"amount": 0, "currencyCode": "W6LwcAg5", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 55, "vat": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'SimulatePaymentOrderNotification' test.out

#- 133 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'WpyiKVT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPaymentOrderChargeStatus' test.out

#- 134 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetPlatformWalletConfig' test.out

#- 135 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Steam' \
    --body '{"allowedBalanceOrigins": ["System", "Xbox", "Playstation"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdatePlatformWalletConfig' test.out

#- 136 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ResetPlatformWalletConfig' test.out

#- 137 GetPaymentCallbackConfig1
$PYTHON -m $MODULE 'platform-get-payment-callback-config-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetPaymentCallbackConfig1' test.out

#- 138 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --body '{"description": "HekWIz4r", "eventTopic": "XlH5jw99", "maxAwarded": 68, "maxAwardedPerUser": 6, "namespaceExpression": "xCjXWcaX", "rewardCode": "BcfXXeV7", "rewardConditions": [{"condition": "BXefsSgZ", "conditionName": "xSYnVwXq", "eventName": "F6K0WA76", "rewardItems": [{"duration": 76, "itemId": "3EkrHqaL", "quantity": 80}, {"duration": 33, "itemId": "dfKszYZz", "quantity": 82}, {"duration": 12, "itemId": "n1xTDFcm", "quantity": 84}]}, {"condition": "HSx5bClx", "conditionName": "UOBmMwv5", "eventName": "pmiIVnhl", "rewardItems": [{"duration": 78, "itemId": "YSohfrLy", "quantity": 79}, {"duration": 65, "itemId": "SrC62xYt", "quantity": 59}, {"duration": 7, "itemId": "wflNGfuf", "quantity": 43}]}, {"condition": "5cWeg6eS", "conditionName": "CypsceIT", "eventName": "TkJGGCVF", "rewardItems": [{"duration": 21, "itemId": "LrILDLvi", "quantity": 96}, {"duration": 59, "itemId": "gf5nlMDO", "quantity": 90}, {"duration": 52, "itemId": "YuXnPNJg", "quantity": 1}]}], "userIdExpression": "CBYnkY0L"}' \
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
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'ImportRewards' test.out

#- 145 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'XA3mcyMm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetReward' test.out

#- 146 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'X6WF8jtN' \
    --body '{"description": "AVOYqSH5", "eventTopic": "33YlJ93C", "maxAwarded": 58, "maxAwardedPerUser": 67, "namespaceExpression": "z6lUMKi5", "rewardCode": "mweMEZo2", "rewardConditions": [{"condition": "ZnL1Zg2J", "conditionName": "fH4f73jA", "eventName": "evOnES6Y", "rewardItems": [{"duration": 73, "itemId": "WUxgOzeR", "quantity": 80}, {"duration": 63, "itemId": "HIqK5PT4", "quantity": 83}, {"duration": 38, "itemId": "mFw4HJv5", "quantity": 93}]}, {"condition": "MVMOFES2", "conditionName": "J2OzNlJE", "eventName": "3uqZz574", "rewardItems": [{"duration": 13, "itemId": "wjGYN8VN", "quantity": 85}, {"duration": 48, "itemId": "XNsmwTV8", "quantity": 16}, {"duration": 93, "itemId": "mJHNI0l6", "quantity": 19}]}, {"condition": "d629N4Yn", "conditionName": "olVWA2dW", "eventName": "xBs056jk", "rewardItems": [{"duration": 86, "itemId": "31vlCiZA", "quantity": 68}, {"duration": 69, "itemId": "vlQKiR7S", "quantity": 60}, {"duration": 69, "itemId": "QUDavOlK", "quantity": 93}]}], "userIdExpression": "Pn8N5xMR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateReward' test.out

#- 147 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'gU7cPqNZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteReward' test.out

#- 148 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'rLCRRUys' \
    --body '{"payload": {"ya4J3rvT": {}, "zMTMSwrN": {}, "ov2GW9i5": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'CheckEventCondition' test.out

#- 149 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '4JY23AUW' \
    --body '{"conditionName": "FTLq0W1J", "userId": "qwKs1mO8"}' \
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
    '0L7IOHlf' \
    --body '{"active": false, "displayOrder": 19, "endDate": "1982-12-04T00:00:00Z", "ext": {"Ifuulmee": {}, "gRwPPbn7": {}, "lttd21cS": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 70, "itemCount": 98, "rule": "SEQUENCE"}, "items": [{"id": "E4fzwG3B", "sku": "HaRcZ8NK"}, {"id": "4gkLmvEO", "sku": "aRcqTgF0"}, {"id": "xtQAXoDo", "sku": "FkmA3fgz"}], "localizations": {"cwdgJMjI": {"description": "yGfiNBQy", "localExt": {"41M1gzGC": {}, "baxw33rN": {}, "bE4bbDU4": {}}, "longDescription": "FMTbQaAN", "title": "JOODGerD"}, "CWcl3VSJ": {"description": "ENQopeHD", "localExt": {"6iKBGm5C": {}, "j7RqnJUm": {}, "fDmofxvN": {}}, "longDescription": "8pRGoUtm", "title": "bWZbEjPy"}, "q35BWDoc": {"description": "3qNcQFFy", "localExt": {"Hv141NPq": {}, "jRUMKSQj": {}, "FdjqTaZF": {}}, "longDescription": "sWzbqwTZ", "title": "QIN5jC6a"}}, "name": "8mEVCXHm", "rotationType": "NONE", "startDate": "1971-04-20T00:00:00Z", "viewId": "WqlX7idz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'CreateSection' test.out

#- 152 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'jpKDfwl6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'PurgeExpiredSection' test.out

#- 153 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'XlCF6YxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetSection' test.out

#- 154 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'MD8tJQwZ' \
    'vUVInos5' \
    --body '{"active": false, "displayOrder": 74, "endDate": "1979-06-21T00:00:00Z", "ext": {"00yH89i8": {}, "ZDPXRL8c": {}, "bTAntB1S": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 4, "itemCount": 0, "rule": "SEQUENCE"}, "items": [{"id": "1Qwzz606", "sku": "UGXPhoNZ"}, {"id": "lXMef7Av", "sku": "S3TfKx6B"}, {"id": "yTygbtOt", "sku": "cQS4Cmgw"}], "localizations": {"1wRUnIVY": {"description": "xY6Ohdkr", "localExt": {"YiCinoVO": {}, "zo4Plv1I": {}, "lTpEhjTF": {}}, "longDescription": "YdzsUNvQ", "title": "An2LuMjL"}, "qwmVz3zK": {"description": "sfjz1mFk", "localExt": {"yxoUzfMF": {}, "oXCOguSq": {}, "2A4R3wDd": {}}, "longDescription": "SkNfHJtA", "title": "3QiX9Zvt"}, "ydbaVb0s": {"description": "cd97A0GP", "localExt": {"6djn2Ps3": {}, "IVT5hUZ3": {}, "cnDq0ddZ": {}}, "longDescription": "G0EpfGAq", "title": "HKcSxUc2"}}, "name": "YgRpk2IF", "rotationType": "NONE", "startDate": "1972-10-15T00:00:00Z", "viewId": "3XALMres"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'UpdateSection' test.out

#- 155 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'GFfsH4aX' \
    'CDhshvEF' \
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
    --body '{"defaultLanguage": "8rHd250n", "defaultRegion": "yihcUVGH", "description": "QczI5ZoT", "supportedLanguages": ["RUkjGoRk", "Ps2SO9Xr", "gXNIaU11"], "supportedRegions": ["cBXLwTfo", "pqeZtHJn", "RgaGfLMF"], "title": "bvyI5PZG"}' \
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
    'zVLcmZKK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetStore' test.out

#- 164 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'KYARape2' \
    --body '{"defaultLanguage": "tsNczam4", "defaultRegion": "Cdd1QYvw", "description": "w4XDoklt", "supportedLanguages": ["gq2vXtUn", "Y6UhDJ4p", "e0s0Cuhl"], "supportedRegions": ["3dU9b4se", "YCyiB4tD", "CWx3cEX8"], "title": "wTi1v2ab"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UpdateStore' test.out

#- 165 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'pCWytPEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'DeleteStore' test.out

#- 166 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '9Ze0hL9r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryChanges' test.out

#- 167 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'PkV5GkSr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishAll' test.out

#- 168 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'cl2O47XV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'PublishSelected' test.out

#- 169 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'zU7qlNVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'SelectAllRecords' test.out

#- 170 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '7qnmBS3X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetStatistic' test.out

#- 171 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'KDhp1OkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnselectAllRecords' test.out

#- 172 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'cErmeH0l' \
    'X1hj0LaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'SelectRecord' test.out

#- 173 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'gQ94flh7' \
    '75AQfzNj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UnselectRecord' test.out

#- 174 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'Q7IuMSY2' \
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
    'epRDJjDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'RecurringChargeSubscription' test.out

#- 178 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'MDKQhuTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetTicketDynamic' test.out

#- 179 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'tQZyIiAm' \
    --body '{"orderNo": "CL8bNTTf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DecreaseTicketSale' test.out

#- 180 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'qLCv9DYB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetTicketBoothID' test.out

#- 181 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'OProN4UW' \
    --body '{"count": 3, "orderNo": "hiIP7dpJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'IncreaseTicketSale' test.out

#- 182 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '8B8VwFQn' \
    --body '{"achievements": [{"id": "Vco2oCn1", "value": 75}, {"id": "JWBxTLcO", "value": 8}, {"id": "9UlEqtzD", "value": 6}], "steamUserId": "KFEtwESJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UnlockSteamUserAchievement' test.out

#- 183 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'Ce2ksG3n' \
    'ZE13H2fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetXblUserAchievements' test.out

#- 184 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'LFzOlAZb' \
    --body '{"achievements": [{"id": "DQAEJLbV", "value": 100}, {"id": "yJMowQ6L", "value": 31}, {"id": "gmdSvWp3", "value": 15}], "serviceConfigId": "9JQwErzj", "titleId": "tuP9pUUv", "xboxUserId": "7qefNMFs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'UpdateXblUserAchievement' test.out

#- 185 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'ZAIqak1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeCampaign' test.out

#- 186 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'i0JSa5cR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeEntitlement' test.out

#- 187 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'n31D8ubf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeFulfillment' test.out

#- 188 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'dXi7BycD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeIntegration' test.out

#- 189 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'PckeGJUg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeOrder' test.out

#- 190 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'U8bD5mGF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizePayment' test.out

#- 191 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'FmKTTUxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeRevocation' test.out

#- 192 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '0mpmFxxD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeSubscription' test.out

#- 193 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'NXGlGJvH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AnonymizeWallet' test.out

#- 194 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'f558h1lt' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserDLC' test.out

#- 195 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'Ltjsu6ZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlements' test.out

#- 196 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'RCoDq3ge' \
    --body '[{"endDate": "1981-03-09T00:00:00Z", "grantedCode": "HFFaZzPI", "itemId": "jETqcKN1", "itemNamespace": "gaQ4Bn0c", "language": "QrkU_lkiL_YD", "quantity": 14, "region": "DrXQ47WS", "source": "REWARD", "startDate": "1983-01-30T00:00:00Z", "storeId": "DCKF0LLh"}, {"endDate": "1991-10-16T00:00:00Z", "grantedCode": "3lGZ7eGO", "itemId": "Pj2XoFug", "itemNamespace": "8BUQUmPH", "language": "hr-QCpA_735", "quantity": 0, "region": "VVZM28w4", "source": "OTHER", "startDate": "1986-04-16T00:00:00Z", "storeId": "FeKnQP2j"}, {"endDate": "1999-08-04T00:00:00Z", "grantedCode": "sQImTwYk", "itemId": "iuxzLrbJ", "itemNamespace": "0BkGzCNg", "language": "Tz_jKwi-Sq", "quantity": 68, "region": "kx0adnim", "source": "REDEEM_CODE", "startDate": "1992-07-17T00:00:00Z", "storeId": "yTuUSD9I"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GrantUserEntitlement' test.out

#- 197 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'mtaPAocO' \
    'QcpBWSNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserAppEntitlementByAppId' test.out

#- 198 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'CjSNEAdo' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QueryUserEntitlementsByAppType' test.out

#- 199 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'ZTvCPrrZ' \
    'CTU5WUJi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementByItemId' test.out

#- 200 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'zF69PSsq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserActiveEntitlementsByItemIds' test.out

#- 201 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'uWUafwbF' \
    'PX15633p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserEntitlementBySku' test.out

#- 202 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'FgA7i9tq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlement' test.out

#- 203 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'vfHmFvUZ' \
    '["iUW5Y0CY", "w5OXSGwQ", "kJuy9oLF"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 204 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'cHHcraLX' \
    'R2n9JQvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 205 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '7NKWIHYs' \
    'ii3fCh7s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemId' test.out

#- 206 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'ieJjZPAk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipByItemIds' test.out

#- 207 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'iWumllU3' \
    '1uXPwYxe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetUserEntitlementOwnershipBySku' test.out

#- 208 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'dGHCIkmt' \
    '4bfJOhNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'RevokeUserEntitlements' test.out

#- 209 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'IT0pv7Xe' \
    'qO8gY3c4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetUserEntitlement' test.out

#- 210 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'SryWB4yR' \
    'aDxvxwaL' \
    --body '{"endDate": "1990-09-08T00:00:00Z", "nullFieldList": ["8HkVOW8P", "nLkgqkqY", "ZWPZTgKa"], "startDate": "1974-12-30T00:00:00Z", "status": "ACTIVE", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'UpdateUserEntitlement' test.out

#- 211 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'UilcKA84' \
    'd9pMsl7z' \
    --body '{"options": ["rNJvDiP2", "hNNEI8Qr", "Q6H1ro5C"], "requestId": "tU8UjgyC", "useCount": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'ConsumeUserEntitlement' test.out

#- 212 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'E7BCK4Fe' \
    'VGrl5NpU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'DisableUserEntitlement' test.out

#- 213 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'G9zblWEi' \
    'HaUjyTHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'EnableUserEntitlement' test.out

#- 214 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '0sSlstb3' \
    'slUe94Nx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserEntitlementHistories' test.out

#- 215 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'hXsVcqTY' \
    'i1TMBMza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'RevokeUserEntitlement' test.out

#- 216 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'OrxuKvtU' \
    'VtqbDWnJ' \
    --body '{"requestId": "2i9TRmJO", "useCount": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'SellUserEntitlement' test.out

#- 217 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'Vl38d4NZ' \
    --body '{"duration": 66, "endDate": "1980-06-28T00:00:00Z", "itemId": "k6EmWxC7", "itemSku": "5M88TKhF", "language": "YkA9aRND", "order": {"currency": {"currencyCode": "e2IoPMSQ", "currencySymbol": "Kcg0OTT9", "currencyType": "VIRTUAL", "decimals": 94, "namespace": "0ll1RimB"}, "ext": {"CiQwuyrI": {}, "87uSyXP6": {}, "C0jXS8au": {}}, "free": false}, "orderNo": "wcWYyj3J", "origin": "Playstation", "quantity": 24, "region": "HqXp4JR7", "source": "PURCHASE", "startDate": "1992-10-04T00:00:00Z", "storeId": "iAUhIfi1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'FulfillItem' test.out

#- 218 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '7YrkWHNx' \
    --body '{"code": "iaNyqBfg", "language": "KDi_HmhO", "region": "FSuHmrqe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RedeemCode' test.out

#- 219 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'j8PRppYY' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "qDU8N3Dj", "namespace": "VUt0n0jf"}, "item": {"itemId": "yDbtIXIC", "itemSku": "LkK8Zvbn", "itemType": "Tg3znlg8"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "mzQx1RsY", "namespace": "hcRlv16W"}, "item": {"itemId": "we8YK3lZ", "itemSku": "FslECI9Q", "itemType": "zuQcsjFe"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "wKcT7sAs", "namespace": "v2TKCbYM"}, "item": {"itemId": "VkXEHmsH", "itemSku": "wIGGsusS", "itemType": "0zZRODEK"}, "quantity": 86, "type": "ITEM"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'FulfillRewards' test.out

#- 220 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Eljer6aG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPOrders' test.out

#- 221 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'Jx5OFp3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QueryAllUserIAPOrders' test.out

#- 222 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'KEx4aSGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserIAPConsumeHistory' test.out

#- 223 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'wTPX4ig3' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "gTg_WT", "productId": "06PuffHg", "region": "hAQfAsYX", "type": "TWITCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'MockFulfillIAPItem' test.out

#- 224 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'fpJ4wM9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryUserOrders' test.out

#- 225 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'ZfOOxAzm' \
    --body '{"currencyCode": "sbhi5QJu", "currencyNamespace": "c2SNBaOl", "discountedPrice": 78, "ext": {"fgsgBd7M": {}, "YLLoPZrk": {}, "jRm5Ki0o": {}}, "itemId": "rhXrISEa", "language": "PZHLQkTH", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 27, "quantity": 6, "region": "aUQV5QEv", "returnUrl": "KElLfbB7", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminCreateUserOrder' test.out

#- 226 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'jkzxidLc' \
    'AQWGVRg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'CountOfPurchasedItem' test.out

#- 227 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'DVso5TJC' \
    'Sugdo4XT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrder' test.out

#- 228 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'm8t1YTWq' \
    'ItjNWXm9' \
    --body '{"status": "DELETED", "statusReason": "1C2TIQzR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'UpdateUserOrderStatus' test.out

#- 229 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'JY7UfYSr' \
    'dN0JVz4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'FulfillUserOrder' test.out

#- 230 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '43EcV1FR' \
    'yeeqehMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserOrderGrant' test.out

#- 231 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'eRYKeMbL' \
    '0G4v5D6y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserOrderHistories' test.out

#- 232 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'lZguO918' \
    'X7rLoexH' \
    --body '{"additionalData": {"cardSummary": "BMBMMAYo"}, "authorisedTime": "1976-12-29T00:00:00Z", "chargebackReversedTime": "1995-12-14T00:00:00Z", "chargebackTime": "1987-08-03T00:00:00Z", "chargedTime": "1982-02-16T00:00:00Z", "createdTime": "1971-03-24T00:00:00Z", "currency": {"currencyCode": "IyzHL8jx", "currencySymbol": "akuVu5r5", "currencyType": "VIRTUAL", "decimals": 15, "namespace": "08VZxI4T"}, "customParameters": {"U3apnZXo": {}, "J4gI4EQK": {}, "O8xC4D0F": {}}, "extOrderNo": "sUo3IB2k", "extTxId": "X5REQZsH", "extUserId": "yXzoIXNf", "issuedAt": "1997-10-21T00:00:00Z", "metadata": {"KbL9HyJt": "tdgfLGO3", "ummpllnV": "6B62P1Ka", "zg73c6Up": "mA4ehxNI"}, "namespace": "IlcrZzga", "nonceStr": "meT2mLkk", "paymentMethod": "AMjHyI0e", "paymentMethodFee": 13, "paymentOrderNo": "Axj0nZHj", "paymentProvider": "PAYPAL", "paymentProviderFee": 62, "paymentStationUrl": "oKHJngwM", "price": 8, "refundedTime": "1976-08-10T00:00:00Z", "salesTax": 54, "sandbox": false, "sku": "FJ0iGLRT", "status": "REQUEST_FOR_INFORMATION", "statusReason": "tkNJCnDS", "subscriptionId": "rsSey2Bq", "subtotalPrice": 84, "targetNamespace": "ctVEux2M", "targetUserId": "SuwsEHlw", "tax": 6, "totalPrice": 67, "totalTax": 9, "txEndTime": "1989-09-14T00:00:00Z", "type": "yhsHS6Yq", "userId": "PudWviQs", "vat": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ProcessUserOrderNotification' test.out

#- 233 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'Eb8Gnsth' \
    'mQ2Y6ZGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'DownloadUserOrderReceipt' test.out

#- 234 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'iqrg3lpq' \
    --body '{"currencyCode": "N5bOfnqJ", "currencyNamespace": "5bzDRzbh", "customParameters": {"MxfEDE4T": {}, "rtIHyyMq": {}, "79EdB9Mx": {}}, "description": "aF8QHGM2", "extOrderNo": "IuQYBO8m", "extUserId": "0HgTth47", "itemType": "APP", "language": "Rx-hswj_847", "metadata": {"MrAGpdyF": "6WDHn3eP", "BxQNz2IU": "EHMzl5jh", "wVDsuzwJ": "4v50eoaI"}, "notifyUrl": "BrTh0EKk", "omitNotification": false, "platform": "5ckjphUR", "price": 37, "recurringPaymentOrderNo": "HgCfaWzP", "region": "UvCnfqsP", "returnUrl": "GgJZyRwi", "sandbox": false, "sku": "RPvwA9k6", "subscriptionId": "yJz03NET", "title": "dywPqYer"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'CreateUserPaymentOrder' test.out

#- 235 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'rpOm4M2p' \
    'M4fIfcHB' \
    --body '{"description": "WZM50aHb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'RefundUserPaymentOrder' test.out

#- 236 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'PXRns3qw' \
    --body '{"code": "YL6LwGlZ", "orderNo": "GF7XQPLA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ApplyUserRedemption' test.out

#- 237 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'cIL7FvAM' \
    --body '{"meta": {"WqhyyNZH": {}, "1CducB5y": {}, "5iMdeBG7": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "s7hqIH2N", "namespace": "gARSG3QQ"}, "entitlement": {"entitlementId": "NGNH2K0U"}, "item": {"itemIdentity": "uJdeGNqu", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 82, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "XpDQ5rU2", "namespace": "taDWh9JV"}, "entitlement": {"entitlementId": "5oc5IFQs"}, "item": {"itemIdentity": "rwHqFqwV", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "ozeeOjIF", "namespace": "QfXV3YW3"}, "entitlement": {"entitlementId": "ug3nCXhD"}, "item": {"itemIdentity": "7FUz1iOe", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 87, "type": "CURRENCY"}], "source": "DLC", "transactionId": "0LmseIRX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'DoRevocation' test.out

#- 238 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'eoerZAxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'QueryUserSubscriptions' test.out

#- 239 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'DPXU5xJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserSubscriptionActivities' test.out

#- 240 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'hIpJ9b0A' \
    --body '{"grantDays": 31, "itemId": "Bsx8oqMz", "language": "bE0ljQaB", "reason": "tb47V691", "region": "j0FZp2vj", "source": "OXptxzx6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'PlatformSubscribeSubscription' test.out

#- 241 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'kkaZYpl5' \
    '2sQR9Znp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 242 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '5d1eSwrG' \
    '2GBBEWrD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetUserSubscription' test.out

#- 243 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'bQ1ZzhDu' \
    'LHq9LTBs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'DeleteUserSubscription' test.out

#- 244 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'tguOdN0O' \
    '7l3GbKPH' \
    --body '{"immediate": false, "reason": "kzwR40tf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'CancelSubscription' test.out

#- 245 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'd9GFXCht' \
    'xB10d4Q8' \
    --body '{"grantDays": 28, "reason": "qZSWdEyO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GrantDaysToSubscription' test.out

#- 246 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'VYrTdDq7' \
    'IqbTVv8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'GetUserSubscriptionBillingHistories' test.out

#- 247 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'LsqQW8HS' \
    'rEm5Y7jI' \
    --body '{"additionalData": {"cardSummary": "232Sjkti"}, "authorisedTime": "1976-02-01T00:00:00Z", "chargebackReversedTime": "1975-10-24T00:00:00Z", "chargebackTime": "1991-09-08T00:00:00Z", "chargedTime": "1984-02-06T00:00:00Z", "createdTime": "1994-04-07T00:00:00Z", "currency": {"currencyCode": "e8KdizXm", "currencySymbol": "rmK0sCUs", "currencyType": "VIRTUAL", "decimals": 64, "namespace": "xKocHomt"}, "customParameters": {"joU1kUqR": {}, "edwIu1TS": {}, "Rr6r8mzf": {}}, "extOrderNo": "MedpcKhv", "extTxId": "HPlvYanG", "extUserId": "qEkn9OEV", "issuedAt": "1982-05-23T00:00:00Z", "metadata": {"LWGT4MXh": "mzvRQb7c", "0vmjWq9f": "QqzulLGf", "QMqSLQDl": "RFYMVfiA"}, "namespace": "Ma6Pco7M", "nonceStr": "fvikslpy", "paymentMethod": "L9BYLVVz", "paymentMethodFee": 27, "paymentOrderNo": "qMeJPCbs", "paymentProvider": "PAYPAL", "paymentProviderFee": 19, "paymentStationUrl": "8VQhYSFe", "price": 57, "refundedTime": "1991-11-23T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "wHGG39YA", "status": "REFUND_FAILED", "statusReason": "J4HuLfeT", "subscriptionId": "fFBTOFFM", "subtotalPrice": 72, "targetNamespace": "Xncm5igp", "targetUserId": "AewbmnWk", "tax": 50, "totalPrice": 62, "totalTax": 39, "txEndTime": "1974-01-03T00:00:00Z", "type": "k3b5cAFV", "userId": "o85r1b8Y", "vat": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ProcessUserSubscriptionNotification' test.out

#- 248 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'QXzSQRWR' \
    's9EGnRPg' \
    --body '{"count": 31, "orderNo": "lJElgJ8k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AcquireUserTicket' test.out

#- 249 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'x1WEeDbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'QueryUserCurrencyWallets' test.out

#- 250 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'l13FtQMu' \
    '41rnOzbs' \
    --body '{"allowOverdraft": true, "amount": 33, "balanceOrigin": "GooglePlay", "reason": "jfn8lY4D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'DebitUserWalletByCurrencyCode' test.out

#- 251 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'nYRxY8Zh' \
    'Heb0CaPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ListUserCurrencyTransactions' test.out

#- 252 CheckWallet
eval_tap 0 252 'CheckWallet # SKIP deprecated' test.out

#- 253 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'DjrSotKn' \
    'pJWALpTo' \
    --body '{"amount": 20, "expireAt": "1983-05-25T00:00:00Z", "origin": "GooglePlay", "reason": "JOCViHwu", "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'CreditUserWallet' test.out

#- 254 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'XvPdzEpD' \
    'ln04F8BQ' \
    --body '{"amount": 19, "walletPlatform": "Other"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PayWithUserWallet' test.out

#- 255 GetUserWallet
eval_tap 0 255 'GetUserWallet # SKIP deprecated' test.out

#- 256 DebitUserWallet
eval_tap 0 256 'DebitUserWallet # SKIP deprecated' test.out

#- 257 DisableUserWallet
eval_tap 0 257 'DisableUserWallet # SKIP deprecated' test.out

#- 258 EnableUserWallet
eval_tap 0 258 'EnableUserWallet # SKIP deprecated' test.out

#- 259 ListUserWalletTransactions
eval_tap 0 259 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 260 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'ListViews' test.out

#- 261 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'zobhDa8V' \
    --body '{"displayOrder": 48, "localizations": {"tZF6aSRm": {"description": "HU5iR3hX", "localExt": {"IbzWPKOk": {}, "zftOgDQA": {}, "WhulbrDf": {}}, "longDescription": "7q4cAnpm", "title": "LiEu4CNt"}, "X2lnqi7c": {"description": "HTSdGoLZ", "localExt": {"bC3UJruU": {}, "4uIXBZsE": {}, "YogFWiH9": {}}, "longDescription": "z4E8zmaZ", "title": "5cg0REtU"}, "WY4fVIdq": {"description": "wCWF5wmb", "localExt": {"OubTxAAe": {}, "DCowR3Me": {}, "CNL1oNrF": {}}, "longDescription": "3SmgudQu", "title": "sJLsPlW7"}}, "name": "ZyORFkN9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CreateView' test.out

#- 262 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'EbKbTbrD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetView' test.out

#- 263 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'zNgVEcw0' \
    'lxRam16O' \
    --body '{"displayOrder": 66, "localizations": {"v4VjJf40": {"description": "LjUdOREL", "localExt": {"VXUFQyVl": {}, "t9jmxmxp": {}, "fp41k1uD": {}}, "longDescription": "g59PhdUX", "title": "ShabwyYC"}, "xTHrDel8": {"description": "oThvr8CU", "localExt": {"Ezw4zL1Q": {}, "eR3EYXBF": {}, "pUX9y4tY": {}}, "longDescription": "7o5FFi1n", "title": "10vDgyoH"}, "XIlrMl2R": {"description": "AukCL26i", "localExt": {"hdMy9YCL": {}, "NJEkvq6S": {}, "USt8xd8E": {}}, "longDescription": "gE15XNuw", "title": "6Y7sToQN"}}, "name": "kuZzJ1XB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateView' test.out

#- 264 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'xw01iBBQ' \
    'ukgQ94Zv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'DeleteView' test.out

#- 265 QueryWallets
eval_tap 0 265 'QueryWallets # SKIP deprecated' test.out

#- 266 GetWallet
eval_tap 0 266 'GetWallet # SKIP deprecated' test.out

#- 267 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'PCWcMX0o' \
    'v3U2sKjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'SyncOrders' test.out

#- 268 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["eyFS97dY", "D7LkcTKY", "pCfl6HPy"], "apiKey": "5cJfAV5i", "authoriseAsCapture": false, "blockedPaymentMethods": ["fzwt3bpx", "RNt6lKoM", "jCPtEKeB"], "clientKey": "WTm78Fn8", "dropInSettings": "TvZVTe4L", "liveEndpointUrlPrefix": "2lXrVPX6", "merchantAccount": "r5ZTcnVV", "notificationHmacKey": "OKMApTcW", "notificationPassword": "sFRUlWBp", "notificationUsername": "4gBs9Uuf", "returnUrl": "gsVbG6TU", "settings": "e3jbuQ7H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'TestAdyenConfig' test.out

#- 269 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "MPO4ozK7", "privateKey": "05ykRqSP", "publicKey": "YZgPm4JL", "returnUrl": "sXVtBOEe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestAliPayConfig' test.out

#- 270 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "tHsxAJ8N", "secretKey": "y1LRkPU9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'TestCheckoutConfig' test.out

#- 271 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DebugMatchedPaymentMerchantConfig' test.out

#- 272 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "hrl5nkpE", "clientSecret": "dBe8bYWd", "returnUrl": "ok4UnUEO", "webHookId": "yP0cPZf5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestPayPalConfig' test.out

#- 273 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["OvolfI0m", "qZctohLh", "eRaQkfML"], "publishableKey": "FW9B7jHZ", "secretKey": "ro4hhwnA", "webhookSecret": "NAGp8zGq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'TestStripeConfig' test.out

#- 274 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "NGrcQyoA", "key": "1TWPcy83", "mchid": "iXfYXNdM", "returnUrl": "kdg9TMwx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'TestWxPayConfig' test.out

#- 275 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "NcQ6CkVi", "flowCompletionUrl": "8fqVPRqN", "merchantId": 3, "projectId": 9, "projectSecretKey": "F5yLnYSa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'TestXsollaConfig' test.out

#- 276 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    '8xFLvcYe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetPaymentMerchantConfig' test.out

#- 277 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'xMMMiDFh' \
    --body '{"allowedPaymentMethods": ["5RbW021c", "HN3QbzVu", "JZH3k54c"], "apiKey": "ExxWKtdG", "authoriseAsCapture": false, "blockedPaymentMethods": ["W4FILotv", "5ycTa0i6", "ifYP1zfg"], "clientKey": "jsy3VRjX", "dropInSettings": "4qA4g9OG", "liveEndpointUrlPrefix": "oWw1qnCA", "merchantAccount": "vdnAcokJ", "notificationHmacKey": "0rzqX2KJ", "notificationPassword": "cYHgiFDx", "notificationUsername": "clBXap6j", "returnUrl": "73doCWxh", "settings": "ubMXbxNv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateAdyenConfig' test.out

#- 278 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'T6wAffv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestAdyenConfigById' test.out

#- 279 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'uzKAwiI4' \
    --body '{"appId": "wTxNIefC", "privateKey": "mtrxWu29", "publicKey": "3551nQBN", "returnUrl": "KcqCkUXR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateAliPayConfig' test.out

#- 280 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'j8gQHEe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestAliPayConfigById' test.out

#- 281 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'CO370Osb' \
    --body '{"publicKey": "zRKKPd6m", "secretKey": "jzLxllUr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdateCheckoutConfig' test.out

#- 282 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'FYn7cSuO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestCheckoutConfigById' test.out

#- 283 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '7NxKHUHg' \
    --body '{"clientID": "0c4X7fHd", "clientSecret": "ITmN9opa", "returnUrl": "F0kh3pCR", "webHookId": "B3infEVx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdatePayPalConfig' test.out

#- 284 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'ArF7TB6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestPayPalConfigById' test.out

#- 285 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '6a71zAJp' \
    --body '{"allowedPaymentMethodTypes": ["aPeudUtK", "PJUmAvxB", "xJNPlvvY"], "publishableKey": "Zw4MWzWF", "secretKey": "TuNPf5JC", "webhookSecret": "SDyYy4e5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateStripeConfig' test.out

#- 286 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'qoTZxSoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'TestStripeConfigById' test.out

#- 287 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'bQUnUxS6' \
    --body '{"appId": "m68WL3HD", "key": "L4yx5I0e", "mchid": "uBsccHPA", "returnUrl": "2v9XP9en"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'UpdateWxPayConfig' test.out

#- 288 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'fEX7lloL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'UpdateWxPayConfigCert' test.out

#- 289 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'gIYqxFfS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'TestWxPayConfigById' test.out

#- 290 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'NJlHCjxL' \
    --body '{"apiKey": "NnYUlGQs", "flowCompletionUrl": "Fpy9ZVlL", "merchantId": 71, "projectId": 98, "projectSecretKey": "FwLgT78n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateXsollaConfig' test.out

#- 291 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'ootfUs95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'TestXsollaConfigById' test.out

#- 292 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '59ilm3ca' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdateXsollaUIConfig' test.out

#- 293 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryPaymentProviderConfig' test.out

#- 294 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "w9Yn2z5c", "region": "nbm7z2Aa", "sandboxTaxJarApiToken": "24yBTw3w", "specials": ["ALIPAY", "WALLET", "WALLET"], "taxJarApiToken": "yWf3VujS", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'CreatePaymentProviderConfig' test.out

#- 295 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetAggregatePaymentProviders' test.out

#- 296 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DebugMatchedPaymentProviderConfig' test.out

#- 297 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetSpecialPaymentProviders' test.out

#- 298 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'DMcJxfMf' \
    --body '{"aggregate": "XSOLLA", "namespace": "Flt3JvDg", "region": "MiyBGygW", "sandboxTaxJarApiToken": "FTAY3Th5", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "wPCPKVPl", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'UpdatePaymentProviderConfig' test.out

#- 299 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'WbtcJUxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DeletePaymentProviderConfig' test.out

#- 300 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'GetPaymentTaxConfig' test.out

#- 301 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "3AWyDkA5", "taxJarApiToken": "LmART6ku", "taxJarEnabled": false, "taxJarProductCodesMapping": {"R7zDFMoN": "TQmlS8lM", "lY8Ujprh": "CxhzW6ZM", "7LkTVrtV": "JZVhxCVd"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'UpdatePaymentTaxConfig' test.out

#- 302 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'jPutJ8dk' \
    'AVOJ5img' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'SyncPaymentOrders' test.out

#- 303 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetRootCategories' test.out

#- 304 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'DownloadCategories' test.out

#- 305 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'hdfVhjnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetCategory' test.out

#- 306 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'd66A1SQm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetChildCategories' test.out

#- 307 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'WGSQLAVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetDescendantCategories' test.out

#- 308 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicListCurrencies' test.out

#- 309 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'GetIAPItemMapping' test.out

#- 310 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'AJ7zX5lB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemByAppId' test.out

#- 311 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicQueryItems' test.out

#- 312 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '80k2smdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetItemBySku' test.out

#- 313 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'BS2MaIP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicBulkGetItems' test.out

#- 314 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["PjngEFgg", "q91cpgvo", "DBgYfLBd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicValidateItemPurchaseCondition' test.out

#- 315 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'GNAZEvbv' \
    'xqa0K7VU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicSearchItems' test.out

#- 316 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'bjUnzirn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetApp' test.out

#- 317 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'EsxSE4vB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetItemDynamicData' test.out

#- 318 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'zG7VK8sW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetItem' test.out

#- 319 GetPaymentCustomization
eval_tap 0 319 'GetPaymentCustomization # SKIP deprecated' test.out

#- 320 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "EshmZf5f", "paymentProvider": "XSOLLA", "returnUrl": "wQNmCQmG", "ui": "CF963Cbs", "zipCode": "OawlRBQJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetPaymentUrl' test.out

#- 321 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'H6fNekhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetPaymentMethods' test.out

#- 322 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '077gxaj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUnpaidPaymentOrder' test.out

#- 323 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '5huTA6Av' \
    --body '{"token": "mW0567BF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'Pay' test.out

#- 324 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'qbrPIuxK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicCheckPaymentOrderPaidStatus' test.out

#- 325 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    'J3k0HGtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentPublicConfig' test.out

#- 326 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'K43uORGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetQRCode' test.out

#- 327 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'EOOwTuY8' \
    'dhNCDWWp' \
    'CHECKOUT' \
    'B6tedgFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicNormalizePaymentReturnUrl' test.out

#- 328 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'zBm5vGA3' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'GetPaymentTaxValue' test.out

#- 329 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '2CqgCG7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetRewardByCode' test.out

#- 330 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'QueryRewards1' test.out

#- 331 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'wJCDqkzO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'GetReward1' test.out

#- 332 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicListStores' test.out

#- 333 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicExistsAnyMyActiveEntitlement' test.out

#- 334 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'dFwLJpIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 335 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'xzLE1V9U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 336 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '1NgpH7Oc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 337 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetEntitlementOwnershipToken' test.out

#- 338 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "44yjRdfq", "language": "HjV-103", "region": "Caw9UF7c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'SyncTwitchDropsEntitlement' test.out

#- 339 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'dSDd99DQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyWallet' test.out

#- 340 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'Z7vnTx8H' \
    --body '{"epicGamesJwtToken": "DXTJWiyw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncEpicGameDLC' test.out

#- 341 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '17ogzmbj' \
    --body '{"serviceLabel": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicSyncPsnDlcInventory' test.out

#- 342 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'SLYDrZJv' \
    --body '{"serviceLabels": [25, 60, 77]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 343 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'Ut6fzYRn' \
    --body '{"appId": "85brTu8F", "steamId": "7cuCPh1T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'SyncSteamDLC' test.out

#- 344 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'GZJmgWNH' \
    --body '{"xstsToken": "WnvOBRCt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxDLC' test.out

#- 345 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '4onqRo2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserEntitlements' test.out

#- 346 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'nMSRarKg' \
    '4coy3AFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserAppEntitlementByAppId' test.out

#- 347 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'ULIn21Nf' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserEntitlementsByAppType' test.out

#- 348 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'FNgDWNC6' \
    'yh7kgTHl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementByItemId' test.out

#- 349 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'rxKbsV4X' \
    'trI7SFBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementBySku' test.out

#- 350 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'gkwHifMH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicExistsAnyUserActiveEntitlement' test.out

#- 351 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'YI581HbF' \
    '7fMX9lDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 352 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'YxGRJM92' \
    'eX42WW2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 353 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'Kf5urEOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 354 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ASBicX3Z' \
    'wzZ7aVhr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 355 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'kmhSOEoz' \
    'GOv8D0iV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserEntitlement' test.out

#- 356 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'xzrec5kN' \
    'wJAxm0Rd' \
    --body '{"options": ["m9l6nIhG", "5SilDDIs", "mj4h625d"], "requestId": "IsMKWBxF", "useCount": 5}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicConsumeUserEntitlement' test.out

#- 357 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'RAIrI81Z' \
    'R2kNzh60' \
    --body '{"requestId": "RQNaTEhM", "useCount": 74}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicSellUserEntitlement' test.out

#- 358 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'MepgzY9j' \
    --body '{"code": "LiAdMiQ7", "language": "je_Eocs", "region": "Mur18nCx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicRedeemCode' test.out

#- 359 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'iV9bQMHp' \
    --body '{"excludeOldTransactions": false, "language": "lW_hknm", "productId": "0hTINvq1", "receiptData": "VR9SJUfQ", "region": "EX996Mh1", "transactionId": "sQ3Dw3uy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicFulfillAppleIAPItem' test.out

#- 360 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'jgQNAs91' \
    --body '{"epicGamesJwtToken": "88Qm3W1D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncEpicGamesInventory' test.out

#- 361 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'e2McGd10' \
    --body '{"autoAck": true, "language": "EX-Mu", "orderId": "H55RLEge", "packageName": "AsSpQdcm", "productId": "GHZuRVQ8", "purchaseTime": 40, "purchaseToken": "CyDgf6eF", "region": "AiqSkHi0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicFulfillGoogleIAPItem' test.out

#- 362 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'BR2ElF6z' \
    --body '{"currencyCode": "6eJKuOW6", "price": 0.8665675678395318, "productId": "akRFizqx", "serviceLabel": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicReconcilePlayStationStore' test.out

#- 363 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'R03RovQZ' \
    --body '{"currencyCode": "hwfjkq9i", "price": 0.38788789534488854, "productId": "TbyD3D01", "serviceLabels": [72, 89, 39]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 364 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'ghTrk68F' \
    --body '{"appId": "WFzuLBdl", "currencyCode": "rKjUbgZQ", "language": "lX-LMoi_WM", "price": 0.46682875793079504, "productId": "kharfqao", "region": "MsGyv1Ru", "steamId": "SNdycDss"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'SyncSteamInventory' test.out

#- 365 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'UeHiVDXz' \
    --body '{"gameId": "SJ8kbFAy", "language": "uD", "region": "xSjlyvR9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'SyncTwitchDropsEntitlement1' test.out

#- 366 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'PxG9Lji2' \
    --body '{"currencyCode": "Vc88W8aL", "price": 0.15245711666226813, "productId": "IxVGpdOq", "xstsToken": "guxvRwI9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncXboxInventory' test.out

#- 367 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'ZBTipMRl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicQueryUserOrders' test.out

#- 368 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'hK9DMMaI' \
    --body '{"currencyCode": "4ryVDvNa", "discountedPrice": 36, "ext": {"P31wAkVH": {}, "75UcmNXK": {}, "5RqcIo9l": {}}, "itemId": "pz9oM52v", "language": "frMH-wFKL-401", "price": 45, "quantity": 27, "region": "JDBwIDsJ", "returnUrl": "HNg6TvNG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicCreateUserOrder' test.out

#- 369 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'jwI4TbTw' \
    'BufUorJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetUserOrder' test.out

#- 370 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'uduhCEJ5' \
    'XiKDIE9Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCancelUserOrder' test.out

#- 371 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'ugcupLxV' \
    'BcRkfhRu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserOrderHistories' test.out

#- 372 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'qkOTHSia' \
    '7oFd1fEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicDownloadUserOrderReceipt' test.out

#- 373 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'DuyAsQGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetPaymentAccounts' test.out

#- 374 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'wJR5poI7' \
    'card' \
    '8RQnj4im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicDeletePaymentAccount' test.out

#- 375 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'u6XFfRcW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicListActiveSections' test.out

#- 376 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'DXhq1YmG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserSubscriptions' test.out

#- 377 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'eygr2S4Y' \
    --body '{"currencyCode": "w8NmPaBe", "itemId": "ryzX2hOP", "language": "xwg_gYJR", "region": "1iG3TySO", "returnUrl": "h8SI75oX", "source": "byq8FBbu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicSubscribeSubscription' test.out

#- 378 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'r80Qwnlg' \
    'AVfqz6gQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 379 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'Jh8sn0bV' \
    'WRkvmAem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserSubscription' test.out

#- 380 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'h8lioBR7' \
    'xTXcEIFo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicChangeSubscriptionBillingAccount' test.out

#- 381 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'd3lCzvjH' \
    'zDHOrSJ1' \
    --body '{"immediate": true, "reason": "xUAj3jzZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicCancelSubscription' test.out

#- 382 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'vEaY103Y' \
    'UIMuSjDH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserSubscriptionBillingHistories' test.out

#- 383 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'z0zPWMZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicListViews' test.out

#- 384 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'NNP2JqQq' \
    'hISTBT1G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetWallet' test.out

#- 385 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ofv4SuaZ' \
    '8yCB9TVZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicListUserWalletTransactions' test.out

#- 386 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'QueryItems1' test.out

#- 387 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'ImportStore1' test.out

#- 388 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'nuzgvAZJ' \
    --body '{"itemIds": ["Rm71EC3E", "NuvD8OPs", "p5Z3ez84"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
