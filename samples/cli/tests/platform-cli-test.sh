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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "vf2nQZnp", "appType": "DLC", "baseAppId": "fRDhSbao", "boothName": "HNmNqsIN", "boundItemIds": ["UPVbBmcV", "CRU0JVY9", "WC0wn1oK"], "categoryPath": "af7Ervp0", "clazz": "JjWggfAv", "createdAt": "1993-11-24T00:00:00Z", "description": "iUCBGW4h", "displayOrder": 94, "entitlementType": "CONSUMABLE", "ext": {"gPr4uAvu": {}, "2SC3P4co": {}, "ulRGOzI1": {}}, "features": ["xo32dLZG", "VfmmBR2W", "5Lj8IX6E"], "fresh": true, "images": [{"as": "b4yA05R1", "caption": "HeJbK1kV", "height": 77, "imageUrl": "v8riSbiQ", "smallImageUrl": "Lgqj2NpF", "width": 85}, {"as": "c0lpSFWh", "caption": "6UmRN2O4", "height": 35, "imageUrl": "E5pdKOxy", "smallImageUrl": "vjfyfwX4", "width": 44}, {"as": "IBzwOymd", "caption": "khbWtmxx", "height": 68, "imageUrl": "Qkswm15N", "smallImageUrl": "5cB9O1Aj", "width": 75}], "itemId": "lcj9IXbU", "itemIds": ["SIHptvfk", "dFeZJA4x", "0ngtRRCi"], "itemQty": {"30KYeF7n": 67, "wj18KLTv": 23, "cRC8U705": 97}, "itemType": "BUNDLE", "language": "QQjDwPIl", "listable": true, "localExt": {"KjVV2mGp": {}, "qGZrLY0K": {}, "KJjg1ruM": {}}, "longDescription": "ANWwMwiq", "lootBoxConfig": {"rewardCount": 22, "rewards": [{"lootBoxItems": [{"count": 93, "itemId": "F1v6Gepq", "itemSku": "nA2aq6vQ", "itemType": "J1qPjqom"}, {"count": 73, "itemId": "N9jOu9bq", "itemSku": "l5Yn4XpH", "itemType": "Py5RowRj"}, {"count": 7, "itemId": "T67HoMzN", "itemSku": "aiXIiK7L", "itemType": "2fOaR7k9"}], "name": "zm6NfW0F", "odds": 0.4213506534630477, "type": "PROBABILITY_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 61, "itemId": "LuUCysho", "itemSku": "0yubu8Ts", "itemType": "dPNFYcJZ"}, {"count": 82, "itemId": "G6Eo16Lz", "itemSku": "a2jUcYBu", "itemType": "NCygw15e"}, {"count": 28, "itemId": "hbXk7D86", "itemSku": "f5eX4Exk", "itemType": "PviiCtpS"}], "name": "uB4HZr9Z", "odds": 0.36821724508333553, "type": "PROBABILITY_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 37, "itemId": "Awvt8v0H", "itemSku": "1fKVQtlR", "itemType": "Xm3UxI8Q"}, {"count": 38, "itemId": "eJcI1UV1", "itemSku": "X9NhVTX9", "itemType": "Af866JE1"}, {"count": 30, "itemId": "1XXQ598G", "itemSku": "TakQZyEQ", "itemType": "4czxabDz"}], "name": "VKBEYd39", "odds": 0.6966187784103467, "type": "REWARD", "weight": 63}]}, "maxCount": 78, "maxCountPerUser": 23, "name": "X7nYxGKT", "namespace": "bB3VHyam", "optionBoxConfig": {"boxItems": [{"count": 3, "itemId": "V9UyKeon", "itemSku": "mQes5lcF", "itemType": "brwSiUSI"}, {"count": 81, "itemId": "jQ5KGpZZ", "itemSku": "uq3BZhHO", "itemType": "0oGK6fKA"}, {"count": 10, "itemId": "pcFyfIRP", "itemSku": "sCyA9HuU", "itemType": "h9WvQVom"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "comparison": "isGreaterThan", "name": "8ClqEGyr", "predicateType": "SeasonTierPredicate", "value": "8ZHtgloK", "values": ["O1FavdrH", "LMVfF4cu", "VAGlFCTw"]}, {"anyOf": 59, "comparison": "isLessThan", "name": "P5K7x0C8", "predicateType": "SeasonTierPredicate", "value": "id7zaMUB", "values": ["cNmSllCi", "NYqhLHF9", "YCWDRfXm"]}, {"anyOf": 92, "comparison": "isLessThan", "name": "2dZbHaZZ", "predicateType": "SeasonPassPredicate", "value": "6jbadGq8", "values": ["DRg05wFM", "i6d1EJUo", "o5ygdk1N"]}]}, {"operator": "or", "predicates": [{"anyOf": 38, "comparison": "includes", "name": "ekJWwgMX", "predicateType": "SeasonTierPredicate", "value": "61MQGPW4", "values": ["LhHvfZPp", "yeWeTVwX", "RkB0t0tH"]}, {"anyOf": 92, "comparison": "isNot", "name": "wmtnFgVt", "predicateType": "SeasonPassPredicate", "value": "WtsaXPxm", "values": ["d1mkWrft", "ZgJ0SEWR", "5T3otV02"]}, {"anyOf": 96, "comparison": "excludes", "name": "W2Z1HaFu", "predicateType": "SeasonTierPredicate", "value": "4g4e5RIP", "values": ["vh6iOq8P", "ev7v7UPl", "bi5E66cG"]}]}, {"operator": "and", "predicates": [{"anyOf": 91, "comparison": "isNot", "name": "XE4R93ku", "predicateType": "SeasonTierPredicate", "value": "4ee1VCDu", "values": ["25xD11Tr", "5afuTaAp", "33zGOa5K"]}, {"anyOf": 21, "comparison": "is", "name": "qs9LBYwl", "predicateType": "EntitlementPredicate", "value": "uqFJ0ktu", "values": ["mc4z59PX", "jwXhz1gR", "pCGALIbS"]}, {"anyOf": 58, "comparison": "is", "name": "j2v5Qp40", "predicateType": "SeasonPassPredicate", "value": "SWiO84kQ", "values": ["dGT1iBzA", "c3Nzrsfn", "X5zkig7q"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 95, "fixedTrialCycles": 68, "graceDays": 60}, "region": "mJVPld3i", "regionData": [{"currencyCode": "HWB8Vatr", "currencyNamespace": "OLJGxR1m", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1997-10-11T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1991-03-15T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-09-27T00:00:00Z", "price": 61, "purchaseAt": "1998-05-02T00:00:00Z", "trialPrice": 11}, {"currencyCode": "BKlPXQ2H", "currencyNamespace": "puvQHho6", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1998-03-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1999-01-06T00:00:00Z", "discountedPrice": 60, "expireAt": "1996-05-10T00:00:00Z", "price": 15, "purchaseAt": "1996-04-16T00:00:00Z", "trialPrice": 80}, {"currencyCode": "iph9NxRQ", "currencyNamespace": "W01MprPl", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1974-08-27T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1988-11-23T00:00:00Z", "discountedPrice": 14, "expireAt": "1997-10-14T00:00:00Z", "price": 6, "purchaseAt": "1993-01-03T00:00:00Z", "trialPrice": 56}], "seasonType": "PASS", "sku": "TtDarZES", "stackable": true, "status": "ACTIVE", "tags": ["SAssByOm", "X34QizFX", "BILO3nBx"], "targetCurrencyCode": "pJ5XrYYv", "targetItemId": "2Gkk3omf", "targetNamespace": "V3JSJOJF", "thumbnailUrl": "n5wmv7C6", "title": "o60f0oIH", "updatedAt": "1985-08-25T00:00:00Z", "useCount": 15}, "namespace": "kHIFCs29", "order": {"currency": {"currencyCode": "OCrvw6PF", "currencySymbol": "PoWKgWF4", "currencyType": "REAL", "decimals": 19, "namespace": "6Xb6sUhT"}, "ext": {"qPHfkYlZ": {}, "y8soLlLR": {}, "rGtIRXNL": {}}, "free": false}, "source": "REFERRAL_BONUS"}, "script": "8Syyr2J8", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'K2GlsOCW' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'gpxG9kDZ' --body '{"grantDays": "FOL6xkZ8"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'aTOtT9m1' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'Q5YWYufQ' --body '{"grantDays": "3oEnVxzH"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "s87hcaU4", "dryRun": true, "fulfillmentUrl": "3QmukLRK", "itemType": "OPTIONBOX", "purchaseConditionUrl": "grMwmVZy"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'SEASON' --login_with_auth "Bearer foo"
platform-get-item-type-config 'uoFQux0h' --login_with_auth "Bearer foo"
platform-update-item-type-config 'JbRw62rK' --body '{"clazz": "yN53gFLL", "dryRun": false, "fulfillmentUrl": "wGDwdCNf", "purchaseConditionUrl": "cWpA1RGG"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'DDnSAEG1' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "TQrWvyFI", "items": [{"extraSubscriptionDays": 4, "itemId": "c7E59scn", "itemName": "eHNhNXSL", "quantity": 51}, {"extraSubscriptionDays": 93, "itemId": "3heLghEw", "itemName": "aomeEt4c", "quantity": 34}, {"extraSubscriptionDays": 70, "itemId": "qvWYqinB", "itemName": "wFBaAIPv", "quantity": 69}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 100, "maxRedeemCountPerCodePerUser": 85, "maxSaleCount": 85, "name": "gjxJFw0B", "redeemEnd": "1994-05-31T00:00:00Z", "redeemStart": "1979-12-07T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["2hDTdGKc", "2y5H138J", "yrdMp7l3"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign '3vFzc5yK' --login_with_auth "Bearer foo"
platform-update-campaign '0JoEckTk' --body '{"description": "QhyLgt3l", "items": [{"extraSubscriptionDays": 5, "itemId": "KQgGkcCa", "itemName": "l7IkQO7a", "quantity": 94}, {"extraSubscriptionDays": 17, "itemId": "4FqDH9jX", "itemName": "HXQARvSx", "quantity": 46}, {"extraSubscriptionDays": 53, "itemId": "nukchvfg", "itemName": "5CgLdFQV", "quantity": 85}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 47, "maxRedeemCountPerCodePerUser": 72, "maxSaleCount": 53, "name": "0kFcMKtx", "redeemEnd": "1995-07-03T00:00:00Z", "redeemStart": "1973-11-11T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["KETmuRpY", "YkOKPaZH", "3R4aZTRh"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'Uj2kEN5n' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'mqL8dlEK' --body '{"categoryPath": "iGnE2CRC", "localizationDisplayNames": {"dxvITJJD": "YHSaWUl1", "9vtOhGQo": "NbDKLVDy", "7kl2D5HV": "hhZF3IVm"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'K03wXQVO' --login_with_auth "Bearer foo"
platform-update-category 'XehiTSWD' 'RaqlC8Y9' --body '{"localizationDisplayNames": {"3gswOVQy": "XxPozzvy", "44sNOMSn": "xDropyFI", "nSJG3BjP": "cvXm2D5G"}}' --login_with_auth "Bearer foo"
platform-delete-category 'jfE5Mljj' 'eNh1s0K5' --login_with_auth "Bearer foo"
platform-get-child-categories 'iC3evm8h' --login_with_auth "Bearer foo"
platform-get-descendant-categories '9TfwMAvN' --login_with_auth "Bearer foo"
platform-query-codes 'HGzZpc4S' --login_with_auth "Bearer foo"
platform-create-codes 'G5eCVPEu' --body '{"quantity": 4}' --login_with_auth "Bearer foo"
platform-download 'BXo6tljE' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'rmm9XR5D' --login_with_auth "Bearer foo"
platform-bulk-enable-codes '67Kj4jOc' --login_with_auth "Bearer foo"
platform-query-redeem-history 'w3QN0FZs' --login_with_auth "Bearer foo"
platform-get-code 'rZH7r9dw' --login_with_auth "Bearer foo"
platform-disable-code 'kJgRVAEz' --login_with_auth "Bearer foo"
platform-enable-code 'EkBVebdA' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "75uqAy8W", "currencySymbol": "rahQeUEY", "currencyType": "VIRTUAL", "decimals": 61, "localizationDescriptions": {"mWHoVPoo": "nQZoPWP3", "APWZEvHx": "4oRnMEhd", "eTqcIHxU": "J1n7X7wi"}}' --login_with_auth "Bearer foo"
platform-update-currency 'Qy9d0JjT' --body '{"localizationDescriptions": {"Z7WdF4jc": "IK9yXblY", "p24Z0ztl": "P8rEqkj4", "G5qNOeuc": "7MGGqRzn"}}' --login_with_auth "Bearer foo"
platform-delete-currency '5koayZPz' --login_with_auth "Bearer foo"
platform-get-currency-config '0ZL9V81F' --login_with_auth "Bearer foo"
platform-get-currency-summary '0ctjQPiW' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "vAWpfyvp", "rewards": [{"currency": {"currencyCode": "Is6jm6pX", "namespace": "oGX9oCmh"}, "item": {"itemId": "sbi2qqcJ", "itemSku": "vNbq0Y0k", "itemType": "RCEo6Ib7"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "KIV30Y3o", "namespace": "NBMrMtmj"}, "item": {"itemId": "oxLXQFgY", "itemSku": "5SIRV7Oc", "itemType": "roeJpKzF"}, "quantity": 87, "type": "ITEM"}, {"currency": {"currencyCode": "GbvSzqIJ", "namespace": "VKyAAZKo"}, "item": {"itemId": "8ru2PFXA", "itemSku": "xm72zxVa", "itemType": "VUUB4VRx"}, "quantity": 15, "type": "CURRENCY"}]}, {"id": "YgDmWcsT", "rewards": [{"currency": {"currencyCode": "cbgxlu6W", "namespace": "FNQxBREU"}, "item": {"itemId": "fYsMSNzF", "itemSku": "zYSxt3BO", "itemType": "b2ZStZLw"}, "quantity": 43, "type": "ITEM"}, {"currency": {"currencyCode": "rnEVb0yr", "namespace": "7Uu4iExJ"}, "item": {"itemId": "nVTAere3", "itemSku": "eydQNFyp", "itemType": "441cdbO0"}, "quantity": 95, "type": "ITEM"}, {"currency": {"currencyCode": "bt2NeRwN", "namespace": "Uto150ul"}, "item": {"itemId": "A08NFqgI", "itemSku": "Hc6VMxys", "itemType": "H4QHRDPC"}, "quantity": 97, "type": "CURRENCY"}]}, {"id": "aVpe3HOD", "rewards": [{"currency": {"currencyCode": "9XbL1Rq0", "namespace": "raeDdQG5"}, "item": {"itemId": "2IYp6Wmb", "itemSku": "1nozvPra", "itemType": "cYub4WdB"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "3pNvZsRJ", "namespace": "9SktJtsX"}, "item": {"itemId": "cAeXEDIW", "itemSku": "mE9pCgq5", "itemType": "h1Fzol9S"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "0dwA46it", "namespace": "i3Te6lh6"}, "item": {"itemId": "AY0a9d1R", "itemSku": "hbXso3XO", "itemType": "3Q1fgUJf"}, "quantity": 100, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Qpo6SF8H": "QKbDmhoG", "5tCDIDK5": "xTCjhtID", "Sw1Ibdtp": "bfJwpSQr"}}, {"platform": "PSN", "platformDlcIdMap": {"SelTBIE6": "oJq8ssVx", "mStyOxus": "qVmMHo85", "Ie6lvh3e": "0XK087fO"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"4N4OyR94": "vMuI2FVT", "BZ2vntrf": "Ci4VLt89", "Rre7VSG9": "t389NbsJ"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'cVoHLN0j' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "V3AqZP6I", "password": "GcV9E87T"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "ahN9lLMN"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "QG8fVrJb", "serviceAccountId": "bFgz14yV"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "w3Bxl3QJ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"KVrGD59j": "3kKvVArE", "2sL15Xvo": "JHpZkcUK", "sibDpl0D": "REkXd70p"}}, {"itemIdentity": "aTVyg1M0", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"TYgY4T7E": "OjeFR0sY", "Ne5rX2Ne": "xGgfndVL", "QpaUUo57": "SKVTJ2H1"}}, {"itemIdentity": "WdkCsopH", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"lZGGBjcC": "sMLIgfmo", "QgKjI7zE": "HmCfahDe", "TvBLZE0L": "wAnN24Nm"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "HX5tmPKc"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "Pi1rva4J", "publisherAuthenticationKey": "ax1boG82"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "50E3W14S", "clientSecret": "4ovbRn9K", "organizationId": "vQg3hfE8"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "z99Q7puJ"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'mMTelXzh' '0yp1z9qu' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'uP3s3P1b' '3FWif7az' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'SA7rZ2hA' --body '{"categoryPath": "chXZclPy", "targetItemId": "rTPIFGzz", "targetNamespace": "MLnPgvIs"}' --login_with_auth "Bearer foo"
platform-create-item '2a5HLdgl' --body '{"appId": "tbmEM940", "appType": "SOFTWARE", "baseAppId": "WnZrkDkC", "boothName": "EsqA6L43", "categoryPath": "tzUZcbna", "clazz": "5C9iUYpC", "displayOrder": 90, "entitlementType": "CONSUMABLE", "ext": {"Fo41yoWo": {}, "m0Iy11oM": {}, "aTfcw0Hc": {}}, "features": ["DraoWAxO", "wJVt2xSV", "m0Hbenzd"], "images": [{"as": "f0uWfE9m", "caption": "TF4FoQLJ", "height": 73, "imageUrl": "1PWpqIML", "smallImageUrl": "gstw1eZG", "width": 46}, {"as": "vndgWCLY", "caption": "FE9mJRu7", "height": 2, "imageUrl": "ieVhjqR5", "smallImageUrl": "06pOj7uY", "width": 74}, {"as": "K8Yykkiz", "caption": "sby7kvxj", "height": 25, "imageUrl": "0YcWGzVh", "smallImageUrl": "SXu7TRS3", "width": 54}], "itemIds": ["b4kjYABR", "f1T4ygbi", "SQ3EAJDv"], "itemQty": {"Sg4zUr0l": 15, "hzNRyPJi": 66, "m8ZfKsVk": 85}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"V7k2qkAB": {"description": "sQXSyJm0", "localExt": {"LSOBGmcx": {}, "cFZl2lKa": {}, "yZKuxB4p": {}}, "longDescription": "Gd1N1B5L", "title": "4kz0pBdV"}, "WukHg47c": {"description": "9GUAnwXx", "localExt": {"vhNlmKwU": {}, "dSvoRY2b": {}, "5vbpuNBY": {}}, "longDescription": "Va0UBmsz", "title": "W4XRTFIi"}, "tQBRn5Ek": {"description": "gMCkOWLP", "localExt": {"UlpZgKXx": {}, "cGOIVBKn": {}, "Qb2aOiVb": {}}, "longDescription": "UWtbttD3", "title": "MCA1XVL2"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 66, "itemId": "QVuwackQ", "itemSku": "wA71vdDb", "itemType": "yXOJFYz1"}, {"count": 61, "itemId": "kDbLpS0T", "itemSku": "JJqqgGO4", "itemType": "kDjIoqe5"}, {"count": 89, "itemId": "sz7mWPcM", "itemSku": "vOGpxLf0", "itemType": "bAXXkTyb"}], "name": "79mmLrgy", "odds": 0.3126518717559872, "type": "REWARD_GROUP", "weight": 48}, {"lootBoxItems": [{"count": 74, "itemId": "UGlF3vw3", "itemSku": "xxeAoLph", "itemType": "4eLrm7ay"}, {"count": 88, "itemId": "sVtxcNgV", "itemSku": "oT2kxBOS", "itemType": "s4RYWnAG"}, {"count": 7, "itemId": "eysZIlKp", "itemSku": "IVqFzFKf", "itemType": "ZP1l9dXu"}], "name": "XsFB5sEj", "odds": 0.8918026217968247, "type": "REWARD_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 15, "itemId": "F3JWTM1A", "itemSku": "nlv54ohV", "itemType": "JsEeKRIz"}, {"count": 24, "itemId": "e56tOCbn", "itemSku": "euG5lo6q", "itemType": "JcfdSItc"}, {"count": 66, "itemId": "12Ftm7Nc", "itemSku": "PgMeKSXJ", "itemType": "cmcG3cyd"}], "name": "oM0rFqfw", "odds": 0.7015371759381579, "type": "PROBABILITY_GROUP", "weight": 70}]}, "maxCount": 39, "maxCountPerUser": 17, "name": "8rFkiMdP", "optionBoxConfig": {"boxItems": [{"count": 67, "itemId": "z0HTa0G2", "itemSku": "JYePzvAL", "itemType": "wFuOL8hj"}, {"count": 61, "itemId": "zOw13qK6", "itemSku": "5dcjNgjA", "itemType": "I9K20RmW"}, {"count": 14, "itemId": "wJAQguPq", "itemSku": "ijHrcJz8", "itemType": "NPnIQO7D"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 74, "fixedTrialCycles": 99, "graceDays": 48}, "regionData": {"1zpMbPNj": [{"currencyCode": "b9nTkUaV", "currencyNamespace": "yHRJTiA4", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1978-06-14T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-12-24T00:00:00Z", "discountedPrice": 71, "expireAt": "1990-11-30T00:00:00Z", "price": 14, "purchaseAt": "1986-10-16T00:00:00Z", "trialPrice": 57}, {"currencyCode": "TJoFWUOg", "currencyNamespace": "HNXMhiqP", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1988-01-05T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1997-06-23T00:00:00Z", "discountedPrice": 100, "expireAt": "1975-06-15T00:00:00Z", "price": 42, "purchaseAt": "1994-08-23T00:00:00Z", "trialPrice": 70}, {"currencyCode": "0CyGEOw1", "currencyNamespace": "hcWGMafj", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1974-05-01T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1991-07-14T00:00:00Z", "discountedPrice": 19, "expireAt": "1979-09-06T00:00:00Z", "price": 43, "purchaseAt": "1972-11-18T00:00:00Z", "trialPrice": 44}], "FCuXLSvI": [{"currencyCode": "btoThYqH", "currencyNamespace": "vjs5uPba", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1989-04-17T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1972-12-27T00:00:00Z", "discountedPrice": 21, "expireAt": "1991-03-11T00:00:00Z", "price": 99, "purchaseAt": "1997-05-18T00:00:00Z", "trialPrice": 96}, {"currencyCode": "53AcT8dt", "currencyNamespace": "mmAta0VS", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1990-08-05T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1984-03-17T00:00:00Z", "discountedPrice": 88, "expireAt": "1982-04-19T00:00:00Z", "price": 55, "purchaseAt": "1994-07-18T00:00:00Z", "trialPrice": 57}, {"currencyCode": "ZDVrWyFk", "currencyNamespace": "3T8HESjQ", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1971-11-13T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1988-05-22T00:00:00Z", "discountedPrice": 59, "expireAt": "1980-06-29T00:00:00Z", "price": 81, "purchaseAt": "1975-01-26T00:00:00Z", "trialPrice": 17}], "4EEIVAbj": [{"currencyCode": "pE9VTIaC", "currencyNamespace": "CSRmYXOv", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1995-04-27T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1975-12-25T00:00:00Z", "discountedPrice": 44, "expireAt": "1978-09-28T00:00:00Z", "price": 82, "purchaseAt": "1992-01-01T00:00:00Z", "trialPrice": 84}, {"currencyCode": "LJrlNJvf", "currencyNamespace": "PHf1qbiS", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1993-04-29T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1989-10-21T00:00:00Z", "discountedPrice": 27, "expireAt": "1997-11-19T00:00:00Z", "price": 61, "purchaseAt": "1995-10-09T00:00:00Z", "trialPrice": 46}, {"currencyCode": "vdZnbL6h", "currencyNamespace": "7fwS8y4O", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1986-09-29T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1994-08-31T00:00:00Z", "discountedPrice": 89, "expireAt": "1983-05-11T00:00:00Z", "price": 25, "purchaseAt": "1974-12-24T00:00:00Z", "trialPrice": 49}]}, "seasonType": "TIER", "sku": "heQghQqC", "stackable": true, "status": "INACTIVE", "tags": ["NAFrznP2", "uSpQZP4A", "Y0Zu0t6J"], "targetCurrencyCode": "lntuqXC0", "targetNamespace": "b9b1GxpM", "thumbnailUrl": "dgstKPAx", "useCount": 49}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'I39Vag8t' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'vSwj0aGz' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'mCg7m36S' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '2nJNSLaj' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'E4RIUDSF' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'sLCvhiA7' --body '{"itemIds": ["RGvkxlQf", "asuPx3WW", "C48rkKsc"]}' --login_with_auth "Bearer foo"
platform-search-items 'x3rbq3zd' 'z4gKTWc7' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'g2eyp10M' --login_with_auth "Bearer foo"
platform-update-item 'io30q7fz' 'd6ui5DuK' --body '{"appId": "CyHFERNt", "appType": "DLC", "baseAppId": "Ha04Pe6K", "boothName": "nLUZSVjY", "categoryPath": "iEUFtUDP", "clazz": "Qd3TtZfC", "displayOrder": 43, "entitlementType": "DURABLE", "ext": {"MhtyFtpm": {}, "BePuAT48": {}, "59JOiiRh": {}}, "features": ["0VcelUwQ", "yhZFhNC7", "Ev2hne6e"], "images": [{"as": "PcwtUGqT", "caption": "yJtkpXIf", "height": 15, "imageUrl": "a6iZbrmb", "smallImageUrl": "L4K25WZ0", "width": 68}, {"as": "Insp7ti7", "caption": "RUkt3VlE", "height": 0, "imageUrl": "GlKVNktS", "smallImageUrl": "iBHAXEYM", "width": 51}, {"as": "Ze8vJSSV", "caption": "qTtyuZ9O", "height": 54, "imageUrl": "JSR9jcyc", "smallImageUrl": "yvLnurtG", "width": 94}], "itemIds": ["2o8NcCLJ", "hZKcmkL3", "KXEloTc7"], "itemQty": {"OEVPqO2N": 38, "j24n4xJi": 90, "UK5IkfjH": 90}, "itemType": "MEDIA", "listable": false, "localizations": {"mrLJ96q0": {"description": "dIBVdXuq", "localExt": {"QLFLl9vs": {}, "l7jVBh8q": {}, "Kll2fkLu": {}}, "longDescription": "L8aJOCqV", "title": "TtyXapJ7"}, "kFBYkhfN": {"description": "zxxPEx5W", "localExt": {"g73VwFoI": {}, "VgMlNb2X": {}, "J7w6wOHv": {}}, "longDescription": "L3ebFLns", "title": "fMbyWg83"}, "kwUr3nJh": {"description": "OpSIFgwD", "localExt": {"aVRKRjyX": {}, "saB5bQ4r": {}, "gle7OLdS": {}}, "longDescription": "7KMx918r", "title": "LcQti5eW"}}, "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 51, "itemId": "Fnspebvj", "itemSku": "1bAN9Juf", "itemType": "6DIOy0LG"}, {"count": 76, "itemId": "XUTgW6sF", "itemSku": "9c5QsZTV", "itemType": "mqHwuYWj"}, {"count": 15, "itemId": "eanRaSvZ", "itemSku": "Re8x1MyZ", "itemType": "5tyeFQSz"}], "name": "CZEhcQg7", "odds": 0.2555285350688433, "type": "PROBABILITY_GROUP", "weight": 96}, {"lootBoxItems": [{"count": 77, "itemId": "EYNVmTw1", "itemSku": "CTKMbY7Q", "itemType": "rqWA4kHZ"}, {"count": 45, "itemId": "j93aBR4J", "itemSku": "sKKlrkDF", "itemType": "6u4OsJQF"}, {"count": 93, "itemId": "QgNU8SZF", "itemSku": "IMHWsqhR", "itemType": "9AZ2f2tE"}], "name": "FqfMY6uX", "odds": 0.8013206703652219, "type": "PROBABILITY_GROUP", "weight": 61}, {"lootBoxItems": [{"count": 48, "itemId": "t7aOxQwM", "itemSku": "7qaxD12A", "itemType": "oMQV7nBx"}, {"count": 84, "itemId": "R2A2zHai", "itemSku": "PiyHZb6a", "itemType": "R9Op36v4"}, {"count": 80, "itemId": "MlpdC5nA", "itemSku": "RpAqDxL6", "itemType": "N7nZoyaB"}], "name": "aRiRWD79", "odds": 0.519519847465674, "type": "PROBABILITY_GROUP", "weight": 37}]}, "maxCount": 24, "maxCountPerUser": 46, "name": "Z9Lf5VVs", "optionBoxConfig": {"boxItems": [{"count": 62, "itemId": "2XkbaVE4", "itemSku": "Hoy4uRiE", "itemType": "y78ht4Tu"}, {"count": 12, "itemId": "0iiMraUX", "itemSku": "ndAaXHjl", "itemType": "e2wEw62E"}, {"count": 99, "itemId": "K9zWCLqq", "itemSku": "eKcHTXBh", "itemType": "FuWjaXJr"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 86, "fixedTrialCycles": 34, "graceDays": 6}, "regionData": {"6Sd1P44j": [{"currencyCode": "YMtalyoC", "currencyNamespace": "jdWy5A3O", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1985-10-30T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1994-09-16T00:00:00Z", "discountedPrice": 41, "expireAt": "1996-08-07T00:00:00Z", "price": 69, "purchaseAt": "1987-03-06T00:00:00Z", "trialPrice": 62}, {"currencyCode": "QFYhIxBC", "currencyNamespace": "bLZXpHhn", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1991-03-23T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1983-08-30T00:00:00Z", "discountedPrice": 7, "expireAt": "1982-07-22T00:00:00Z", "price": 73, "purchaseAt": "1971-02-03T00:00:00Z", "trialPrice": 17}, {"currencyCode": "MmK1VoZQ", "currencyNamespace": "LtSySeW5", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1996-08-15T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1975-01-25T00:00:00Z", "discountedPrice": 56, "expireAt": "1979-09-24T00:00:00Z", "price": 32, "purchaseAt": "1977-11-20T00:00:00Z", "trialPrice": 91}], "R77QDOql": [{"currencyCode": "wksIuLpF", "currencyNamespace": "h8pohQyn", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1971-06-14T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1983-10-09T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-07-07T00:00:00Z", "price": 0, "purchaseAt": "1973-10-12T00:00:00Z", "trialPrice": 65}, {"currencyCode": "2Azq5u34", "currencyNamespace": "mlzKS9ix", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1999-11-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1999-03-05T00:00:00Z", "discountedPrice": 18, "expireAt": "1999-06-12T00:00:00Z", "price": 95, "purchaseAt": "1980-12-14T00:00:00Z", "trialPrice": 92}, {"currencyCode": "Ll5Qbsfl", "currencyNamespace": "EM7Gjb04", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1972-11-02T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1971-02-14T00:00:00Z", "discountedPrice": 92, "expireAt": "1978-07-03T00:00:00Z", "price": 58, "purchaseAt": "1971-04-22T00:00:00Z", "trialPrice": 42}], "3M4PjOGp": [{"currencyCode": "a3wnnfXQ", "currencyNamespace": "jFRb1e6o", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1987-08-12T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1974-11-20T00:00:00Z", "discountedPrice": 31, "expireAt": "1992-06-30T00:00:00Z", "price": 48, "purchaseAt": "1987-11-02T00:00:00Z", "trialPrice": 57}, {"currencyCode": "8BpNvHFO", "currencyNamespace": "to6IgqSy", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1996-10-27T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1974-07-21T00:00:00Z", "discountedPrice": 43, "expireAt": "1974-07-08T00:00:00Z", "price": 35, "purchaseAt": "1993-03-23T00:00:00Z", "trialPrice": 1}, {"currencyCode": "15DTrkkE", "currencyNamespace": "awTTNcOq", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1999-06-13T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1994-01-31T00:00:00Z", "discountedPrice": 25, "expireAt": "1995-01-08T00:00:00Z", "price": 86, "purchaseAt": "1976-02-22T00:00:00Z", "trialPrice": 36}]}, "seasonType": "PASS", "sku": "EPcWquvJ", "stackable": false, "status": "ACTIVE", "tags": ["CdgNKp4R", "VokfX66t", "7J1Yw2w0"], "targetCurrencyCode": "QDlO2dUC", "targetNamespace": "Z8R9D7pf", "thumbnailUrl": "y3fZGDDk", "useCount": 57}' --login_with_auth "Bearer foo"
platform-delete-item 'GyILjKU6' --login_with_auth "Bearer foo"
platform-acquire-item 'o0J5QBpN' --body '{"count": 66, "orderNo": "kZRz6Rdu"}' --login_with_auth "Bearer foo"
platform-get-app 'UYKdRbKB' --login_with_auth "Bearer foo"
platform-update-app 'T1ZUp0lb' 'BOz9tl3T' --body '{"carousel": [{"alt": "ClGP4Hec", "previewUrl": "lXXMngTK", "thumbnailUrl": "24GxLXPC", "type": "video", "url": "TdHlggB3", "videoSource": "vimeo"}, {"alt": "RJmCFTfU", "previewUrl": "6devIjP7", "thumbnailUrl": "LkGoJWq3", "type": "image", "url": "4hjsgpwP", "videoSource": "vimeo"}, {"alt": "C1cQmymn", "previewUrl": "cWJHkWnn", "thumbnailUrl": "KUQXhxQr", "type": "image", "url": "QVG3cibx", "videoSource": "generic"}], "developer": "zItxkA1z", "forumUrl": "8EyHHpR3", "genres": ["RPG", "Racing", "FreeToPlay"], "localizations": {"OJW0k37z": {"announcement": "6jJuBKf6", "slogan": "hRGPeHtf"}, "mf9JM4lI": {"announcement": "p6RalvbO", "slogan": "t92aFVib"}, "dDWm9AgG": {"announcement": "eDLzs1l7", "slogan": "4M2b070z"}}, "platformRequirements": {"3f0dYpJh": [{"additionals": "IuJEbe2G", "directXVersion": "B0FJnp57", "diskSpace": "4hDNJjmg", "graphics": "okzqZm9k", "label": "T9ByCFCv", "osVersion": "14j6DER2", "processor": "a96RkJHT", "ram": "TH2cxNrG", "soundCard": "RDBbQf4V"}, {"additionals": "LcSZS38c", "directXVersion": "4Aj5loQC", "diskSpace": "euerpuXQ", "graphics": "tIBXYA2n", "label": "SGAuH50L", "osVersion": "e6urkATL", "processor": "o7DgUX4Y", "ram": "W248FaFR", "soundCard": "xOynGKXw"}, {"additionals": "24R9UyGF", "directXVersion": "Omu8m0PE", "diskSpace": "6zYnn2TD", "graphics": "uTvxV6Bz", "label": "3m1JkMxR", "osVersion": "BeEkAX7l", "processor": "cRFXlCr3", "ram": "RZf8ijk6", "soundCard": "IiZpuiBj"}], "7ll406r6": [{"additionals": "aUsGD5um", "directXVersion": "RXJTIWmH", "diskSpace": "KjlVD7Ot", "graphics": "Wd1RliRY", "label": "EZhfEyVC", "osVersion": "fZMm46Bu", "processor": "J95ST7mR", "ram": "XXlqrp8n", "soundCard": "qV7oCdzC"}, {"additionals": "C5ZGazVF", "directXVersion": "KnjIh57V", "diskSpace": "7lOR47cj", "graphics": "BFTG8eeT", "label": "b6M1oLU1", "osVersion": "PYhxS3Nd", "processor": "xAxjENc6", "ram": "OYWgmegs", "soundCard": "fQtBukIx"}, {"additionals": "1zQqHE9J", "directXVersion": "dAvHuXMv", "diskSpace": "8bPGOLbD", "graphics": "4AH7y4Nf", "label": "sydXBvoR", "osVersion": "ZbhX13Dk", "processor": "Kemx6TJN", "ram": "u7ri2HLO", "soundCard": "XNYnDTCW"}], "pz1StSy3": [{"additionals": "zgLMTVcB", "directXVersion": "bEYAIp15", "diskSpace": "JMg1Mk2A", "graphics": "7qmjKfoH", "label": "n5Q6A7tC", "osVersion": "He5KVff5", "processor": "9qKwuCfQ", "ram": "9wt6DPaZ", "soundCard": "Q2FKVTLV"}, {"additionals": "kD8bm5K1", "directXVersion": "SHTQCvGh", "diskSpace": "ikxMeNpP", "graphics": "cR6SRmW0", "label": "L5ixZ22d", "osVersion": "2jEjZZuG", "processor": "WWDICjI8", "ram": "zlfYxCeu", "soundCard": "89NXWeFd"}, {"additionals": "H63L1JrG", "directXVersion": "19GvllhB", "diskSpace": "seESRZoo", "graphics": "eoLMJTBG", "label": "0Ua1ip2M", "osVersion": "HFfUvT44", "processor": "npVaFtaI", "ram": "9Xji0YjZ", "soundCard": "3tCkhwte"}]}, "platforms": ["Windows", "MacOS", "Android"], "players": ["MMO", "Coop", "CrossPlatformMulti"], "primaryGenre": "Racing", "publisher": "OmJYRSEb", "releaseDate": "1983-06-21T00:00:00Z", "websiteUrl": "v5bSfjK0"}' --login_with_auth "Bearer foo"
platform-disable-item 'SdK52hpk' '3HdCsbBi' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'mlg62C9c' --login_with_auth "Bearer foo"
platform-enable-item '8xjWd5O6' 'f7qGPRps' --login_with_auth "Bearer foo"
platform-feature-item 'eIfT5V8W' '0WkV7pLi' 'FuIjhb7f' --login_with_auth "Bearer foo"
platform-defeature-item 'DVbwlkO6' 'lgMCQkEy' '1MGjmA2b' --login_with_auth "Bearer foo"
platform-get-locale-item 'Lw3XoZB6' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'muHeI2I5' '4GKl3qNl' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 100, "comparison": "is", "name": "c7tBlpSW", "predicateType": "SeasonTierPredicate", "value": "9U3PIVez", "values": ["Xl0YeyTP", "R6p0NJUu", "TvdKTaRr"]}, {"anyOf": 92, "comparison": "isLessThanOrEqual", "name": "mCmdWtwy", "predicateType": "SeasonTierPredicate", "value": "oBC4HsJs", "values": ["2CzMvhWD", "k3k4axpN", "U319150p"]}, {"anyOf": 81, "comparison": "is", "name": "eIZqq9qY", "predicateType": "EntitlementPredicate", "value": "dOAjLQiU", "values": ["xVhMn4Gi", "85tzx7tk", "ywNTL2ul"]}]}, {"operator": "and", "predicates": [{"anyOf": 16, "comparison": "includes", "name": "C8SlIisy", "predicateType": "EntitlementPredicate", "value": "DPqRS28M", "values": ["xscQNGms", "Vfz06fG3", "xGnWcYAB"]}, {"anyOf": 31, "comparison": "isLessThanOrEqual", "name": "cUXAmeUe", "predicateType": "SeasonPassPredicate", "value": "Szoo0Ttl", "values": ["8yCMXY8V", "nyPGbCnF", "GN1HisP2"]}, {"anyOf": 45, "comparison": "isGreaterThanOrEqual", "name": "bj0CbAKf", "predicateType": "EntitlementPredicate", "value": "M8p9BY4q", "values": ["zhsmTJNs", "pUorYpQs", "w2LfEmV4"]}]}, {"operator": "or", "predicates": [{"anyOf": 95, "comparison": "isGreaterThan", "name": "1XLDkugo", "predicateType": "SeasonPassPredicate", "value": "VDHxVhbQ", "values": ["p7cXWazi", "wyKyV1ZD", "lo5YTLiW"]}, {"anyOf": 69, "comparison": "isLessThanOrEqual", "name": "ob7x5tiu", "predicateType": "SeasonTierPredicate", "value": "EVf4IGTt", "values": ["3x6d6Cwy", "F9ftvRrD", "VUxttEwQ"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "agDxe2vL", "predicateType": "SeasonPassPredicate", "value": "cGE6mgtK", "values": ["gCr3TEJ6", "f9gmzr2A", "ez91QQHv"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'uSCR6GQw' --body '{"orderNo": "pp9MQoaM"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "QgDFLKIr", "name": "sC3LyAmY", "status": "INACTIVE", "tags": ["UWeTsYKe", "i1TIqvAP", "KqQL33XE"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'yOfFXUq1' --login_with_auth "Bearer foo"
platform-update-key-group 'O7bCFFmK' --body '{"description": "sg0ZBSA8", "name": "RSlpnJ0b", "status": "INACTIVE", "tags": ["fjDOXwMN", "BbD7j4gs", "zbr3ct56"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'zHdafSYR' --login_with_auth "Bearer foo"
platform-list-keys 'eWciWXn0' --login_with_auth "Bearer foo"
platform-upload-keys 'oH1t64bX' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'm1POdmH1' --login_with_auth "Bearer foo"
platform-refund-order 'rQxgH1Ak' --body '{"description": "MiSAg9g5"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "DJDESSYA", "privateKey": "BBVseMut"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "AVzLoLVP", "currencyNamespace": "gaSptCAq", "customParameters": {"Azj7WiAl": {}, "vdD8osEn": {}, "OJvUV4tE": {}}, "description": "JONgy12C", "extOrderNo": "uHm4VAqd", "extUserId": "9bk7iMlT", "itemType": "OPTIONBOX", "language": "MDAI-sCNi-690", "metadata": {"5s5YrI4t": "0nf5qLsZ", "pX82AdEb": "JHCOF8tc", "VgxX9iiI": "Kqosr39U"}, "notifyUrl": "fbyKdHS9", "omitNotification": false, "platform": "wYI0AIy4", "price": 50, "recurringPaymentOrderNo": "lD8B9I6g", "region": "iwVwR0FL", "returnUrl": "0LpOzO0L", "sandbox": false, "sku": "Xvr64cMf", "subscriptionId": "qswZtqTe", "targetNamespace": "9moyymCL", "targetUserId": "JYqp1BRa", "title": "0Ob8HW67"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'xXvfJGQC' --login_with_auth "Bearer foo"
platform-get-payment-order 'zJrdXx9E' --login_with_auth "Bearer foo"
platform-charge-payment-order 'cdn65Efu' --body '{"extTxId": "xW2CH4x5", "paymentMethod": "rz6dbIZa", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'YKVVZF0p' --body '{"description": "dbzu9LVM"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '6iyDqjD7' --body '{"amount": 64, "currencyCode": "RNf9JBb3", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 56, "vat": 28}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'Nqlp0Y0A' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["Other", "Steam", "System"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Nintendo' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "irxFhVP9", "eventTopic": "3G8GcD7O", "maxAwarded": 85, "maxAwardedPerUser": 77, "namespaceExpression": "m20ZJF2q", "rewardCode": "fuYrvcr7", "rewardConditions": [{"condition": "9LKY8wku", "conditionName": "E4v8UwrE", "eventName": "5CuQvY36", "rewardItems": [{"duration": 78, "itemId": "MOziwn2B", "quantity": 81}, {"duration": 78, "itemId": "872Xnlhc", "quantity": 31}, {"duration": 1, "itemId": "ubepXF4m", "quantity": 58}]}, {"condition": "8sZmONmi", "conditionName": "K9YzjoiQ", "eventName": "YGKijRtX", "rewardItems": [{"duration": 27, "itemId": "2wSpL8Vm", "quantity": 15}, {"duration": 16, "itemId": "Xx8BpGjm", "quantity": 94}, {"duration": 58, "itemId": "jfcLZXBd", "quantity": 38}]}, {"condition": "tcIoji71", "conditionName": "wJ2TPutC", "eventName": "kxe6sQPp", "rewardItems": [{"duration": 15, "itemId": "PHZiTMYa", "quantity": 18}, {"duration": 27, "itemId": "xPxrCkYx", "quantity": 8}, {"duration": 0, "itemId": "po10Cph4", "quantity": 17}]}], "userIdExpression": "edgOQyLE"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'D5vf5QI9' --login_with_auth "Bearer foo"
platform-update-reward 'wnQaOnHt' --body '{"description": "XTufR8ns", "eventTopic": "BbzaRfD4", "maxAwarded": 41, "maxAwardedPerUser": 90, "namespaceExpression": "6ceN5R7I", "rewardCode": "xPPHq5m3", "rewardConditions": [{"condition": "zsiOkE32", "conditionName": "7pCr0G2T", "eventName": "7wPIIb4k", "rewardItems": [{"duration": 57, "itemId": "Cw4EBxh0", "quantity": 12}, {"duration": 20, "itemId": "MdCOoQ4a", "quantity": 12}, {"duration": 24, "itemId": "uXkY6kFS", "quantity": 87}]}, {"condition": "4QRPeCHu", "conditionName": "pjnpGmgx", "eventName": "pVyHr8Mo", "rewardItems": [{"duration": 48, "itemId": "hEosAUwg", "quantity": 50}, {"duration": 19, "itemId": "WddHzIJQ", "quantity": 52}, {"duration": 55, "itemId": "otrCznp7", "quantity": 96}]}, {"condition": "BJeosoZY", "conditionName": "hGWAUUrR", "eventName": "pe706vRZ", "rewardItems": [{"duration": 33, "itemId": "31cFNolf", "quantity": 29}, {"duration": 91, "itemId": "3hM9SPnh", "quantity": 33}, {"duration": 53, "itemId": "A4se4leT", "quantity": 36}]}], "userIdExpression": "OUNPaK8T"}' --login_with_auth "Bearer foo"
platform-delete-reward 'ygpb8N3S' --login_with_auth "Bearer foo"
platform-check-event-condition 'OplPeiEE' --body '{"payload": {"JAd8sNUQ": {}, "Yq8wzmDv": {}, "6KDcvYGi": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'PCVmK6cs' --body '{"conditionName": "7mHiVVen", "userId": "Xa3etv2G"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'OljCwz4n' --body '{"active": false, "displayOrder": 90, "endDate": "1999-02-15T00:00:00Z", "ext": {"06NRmKPd": {}, "a9KOWRVo": {}, "B5TmoFDN": {}}, "fixedPeriodRotationConfig": {"duration": 14, "itemCount": 85, "rule": "SEQUENCE"}, "items": [{"id": "2fTx1eUx"}, {"id": "HYe25Z6j"}, {"id": "Cikhu5G6"}], "localizations": {"dHuC59G8": {"description": "oV1nPYGI", "localExt": {"9pnT43eP": {}, "y7TxmEEv": {}, "gsCw9r76": {}}, "longDescription": "qFyebfAk", "title": "36hHegYo"}, "2nrN55sk": {"description": "upeucFvq", "localExt": {"kwghmBbk": {}, "DPqWGG5B": {}, "C9mWEyFJ": {}}, "longDescription": "kqb4EciQ", "title": "PQVtfCU2"}, "XWCPBUOt": {"description": "h50TcdYm", "localExt": {"iwmvPLyg": {}, "VD8LdSpF": {}, "fZwZxwZW": {}}, "longDescription": "1SgPhjct", "title": "npardcZx"}}, "name": "anXBlvWW", "rotationType": "FIXED_PERIOD", "startDate": "1983-11-23T00:00:00Z", "viewId": "LC2vCgWx"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'YEJ8GEHT' --login_with_auth "Bearer foo"
platform-get-section 'ood74vuu' --login_with_auth "Bearer foo"
platform-update-section 'I5kcEFIx' 'atuExIAO' --body '{"active": false, "displayOrder": 80, "endDate": "1984-04-15T00:00:00Z", "ext": {"sFGcYoFg": {}, "6AcVZhai": {}, "SWeNpN42": {}}, "fixedPeriodRotationConfig": {"duration": 16, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "U80FvmNG"}, {"id": "XzEYUUqB"}, {"id": "iQ9NML0E"}], "localizations": {"GlIrT7H2": {"description": "4d92QBFT", "localExt": {"AvOhyZ65": {}, "9rURgo3N": {}, "QO08VP26": {}}, "longDescription": "AYD8BCvk", "title": "xa0JMb19"}, "FPsUrQEK": {"description": "tXMlTNPa", "localExt": {"l3EBxZnC": {}, "AavNbMBQ": {}, "b1IW8qHy": {}}, "longDescription": "HMd1q1J5", "title": "9THQmCNh"}, "TurQOFyF": {"description": "97yWupLB", "localExt": {"yCsusJOe": {}, "gUCNtFHg": {}, "QXMcvpDY": {}}, "longDescription": "LYFewHoQ", "title": "8QFgBHCX"}}, "name": "Zibvw2NB", "rotationType": "NONE", "startDate": "1979-10-28T00:00:00Z", "viewId": "doejjMyo"}' --login_with_auth "Bearer foo"
platform-delete-section 'tBFrqZnR' 'Uw04PHQt' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "1BBI3Gla", "defaultRegion": "QFETNu63", "description": "Rpb8Y0eS", "supportedLanguages": ["6lxdcYfi", "J2RitOU3", "AETnDNG3"], "supportedRegions": ["GuO67HAz", "AjpGYbsO", "344whJZl"], "title": "XbIikO2a"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'tMNn6cmO' --login_with_auth "Bearer foo"
platform-update-store 'r23qiez7' --body '{"defaultLanguage": "IKPoqBmO", "defaultRegion": "Xzo20HfF", "description": "dmEUFHbp", "supportedLanguages": ["98YJNe2u", "LcCqo4Sn", "5MPwAG4H"], "supportedRegions": ["SL36DKOo", "r4DVmqk8", "0ONWccqp"], "title": "BGkiyjHz"}' --login_with_auth "Bearer foo"
platform-delete-store 'RtXsJjIQ' --login_with_auth "Bearer foo"
platform-query-changes '1mN3hKW9' --login_with_auth "Bearer foo"
platform-publish-all 'Q0pJnSXf' --login_with_auth "Bearer foo"
platform-publish-selected '47N82OiK' --login_with_auth "Bearer foo"
platform-select-all-records 'iZTizxq5' --login_with_auth "Bearer foo"
platform-get-statistic 'fwHTP4nQ' --login_with_auth "Bearer foo"
platform-unselect-all-records 'O9TSS25Q' --login_with_auth "Bearer foo"
platform-select-record 'UIKWtiuy' 'PcIQz2Ce' --login_with_auth "Bearer foo"
platform-unselect-record 'KaRbQBI7' 'Cb7sHYN0' --login_with_auth "Bearer foo"
platform-clone-store 'Ic54Zv4J' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'RxW3ejaQ' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'fMfMDEJz' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'jrTVEeuB' --body '{"orderNo": "LYJZHbZP"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'RKSBODKK' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'Il1uB21N' --body '{"count": 97, "orderNo": "pm6ABL02"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'hzakTghE' --body '{"achievements": [{"id": "6Twr5SiN", "value": 62}, {"id": "URtWgSDv", "value": 80}, {"id": "atpF7GyR", "value": 69}], "steamUserId": "wCw0Aw0Z"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'UGqF3q2T' 'NOZ1lq46' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'CwoD5frK' --body '{"achievements": [{"id": "GcUQvl4T", "percentComplete": 0}, {"id": "GNKxxDlF", "percentComplete": 81}, {"id": "NXxVgQ2g", "percentComplete": 91}], "serviceConfigId": "XsEqD6ts", "titleId": "5e76nSrd", "xboxUserId": "UBmIMSBf"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'TKJUSlhD' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'jvvtLc9X' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'KiYRGgVV' --login_with_auth "Bearer foo"
platform-anonymize-integration 'Qeo6I5sE' --login_with_auth "Bearer foo"
platform-anonymize-order 'cA9MfN8A' --login_with_auth "Bearer foo"
platform-anonymize-payment 'D8tjKE43' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'K8Eb7wc5' --login_with_auth "Bearer foo"
platform-anonymize-wallet '5YsQgY0Q' --login_with_auth "Bearer foo"
platform-get-user-dlc 'xqgVicCQ' 'STEAM' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'xmWUCwQy' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'F8AUGNGz' --body '[{"endDate": "1975-08-22T00:00:00Z", "grantedCode": "2xd7SegA", "itemId": "t0x18diz", "itemNamespace": "4EhgN43V", "language": "tZ-462", "quantity": 91, "region": "r67ZqAh6", "source": "PROMOTION", "startDate": "1985-09-18T00:00:00Z", "storeId": "ODvvUO4J"}, {"endDate": "1977-07-08T00:00:00Z", "grantedCode": "eOEdfKE7", "itemId": "HixoAHru", "itemNamespace": "OZBhY3N3", "language": "Ssnz_qtBs", "quantity": 1, "region": "pMxj5CJx", "source": "REWARD", "startDate": "1980-10-23T00:00:00Z", "storeId": "Fvt9WcY4"}, {"endDate": "1999-12-06T00:00:00Z", "grantedCode": "yGYxvMGj", "itemId": "Z90dKb9E", "itemNamespace": "24hFlZon", "language": "RzUq_jEpj", "quantity": 20, "region": "3IUKK2oX", "source": "REWARD", "startDate": "1983-08-30T00:00:00Z", "storeId": "zR1RlF9Q"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'QNX9GZPK' 'k9NgyAle' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'x0VxchQp' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'HQMLtUJZ' '5ktkl01t' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '82Zr1vKo' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'HpKqTk0S' 'SQoepVDP' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'DLpsMeho' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'PC9i1JXP' '["TePdwXDL", "vyJO6ml5", "v83ZmY3I"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'acVdURAM' '767KIK0q' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'TbnHVbB0' 'QCHb2i6g' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'uJlrYltL' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'IXVfARgd' 'xQ9dmmYW' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'n839jDbU' 'QZ0CvyNk' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'iNTV3TXl' 'WgHEGzjk' --login_with_auth "Bearer foo"
platform-update-user-entitlement '1ooZTtgu' 'j3MP7EuH' --body '{"endDate": "1976-12-23T00:00:00Z", "nullFieldList": ["TZpHZgQf", "S32EXYlu", "2EXVhEZ1"], "startDate": "1977-07-17T00:00:00Z", "status": "INACTIVE", "useCount": 60}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'L4cUlwhq' 'SKI2aN9V' --body '{"options": ["Sg4Qe8yz", "xWXYs4Qe", "i5hbKPs5"], "requestId": "6IVO8wkA", "useCount": 19}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'NVDVXzF9' 'x8O9b9da' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'UoOZehf2' 'p6W8c9FF' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '2LmY0j2f' 'EyMpgx9T' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'RfIOpO5V' 'cs6HqgaL' --login_with_auth "Bearer foo"
platform-fulfill-item '4KPbOlJ7' --body '{"duration": 52, "endDate": "1998-02-14T00:00:00Z", "itemId": "miGyDRwW", "itemSku": "LIJ6AXbt", "language": "HvgGTeZI", "order": {"currency": {"currencyCode": "e0zkkX0e", "currencySymbol": "a50toLX2", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "iX0EP6wW"}, "ext": {"IWVaOjkX": {}, "B6py2P0P": {}, "JsjhN2Pc": {}}, "free": true}, "orderNo": "LAcKYnMK", "origin": "GooglePlay", "quantity": 96, "region": "EKUuM1jx", "source": "PROMOTION", "startDate": "1972-07-20T00:00:00Z", "storeId": "384pPBYm"}' --login_with_auth "Bearer foo"
platform-redeem-code '6gqjzDeA' --body '{"code": "4A21k9zN", "language": "CfKz-hrDt_715", "region": "cchroAiy"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'nFxIZZib' --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "2U0okjMf", "namespace": "GNKQumRB"}, "item": {"itemId": "Ib8phQTY", "itemSku": "QtgpqvDz", "itemType": "MQjUVN6K"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "XrWh2hr1", "namespace": "1Mi6CNJY"}, "item": {"itemId": "45TI8m2f", "itemSku": "4vEpVePb", "itemType": "S77DQahf"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "9txHGrd8", "namespace": "4TYGwD7V"}, "item": {"itemId": "0gbCGGIM", "itemSku": "mYWeZr1H", "itemType": "nNiQBCoB"}, "quantity": 62, "type": "ITEM"}], "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'pNeWTfkY' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'Eafo7MNu' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'SGYRketb' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'FMrUdyjE' --body '{"itemIdentityType": "ITEM_SKU", "language": "Fhlv_889", "productId": "vie2VdfD", "region": "E3iaisLH", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'cLOmB3Kl' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'HO4xyKUv' --body '{"currencyCode": "fBENCRvH", "currencyNamespace": "QFThimJm", "discountedPrice": 65, "ext": {"G2127fRw": {}, "yUD1WRpI": {}, "uLZAjsWr": {}}, "itemId": "RapWyF4P", "language": "lqcojeKR", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 68, "quantity": 30, "region": "zPLiVyiS", "returnUrl": "H8ufqikU", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'qlqugQPr' '7XSge68y' --login_with_auth "Bearer foo"
platform-get-user-order '9RhEHoro' 'uQ9fxfPj' --login_with_auth "Bearer foo"
platform-update-user-order-status 'tmzpquuc' 'ilzyYgzr' --body '{"status": "REFUNDING", "statusReason": "R0W63icY"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'o7fCgvWv' 'NsXAjyJ4' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'D0Umkrde' 'jzbrypiT' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'OUUAhSnl' 'WtezLJZa' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'HQn3c1La' 'Th1iER9m' --body '{"additionalData": {"cardSummary": "vIMJOK0N"}, "authorisedTime": "1975-12-15T00:00:00Z", "chargebackReversedTime": "1991-07-25T00:00:00Z", "chargebackTime": "1980-07-22T00:00:00Z", "chargedTime": "1990-10-15T00:00:00Z", "createdTime": "1995-08-01T00:00:00Z", "currency": {"currencyCode": "Ho8cumA7", "currencySymbol": "YQLfG1JB", "currencyType": "REAL", "decimals": 86, "namespace": "3VQvCVCK"}, "customParameters": {"FaouTUHP": {}, "krfbUHre": {}, "I2juud4d": {}}, "extOrderNo": "G8XvM4NZ", "extTxId": "Q48vRSQz", "extUserId": "N20DLGVr", "issuedAt": "1999-02-06T00:00:00Z", "metadata": {"8upAuVOw": "kmKcxBc8", "hlGwfsNs": "cZgTVw7y", "98xNyIyp": "BBMDYQ4f"}, "namespace": "KtVhritT", "nonceStr": "2imTRO8h", "paymentMethod": "oTrPPqM4", "paymentMethodFee": 92, "paymentOrderNo": "Xod1WLfs", "paymentProvider": "ALIPAY", "paymentProviderFee": 19, "paymentStationUrl": "i9Ay5iyj", "price": 52, "refundedTime": "1977-07-04T00:00:00Z", "salesTax": 61, "sandbox": true, "sku": "dzdjmI2k", "status": "AUTHORISED", "statusReason": "kUsOKiDZ", "subscriptionId": "p3hRvtVq", "subtotalPrice": 67, "targetNamespace": "8dnlEeRr", "targetUserId": "HqnkXSwB", "tax": 34, "totalPrice": 77, "totalTax": 48, "txEndTime": "1978-09-05T00:00:00Z", "type": "GpKWdMUS", "userId": "kUvLOdXW", "vat": 80}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '65UjZvl1' 'zbAXBIZH' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'dljU6pNF' --body '{"currencyCode": "ediGUTt0", "currencyNamespace": "LWqDBXvV", "customParameters": {"QqePnWgC": {}, "kRNt3nyR": {}, "uEnco0yM": {}}, "description": "9X0E4L1o", "extOrderNo": "sfholUaj", "extUserId": "uTWku3Ut", "itemType": "OPTIONBOX", "language": "NC", "metadata": {"CpBDrNuA": "OQ7bwqku", "eAKJgp10": "SFAVhRas", "0sDxGr2j": "Brmrf9QV"}, "notifyUrl": "e1f2ZbEC", "omitNotification": false, "platform": "dkleenx1", "price": 20, "recurringPaymentOrderNo": "MgCTqfx4", "region": "HY78cPgn", "returnUrl": "RQsOY4Es", "sandbox": false, "sku": "I1poRG8A", "subscriptionId": "0rKhhYrZ", "title": "11FEpaWs"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'QuNgCK8r' 'T6BGwXPN' --body '{"description": "JcwzcAcE"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption '2lMkdpNI' --body '{"code": "ENj56JXL", "orderNo": "nkIxMY4I"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '6fKOQvjL' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'POCEH8CT' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'EEsZXxJw' --body '{"grantDays": 36, "itemId": "gbdINjyU", "language": "2ZLg1b0n", "reason": "S0ILvnEx", "region": "0W3PJi5l", "source": "6daEUepo"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '52S6H9Wc' 'ODDMRgHa' --login_with_auth "Bearer foo"
platform-get-user-subscription 'hAtjdaDo' 'KG1crChE' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'cY3D8dH5' 'ElMHs4rO' --login_with_auth "Bearer foo"
platform-cancel-subscription 'uo9jad0l' '0ap23hgy' --body '{"immediate": true, "reason": "3hXscKNR"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'HvfQLwDi' 'Os63LLYB' --body '{"grantDays": 17, "reason": "AJt5Pe5d"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'xZIxFNws' 'kMvaZXST' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '16T7Onq5' 'LrsqWQpQ' --body '{"additionalData": {"cardSummary": "UWL2spgK"}, "authorisedTime": "1993-12-20T00:00:00Z", "chargebackReversedTime": "1982-03-27T00:00:00Z", "chargebackTime": "1994-09-29T00:00:00Z", "chargedTime": "1972-06-21T00:00:00Z", "createdTime": "1997-03-11T00:00:00Z", "currency": {"currencyCode": "xxLRxDDD", "currencySymbol": "9cErP9DT", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "ygVYxomC"}, "customParameters": {"Ujjv1UgW": {}, "Hjpq2ewi": {}, "4FEiR52a": {}}, "extOrderNo": "CiBXZ6bx", "extTxId": "2FyHwJWY", "extUserId": "N3GFOPME", "issuedAt": "1977-11-11T00:00:00Z", "metadata": {"7MA2sqAa": "9ma49DNW", "BL5oLGl0": "12kezabc", "zyWG8oVd": "m331vnpo"}, "namespace": "a3qwbYxu", "nonceStr": "MDWgSVdg", "paymentMethod": "BV3dPAg2", "paymentMethodFee": 59, "paymentOrderNo": "3SSGwmG3", "paymentProvider": "WALLET", "paymentProviderFee": 88, "paymentStationUrl": "QfIxG1Ia", "price": 34, "refundedTime": "1996-03-28T00:00:00Z", "salesTax": 62, "sandbox": false, "sku": "HiczxmKS", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "DJVkoYTg", "subscriptionId": "ACoSfrN3", "subtotalPrice": 59, "targetNamespace": "fG6V3aHL", "targetUserId": "GasJLrQR", "tax": 9, "totalPrice": 91, "totalTax": 18, "txEndTime": "1971-01-14T00:00:00Z", "type": "9hfsowdK", "userId": "IJtgh2dO", "vat": 7}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '0k1sNkbq' 'F1T7YPLt' --body '{"count": 94, "orderNo": "nZAyMOeH"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'DusDk3xA' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'wVqLyadp' 'G2UQwLsY' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'tk29qUGp' 'yd4wBUTH' --body '{"amount": 70, "expireAt": "1981-02-17T00:00:00Z", "origin": "Other", "reason": "34w2rron", "source": "PURCHASE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'WKGbn1Ox' 'vASunr11' --body '{"amount": 95, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'DKOiX1py' --body '{"displayOrder": 23, "localizations": {"G9ZBwg5I": {"description": "nnZTKK1P", "localExt": {"CMp6WdZl": {}, "fRxE7WGe": {}, "b6EFoKCG": {}}, "longDescription": "J6PPDrKA", "title": "UI05SFeU"}, "ZaozhXlL": {"description": "nt46OjF6", "localExt": {"5yK08wnD": {}, "yGaMbqbj": {}, "2sBOZBfW": {}}, "longDescription": "gxzXnW4k", "title": "2sPZn2L0"}, "WGLuA0bH": {"description": "kRWnOgfb", "localExt": {"BLDuBUmf": {}, "0IMxVX75": {}, "ibwZP0El": {}}, "longDescription": "1uLlsZ1w", "title": "AiJaZ2Q4"}}, "name": "DPjvrHhA"}' --login_with_auth "Bearer foo"
platform-get-view 'hRLrLvXY' --login_with_auth "Bearer foo"
platform-update-view 'BGJ6eGxO' '7FppocT2' --body '{"displayOrder": 45, "localizations": {"7xUhNLkG": {"description": "qP4EQdwW", "localExt": {"BpgQjQoD": {}, "aGX074Rv": {}, "eVP7BWUM": {}}, "longDescription": "rrutpRRP", "title": "HEoq3KjT"}, "0f6eAb76": {"description": "6J4H4c72", "localExt": {"rlvwPPsf": {}, "8xVb8j2y": {}, "LK6Jx6Pq": {}}, "longDescription": "cMjAKtDv", "title": "XrrSRFOt"}, "Wu3y1KRT": {"description": "hMMkuwQi", "localExt": {"wmrKA3AL": {}, "YamWvX7d": {}, "TBA7Vd9b": {}}, "longDescription": "YN28sHn2", "title": "uf2apcen"}}, "name": "qol5t6If"}' --login_with_auth "Bearer foo"
platform-delete-view 'lOJCptX6' 'PzHBp6Ur' --login_with_auth "Bearer foo"
platform-sync-orders '4JHofQb8' 'fkzyXxqi' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["3i2mUgWi", "BwWXcfiY", "JQDXL8RS"], "apiKey": "IgpVVp8L", "authoriseAsCapture": false, "blockedPaymentMethods": ["STof8JEN", "BbSvY37d", "JemedEkP"], "clientKey": "zf8obLjO", "dropInSettings": "YdObW771", "liveEndpointUrlPrefix": "w3whICIT", "merchantAccount": "KWWrKRHH", "notificationHmacKey": "x9RVEmrh", "notificationPassword": "dHs2KQzv", "notificationUsername": "xvi67oHk", "returnUrl": "FYlNhqql", "settings": "THg1jrJe"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "oz7Qs5Su", "privateKey": "rERt0e6l", "publicKey": "iiO8QmV3", "returnUrl": "ILv8D9ND"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "PwbOjWtz", "secretKey": "OlHvLvF7"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "pQL7xRki", "clientSecret": "sKDVKs6x", "returnUrl": "mmqsiOOl", "webHookId": "BTI3806p"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["0ukUW7dX", "zoJngmgn", "hxypCxG9"], "publishableKey": "aZ5swH4E", "secretKey": "YcaEYlr8", "webhookSecret": "lPEiazai"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "vIuXXYu7", "key": "wnS0wEhz", "mchid": "yjXrPaCH", "returnUrl": "lvZupNuR"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "WfRbh4v4", "flowCompletionUrl": "pawj4o06", "merchantId": 94, "projectId": 48, "projectSecretKey": "xQSeQzPF"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'ydtFGvHw' --login_with_auth "Bearer foo"
platform-update-adyen-config 'tBksdZPD' --body '{"allowedPaymentMethods": ["u115ckA4", "HylRV1w8", "0zEpVjuD"], "apiKey": "zmEAEjbz", "authoriseAsCapture": false, "blockedPaymentMethods": ["KR8chH0j", "5fiPvJwb", "q8MEBiaO"], "clientKey": "M9mfEqpN", "dropInSettings": "BY81razy", "liveEndpointUrlPrefix": "mxSxZQ8O", "merchantAccount": "D0BVF1j2", "notificationHmacKey": "jkX2WxGN", "notificationPassword": "9b9cKUl2", "notificationUsername": "ZSCvnWUk", "returnUrl": "yvNz2a21", "settings": "2DuhMEAP"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'Cz0lBTw1' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'yHMg42WF' --body '{"appId": "y7VsRczs", "privateKey": "CR53IuXN", "publicKey": "w0UrsRCj", "returnUrl": "mu06hvk0"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'hUFilgSF' --login_with_auth "Bearer foo"
platform-update-checkout-config 'XZVZ0vjY' --body '{"publicKey": "Lc4Er311", "secretKey": "1kL2ABY7"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'tRcPYNXD' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '7Tk9hLpP' --body '{"clientID": "OsbjbCnV", "clientSecret": "aFDuSUFi", "returnUrl": "73BXOxfW", "webHookId": "ZiU9clLu"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'yljTAQQi' --login_with_auth "Bearer foo"
platform-update-stripe-config 'dKjC0wyT' --body '{"allowedPaymentMethodTypes": ["Bu51GE2R", "zJsAVAJ1", "C91rSE8n"], "publishableKey": "wnMc9foV", "secretKey": "xRSnAs6a", "webhookSecret": "lLOJh4eo"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'GS08vLdC' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'L0bBt6ln' --body '{"appId": "M1m62in8", "key": "NpVsICZs", "mchid": "WtzRRhVZ", "returnUrl": "K1qtonSY"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'EsV2jt16' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '1Kv6q75X' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'DEbMjZxn' --body '{"apiKey": "vXBcEeEH", "flowCompletionUrl": "FrFwA0wW", "merchantId": 62, "projectId": 57, "projectSecretKey": "PDszp0xu"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'LnAWMOnJ' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'ZXU371Ww' --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "Vlzgcczm", "region": "N61qcmeb", "sandboxTaxJarApiToken": "5PbnV3Tw", "specials": ["ALIPAY", "WXPAY", "XSOLLA"], "taxJarApiToken": "XYYYIbAw", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'RUDGYJg9' --body '{"aggregate": "ADYEN", "namespace": "oPWcc4Qs", "region": "BgrI21EP", "sandboxTaxJarApiToken": "t6fWKWko", "specials": ["PAYPAL", "ADYEN", "CHECKOUT"], "taxJarApiToken": "k191XLgQ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'cbB25fTU' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "k9BJaGPr", "taxJarApiToken": "rAoCCItl", "taxJarEnabled": false, "taxJarProductCodesMapping": {"e1vOB7zC": "ZnjvJ8wl", "QeBaiemj": "a9PgQ7Dd", "22gZQgqL": "Qu4YHvAV"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'dLB3An3f' 'kfxdP3tS' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'enBTBX6S' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'uyWfz923' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'PK0FtRsY' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'zd7tGf5S' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'ZBXhHqvR' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'xgcHohI8' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["64PnApcG", "NV9h23lZ", "c3hjocWI"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'T3t4UTJy' 'v5fcQLo2' --login_with_auth "Bearer foo"
platform-public-get-app 'lbW4mUlT' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'uWVVJ4aY' --login_with_auth "Bearer foo"
platform-public-get-item 'k7GRxpHN' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "HletDz23", "paymentProvider": "XSOLLA", "returnUrl": "mxd2hLMf", "ui": "31PIwOG6", "zipCode": "TJSlZcMo"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'DqkrLQAG' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'R1jNY8VM' --login_with_auth "Bearer foo"
platform-pay 'wPNkw7VU' --body '{"token": "YNT9JPaM"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'TIr5qD9G' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'Ugo1uMRX' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'EPzHYc2Z' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '8k1ccWmh' 'T1gaki4h' 'ADYEN' 'JnHkpIHa' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'mi8pZxVM' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'OdMEXypt' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'wVe3wbna' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'bxrFwg5M' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'AK0qfqrq' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'oEiDs18U' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'FqFPmwYu' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'VwqEnsoC' --body '{"epicGamesJwtToken": "uHTdzaKv"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'XkmDFODF' --body '{"serviceLabel": 64}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'q5uVxYdT' --body '{"serviceLabels": [50, 67, 95]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'i8HuLzKK' --body '{"appId": "VghQkCJd", "steamId": "6bmpQI6j"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'NkfsA57w' --body '{"xstsToken": "iajuF5WL"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '7cq4WtLS' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'KoZw32Of' 'B11D1gxX' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '03I2cSur' 'DEMO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id '9Dntbuqo' '3Uwuas4Y' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'Oi3uuUlJ' 'laAw0zhx' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '2YM6GJbR' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'OhL4bEcV' 'YaUVAkPD' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'Wf7Midl4' 'bex6kNZw' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '2dwIwoRo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'yz34zKoo' 'chYVdiLL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'eTNF4zK9' 'vCC8XoA4' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'geUAEsw9' 'Yod313OW' --body '{"options": ["b2mI3Oj8", "UuzvlRYb", "b5xKkQYi"], "requestId": "Qrlil8fW", "useCount": 94}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'joK3B5Ml' --body '{"code": "22dzqswv", "language": "Lxj", "region": "QzhLWTz5"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'rLVyOadw' --body '{"excludeOldTransactions": true, "language": "MXUe", "productId": "XbBlyU3O", "receiptData": "ePpsVRWb", "region": "wgHDElSZ", "transactionId": "3u4Dt5Mj"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'Ou7GQfuc' --body '{"epicGamesJwtToken": "KuzjabpY"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'pn5ZPs1W' --body '{"autoAck": true, "language": "SWr_EffS_960", "orderId": "K0Pz9k5P", "packageName": "BWsmPMu9", "productId": "2dzwEqgY", "purchaseTime": 82, "purchaseToken": "ssuHuPn4", "region": "Qz7qNHAO"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'qLm81yB2' --body '{"currencyCode": "lniBSD6j", "price": 0.6674963129886019, "productId": "zzXAAJ1F", "serviceLabel": 61}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'fdu74WHd' --body '{"currencyCode": "JpppcWLh", "price": 0.7600177889780247, "productId": "O0ifrJOr", "serviceLabels": [16, 57, 91]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'Tumd8j0n' --body '{"appId": "vVtZ7ewN", "language": "VWr_jVlV", "region": "vKhPZHnT", "stadiaPlayerId": "su1hOX7l"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'QItIDLoC' --body '{"appId": "3xDNwZhV", "currencyCode": "KVz9o53E", "language": "mIql-xBNA_Me", "price": 0.3254591846396937, "productId": "L3HT0syQ", "region": "n4wvOyBd", "steamId": "cRoDqeTw"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '19KY9eTK' --body '{"gameId": "Rana32BA", "language": "eI_yMUK-dD", "region": "51TG5rh8"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'a7O2KLMZ' --body '{"currencyCode": "vGpLRV8d", "price": 0.5114215246649645, "productId": "03vBc2lq", "xstsToken": "aFWIYgpW"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'g6a27mR5' --login_with_auth "Bearer foo"
platform-public-create-user-order 'jwfWXgHI' --body '{"currencyCode": "78ionSKv", "discountedPrice": 42, "ext": {"w5KeNlQu": {}, "pfGzee3L": {}, "A5Ofqd8n": {}}, "itemId": "mshryboG", "language": "jN", "price": 7, "quantity": 23, "region": "vrdksd43", "returnUrl": "tMdaYRPM"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'jt6GrkSh' '0EcSO21S' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'DUc80xk0' 'zR6wOMlk' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'O22lvzbx' 'ribPPuJQ' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'ik4vHLQ8' 'Ju0gtmrt' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'G0TgOYmg' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'YqEWemQq' 'card' 'Nhi40KfA' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'wQcVEbwF' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'VQ6AJjoH' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'k0shYDZ6' --body '{"currencyCode": "A12dJaka", "itemId": "5vKZsTii", "language": "DW", "region": "0ESn5l1A", "returnUrl": "Q6AOgPT9", "source": "hiRt6flk"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'wLP1MrX2' 'q98LmG7J' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'BvtV52zE' 'UZhbrE8t' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'R1zVCZh6' 'hpDpZzU8' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'qTiXwAsZ' 'AJ5OMpS0' --body '{"immediate": true, "reason": "6F2Zpm32"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'Hf5PRRmD' 'Q6uH07a1' --login_with_auth "Bearer foo"
platform-public-list-views 'IIBAVKjb' --login_with_auth "Bearer foo"
platform-public-get-wallet 'OL36oNgb' 'g9dheJPf' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'WJ2TnTHB' 'mlWr7qB7' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'XgbDF3n9' --body '{"itemIds": ["mcdrDVMD", "JpTFhkXm", "laqukMyS"]}' --login_with_auth "Bearer foo"
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
echo "1..377"

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
    --body '{"context": {"item": {"appId": "ILkBZ28D", "appType": "DLC", "baseAppId": "F0gCme0j", "boothName": "8fAD2BAQ", "boundItemIds": ["Q4yzpGr5", "V0mFaXK6", "uh2JvhCZ"], "categoryPath": "2adNVLCm", "clazz": "OXk5jq3e", "createdAt": "1986-06-06T00:00:00Z", "description": "bPeRJnUe", "displayOrder": 33, "entitlementType": "DURABLE", "ext": {"iQS21lKo": {}, "S7HWtE9I": {}, "Q6jrlFTw": {}}, "features": ["Z3Wt2Xq4", "r5QHsZvr", "iIxfG8rX"], "fresh": false, "images": [{"as": "HcymJCHT", "caption": "vErAA1gv", "height": 9, "imageUrl": "I9GhqbSe", "smallImageUrl": "6p0VNthU", "width": 52}, {"as": "FFlZC0cn", "caption": "Kowwyju8", "height": 79, "imageUrl": "gtbWta5F", "smallImageUrl": "0Ns1o9Fv", "width": 10}, {"as": "WmJGkTmm", "caption": "cIQdv2s7", "height": 35, "imageUrl": "6skCOsNv", "smallImageUrl": "ZUXjNcV6", "width": 67}], "itemId": "xI2eHWL2", "itemIds": ["NmtIBzm0", "zXgVnadu", "xfH9VozX"], "itemQty": {"Wj9kSONr": 53, "PVso7mqm": 87, "UqukkJeF": 53}, "itemType": "EXTENSION", "language": "GqhEDhAC", "listable": true, "localExt": {"aYCzmTvf": {}, "Pt1k8LnC": {}, "bnWsjqVj": {}}, "longDescription": "wgYyVKdw", "lootBoxConfig": {"rewardCount": 98, "rewards": [{"lootBoxItems": [{"count": 70, "itemId": "WoFsjBOc", "itemSku": "Ku76jhui", "itemType": "mPa612MT"}, {"count": 8, "itemId": "mN4ZuvAK", "itemSku": "Ei3Dvflu", "itemType": "MgU9TmKV"}, {"count": 55, "itemId": "LsG3ZtN4", "itemSku": "4lTnietc", "itemType": "970v7L6j"}], "name": "MSdaQKe2", "odds": 0.3675561876012007, "type": "REWARD_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 41, "itemId": "lRZst7cE", "itemSku": "rt2sKOI7", "itemType": "FMHPEiOV"}, {"count": 77, "itemId": "0ZYFFe0W", "itemSku": "h6rET97T", "itemType": "sv8ZFM75"}, {"count": 90, "itemId": "dXqwYwp4", "itemSku": "yfyB5Zzq", "itemType": "lLKOZnLW"}], "name": "efew6eEj", "odds": 0.13419472207351635, "type": "REWARD_GROUP", "weight": 20}, {"lootBoxItems": [{"count": 34, "itemId": "LNwz085j", "itemSku": "KUqxjH42", "itemType": "QgIoHnWX"}, {"count": 41, "itemId": "AvAnQoT3", "itemSku": "vNsxeXmq", "itemType": "bjFiQZ6K"}, {"count": 37, "itemId": "nHGjAmYM", "itemSku": "YhJfWNHb", "itemType": "SUIqgAxR"}], "name": "2WjesnX4", "odds": 0.8038927117706611, "type": "PROBABILITY_GROUP", "weight": 95}]}, "maxCount": 27, "maxCountPerUser": 22, "name": "01Ltspoj", "namespace": "MrBV3LDY", "optionBoxConfig": {"boxItems": [{"count": 8, "itemId": "oZSlTtVc", "itemSku": "QNMj29g9", "itemType": "9XUKxJSc"}, {"count": 62, "itemId": "u8YcGFIO", "itemSku": "W4HDmkrs", "itemType": "zoVJfB2O"}, {"count": 28, "itemId": "sWWv9imi", "itemSku": "lWNCAV93", "itemType": "1u6KufpK"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 67, "comparison": "excludes", "name": "Mc9GDxg7", "predicateType": "EntitlementPredicate", "value": "XYYrr5AH", "values": ["uJCkoEY2", "0imdNf9q", "JZNpBpqN"]}, {"anyOf": 82, "comparison": "excludes", "name": "e0q3lpzG", "predicateType": "SeasonPassPredicate", "value": "litE5WZt", "values": ["IrMGCT1z", "pU8VLXPP", "7cyc0DL2"]}, {"anyOf": 1, "comparison": "is", "name": "hs1JPWtF", "predicateType": "SeasonPassPredicate", "value": "xh7BWeBb", "values": ["KUwK0xNI", "r9HoK9gw", "QzpNJaHV"]}]}, {"operator": "and", "predicates": [{"anyOf": 57, "comparison": "isLessThan", "name": "W2Q8UxqL", "predicateType": "SeasonTierPredicate", "value": "Vl2HdJaP", "values": ["oNoYdiLb", "HSrYqal8", "KKGnxtLp"]}, {"anyOf": 25, "comparison": "is", "name": "LsI7nqTR", "predicateType": "SeasonTierPredicate", "value": "Ae8fYUAQ", "values": ["WBwATXsr", "B9pgnbBj", "IPPfblEy"]}, {"anyOf": 88, "comparison": "excludes", "name": "MepTeWkd", "predicateType": "SeasonTierPredicate", "value": "XqDtdM88", "values": ["n5Mpbsu3", "Hi5wswRH", "2XguwcCC"]}]}, {"operator": "or", "predicates": [{"anyOf": 18, "comparison": "isGreaterThanOrEqual", "name": "oOR0V8zG", "predicateType": "SeasonTierPredicate", "value": "Jo0lj2Ew", "values": ["HFeVli45", "UsScjtBO", "chlDf2Om"]}, {"anyOf": 70, "comparison": "excludes", "name": "pzSxVTOx", "predicateType": "SeasonPassPredicate", "value": "iv4jidQV", "values": ["acQKzbkA", "bJqIsNG3", "sbR4nwDs"]}, {"anyOf": 13, "comparison": "isNot", "name": "WLnJVeSL", "predicateType": "SeasonPassPredicate", "value": "pgsGWAlY", "values": ["q7rpyUdv", "QBtPGjv8", "3IAtPYUJ"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 5, "fixedTrialCycles": 88, "graceDays": 48}, "region": "GXBgzrl1", "regionData": [{"currencyCode": "70igV9Ry", "currencyNamespace": "5iBrdOBi", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1999-09-07T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1981-08-24T00:00:00Z", "discountedPrice": 100, "expireAt": "1981-12-22T00:00:00Z", "price": 89, "purchaseAt": "1972-06-24T00:00:00Z", "trialPrice": 18}, {"currencyCode": "gByQuDcK", "currencyNamespace": "m4pciVb2", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1995-04-03T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1999-01-22T00:00:00Z", "discountedPrice": 33, "expireAt": "1971-12-24T00:00:00Z", "price": 7, "purchaseAt": "1998-03-14T00:00:00Z", "trialPrice": 49}, {"currencyCode": "x3nTM7jd", "currencyNamespace": "czQVq9vI", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1988-09-14T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1998-08-30T00:00:00Z", "discountedPrice": 41, "expireAt": "1986-05-21T00:00:00Z", "price": 45, "purchaseAt": "1992-09-29T00:00:00Z", "trialPrice": 1}], "seasonType": "TIER", "sku": "EJlV344p", "stackable": true, "status": "ACTIVE", "tags": ["NYUl8B6P", "jPdDFn9b", "XMdKMEFu"], "targetCurrencyCode": "pjEVrVbh", "targetItemId": "nwORqgGn", "targetNamespace": "5OVOncEX", "thumbnailUrl": "euslmibm", "title": "6MnK4yTM", "updatedAt": "1986-07-26T00:00:00Z", "useCount": 21}, "namespace": "mQE9lYi9", "order": {"currency": {"currencyCode": "CJWO57EM", "currencySymbol": "SkrgehTb", "currencyType": "VIRTUAL", "decimals": 35, "namespace": "aaBdZaBq"}, "ext": {"6u9TIdKi": {}, "sKEMSBq2": {}, "p6X5IADU": {}}, "free": false}, "source": "DLC"}, "script": "6RNN7IOp", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'WeMBr7ZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'r5ATFDya' \
    --body '{"grantDays": "5Qs1N5xh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'STr6ASwc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'J4agXYi4' \
    --body '{"grantDays": "l5nfwyUW"}' \
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
    --body '{"clazz": "HnlZ5k5A", "dryRun": true, "fulfillmentUrl": "AZG772U5", "itemType": "EXTENSION", "purchaseConditionUrl": "gUGR5gXu"}' \
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
    'UHapHwqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'fa7YLVXw' \
    --body '{"clazz": "e8hM1yJb", "dryRun": true, "fulfillmentUrl": "Kc8MBIwX", "purchaseConditionUrl": "f0UpAkON"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'PtP9nj9j' \
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
    --body '{"description": "o6uz1vDE", "items": [{"extraSubscriptionDays": 90, "itemId": "KW1Z4VdS", "itemName": "mSIRUSSn", "quantity": 78}, {"extraSubscriptionDays": 80, "itemId": "ZpuBPHIy", "itemName": "Qdau297Z", "quantity": 16}, {"extraSubscriptionDays": 51, "itemId": "1XZ28Nup", "itemName": "7Pd0Kra8", "quantity": 72}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 96, "maxRedeemCountPerCodePerUser": 93, "maxSaleCount": 4, "name": "0QGM7HLB", "redeemEnd": "1996-03-23T00:00:00Z", "redeemStart": "1977-05-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["cf87klsy", "fyXLhVQB", "IrgbmKhl"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'fRLmXloG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'REim66c5' \
    --body '{"description": "CDiEeiPV", "items": [{"extraSubscriptionDays": 93, "itemId": "8sVD67hf", "itemName": "MnmhcY1C", "quantity": 17}, {"extraSubscriptionDays": 70, "itemId": "Iaj6Mvtu", "itemName": "QGlQ9thI", "quantity": 33}, {"extraSubscriptionDays": 88, "itemId": "jiFp2SAh", "itemName": "P9aJRTrc", "quantity": 46}], "maxRedeemCountPerCampaignPerUser": 5, "maxRedeemCountPerCode": 26, "maxRedeemCountPerCodePerUser": 27, "maxSaleCount": 2, "name": "KOgaI2cY", "redeemEnd": "1990-06-17T00:00:00Z", "redeemStart": "1978-09-26T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4gyp9p4n", "oMiqHHeJ", "14IVbCf5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'WlslsBml' \
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
    'KTEhmVlP' \
    --body '{"categoryPath": "Nk1Y6txK", "localizationDisplayNames": {"3ZNg7B11": "nAoeuaoz", "wdqRTaT9": "Fr7XpKUb", "Aak89a90": "T5cWJMNR"}}' \
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
    'yDp5qYJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'svQWrL2n' \
    'Xqr426dU' \
    --body '{"localizationDisplayNames": {"ywbQHiY7": "bKedowPH", "An6iYQc2": "GN8qVAcn", "7kvuPIA8": "byCHde6s"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'CsTMoHp5' \
    'qdBBgJth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '3iae2YZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '9slhZqrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'yg8L2ypJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'dxku8KGG' \
    --body '{"quantity": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'qlFPc5sj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'TfdbmnYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'ijBTIAk6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'v3WnD9cN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'S4bPpePe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'g1s0xJCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'H6pcKJK4' \
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
    --body '{"currencyCode": "z1aOYWNt", "currencySymbol": "wf3CG26A", "currencyType": "REAL", "decimals": 51, "localizationDescriptions": {"uL0sctV9": "c7rqwFnr", "aeExincU": "dtvMjgmp", "uMu4S0N2": "GjpHDd3B"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'JhTxRBFq' \
    --body '{"localizationDescriptions": {"mjr9doUt": "3w4J2kbI", "ZDBTDlPq": "0FzC8XD1", "U08oUoL8": "pJG9cWU4"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'zS3AKUrY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Osr2immd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'JmIVyx6b' \
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
    --body '{"data": [{"id": "MWAwHxz8", "rewards": [{"currency": {"currencyCode": "IsF6Do0L", "namespace": "ndFtP3IF"}, "item": {"itemId": "mmmXgpnd", "itemSku": "vkCeqTUx", "itemType": "vaf8ILGO"}, "quantity": 100, "type": "CURRENCY"}, {"currency": {"currencyCode": "bPZAiwQv", "namespace": "VcqROkkS"}, "item": {"itemId": "5inYH1Pw", "itemSku": "F6arvKrO", "itemType": "YRLxC2L1"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "CzVAiuKU", "namespace": "kTWRoGGp"}, "item": {"itemId": "4wphdfGl", "itemSku": "rsSf1spF", "itemType": "91Y5l4gt"}, "quantity": 76, "type": "CURRENCY"}]}, {"id": "Er66rUoG", "rewards": [{"currency": {"currencyCode": "Qzbz0nlT", "namespace": "2kQbEs7T"}, "item": {"itemId": "NPu6bFuj", "itemSku": "id8UBZpU", "itemType": "9Wu4IS90"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "bKO01OrG", "namespace": "61LEchSS"}, "item": {"itemId": "TN53zw3m", "itemSku": "FDQQOsYF", "itemType": "lUOL9l35"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "17cOK94n", "namespace": "kSdBqGFl"}, "item": {"itemId": "0EEXCWdl", "itemSku": "FgLUqcLW", "itemType": "pZogd4jy"}, "quantity": 100, "type": "CURRENCY"}]}, {"id": "u4309Ckh", "rewards": [{"currency": {"currencyCode": "3hAuH3j5", "namespace": "n3y5lISG"}, "item": {"itemId": "qrzy6nOZ", "itemSku": "M15i1Bvx", "itemType": "xtg7Z8Ln"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "YsyO8DuB", "namespace": "HnQMuVbe"}, "item": {"itemId": "JMmfZPDL", "itemSku": "MyANt39Z", "itemType": "L9rpmnZE"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "hdqQFpJm", "namespace": "DcAUZJRl"}, "item": {"itemId": "ZBlenRE7", "itemSku": "PkAMcXrn", "itemType": "nr5cTlMC"}, "quantity": 69, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"TN7Gl5vl": "9ZgH8HMa", "hAr4DbAM": "pOiYL1Ta", "cNXL3qkC": "bdCGsIsz"}}, {"platform": "XBOX", "platformDlcIdMap": {"YpcGt7EV": "xG0DzeQo", "uFHOJLdD": "iIUw2QBX", "vGq87QTi": "r1I6NaAD"}}, {"platform": "PSN", "platformDlcIdMap": {"2Q8s2VtR": "JSS6umIY", "HIhO4xIz": "nr8PbseU", "YlZsQ6h7": "XX1jVnBG"}}]}' \
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
    'bFQuAdis' \
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
    --body '{"bundleId": "VAGO1DYL", "password": "bzBVETNs"}' \
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
    --body '{"sandboxId": "W5Ir2Sap"}' \
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
    --body '{"applicationName": "jmaPMv4d", "serviceAccountId": "HQwIOTaM"}' \
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
    --body '{"data": [{"itemIdentity": "B66PPP2T", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"ZkWxIL7s": "KuG8xQJN", "dlZgnHDO": "2wqbzif6", "hkRZRIGl": "eCItnlb8"}}, {"itemIdentity": "ORz27vKh", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"CxS6gsIB": "D9i7myPF", "qMD3NUMw": "bqqTISUR", "ZZICSjWa": "MgJNf4fr"}}, {"itemIdentity": "LyfWdyOd", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"86gnTBuO": "T8iEtNdd", "aLHH0D3K": "Ak6lsfK0", "t11clK8A": "5GtKwPb2"}}]}' \
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
    --body '{"environment": "vru8rPpk"}' \
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
    --body '{"appId": "y3IFlgkh", "publisherAuthenticationKey": "3ueU4Ash"}' \
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
    --body '{"clientId": "6GoozWvF", "clientSecret": "bVx2YyTz", "organizationId": "JkOITNOG"}' \
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
    --body '{"relyingPartyCert": "SvvzPo3T"}' \
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
    'lJLGIvDY' \
    '45Lsv9KT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'rhvS6Iyq' \
    'GdZX2zFz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'JyW6Sb1X' \
    --body '{"categoryPath": "45WR9NNH", "targetItemId": "NpbQDB2W", "targetNamespace": "kPUYTspS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '1davsryP' \
    --body '{"appId": "R7Xj05mo", "appType": "GAME", "baseAppId": "jNMQCyLH", "boothName": "aUR2FA7P", "categoryPath": "SaSvTXfG", "clazz": "LJrFL5x4", "displayOrder": 9, "entitlementType": "DURABLE", "ext": {"InZXL59f": {}, "zjEzx0ZY": {}, "2DLqRnLD": {}}, "features": ["CVa8IUln", "NlGfAf8l", "TC3bC9KA"], "images": [{"as": "cZeMGD0o", "caption": "pOQqJa2S", "height": 74, "imageUrl": "B2SEW5Jx", "smallImageUrl": "PSnsZpMo", "width": 33}, {"as": "ebaNRuX1", "caption": "oUHHfWJT", "height": 55, "imageUrl": "gk6UA8VR", "smallImageUrl": "BHCt2O7H", "width": 44}, {"as": "gDy8sKn6", "caption": "0FnKkvMf", "height": 77, "imageUrl": "Fzwwo0H1", "smallImageUrl": "aDcS35j7", "width": 31}], "itemIds": ["qmvV7Mo9", "csm2hh8W", "N3SgK6TS"], "itemQty": {"x78UjE2D": 61, "5Q39M72e": 63, "qsbockBS": 49}, "itemType": "COINS", "listable": true, "localizations": {"bZvlJK7I": {"description": "JNzfQlQh", "localExt": {"Ya8qS7To": {}, "D9MykqBj": {}, "YSF7QSVL": {}}, "longDescription": "GJDpSFXF", "title": "STXw4d36"}, "3OpZM3qQ": {"description": "1TsW43Vp", "localExt": {"CBxRIqtk": {}, "O0QkY6Lz": {}, "XJS0Ouzv": {}}, "longDescription": "qWAxwMLp", "title": "tY6DAKUI"}, "tDOyXjIr": {"description": "OQAc7wlA", "localExt": {"LxgzhxKb": {}, "3WQ41SxB": {}, "QLPxyHUg": {}}, "longDescription": "B74iZtve", "title": "n9yeQeSm"}}, "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 63, "itemId": "7Qf9p9Wk", "itemSku": "BOAGRlYq", "itemType": "ZGs7QmFX"}, {"count": 44, "itemId": "nbpoo0xx", "itemSku": "UvHZdErJ", "itemType": "HEGjmpE3"}, {"count": 74, "itemId": "eVFnn0pO", "itemSku": "WJYAgoW6", "itemType": "ozWnnOFl"}], "name": "VrQfHAyt", "odds": 0.7437831523699512, "type": "PROBABILITY_GROUP", "weight": 30}, {"lootBoxItems": [{"count": 66, "itemId": "XYYL8RCH", "itemSku": "Tivn0V3n", "itemType": "MwBXT2yB"}, {"count": 49, "itemId": "DG2sLJ4K", "itemSku": "HiEuZXwP", "itemType": "e9UJQApV"}, {"count": 47, "itemId": "9NBoJnCY", "itemSku": "VDzyJg7j", "itemType": "HWMdbjuj"}], "name": "cSAYs8Gd", "odds": 0.7402636579019797, "type": "PROBABILITY_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 83, "itemId": "90cIjANc", "itemSku": "c59rfka0", "itemType": "wmawZj9c"}, {"count": 90, "itemId": "f6BsiTrZ", "itemSku": "rHHjUJOc", "itemType": "2mtADoGZ"}, {"count": 32, "itemId": "H1arH89V", "itemSku": "HrLPOdrL", "itemType": "m6Urdqh7"}], "name": "yTjDFy2Q", "odds": 0.7173601141294962, "type": "REWARD", "weight": 42}]}, "maxCount": 29, "maxCountPerUser": 64, "name": "VDNXp4rs", "optionBoxConfig": {"boxItems": [{"count": 36, "itemId": "HOaRuXAC", "itemSku": "ri4FE1iF", "itemType": "xJ7LIu4j"}, {"count": 17, "itemId": "uho1n2td", "itemSku": "LVgDyugu", "itemType": "6nvQE3hb"}, {"count": 30, "itemId": "SGpXDqBt", "itemSku": "L3mAPr9t", "itemType": "cNRkFD9t"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 54, "fixedTrialCycles": 12, "graceDays": 0}, "regionData": {"U2Nnfggy": [{"currencyCode": "WjlOaIJU", "currencyNamespace": "70Qt0OkF", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1987-10-11T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1993-05-09T00:00:00Z", "discountedPrice": 23, "expireAt": "1982-08-03T00:00:00Z", "price": 10, "purchaseAt": "1983-11-29T00:00:00Z", "trialPrice": 6}, {"currencyCode": "LljbqxlD", "currencyNamespace": "4nMvKqqu", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1981-05-13T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1983-12-19T00:00:00Z", "discountedPrice": 38, "expireAt": "1996-02-21T00:00:00Z", "price": 86, "purchaseAt": "1975-10-09T00:00:00Z", "trialPrice": 61}, {"currencyCode": "liY9smmq", "currencyNamespace": "t8JQnU4n", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1972-09-30T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1998-08-15T00:00:00Z", "discountedPrice": 26, "expireAt": "1998-07-07T00:00:00Z", "price": 22, "purchaseAt": "1988-05-02T00:00:00Z", "trialPrice": 61}], "Bp1guWHD": [{"currencyCode": "IUAvMUEx", "currencyNamespace": "MQXaRzEw", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1995-02-26T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1973-03-15T00:00:00Z", "discountedPrice": 87, "expireAt": "1984-02-11T00:00:00Z", "price": 56, "purchaseAt": "1995-10-23T00:00:00Z", "trialPrice": 90}, {"currencyCode": "ZbY3LMDL", "currencyNamespace": "a7kYag8a", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1982-12-21T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1984-01-16T00:00:00Z", "discountedPrice": 24, "expireAt": "1997-05-10T00:00:00Z", "price": 52, "purchaseAt": "1996-01-19T00:00:00Z", "trialPrice": 53}, {"currencyCode": "U5lc0Vz8", "currencyNamespace": "JS1Ia733", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1988-04-05T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1973-01-21T00:00:00Z", "discountedPrice": 40, "expireAt": "1989-06-23T00:00:00Z", "price": 96, "purchaseAt": "1982-09-03T00:00:00Z", "trialPrice": 38}], "7TzqYTNd": [{"currencyCode": "rnnKsbBb", "currencyNamespace": "y8Fzh8Gq", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1996-11-19T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1999-03-19T00:00:00Z", "discountedPrice": 75, "expireAt": "1974-05-12T00:00:00Z", "price": 60, "purchaseAt": "1973-02-08T00:00:00Z", "trialPrice": 33}, {"currencyCode": "znzN1l5a", "currencyNamespace": "9IlOo5Vh", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1999-09-12T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1986-06-29T00:00:00Z", "discountedPrice": 99, "expireAt": "1973-04-23T00:00:00Z", "price": 39, "purchaseAt": "1981-03-06T00:00:00Z", "trialPrice": 25}, {"currencyCode": "IHO4PIxk", "currencyNamespace": "H8FCBiVp", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1979-07-07T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1989-04-29T00:00:00Z", "discountedPrice": 11, "expireAt": "1992-10-05T00:00:00Z", "price": 76, "purchaseAt": "1985-12-16T00:00:00Z", "trialPrice": 83}]}, "seasonType": "PASS", "sku": "f41F2D6D", "stackable": true, "status": "INACTIVE", "tags": ["EfV5CbLa", "XyDLQoc9", "DE8TzJlM"], "targetCurrencyCode": "wlvpmXbn", "targetNamespace": "unrSxLjv", "thumbnailUrl": "6jelPJEG", "useCount": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'j61a2xXl' \
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
    'TG6QX90Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'VuQ2SFum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'aeJsWSC1' \
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
    'NT59ZhEe' \
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
    'NjwWZbeD' \
    --body '{"itemIds": ["ybjtBIwR", "JHCVIhfM", "yAGIeNYT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'mgli3HjR' \
    'yNGxfevw' \
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
    'KP6IbbPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '7GcDO8xF' \
    '1zP5WvUU' \
    --body '{"appId": "Yk2p3fgH", "appType": "DEMO", "baseAppId": "CC69lOEz", "boothName": "CQUtlo4t", "categoryPath": "YvdWYX6X", "clazz": "eRA4TTk5", "displayOrder": 20, "entitlementType": "CONSUMABLE", "ext": {"PHiJy05o": {}, "gEPvnm3s": {}, "TvPGEQ4u": {}}, "features": ["HuYf2ITg", "SVmU6xeI", "8B21lGa8"], "images": [{"as": "t1r6heoK", "caption": "LwiNthcd", "height": 22, "imageUrl": "8vw094Dt", "smallImageUrl": "Y1gQKP7l", "width": 97}, {"as": "R1v2Izy5", "caption": "2zPqWXrG", "height": 7, "imageUrl": "u2WYZQz9", "smallImageUrl": "4aPXYW4R", "width": 6}, {"as": "9aFEqEWf", "caption": "BouRyKIZ", "height": 46, "imageUrl": "1YDAD6eS", "smallImageUrl": "R1Jk8Gcg", "width": 91}], "itemIds": ["p0Dq0WYf", "Cg5UWCK7", "XfCuOsgz"], "itemQty": {"gCQWN3EV": 11, "0eFqO4VA": 56, "z0H7Maa2": 69}, "itemType": "BUNDLE", "listable": true, "localizations": {"zn5x5k8P": {"description": "MvZaRfIQ", "localExt": {"9WGJqeBI": {}, "6jheFXpl": {}, "FYJ9LtH2": {}}, "longDescription": "3JHYHfZ5", "title": "bjdCMTCy"}, "u1yYFZKB": {"description": "JLhoRnb0", "localExt": {"hIHg3xlM": {}, "fFaD5TiK": {}, "pQHhcDDK": {}}, "longDescription": "gvM1WwwX", "title": "3Yu78lxJ"}, "89GyQuiw": {"description": "Z0jHWzyG", "localExt": {"zpMeFzLL": {}, "AYVfWn5I": {}, "gHZbnvd7": {}}, "longDescription": "Nb9zKhap", "title": "t0RQZQPB"}}, "lootBoxConfig": {"rewardCount": 65, "rewards": [{"lootBoxItems": [{"count": 51, "itemId": "X1GW2CWq", "itemSku": "RTnhppZd", "itemType": "4Fhon6a0"}, {"count": 75, "itemId": "SAdarod2", "itemSku": "bDF5DpzY", "itemType": "azlHzwSP"}, {"count": 76, "itemId": "U23pw4or", "itemSku": "3yFeqWxt", "itemType": "fyXeCcc9"}], "name": "JkriUCb4", "odds": 0.67893611724066, "type": "REWARD", "weight": 63}, {"lootBoxItems": [{"count": 62, "itemId": "mTgzsndT", "itemSku": "1QNXMeJR", "itemType": "DCYLW6U0"}, {"count": 20, "itemId": "ZekchJDQ", "itemSku": "wswOlrZw", "itemType": "gQ7mj8wa"}, {"count": 62, "itemId": "kBG4lxBI", "itemSku": "XISJCoVO", "itemType": "NuY8fdFB"}], "name": "AD2nQP5Z", "odds": 0.43853877816060727, "type": "REWARD", "weight": 87}, {"lootBoxItems": [{"count": 75, "itemId": "ofbiDeG2", "itemSku": "zjLUBzgO", "itemType": "aTWnoDdH"}, {"count": 95, "itemId": "U0tX7vAN", "itemSku": "uL8T0u9U", "itemType": "AgvtN6yW"}, {"count": 100, "itemId": "NDmImRog", "itemSku": "cRhaXNvi", "itemType": "cvB4XtEk"}], "name": "r5xjukzR", "odds": 0.5482625770591676, "type": "REWARD_GROUP", "weight": 53}]}, "maxCount": 70, "maxCountPerUser": 14, "name": "qdNveIPO", "optionBoxConfig": {"boxItems": [{"count": 23, "itemId": "hpbVWu5m", "itemSku": "fUaGLSkJ", "itemType": "0YaHTnKm"}, {"count": 22, "itemId": "NYA2Jufd", "itemSku": "z0LVQtuq", "itemType": "navJjL47"}, {"count": 63, "itemId": "eQLdoqkA", "itemSku": "ajoP0kVh", "itemType": "Px3mEMkB"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 61, "fixedTrialCycles": 78, "graceDays": 80}, "regionData": {"vd7qvjxN": [{"currencyCode": "ttrce9Xi", "currencyNamespace": "teq8r9W8", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1988-04-13T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1977-06-16T00:00:00Z", "discountedPrice": 53, "expireAt": "1983-06-21T00:00:00Z", "price": 30, "purchaseAt": "1998-03-06T00:00:00Z", "trialPrice": 89}, {"currencyCode": "0eO0JgOt", "currencyNamespace": "qJZ1vT9I", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1993-04-17T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1984-12-02T00:00:00Z", "discountedPrice": 64, "expireAt": "1987-09-26T00:00:00Z", "price": 8, "purchaseAt": "1997-05-26T00:00:00Z", "trialPrice": 8}, {"currencyCode": "WpSsq9dV", "currencyNamespace": "AttauYxc", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1985-09-29T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1984-10-25T00:00:00Z", "discountedPrice": 44, "expireAt": "1994-02-27T00:00:00Z", "price": 39, "purchaseAt": "1997-06-07T00:00:00Z", "trialPrice": 88}], "zLMfZ3Py": [{"currencyCode": "ctcocQzG", "currencyNamespace": "2QGDUkbM", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1989-04-19T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1989-10-29T00:00:00Z", "discountedPrice": 51, "expireAt": "1994-07-29T00:00:00Z", "price": 5, "purchaseAt": "1973-10-06T00:00:00Z", "trialPrice": 53}, {"currencyCode": "H8a5oIO0", "currencyNamespace": "bn6cqHO8", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1996-01-14T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1980-01-04T00:00:00Z", "discountedPrice": 28, "expireAt": "1996-02-01T00:00:00Z", "price": 96, "purchaseAt": "1986-08-25T00:00:00Z", "trialPrice": 99}, {"currencyCode": "RIOQRNYE", "currencyNamespace": "74JDksfg", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1999-08-21T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1974-03-07T00:00:00Z", "discountedPrice": 37, "expireAt": "1981-01-09T00:00:00Z", "price": 10, "purchaseAt": "1994-10-06T00:00:00Z", "trialPrice": 2}], "rp9TJfQE": [{"currencyCode": "g8x06E9h", "currencyNamespace": "wEJmQesc", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1998-09-13T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1979-04-20T00:00:00Z", "discountedPrice": 77, "expireAt": "1976-05-02T00:00:00Z", "price": 40, "purchaseAt": "1990-11-13T00:00:00Z", "trialPrice": 68}, {"currencyCode": "37nHkNbK", "currencyNamespace": "6cgEl3pA", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1990-10-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1973-06-12T00:00:00Z", "discountedPrice": 90, "expireAt": "1987-08-03T00:00:00Z", "price": 36, "purchaseAt": "1976-01-16T00:00:00Z", "trialPrice": 99}, {"currencyCode": "JJh3dtaf", "currencyNamespace": "kqMZ66TJ", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1992-05-05T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1981-10-11T00:00:00Z", "discountedPrice": 75, "expireAt": "1982-06-12T00:00:00Z", "price": 55, "purchaseAt": "1991-01-12T00:00:00Z", "trialPrice": 55}]}, "seasonType": "TIER", "sku": "G1T1s7VQ", "stackable": false, "status": "ACTIVE", "tags": ["gAJe9nEg", "fHNG6wGQ", "bkUdI4k8"], "targetCurrencyCode": "8kVP5KKP", "targetNamespace": "JSsdIsg6", "thumbnailUrl": "x1BBXKb4", "useCount": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '99gb6uLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'c2G1kwwc' \
    --body '{"count": 42, "orderNo": "y2b2Th2E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'lwtoLqh6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'Mlk5SxT7' \
    'LpHI5Ewf' \
    --body '{"carousel": [{"alt": "nvg7DHf5", "previewUrl": "JKcWJCrW", "thumbnailUrl": "mzxJZN2Y", "type": "image", "url": "uD3RoihX", "videoSource": "vimeo"}, {"alt": "8wPUz0La", "previewUrl": "HoqLrASG", "thumbnailUrl": "2BdpWW37", "type": "video", "url": "h5PX3lzZ", "videoSource": "generic"}, {"alt": "cLJ7B5Un", "previewUrl": "fCadldcX", "thumbnailUrl": "8R0oTntl", "type": "video", "url": "kSHjQUiK", "videoSource": "vimeo"}], "developer": "gayZAYH5", "forumUrl": "6c24iRky", "genres": ["MassivelyMultiplayer", "FreeToPlay", "RPG"], "localizations": {"8LurlEOZ": {"announcement": "D7PuCrlD", "slogan": "5S5xeX3X"}, "kCn5t4ey": {"announcement": "ghztXI26", "slogan": "ecwUgr9d"}, "Tvf4nUg6": {"announcement": "2TrTJOWr", "slogan": "fAcLZuYB"}}, "platformRequirements": {"Wh7VJJNR": [{"additionals": "2qsKHKuC", "directXVersion": "Km0veezo", "diskSpace": "FTQagDwX", "graphics": "WkqH87uu", "label": "L4N1jB1F", "osVersion": "47iGu7tu", "processor": "xpJJFDMM", "ram": "U3z72IYb", "soundCard": "1kyHmKH4"}, {"additionals": "VsDdvE3B", "directXVersion": "tBxCqfPA", "diskSpace": "LSBOyTma", "graphics": "vDTHmlAj", "label": "Og4DXAGg", "osVersion": "8kGultrI", "processor": "NsDKkW9x", "ram": "PBpmB2Xn", "soundCard": "5cH44w1Z"}, {"additionals": "q5TgoAMK", "directXVersion": "bkuZrYW9", "diskSpace": "tXVWWneA", "graphics": "9leC5wf1", "label": "GvFB7oPR", "osVersion": "ofwjcKaM", "processor": "8ZhVL2l2", "ram": "dgVtgAhQ", "soundCard": "Gmo0ipMV"}], "XFhCzRh8": [{"additionals": "tbmQX1zL", "directXVersion": "rGHWNJyn", "diskSpace": "remooeJl", "graphics": "PUvdiqIu", "label": "834cSZiD", "osVersion": "aim34VAr", "processor": "Og4FTb3w", "ram": "rywQPqS1", "soundCard": "ylNnFuZ5"}, {"additionals": "XK0pWnt6", "directXVersion": "L40B3nie", "diskSpace": "SB5kKwYF", "graphics": "9087NEtJ", "label": "NtG2wAn5", "osVersion": "PFfWlsTm", "processor": "HqLv2GKz", "ram": "zDJOwaOW", "soundCard": "Kl3yqX3G"}, {"additionals": "q15as0vM", "directXVersion": "je9gEXSe", "diskSpace": "7SUX0hIF", "graphics": "jV7ZjMco", "label": "6U5DfzAO", "osVersion": "DsMFimt2", "processor": "8eWogNHN", "ram": "6TfdYbiu", "soundCard": "UEjN81vL"}], "VFtXAfo1": [{"additionals": "MKX7L18i", "directXVersion": "8zMQTK9W", "diskSpace": "qPvMU5qR", "graphics": "ExkXomIh", "label": "TgxZR8y4", "osVersion": "OVL8Rjil", "processor": "rdipWrgm", "ram": "tPsgNvlA", "soundCard": "8MELwCoP"}, {"additionals": "SF63rxjB", "directXVersion": "gABUvX8V", "diskSpace": "xCStFQYe", "graphics": "f7amoQKb", "label": "Tsqb15gv", "osVersion": "gmf33gQ8", "processor": "jy1P8Avz", "ram": "UMPZJcqU", "soundCard": "kmheZkWn"}, {"additionals": "hcPR7m4h", "directXVersion": "xw4RVfyq", "diskSpace": "HTIrAsDL", "graphics": "xJrzgj7T", "label": "9DktcUaK", "osVersion": "soVjoiYw", "processor": "XzvWemGa", "ram": "7phGjAhk", "soundCard": "mqMBduBO"}]}, "platforms": ["IOS", "Windows", "Android"], "players": ["Multi", "MMO", "Coop"], "primaryGenre": "Strategy", "publisher": "oo6wuB4N", "releaseDate": "1994-07-23T00:00:00Z", "websiteUrl": "agXbtplO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '6tnoop7z' \
    '7ApfrWll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'ZV8srJYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '34IIexES' \
    'xS2QEbhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'ZNj4U8Wo' \
    'aYXnURx6' \
    'Tew3bXLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'USao5ic3' \
    '32fbrep0' \
    'C8Ccfz9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '5qipAWJg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'A996iDdT' \
    'WcqHVYUL' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 23, "comparison": "isLessThan", "name": "bPo8jgik", "predicateType": "SeasonTierPredicate", "value": "oKVIyly5", "values": ["nycsZbjH", "WPyCADgs", "YLVy5RKp"]}, {"anyOf": 33, "comparison": "excludes", "name": "4IEQA0wO", "predicateType": "EntitlementPredicate", "value": "UCL2KYi8", "values": ["9WVr0pg7", "lhTThRPI", "0cXFyj6q"]}, {"anyOf": 46, "comparison": "isLessThanOrEqual", "name": "je1V3sWy", "predicateType": "EntitlementPredicate", "value": "ewLre6Vj", "values": ["icob3ADL", "uQ7MkbnW", "i6RlvVfV"]}]}, {"operator": "and", "predicates": [{"anyOf": 52, "comparison": "includes", "name": "oSZMKvSY", "predicateType": "SeasonPassPredicate", "value": "IBM1ZN32", "values": ["9UJ2oV9w", "xX1yi3pc", "GXcXfE6F"]}, {"anyOf": 92, "comparison": "isGreaterThanOrEqual", "name": "4giT9viM", "predicateType": "SeasonPassPredicate", "value": "3oJJyUS8", "values": ["C7jrEZ7c", "sEA6tRPp", "zmA1KYQ8"]}, {"anyOf": 3, "comparison": "excludes", "name": "Xd4aQXOI", "predicateType": "SeasonPassPredicate", "value": "yJQN6aQv", "values": ["gafK3Fd6", "JrXUDxu3", "yuQrXA0t"]}]}, {"operator": "or", "predicates": [{"anyOf": 83, "comparison": "isLessThan", "name": "aVtugzRT", "predicateType": "EntitlementPredicate", "value": "IRJ6wJah", "values": ["fSITWz7x", "8Z0fjEeK", "5sSKF5kW"]}, {"anyOf": 75, "comparison": "isLessThan", "name": "Y2mCuVFN", "predicateType": "SeasonPassPredicate", "value": "uvY41er4", "values": ["SwM3Uh56", "hnc5vurL", "rdX2lq3c"]}, {"anyOf": 82, "comparison": "isLessThan", "name": "sMc2ju21", "predicateType": "EntitlementPredicate", "value": "KVr9Noi4", "values": ["Ng0mfj92", "9uwsng26", "n7pAEU91"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'bBCsEare' \
    --body '{"orderNo": "undCEF8j"}' \
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
    --body '{"description": "Ix6i720B", "name": "fzgwFdT9", "status": "INACTIVE", "tags": ["LkfiC3Jb", "NuFlDB7w", "vx8yoJvT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'q0Ydyrnx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'xJWwowRW' \
    --body '{"description": "Yk9n4AOv", "name": "YmHrKOzi", "status": "INACTIVE", "tags": ["939xm73F", "gWDRro1a", "ngwYwLwT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '0WU8NNPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'l7xPzvGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'c1bGq7QS' \
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
    'gOfsxB1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'OgaeAq4m' \
    --body '{"description": "DHVo5epr"}' \
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
    --body '{"dryRun": false, "notifyUrl": "QW3o13IB", "privateKey": "q7q7jnNt"}' \
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
    --body '{"currencyCode": "LFifegFG", "currencyNamespace": "poIeNpK2", "customParameters": {"R7SJxrzG": {}, "YEoIrBL6": {}, "81FL5SPA": {}}, "description": "dK57pN5A", "extOrderNo": "KPAX4Jgw", "extUserId": "tmzNXRZd", "itemType": "EXTENSION", "language": "Jp-520", "metadata": {"X6737iZo": "aRG49rHu", "pPTLLoqd": "4fUEzPSX", "JJA9X5Y8": "7lqVMiFX"}, "notifyUrl": "Y5ZxHk9J", "omitNotification": true, "platform": "jhkdSLNu", "price": 60, "recurringPaymentOrderNo": "KEBmtmsX", "region": "pfw9UBxw", "returnUrl": "Z3EbAKbJ", "sandbox": false, "sku": "fn0Ysshg", "subscriptionId": "SqqloWVB", "targetNamespace": "sXRTWWme", "targetUserId": "8nxzruZA", "title": "2heItPyK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'zPbyIFVX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'kXr1Uf1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'Bi2Z9skx' \
    --body '{"extTxId": "VdaWLZmj", "paymentMethod": "uy4qI0U5", "paymentProvider": "ADYEN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '7zwKRly4' \
    --body '{"description": "hgAKqNFz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'OoCutTev' \
    --body '{"amount": 98, "currencyCode": "OddNPb1s", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 28, "vat": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'eawt9W6C' \
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
    'Steam' \
    --body '{"allowedBalanceOrigins": ["GooglePlay", "IOS", "Playstation"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "HqPcUamu", "eventTopic": "YfIkhJxh", "maxAwarded": 58, "maxAwardedPerUser": 17, "namespaceExpression": "EQUSmpiN", "rewardCode": "PdR0bqNJ", "rewardConditions": [{"condition": "6FEO5pKU", "conditionName": "12SLIDmk", "eventName": "c50261YH", "rewardItems": [{"duration": 6, "itemId": "GgV3m9vm", "quantity": 78}, {"duration": 43, "itemId": "dcPwgcCK", "quantity": 80}, {"duration": 84, "itemId": "XO6OXppV", "quantity": 66}]}, {"condition": "D9QMrPO6", "conditionName": "ESxZr7vd", "eventName": "p8EwfwZD", "rewardItems": [{"duration": 4, "itemId": "2BQc9Vy2", "quantity": 1}, {"duration": 15, "itemId": "PH8qKe2p", "quantity": 95}, {"duration": 53, "itemId": "Kkn3Ne0s", "quantity": 43}]}, {"condition": "wEFGc48S", "conditionName": "mypboDaT", "eventName": "NdrwxA1t", "rewardItems": [{"duration": 17, "itemId": "Qaz6qios", "quantity": 29}, {"duration": 17, "itemId": "IR1XZ8N3", "quantity": 69}, {"duration": 53, "itemId": "5RXuGl9C", "quantity": 60}]}], "userIdExpression": "7N7xKR9w"}' \
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
    'GOntw52G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '5b3Ae1xY' \
    --body '{"description": "q8kWMKjT", "eventTopic": "LrOatrTx", "maxAwarded": 86, "maxAwardedPerUser": 97, "namespaceExpression": "9pvAEDed", "rewardCode": "WGEvvBXC", "rewardConditions": [{"condition": "A4e91mlx", "conditionName": "nD7RZfjf", "eventName": "h1tEFUFE", "rewardItems": [{"duration": 11, "itemId": "cYVIZ4Ky", "quantity": 10}, {"duration": 8, "itemId": "gfH0ZtUp", "quantity": 59}, {"duration": 33, "itemId": "6CpPaKeg", "quantity": 18}]}, {"condition": "WXb4bNi9", "conditionName": "IZ96QMWq", "eventName": "n9qyX7Eo", "rewardItems": [{"duration": 49, "itemId": "Wy5YAqN9", "quantity": 58}, {"duration": 64, "itemId": "hixrkyLH", "quantity": 58}, {"duration": 46, "itemId": "bzt2d03e", "quantity": 51}]}, {"condition": "i0tM5Zuy", "conditionName": "beA0E6Gc", "eventName": "Io6Qkh0q", "rewardItems": [{"duration": 96, "itemId": "TPqw8mIN", "quantity": 66}, {"duration": 81, "itemId": "dPfbkJae", "quantity": 24}, {"duration": 35, "itemId": "T9PvOX6F", "quantity": 38}]}], "userIdExpression": "1FxAuErE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'bHMuRY8U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'moSoC8pt' \
    --body '{"payload": {"r0KuRAVC": {}, "6A9FTgaO": {}, "3nid0LHL": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'RSlIxgyj' \
    --body '{"conditionName": "lRBMUQX8", "userId": "8ACu5fzZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteRewardConditionRecord' test.out

#- 145 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QuerySections' test.out

#- 146 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'nKuTAJDl' \
    --body '{"active": true, "displayOrder": 29, "endDate": "1987-07-11T00:00:00Z", "ext": {"KQ3vwpvn": {}, "78KZTrue": {}, "azzgFpot": {}}, "fixedPeriodRotationConfig": {"duration": 82, "itemCount": 32, "rule": "SEQUENCE"}, "items": [{"id": "lDhkA8S5"}, {"id": "BWhYy7l3"}, {"id": "hJpTibjC"}], "localizations": {"fRCVi8Qm": {"description": "SC7Sx00Y", "localExt": {"q7MA8yr1": {}, "fYialf2q": {}, "ZxjGY16i": {}}, "longDescription": "Tr6MNIkJ", "title": "n4appcKg"}, "s8Td5gBW": {"description": "5ZUCfcU7", "localExt": {"c63Gj1P2": {}, "7NfdtgXu": {}, "wgAfLaCw": {}}, "longDescription": "u057CKjL", "title": "xkdAFvnF"}, "lV8UdCPI": {"description": "TFJWzQCF", "localExt": {"Mk3d5dI9": {}, "nLjEsnGl": {}, "2lxJwfFI": {}}, "longDescription": "bdTP5lw7", "title": "Bz0kMOc5"}}, "name": "mAs8iHs9", "rotationType": "NONE", "startDate": "1989-10-19T00:00:00Z", "viewId": "RkVxytZ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'CreateSection' test.out

#- 147 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '0UWFIQB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PurgeExpiredSection' test.out

#- 148 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'GfrIK4PK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetSection' test.out

#- 149 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'TsYJwiAm' \
    'iWvfTVHt' \
    --body '{"active": true, "displayOrder": 29, "endDate": "1974-04-22T00:00:00Z", "ext": {"sHrqzpgq": {}, "2iThxqhF": {}, "PfcuWthx": {}}, "fixedPeriodRotationConfig": {"duration": 14, "itemCount": 58, "rule": "SEQUENCE"}, "items": [{"id": "n96Pbes8"}, {"id": "su1N6L15"}, {"id": "ugy2YqVl"}], "localizations": {"cqTzwsuh": {"description": "4Wcf9VG0", "localExt": {"3njtdJ6p": {}, "JPGPdQI4": {}, "P9R87ZFu": {}}, "longDescription": "6z8jNLM2", "title": "r4hR1V9K"}, "E9cOcAHy": {"description": "GAAa8I8p", "localExt": {"sUtV03Ho": {}, "r6OX9ZvW": {}, "l30khjhL": {}}, "longDescription": "rkXICK8D", "title": "VP4XNN5p"}, "JKtvo3jw": {"description": "XSapJHQd", "localExt": {"INeM30Dw": {}, "WVICXILf": {}, "nLvGhWUa": {}}, "longDescription": "ph7mUk4s", "title": "ZGHTDVDj"}}, "name": "reNgd5hP", "rotationType": "FIXED_PERIOD", "startDate": "1982-07-18T00:00:00Z", "viewId": "XjlWstd6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateSection' test.out

#- 150 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'w4i0xLWr' \
    'TK4uO23C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteSection' test.out

#- 151 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'ListStores' test.out

#- 152 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "R4dgyZxi", "defaultRegion": "M1n2pzIA", "description": "aCPKKBMP", "supportedLanguages": ["zjckcA4A", "Q0NDN7ZW", "R7euM9ad"], "supportedRegions": ["3A0uwcGu", "KRSlbhPX", "C82ptPdU"], "title": "YNASfyb3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'CreateStore' test.out

#- 153 ImportStore
eval_tap 0 153 'ImportStore # SKIP deprecated' test.out

#- 154 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPublishedStore' test.out

#- 155 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'DeletePublishedStore' test.out

#- 156 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPublishedStoreBackup' test.out

#- 157 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'RollbackPublishedStore' test.out

#- 158 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    '8ZZsOEsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetStore' test.out

#- 159 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'TdJynYgC' \
    --body '{"defaultLanguage": "7rapwAUf", "defaultRegion": "IYyKj5Hx", "description": "CPb5TUZ1", "supportedLanguages": ["eAPLQxJe", "y2nS16KF", "rUJqYiIq"], "supportedRegions": ["6WoXLtGb", "CDSx5bGP", "Cl6dtPTZ"], "title": "dbNn3Sl1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdateStore' test.out

#- 160 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'D0lxG12i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'DeleteStore' test.out

#- 161 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'J19V7MaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'QueryChanges' test.out

#- 162 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '3KDWhjDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'PublishAll' test.out

#- 163 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'oj55e5hi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'PublishSelected' test.out

#- 164 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'KezJsWKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'SelectAllRecords' test.out

#- 165 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'ubZD9qOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetStatistic' test.out

#- 166 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'f7rSO1CY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'UnselectAllRecords' test.out

#- 167 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'gmYzC6zO' \
    'Crmsjz5v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'SelectRecord' test.out

#- 168 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'PvhhiJ4A' \
    '0cHx9QzG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UnselectRecord' test.out

#- 169 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'DWyI62Sw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'CloneStore' test.out

#- 170 ExportStore
eval_tap 0 170 'ExportStore # SKIP deprecated' test.out

#- 171 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'QuerySubscriptions' test.out

#- 172 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'o52wLNQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'RecurringChargeSubscription' test.out

#- 173 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'sNcCrlwD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetTicketDynamic' test.out

#- 174 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'PNR1in6c' \
    --body '{"orderNo": "pY2eXrFS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'DecreaseTicketSale' test.out

#- 175 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '3pDZEa3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetTicketBoothID' test.out

#- 176 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'ZnoVrzoM' \
    --body '{"count": 18, "orderNo": "9UU1825h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'IncreaseTicketSale' test.out

#- 177 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'QEgm7cyI' \
    --body '{"achievements": [{"id": "sGFMqpMn", "value": 32}, {"id": "jr4zc5vn", "value": 20}, {"id": "EtoQZtHB", "value": 72}], "steamUserId": "yCtZiQOO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'UnlockSteamUserAchievement' test.out

#- 178 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'qwPIvQB5' \
    'lgiq7ixy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetXblUserAchievements' test.out

#- 179 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'EFV5Pbe8' \
    --body '{"achievements": [{"id": "j3J8MVlA", "percentComplete": 84}, {"id": "7h8t2Mu0", "percentComplete": 32}, {"id": "KTr1U22J", "percentComplete": 35}], "serviceConfigId": "xOTemLpi", "titleId": "Si7977xX", "xboxUserId": "bkSYq46P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'UpdateXblUserAchievement' test.out

#- 180 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'aiMifmfO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeCampaign' test.out

#- 181 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'eLKjJ0YL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeEntitlement' test.out

#- 182 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '09lskHA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AnonymizeFulfillment' test.out

#- 183 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'CtfulW2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeIntegration' test.out

#- 184 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '2L0qNAF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeOrder' test.out

#- 185 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'PaPTKSXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizePayment' test.out

#- 186 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'yHgiMq0f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeSubscription' test.out

#- 187 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'xfWfeWeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeWallet' test.out

#- 188 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'EvbUIj2U' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetUserDLC' test.out

#- 189 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'HXDKShoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'QueryUserEntitlements' test.out

#- 190 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'nVw8rvtN' \
    --body '[{"endDate": "1989-01-08T00:00:00Z", "grantedCode": "iukSLYWM", "itemId": "BMyLIL3o", "itemNamespace": "pkoSDlBZ", "language": "YFUx-hGUL", "quantity": 24, "region": "HgMMLxh6", "source": "REDEEM_CODE", "startDate": "1989-09-06T00:00:00Z", "storeId": "noceV776"}, {"endDate": "1971-01-02T00:00:00Z", "grantedCode": "6fA9GTI8", "itemId": "AOuKEdte", "itemNamespace": "6hFkZv73", "language": "FTPh_Fp", "quantity": 37, "region": "O2RDTxMX", "source": "GIFT", "startDate": "1992-06-07T00:00:00Z", "storeId": "BaNkD83Q"}, {"endDate": "1988-07-11T00:00:00Z", "grantedCode": "gXfdX75U", "itemId": "53PsMaD7", "itemNamespace": "1cowzhye", "language": "ED", "quantity": 10, "region": "hqEOjGtN", "source": "IAP", "startDate": "1983-12-30T00:00:00Z", "storeId": "974s1Z7M"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GrantUserEntitlement' test.out

#- 191 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'w1zODxrV' \
    'xmJW7Du6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserAppEntitlementByAppId' test.out

#- 192 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'Pt7vUGOh' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlementsByAppType' test.out

#- 193 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '3tPfcJxl' \
    'lnIapLBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementByItemId' test.out

#- 194 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'g42XPyva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserActiveEntitlementsByItemIds' test.out

#- 195 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '9kEDk7wA' \
    'fZNCsMjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlementBySku' test.out

#- 196 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '2bdT5yNz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'ExistsAnyUserActiveEntitlement' test.out

#- 197 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'xE14tuXL' \
    '["mlblFmHf", "C47dyQel", "YBDCITcp"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 198 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'WE7XVHtq' \
    'PJYyZEFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 199 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'slKv76NS' \
    '7L6FSNJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementOwnershipByItemId' test.out

#- 200 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'RR9Zt26y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementOwnershipByItemIds' test.out

#- 201 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'bGhaM6Te' \
    'WGETv2kS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserEntitlementOwnershipBySku' test.out

#- 202 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '5pcwKaME' \
    'kxDdiWKk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RevokeUserEntitlements' test.out

#- 203 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'XtA0fJME' \
    'FU5zhV9G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlement' test.out

#- 204 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'IJQ9aiDG' \
    'X2K2FA1E' \
    --body '{"endDate": "1981-04-07T00:00:00Z", "nullFieldList": ["PN8LLU0y", "It9KO4mr", "JYcFnIPC"], "startDate": "1996-11-02T00:00:00Z", "status": "INACTIVE", "useCount": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'UpdateUserEntitlement' test.out

#- 205 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'I8015RMw' \
    'L0SFMIGb' \
    --body '{"options": ["z4qQs0Pt", "qlZWIO5l", "72vKOft5"], "requestId": "dp2CtPi4", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'ConsumeUserEntitlement' test.out

#- 206 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'ZUTtlcGE' \
    's6kO5ZkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'DisableUserEntitlement' test.out

#- 207 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'RU47fIBS' \
    'AQotMePo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'EnableUserEntitlement' test.out

#- 208 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'sMVcOvBd' \
    'FcPp83HH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlementHistories' test.out

#- 209 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'Ad7qxAV1' \
    '4KaLcoyl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RevokeUserEntitlement' test.out

#- 210 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'SBlHsXiM' \
    --body '{"duration": 8, "endDate": "1994-10-15T00:00:00Z", "itemId": "PEKmbTxM", "itemSku": "WdyfIzWj", "language": "UGIOwWd4", "order": {"currency": {"currencyCode": "Sq34Kv92", "currencySymbol": "3p4xAN5g", "currencyType": "VIRTUAL", "decimals": 58, "namespace": "9auw9kop"}, "ext": {"VTdvSavS": {}, "5WMawGWx": {}, "u7rV27Fq": {}}, "free": true}, "orderNo": "7viHaHcn", "origin": "Steam", "quantity": 79, "region": "uhxHWIm7", "source": "REWARD", "startDate": "1994-09-10T00:00:00Z", "storeId": "xKJMVhQB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'FulfillItem' test.out

#- 211 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'Z81kBWAD' \
    --body '{"code": "wvtU4Bqu", "language": "HgS_KA", "region": "w4FOkByU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'RedeemCode' test.out

#- 212 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'pdfExb9B' \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "HUuK29aN", "namespace": "7PHBCNQY"}, "item": {"itemId": "mwEd5vEA", "itemSku": "oNQb1XKF", "itemType": "PQzEhC6J"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "CGy6YZky", "namespace": "scgEZODG"}, "item": {"itemId": "OSVNuIEJ", "itemSku": "WD3Bee5x", "itemType": "VZTtDSIV"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "0tb99sHD", "namespace": "NgCghpp4"}, "item": {"itemId": "oWlSgEKx", "itemSku": "mstG3210", "itemType": "7EY7ONPg"}, "quantity": 69, "type": "CURRENCY"}], "source": "GIFT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'FulfillRewards' test.out

#- 213 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '5cM7xf2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'QueryUserIAPOrders' test.out

#- 214 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'FuyzaL2C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'QueryAllUserIAPOrders' test.out

#- 215 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'JaBzXN11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'QueryUserIAPConsumeHistory' test.out

#- 216 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'C0yGLgpF' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "WC-XvWZ-mn", "productId": "Z7d3dAWU", "region": "VW7quuJo", "type": "APPLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'MockFulfillIAPItem' test.out

#- 217 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'yhyApl0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'QueryUserOrders' test.out

#- 218 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'fMfYOnAM' \
    --body '{"currencyCode": "CUsmX8UO", "currencyNamespace": "qGNr0OEV", "discountedPrice": 60, "ext": {"CP1vU2yf": {}, "X6FVi7TF": {}, "WkdLwxhw": {}}, "itemId": "oBUPytN6", "language": "2u6qZHzr", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 89, "quantity": 42, "region": "S5GZgTaz", "returnUrl": "JFMAjvWH", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminCreateUserOrder' test.out

#- 219 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'AuKO2UvR' \
    'KKKmppAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CountOfPurchasedItem' test.out

#- 220 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '4KNAVfEG' \
    'Nl8vsG4y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetUserOrder' test.out

#- 221 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'TcSb3wGu' \
    'H8YtAKJ7' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "JEV75b3N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'UpdateUserOrderStatus' test.out

#- 222 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'xoHK51xj' \
    'qK4ls8LQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'FulfillUserOrder' test.out

#- 223 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'wg6ax2pa' \
    '5qxnZIZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrderGrant' test.out

#- 224 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '46Upmlse' \
    'o4wFoKAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserOrderHistories' test.out

#- 225 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '3qt2iuxe' \
    'GxKgbu2v' \
    --body '{"additionalData": {"cardSummary": "ZxgJlvHU"}, "authorisedTime": "1979-11-24T00:00:00Z", "chargebackReversedTime": "1993-01-06T00:00:00Z", "chargebackTime": "1978-01-15T00:00:00Z", "chargedTime": "1972-08-07T00:00:00Z", "createdTime": "1997-11-27T00:00:00Z", "currency": {"currencyCode": "50YtsXkn", "currencySymbol": "MXFx9dRC", "currencyType": "REAL", "decimals": 74, "namespace": "vuyExquV"}, "customParameters": {"coEFjmPR": {}, "k8uHW8Xp": {}, "5wqILzH6": {}}, "extOrderNo": "i3lpoA98", "extTxId": "lfri6U52", "extUserId": "CPnOBBBx", "issuedAt": "1972-04-04T00:00:00Z", "metadata": {"YSkDyZMS": "u0SfsI43", "dAxMMbPq": "xaYGvVwN", "ZtEOGgVv": "8OWFz8e1"}, "namespace": "mFwZpeRy", "nonceStr": "O2pmZsaP", "paymentMethod": "EFOkk1rx", "paymentMethodFee": 48, "paymentOrderNo": "WYpRbODL", "paymentProvider": "ADYEN", "paymentProviderFee": 97, "paymentStationUrl": "MswFfJ92", "price": 100, "refundedTime": "1973-05-31T00:00:00Z", "salesTax": 88, "sandbox": true, "sku": "poz1WuA4", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "I1FLIzWy", "subscriptionId": "Ks8cimXy", "subtotalPrice": 35, "targetNamespace": "wXBNL2vx", "targetUserId": "H8gCpHyj", "tax": 99, "totalPrice": 30, "totalTax": 30, "txEndTime": "1972-05-28T00:00:00Z", "type": "9iYngJDW", "userId": "NVx8BA3y", "vat": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'ProcessUserOrderNotification' test.out

#- 226 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'hVl6QHrc' \
    'ewM5Pagy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'DownloadUserOrderReceipt' test.out

#- 227 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'So6iKI1e' \
    --body '{"currencyCode": "eTo01COX", "currencyNamespace": "ez0oDTMG", "customParameters": {"OUDkq9Pe": {}, "dWiOj4nW": {}, "PbKUkCo4": {}}, "description": "YCCHTH4L", "extOrderNo": "S0Ld2BV0", "extUserId": "p4pLMvI4", "itemType": "LOOTBOX", "language": "SvL_BHZS-479", "metadata": {"yMVkwkHk": "rAOreDgC", "Mp4b8By7": "pogmA4wB", "pKBm7kDA": "hPnenP8N"}, "notifyUrl": "rcIzqaN0", "omitNotification": true, "platform": "NiEC4wSA", "price": 19, "recurringPaymentOrderNo": "53CIWaut", "region": "qfETxwD5", "returnUrl": "YUzdN0oZ", "sandbox": false, "sku": "rPOEnlQq", "subscriptionId": "FrpGGOID", "title": "u64QqRZk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CreateUserPaymentOrder' test.out

#- 228 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'aeGoijIA' \
    'KaDSNV4p' \
    --body '{"description": "kGWB80Y7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RefundUserPaymentOrder' test.out

#- 229 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'd39WrqM4' \
    --body '{"code": "kjrn8ylu", "orderNo": "t5kZeHl2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'ApplyUserRedemption' test.out

#- 230 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'xe6jLOwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'QueryUserSubscriptions' test.out

#- 231 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'wca85H1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserSubscriptionActivities' test.out

#- 232 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'hLSYflBe' \
    --body '{"grantDays": 89, "itemId": "TGE9SmS2", "language": "XfZxyUOD", "reason": "S2Fufnjk", "region": "lCaHqUsu", "source": "FjSwNr7F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'PlatformSubscribeSubscription' test.out

#- 233 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'gmI72Osq' \
    'LpI8w6XZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 234 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'l8m9v6Qa' \
    'LIUeU08N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscription' test.out

#- 235 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'eQArTWks' \
    'Yf3YyRRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DeleteUserSubscription' test.out

#- 236 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'dgavzfdD' \
    'AhYkuFuw' \
    --body '{"immediate": true, "reason": "v2xd0QX6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CancelSubscription' test.out

#- 237 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '96Lhedqp' \
    'IZTvPu0b' \
    --body '{"grantDays": 29, "reason": "dbbmlWUA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GrantDaysToSubscription' test.out

#- 238 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'vqWGSlFk' \
    '8VeuUYLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserSubscriptionBillingHistories' test.out

#- 239 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'gGnm034p' \
    'GuicAuMD' \
    --body '{"additionalData": {"cardSummary": "utTUhJPJ"}, "authorisedTime": "1986-11-29T00:00:00Z", "chargebackReversedTime": "1991-07-25T00:00:00Z", "chargebackTime": "1991-07-02T00:00:00Z", "chargedTime": "1995-10-17T00:00:00Z", "createdTime": "1981-03-30T00:00:00Z", "currency": {"currencyCode": "gNHu8YFT", "currencySymbol": "aAPRABDA", "currencyType": "VIRTUAL", "decimals": 70, "namespace": "TyKFfuHQ"}, "customParameters": {"7msMQN7J": {}, "fkYOuL4h": {}, "y1oRZBue": {}}, "extOrderNo": "DQOfajgw", "extTxId": "UI5Jl1IU", "extUserId": "u6vhafGV", "issuedAt": "1976-01-02T00:00:00Z", "metadata": {"QfJki6yq": "zMVFJIHS", "26Zo94ia": "YWN4A8Ex", "JQSt3UvM": "hE8kDm3l"}, "namespace": "2r9V03XX", "nonceStr": "lV7VFOTX", "paymentMethod": "CgIuRsEQ", "paymentMethodFee": 76, "paymentOrderNo": "zApMDDW9", "paymentProvider": "ADYEN", "paymentProviderFee": 86, "paymentStationUrl": "gig60SCJ", "price": 6, "refundedTime": "1976-07-14T00:00:00Z", "salesTax": 16, "sandbox": true, "sku": "02cPGnn0", "status": "AUTHORISE_FAILED", "statusReason": "IsWsfmBo", "subscriptionId": "2gziw5Bd", "subtotalPrice": 70, "targetNamespace": "JBTawXE5", "targetUserId": "fmZlwyb4", "tax": 77, "totalPrice": 29, "totalTax": 27, "txEndTime": "1990-12-12T00:00:00Z", "type": "kyHb9sZA", "userId": "BwGlr8dQ", "vat": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'ProcessUserSubscriptionNotification' test.out

#- 240 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'F4vVwZSp' \
    'QV2Iz1Gy' \
    --body '{"count": 99, "orderNo": "7K9zvsf6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AcquireUserTicket' test.out

#- 241 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    '7nkyCg6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'QueryUserCurrencyWallets' test.out

#- 242 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'kQ4WxyFz' \
    '5CsuIgev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ListUserCurrencyTransactions' test.out

#- 243 CheckWallet
eval_tap 0 243 'CheckWallet # SKIP deprecated' test.out

#- 244 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'oyoV2KYO' \
    'dAmuCmww' \
    --body '{"amount": 100, "expireAt": "1982-09-14T00:00:00Z", "origin": "Nintendo", "reason": "y44D2B6j", "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'CreditUserWallet' test.out

#- 245 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'wjdjL9WB' \
    'GRYlEbCX' \
    --body '{"amount": 89, "walletPlatform": "Other"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'PayWithUserWallet' test.out

#- 246 GetUserWallet
eval_tap 0 246 'GetUserWallet # SKIP deprecated' test.out

#- 247 DebitUserWallet
eval_tap 0 247 'DebitUserWallet # SKIP deprecated' test.out

#- 248 DisableUserWallet
eval_tap 0 248 'DisableUserWallet # SKIP deprecated' test.out

#- 249 EnableUserWallet
eval_tap 0 249 'EnableUserWallet # SKIP deprecated' test.out

#- 250 ListUserWalletTransactions
eval_tap 0 250 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 251 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'ListViews' test.out

#- 252 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '6KIjmX2s' \
    --body '{"displayOrder": 52, "localizations": {"cdCXWaCL": {"description": "8ulSN4Vk", "localExt": {"BuD577w2": {}, "9xLiSi3m": {}, "9pwwkNIL": {}}, "longDescription": "CPSNhuBu", "title": "m98zNg2D"}, "saYA3Qje": {"description": "MyQe4X2o", "localExt": {"0506lHIt": {}, "nRd52mZw": {}, "QVrE91XY": {}}, "longDescription": "M3OfqeQy", "title": "KTjDsgp6"}, "bOkw3Gl2": {"description": "4usrQHmz", "localExt": {"zDlhONX6": {}, "45oiKf20": {}, "rGo4DCJs": {}}, "longDescription": "fXhWxd7n", "title": "XcE1TYtT"}}, "name": "zcXj45Rp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'CreateView' test.out

#- 253 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'pbiOoINg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetView' test.out

#- 254 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '6uNVgXnU' \
    '2evfAkgO' \
    --body '{"displayOrder": 56, "localizations": {"azclPka9": {"description": "XqQIccAp", "localExt": {"tz5d5E7Y": {}, "V9EOgKnZ": {}, "6xFDzPHS": {}}, "longDescription": "5oCJ2xvo", "title": "QLuCfEPm"}, "ly2LC8EI": {"description": "AAobE5t0", "localExt": {"E9fiBnJ8": {}, "drMdt2Ku": {}, "70BsV3nc": {}}, "longDescription": "a9UkiwDS", "title": "c8eBOCr6"}, "polRGosK": {"description": "VLjPiQPe", "localExt": {"OU6ZUqwS": {}, "bRvugny3": {}, "r1ph78Uu": {}}, "longDescription": "Msv0N9F7", "title": "ww1k3yxd"}}, "name": "Ytt9VCTU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateView' test.out

#- 255 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'HMQONkxb' \
    '1d6xQPSj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'DeleteView' test.out

#- 256 QueryWallets
eval_tap 0 256 'QueryWallets # SKIP deprecated' test.out

#- 257 GetWallet
eval_tap 0 257 'GetWallet # SKIP deprecated' test.out

#- 258 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'AsilQ2yu' \
    'l2kjCXq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'SyncOrders' test.out

#- 259 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["Gh9Mplno", "1R374D2B", "GseanOlH"], "apiKey": "vpDbEs4o", "authoriseAsCapture": true, "blockedPaymentMethods": ["VPSWoTKd", "QOgj8Pjw", "wM1MPZsf"], "clientKey": "1xDcWdVm", "dropInSettings": "v6k4aQQR", "liveEndpointUrlPrefix": "nlPsG3YM", "merchantAccount": "tvkkTGvb", "notificationHmacKey": "lnGU8SaB", "notificationPassword": "dVXf6Itw", "notificationUsername": "yGf5kJAD", "returnUrl": "3pR1Y4bZ", "settings": "Kcp40CNu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'TestAdyenConfig' test.out

#- 260 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "XJBs6aVy", "privateKey": "sBR24j8j", "publicKey": "Cz4MNIrX", "returnUrl": "HWsCHYb6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestAliPayConfig' test.out

#- 261 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "VpNVHJHF", "secretKey": "sli0Utxr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'TestCheckoutConfig' test.out

#- 262 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DebugMatchedPaymentMerchantConfig' test.out

#- 263 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "BlUKtYu1", "clientSecret": "80Nm9eOp", "returnUrl": "TF3tuHUF", "webHookId": "TNdGGMtV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'TestPayPalConfig' test.out

#- 264 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["JfEdJJ0N", "JhVYgLlx", "tk6oEBLc"], "publishableKey": "UHpuPdsy", "secretKey": "k6bcSyIg", "webhookSecret": "Y55ljA0L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfig' test.out

#- 265 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "Ggvwe3E5", "key": "Lr9vp9q6", "mchid": "H8amGcXn", "returnUrl": "62NJriSz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'TestWxPayConfig' test.out

#- 266 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "xUtCqKV9", "flowCompletionUrl": "F0rDEqCU", "merchantId": 65, "projectId": 86, "projectSecretKey": "xIKfwZ2s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestXsollaConfig' test.out

#- 267 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'jl5xmkES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetPaymentMerchantConfig' test.out

#- 268 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'sIvT4oOq' \
    --body '{"allowedPaymentMethods": ["bsnX17Fo", "zvYMjcfN", "NhsWJK6E"], "apiKey": "phEoLKQY", "authoriseAsCapture": true, "blockedPaymentMethods": ["8TPXB851", "qQ6G88ob", "wVhtuD2g"], "clientKey": "oI1LL7IX", "dropInSettings": "vqbAK3Sj", "liveEndpointUrlPrefix": "P9GWRqzW", "merchantAccount": "Nu5Wbs0i", "notificationHmacKey": "soud34oH", "notificationPassword": "qE99WbUE", "notificationUsername": "jqSrg33g", "returnUrl": "xECbz1mY", "settings": "Dqa9Mytc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateAdyenConfig' test.out

#- 269 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'lDb2YWgc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestAdyenConfigById' test.out

#- 270 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'd89UrYtI' \
    --body '{"appId": "a4QrC1gw", "privateKey": "tsksOErz", "publicKey": "st9VWtyY", "returnUrl": "dueOCrBg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'UpdateAliPayConfig' test.out

#- 271 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '7hnBXVPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestAliPayConfigById' test.out

#- 272 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'hHO3n5Ad' \
    --body '{"publicKey": "5L8tsRi9", "secretKey": "2tZys5U4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'UpdateCheckoutConfig' test.out

#- 273 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'IgWfWWIy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'TestCheckoutConfigById' test.out

#- 274 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'fPPt15QI' \
    --body '{"clientID": "tYl9HPdS", "clientSecret": "rrSkWhNs", "returnUrl": "rPD7y1kT", "webHookId": "OVSYsmTt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'UpdatePayPalConfig' test.out

#- 275 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'smLFg1ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'TestPayPalConfigById' test.out

#- 276 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'jhHQ8lv9' \
    --body '{"allowedPaymentMethodTypes": ["D9Zu3ANg", "jxS8MMaV", "9FlUHVrc"], "publishableKey": "tYMwxoBG", "secretKey": "DeHjiEgB", "webhookSecret": "Z4RPD7CZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'UpdateStripeConfig' test.out

#- 277 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'Cfd2ZF53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'TestStripeConfigById' test.out

#- 278 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'lMvGNuR1' \
    --body '{"appId": "9BQNC0Ez", "key": "DGZjyPAG", "mchid": "Sil4WQ6r", "returnUrl": "05ZKcong"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdateWxPayConfig' test.out

#- 279 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'xYjiuSqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateWxPayConfigCert' test.out

#- 280 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'VVY6kvAU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestWxPayConfigById' test.out

#- 281 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'm1VBey3e' \
    --body '{"apiKey": "SDghu77C", "flowCompletionUrl": "iCwBNe7G", "merchantId": 37, "projectId": 56, "projectSecretKey": "3gH1ZwXj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdateXsollaConfig' test.out

#- 282 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'b5Q2qqR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestXsollaConfigById' test.out

#- 283 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'yQNJo5Fm' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateXsollaUIConfig' test.out

#- 284 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'QueryPaymentProviderConfig' test.out

#- 285 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "vRz72YYh", "region": "GKUxvNZO", "sandboxTaxJarApiToken": "FuJ4lhND", "specials": ["PAYPAL", "XSOLLA", "STRIPE"], "taxJarApiToken": "FWOojYDp", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'CreatePaymentProviderConfig' test.out

#- 286 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetAggregatePaymentProviders' test.out

#- 287 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DebugMatchedPaymentProviderConfig' test.out

#- 288 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetSpecialPaymentProviders' test.out

#- 289 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'KnNAsvQy' \
    --body '{"aggregate": "ADYEN", "namespace": "sLiHkOhf", "region": "cjKK9fU2", "sandboxTaxJarApiToken": "3Noo1bSq", "specials": ["ALIPAY", "WXPAY", "WXPAY"], "taxJarApiToken": "7i5XcaM6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'UpdatePaymentProviderConfig' test.out

#- 290 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'kMVjbJON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'DeletePaymentProviderConfig' test.out

#- 291 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GetPaymentTaxConfig' test.out

#- 292 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "kqpJmG2y", "taxJarApiToken": "BG7Sdsmi", "taxJarEnabled": true, "taxJarProductCodesMapping": {"q3473imD": "YX0pyJGJ", "2hRWs08B": "3t2ZFxdD", "yY6wfDoD": "0vKDvb6u"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentTaxConfig' test.out

#- 293 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'ujYch6sb' \
    'BA8Lkqop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'SyncPaymentOrders' test.out

#- 294 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetRootCategories' test.out

#- 295 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'DownloadCategories' test.out

#- 296 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'I03UL6hz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetCategory' test.out

#- 297 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'OfmHaem9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetChildCategories' test.out

#- 298 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'cqstFaJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetDescendantCategories' test.out

#- 299 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicListCurrencies' test.out

#- 300 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '3rpCRezB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetItemByAppId' test.out

#- 301 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicQueryItems' test.out

#- 302 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'Lwg3jGWn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetItemBySku' test.out

#- 303 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '3PkgCiXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicBulkGetItems' test.out

#- 304 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["UEjaXGJQ", "3frUyXzb", "uSjrrno8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicValidateItemPurchaseCondition' test.out

#- 305 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'JqvOxYUe' \
    'mcFQNBKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicSearchItems' test.out

#- 306 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'jGHxZ1Ad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetApp' test.out

#- 307 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '3tGIknDk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetItemDynamicData' test.out

#- 308 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'h44Pru5m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetItem' test.out

#- 309 GetPaymentCustomization
eval_tap 0 309 'GetPaymentCustomization # SKIP deprecated' test.out

#- 310 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "f4Tfgs1r", "paymentProvider": "CHECKOUT", "returnUrl": "2dByZQjh", "ui": "DvvnAt2q", "zipCode": "H0EhEbgv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetPaymentUrl' test.out

#- 311 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'GW2hXhuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetPaymentMethods' test.out

#- 312 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'F9EbSZnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUnpaidPaymentOrder' test.out

#- 313 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'PHP6j5gg' \
    --body '{"token": "JaCCkBYI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'Pay' test.out

#- 314 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'gXFPmU7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicCheckPaymentOrderPaidStatus' test.out

#- 315 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'jEsNqpPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'GetPaymentPublicConfig' test.out

#- 316 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'knqBfxfG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetQRCode' test.out

#- 317 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '2jSymFRq' \
    'eAFfTe9J' \
    'WALLET' \
    'HEuzqNjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicNormalizePaymentReturnUrl' test.out

#- 318 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '0BoQpYd8' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentTaxValue' test.out

#- 319 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '45p3IWNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'GetRewardByCode' test.out

#- 320 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'QueryRewards1' test.out

#- 321 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'lP15ssp3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetReward1' test.out

#- 322 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicListStores' test.out

#- 323 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicExistsAnyMyActiveEntitlement' test.out

#- 324 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'gjTfE7vX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 325 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '4HCCIrxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 326 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'AGuDzKS0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 327 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetEntitlementOwnershipToken' test.out

#- 328 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'OcOpgn4G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyWallet' test.out

#- 329 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'tHALlhna' \
    --body '{"epicGamesJwtToken": "9HbV90L0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'SyncEpicGameDLC' test.out

#- 330 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'UOJfQADM' \
    --body '{"serviceLabel": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicSyncPsnDlcInventory' test.out

#- 331 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '6wtAOhmd' \
    --body '{"serviceLabels": [40, 69, 47]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 332 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'u0yXbGyj' \
    --body '{"appId": "0nqnfnSS", "steamId": "vAL1J3Ac"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'SyncSteamDLC' test.out

#- 333 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'GJfdavff' \
    --body '{"xstsToken": "9q20JZz9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'SyncXboxDLC' test.out

#- 334 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'BGiLOw1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicQueryUserEntitlements' test.out

#- 335 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'RiAcQd2y' \
    'EzCdoT69' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserAppEntitlementByAppId' test.out

#- 336 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'owbf7xsX' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicQueryUserEntitlementsByAppType' test.out

#- 337 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'OBsaPnkQ' \
    'nXUsULc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetUserEntitlementByItemId' test.out

#- 338 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'TkoAwhzL' \
    'ulg3V06A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserEntitlementBySku' test.out

#- 339 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'x4rv4szX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicExistsAnyUserActiveEntitlement' test.out

#- 340 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '11R5tEpJ' \
    'AxZxw4bV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 341 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    '5j9vZgv0' \
    'YIJW08Fj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 342 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '19CJgsey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 343 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'cH2IVXLK' \
    '6Q4V49Aq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 344 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'KXvow9BB' \
    '1sNvBLN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlement' test.out

#- 345 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '9qu7Ks4I' \
    'fePCuLSo' \
    --body '{"options": ["x5Cv1L1J", "dv1XkPwO", "2aOaM4aS"], "requestId": "zuyAYJVN", "useCount": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicConsumeUserEntitlement' test.out

#- 346 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'WpRMs6SK' \
    --body '{"code": "yeth1gCs", "language": "tL_qy", "region": "XopHaPs2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicRedeemCode' test.out

#- 347 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'Lvbuk4Bu' \
    --body '{"excludeOldTransactions": true, "language": "Ex-658", "productId": "aSqqNbT7", "receiptData": "xVIoQW6c", "region": "RmxE7BGV", "transactionId": "gi4oEMOH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicFulfillAppleIAPItem' test.out

#- 348 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'gTXBEZ0j' \
    --body '{"epicGamesJwtToken": "ovHBtKVL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'SyncEpicGamesInventory' test.out

#- 349 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '7cfXQidA' \
    --body '{"autoAck": false, "language": "ofzu-tIeB-679", "orderId": "XRWmeQoi", "packageName": "YQqQ3Q61", "productId": "1Kf62TlN", "purchaseTime": 69, "purchaseToken": "UcWn6EWP", "region": "5ETGJvPE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicFulfillGoogleIAPItem' test.out

#- 350 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '9pUOiTLm' \
    --body '{"currencyCode": "y98lUbap", "price": 0.07504217921727441, "productId": "XZfVpfiw", "serviceLabel": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicReconcilePlayStationStore' test.out

#- 351 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'AMtespHN' \
    --body '{"currencyCode": "G8xiBTUJ", "price": 0.8400315876540372, "productId": "XTYHaUN0", "serviceLabels": [1, 50, 31]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 352 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'BpBgNXSq' \
    --body '{"appId": "mB9bZ2Bf", "language": "ENxT", "region": "RGYlrHKN", "stadiaPlayerId": "Hh4REw3F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'SyncStadiaEntitlement' test.out

#- 353 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'StJCFl4e' \
    --body '{"appId": "DuXTb8Cj", "currencyCode": "6aOtVHKu", "language": "eU-aifT", "price": 0.3066172284948122, "productId": "KxQlLbjC", "region": "opGZYV5A", "steamId": "tRfTdhQ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'SyncSteamInventory' test.out

#- 354 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'ZV9L0unx' \
    --body '{"gameId": "b1UTsRkK", "language": "YRsm_Am", "region": "iCrGiWy6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'SyncTwitchDropsEntitlement' test.out

#- 355 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'eVF2NyxR' \
    --body '{"currencyCode": "xGTQctK8", "price": 0.9001707345784798, "productId": "KPgVZzHs", "xstsToken": "y2zL9YFY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncXboxInventory' test.out

#- 356 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'SOD8Paxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicQueryUserOrders' test.out

#- 357 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'Oor6v2XZ' \
    --body '{"currencyCode": "9FhUDMmp", "discountedPrice": 46, "ext": {"AOBNX8FV": {}, "tce7e1RA": {}, "zkdpX06Y": {}}, "itemId": "MrOSCA4W", "language": "qK_yFzQ", "price": 43, "quantity": 10, "region": "3Um5hs45", "returnUrl": "WGd4xWRc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicCreateUserOrder' test.out

#- 358 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'qMDBkGdh' \
    '66f6Nj4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUserOrder' test.out

#- 359 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'AOFfKlZG' \
    'j6Epz7dL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicCancelUserOrder' test.out

#- 360 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'yNoONTvg' \
    'cuGeCzfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetUserOrderHistories' test.out

#- 361 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ws8ZFCUx' \
    'u0WKtokC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicDownloadUserOrderReceipt' test.out

#- 362 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'rKbicVaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetPaymentAccounts' test.out

#- 363 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '1l5KXEsq' \
    'card' \
    'ozJeAS4e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicDeletePaymentAccount' test.out

#- 364 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    '6SsdH4Qu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicListActiveSections' test.out

#- 365 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'ILAvxlSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicQueryUserSubscriptions' test.out

#- 366 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'DSLl0Vwh' \
    --body '{"currencyCode": "TbRXUQoc", "itemId": "rhCbBUVT", "language": "YCV-HaVU", "region": "lpu8yF6M", "returnUrl": "fsq6w3Dq", "source": "ehhIIcIe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicSubscribeSubscription' test.out

#- 367 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'z54lme9j' \
    'oqdkYL1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 368 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '5LzmqjfK' \
    'PAgijD6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetUserSubscription' test.out

#- 369 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'fNgtzA9C' \
    'tjbtmfdQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicChangeSubscriptionBillingAccount' test.out

#- 370 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'OAnTtpsq' \
    'gRTSKN6C' \
    --body '{"immediate": false, "reason": "88Zoj8lw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCancelSubscription' test.out

#- 371 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'LDkoEnQ2' \
    '8NGebzYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscriptionBillingHistories' test.out

#- 372 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'SSRYG8I0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicListViews' test.out

#- 373 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'cmNI3FGz' \
    'xqJYlutQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetWallet' test.out

#- 374 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'vGijTARL' \
    '1CujKx3p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicListUserWalletTransactions' test.out

#- 375 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'QueryItems1' test.out

#- 376 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'ImportStore1' test.out

#- 377 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    '1uQIV9EL' \
    --body '{"itemIds": ["sOUBM2D7", "iP4AlfeZ", "4DESsciA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
