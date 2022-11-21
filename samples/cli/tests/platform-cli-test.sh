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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "aoE2Ryaq", "appType": "SOFTWARE", "baseAppId": "Y5BBrpyO", "boothName": "p0XgH4Pw", "boundItemIds": ["LtVfBxxC", "7ubvcunC", "IRhY9jvb"], "categoryPath": "LgxKsutl", "clazz": "gWdgULnr", "createdAt": "1980-01-24T00:00:00Z", "description": "UZfTXzw7", "displayOrder": 28, "entitlementType": "DURABLE", "ext": {"TH6XJUub": {}, "3fuTgkXr": {}, "KByXA5o0": {}}, "features": ["F8pxeO9y", "XSac6Uts", "BcJdIBpS"], "fresh": false, "images": [{"as": "i2hdwn2s", "caption": "fqZQ6BZ3", "height": 10, "imageUrl": "mffGkK3S", "smallImageUrl": "sm0gwtz3", "width": 59}, {"as": "XQMshsxS", "caption": "r0lRmM2v", "height": 82, "imageUrl": "oDRgzZr4", "smallImageUrl": "gYC5Y3Yb", "width": 69}, {"as": "7qSuMq49", "caption": "Zi6Obev5", "height": 58, "imageUrl": "bE1DiNRJ", "smallImageUrl": "zNc4Xfng", "width": 31}], "itemId": "GSzIV0JM", "itemIds": ["D3OLu563", "qCzQMP5Z", "GGtrxTG3"], "itemQty": {"6pVRBBFw": 84, "eEiffv2D": 59, "CJhqzLob": 69}, "itemType": "APP", "language": "YXPqA8nS", "listable": true, "localExt": {"fnNj4lgg": {}, "XkXMhWmc": {}, "YylvPELZ": {}}, "longDescription": "45o3pRkx", "lootBoxConfig": {"rewardCount": 46, "rewards": [{"lootBoxItems": [{"count": 67, "itemId": "V6JigcMT", "itemSku": "WH5ZiMU8", "itemType": "7YBGNFhm"}, {"count": 29, "itemId": "vznU3Gww", "itemSku": "RUdEajbl", "itemType": "RBx9biTh"}, {"count": 3, "itemId": "1NwJm29R", "itemSku": "wuSv9NDi", "itemType": "8AtBRbhx"}], "name": "YLQ1A7b4", "odds": 0.6641997651170433, "type": "PROBABILITY_GROUP", "weight": 72}, {"lootBoxItems": [{"count": 97, "itemId": "xee9NvKm", "itemSku": "857MjbKk", "itemType": "THGQ58T1"}, {"count": 2, "itemId": "jYCmO6OM", "itemSku": "gE6PFYAy", "itemType": "t1VtTEK0"}, {"count": 4, "itemId": "C4gOveQW", "itemSku": "KVbRaaig", "itemType": "8FInnm14"}], "name": "YgoVXSI8", "odds": 0.8969551369797509, "type": "REWARD_GROUP", "weight": 56}, {"lootBoxItems": [{"count": 90, "itemId": "kZngf6Za", "itemSku": "ziv6LVOl", "itemType": "apgADo89"}, {"count": 18, "itemId": "iYYIyg8d", "itemSku": "I3F1jUYW", "itemType": "eE6Fg6tb"}, {"count": 83, "itemId": "PEP1ctqb", "itemSku": "wv6yd8Mm", "itemType": "pJugtLe7"}], "name": "L9cusf83", "odds": 0.521053829683057, "type": "PROBABILITY_GROUP", "weight": 75}]}, "maxCount": 100, "maxCountPerUser": 48, "name": "F3TjmjJi", "namespace": "USI8IwEp", "optionBoxConfig": {"boxItems": [{"count": 83, "itemId": "rrQPMQwt", "itemSku": "iOG0kx8v", "itemType": "NjJnSJwH"}, {"count": 24, "itemId": "B7TCd0QZ", "itemSku": "7wwMtJr5", "itemType": "Vg6nlESe"}, {"count": 83, "itemId": "E8dbPTnh", "itemSku": "XpA9fJbC", "itemType": "zgMJsFR0"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 62, "comparison": "isLessThan", "name": "thqpvgSO", "predicateType": "EntitlementPredicate", "value": "0ObCCG76", "values": ["O41w7Sc0", "Y66ZmimH", "IVY6gnTt"]}, {"anyOf": 67, "comparison": "isGreaterThanOrEqual", "name": "CK61As7A", "predicateType": "SeasonPassPredicate", "value": "dETO0m8L", "values": ["zCr3KM8v", "ZAtu5Xwy", "dG3a4vP3"]}, {"anyOf": 40, "comparison": "isGreaterThanOrEqual", "name": "tmf4J4QY", "predicateType": "SeasonPassPredicate", "value": "ts8oK8hQ", "values": ["UyHo40RS", "tNnCxCjQ", "FD0Cx32a"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "isNot", "name": "D9bXve8g", "predicateType": "SeasonTierPredicate", "value": "i6J1v8A4", "values": ["JqGtj4iI", "nHaVifYK", "T9tsjw5Q"]}, {"anyOf": 29, "comparison": "is", "name": "AVyizjwn", "predicateType": "EntitlementPredicate", "value": "mFWtl01N", "values": ["p9asGSGj", "4IISM8b3", "K2TW3yXh"]}, {"anyOf": 77, "comparison": "isNot", "name": "5pdzgIJL", "predicateType": "SeasonTierPredicate", "value": "ncXYRXp4", "values": ["YykFRmNZ", "nMeiHW6S", "FB6og3la"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "excludes", "name": "gP35dwBJ", "predicateType": "EntitlementPredicate", "value": "UccIeMrr", "values": ["7MTPeCSG", "Te3gW8hD", "vNaXHuUq"]}, {"anyOf": 4, "comparison": "isLessThanOrEqual", "name": "NMcjcIhf", "predicateType": "EntitlementPredicate", "value": "WIAatRnU", "values": ["FF2oAhwk", "HDTE3fjT", "KU1oOAp5"]}, {"anyOf": 68, "comparison": "isGreaterThanOrEqual", "name": "KJa3oJN3", "predicateType": "EntitlementPredicate", "value": "kPz5eqqy", "values": ["PI4d8h66", "Ks8Oi66R", "tBBwac60"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 98, "fixedTrialCycles": 21, "graceDays": 47}, "region": "FqZQBVQb", "regionData": [{"currencyCode": "t0Iajm4T", "currencyNamespace": "CCd7G75K", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1981-11-17T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1986-04-02T00:00:00Z", "discountedPrice": 56, "expireAt": "1979-06-20T00:00:00Z", "price": 43, "purchaseAt": "1995-10-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "2h7UbSQI", "currencyNamespace": "3MPjS63H", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1971-06-30T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1983-12-05T00:00:00Z", "discountedPrice": 97, "expireAt": "1971-12-03T00:00:00Z", "price": 7, "purchaseAt": "1977-04-18T00:00:00Z", "trialPrice": 64}, {"currencyCode": "ym2V2i1s", "currencyNamespace": "oux5seqy", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1978-05-09T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1985-10-24T00:00:00Z", "discountedPrice": 65, "expireAt": "1976-12-27T00:00:00Z", "price": 28, "purchaseAt": "1998-06-02T00:00:00Z", "trialPrice": 3}], "seasonType": "TIER", "sku": "2ViGnKUw", "stackable": false, "status": "INACTIVE", "tags": ["rnnOTou9", "F3YvOJcv", "CY0HuqZB"], "targetCurrencyCode": "Bi5yzPaN", "targetItemId": "IUqoyoMQ", "targetNamespace": "SE5Uzoev", "thumbnailUrl": "2dtqyx2d", "title": "93IOZETf", "updatedAt": "1982-03-27T00:00:00Z", "useCount": 49}, "namespace": "AzjD3zIr", "order": {"currency": {"currencyCode": "yhIRMYFk", "currencySymbol": "h4IAda14", "currencyType": "REAL", "decimals": 83, "namespace": "HrRPcFjW"}, "ext": {"UFCG3psc": {}, "WVv7Zgc4": {}, "QxwdnjUq": {}}, "free": false}, "source": "DLC"}, "script": "zx6RjegJ", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'jGNcDtRx' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'bDJ3SVSb' --body '{"grantDays": "oimQEpDy"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'c3matB1g' --login_with_auth "Bearer foo"
platform-update-fulfillment-script '0Vzj5RGH' --body '{"grantDays": "2PAAFkOA"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "S1A0Mckg", "dryRun": true, "fulfillmentUrl": "nLSHoiWy", "itemType": "LOOTBOX", "purchaseConditionUrl": "DXUpETGq"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'INGAMEITEM' --login_with_auth "Bearer foo"
platform-get-item-type-config 'qvWr39Gy' --login_with_auth "Bearer foo"
platform-update-item-type-config 'meIACCNV' --body '{"clazz": "vKXXZr0a", "dryRun": false, "fulfillmentUrl": "V8ygssmW", "purchaseConditionUrl": "HWySdAmf"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'axjsAJMr' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "4etvgpnI", "items": [{"extraSubscriptionDays": 84, "itemId": "Mwh2PB38", "itemName": "ZjhNEzTf", "quantity": 69}, {"extraSubscriptionDays": 53, "itemId": "IDRkIDms", "itemName": "6ZLiU3Yy", "quantity": 8}, {"extraSubscriptionDays": 70, "itemId": "zFCkBT5t", "itemName": "NXG7J19Z", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 22, "maxRedeemCountPerCodePerUser": 68, "maxSaleCount": 58, "name": "Cr9i3jR1", "redeemEnd": "1975-05-26T00:00:00Z", "redeemStart": "1976-05-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["vkjb4XDg", "ezP6XQVG", "FG8MEiTI"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'lrVeVXIi' --login_with_auth "Bearer foo"
platform-update-campaign '2sER389B' --body '{"description": "EjbzeusR", "items": [{"extraSubscriptionDays": 85, "itemId": "HWdpTLYw", "itemName": "g6Hl1nys", "quantity": 78}, {"extraSubscriptionDays": 76, "itemId": "pgDyI7oI", "itemName": "LtCHlFsT", "quantity": 26}, {"extraSubscriptionDays": 28, "itemId": "QIZnJ1rr", "itemName": "f4dC2JhU", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 58, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 26, "maxSaleCount": 37, "name": "YcVYHiMA", "redeemEnd": "1986-03-02T00:00:00Z", "redeemStart": "1985-11-08T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["AETQtEll", "WyYh1pqU", "aYYXJDhr"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'yJYOcgHJ' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'nfnK7dS7' --body '{"categoryPath": "QaMlrjkP", "localizationDisplayNames": {"a1E8CWEf": "8gEcH4xS", "abG92qqD": "zFBORV6d", "MEXjhNVo": "UgX6wKI4"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'NOjnBGoX' --login_with_auth "Bearer foo"
platform-update-category 'nERx1m9N' '7Rg5wdUv' --body '{"localizationDisplayNames": {"zPXHwfBY": "DDKsICJ1", "XGxezXeL": "a1t3oPTk", "RyzuYS5G": "eevG71B7"}}' --login_with_auth "Bearer foo"
platform-delete-category 'Utvnf4Sb' 'TyvsmZSj' --login_with_auth "Bearer foo"
platform-get-child-categories 'qikjINq1' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'LS8mX1WN' --login_with_auth "Bearer foo"
platform-query-codes 'LzKsROg9' --login_with_auth "Bearer foo"
platform-create-codes '0MFWZT7P' --body '{"quantity": 28}' --login_with_auth "Bearer foo"
platform-download 'jbJtJi74' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'BeunOPHa' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'kAkXutjQ' --login_with_auth "Bearer foo"
platform-query-redeem-history 'igSdEJq4' --login_with_auth "Bearer foo"
platform-get-code 'X2fpuqbM' --login_with_auth "Bearer foo"
platform-disable-code 'eiu8AHiN' --login_with_auth "Bearer foo"
platform-enable-code 'HR8uFvTy' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "aBtAQcRQ", "currencySymbol": "PPCPP1cE", "currencyType": "REAL", "decimals": 29, "localizationDescriptions": {"BE21eFj4": "PxKcRSHK", "hdy0MQo7": "zjVjyiT5", "TNvhDGHA": "dXWfUVe1"}}' --login_with_auth "Bearer foo"
platform-update-currency 'U3HTWVqQ' --body '{"localizationDescriptions": {"jEtDczpe": "Qc06vBn3", "vJ8LrRJx": "06XLZYsc", "k4N9PXRx": "HImhoTAp"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'D4doMnTK' --login_with_auth "Bearer foo"
platform-get-currency-config 'rNaosgL9' --login_with_auth "Bearer foo"
platform-get-currency-summary 'QDUbAEpT' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "oqMa4xeo", "rewards": [{"currency": {"currencyCode": "HoJH1qub", "namespace": "Goki2haJ"}, "item": {"itemId": "TnvJE5It", "itemSku": "BYZ69Ewe", "itemType": "CNxj2udy"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "bMoYNz1t", "namespace": "lc9VP7ks"}, "item": {"itemId": "Z5eHu5om", "itemSku": "c2gHKdBg", "itemType": "epHBtdXK"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "vu0Avj0B", "namespace": "1vvP7p2I"}, "item": {"itemId": "It2He5Gg", "itemSku": "cV6xOmac", "itemType": "Ox9MVIjA"}, "quantity": 19, "type": "CURRENCY"}]}, {"id": "LiFmQFGa", "rewards": [{"currency": {"currencyCode": "O4NkTs0t", "namespace": "YsBAPSS3"}, "item": {"itemId": "KvSOFLLq", "itemSku": "iPdJeIQJ", "itemType": "gjWGwqUI"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "TaLjwadD", "namespace": "thPQdjk3"}, "item": {"itemId": "tzhm9F1s", "itemSku": "GP8rooOd", "itemType": "QQtLGivX"}, "quantity": 24, "type": "ITEM"}, {"currency": {"currencyCode": "K3WmobQv", "namespace": "qcR0esbN"}, "item": {"itemId": "5gIDCO5k", "itemSku": "4gaF5VlD", "itemType": "IE8x10BR"}, "quantity": 41, "type": "CURRENCY"}]}, {"id": "WL8rR8VP", "rewards": [{"currency": {"currencyCode": "sqpOo0Ne", "namespace": "qTrKwSJu"}, "item": {"itemId": "6wS1on8q", "itemSku": "vO21paT4", "itemType": "8B9JDoZJ"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "Vqh2BiI6", "namespace": "8XAb5cFA"}, "item": {"itemId": "JRLJoAPE", "itemSku": "yzoNFmVt", "itemType": "oyF1eqP2"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "6kZ9eRuD", "namespace": "3FrXcekK"}, "item": {"itemId": "ZB8x5Ck1", "itemSku": "tZKk0CYj", "itemType": "il00BB6p"}, "quantity": 71, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"4BTmbLMu": "eDUIuFCD", "KT1ntSkm": "rqcbUtGX", "mbLLfJ5k": "hPGrhYxp"}}, {"platform": "XBOX", "platformDlcIdMap": {"EgzgMlp4": "HVnQug1M", "HEwJwPTn": "0Zo5OGuR", "X3S5RFiI": "g38Go65a"}}, {"platform": "PSN", "platformDlcIdMap": {"ZrCCxQbk": "tauocW1J", "mFn6mr18": "XVrfgcvH", "To7LYT0V": "x6wIbZds"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement '1DMD0OTl' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "ZiLLzeDd", "password": "nR8ZgBx3"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "Hod2lFqw"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "iLJgoNXx", "serviceAccountId": "Ce2ny0mx"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "g8Lbi26n", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"oEMfYvD3": "y9dVyTyV", "7Ei0Nbmn": "T5OqBDjA", "QiH5HY85": "BjWAbPen"}}, {"itemIdentity": "znMTrBTD", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"JlF8RlnQ": "Fes2wbiH", "1c5nX42E": "Z9SJu9k8", "I6MTKox5": "P07P99La"}}, {"itemIdentity": "OprvbFoW", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"yUxAm8UW": "3TP9j28A", "rkxjbYAG": "M3kB34wb", "lkdiwurk": "JiZrKzaR"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "HHPtZ4Rz"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "3l4Hrpnh", "publisherAuthenticationKey": "EbzaPDuz"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "LXPvEHTI", "clientSecret": "pLv8GKL3", "organizationId": "RE4V2kn3"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "LKOjiELQ"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'MoFZIQXl' 'ATZ6x1t9' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'ffpoq6De' 'VHPECj4X' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'Zraj4rF5' --body '{"categoryPath": "3aShQkkD", "targetItemId": "OaXugOUf", "targetNamespace": "1XKttOg2"}' --login_with_auth "Bearer foo"
platform-create-item 'lium70zH' --body '{"appId": "8Xllmtmv", "appType": "DEMO", "baseAppId": "SSu9m7q9", "boothName": "PUiWplhJ", "categoryPath": "aOpepKQ5", "clazz": "yX8fNxXI", "displayOrder": 76, "entitlementType": "DURABLE", "ext": {"4IIpxLkq": {}, "j0v6cL4e": {}, "5WVgbBDv": {}}, "features": ["Vniy8iHV", "CAzkTHYb", "0cVfjnSf"], "images": [{"as": "b0KhN1k1", "caption": "6NNlsovz", "height": 80, "imageUrl": "WqnYMMUi", "smallImageUrl": "fz0fsZie", "width": 28}, {"as": "YZm6JYxP", "caption": "wmuCXYDP", "height": 36, "imageUrl": "FSSrqCBN", "smallImageUrl": "7gFSCcAA", "width": 16}, {"as": "DgTLm2zq", "caption": "VKUPdFIh", "height": 81, "imageUrl": "raei0GiF", "smallImageUrl": "U4Smurt2", "width": 72}], "itemIds": ["7Nw7da9B", "A3ga9lKf", "u0J7Y0Sg"], "itemQty": {"VVHpLfS9": 99, "i4gaO7WO": 51, "WU1QzPfb": 46}, "itemType": "MEDIA", "listable": true, "localizations": {"knGhYuBd": {"description": "jh0cWSXR", "localExt": {"UqQbP984": {}, "c1TlwGzu": {}, "OtLbrIii": {}}, "longDescription": "Jrt2Qsvr", "title": "xuZyo5Fr"}, "8jMYZzo5": {"description": "pBuOL8gY", "localExt": {"iy2nyZZe": {}, "qMJrXM2b": {}, "q5mA4sXk": {}}, "longDescription": "ZUWc9vGI", "title": "mC4yrAEt"}, "dzwy1LjT": {"description": "c0Cppzb9", "localExt": {"PPA3K5DQ": {}, "v9kzFXVR": {}, "02GQsNHA": {}}, "longDescription": "cc2J6xAi", "title": "x2PQ68fs"}}, "lootBoxConfig": {"rewardCount": 74, "rewards": [{"lootBoxItems": [{"count": 8, "itemId": "mqlBj7t9", "itemSku": "ZyCLxCli", "itemType": "zOaAMIaB"}, {"count": 87, "itemId": "K8fcNc8e", "itemSku": "ga6gAC2w", "itemType": "tn8tcp95"}, {"count": 77, "itemId": "sfotKWr0", "itemSku": "Jl2e8U30", "itemType": "4asvuczJ"}], "name": "DRCNRzXE", "odds": 0.6665038417383377, "type": "REWARD", "weight": 93}, {"lootBoxItems": [{"count": 71, "itemId": "yNFYuEFa", "itemSku": "gi4pvIoL", "itemType": "6RQF8A4S"}, {"count": 57, "itemId": "4zxlAo6Q", "itemSku": "2bgHGLNb", "itemType": "p9urte7d"}, {"count": 17, "itemId": "R9bm34Zn", "itemSku": "8wHS1p65", "itemType": "yTkoxaBS"}], "name": "jA7auixy", "odds": 0.6941701084714118, "type": "REWARD_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 70, "itemId": "jHa3prLp", "itemSku": "CbmTi1sy", "itemType": "9eJGT7k7"}, {"count": 78, "itemId": "EsNnTxBn", "itemSku": "6BbQCH2D", "itemType": "JzIfToUk"}, {"count": 90, "itemId": "u9EPRk74", "itemSku": "SyF721mq", "itemType": "Rk3Nw0Kb"}], "name": "UjIQrWXK", "odds": 0.16840947188021593, "type": "PROBABILITY_GROUP", "weight": 49}]}, "maxCount": 66, "maxCountPerUser": 99, "name": "EdmXK8P0", "optionBoxConfig": {"boxItems": [{"count": 49, "itemId": "Av8x8id9", "itemSku": "xDPiGGHm", "itemType": "QAaPOYxj"}, {"count": 60, "itemId": "3pIZQQMQ", "itemSku": "CTNTfao9", "itemType": "5idXhFs7"}, {"count": 92, "itemId": "yQNCKj3b", "itemSku": "s0XR87tX", "itemType": "lH82H0qQ"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 27, "fixedTrialCycles": 50, "graceDays": 64}, "regionData": {"31bQ9GVH": [{"currencyCode": "zXc1xj71", "currencyNamespace": "mPSjl6uC", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1976-07-06T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1980-05-04T00:00:00Z", "discountedPrice": 34, "expireAt": "1990-05-13T00:00:00Z", "price": 52, "purchaseAt": "1989-10-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "717y5LRI", "currencyNamespace": "bzwi1mUM", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1973-07-13T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1973-02-13T00:00:00Z", "discountedPrice": 12, "expireAt": "1984-12-29T00:00:00Z", "price": 10, "purchaseAt": "1999-12-04T00:00:00Z", "trialPrice": 52}, {"currencyCode": "sn8aFZEZ", "currencyNamespace": "kZUYmLdI", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1995-06-03T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1972-01-05T00:00:00Z", "discountedPrice": 10, "expireAt": "1986-09-20T00:00:00Z", "price": 36, "purchaseAt": "1984-11-17T00:00:00Z", "trialPrice": 37}], "OJppzUve": [{"currencyCode": "i9aiq7P9", "currencyNamespace": "3mcBmxH7", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1972-09-27T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1999-06-18T00:00:00Z", "discountedPrice": 73, "expireAt": "1985-07-30T00:00:00Z", "price": 81, "purchaseAt": "1979-07-06T00:00:00Z", "trialPrice": 46}, {"currencyCode": "lSTFTSf0", "currencyNamespace": "MVT3O74D", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1986-02-22T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1971-04-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1995-11-06T00:00:00Z", "price": 5, "purchaseAt": "1994-08-24T00:00:00Z", "trialPrice": 21}, {"currencyCode": "iDZWH8cE", "currencyNamespace": "UlnC5qjB", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1971-12-19T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1995-04-29T00:00:00Z", "discountedPrice": 14, "expireAt": "1981-07-03T00:00:00Z", "price": 80, "purchaseAt": "1995-05-17T00:00:00Z", "trialPrice": 64}], "qHybq1qt": [{"currencyCode": "eOpsqZmw", "currencyNamespace": "GY0h7cqC", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1999-09-28T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1991-03-02T00:00:00Z", "discountedPrice": 4, "expireAt": "1997-09-14T00:00:00Z", "price": 94, "purchaseAt": "1988-10-27T00:00:00Z", "trialPrice": 27}, {"currencyCode": "8OkkY0KT", "currencyNamespace": "e3dtcLgv", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1997-05-12T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1980-08-02T00:00:00Z", "discountedPrice": 57, "expireAt": "1984-01-07T00:00:00Z", "price": 62, "purchaseAt": "1976-05-26T00:00:00Z", "trialPrice": 81}, {"currencyCode": "DPyCg3Ly", "currencyNamespace": "qXW4Dzh1", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1979-04-08T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1982-09-10T00:00:00Z", "discountedPrice": 31, "expireAt": "1993-12-11T00:00:00Z", "price": 16, "purchaseAt": "1983-02-23T00:00:00Z", "trialPrice": 99}]}, "seasonType": "PASS", "sku": "wIHr1BXf", "stackable": true, "status": "ACTIVE", "tags": ["R1mjXVN5", "QXNu3Gul", "7MdBp6yQ"], "targetCurrencyCode": "8mNORiRG", "targetNamespace": "oH5JLUwY", "thumbnailUrl": "ZBQrjim8", "useCount": 68}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'z2PrmSra' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'ahu5GiB1' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'RUCj4rnz' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'D2kD8Qja' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'ZMOGw3IX' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'ojBr3FhL' --body '{"itemIds": ["hFQlQl03", "OdBfJUNY", "7wtw6oz9"]}' --login_with_auth "Bearer foo"
platform-search-items 'x5513xUZ' 'CLVLKFRJ' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'a17mWHZq' --login_with_auth "Bearer foo"
platform-update-item 't5VCT4qB' 'L0deLhEX' --body '{"appId": "E8W8jW27", "appType": "DEMO", "baseAppId": "yITvdhh2", "boothName": "MC57kx46", "categoryPath": "eCKN6jTl", "clazz": "kVkRvfc5", "displayOrder": 3, "entitlementType": "DURABLE", "ext": {"T5Eclq5B": {}, "bxPAibYZ": {}, "EnGeEpEP": {}}, "features": ["EZu5upx2", "cI4JAamv", "LglEMs4B"], "images": [{"as": "jkIgnU86", "caption": "cmWz05Za", "height": 82, "imageUrl": "akW58s33", "smallImageUrl": "YUi8gGjo", "width": 44}, {"as": "pwRob7Vm", "caption": "oUwI6puG", "height": 71, "imageUrl": "wjhcpity", "smallImageUrl": "yWll5cNm", "width": 88}, {"as": "89y1P4zx", "caption": "kiymUfmU", "height": 54, "imageUrl": "KFg8MlGQ", "smallImageUrl": "OMochfAG", "width": 56}], "itemIds": ["8XjATHpF", "8mdFNj9w", "ND0PaS20"], "itemQty": {"0nuf2wyY": 99, "E95zVXMk": 22, "CcMVqA9r": 55}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"K4vXju9g": {"description": "LKyC0nur", "localExt": {"zZpyU0gI": {}, "io8Tabxk": {}, "FPDmloUV": {}}, "longDescription": "Ns67CX9e", "title": "yx9GhjKC"}, "NhICWJpG": {"description": "dV5sf7EL", "localExt": {"D4JbmvWo": {}, "4WjU6lQZ": {}, "gwBm31F6": {}}, "longDescription": "NdBCTkPT", "title": "vLCUXNSl"}, "HdxGGvsG": {"description": "kTRB9379", "localExt": {"ZU9DKgnI": {}, "KLU57bDG": {}, "M1g4w6ju": {}}, "longDescription": "g9BSvfqM", "title": "AXkRgAv1"}}, "lootBoxConfig": {"rewardCount": 51, "rewards": [{"lootBoxItems": [{"count": 68, "itemId": "B5SJEMfS", "itemSku": "YqfKtMx4", "itemType": "3KR2MRYe"}, {"count": 96, "itemId": "jbvhHxWa", "itemSku": "ivb2LCdN", "itemType": "BusCkrIa"}, {"count": 98, "itemId": "gQqCRAoT", "itemSku": "B28yFEMf", "itemType": "Cbu8Hw6P"}], "name": "tZHCKyr8", "odds": 0.32973847831740455, "type": "REWARD", "weight": 12}, {"lootBoxItems": [{"count": 9, "itemId": "ly293h1N", "itemSku": "wpUYrlTI", "itemType": "icbfPE0T"}, {"count": 0, "itemId": "jwkih2sV", "itemSku": "PGLdhrni", "itemType": "Gr3LoGKR"}, {"count": 78, "itemId": "FCl2Wq9n", "itemSku": "ZXoko7dJ", "itemType": "mBY7OHdm"}], "name": "I4TNvevJ", "odds": 0.6528388289371746, "type": "REWARD_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 50, "itemId": "4IzSiTOU", "itemSku": "Jta1mNGm", "itemType": "2iXKV6SI"}, {"count": 7, "itemId": "84ouzsL9", "itemSku": "IUX63IMt", "itemType": "AesxNZRN"}, {"count": 65, "itemId": "5yHr3BLF", "itemSku": "1U9OeI6W", "itemType": "XTMP4G2p"}], "name": "aGY9PcLG", "odds": 0.6229755344321699, "type": "PROBABILITY_GROUP", "weight": 74}]}, "maxCount": 88, "maxCountPerUser": 96, "name": "LVqxGgdf", "optionBoxConfig": {"boxItems": [{"count": 80, "itemId": "9WbfY8vI", "itemSku": "xeO6ZZnm", "itemType": "e5b61Yrz"}, {"count": 84, "itemId": "mrCXE3hk", "itemSku": "L6dPa0LX", "itemType": "eKqRIgpn"}, {"count": 58, "itemId": "Vx1MYyET", "itemSku": "1lg1OPgU", "itemType": "o41DrzUH"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 11, "fixedTrialCycles": 63, "graceDays": 93}, "regionData": {"t3MadEbK": [{"currencyCode": "6OOg5kun", "currencyNamespace": "qLiHCYiy", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1973-04-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1989-12-27T00:00:00Z", "discountedPrice": 20, "expireAt": "1999-10-11T00:00:00Z", "price": 50, "purchaseAt": "1997-11-08T00:00:00Z", "trialPrice": 38}, {"currencyCode": "vcu5xtMR", "currencyNamespace": "ENMzzWMM", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1976-11-17T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1983-03-29T00:00:00Z", "discountedPrice": 20, "expireAt": "1985-01-13T00:00:00Z", "price": 58, "purchaseAt": "1993-05-23T00:00:00Z", "trialPrice": 9}, {"currencyCode": "jcyhJHEa", "currencyNamespace": "0AfYido3", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1976-10-20T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1995-09-22T00:00:00Z", "discountedPrice": 1, "expireAt": "1987-04-02T00:00:00Z", "price": 57, "purchaseAt": "1990-12-01T00:00:00Z", "trialPrice": 84}], "kyFKYo8T": [{"currencyCode": "0g4IndKQ", "currencyNamespace": "lJomlXes", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1990-06-25T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1983-06-23T00:00:00Z", "discountedPrice": 86, "expireAt": "1976-05-16T00:00:00Z", "price": 30, "purchaseAt": "1994-06-13T00:00:00Z", "trialPrice": 67}, {"currencyCode": "Lg1NeacD", "currencyNamespace": "9t6afWff", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1998-08-22T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1982-08-31T00:00:00Z", "discountedPrice": 26, "expireAt": "1984-01-17T00:00:00Z", "price": 83, "purchaseAt": "1993-02-19T00:00:00Z", "trialPrice": 70}, {"currencyCode": "kFOl2JBW", "currencyNamespace": "2K9qsuQx", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1975-11-08T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1973-10-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1981-01-27T00:00:00Z", "price": 66, "purchaseAt": "1998-06-29T00:00:00Z", "trialPrice": 24}], "jl5fPI71": [{"currencyCode": "R2SrMmVN", "currencyNamespace": "cbWraFIP", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1974-01-29T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1994-10-04T00:00:00Z", "discountedPrice": 77, "expireAt": "1983-01-08T00:00:00Z", "price": 75, "purchaseAt": "1983-12-07T00:00:00Z", "trialPrice": 62}, {"currencyCode": "8HP7YMsP", "currencyNamespace": "GP0Ds6QA", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1988-07-03T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1971-12-16T00:00:00Z", "discountedPrice": 2, "expireAt": "1990-05-30T00:00:00Z", "price": 0, "purchaseAt": "1973-10-06T00:00:00Z", "trialPrice": 85}, {"currencyCode": "WYt0Mfiz", "currencyNamespace": "pkLNm3bY", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1999-04-26T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1988-03-23T00:00:00Z", "discountedPrice": 47, "expireAt": "1973-10-30T00:00:00Z", "price": 35, "purchaseAt": "1992-12-03T00:00:00Z", "trialPrice": 72}]}, "seasonType": "PASS", "sku": "Xs1Wc22h", "stackable": true, "status": "INACTIVE", "tags": ["U6qTsqHq", "0byYszMx", "w0GXrcpS"], "targetCurrencyCode": "Wi0mR2ZR", "targetNamespace": "4NVqIrl5", "thumbnailUrl": "OhxZI8oC", "useCount": 99}' --login_with_auth "Bearer foo"
platform-delete-item 'efU4o5vB' --login_with_auth "Bearer foo"
platform-acquire-item 'i9P5iaqe' --body '{"count": 11, "orderNo": "KkqdsT4j"}' --login_with_auth "Bearer foo"
platform-get-app '8R3vkldW' --login_with_auth "Bearer foo"
platform-update-app 'y1TKo3U0' 'dabwlhZm' --body '{"carousel": [{"alt": "Ze2EJn04", "previewUrl": "f7jlkvgR", "thumbnailUrl": "ZHl2m0mS", "type": "image", "url": "o9tsfCBw", "videoSource": "vimeo"}, {"alt": "S2vXrogA", "previewUrl": "QqzMjbSI", "thumbnailUrl": "YF0q4pLY", "type": "video", "url": "nNkWYxcu", "videoSource": "youtube"}, {"alt": "MnAaajay", "previewUrl": "5o7uj0XU", "thumbnailUrl": "WRl8KNL1", "type": "image", "url": "IlTPNKwv", "videoSource": "generic"}], "developer": "9isKkKn3", "forumUrl": "gnEPTSyY", "genres": ["Indie", "MassivelyMultiplayer", "Adventure"], "localizations": {"lyDH7tc1": {"announcement": "90RtFxw8", "slogan": "HUTib8Ta"}, "yInWtbJj": {"announcement": "eCrf3YBd", "slogan": "mYC0bppE"}, "GL5f0Trg": {"announcement": "5JC6zClT", "slogan": "5cZ8gVSy"}}, "platformRequirements": {"5wAPtFFS": [{"additionals": "taNzhwG1", "directXVersion": "FSPY2UAv", "diskSpace": "4lc4EkZy", "graphics": "KhkXyRkF", "label": "6hgv5Xc1", "osVersion": "6TC5LRBb", "processor": "XzjEsEEr", "ram": "vXnh7S8h", "soundCard": "PC45Kek4"}, {"additionals": "FZZOMc71", "directXVersion": "OeIgd8yE", "diskSpace": "vJeEx3qd", "graphics": "hiqyAKp0", "label": "JzDvXSkd", "osVersion": "WVNhSJOT", "processor": "dU8AvUH8", "ram": "OqXeTjJN", "soundCard": "0hBIv431"}, {"additionals": "wZ0gKCFe", "directXVersion": "1BVgmuOX", "diskSpace": "f7mtaeuN", "graphics": "Oy6GoORP", "label": "EFahFPQt", "osVersion": "zIs6MTyg", "processor": "nuo4Y2uB", "ram": "Z7c8mt5i", "soundCard": "pDK9fKiN"}], "UkqHhbSd": [{"additionals": "898p79BV", "directXVersion": "8pAE9FQa", "diskSpace": "w1SmrRqK", "graphics": "heIlaLQd", "label": "AD35XDCk", "osVersion": "mgLAuv2S", "processor": "5wBkMhaZ", "ram": "zPIvw1Qh", "soundCard": "FCXFhgwZ"}, {"additionals": "etu3VDSU", "directXVersion": "urNooaXw", "diskSpace": "Q0DL6e4n", "graphics": "PFMIX9YR", "label": "jfkJj0GF", "osVersion": "43ZCjW0m", "processor": "zk1XH3pN", "ram": "sHntX5hZ", "soundCard": "NoTBFIgZ"}, {"additionals": "OezqED1V", "directXVersion": "0ST2iysV", "diskSpace": "hTMEzW8Y", "graphics": "kLXilMbp", "label": "zgpgfPmb", "osVersion": "wk20lazV", "processor": "ZHqfsurH", "ram": "JWQWALuH", "soundCard": "1DxP5GvK"}], "EVgTpLps": [{"additionals": "YoIdQaVy", "directXVersion": "ADcFBQea", "diskSpace": "az7oII2B", "graphics": "ZzTSskEr", "label": "VMHmWMrh", "osVersion": "69n9AiQl", "processor": "LF8UYfXy", "ram": "C23lW6B9", "soundCard": "gXh3OUVt"}, {"additionals": "i0w1VkGd", "directXVersion": "4VKGhs6n", "diskSpace": "sSCsZWJ2", "graphics": "WkzZ41Pl", "label": "cMQ0WgIX", "osVersion": "KnvM0mR8", "processor": "4W1IRVeO", "ram": "wI8vTaJl", "soundCard": "v6Hktkzo"}, {"additionals": "4OjCCKeJ", "directXVersion": "UELyNDvb", "diskSpace": "nQlTOJNj", "graphics": "PEo1uWpY", "label": "ozIZ0lYc", "osVersion": "wB3MTdSC", "processor": "HHDSCyGO", "ram": "uFlnCWHO", "soundCard": "fr8PPcoo"}]}, "platforms": ["MacOS", "Linux", "Android"], "players": ["LocalCoop", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "RPG", "publisher": "1C8ufczr", "releaseDate": "1972-11-29T00:00:00Z", "websiteUrl": "cVw00WU7"}' --login_with_auth "Bearer foo"
platform-disable-item '3e2JwbBj' 'Oo2PFHIt' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'RyaYBmeX' --login_with_auth "Bearer foo"
platform-enable-item 'iy2XDvVB' 'zrJ0jiUz' --login_with_auth "Bearer foo"
platform-feature-item 'O8H29NIy' 'jDtA8vQI' 'PdtHSWRD' --login_with_auth "Bearer foo"
platform-defeature-item '05ADDDGo' 'owPdOUdb' 'JNzNASrX' --login_with_auth "Bearer foo"
platform-get-locale-item 'unpGabNO' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'KdKM2guj' 'ydoTUCYd' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 94, "comparison": "isLessThanOrEqual", "name": "yz2jo4aM", "predicateType": "EntitlementPredicate", "value": "Fb5hOTTQ", "values": ["e7HZNEMY", "MXUmfyEz", "Uo4ULadz"]}, {"anyOf": 91, "comparison": "isGreaterThanOrEqual", "name": "OMfiKbKN", "predicateType": "EntitlementPredicate", "value": "yEpdTTQU", "values": ["gqe5SnJm", "chyhvrLU", "vx8AKoC3"]}, {"anyOf": 17, "comparison": "excludes", "name": "0tQkZtzR", "predicateType": "SeasonTierPredicate", "value": "xkN5h9yz", "values": ["oKd8M9wc", "Zy575DRA", "htcYWPGu"]}]}, {"operator": "and", "predicates": [{"anyOf": 46, "comparison": "excludes", "name": "inSsXISX", "predicateType": "EntitlementPredicate", "value": "nT4HyGIQ", "values": ["7cmNgLGw", "R5EQHLY3", "t1tD3XnT"]}, {"anyOf": 76, "comparison": "excludes", "name": "010hvQXV", "predicateType": "EntitlementPredicate", "value": "tIVHoVbx", "values": ["YM5geQWp", "ITrYIAp1", "KKR70Xkb"]}, {"anyOf": 76, "comparison": "isLessThanOrEqual", "name": "PbxELYoa", "predicateType": "SeasonTierPredicate", "value": "bA7wP5Dv", "values": ["R4u4hrLY", "ZaSXoW5S", "P3iKkKB2"]}]}, {"operator": "or", "predicates": [{"anyOf": 51, "comparison": "isGreaterThan", "name": "jKy5UC1P", "predicateType": "SeasonTierPredicate", "value": "p6zW1sd1", "values": ["bVA2oxcT", "tIirZA83", "bVgp8nci"]}, {"anyOf": 39, "comparison": "is", "name": "jGBPt7r6", "predicateType": "SeasonTierPredicate", "value": "P40BAP4i", "values": ["60sOEwrq", "MdiXDxJs", "9DBZeynN"]}, {"anyOf": 63, "comparison": "isNot", "name": "2OUvxM67", "predicateType": "SeasonTierPredicate", "value": "vPiW4DH5", "values": ["i3VXU2PH", "hX3VSZD0", "pnqs6KA4"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item '1VOyFzR7' --body '{"orderNo": "5FVu8gFq"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "CJz5YS97", "name": "ArseH60K", "status": "ACTIVE", "tags": ["25jHR29w", "qCh5rdsJ", "rV9iqfBl"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'LGhsdcfY' --login_with_auth "Bearer foo"
platform-update-key-group 'LBDDt6DS' --body '{"description": "t8yu6Cpx", "name": "4cpHDMVy", "status": "INACTIVE", "tags": ["NIEyrNwD", "e6hAj4AE", "ZY7R8r70"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'T9ADxnHa' --login_with_auth "Bearer foo"
platform-list-keys 'xbsWs8TY' --login_with_auth "Bearer foo"
platform-upload-keys 'zYQy2kDG' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '4J0wC7a7' --login_with_auth "Bearer foo"
platform-refund-order 'eWXJNh56' --body '{"description": "33mqSx1L"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "2NuoJSzq", "privateKey": "Uh5aN5kM"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "XOI001m5", "currencyNamespace": "h5xdwfio", "customParameters": {"15fOI0mt": {}, "IAYMMqcb": {}, "442SmlYX": {}}, "description": "Lu90SLe6", "extOrderNo": "GX0dNYw0", "extUserId": "KHNDzABS", "itemType": "SUBSCRIPTION", "language": "Cz-TsKt", "metadata": {"wJXSpXWo": "Kw90wytt", "GVw9ymhb": "v0UNWhuP", "yZdGyHCd": "xIqewZFJ"}, "notifyUrl": "sclpXJwN", "omitNotification": false, "platform": "6XLqhXkb", "price": 63, "recurringPaymentOrderNo": "2JK6Wobs", "region": "QrnObaHc", "returnUrl": "fCzmsggY", "sandbox": false, "sku": "h4fZsKxu", "subscriptionId": "XnOcXAxK", "targetNamespace": "PpCqzibp", "targetUserId": "jGppZMrj", "title": "M0ffzcbw"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'A4Nn3Hzj' --login_with_auth "Bearer foo"
platform-get-payment-order 'KU52PEA8' --login_with_auth "Bearer foo"
platform-charge-payment-order 'PzVrwC8M' --body '{"extTxId": "O4v29fKw", "paymentMethod": "eUJkYBi5", "paymentProvider": "WALLET"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'TLzRq3VM' --body '{"description": "cb0qyzEM"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'vHokro92' --body '{"amount": 10, "currencyCode": "xvyT48IX", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 57, "vat": 17}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'XXYcXqmc' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Other' --body '{"allowedBalanceOrigins": ["Twitch", "Twitch", "Twitch"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "VfGtdsNE", "eventTopic": "mMlDm4FX", "maxAwarded": 57, "maxAwardedPerUser": 82, "namespaceExpression": "vKxPIM0a", "rewardCode": "QVzzDkPt", "rewardConditions": [{"condition": "x5kr3C5z", "conditionName": "7SUaINPn", "eventName": "7S2qQcXK", "rewardItems": [{"duration": 92, "itemId": "U1vYbCM0", "quantity": 48}, {"duration": 22, "itemId": "xXVv7tUN", "quantity": 94}, {"duration": 2, "itemId": "8bdRXZde", "quantity": 59}]}, {"condition": "GhtsnGce", "conditionName": "I93HAc94", "eventName": "V8Ovn4Qu", "rewardItems": [{"duration": 31, "itemId": "pslEdVPc", "quantity": 70}, {"duration": 41, "itemId": "8WWBVmkf", "quantity": 70}, {"duration": 15, "itemId": "3yE8m8AS", "quantity": 90}]}, {"condition": "VO8rumV8", "conditionName": "Vg7dksyq", "eventName": "jREV1W38", "rewardItems": [{"duration": 33, "itemId": "j8JNyPyo", "quantity": 35}, {"duration": 4, "itemId": "EBuBMqLH", "quantity": 52}, {"duration": 63, "itemId": "MFOy6iP3", "quantity": 73}]}], "userIdExpression": "uWKHE4MQ"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'wqjOnhze' --login_with_auth "Bearer foo"
platform-update-reward 'pkd7pCRg' --body '{"description": "Ve2RWbXg", "eventTopic": "OuzAOY17", "maxAwarded": 31, "maxAwardedPerUser": 24, "namespaceExpression": "nnjQyGaS", "rewardCode": "C6s9Yd9W", "rewardConditions": [{"condition": "eoKiTXzx", "conditionName": "hwrwi78y", "eventName": "7euvpSBi", "rewardItems": [{"duration": 62, "itemId": "P7l9PoK4", "quantity": 78}, {"duration": 80, "itemId": "yYiJFviI", "quantity": 80}, {"duration": 75, "itemId": "roT7Qs8t", "quantity": 68}]}, {"condition": "Q9wJm6Vj", "conditionName": "dvCo9aU9", "eventName": "A1XmPfrW", "rewardItems": [{"duration": 5, "itemId": "dMOKI7H3", "quantity": 43}, {"duration": 46, "itemId": "Lyui7yRo", "quantity": 39}, {"duration": 45, "itemId": "8L7TsHaV", "quantity": 7}]}, {"condition": "waHewiZu", "conditionName": "X0QDsxdS", "eventName": "EtbYY613", "rewardItems": [{"duration": 63, "itemId": "XhJ9EeSs", "quantity": 21}, {"duration": 74, "itemId": "GbLSNkHo", "quantity": 9}, {"duration": 93, "itemId": "aer5N3qE", "quantity": 48}]}], "userIdExpression": "tgZ7sG0x"}' --login_with_auth "Bearer foo"
platform-delete-reward 'qUglVzst' --login_with_auth "Bearer foo"
platform-check-event-condition 'GwdJTlcR' --body '{"payload": {"zNHfvul4": {}, "ltCr1L0N": {}, "1bNk9FY8": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '6wtATO5m' --body '{"conditionName": "7QBi5M7S", "userId": "kOvW7HuX"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "mBjm7tP4", "defaultRegion": "hJGsDhdc", "description": "jrAM6OpU", "supportedLanguages": ["z6awm6lB", "51q5wIo6", "WjbtcwFD"], "supportedRegions": ["UuOYUAwE", "K2TcvOxp", "MgqzjQuv"], "title": "uAFXv1hc"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '4peJMJql' --login_with_auth "Bearer foo"
platform-update-store '8C1iJ5zl' --body '{"defaultLanguage": "pXoFuzAw", "defaultRegion": "OK4Eti1A", "description": "DJYm8R5r", "supportedLanguages": ["9Yc331as", "LpMX0mn0", "ggwCHdNJ"], "supportedRegions": ["3FyZiIHD", "3IRd5xId", "THRCK1Jq"], "title": "IQURSLvY"}' --login_with_auth "Bearer foo"
platform-delete-store 'DtxKuw4Z' --login_with_auth "Bearer foo"
platform-query-changes '5ZM0mUI6' --login_with_auth "Bearer foo"
platform-publish-all 'rR2Kz2Og' --login_with_auth "Bearer foo"
platform-publish-selected '0anLYbj0' --login_with_auth "Bearer foo"
platform-select-all-records 'NXrr3AGN' --login_with_auth "Bearer foo"
platform-get-statistic 'wCqLWxDG' --login_with_auth "Bearer foo"
platform-unselect-all-records 'xgHd5Tvn' --login_with_auth "Bearer foo"
platform-select-record 'B5h0Ah2N' 'f0wpoLT5' --login_with_auth "Bearer foo"
platform-unselect-record 'Wt8FzOrD' 'DeSDizz9' --login_with_auth "Bearer foo"
platform-clone-store '4EdNmvx3' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'IsVSoDxb' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'ehvhQkRv' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'hrAKVneh' --body '{"orderNo": "7CnIxFV2"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '5ODncWih' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'K2kBZecL' --body '{"count": 54, "orderNo": "EeGnZvfv"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'THljt8XS' --body '{"achievements": [{"id": "I6IDiedJ", "value": 18}, {"id": "cxgzCkGU", "value": 65}, {"id": "OvrezIiZ", "value": 82}], "steamUserId": "qrtWZCpk"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'DUy4g4wA' 't2hG0MA3' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'kDH3T0h8' --body '{"achievements": [{"id": "ZP94mOsx", "percentComplete": 80}, {"id": "tTAPQmnt", "percentComplete": 98}, {"id": "EYMqQlqa", "percentComplete": 81}], "serviceConfigId": "SnV8OSZf", "titleId": "Ugd81w8P", "xboxUserId": "KAGRTgde"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'RyzSG9Ee' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'v2qA7tYm' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'wQ3kvEF6' --login_with_auth "Bearer foo"
platform-anonymize-integration '3fRVpW3L' --login_with_auth "Bearer foo"
platform-anonymize-order 'Dyzds0B1' --login_with_auth "Bearer foo"
platform-anonymize-payment 'aNBCiDl2' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'lAiKzSLS' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'GfyNVziS' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'f2nOHsiN' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'CBenw2TC' --body '[{"endDate": "1988-09-29T00:00:00Z", "grantedCode": "iCy0IikC", "itemId": "hoPAikLO", "itemNamespace": "oUWF6Zp1", "language": "SdC_358", "quantity": 30, "region": "g5FQPIxL", "source": "REDEEM_CODE", "startDate": "1985-01-22T00:00:00Z", "storeId": "vP1fZmaV"}, {"endDate": "1987-12-15T00:00:00Z", "grantedCode": "IkK7VU8U", "itemId": "3D5mKLL6", "itemNamespace": "pCFSz36l", "language": "bC-ChuX_262", "quantity": 72, "region": "EUIrCi7o", "source": "PROMOTION", "startDate": "1982-11-07T00:00:00Z", "storeId": "t9IBnwQf"}, {"endDate": "1980-10-14T00:00:00Z", "grantedCode": "I9xYs1gh", "itemId": "j4h5TOZM", "itemNamespace": "K63OViHz", "language": "sqP-EdBw", "quantity": 10, "region": "iOr8QHKh", "source": "GIFT", "startDate": "1978-01-03T00:00:00Z", "storeId": "b2gSGO6n"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'ceWROOaP' 'pGuuB6SW' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'yN58cclk' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'N0CnICyk' 'FxIko4aG' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '9S43ehmP' 'mvxHnF3R' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'mYKg4Kt3' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'tZwixOes' '["chl0OiX5", "azlr1Wn7", "RUAwEJUd"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'b2eqyFmt' '1oAdnowO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'YpNPCSkz' 'JEJlyVPC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'sjq0EYuA' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'EXYOeEwD' 'rcwQGjIW' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements '9WdVMokL' 'sAX0Tg9a' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'tfGsbyPT' 'eozgZOj2' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'lMrD5JjJ' 'XvEZdxCw' --body '{"endDate": "1982-09-30T00:00:00Z", "nullFieldList": ["k4TF55Re", "KY1jjKEP", "wuT49lR3"], "startDate": "1992-01-22T00:00:00Z", "status": "REVOKED", "useCount": 87}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'TMqwW82c' 'vZKgI81t' --body '{"options": ["42cXm6fe", "nf1BOMKS", "5WWurCsk"], "requestId": "SEGgd2cL", "useCount": 77}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'lfrpYvSb' '1P0fdB3r' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'mq4Xy22M' 'TyoDi42Q' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'MRpmBa4b' 'QtlTO2rE' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'tTeRgMM2' 'Gl4TFPio' --login_with_auth "Bearer foo"
platform-fulfill-item 'OdEUP5GR' --body '{"duration": 69, "endDate": "1991-11-24T00:00:00Z", "itemId": "DfvJP1Es", "itemSku": "GvrwL4zH", "language": "p7LPgxey", "order": {"currency": {"currencyCode": "yub3NCAt", "currencySymbol": "IdjsKIvF", "currencyType": "VIRTUAL", "decimals": 3, "namespace": "6vkWkk60"}, "ext": {"WYndYoWC": {}, "3P7mvAj6": {}, "GlJcpEk2": {}}, "free": true}, "orderNo": "fXY077QC", "origin": "Stadia", "quantity": 4, "region": "CKBKnILE", "source": "PROMOTION", "startDate": "1991-04-26T00:00:00Z", "storeId": "XoMEvPzR"}' --login_with_auth "Bearer foo"
platform-redeem-code 'PkG8mmW7' --body '{"code": "zW54LDMR", "language": "mkN-088", "region": "Ajy95J32"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'pNlzO6Ai' --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "oq2zhKPg", "namespace": "EXmZvTEH"}, "item": {"itemId": "7BHEbBhP", "itemSku": "7k25J4sC", "itemType": "Fg2HHBuS"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "yKOxJRTH", "namespace": "5ee4S56D"}, "item": {"itemId": "CwI1x7Br", "itemSku": "IBdNtS7A", "itemType": "2AmYOkiJ"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "qyQFJq2C", "namespace": "gkToF2NB"}, "item": {"itemId": "weIhE5i7", "itemSku": "JRDNDQtJ", "itemType": "HTME3VYn"}, "quantity": 78, "type": "ITEM"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '2P5ZFJVL' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '1YCMpJLy' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'dufiBIMM' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item '4aEuBxRO' --body '{"itemIdentityType": "ITEM_ID", "language": "Uv-nM", "productId": "NsH5oJ5I", "region": "TNhgdrP3", "type": "GOOGLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'bWPZ6RRf' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'rERubOjh' --body '{"currencyCode": "k2lORbb8", "currencyNamespace": "oAwbFvdk", "discountedPrice": 43, "ext": {"gKF9rAxN": {}, "ifDXCJOg": {}, "bXtAUoJo": {}}, "itemId": "I1HaSlOq", "language": "mk1mZPR3", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 35, "quantity": 48, "region": "wSGMN2fE", "returnUrl": "Cfeg4OAy", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'fNWEP2to' 'fbOTHi3d' --login_with_auth "Bearer foo"
platform-get-user-order '2jzAtSbb' 'aJjE3bmE' --login_with_auth "Bearer foo"
platform-update-user-order-status 'Cwy0vKIZ' '41QdRym7' --body '{"status": "CHARGED", "statusReason": "8P3S7P5w"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'qolz17us' 'whuzyeJ0' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'uyP9dv0E' '9l5trNgh' --login_with_auth "Bearer foo"
platform-get-user-order-histories '8LNFG2YR' 'iDZ5Bhud' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'OWAbRWrC' 'HmYkAKx0' --body '{"additionalData": {"cardSummary": "yYpFZR2P"}, "authorisedTime": "1974-06-05T00:00:00Z", "chargebackReversedTime": "1982-12-14T00:00:00Z", "chargebackTime": "1977-03-02T00:00:00Z", "chargedTime": "1997-09-03T00:00:00Z", "createdTime": "1977-01-01T00:00:00Z", "currency": {"currencyCode": "Uz79JkAW", "currencySymbol": "0P45kpoX", "currencyType": "REAL", "decimals": 23, "namespace": "IDdfyKh2"}, "customParameters": {"S77GPOwC": {}, "TbkXTBkI": {}, "lnavMdCT": {}}, "extOrderNo": "wbRDfnkt", "extTxId": "SMc3c0Y5", "extUserId": "GZj10CEl", "issuedAt": "1987-04-06T00:00:00Z", "metadata": {"xP131tfZ": "tIx0aakn", "KPPt35jz": "5g4TMmFp", "ZhkV4ETB": "Fgdsc91D"}, "namespace": "D7DN6b6H", "nonceStr": "79c7EAd5", "paymentMethod": "n2UE1TJs", "paymentMethodFee": 36, "paymentOrderNo": "aGQFO6s8", "paymentProvider": "PAYPAL", "paymentProviderFee": 64, "paymentStationUrl": "VaJc0aAX", "price": 76, "refundedTime": "1984-01-17T00:00:00Z", "salesTax": 73, "sandbox": true, "sku": "QB4fWVdI", "status": "REFUNDED", "statusReason": "BsKTb7YG", "subscriptionId": "XpHssU7O", "subtotalPrice": 16, "targetNamespace": "JMJEH1Rw", "targetUserId": "dItvzqyt", "tax": 45, "totalPrice": 71, "totalTax": 93, "txEndTime": "1982-12-18T00:00:00Z", "type": "ZI6fnIXo", "userId": "L7DYzTjI", "vat": 15}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'dl1OkakV' 'uMSJ3oGw' --login_with_auth "Bearer foo"
platform-create-user-payment-order '10A0Mfej' --body '{"currencyCode": "rOWVBojs", "currencyNamespace": "Ma1s5W5Y", "customParameters": {"DpIa86LM": {}, "w3Lijftz": {}, "Q0kBQuE4": {}}, "description": "VRHtVU9H", "extOrderNo": "ToeFCt1w", "extUserId": "g1q5vf9p", "itemType": "BUNDLE", "language": "fZy_OrNK", "metadata": {"USI3n2Sp": "VcEUL1Iw", "Fm10eTYj": "0QljKHSz", "b2bqopQ2": "spBQL2Vm"}, "notifyUrl": "BZRMjU1S", "omitNotification": false, "platform": "fq4TUMQS", "price": 40, "recurringPaymentOrderNo": "FMbaI5R9", "region": "yot9DI8U", "returnUrl": "bQFm52io", "sandbox": true, "sku": "G9FcgDp8", "subscriptionId": "3QriUbvw", "title": "b6W3SbBK"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '24FjH2Kq' 'QhHDWN3J' --body '{"description": "35RgzhlD"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'tx2k2gLM' --body '{"code": "gv5T8TB3", "orderNo": "Mpci0QuG"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '4VCXsyaQ' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 's1y7ihA4' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'Vqeahrov' --body '{"grantDays": 100, "itemId": "iO7iGkx3", "language": "tAjwQcZO", "reason": "5WjnHWTY", "region": "Lc1LPFc7", "source": "rGygm9Oc"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '5jo20uwM' '5MmhL6t4' --login_with_auth "Bearer foo"
platform-get-user-subscription 'jHbcmpOe' 'frXlwQZP' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'UJXSmca6' 'mTk7y0mS' --login_with_auth "Bearer foo"
platform-cancel-subscription 'YPvpcLNS' '65nT6u53' --body '{"immediate": true, "reason": "YVvjYIQI"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '4ZgOlKMr' 'G389D3w2' --body '{"grantDays": 82, "reason": "bIxBc0oi"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'Bxz4iOII' 'zp8vPlKi' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'H4tSADFG' 'bVdMeDdC' --body '{"additionalData": {"cardSummary": "ZdtcpGnO"}, "authorisedTime": "1979-03-23T00:00:00Z", "chargebackReversedTime": "1974-07-30T00:00:00Z", "chargebackTime": "1988-07-07T00:00:00Z", "chargedTime": "1975-07-21T00:00:00Z", "createdTime": "1972-07-06T00:00:00Z", "currency": {"currencyCode": "iYY2KIJu", "currencySymbol": "CXiW36sL", "currencyType": "VIRTUAL", "decimals": 26, "namespace": "0F7r6dLi"}, "customParameters": {"87oCDGwi": {}, "rpITfUzp": {}, "Ib6YRK41": {}}, "extOrderNo": "Du9gi2jp", "extTxId": "JZM2Lmbm", "extUserId": "HsgRHGGk", "issuedAt": "1978-10-11T00:00:00Z", "metadata": {"Id6IkCZT": "cDgrqpYl", "DETamzv0": "EBxhStr7", "RDVN80dh": "cfy5h6ed"}, "namespace": "G8IcPmd0", "nonceStr": "A5JUEKW8", "paymentMethod": "HZJkoSKm", "paymentMethodFee": 85, "paymentOrderNo": "TuwaFxWI", "paymentProvider": "ALIPAY", "paymentProviderFee": 53, "paymentStationUrl": "oC7lL2FT", "price": 38, "refundedTime": "1983-11-15T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "XwXtXD3f", "status": "REQUEST_FOR_INFORMATION", "statusReason": "pihJ5KvZ", "subscriptionId": "lLsIe9mJ", "subtotalPrice": 13, "targetNamespace": "hKc9IU98", "targetUserId": "c19GK4K2", "tax": 57, "totalPrice": 81, "totalTax": 56, "txEndTime": "1985-06-19T00:00:00Z", "type": "aZsXzhmV", "userId": "8Bde1zO6", "vat": 15}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'kUNmw043' '6cPNk3In' --body '{"count": 79, "orderNo": "5rcyZEwD"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'FcS5x3UT' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'PfooTOFk' 'SJT3Y1M9' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'cJjGcmY5' 'ebweeIPp' --body '{"amount": 37, "expireAt": "1973-10-29T00:00:00Z", "origin": "Other", "reason": "QKRnBIvt", "source": "IAP"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '1QrxNYBE' '66NxfUNL' --body '{"amount": 64, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-sync-orders 'bKZgCuyt' '58nVGez9' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["B3EZGILF", "SmuNHre0", "kAvSVQe4"], "apiKey": "zoYIcr9k", "authoriseAsCapture": true, "blockedPaymentMethods": ["uuwId7AJ", "8gjcKBas", "4OrUEaWV"], "clientKey": "b9818HM5", "dropInSettings": "vqMHzzSA", "liveEndpointUrlPrefix": "B6cD7dxE", "merchantAccount": "F3X9Rc0T", "notificationHmacKey": "TFiL2Klq", "notificationPassword": "Mzfce8PI", "notificationUsername": "2ilq4vRP", "returnUrl": "SKo8siXK", "settings": "UUMgRFuv"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "tDCuwr9j", "privateKey": "yv3kvTya", "publicKey": "fMHaLmJo", "returnUrl": "5T0JMtlj"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "rGVcYDAx", "secretKey": "dCdpvlJT"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "BsXD7pE3", "clientSecret": "9nCLeQYo", "returnUrl": "WPvh1Dzk", "webHookId": "PNevCc60"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["sBCl4lUP", "Sk9wzVBJ", "5NSNFU4s"], "publishableKey": "imLYPPIH", "secretKey": "1oHqHXwT", "webhookSecret": "I9csfGkj"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "WPsVwK8X", "key": "MwopLlPH", "mchid": "F9AoXnIE", "returnUrl": "9p5A01tj"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "V6Jg3uBk", "flowCompletionUrl": "8yEL6yWx", "merchantId": 79, "projectId": 37, "projectSecretKey": "LlKH9Z72"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '3sAaaTil' --login_with_auth "Bearer foo"
platform-update-adyen-config 'aITtzvKA' --body '{"allowedPaymentMethods": ["l16L0TA5", "e2Wa6Bjy", "mSBl9Zza"], "apiKey": "e1aUPCAg", "authoriseAsCapture": false, "blockedPaymentMethods": ["J81szp32", "L2wXTrsI", "l3jEcgL5"], "clientKey": "u7fTEd3P", "dropInSettings": "NNid3rAm", "liveEndpointUrlPrefix": "KzCb90Er", "merchantAccount": "46YcEumx", "notificationHmacKey": "3tclCNiY", "notificationPassword": "YxtHGPih", "notificationUsername": "usw49ytq", "returnUrl": "FVhPxeCn", "settings": "fSmiuDsm"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'GvTJ6oyR' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'JdytB6wo' --body '{"appId": "C46ZcMmr", "privateKey": "3e6Qz10E", "publicKey": "7CLfAPLp", "returnUrl": "xgN8ttIN"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '1K130DqR' --login_with_auth "Bearer foo"
platform-update-checkout-config 'SAQBiKGl' --body '{"publicKey": "0WBo16PG", "secretKey": "SR3wGLVb"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'l6k1vPCy' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'ZwjrSuEV' --body '{"clientID": "4hEMP1SO", "clientSecret": "hJkVJ4Cl", "returnUrl": "Z3bDnjeo", "webHookId": "f9CVTsAP"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'z3aow6I5' --login_with_auth "Bearer foo"
platform-update-stripe-config 'SU8YJelr' --body '{"allowedPaymentMethodTypes": ["3zwsM8G4", "UL6ugoSS", "MLaMAG98"], "publishableKey": "59WYI18M", "secretKey": "nDW0EDYC", "webhookSecret": "B5EhV64n"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'G5bXiL42' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'Kpvsx4cI' --body '{"appId": "AXBVl5EV", "key": "woYYgTqK", "mchid": "5x4dobgD", "returnUrl": "sg8OLx85"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'xdb674Le' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '1aoTSJW3' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'g6oMsl0A' --body '{"apiKey": "1ytpK3pU", "flowCompletionUrl": "FdhbVLH7", "merchantId": 65, "projectId": 78, "projectSecretKey": "dSuTpLjF"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'PsMHeq1J' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'DlvlD17l' --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "Z40HDcBN", "region": "hVdZNzrs", "sandboxTaxJarApiToken": "BOQAXiPY", "specials": ["ALIPAY", "ADYEN", "ALIPAY"], "taxJarApiToken": "Tdhx4d28", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'mKVfISz5' --body '{"aggregate": "ADYEN", "namespace": "ASmexUuF", "region": "TsRz0EXV", "sandboxTaxJarApiToken": "oYgzjTGv", "specials": ["WXPAY", "WALLET", "STRIPE"], "taxJarApiToken": "pWT3sxTZ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '0yMvPv7t' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "5FMC0msv", "taxJarApiToken": "k5YU7Izf", "taxJarEnabled": false, "taxJarProductCodesMapping": {"wcm6fqkj": "F8kQ1MLR", "jzcNGVLu": "PrqLJFxG", "X2MjqrFG": "4xynzPNY"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'z2h48Skz' 'iWdey6n9' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'QyvL4Unr' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'ZIoaGnx9' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '9qM63IHT' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '7WUIrKLz' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'UuTDXI3C' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'B2ciNcUZ' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["m5Hi5MdL", "SytpAph5", "HZJgu9uh"]}' --login_with_auth "Bearer foo"
platform-public-search-items '8fBjJN23' 'F2jlm9bu' --login_with_auth "Bearer foo"
platform-public-get-app 'mnngqu3T' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '6spRE9OS' --login_with_auth "Bearer foo"
platform-public-get-item 'ggzu528B' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "muRMcN8x", "paymentProvider": "WXPAY", "returnUrl": "7Djy9Xl0", "ui": "xj8YA1QG", "zipCode": "T7ROwTcN"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'hA5Eqysp' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'H6Foc8xM' --login_with_auth "Bearer foo"
platform-pay 'rFwMrcZ1' --body '{"token": "6BLOLPvb"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'wMwnDL9A' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'MysXDb29' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'Zn3nE7Zn' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '1zAY2DIb' 'YmJKYBZ6' 'STRIPE' 'fH0PTUCd' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'vUsF17RB' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'yV3CZkak' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'I2XK7bHK' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'PX1t9c6b' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'hzq8VXV7' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'tHNprmS2' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'ERr4FQRx' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '4wtQUrcV' --body '{"epicGamesJwtToken": "iBCb4ydg"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'vrePpqPh' --body '{"serviceLabel": 43}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'RQ9UzuQE' --body '{"serviceLabels": [89, 41, 25]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'hXnjByUS' --body '{"appId": "JNi91FgV", "steamId": "6s2nAb9r"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '9wKldcUR' --body '{"xstsToken": "salBHErn"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'RGhigw4J' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'wQ3v0UhO' 'NT1FcNF5' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'p0L6XyUg' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'ZENRzI5F' 'IrD2D1Tr' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'um9B0FQc' 'BEAk2rvB' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'FAahKwEx' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'Hbv0kY0S' 'B08t94l3' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'H4h2oqCO' 'fvaX3SDP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'WVcwp1wO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'XdQvVsRy' 'ltuGkjrC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'njWQm2eb' '0hPkQofg' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'jjKlDbUe' 'ZQJuccPw' --body '{"options": ["aO6hBkNL", "o1EfFENz", "iJkGEmEq"], "requestId": "Rrtf0q0L", "useCount": 99}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'Z8CUyie1' --body '{"code": "qCFeBXZH", "language": "tc", "region": "7hzYtduw"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'Wj7cNiRF' --body '{"excludeOldTransactions": true, "language": "CVdg-OlSY", "productId": "EPEslbM4", "receiptData": "0wWo1dml", "region": "yuAaNGIZ", "transactionId": "aVYq5LvP"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '11SVdx26' --body '{"epicGamesJwtToken": "jEHf2sQe"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'OgZDKttj' --body '{"autoAck": true, "language": "xU_JMNr", "orderId": "8Eh66hFo", "packageName": "bcsmHquK", "productId": "XOmbJnSN", "purchaseTime": 22, "purchaseToken": "kdUKmLBO", "region": "RkleMI7i"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'TsHDV7sf' --body '{"currencyCode": "4NkwPFJ6", "price": 0.47222865463986374, "productId": "SLbublsV", "serviceLabel": 11}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'W5brO41s' --body '{"currencyCode": "VQ1OFOYo", "price": 0.006029206303426959, "productId": "dkSZyj2x", "serviceLabels": [0, 91, 70]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'jYKl4Qsn' --body '{"appId": "XvT1HuTw", "language": "IN_yQ", "region": "rfhR8DML", "stadiaPlayerId": "4VWAeNKd"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '1rtBK0Mr' --body '{"appId": "xf0QtROB", "currencyCode": "G6JBIvsB", "language": "TcW_VmhA-bA", "price": 0.3818136498251262, "productId": "X8HoMMyJ", "region": "hi5RPRG8", "steamId": "mWzEFuAp"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'Xeo1rwYL' --body '{"gameId": "meIIEOgP", "language": "vDZd-tC", "region": "MHEUHqMf"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'W49j5m7k' --body '{"currencyCode": "FdscrNq4", "price": 0.7440026929059979, "productId": "zyVqf7Lw", "xstsToken": "QRUcxLMu"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'v6K3daXB' --login_with_auth "Bearer foo"
platform-public-create-user-order 'ziOwUBsZ' --body '{"currencyCode": "vKnv7phu", "discountedPrice": 85, "ext": {"pXlNUXkL": {}, "06JknWcU": {}, "dcsLpSaU": {}}, "itemId": "gS36JqoB", "language": "ApIs", "price": 83, "quantity": 23, "region": "LsDbmlID", "returnUrl": "fdjsYFiX"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'MEss7Dbu' 'apRpoWCt' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '9YfoOtEu' 'H4ny7qon' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'lX9JlLWw' 'BdIQKWDM' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'ZkJlBB0k' 'Wr3LZ7vv' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'KMgy4OQB' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '3D4dFO4g' 'paypal' 'Hdud9qgO' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'qWvHToOZ' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'DuoMm9vX' --body '{"currencyCode": "i84S3RK2", "itemId": "wiAFG2Vt", "language": "KGnx_XSne", "region": "pYv7F8oN", "returnUrl": "Z4tuOSTY", "source": "p0YqWNSs"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'us86H9ma' 'zLBbvtd9' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'hFi41mQA' 'it6yj6Kj' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '0MVul0xK' 'kQc0kVxw' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'xtFgZ7CH' 'i8Nb5CeM' --body '{"immediate": true, "reason": "WHHhhUCm"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'DiPyY92v' 'FIUZo8eU' --login_with_auth "Bearer foo"
platform-public-get-wallet '4XNVjS9g' 'MyhoWsbH' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '5y7vj4Zh' 'aZEtLqwc' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'FIGu5haT' --body '{"itemIds": ["lRWLgLAc", "gGSrYmGq", "L8wJy1r0"]}' --login_with_auth "Bearer foo"
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
echo "1..362"

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
    --body '{"context": {"item": {"appId": "ZAx3FStW", "appType": "SOFTWARE", "baseAppId": "dICCS4Zu", "boothName": "fzpKn0md", "boundItemIds": ["zujnGv1Y", "eqdAEJ28", "eidfbvIa"], "categoryPath": "Fzmh2ZLb", "clazz": "RuMKTkCY", "createdAt": "1999-11-23T00:00:00Z", "description": "n2GMNI9c", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"UIh8vf5j": {}, "MUaLC2mj": {}, "taUPtwab": {}}, "features": ["hK3yZdal", "QI4Zsblv", "eDv4Ykx8"], "fresh": false, "images": [{"as": "UEcKzdZH", "caption": "B76BrICO", "height": 8, "imageUrl": "MckjtcdW", "smallImageUrl": "DHxxQJ14", "width": 81}, {"as": "Vj7GJmb0", "caption": "uQ6K8aNB", "height": 72, "imageUrl": "XVhKQB9V", "smallImageUrl": "hKz65IJI", "width": 14}, {"as": "vjtLJXbH", "caption": "db07CkkZ", "height": 20, "imageUrl": "YZUu1Mx7", "smallImageUrl": "6691tfqN", "width": 97}], "itemId": "q3tcVslI", "itemIds": ["mrGyPY6b", "cF7dHZeK", "C9lN9ycI"], "itemQty": {"Rrl5K3Eh": 9, "LgbdkEgX": 30, "HqUBmnhM": 34}, "itemType": "EXTENSION", "language": "X81C1zRq", "listable": true, "localExt": {"70Eg4HSo": {}, "7laplSjG": {}, "5hf3Q8Yh": {}}, "longDescription": "2e2gSEsY", "lootBoxConfig": {"rewardCount": 66, "rewards": [{"lootBoxItems": [{"count": 65, "itemId": "KaascVc2", "itemSku": "Kp1BjWDr", "itemType": "B0nIYXKX"}, {"count": 35, "itemId": "kjnLeQQ4", "itemSku": "NB91YqHX", "itemType": "N9DdSCKK"}, {"count": 25, "itemId": "plmIJE3h", "itemSku": "UWQZqW9T", "itemType": "bRQDbYY3"}], "name": "wHsW3TZk", "odds": 0.4276563627387009, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 46, "itemId": "vlMEnPzE", "itemSku": "zoBZbF58", "itemType": "XXTJ14RC"}, {"count": 81, "itemId": "EeeYZ00a", "itemSku": "usYDlekC", "itemType": "KlWmyGoZ"}, {"count": 23, "itemId": "QBCg8zPa", "itemSku": "rZJKjwxy", "itemType": "HyR9B5b8"}], "name": "6c3wJlJ9", "odds": 0.12427308090529687, "type": "PROBABILITY_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 65, "itemId": "jKnzJYKp", "itemSku": "0KeRTZ8o", "itemType": "iJ8KgLuX"}, {"count": 41, "itemId": "00NjGqVE", "itemSku": "azY4dMIC", "itemType": "CCfmGIgo"}, {"count": 44, "itemId": "U8TCdV8F", "itemSku": "lyTCf5AG", "itemType": "cLKUSArr"}], "name": "1aVFI8NG", "odds": 0.39790713700401636, "type": "PROBABILITY_GROUP", "weight": 52}]}, "maxCount": 61, "maxCountPerUser": 4, "name": "yEoOTTmz", "namespace": "sJU12mb8", "optionBoxConfig": {"boxItems": [{"count": 33, "itemId": "LuAoQT9V", "itemSku": "EfcVqsDO", "itemType": "TnoHELfK"}, {"count": 14, "itemId": "mNpWIUHc", "itemSku": "WXeYfuP9", "itemType": "GY1pcbtK"}, {"count": 86, "itemId": "73JCz2EZ", "itemSku": "nv3erIga", "itemType": "bnPaTOoo"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "isLessThan", "name": "fE7mRYSI", "predicateType": "EntitlementPredicate", "value": "AAOrGynn", "values": ["Wp69tdAA", "AtMx6JNq", "1RQljoNd"]}, {"anyOf": 28, "comparison": "isGreaterThanOrEqual", "name": "u3VE1SZh", "predicateType": "SeasonTierPredicate", "value": "JaGzP62I", "values": ["tZxpPfqo", "8dQm5shx", "fYT8ytuL"]}, {"anyOf": 72, "comparison": "isNot", "name": "dS97SSWE", "predicateType": "SeasonTierPredicate", "value": "IgrL1AA3", "values": ["3GfLVPG6", "0dyfU1GE", "YXRUZ7qb"]}]}, {"operator": "or", "predicates": [{"anyOf": 44, "comparison": "isLessThanOrEqual", "name": "ecLnLkVg", "predicateType": "SeasonPassPredicate", "value": "swbwj0TH", "values": ["IJPe8T4K", "6mqK3GuI", "p4GPP9Hq"]}, {"anyOf": 71, "comparison": "isGreaterThan", "name": "BV1Gqxmh", "predicateType": "SeasonPassPredicate", "value": "EEFoddkz", "values": ["PrAazyNT", "855cKlYO", "asFnWlkR"]}, {"anyOf": 90, "comparison": "excludes", "name": "TDX9fOCX", "predicateType": "SeasonTierPredicate", "value": "BRwzAbl2", "values": ["AR15sXFH", "NYAZX8Zh", "iuaYJ4ES"]}]}, {"operator": "and", "predicates": [{"anyOf": 41, "comparison": "excludes", "name": "K9TcgKoU", "predicateType": "SeasonPassPredicate", "value": "y2gI65eV", "values": ["XS7uxPn6", "e4HsZ7hW", "4yLB1CZA"]}, {"anyOf": 46, "comparison": "isNot", "name": "S43Ix9vF", "predicateType": "SeasonTierPredicate", "value": "FofjSpKY", "values": ["tepm6QRp", "munwvXqR", "FnXwJbLG"]}, {"anyOf": 30, "comparison": "excludes", "name": "OXFXfYFW", "predicateType": "SeasonTierPredicate", "value": "bEnoBRmE", "values": ["UDrwuoGP", "ZlqNO5Ho", "k2qlRZkT"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 49, "fixedTrialCycles": 82, "graceDays": 41}, "region": "H5BINOhE", "regionData": [{"currencyCode": "toCIP4us", "currencyNamespace": "S5ov45IX", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1977-03-14T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1981-02-20T00:00:00Z", "discountedPrice": 2, "expireAt": "1994-11-02T00:00:00Z", "price": 87, "purchaseAt": "1988-10-12T00:00:00Z", "trialPrice": 11}, {"currencyCode": "4IDAUUT9", "currencyNamespace": "lV62WCLu", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1979-01-26T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1981-07-11T00:00:00Z", "discountedPrice": 36, "expireAt": "1986-03-28T00:00:00Z", "price": 70, "purchaseAt": "1986-11-18T00:00:00Z", "trialPrice": 59}, {"currencyCode": "cxOsv9V5", "currencyNamespace": "wGjHfBL3", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1977-11-12T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1988-10-31T00:00:00Z", "discountedPrice": 43, "expireAt": "1990-04-17T00:00:00Z", "price": 10, "purchaseAt": "1995-07-09T00:00:00Z", "trialPrice": 96}], "seasonType": "TIER", "sku": "7PQYDMdC", "stackable": true, "status": "INACTIVE", "tags": ["nJE4EKn8", "l7SKzWz5", "V8jmjENN"], "targetCurrencyCode": "FOA6bUvG", "targetItemId": "A6Om1aPk", "targetNamespace": "XY5EuJBn", "thumbnailUrl": "FgaFnN8I", "title": "FHJlOnQ4", "updatedAt": "1972-02-11T00:00:00Z", "useCount": 29}, "namespace": "YPD683Ss", "order": {"currency": {"currencyCode": "ecgMOW79", "currencySymbol": "yaLb1Lv8", "currencyType": "VIRTUAL", "decimals": 85, "namespace": "Zc2ToLkE"}, "ext": {"XElOou59": {}, "Sn1t1ZRe": {}, "vpwEgBXB": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "47ip5ry4", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'i5rZp8GY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'RBe9LyjH' \
    --body '{"grantDays": "n6yC8TCW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'icgmRM6E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'agLsfo42' \
    --body '{"grantDays": "EpMGXdIv"}' \
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
    --body '{"clazz": "oOzd6VoG", "dryRun": false, "fulfillmentUrl": "NA6s4JUM", "itemType": "APP", "purchaseConditionUrl": "bgibg6hE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'LOOTBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'm58xpwxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'TDYzShkL' \
    --body '{"clazz": "DHQSFS0C", "dryRun": false, "fulfillmentUrl": "w28wgSJ9", "purchaseConditionUrl": "25DGP9lH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'qYrfXsS4' \
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
    --body '{"description": "BytOHsfH", "items": [{"extraSubscriptionDays": 56, "itemId": "9ASCtviw", "itemName": "W65AYGlP", "quantity": 28}, {"extraSubscriptionDays": 44, "itemId": "I2plbRzM", "itemName": "TTJLGrPH", "quantity": 7}, {"extraSubscriptionDays": 39, "itemId": "NmmMHMv2", "itemName": "p6e0v9Df", "quantity": 29}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 93, "maxRedeemCountPerCodePerUser": 93, "maxSaleCount": 9, "name": "dHHE75GK", "redeemEnd": "1994-07-22T00:00:00Z", "redeemStart": "1985-05-27T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["x2idnvLN", "NWo1D130", "oIYzZQKD"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'GIE847O8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'cJMnk7iq' \
    --body '{"description": "03sZ2dei", "items": [{"extraSubscriptionDays": 75, "itemId": "ERzrEISE", "itemName": "HM1nbMQU", "quantity": 17}, {"extraSubscriptionDays": 3, "itemId": "XNgHOZ9n", "itemName": "s88DQn2h", "quantity": 45}, {"extraSubscriptionDays": 12, "itemId": "c4klht7o", "itemName": "EdH86u87", "quantity": 52}], "maxRedeemCountPerCampaignPerUser": 11, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 7, "maxSaleCount": 94, "name": "p7ZIPjD5", "redeemEnd": "1976-02-06T00:00:00Z", "redeemStart": "1999-05-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["DM1RaV92", "QptN0AAg", "mgJHeX67"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'cSA3mhBT' \
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
    'cYhIvO93' \
    --body '{"categoryPath": "pPWc95K1", "localizationDisplayNames": {"LNxUEw7s": "Bk82iiYz", "Uglx0xdr": "XeSeAkgI", "hDmiQ2QO": "tMACxQAA"}}' \
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
    'WVhfJgRX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'jDuNDvCf' \
    'BbaIK90o' \
    --body '{"localizationDisplayNames": {"n7RU1Yeq": "8jkrcGYa", "KVy9qv7f": "JA4uRcAN", "NVLCTrRc": "GrNJom1f"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'boAnuVbY' \
    'nhAnLAgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'wW7jXgDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'noYTtWCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'oMO8aV1J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'kPKz4ldo' \
    --body '{"quantity": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'XJiYW9qy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'jAzqGx6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'DjX3gkfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'nWjoQyCM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'GQ5N4s4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'nEbYI7GH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    '63Dcpi28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'EnableCode' test.out

#- 36 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListCurrencies' test.out

#- 37 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "n0OYqduF", "currencySymbol": "BKFYwWHR", "currencyType": "VIRTUAL", "decimals": 31, "localizationDescriptions": {"HgfqxXFy": "NTxyMN4n", "Gc6tdxMe": "SXPaFGkl", "qPkADn3y": "95tEkTqn"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'v3nw17sA' \
    --body '{"localizationDescriptions": {"LNZ9HrxP": "DhP1EjWa", "X6jO3X0K": "DeXYXdxv", "Aib7ttOm": "pf08sI0s"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'sXJcIy22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '8aC3EXxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'uDdzQT03' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCurrencySummary' test.out

#- 42 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetDLCItemConfig' test.out

#- 43 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "D4Jlqo27", "rewards": [{"currency": {"currencyCode": "eM73LV8k", "namespace": "4fIGmzPI"}, "item": {"itemId": "AvxyNLLa", "itemSku": "xSuUXQAY", "itemType": "1pVpQolw"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "04sdFaaG", "namespace": "hnU7Q7vb"}, "item": {"itemId": "YXThEbYh", "itemSku": "gpxnXtLA", "itemType": "Wf4tduQv"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "qf89Ylh5", "namespace": "fjdJlykf"}, "item": {"itemId": "GJA0FzVy", "itemSku": "FGDFdUe1", "itemType": "AYlfF2or"}, "quantity": 91, "type": "CURRENCY"}]}, {"id": "3Sy9xgVM", "rewards": [{"currency": {"currencyCode": "MPY5KcyN", "namespace": "a6GwuaTZ"}, "item": {"itemId": "pU3VQR1w", "itemSku": "uKiY4VkD", "itemType": "QvozXfqw"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "dbi7xP8k", "namespace": "mLm6zZWy"}, "item": {"itemId": "TTIdf8Pi", "itemSku": "DqxCCbwA", "itemType": "ULU1gclG"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "2FLGgSTH", "namespace": "IZtpHbOp"}, "item": {"itemId": "2z4dJd3T", "itemSku": "mBfBV0fU", "itemType": "ghzq5Vzs"}, "quantity": 37, "type": "CURRENCY"}]}, {"id": "A7jir3og", "rewards": [{"currency": {"currencyCode": "j87Kn63s", "namespace": "p0JZLHzr"}, "item": {"itemId": "9c0uDEsr", "itemSku": "C3IIeEDq", "itemType": "IC3kTcw8"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "pJCct5Wy", "namespace": "Gk2Gal1J"}, "item": {"itemId": "x7op7wCC", "itemSku": "GpM48i2J", "itemType": "i9QfO0FQ"}, "quantity": 91, "type": "CURRENCY"}, {"currency": {"currencyCode": "zN7nR242", "namespace": "ooIpq7Dq"}, "item": {"itemId": "DT5H6qml", "itemSku": "wH6Kh9im", "itemType": "0TG8ITOe"}, "quantity": 30, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateDLCItemConfig' test.out

#- 44 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteDLCItemConfig' test.out

#- 45 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetPlatformDLCConfig' test.out

#- 46 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Ky82XTIE": "Jfa9EjYZ", "fzy8QGGj": "jJO9eOC4", "M1PbnCMR": "tRUBDqQL"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"ZuVrjoLc": "3Y3f8jr3", "HK4GO2az": "hgcYWLYN", "f05tPtqi": "tCDdqG3m"}}, {"platform": "STEAM", "platformDlcIdMap": {"YCLgkVg5": "V1SgaKYx", "nEhb6Z7X": "Z4vlOsRu", "jXQ4diOH": "6sr0Xh2H"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdatePlatformDLCConfig' test.out

#- 47 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeletePlatformDLCConfig' test.out

#- 48 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'QueryEntitlements' test.out

#- 49 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'lhIrwJdE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetEntitlement' test.out

#- 50 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'QueryFulfillmentHistories' test.out

#- 51 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetAppleIAPConfig' test.out

#- 52 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "Fsrc0eYA", "password": "lEajKLVx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateAppleIAPConfig' test.out

#- 53 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteAppleIAPConfig' test.out

#- 54 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetEpicGamesIAPConfig' test.out

#- 55 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "Xz1qRop2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateEpicGamesIAPConfig' test.out

#- 56 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteEpicGamesIAPConfig' test.out

#- 57 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGoogleIAPConfig' test.out

#- 58 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "Ibc77ph6", "serviceAccountId": "Nz622CQB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateGoogleIAPConfig' test.out

#- 59 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteGoogleIAPConfig' test.out

#- 60 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGoogleP12File' test.out

#- 61 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetIAPItemConfig' test.out

#- 62 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "L2PFEWJ6", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"E4cF75Rp": "friNLqxf", "Z4jiBlpr": "GEN1uOfW", "eAjpVvof": "95XWyEdd"}}, {"itemIdentity": "Qj05vX7m", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ZXJUwkW8": "JiDOHiaQ", "lSSb2SVa": "ccJUT3XA", "d1pJ2dJa": "XTd6PhW5"}}, {"itemIdentity": "NVqbA7pr", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"MEs1NcXb": "PgIHQUg8", "7gPMBh0C": "lYVZvyhX", "1WdcnLWq": "9FhrGHrp"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'UpdateIAPItemConfig' test.out

#- 63 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'DeleteIAPItemConfig' test.out

#- 64 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetPlayStationIAPConfig' test.out

#- 65 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "g0xM9XFL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdatePlaystationIAPConfig' test.out

#- 66 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeletePlaystationIAPConfig' test.out

#- 67 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStadiaIAPConfig' test.out

#- 68 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteStadiaIAPConfig' test.out

#- 69 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateStadiaJsonConfigFile' test.out

#- 70 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetSteamIAPConfig' test.out

#- 71 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "qrVeMkyl", "publisherAuthenticationKey": "kumrJiYf"}' \
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
    --body '{"clientId": "9LIk5TBh", "clientSecret": "ggIgHeGC", "organizationId": "eOW46dAm"}' \
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
    --body '{"relyingPartyCert": "N8XA4D8f"}' \
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
    'FBYomCT5' \
    'fqnA7XtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '37aMeTPG' \
    'we6pfv8m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'Z5zTKFir' \
    --body '{"categoryPath": "wlBSVS5E", "targetItemId": "3rSgz3cx", "targetNamespace": "j4PRSCSw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '1BWGGqKf' \
    --body '{"appId": "BskNaRxE", "appType": "DEMO", "baseAppId": "kqejSTz6", "boothName": "5pnoxnHP", "categoryPath": "lpY10nZ7", "clazz": "66zKSxt8", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"afrT5LxW": {}, "lloypXY1": {}, "SgqgH1q7": {}}, "features": ["jBcZQtAv", "7JYtsqTi", "XDy2dEeR"], "images": [{"as": "HjIhyGEM", "caption": "Ieq818Y4", "height": 92, "imageUrl": "ImS3zbeo", "smallImageUrl": "tUxeblB7", "width": 65}, {"as": "uc7oIXDA", "caption": "ngCmlhQD", "height": 8, "imageUrl": "wSTIcvfx", "smallImageUrl": "N2uZKsJ3", "width": 65}, {"as": "kofLBEM6", "caption": "JX6cGNV3", "height": 6, "imageUrl": "RqlBnFAF", "smallImageUrl": "ZZrbnwc7", "width": 0}], "itemIds": ["6B93IDlA", "StowXEaN", "Li5kFhzp"], "itemQty": {"PMcAenSH": 71, "qtdQKDbJ": 63, "QTo08SU6": 5}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"xjO83bN0": {"description": "XsK1U5EJ", "localExt": {"gIF5broU": {}, "RehfI5Yl": {}, "lyLkUbqB": {}}, "longDescription": "UCgzSm1l", "title": "TftEkkzE"}, "jzjFz0Pc": {"description": "NnIN7Qgl", "localExt": {"e82eURpq": {}, "FrGSottm": {}, "i5vgctz0": {}}, "longDescription": "6VwhQRWk", "title": "hFI02MX9"}, "DWZmv1f7": {"description": "Bm7jSCHv", "localExt": {"eSAvWB4i": {}, "TjtyNvej": {}, "UDjRjnz7": {}}, "longDescription": "CusQrWYr", "title": "M49cvPtr"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 24, "itemId": "5uHjI3uO", "itemSku": "3a97p8Lv", "itemType": "dCmGFlmp"}, {"count": 55, "itemId": "tv4l5GG7", "itemSku": "lP3HiPXW", "itemType": "4vGh631U"}, {"count": 86, "itemId": "YBbDCb7N", "itemSku": "Qvb7DjZQ", "itemType": "0vdQsxh9"}], "name": "gkGx4nSe", "odds": 0.04028758052344672, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 76, "itemId": "UW00Ry0C", "itemSku": "WvW1bokT", "itemType": "4lzveRx4"}, {"count": 10, "itemId": "pYqbKzPu", "itemSku": "rnXoAZJu", "itemType": "IQXSA3rZ"}, {"count": 9, "itemId": "FDzvnD4X", "itemSku": "KMvvY6vd", "itemType": "1uD41KXK"}], "name": "0he20aNt", "odds": 0.9815426264555462, "type": "REWARD", "weight": 10}, {"lootBoxItems": [{"count": 9, "itemId": "j1mojyh4", "itemSku": "4ikjopKc", "itemType": "aofzjT4i"}, {"count": 11, "itemId": "1eSp8ca0", "itemSku": "HjG4mLWc", "itemType": "iTE0K1ZX"}, {"count": 62, "itemId": "rzGXbGFY", "itemSku": "He10MnPK", "itemType": "Yc7qGR9O"}], "name": "NDv1OIPE", "odds": 0.06632693573936299, "type": "REWARD", "weight": 12}]}, "maxCount": 63, "maxCountPerUser": 55, "name": "kNg0BeB3", "optionBoxConfig": {"boxItems": [{"count": 43, "itemId": "mEtIbRzj", "itemSku": "duvpf2EF", "itemType": "gfnslecW"}, {"count": 50, "itemId": "Hjn32vKu", "itemSku": "ef3cZn7y", "itemType": "Q4HwLcFk"}, {"count": 51, "itemId": "wRbfAjNX", "itemSku": "A4elP17W", "itemType": "j4zNrIcX"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 66, "fixedTrialCycles": 56, "graceDays": 60}, "regionData": {"vbYMby1n": [{"currencyCode": "lF88aBu0", "currencyNamespace": "df5AfNu5", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1993-09-23T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1999-04-23T00:00:00Z", "discountedPrice": 39, "expireAt": "1999-05-06T00:00:00Z", "price": 27, "purchaseAt": "1993-03-21T00:00:00Z", "trialPrice": 27}, {"currencyCode": "SFAKNVM7", "currencyNamespace": "0j8BWogT", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1982-04-20T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1997-01-22T00:00:00Z", "discountedPrice": 9, "expireAt": "1990-02-13T00:00:00Z", "price": 69, "purchaseAt": "1993-12-03T00:00:00Z", "trialPrice": 19}, {"currencyCode": "hkvJBtDv", "currencyNamespace": "AD2uDMkw", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1975-12-09T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1986-05-27T00:00:00Z", "discountedPrice": 98, "expireAt": "1998-05-02T00:00:00Z", "price": 60, "purchaseAt": "1981-03-16T00:00:00Z", "trialPrice": 91}], "mNj7KilV": [{"currencyCode": "VoCtTFpa", "currencyNamespace": "5CKUPh4G", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1984-02-09T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1981-03-08T00:00:00Z", "discountedPrice": 9, "expireAt": "1990-08-26T00:00:00Z", "price": 78, "purchaseAt": "1996-05-31T00:00:00Z", "trialPrice": 62}, {"currencyCode": "4jpGVELe", "currencyNamespace": "9TW3E5dp", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1982-12-12T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1979-01-07T00:00:00Z", "discountedPrice": 44, "expireAt": "1998-03-14T00:00:00Z", "price": 26, "purchaseAt": "1976-05-02T00:00:00Z", "trialPrice": 43}, {"currencyCode": "Gzs0t4t2", "currencyNamespace": "F7WHRwcp", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1981-12-07T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1994-01-12T00:00:00Z", "discountedPrice": 28, "expireAt": "1996-09-23T00:00:00Z", "price": 16, "purchaseAt": "1971-04-17T00:00:00Z", "trialPrice": 51}], "x3BW7Zni": [{"currencyCode": "9OFfIZ6a", "currencyNamespace": "XXUJMdOL", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1972-09-23T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1988-02-28T00:00:00Z", "discountedPrice": 59, "expireAt": "1994-06-07T00:00:00Z", "price": 0, "purchaseAt": "1985-01-25T00:00:00Z", "trialPrice": 87}, {"currencyCode": "EboddG2g", "currencyNamespace": "geGhtYRz", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1989-08-13T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1999-01-27T00:00:00Z", "discountedPrice": 15, "expireAt": "1984-10-27T00:00:00Z", "price": 70, "purchaseAt": "1984-10-15T00:00:00Z", "trialPrice": 6}, {"currencyCode": "8vQviu2i", "currencyNamespace": "NVxwtbHe", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1994-12-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1982-04-14T00:00:00Z", "discountedPrice": 43, "expireAt": "1972-10-18T00:00:00Z", "price": 48, "purchaseAt": "1983-04-14T00:00:00Z", "trialPrice": 82}]}, "seasonType": "TIER", "sku": "nORiWVog", "stackable": true, "status": "ACTIVE", "tags": ["AJ5klWHh", "YAMOGoBw", "BwC415xv"], "targetCurrencyCode": "jRyf2r1W", "targetNamespace": "Z6XaVfIL", "thumbnailUrl": "6zuDxrP2", "useCount": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '9k8nMXkZ' \
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
    'z1GwY8Vf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'bT3Gmv3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'YzxBsCoN' \
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
    'xizmVGdZ' \
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
    'OUQdFjSS' \
    --body '{"itemIds": ["UpfAihvi", "UbTm276w", "e2lFpkHd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'SyWTBTDy' \
    'Oft2B6wR' \
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
    'PjFCFans' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'LQMQJ6Tj' \
    'Kkl5QObL' \
    --body '{"appId": "IPa8JYgT", "appType": "DLC", "baseAppId": "UONMFxLL", "boothName": "zU6xocRp", "categoryPath": "lC7QA87K", "clazz": "NlFZuCs5", "displayOrder": 58, "entitlementType": "DURABLE", "ext": {"jghjU97e": {}, "n9Kg6AH6": {}, "BZ7obUoW": {}}, "features": ["0LL3aXkd", "cdO23e0r", "nVHfInTY"], "images": [{"as": "KezinHkq", "caption": "QnJbF6ru", "height": 19, "imageUrl": "mi33dPnH", "smallImageUrl": "cbFSAUv2", "width": 100}, {"as": "87zoCxEy", "caption": "k96hyu31", "height": 79, "imageUrl": "l528SzHh", "smallImageUrl": "Om4yaehK", "width": 36}, {"as": "ZJuoY5zW", "caption": "EEobwm11", "height": 15, "imageUrl": "VRQEJkkr", "smallImageUrl": "GH6CY8go", "width": 37}], "itemIds": ["5m8UdLL7", "cHcjgWws", "gh4eK0ag"], "itemQty": {"rVCzZc2C": 89, "0zwW6dv6": 38, "Z1tO4Emi": 77}, "itemType": "MEDIA", "listable": false, "localizations": {"IepD6hdO": {"description": "uJIU6YgS", "localExt": {"zsrqmowT": {}, "kmkHRC0Y": {}, "IPIvpTVE": {}}, "longDescription": "UHDWT44a", "title": "XjLsZDaV"}, "WGqrh3Fv": {"description": "jOW4WA5N", "localExt": {"HIdtdmGO": {}, "VMclyOKf": {}, "JlfnR30f": {}}, "longDescription": "YsaMns0h", "title": "p05qdoW2"}, "UwFIyiER": {"description": "HKSy2crN", "localExt": {"MgRsfH6U": {}, "nzF6rs8W": {}, "cyOmxdsE": {}}, "longDescription": "eY8Oo0LE", "title": "JXWZdbRk"}}, "lootBoxConfig": {"rewardCount": 59, "rewards": [{"lootBoxItems": [{"count": 0, "itemId": "api2bQYR", "itemSku": "ku8cfJan", "itemType": "JpfhAM1i"}, {"count": 1, "itemId": "jaXUhMPK", "itemSku": "FSKulz3S", "itemType": "MR81ykVM"}, {"count": 57, "itemId": "y9TccrTt", "itemSku": "yMSufeMj", "itemType": "bA6LUcn8"}], "name": "2fWf5HlD", "odds": 0.4089437592398484, "type": "PROBABILITY_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 40, "itemId": "f7OQAlv0", "itemSku": "dPUjLGPX", "itemType": "Eu5anvts"}, {"count": 86, "itemId": "9eVu57sM", "itemSku": "axOo8CoV", "itemType": "CFvQMf88"}, {"count": 7, "itemId": "8eIPk7qw", "itemSku": "G8aWLwur", "itemType": "S7tct5xe"}], "name": "8NSRnOq0", "odds": 0.3027299870317054, "type": "REWARD_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 6, "itemId": "n1Lgoykn", "itemSku": "Gqxd1qM5", "itemType": "NKvKHzCO"}, {"count": 86, "itemId": "sXgRUCId", "itemSku": "Diz5th1X", "itemType": "P04rUc35"}, {"count": 27, "itemId": "cdiT12iQ", "itemSku": "Id2VjbxZ", "itemType": "a4bCauhs"}], "name": "XzYeWpr1", "odds": 0.9679975008239893, "type": "REWARD_GROUP", "weight": 76}]}, "maxCount": 44, "maxCountPerUser": 34, "name": "8rsSYA8c", "optionBoxConfig": {"boxItems": [{"count": 21, "itemId": "AVnOdVvK", "itemSku": "2Sh1cphL", "itemType": "AlIWWRJj"}, {"count": 63, "itemId": "XU8du8F7", "itemSku": "ixToyq2B", "itemType": "RKrm19jt"}, {"count": 70, "itemId": "HT6CrEl0", "itemSku": "pgOLUj9Z", "itemType": "nTRRqvAy"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 49, "fixedTrialCycles": 56, "graceDays": 98}, "regionData": {"UlIyXthn": [{"currencyCode": "wz4j7fXb", "currencyNamespace": "PfSngIt8", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1977-04-25T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1986-05-30T00:00:00Z", "discountedPrice": 25, "expireAt": "1993-07-15T00:00:00Z", "price": 92, "purchaseAt": "1987-08-03T00:00:00Z", "trialPrice": 92}, {"currencyCode": "vJUyR71k", "currencyNamespace": "U1Ng9rOR", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1996-07-05T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1980-06-07T00:00:00Z", "discountedPrice": 27, "expireAt": "1997-01-27T00:00:00Z", "price": 36, "purchaseAt": "1994-10-11T00:00:00Z", "trialPrice": 38}, {"currencyCode": "4Q7eBWW6", "currencyNamespace": "UhGnoFML", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1979-02-27T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1995-05-01T00:00:00Z", "discountedPrice": 22, "expireAt": "1971-11-21T00:00:00Z", "price": 13, "purchaseAt": "1981-09-13T00:00:00Z", "trialPrice": 92}], "K1fcPRZY": [{"currencyCode": "dIRrl8zV", "currencyNamespace": "A2a9nX2G", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1998-08-01T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-10-18T00:00:00Z", "discountedPrice": 29, "expireAt": "1975-05-17T00:00:00Z", "price": 38, "purchaseAt": "1980-02-19T00:00:00Z", "trialPrice": 82}, {"currencyCode": "owlXsEUD", "currencyNamespace": "EzII80Cs", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1997-06-27T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1991-05-28T00:00:00Z", "discountedPrice": 56, "expireAt": "1982-10-20T00:00:00Z", "price": 95, "purchaseAt": "1976-12-10T00:00:00Z", "trialPrice": 25}, {"currencyCode": "gRenz2EX", "currencyNamespace": "7lL9itMg", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1993-05-25T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1982-12-19T00:00:00Z", "discountedPrice": 2, "expireAt": "1990-11-25T00:00:00Z", "price": 1, "purchaseAt": "1981-08-31T00:00:00Z", "trialPrice": 74}], "vfMMOQf4": [{"currencyCode": "a5DEKtqi", "currencyNamespace": "864NZHjf", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1995-09-29T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1988-12-15T00:00:00Z", "discountedPrice": 57, "expireAt": "1984-07-15T00:00:00Z", "price": 21, "purchaseAt": "1972-02-28T00:00:00Z", "trialPrice": 70}, {"currencyCode": "FwMLLwoW", "currencyNamespace": "xGglgwW6", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1984-08-24T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1986-06-11T00:00:00Z", "discountedPrice": 52, "expireAt": "1979-03-18T00:00:00Z", "price": 27, "purchaseAt": "1992-11-19T00:00:00Z", "trialPrice": 60}, {"currencyCode": "WL4WwQ2j", "currencyNamespace": "eZt8mhNk", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1973-03-12T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1988-03-20T00:00:00Z", "discountedPrice": 55, "expireAt": "1976-05-21T00:00:00Z", "price": 25, "purchaseAt": "1971-04-02T00:00:00Z", "trialPrice": 44}]}, "seasonType": "PASS", "sku": "CWPiGIoG", "stackable": true, "status": "INACTIVE", "tags": ["whsNhw8D", "3hNp4E9m", "ezAGFAGQ"], "targetCurrencyCode": "cl6GNr3g", "targetNamespace": "WFxw9PKb", "thumbnailUrl": "7tMcWw1p", "useCount": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'Ru70jbke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'BZaTX4mM' \
    --body '{"count": 29, "orderNo": "TaExdHM1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'kcVPoDgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '3hLh899c' \
    'BRhsefZC' \
    --body '{"carousel": [{"alt": "hhRd2zTf", "previewUrl": "Avgl6coW", "thumbnailUrl": "D6p98x5O", "type": "video", "url": "5fZ5uSix", "videoSource": "vimeo"}, {"alt": "PcBua0rD", "previewUrl": "sEn50Zfc", "thumbnailUrl": "JHrakb2f", "type": "video", "url": "lAr8PbsY", "videoSource": "generic"}, {"alt": "PFiUkDFI", "previewUrl": "BRTFr2Jj", "thumbnailUrl": "WCiNTjsb", "type": "video", "url": "awbgFGp9", "videoSource": "vimeo"}], "developer": "Hjn7JTsJ", "forumUrl": "6d8rPvY1", "genres": ["Adventure", "Sports", "Sports"], "localizations": {"yrpp6XKd": {"announcement": "4JD5UaDv", "slogan": "6ePRUBnl"}, "rKEQVgLh": {"announcement": "RU0xDPcp", "slogan": "ZXyy0qUM"}, "LNqU3IvV": {"announcement": "1YHpeeFX", "slogan": "32NXmXim"}}, "platformRequirements": {"5o0bSuG8": [{"additionals": "m2gPMSuI", "directXVersion": "v8T2vKFE", "diskSpace": "EObvNvt8", "graphics": "bvxYeKOW", "label": "Evy0YsM0", "osVersion": "8DwdelVN", "processor": "yPmPrCYq", "ram": "JTt2Pyli", "soundCard": "cjYnJTB1"}, {"additionals": "qi84lbis", "directXVersion": "GtqXpD2a", "diskSpace": "aahyI3HV", "graphics": "tqQnsDL4", "label": "38MRSks6", "osVersion": "ufjjX0ka", "processor": "5R8YKdfY", "ram": "Udf8nI8M", "soundCard": "LdRkGc2O"}, {"additionals": "Ec53rGgA", "directXVersion": "UOTocnJt", "diskSpace": "lrKZWoqt", "graphics": "aHsxGUmL", "label": "ysQQtL0y", "osVersion": "R5LS4iq1", "processor": "euZ3o5Jk", "ram": "mVAxKDM4", "soundCard": "ZGt4MCL7"}], "PLI6kvyF": [{"additionals": "AnXVd5Rg", "directXVersion": "c2bYFihA", "diskSpace": "X7AP5zm4", "graphics": "uqeOxBtx", "label": "UJJ8gs30", "osVersion": "X1XROApX", "processor": "4Gf149bq", "ram": "weLiVdfd", "soundCard": "avlwXhLY"}, {"additionals": "OKuqYoiA", "directXVersion": "SR5rBKmC", "diskSpace": "TIc26TAo", "graphics": "4gHSNlKx", "label": "g52nZmP4", "osVersion": "7VjbJ0lw", "processor": "R3tGXz8a", "ram": "JmoJWKRT", "soundCard": "gyFEx9zj"}, {"additionals": "z1OxWTs4", "directXVersion": "s9UiQ5me", "diskSpace": "X1S2NLot", "graphics": "Lva7ltN4", "label": "Am1UgwXE", "osVersion": "gKuFpDZB", "processor": "0XchlCJR", "ram": "mGMfV9ES", "soundCard": "AtBNjGx0"}], "RzGaDNmm": [{"additionals": "o3P3NeUI", "directXVersion": "rcnmsYx4", "diskSpace": "ID6v8RpG", "graphics": "AMfQbAWx", "label": "4ZfKwn4b", "osVersion": "0rVnxoZ1", "processor": "fzEKe9DH", "ram": "rYwyEFyI", "soundCard": "lVu3lkj5"}, {"additionals": "A6dIGQUG", "directXVersion": "Fau7hs24", "diskSpace": "Mlv2p8cd", "graphics": "74BEZ0vn", "label": "xdD5PVmq", "osVersion": "tN9OK2rw", "processor": "SLt5nSd8", "ram": "eVH5dZ58", "soundCard": "9GpNgy6A"}, {"additionals": "rPBvaPfJ", "directXVersion": "gibtkFMY", "diskSpace": "G77iWVHz", "graphics": "XFei8uRe", "label": "vI92Wz8z", "osVersion": "1RExY23R", "processor": "lh9oeOZw", "ram": "OiueTbdw", "soundCard": "0TzzDlQy"}]}, "platforms": ["Linux", "Linux", "MacOS"], "players": ["Single", "CrossPlatformMulti", "Single"], "primaryGenre": "Indie", "publisher": "p8nTlNob", "releaseDate": "1974-07-24T00:00:00Z", "websiteUrl": "uiPrXocM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'WWFI4XRU' \
    '5Khl2kBz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'WCfLTNrW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'a0SQfkeQ' \
    'O9RvvQLp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '9a0sKxpb' \
    '3SY9dqCV' \
    'cz1MyHSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'yh9FYD9c' \
    '1iPBnwoc' \
    'VcuVdcNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'cv9LyxDk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'wIdavMuo' \
    '9mH57A4H' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 61, "comparison": "isNot", "name": "7pibpdMX", "predicateType": "EntitlementPredicate", "value": "OZnKbPAz", "values": ["LP1Iw02z", "N1DVtWbx", "eg17qlgg"]}, {"anyOf": 4, "comparison": "is", "name": "3PLmQv2X", "predicateType": "SeasonPassPredicate", "value": "rNPKUSpq", "values": ["qqgqOqO9", "9HKmuqIO", "1LPKEM7k"]}, {"anyOf": 3, "comparison": "isNot", "name": "Bn4V8YR6", "predicateType": "EntitlementPredicate", "value": "xmdOt1ZF", "values": ["P8WGfSYj", "McMGvAA6", "191pVr1h"]}]}, {"operator": "and", "predicates": [{"anyOf": 69, "comparison": "isGreaterThan", "name": "Cc4K4JGY", "predicateType": "EntitlementPredicate", "value": "aFdrnYAa", "values": ["GysnR5ab", "7SsYA2T1", "NNTLEq0V"]}, {"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "dOzAGJR9", "predicateType": "EntitlementPredicate", "value": "MZkWjN0D", "values": ["Wi2PsweN", "nLaVHtYx", "KpatWNzK"]}, {"anyOf": 31, "comparison": "isLessThan", "name": "P2AomkTt", "predicateType": "SeasonPassPredicate", "value": "eomAmoKh", "values": ["jnBSCr5X", "hwtbvGbh", "RvLmVZSY"]}]}, {"operator": "and", "predicates": [{"anyOf": 81, "comparison": "isGreaterThan", "name": "BqTzURkM", "predicateType": "SeasonPassPredicate", "value": "xU8pcPaK", "values": ["bukZodSZ", "hly0eOsl", "dNU4bUqH"]}, {"anyOf": 58, "comparison": "isLessThan", "name": "zDVM8xOZ", "predicateType": "SeasonPassPredicate", "value": "pkZ5EBGR", "values": ["5BOaOUXJ", "e8tsFCuh", "TDIGO6YP"]}, {"anyOf": 82, "comparison": "isGreaterThanOrEqual", "name": "hFPomYcM", "predicateType": "SeasonTierPredicate", "value": "8PXKsUBM", "values": ["HrhduK6H", "E2W9iyMC", "pWVKB3pr"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'pmwz9Ee2' \
    --body '{"orderNo": "HP0gXjCe"}' \
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
    --body '{"description": "zP5zdLuC", "name": "V1Fchurq", "status": "INACTIVE", "tags": ["FvlPwzyQ", "c8JhUCcS", "cHM7W47Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'kkkHTx9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'PbB9f8Yz' \
    --body '{"description": "lM4GS1xM", "name": "c1stpQPA", "status": "ACTIVE", "tags": ["DxrznudP", "cFbmdG3t", "I6Wf5oWK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'KrmZvPlg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'ajgTcTtH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'VnDYvC2U' \
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
    'Se5ZGKTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'dmYo8wWi' \
    --body '{"description": "6ccQOPsw"}' \
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
    --body '{"dryRun": true, "notifyUrl": "oX4IlhWr", "privateKey": "BG5x67No"}' \
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
    --body '{"currencyCode": "ML7sIQRb", "currencyNamespace": "VQSghA8M", "customParameters": {"HaYHhrJA": {}, "O4S0wLLA": {}, "uNWbpxuc": {}}, "description": "n04Z9Xx6", "extOrderNo": "IBuy5dAQ", "extUserId": "tzh4rexd", "itemType": "APP", "language": "rlrK", "metadata": {"9bay2n1B": "lkOkOIQA", "XiIjGBrN": "g2lp0NfP", "AVm36JT4": "42dU3riP"}, "notifyUrl": "YHLnSmmJ", "omitNotification": true, "platform": "07g6BDgN", "price": 68, "recurringPaymentOrderNo": "VrezBP7V", "region": "8x5C8wOU", "returnUrl": "0EMjACu7", "sandbox": true, "sku": "lxPjUESq", "subscriptionId": "aQqyfrRS", "targetNamespace": "0MjFL0My", "targetUserId": "HjiM0krj", "title": "cWG5QM6o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'Km7Fr4f8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'hIfLg0fl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'XwSb91DU' \
    --body '{"extTxId": "f0ZIYQ8W", "paymentMethod": "o6dpjwOs", "paymentProvider": "CHECKOUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'GYvD53Zm' \
    --body '{"description": "QGCQ21Hv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '86mlOg0P' \
    --body '{"amount": 4, "currencyCode": "OMkoFKL7", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 90, "vat": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'Ohnx8e0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Playstation", "Playstation", "System"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "kccWiwxQ", "eventTopic": "mN44TExd", "maxAwarded": 79, "maxAwardedPerUser": 83, "namespaceExpression": "j4vibawM", "rewardCode": "yE4n4JQz", "rewardConditions": [{"condition": "CpJ51a0z", "conditionName": "VeDVxnKp", "eventName": "1R157FQY", "rewardItems": [{"duration": 100, "itemId": "CV68LBkH", "quantity": 92}, {"duration": 3, "itemId": "YY0vku1r", "quantity": 67}, {"duration": 56, "itemId": "rppMXufg", "quantity": 26}]}, {"condition": "ZoQ5Vk8Y", "conditionName": "VszJQsls", "eventName": "QwdpDOWC", "rewardItems": [{"duration": 76, "itemId": "g0OCY7c2", "quantity": 81}, {"duration": 11, "itemId": "1hdqQ8U2", "quantity": 74}, {"duration": 8, "itemId": "46xf3dpV", "quantity": 17}]}, {"condition": "QoYtVBsH", "conditionName": "O6COiHnE", "eventName": "bJa4dqk5", "rewardItems": [{"duration": 63, "itemId": "qF7FDgeh", "quantity": 33}, {"duration": 87, "itemId": "Gjw0u9Mk", "quantity": 22}, {"duration": 30, "itemId": "2vcgDTTL", "quantity": 88}]}], "userIdExpression": "RotYaTMF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'CreateReward' test.out

#- 137 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'QueryRewards' test.out

#- 138 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'ExportRewards' test.out

#- 139 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'g5ZicZjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'B8hPECLp' \
    --body '{"description": "d3hQBJ9H", "eventTopic": "yMcbcWPN", "maxAwarded": 82, "maxAwardedPerUser": 67, "namespaceExpression": "9ysm0ES4", "rewardCode": "keU9fdhm", "rewardConditions": [{"condition": "nrvEedXt", "conditionName": "Ds8gBzSC", "eventName": "TS9Qg4CV", "rewardItems": [{"duration": 8, "itemId": "uyPoM4nu", "quantity": 27}, {"duration": 73, "itemId": "wR11qVUL", "quantity": 33}, {"duration": 62, "itemId": "3KdaaaSZ", "quantity": 91}]}, {"condition": "0J4SFPlR", "conditionName": "6rUD6kW7", "eventName": "C3ZwUf44", "rewardItems": [{"duration": 50, "itemId": "4Mys6c4x", "quantity": 69}, {"duration": 48, "itemId": "xGhe7xEz", "quantity": 50}, {"duration": 22, "itemId": "Yvfj4eW2", "quantity": 76}]}, {"condition": "7Gtwm62L", "conditionName": "mSjZytDv", "eventName": "p3lxhZWy", "rewardItems": [{"duration": 90, "itemId": "zxx0xt9z", "quantity": 3}, {"duration": 50, "itemId": "xURYbrZH", "quantity": 69}, {"duration": 12, "itemId": "RzgdXIIY", "quantity": 21}]}], "userIdExpression": "yK4C3t9W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Fea4ZEFN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'vctDlcOb' \
    --body '{"payload": {"AwWWQDId": {}, "iTJdJ5zG": {}, "hXe7x58Q": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'xZyBBPtQ' \
    --body '{"conditionName": "Vg90wVOL", "userId": "CbCCiTf5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteRewardConditionRecord' test.out

#- 145 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'ListStores' test.out

#- 146 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "i6K60ws7", "defaultRegion": "sgNSJWIN", "description": "qFtQmnrE", "supportedLanguages": ["OnlEYEvW", "9nLpEos3", "hUXq57gX"], "supportedRegions": ["FUTfPCU1", "e1qOC5xu", "EGVkZLfl"], "title": "HPOBwpZp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'CreateStore' test.out

#- 147 ImportStore
eval_tap 0 147 'ImportStore # SKIP deprecated' test.out

#- 148 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetPublishedStore' test.out

#- 149 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'DeletePublishedStore' test.out

#- 150 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'GetPublishedStoreBackup' test.out

#- 151 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'RollbackPublishedStore' test.out

#- 152 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    '68BFl9L0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'iNwKpAlV' \
    --body '{"defaultLanguage": "A1QzkNvc", "defaultRegion": "YCjGG6xE", "description": "RJLANag8", "supportedLanguages": ["LIvxlE36", "zGzYgOXC", "ZEzKzTOZ"], "supportedRegions": ["WQnAJWm2", "dnYj74TN", "pY95hCgm"], "title": "3HE84lL0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'gbklAk2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'RdUH5cRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'bRAx0NPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'UzepntLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '1jIJ7Mwc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'ONi8xcEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'cqxOIU5t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'Lhew8RCS' \
    'VrGUo5Zp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'gi5ZgXPy' \
    'uYM7fwNV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'lFy9T7rd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'CloneStore' test.out

#- 164 ExportStore
eval_tap 0 164 'ExportStore # SKIP deprecated' test.out

#- 165 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QuerySubscriptions' test.out

#- 166 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'HCrWXYfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'zTuNU9zF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '8L399SF1' \
    --body '{"orderNo": "kBRbFNLX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'k0dJa4Gi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'ldCigbDI' \
    --body '{"count": 7, "orderNo": "RVSVOKxY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'NjrItj8Y' \
    --body '{"achievements": [{"id": "JJyqpoJz", "value": 46}, {"id": "1lgor6zB", "value": 25}, {"id": "BdDjDF5K", "value": 43}], "steamUserId": "8kSTQ8tC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'vsod07Ge' \
    'qGq1DgGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '75NVWjh7' \
    --body '{"achievements": [{"id": "sCHflX2t", "percentComplete": 19}, {"id": "odLhBGH7", "percentComplete": 22}, {"id": "tgpbJmLo", "percentComplete": 20}], "serviceConfigId": "eopcx92N", "titleId": "x0Wdxudf", "xboxUserId": "fkbEZWKI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'tuhCNp4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'VdJBeSaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'agbY0uBv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'YY6Y2IPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'udKT4A3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'sTdtVmDf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '0l9u7YCo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'PqzvHjF1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'qoVDHHh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'Xflhp3Sg' \
    --body '[{"endDate": "1976-04-18T00:00:00Z", "grantedCode": "2OsXmjlQ", "itemId": "zEoqRisi", "itemNamespace": "7yaeIhaP", "language": "cG-767", "quantity": 54, "region": "vZQjE3Gx", "source": "PROMOTION", "startDate": "1987-06-18T00:00:00Z", "storeId": "deKNyEHA"}, {"endDate": "1983-02-27T00:00:00Z", "grantedCode": "D4pV7tZ7", "itemId": "7h98ET9s", "itemNamespace": "b0KMMM9G", "language": "vCwr", "quantity": 16, "region": "E5jXfOdn", "source": "GIFT", "startDate": "1992-05-31T00:00:00Z", "storeId": "lXiXrnoK"}, {"endDate": "1987-12-07T00:00:00Z", "grantedCode": "K2VVSds0", "itemId": "SPcZ972h", "itemNamespace": "MWS8H8iG", "language": "tNu", "quantity": 61, "region": "juCLBXSm", "source": "GIFT", "startDate": "1971-01-11T00:00:00Z", "storeId": "Zk7Okh98"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'G9Zr65FO' \
    'Y0jOYmr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '1cwfc8FF' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'B4mVqp3J' \
    's2FlM1YC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'jRMtIAT6' \
    'DmND0yyD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '4kXFFZ5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'tRw8c4qy' \
    '["dazniOMd", "R9Yy2eWb", "PM8mTE2W"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '99JKfcSg' \
    'lyD2Yd7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'qgnflN6S' \
    'sjNRQ4LF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'fEZhXdLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'uoNttfiK' \
    'KAJlG0KH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '8izOOzRy' \
    'UUXBUdjJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'NkRczyso' \
    'kJjO4U18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Hg9FhycA' \
    'X4PkX21N' \
    --body '{"endDate": "1975-07-14T00:00:00Z", "nullFieldList": ["mdWub7ml", "JijYbHPt", "u0aa896v"], "startDate": "1986-07-17T00:00:00Z", "status": "INACTIVE", "useCount": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'o0Y29ZJI' \
    'qtOrpd9Z' \
    --body '{"options": ["v9VdqUWN", "qUihii4m", "DCnbUV2x"], "requestId": "lujtPLhR", "useCount": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'MnozrAel' \
    'JwH6BoAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'HpBljNEQ' \
    'mRRF8jIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'eN7iIU7k' \
    '3p1ZCifU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '3e1eNAXz' \
    'EKyZm1Ui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'GdGCJou8' \
    --body '{"duration": 92, "endDate": "1987-08-10T00:00:00Z", "itemId": "ffjlCMvY", "itemSku": "xhq1der6", "language": "Do1pZkxs", "order": {"currency": {"currencyCode": "tZTNlB7H", "currencySymbol": "pPeIV9dp", "currencyType": "REAL", "decimals": 55, "namespace": "0yqxnEHd"}, "ext": {"wTI9ZlrF": {}, "bMz94xqo": {}, "U4JMQDh8": {}}, "free": true}, "orderNo": "yqC0Genq", "origin": "Other", "quantity": 61, "region": "d9z4zi4K", "source": "DLC", "startDate": "1979-08-17T00:00:00Z", "storeId": "KCDGn093"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'loeG1dHx' \
    --body '{"code": "KniBC0Lv", "language": "eid-237", "region": "PUUUPvFD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'D5oDO46B' \
    --body '{"origin": "Stadia", "rewards": [{"currency": {"currencyCode": "ySjb3UBO", "namespace": "DkvxLW2S"}, "item": {"itemId": "sXaAto1V", "itemSku": "y1xtZYjA", "itemType": "ivO5zIU8"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "1FP1UzUw", "namespace": "sKxKPB2F"}, "item": {"itemId": "UsKyVnYx", "itemSku": "UKjc0PEj", "itemType": "xFpkCLxO"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "8XOB21Yn", "namespace": "o9qkI5SX"}, "item": {"itemId": "eB7PN7BV", "itemSku": "H58Kx8hU", "itemType": "PUpDi8GG"}, "quantity": 7, "type": "ITEM"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'czFYun4D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'BWAlw7lH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'aZhjyIpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'hcnMXw12' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "xtdm-oytm-059", "productId": "C5oSSoSh", "region": "GULytKso", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'zI81mZ7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'mCXIfkPo' \
    --body '{"currencyCode": "swGhDqfQ", "currencyNamespace": "cmfGATWj", "discountedPrice": 49, "ext": {"7IS6RwEE": {}, "29INsLjH": {}, "803kdMM5": {}}, "itemId": "WGsqagVr", "language": "NIx3CzHf", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 61, "quantity": 77, "region": "YCbINhrV", "returnUrl": "brGAR7lc", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'Ql8mhDju' \
    'ov4HN181' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'KQblqRoK' \
    'RcgdNLyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'ErvrQ72R' \
    'I7z47yiy' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "yywWd27g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'DwOiGE5C' \
    'TCdwPmhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'lbAlFLzO' \
    'rbwePf5f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'i5tHLqnN' \
    'm4t8ea0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'C1dPDvH8' \
    'ds1PLDa0' \
    --body '{"additionalData": {"cardSummary": "2WHOCtHN"}, "authorisedTime": "1985-10-12T00:00:00Z", "chargebackReversedTime": "1981-03-04T00:00:00Z", "chargebackTime": "1991-03-06T00:00:00Z", "chargedTime": "1981-08-24T00:00:00Z", "createdTime": "1983-02-03T00:00:00Z", "currency": {"currencyCode": "IOnqvhrt", "currencySymbol": "PiRfn0UF", "currencyType": "REAL", "decimals": 96, "namespace": "tjMpSGXz"}, "customParameters": {"cbsEPQ4N": {}, "d5JXUqiM": {}, "bTn6yU7s": {}}, "extOrderNo": "9Vt1MziF", "extTxId": "O1zY5sS9", "extUserId": "fSavC62s", "issuedAt": "1996-12-03T00:00:00Z", "metadata": {"sa9ce9ma": "JwvskKQx", "rOulZsqs": "MwZGvpQV", "OzrABdxO": "gYvKlaww"}, "namespace": "hcs6ze5b", "nonceStr": "UeXN83LL", "paymentMethod": "QHde8JcG", "paymentMethodFee": 55, "paymentOrderNo": "wPEx1I2G", "paymentProvider": "WXPAY", "paymentProviderFee": 95, "paymentStationUrl": "GlnfgnTe", "price": 30, "refundedTime": "1973-07-15T00:00:00Z", "salesTax": 37, "sandbox": false, "sku": "UHNBejKH", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "l1sv1Ryt", "subscriptionId": "Vnsk3Fha", "subtotalPrice": 8, "targetNamespace": "8oCm9FoF", "targetUserId": "1cHLUjqH", "tax": 20, "totalPrice": 57, "totalTax": 5, "txEndTime": "1975-08-24T00:00:00Z", "type": "wKoU7n02", "userId": "k9qfOQLp", "vat": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'RBAAtvOk' \
    'HhIGotPg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'jvriZWuh' \
    --body '{"currencyCode": "AwHtYc79", "currencyNamespace": "45zShn2p", "customParameters": {"DOrnnBAL": {}, "UuoldQU2": {}, "BwPz2xqu": {}}, "description": "ME8jjZHq", "extOrderNo": "uZma6uzD", "extUserId": "aUoAdU8H", "itemType": "APP", "language": "tle-HlYN", "metadata": {"zFTI9WaO": "5zwB8PM0", "hRa2guXW": "r3p4plgV", "uXcfrENq": "5jsLILzR"}, "notifyUrl": "74Lwp6tm", "omitNotification": true, "platform": "kmaOMX77", "price": 69, "recurringPaymentOrderNo": "1gPLn0NF", "region": "3R0zb6TI", "returnUrl": "IpNieSGB", "sandbox": true, "sku": "eClfZc78", "subscriptionId": "H7GSHDtU", "title": "gVMxNY6x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'AsmahbsZ' \
    'V2yEw7BX' \
    --body '{"description": "9aaxZDVc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'KC0wZwIh' \
    --body '{"code": "xAGfK5nR", "orderNo": "Qm746oGy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Db0ZScLs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Ufkpu8fa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'AgpACfhI' \
    --body '{"grantDays": 77, "itemId": "qsfoLM6l", "language": "6XNkmFOb", "reason": "StFarZ3r", "region": "HiRWLO0A", "source": "diHh7sEf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '4sYNV4qd' \
    '0LmBPtrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'V90kgjmv' \
    'mhAmm4r2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'HTVeF5PD' \
    'expApBAe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '89NEzjym' \
    'tLE33bKN' \
    --body '{"immediate": true, "reason": "a0W2buQX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'MS52oKY6' \
    'sa8oGq86' \
    --body '{"grantDays": 77, "reason": "QhDxVj3b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '6Ova4w7L' \
    'yuJ5tTCl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'OeFnSvCs' \
    'RlutxD0Y' \
    --body '{"additionalData": {"cardSummary": "Z4XOipa8"}, "authorisedTime": "1972-08-11T00:00:00Z", "chargebackReversedTime": "1975-09-07T00:00:00Z", "chargebackTime": "1998-03-28T00:00:00Z", "chargedTime": "1992-12-02T00:00:00Z", "createdTime": "1981-06-06T00:00:00Z", "currency": {"currencyCode": "4JA3RNOh", "currencySymbol": "4SwVrgrV", "currencyType": "VIRTUAL", "decimals": 53, "namespace": "9lIMTTjr"}, "customParameters": {"RuNC9kIR": {}, "NybehdjW": {}, "LLiQdUsE": {}}, "extOrderNo": "q3d0HEA8", "extTxId": "RLjnY6Yr", "extUserId": "XjLjQlFL", "issuedAt": "1993-11-24T00:00:00Z", "metadata": {"Px71WWmz": "o7dQy1i8", "LSHTlPRB": "lxrdVq3F", "O1tzYxmx": "0wd2TGdp"}, "namespace": "viiu5xxR", "nonceStr": "6M1ji7Qn", "paymentMethod": "tlHQi8Cp", "paymentMethodFee": 43, "paymentOrderNo": "MVXvkUDS", "paymentProvider": "ALIPAY", "paymentProviderFee": 40, "paymentStationUrl": "VYRcVZML", "price": 20, "refundedTime": "1997-02-19T00:00:00Z", "salesTax": 46, "sandbox": false, "sku": "mJET1RVy", "status": "INIT", "statusReason": "o966Tdrv", "subscriptionId": "T4ziUgEf", "subtotalPrice": 71, "targetNamespace": "ivwBwWgi", "targetUserId": "J3tDiDHo", "tax": 94, "totalPrice": 30, "totalTax": 9, "txEndTime": "1993-11-23T00:00:00Z", "type": "CrDxgUBA", "userId": "ZY5wqXlU", "vat": 28}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'btIOmjni' \
    'ZtaOM58n' \
    --body '{"count": 44, "orderNo": "yJ612K67"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    '1FGciYlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'utFEV9KN' \
    'BSvg7l9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'RTsRitew' \
    'UqC656wO' \
    --body '{"amount": 72, "expireAt": "1983-11-20T00:00:00Z", "origin": "IOS", "reason": "t218JlVl", "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'QwnKoKR4' \
    'KVNvbQ2k' \
    --body '{"amount": 82, "walletPlatform": "Steam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'PayWithUserWallet' test.out

#- 238 GetUserWallet
eval_tap 0 238 'GetUserWallet # SKIP deprecated' test.out

#- 239 DebitUserWallet
eval_tap 0 239 'DebitUserWallet # SKIP deprecated' test.out

#- 240 DisableUserWallet
eval_tap 0 240 'DisableUserWallet # SKIP deprecated' test.out

#- 241 EnableUserWallet
eval_tap 0 241 'EnableUserWallet # SKIP deprecated' test.out

#- 242 ListUserWalletTransactions
eval_tap 0 242 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 243 QueryWallets
eval_tap 0 243 'QueryWallets # SKIP deprecated' test.out

#- 244 GetWallet
eval_tap 0 244 'GetWallet # SKIP deprecated' test.out

#- 245 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'DmtTlj9d' \
    '0CoDW3ve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["WogHHmg7", "R6Q8iC7h", "4QU1tiaj"], "apiKey": "EL6T4MQg", "authoriseAsCapture": true, "blockedPaymentMethods": ["bQk58DOB", "EDE0E33P", "bAVz9LUI"], "clientKey": "l1zQ3veM", "dropInSettings": "hB95OrPO", "liveEndpointUrlPrefix": "wnf0Swoo", "merchantAccount": "lR4pQQOu", "notificationHmacKey": "bsRxqhtG", "notificationPassword": "JpxETQtr", "notificationUsername": "Hhr11lgG", "returnUrl": "bRK6Ssac", "settings": "razp4ZTf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "mQj5hqUh", "privateKey": "VSuq95Xg", "publicKey": "oukoam3y", "returnUrl": "ShOhPAUu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "ITZ13e7f", "secretKey": "OS8ojHoU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestCheckoutConfig' test.out

#- 249 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'DebugMatchedPaymentMerchantConfig' test.out

#- 250 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "MjqIFCxS", "clientSecret": "Y6VjfYw5", "returnUrl": "I4WfmerK", "webHookId": "nb8HSEEL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["Q0tkYg4A", "HVRPLoJU", "KUCam2qI"], "publishableKey": "KuynB9nQ", "secretKey": "X1nSCPa8", "webhookSecret": "cwiOsvZG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "vH7NhwkG", "key": "JtRVgpZE", "mchid": "0IeSVwiy", "returnUrl": "SzATV1uu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "2dUwObcj", "flowCompletionUrl": "ZAKRf1Y2", "merchantId": 17, "projectId": 39, "projectSecretKey": "6hB8IO3w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    't6qH7nM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'kmlO7KTB' \
    --body '{"allowedPaymentMethods": ["vFmaWLbh", "B27BumzT", "BPGQbGXu"], "apiKey": "pzuk46Fk", "authoriseAsCapture": false, "blockedPaymentMethods": ["CnRL0PiB", "b1Evs9ul", "B95nB8Bo"], "clientKey": "9FNuYiSB", "dropInSettings": "VKGFwvdO", "liveEndpointUrlPrefix": "gShy8F3l", "merchantAccount": "e9ig5lQd", "notificationHmacKey": "z0zsdZlv", "notificationPassword": "tQ9TM1ya", "notificationUsername": "xzR4VYIW", "returnUrl": "iuL3lKwO", "settings": "aJsZEC2V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'K47cEKut' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '4rBkAujL' \
    --body '{"appId": "sqiA960K", "privateKey": "zFmKjrah", "publicKey": "HZyaGxUQ", "returnUrl": "X18jjyFD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'r4fzUWBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '8J9kRTjC' \
    --body '{"publicKey": "B8f7EccV", "secretKey": "bKkrWmfQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'raWfxBnO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'yJahtvW4' \
    --body '{"clientID": "hBatSS6V", "clientSecret": "MqFQggzB", "returnUrl": "uewf6FXM", "webHookId": "bKwclaap"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '4is59cSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'Tq9JJdAQ' \
    --body '{"allowedPaymentMethodTypes": ["YO7wRHSh", "mcQMnplM", "XvHa3Zmm"], "publishableKey": "IWRC1wYh", "secretKey": "EigZmAC3", "webhookSecret": "rTJGxnON"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'HfFI63GP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'lzivPnNa' \
    --body '{"appId": "Tzb3aug1", "key": "QVctxoBM", "mchid": "qwBg2CC4", "returnUrl": "P2NEpLY0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'xwwiE0G6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'j2iPg5aN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'bDvjyFPV' \
    --body '{"apiKey": "WoQZm9Ez", "flowCompletionUrl": "jELqETZj", "merchantId": 71, "projectId": 70, "projectSecretKey": "Hmn4trnB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'KG9S4i5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'hBUGj50U' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaUIConfig' test.out

#- 271 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'QueryPaymentProviderConfig' test.out

#- 272 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "WwsNetOP", "region": "aLrfwliG", "sandboxTaxJarApiToken": "0GHJk64G", "specials": ["ADYEN", "STRIPE", "ADYEN"], "taxJarApiToken": "XCR2bFxZ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'CreatePaymentProviderConfig' test.out

#- 273 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetAggregatePaymentProviders' test.out

#- 274 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'DebugMatchedPaymentProviderConfig' test.out

#- 275 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetSpecialPaymentProviders' test.out

#- 276 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'g1sa9Kfx' \
    --body '{"aggregate": "XSOLLA", "namespace": "p6cL0Uyd", "region": "eln7fZnA", "sandboxTaxJarApiToken": "Ari6praH", "specials": ["WXPAY", "STRIPE", "STRIPE"], "taxJarApiToken": "uznvyuD0", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '4JP879g2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'DeletePaymentProviderConfig' test.out

#- 278 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'GetPaymentTaxConfig' test.out

#- 279 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "0DOwdS7A", "taxJarApiToken": "CnWhC8F3", "taxJarEnabled": true, "taxJarProductCodesMapping": {"n09hPoiw": "nmJR7Vzk", "jI9vTsiI": "eqRs9v5Z", "vOnKMget": "Q5vgCiyO"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'MkIDTCfy' \
    'tBHrpIdK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'SyncPaymentOrders' test.out

#- 281 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetRootCategories' test.out

#- 282 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DownloadCategories' test.out

#- 283 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    '0jFgxcKR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'KWmeEB7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'ej58HMBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetDescendantCategories' test.out

#- 286 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicListCurrencies' test.out

#- 287 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'qoPrn1kf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemByAppId' test.out

#- 288 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicQueryItems' test.out

#- 289 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'RQ6UVyoj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'UILNsRJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["wLjMGuug", "3NYFcCLS", "G355lbUE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'ceD5JnOj' \
    'AsuSIxLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'oNyFTGVZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'EgPeNqAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'x6rmnI4o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "tmqOo7vc", "paymentProvider": "XSOLLA", "returnUrl": "za6ma4ob", "ui": "tw4g1ftZ", "zipCode": "LiqUaF13"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'K89ltcsj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '1EY5zLx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'GXcBEt3J' \
    --body '{"token": "kqdW5rRr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'ZGgoSKwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'iUJtgfp7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'QOXZ9F6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'XQ8Zhy34' \
    'IUg9A9KM' \
    'STRIPE' \
    'jO2iF90w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '8pP1FgEr' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'PUzvHoMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetRewardByCode' test.out

#- 307 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'QueryRewards1' test.out

#- 308 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'zSiUAAjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetReward1' test.out

#- 309 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicListStores' test.out

#- 310 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicExistsAnyMyActiveEntitlement' test.out

#- 311 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'B47yKOjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'MEAQFJ6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'Anc9ByiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 314 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetEntitlementOwnershipToken' test.out

#- 315 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'QtmqChhp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    '0LGkrgbp' \
    --body '{"epicGamesJwtToken": "4zBcIu3c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'ZAcN8pTJ' \
    --body '{"serviceLabel": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'fR9MNxq5' \
    --body '{"serviceLabels": [0, 3, 7]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 319 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'mhZ1enHv' \
    --body '{"appId": "UlILdUMg", "steamId": "xhtIv5aQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'SyncSteamDLC' test.out

#- 320 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Wfk9hCkl' \
    --body '{"xstsToken": "I0eptOmk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'SyncXboxDLC' test.out

#- 321 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'GAcvVLWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicQueryUserEntitlements' test.out

#- 322 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'bJC800pF' \
    'ngWieJwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserAppEntitlementByAppId' test.out

#- 323 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'Qzn52V6H' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlementsByAppType' test.out

#- 324 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'ZnbMDlRL' \
    '5u9C3inu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementByItemId' test.out

#- 325 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'hZPm7sy2' \
    'qjEOh6rV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementBySku' test.out

#- 326 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'KxOBaolk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyUserActiveEntitlement' test.out

#- 327 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'KCnQw2Hh' \
    'bW7Op9LL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'IZLEqg3I' \
    'j9ACmKDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 329 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'F3g3iMsI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 330 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'z8tPE25r' \
    'pDNilMBR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 331 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'T99h2Jdp' \
    'g1qupqY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlement' test.out

#- 332 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'VmE14BQu' \
    '5jbWoUtH' \
    --body '{"options": ["xuc6AOQr", "92KymZP2", "Fmslr64V"], "requestId": "eiKeMuMf", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicConsumeUserEntitlement' test.out

#- 333 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'IcbS1HvA' \
    --body '{"code": "xRc1jzlx", "language": "zaR", "region": "ep0fk6X4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicRedeemCode' test.out

#- 334 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'UA2nzlLo' \
    --body '{"excludeOldTransactions": false, "language": "zRrU_Nf", "productId": "BPHVMyTr", "receiptData": "bSVMC1h1", "region": "l4rMoAhp", "transactionId": "LLd4h1RO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicFulfillAppleIAPItem' test.out

#- 335 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '2cRXTbtE' \
    --body '{"epicGamesJwtToken": "1yIdAr42"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'SyncEpicGamesInventory' test.out

#- 336 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'ekJNb2AW' \
    --body '{"autoAck": true, "language": "MSGo-fPbb-937", "orderId": "zPolZ9y0", "packageName": "2jsgxzDc", "productId": "45onihWA", "purchaseTime": 51, "purchaseToken": "ZKMTU1FX", "region": "fZjF9p3b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillGoogleIAPItem' test.out

#- 337 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '92Yg7UTA' \
    --body '{"currencyCode": "kabyZdzm", "price": 0.15637302483245252, "productId": "zpttiXfI", "serviceLabel": 9}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicReconcilePlayStationStore' test.out

#- 338 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'Ws45ehM1' \
    --body '{"currencyCode": "WY7MzVva", "price": 0.9892777355367086, "productId": "1EwAqO6g", "serviceLabels": [99, 37, 39]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 339 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'TDPAKMyR' \
    --body '{"appId": "LPvdaZVN", "language": "sR", "region": "oVoWW4qo", "stadiaPlayerId": "WXPj5HjB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncStadiaEntitlement' test.out

#- 340 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'HH1zWcZE' \
    --body '{"appId": "YICP0BcO", "currencyCode": "G1c7rJrO", "language": "OEI_OQ", "price": 0.6012908366709078, "productId": "IwgaSWJX", "region": "hkXwbezN", "steamId": "3P244tKg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncSteamInventory' test.out

#- 341 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'G2FYrXVe' \
    --body '{"gameId": "JKtlEnLf", "language": "Xii_km", "region": "JXjRdlzY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncTwitchDropsEntitlement' test.out

#- 342 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'SA1q42sO' \
    --body '{"currencyCode": "JQchWMgh", "price": 0.5575910731073878, "productId": "3P8CXBH1", "xstsToken": "wdxdsjHH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'SyncXboxInventory' test.out

#- 343 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'vZBcNKa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserOrders' test.out

#- 344 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'aBYv4JbC' \
    --body '{"currencyCode": "Dl56zocf", "discountedPrice": 68, "ext": {"NOqetNrh": {}, "Dnf3W8Ib": {}, "ZprDuhcA": {}}, "itemId": "c3u0q5zp", "language": "QaQx_kuDI", "price": 17, "quantity": 63, "region": "f63jTiRY", "returnUrl": "8uPchATb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicCreateUserOrder' test.out

#- 345 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'VN5xf0tn' \
    '3SZClxPY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrder' test.out

#- 346 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'BMX2JBRk' \
    'iu93uBhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCancelUserOrder' test.out

#- 347 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'cDIANUo4' \
    'kwegS0bk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrderHistories' test.out

#- 348 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '8PiFrgBU' \
    '9gKa0nMZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicDownloadUserOrderReceipt' test.out

#- 349 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'udzsi2Lz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentAccounts' test.out

#- 350 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'A3PMZBGf' \
    'paypal' \
    'HextJpnt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicDeletePaymentAccount' test.out

#- 351 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'SNIYzYyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicQueryUserSubscriptions' test.out

#- 352 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '2r0RSu16' \
    --body '{"currencyCode": "0yJShcY6", "itemId": "AaWtxHqY", "language": "NbN_tYPZ", "region": "xVZh4NhW", "returnUrl": "u4LMDfAd", "source": "4xrRrp5T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicSubscribeSubscription' test.out

#- 353 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'Q6rseVy6' \
    'VRLqQWoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 354 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'COnskyvZ' \
    'lQckMOzu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserSubscription' test.out

#- 355 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'sk8gi0iv' \
    'PVcwtjSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicChangeSubscriptionBillingAccount' test.out

#- 356 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'EtSYnJti' \
    'nVtz2sQM' \
    --body '{"immediate": true, "reason": "qMz1DqTU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicCancelSubscription' test.out

#- 357 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '33CCUusK' \
    'X3Fl94WG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetUserSubscriptionBillingHistories' test.out

#- 358 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'ERBlzABb' \
    'Cu2POyPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetWallet' test.out

#- 359 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'rhqNKkX5' \
    '5WWoCYS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicListUserWalletTransactions' test.out

#- 360 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'QueryItems1' test.out

#- 361 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'ImportStore1' test.out

#- 362 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'cKjF9dBM' \
    --body '{"itemIds": ["5TWVc12z", "463VPEep", "pBEyX9Ra"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
