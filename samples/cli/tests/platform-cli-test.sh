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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "b1bIkj76", "appType": "DEMO", "baseAppId": "BXGbnHaz", "boothName": "hqn5lvdK", "boundItemIds": ["vPPEPAj7", "TC7ZuBPC", "YMKcqV3b"], "categoryPath": "oVwpfMV1", "clazz": "MoBoIAHW", "createdAt": "1986-01-03T00:00:00Z", "description": "xKSkmpRe", "displayOrder": 37, "entitlementType": "CONSUMABLE", "ext": {"MORFMuwh": {}, "GNK2FOie": {}, "getKDF3p": {}}, "features": ["9tp5W9yU", "XReu3nZT", "binmI6my"], "fresh": false, "images": [{"as": "1CLXkKr0", "caption": "8xrviHSl", "height": 46, "imageUrl": "g6W7zvp3", "smallImageUrl": "bOyxdEsi", "width": 51}, {"as": "i965dQSm", "caption": "SdTAnLuv", "height": 27, "imageUrl": "U3dx54z5", "smallImageUrl": "7R4TQv6M", "width": 24}, {"as": "6bWkso4d", "caption": "5QpBXEeO", "height": 52, "imageUrl": "dsfeI8rH", "smallImageUrl": "EjsSshaN", "width": 18}], "itemId": "yq42vWxY", "itemIds": ["rgrr4nBB", "MCRAqRyV", "UPk8q51c"], "itemQty": {"qwFx6UXx": 7, "4IeYVtJK": 83, "sXo90gum": 30}, "itemType": "SUBSCRIPTION", "language": "Ivnp7YPH", "listable": true, "localExt": {"b4Kbc6Mf": {}, "BucbSmIg": {}, "YEcHtMMt": {}}, "longDescription": "uBvTMdHt", "maxCount": 71, "maxCountPerUser": 47, "name": "4hbkJD49", "namespace": "Ihz35G0Y", "optionBoxConfig": {"boxItems": [{"count": 60, "itemId": "WVj8cZ0n", "itemSku": "1WdPoxJP"}, {"count": 43, "itemId": "vY97RVtk", "itemSku": "xPIkdpo0"}, {"count": 68, "itemId": "2VBMOiOS", "itemSku": "w5AP5fND"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 28, "comparison": "isLessThanOrEqual", "name": "o3nnoEFS", "predicateType": "SeasonPassPredicate", "value": "AZOr12Rj", "values": ["SNoNOQQW", "1UD8BVxb", "MgiUY2wa"]}, {"anyOf": 56, "comparison": "includes", "name": "fZx373Ne", "predicateType": "EntitlementPredicate", "value": "OZqBwafx", "values": ["HxVPqf4e", "mHjWW6zz", "dkXtt9VM"]}, {"anyOf": 77, "comparison": "isLessThanOrEqual", "name": "v0Tgvdhb", "predicateType": "SeasonPassPredicate", "value": "khIVRpND", "values": ["POMWGctj", "d1zjrTuB", "RUJikQxH"]}]}, {"operator": "and", "predicates": [{"anyOf": 68, "comparison": "isLessThanOrEqual", "name": "Ohmk1QzV", "predicateType": "SeasonTierPredicate", "value": "zJxR10PI", "values": ["w99CnYiF", "pU83DHeO", "e2AkO9rB"]}, {"anyOf": 68, "comparison": "isLessThanOrEqual", "name": "JnHAZ1qs", "predicateType": "EntitlementPredicate", "value": "vzbKSuRS", "values": ["HHQk0D3S", "MOy9OsyK", "pxP9j2sD"]}, {"anyOf": 72, "comparison": "isGreaterThanOrEqual", "name": "jaNKRayS", "predicateType": "SeasonTierPredicate", "value": "aON54n3s", "values": ["KgupgQCl", "ygOthSWs", "32k22O2E"]}]}, {"operator": "and", "predicates": [{"anyOf": 60, "comparison": "isGreaterThanOrEqual", "name": "2cAZzwCQ", "predicateType": "EntitlementPredicate", "value": "rTOO36Ol", "values": ["uEnkDrZH", "cW621aHC", "c78eLTDw"]}, {"anyOf": 36, "comparison": "excludes", "name": "6PVXz8mt", "predicateType": "SeasonPassPredicate", "value": "4jvzCLMe", "values": ["WPgc097w", "8Q7cFfN7", "JuKsDfCM"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "huIbui6w", "predicateType": "SeasonTierPredicate", "value": "Z9uGrgnV", "values": ["LuKJDku7", "lsp53527", "NgNbKCAF"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 40, "fixedTrialCycles": 89, "graceDays": 99}, "region": "YJPrKMyY", "regionData": [{"currencyCode": "w1XwHUmj", "currencyNamespace": "pXyqQps5", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1975-06-25T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1975-02-27T00:00:00Z", "discountedPrice": 94, "expireAt": "1982-03-20T00:00:00Z", "price": 14, "purchaseAt": "1998-05-24T00:00:00Z", "trialPrice": 4}, {"currencyCode": "FYkfG8dl", "currencyNamespace": "0cBM7FLM", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1986-03-09T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-07-29T00:00:00Z", "discountedPrice": 39, "expireAt": "1987-11-19T00:00:00Z", "price": 95, "purchaseAt": "1978-10-19T00:00:00Z", "trialPrice": 93}, {"currencyCode": "JEKKjHbz", "currencyNamespace": "57emLz1A", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1980-08-23T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1997-06-13T00:00:00Z", "discountedPrice": 35, "expireAt": "1985-05-16T00:00:00Z", "price": 54, "purchaseAt": "1989-04-26T00:00:00Z", "trialPrice": 17}], "seasonType": "TIER", "sku": "kT4ernx9", "stackable": false, "status": "ACTIVE", "tags": ["cD56TERO", "eTEqM5TB", "vf46jTav"], "targetCurrencyCode": "o9x2jMp0", "targetItemId": "QI3Y7KCO", "targetNamespace": "nZndDPSY", "thumbnailUrl": "H1DWnyG0", "title": "nGjJxQEv", "updatedAt": "1989-09-09T00:00:00Z", "useCount": 67}, "namespace": "uXVAtuyI", "order": {"currency": {"currencyCode": "DeBqmTJe", "currencySymbol": "wv6dJqSu", "currencyType": "REAL", "decimals": 76, "namespace": "AoREGytL"}, "ext": {"EFQ2FrXk": {}, "5hiz1p3E": {}, "XpddRMCt": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "0zA3Dzg3", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script '5H0NDIy1' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'AIyWqNfu' --body '{"grantDays": "X4gzYGGH"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'UdE0rpne' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'Q3v6Z10e' --body '{"grantDays": "h7hn2h3n"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "v13SndH4", "dryRun": false, "fulfillmentUrl": "n3mwk1rw", "itemType": "BUNDLE", "purchaseConditionUrl": "jMLD9Aeb"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'APP' --login_with_auth "Bearer foo"
platform-get-item-type-config 'sADH2grD' --login_with_auth "Bearer foo"
platform-update-item-type-config 'GFwo1soQ' --body '{"clazz": "8Mjo2p5b", "dryRun": false, "fulfillmentUrl": "H6UBKvQy", "purchaseConditionUrl": "SXb077Dd"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'rRHJLZXd' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "vkp8lMCH", "items": [{"extraSubscriptionDays": 26, "itemId": "ncHwG7rD", "itemName": "nqCHT85V", "quantity": 95}, {"extraSubscriptionDays": 62, "itemId": "4HLLkU1a", "itemName": "VxjbvJ2s", "quantity": 54}, {"extraSubscriptionDays": 32, "itemId": "dEf5MMTe", "itemName": "vEMzB9Pr", "quantity": 89}], "maxRedeemCountPerCampaignPerUser": 21, "maxRedeemCountPerCode": 28, "maxRedeemCountPerCodePerUser": 56, "maxSaleCount": 1, "name": "YFo6chMN", "redeemEnd": "1981-05-13T00:00:00Z", "redeemStart": "1980-05-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4kEy3vw6", "ykaf1iEJ", "55QjfBhy"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'xBo5IP91' --login_with_auth "Bearer foo"
platform-update-campaign 'a7maR66x' --body '{"description": "EGgGeep9", "items": [{"extraSubscriptionDays": 36, "itemId": "7CXNUFYx", "itemName": "OVgIfvug", "quantity": 86}, {"extraSubscriptionDays": 10, "itemId": "8BVrpR9p", "itemName": "Dvdr4L1W", "quantity": 3}, {"extraSubscriptionDays": 7, "itemId": "t9eSivay", "itemName": "ExXxl1AV", "quantity": 51}], "maxRedeemCountPerCampaignPerUser": 73, "maxRedeemCountPerCode": 66, "maxRedeemCountPerCodePerUser": 51, "maxSaleCount": 85, "name": "io2KIHfi", "redeemEnd": "1998-11-16T00:00:00Z", "redeemStart": "1995-01-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["d3FOO1V1", "hba4pg3t", "a4NwDNOa"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'So1Lj2FR' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'PQPszw2P' --body '{"categoryPath": "IZZ1MFwy", "localizationDisplayNames": {"VSD4vVPF": "zhtcvhYu", "4IiKFPrf": "TJ9zkDkW", "mX86eJqI": "nS4MQuio"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'xGC15BgZ' --login_with_auth "Bearer foo"
platform-update-category 'jBkvyKYs' '0HejXpyw' --body '{"localizationDisplayNames": {"4poEQyrk": "JmIV9bpp", "x8jQTMki": "a7mj59NE", "s1gM02YE": "heYoSD6M"}}' --login_with_auth "Bearer foo"
platform-delete-category 'bMPcOGbc' 'VVegtu8O' --login_with_auth "Bearer foo"
platform-get-child-categories '0ZkCf6Yb' --login_with_auth "Bearer foo"
platform-get-descendant-categories '9ixdSsR8' --login_with_auth "Bearer foo"
platform-query-codes 'TxpI501Z' --login_with_auth "Bearer foo"
platform-create-codes '68rVe5FK' --body '{"quantity": 5}' --login_with_auth "Bearer foo"
platform-download 'H7iaQCOn' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'QSaQ9xV8' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'VmDgYfQy' --login_with_auth "Bearer foo"
platform-query-redeem-history 'kM63zewx' --login_with_auth "Bearer foo"
platform-get-code 'zPjsx8cR' --login_with_auth "Bearer foo"
platform-disable-code 'v77MkE2k' --login_with_auth "Bearer foo"
platform-enable-code 'TzuDX8EG' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "sbjRw2wH", "currencySymbol": "l979cNAM", "currencyType": "REAL", "decimals": 40, "localizationDescriptions": {"Kkl3DGe0": "f6Porlt8", "YEZvMIYK": "oNrzns54", "bVy62QUO": "lp7W8EKM"}}' --login_with_auth "Bearer foo"
platform-update-currency '5OsrOBc1' --body '{"localizationDescriptions": {"ks4BEPq0": "TO9M1yKt", "1NXWiSyb": "5Vbiu6RN", "vpTC1lyS": "5HYCpypj"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'dR7VZb72' --login_with_auth "Bearer foo"
platform-get-currency-config '0O9ZjuiE' --login_with_auth "Bearer foo"
platform-get-currency-summary 'LP9mKOtD' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "UXFdZHpV", "rewards": [{"currency": {"currencyCode": "Gtm7Kcxa", "namespace": "4xFx7bXJ"}, "item": {"itemId": "rrCbEyTS", "itemSku": "jt8FIdvR", "itemType": "xkO3sxDA"}, "quantity": 24, "type": "CURRENCY"}, {"currency": {"currencyCode": "0QbuTGrc", "namespace": "GM6cxRu6"}, "item": {"itemId": "dLVvjg9f", "itemSku": "YepdbVBH", "itemType": "2yfbb2ex"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "oxkbqtz9", "namespace": "TVjHrfax"}, "item": {"itemId": "HciVvITJ", "itemSku": "taSP5Y87", "itemType": "oSEI7rGI"}, "quantity": 88, "type": "CURRENCY"}]}, {"id": "NziJKwYB", "rewards": [{"currency": {"currencyCode": "lOTgLU93", "namespace": "BzJo2Pnv"}, "item": {"itemId": "DnuMEKca", "itemSku": "1vgC7bM8", "itemType": "fj4s00yL"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "Kkvm35HS", "namespace": "Mb82Ifzr"}, "item": {"itemId": "eoVOApPv", "itemSku": "PhUXMITp", "itemType": "oIVmGD1v"}, "quantity": 16, "type": "ITEM"}, {"currency": {"currencyCode": "i1K5z8sR", "namespace": "3AbbORYu"}, "item": {"itemId": "Wgbi921Q", "itemSku": "STcG0o3K", "itemType": "CfGMil7I"}, "quantity": 58, "type": "CURRENCY"}]}, {"id": "zWjA9ekW", "rewards": [{"currency": {"currencyCode": "51svWWzz", "namespace": "IizAWXUU"}, "item": {"itemId": "9BEbnft4", "itemSku": "kZNuvZcy", "itemType": "FOGDSct3"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "jWPcA1Hy", "namespace": "Ken1nvvx"}, "item": {"itemId": "XYZzrBus", "itemSku": "565qLDZC", "itemType": "KKp9vSMh"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "TySoPM8p", "namespace": "pDdqkd6p"}, "item": {"itemId": "HkRAJl4m", "itemSku": "pOwBhe5I", "itemType": "yqoegtsu"}, "quantity": 2, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"DeX4AlDR": "gtbMfp49", "k63lJC7n": "XAUamq1y", "ylK6b29u": "pCLr4QHj"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"ZCW8VTEP": "vabwQBGo", "P3rned5U": "ygNgDbvE", "n9yPSrCy": "rjNnenSG"}}, {"platform": "XBOX", "platformDlcIdMap": {"30ynZ5bS": "Dr1Lk3TN", "pb4o7Bvc": "Nh0faRx3", "9OmUhpK3": "UcOWM9c7"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'nn3mu71A' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "vwwUQ83H", "password": "jruDUTil"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "EdTozaKU"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "Sfnepyyb", "serviceAccountId": "Cdqg5J0Y"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "tguM6tZ1", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"btN1C0ri": "J0dLI7Qp", "VCrIh5Hi": "Z0LolznU", "GF3Uioj1": "AXcvWEva"}}, {"itemIdentity": "dCGFaGv9", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"oAYARqHA": "yDAyz4jB", "3rr1N0T6": "usbWIcg6", "6jjzYtSP": "MR776AMb"}}, {"itemIdentity": "CaZ22KCu", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"SCuUXgqq": "dmLC9qlq", "w2xbKwN9": "lYR79hkR", "Xf4y4GLD": "vxKNhMEc"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "LX7GsTXz"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "YUC7uvwk", "publisherAuthenticationKey": "ujVxTeYZ"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "VREZvI8w", "clientSecret": "vpfFQYGB", "organizationId": "Mwo9XwiU"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "c5uId0pX"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'Qa3RVEaL' 'nUOm1Dmv' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'FIFIKuKS' '4fCvkory' --login_with_auth "Bearer foo"
platform-sync-in-game-item '56edau10' --body '{"categoryPath": "8BJkr5y6", "targetItemId": "ufYeR2xX", "targetNamespace": "NwDTmvj7"}' --login_with_auth "Bearer foo"
platform-create-item 'D5eaqUkR' --body '{"appId": "Tim3DA4K", "appType": "DEMO", "baseAppId": "57msxHLh", "boothName": "Noj5L4aT", "categoryPath": "EH9gdS95", "clazz": "0pjYkG54", "displayOrder": 7, "entitlementType": "CONSUMABLE", "ext": {"uK7zJymS": {}, "3Gl0DLCW": {}, "LD775MDo": {}}, "features": ["dD4a7u1C", "sXcrzMQA", "ogNiDnks"], "images": [{"as": "cvn3NTt9", "caption": "PiDR7Kmo", "height": 32, "imageUrl": "Y3ucXsJJ", "smallImageUrl": "sALXsO6b", "width": 85}, {"as": "PBG2oJTC", "caption": "9WWOdOOG", "height": 96, "imageUrl": "hJbvpbhw", "smallImageUrl": "Iw5oywRa", "width": 63}, {"as": "BsPsbyxF", "caption": "pUSNU2Q2", "height": 38, "imageUrl": "JmWznqM5", "smallImageUrl": "R6zqRL37", "width": 86}], "itemIds": ["bj48C6CV", "j2tF1i0B", "6WsWxjcs"], "itemQty": {"Dm9757yH": 74, "XBHoVWQU": 32, "qeyGz0Va": 96}, "itemType": "EXTENSION", "listable": true, "localizations": {"MtyvfdEO": {"description": "muTQ3f0d", "localExt": {"Tvx9ERO4": {}, "dgMIM6Lj": {}, "iiLHHqct": {}}, "longDescription": "XnqkjCL5", "title": "SSjpVZi8"}, "byLTKIZj": {"description": "Kd2ES0M5", "localExt": {"MTn7bEA5": {}, "s9fT1c85": {}, "vqso3yUI": {}}, "longDescription": "Rh6KW5kG", "title": "2LJc5tKN"}, "a8oqLCcr": {"description": "UO6Wu86c", "localExt": {"cNHHZvgS": {}, "Wp3MougY": {}, "mhrOH0lp": {}}, "longDescription": "Tw0Rv4HM", "title": "ETZ8Yvls"}}, "maxCount": 95, "maxCountPerUser": 75, "name": "c1yYcoMe", "optionBoxConfig": {"boxItems": [{"count": 32, "itemId": "asXjs0ds", "itemSku": "KwtkkdPO"}, {"count": 71, "itemId": "vlVtq9yS", "itemSku": "pWUo6hfT"}, {"count": 51, "itemId": "jqVMr7Ci", "itemSku": "NLbXbSn1"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 47, "fixedTrialCycles": 83, "graceDays": 81}, "regionData": {"pNkz1b36": [{"currencyCode": "juBywPfN", "currencyNamespace": "ZIgHoZv7", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1999-09-07T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1996-07-25T00:00:00Z", "discountedPrice": 41, "expireAt": "1971-08-11T00:00:00Z", "price": 69, "purchaseAt": "1985-05-03T00:00:00Z", "trialPrice": 66}, {"currencyCode": "NvuJmyZw", "currencyNamespace": "cEYgbZAt", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1990-04-12T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1992-03-04T00:00:00Z", "discountedPrice": 2, "expireAt": "1978-03-30T00:00:00Z", "price": 54, "purchaseAt": "1988-01-28T00:00:00Z", "trialPrice": 39}, {"currencyCode": "wnJw43dm", "currencyNamespace": "C2qoOAfL", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1973-02-12T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1990-03-26T00:00:00Z", "discountedPrice": 29, "expireAt": "1995-03-27T00:00:00Z", "price": 36, "purchaseAt": "1974-08-31T00:00:00Z", "trialPrice": 93}], "7n1coyYG": [{"currencyCode": "q5ww8Tbj", "currencyNamespace": "D4nOUJtc", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1993-09-22T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1995-03-07T00:00:00Z", "discountedPrice": 44, "expireAt": "1988-02-21T00:00:00Z", "price": 97, "purchaseAt": "1999-12-18T00:00:00Z", "trialPrice": 9}, {"currencyCode": "WsmwfiG4", "currencyNamespace": "PUjIjsNM", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1983-03-31T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1997-04-13T00:00:00Z", "discountedPrice": 67, "expireAt": "1982-04-24T00:00:00Z", "price": 68, "purchaseAt": "1980-07-25T00:00:00Z", "trialPrice": 37}, {"currencyCode": "LWQLDJr1", "currencyNamespace": "1smonlW7", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1991-06-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1997-01-18T00:00:00Z", "discountedPrice": 0, "expireAt": "1978-12-10T00:00:00Z", "price": 16, "purchaseAt": "1989-05-17T00:00:00Z", "trialPrice": 3}], "IcdUlL2D": [{"currencyCode": "R65Evx1Z", "currencyNamespace": "A5lPdKyT", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1977-07-06T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1994-06-08T00:00:00Z", "discountedPrice": 49, "expireAt": "1985-10-20T00:00:00Z", "price": 54, "purchaseAt": "1983-06-20T00:00:00Z", "trialPrice": 58}, {"currencyCode": "ab9kaB3q", "currencyNamespace": "6Gfm6vp5", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1984-07-27T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1983-06-07T00:00:00Z", "discountedPrice": 94, "expireAt": "1972-04-24T00:00:00Z", "price": 78, "purchaseAt": "1980-11-11T00:00:00Z", "trialPrice": 15}, {"currencyCode": "AQfYqEIQ", "currencyNamespace": "8PChtQ2B", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1985-03-04T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1975-06-03T00:00:00Z", "discountedPrice": 12, "expireAt": "1984-09-17T00:00:00Z", "price": 37, "purchaseAt": "1987-11-20T00:00:00Z", "trialPrice": 75}]}, "seasonType": "TIER", "sku": "D37bdq7c", "stackable": false, "status": "INACTIVE", "tags": ["0TFwTRvr", "nVpEb9vH", "mA2fDAso"], "targetCurrencyCode": "C9EqAXqD", "targetNamespace": "KOWsFNNu", "thumbnailUrl": "Jiu9e7d2", "useCount": 73}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '9KvYwHaC' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'lBxt1wfg' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'K57vd7ht' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'j4qqaXUv' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '3raI966X' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'N8pzjOsR' --body '{"itemIds": ["CjQlp7PE", "dsrAGnyy", "ycChezg7"]}' --login_with_auth "Bearer foo"
platform-search-items 'lm83GIxq' 'IJTAvDLQ' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'vyCpzZye' --login_with_auth "Bearer foo"
platform-update-item 'gYLsiC2M' 'TL3BuMoJ' --body '{"appId": "cIvR9HCa", "appType": "DEMO", "baseAppId": "meFYQnag", "boothName": "Ldh6rDye", "categoryPath": "L1ycsvcZ", "clazz": "GQhOzP33", "displayOrder": 75, "entitlementType": "DURABLE", "ext": {"gdDehDxp": {}, "aRE11Jri": {}, "fS1mkdgl": {}}, "features": ["fStkVHGK", "r6kd8Xus", "I3TOxbfe"], "images": [{"as": "LCtmQp6i", "caption": "WXDp0l64", "height": 76, "imageUrl": "Sddmqd6g", "smallImageUrl": "2rQ5zLwN", "width": 69}, {"as": "QwymkARi", "caption": "TFGcu1MF", "height": 62, "imageUrl": "KRqP2Bme", "smallImageUrl": "jNft3jFP", "width": 54}, {"as": "IEUNWeQR", "caption": "lZLYwYQR", "height": 45, "imageUrl": "s6jkgWKY", "smallImageUrl": "VGXVcuUI", "width": 47}], "itemIds": ["XA4FwDCo", "xfokX4Lk", "1jgQJT44"], "itemQty": {"6lvwmByF": 4, "2NdLnBML": 61, "hb6vnRZX": 59}, "itemType": "BUNDLE", "listable": true, "localizations": {"8Y3kIQVX": {"description": "aiQJGcP4", "localExt": {"Who0dJW6": {}, "arTlUDMD": {}, "OM4LIAFp": {}}, "longDescription": "arLjYEnM", "title": "w6LYIcBX"}, "tY71y7XJ": {"description": "atETq7hj", "localExt": {"lFXkVeXk": {}, "gq4qdBC7": {}, "leN908GA": {}}, "longDescription": "gYyk7tb4", "title": "j0cfhSEk"}, "BLetJOZf": {"description": "ibU6gVoU", "localExt": {"b2do5uV0": {}, "TfO25Cth": {}, "OKoLouAS": {}}, "longDescription": "BCCJbo10", "title": "quCHm6Sp"}}, "maxCount": 61, "maxCountPerUser": 44, "name": "17bWBqSp", "optionBoxConfig": {"boxItems": [{"count": 68, "itemId": "CtMU75xw", "itemSku": "qAN0BWxL"}, {"count": 47, "itemId": "fl8n6P1o", "itemSku": "xIvOzIsp"}, {"count": 22, "itemId": "Wr2smv74", "itemSku": "32WcfOtK"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 83, "fixedTrialCycles": 95, "graceDays": 13}, "regionData": {"a1yrmsdX": [{"currencyCode": "NKdq4CAQ", "currencyNamespace": "vQGBTtp8", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1973-11-25T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1996-01-18T00:00:00Z", "discountedPrice": 95, "expireAt": "1976-03-07T00:00:00Z", "price": 36, "purchaseAt": "1998-03-23T00:00:00Z", "trialPrice": 11}, {"currencyCode": "YmPNBvyb", "currencyNamespace": "Pgcm2I7V", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1998-08-30T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1984-06-12T00:00:00Z", "discountedPrice": 77, "expireAt": "1974-01-11T00:00:00Z", "price": 70, "purchaseAt": "1989-06-18T00:00:00Z", "trialPrice": 86}, {"currencyCode": "zlgXAoIT", "currencyNamespace": "xXBxAR9E", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1971-03-11T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1998-03-27T00:00:00Z", "discountedPrice": 43, "expireAt": "1972-07-24T00:00:00Z", "price": 100, "purchaseAt": "1994-02-16T00:00:00Z", "trialPrice": 10}], "GZITHBVW": [{"currencyCode": "K6mp6YPo", "currencyNamespace": "e7JadIz9", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1996-08-06T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1979-01-05T00:00:00Z", "discountedPrice": 13, "expireAt": "1977-11-03T00:00:00Z", "price": 45, "purchaseAt": "1975-07-01T00:00:00Z", "trialPrice": 6}, {"currencyCode": "jbDlImXM", "currencyNamespace": "HJX8ORGb", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1974-07-02T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1976-02-05T00:00:00Z", "discountedPrice": 84, "expireAt": "1988-07-06T00:00:00Z", "price": 86, "purchaseAt": "1982-10-26T00:00:00Z", "trialPrice": 78}, {"currencyCode": "pz3QSBNc", "currencyNamespace": "57M7d2mo", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1994-01-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1991-10-24T00:00:00Z", "discountedPrice": 41, "expireAt": "1997-07-19T00:00:00Z", "price": 33, "purchaseAt": "1984-02-25T00:00:00Z", "trialPrice": 45}], "ceq2Mzxr": [{"currencyCode": "R3bPNsg8", "currencyNamespace": "R4hCicJY", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1989-09-14T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1979-03-22T00:00:00Z", "discountedPrice": 35, "expireAt": "1972-07-07T00:00:00Z", "price": 78, "purchaseAt": "1978-05-16T00:00:00Z", "trialPrice": 21}, {"currencyCode": "HqlPOZGy", "currencyNamespace": "AqHyVI9A", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1990-02-05T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1979-10-22T00:00:00Z", "discountedPrice": 81, "expireAt": "1987-06-25T00:00:00Z", "price": 22, "purchaseAt": "1979-08-08T00:00:00Z", "trialPrice": 16}, {"currencyCode": "hl923E2l", "currencyNamespace": "OA7PjtWE", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1988-07-04T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1997-11-02T00:00:00Z", "discountedPrice": 6, "expireAt": "1982-11-06T00:00:00Z", "price": 96, "purchaseAt": "1991-06-10T00:00:00Z", "trialPrice": 56}]}, "seasonType": "PASS", "sku": "Varvz9Es", "stackable": true, "status": "INACTIVE", "tags": ["lHFgbpaP", "avj2dV27", "iOXgA5vs"], "targetCurrencyCode": "3U2fllI0", "targetNamespace": "uHEF9DaS", "thumbnailUrl": "dWGz3rI2", "useCount": 39}' --login_with_auth "Bearer foo"
platform-delete-item 'ZdowlmIT' --login_with_auth "Bearer foo"
platform-acquire-item 'dckUxbOI' --body '{"count": 85, "orderNo": "lABDmXUU"}' --login_with_auth "Bearer foo"
platform-get-app 'WCRUNKo7' --login_with_auth "Bearer foo"
platform-update-app '89kUQCn1' 'lf9YLUth' --body '{"carousel": [{"alt": "UGe9ekMH", "previewUrl": "H2L3qc7G", "thumbnailUrl": "rcuJTRiZ", "type": "image", "url": "jb3V3nM7", "videoSource": "vimeo"}, {"alt": "TJCL3eYB", "previewUrl": "YPl72d7d", "thumbnailUrl": "EuMlvfCl", "type": "image", "url": "MClMpwJ9", "videoSource": "vimeo"}, {"alt": "XmsXFqT6", "previewUrl": "ZHwj2TJW", "thumbnailUrl": "4FS9FduJ", "type": "image", "url": "6F9ilebi", "videoSource": "generic"}], "developer": "ILC6UQ4h", "forumUrl": "fyipQ6DI", "genres": ["Casual", "RPG", "Simulation"], "localizations": {"ZSxGnlUg": {"announcement": "7wr5I8iA", "slogan": "9SbjhDaH"}, "PWckgKYJ": {"announcement": "AiAJEEjg", "slogan": "dYRaJXMG"}, "hcRlBwjZ": {"announcement": "1cDayzvK", "slogan": "n1RSpv00"}}, "platformRequirements": {"dQdAgAUt": [{"additionals": "LfNjcJnk", "directXVersion": "XkZi2bao", "diskSpace": "8tQ4fsdF", "graphics": "hHpm3u5Z", "label": "KrqLeWr9", "osVersion": "MuO9Kq5U", "processor": "WEst4DAf", "ram": "dnnT2QWT", "soundCard": "EsZug9F5"}, {"additionals": "aMXPWEF3", "directXVersion": "LBToVBvC", "diskSpace": "AcVWpDVX", "graphics": "nl7oIldZ", "label": "8mNAM9mF", "osVersion": "Tzb7JgBn", "processor": "tksCfDGm", "ram": "ycBVc6yB", "soundCard": "D0tMdJm0"}, {"additionals": "3bUAbdGR", "directXVersion": "HgLiIEJs", "diskSpace": "PSeGUMcv", "graphics": "cIUWLoTg", "label": "bEK7hx8h", "osVersion": "zvNRBdD7", "processor": "6Dr7vUKw", "ram": "oHKHprP1", "soundCard": "ueKY0HK9"}], "DsTG0drl": [{"additionals": "qOqzFrMj", "directXVersion": "7JLETQZL", "diskSpace": "xba6dkqv", "graphics": "tMOObZg4", "label": "0pUo3i4n", "osVersion": "08gkJ9Sb", "processor": "ozLUFW5C", "ram": "ojuRaR6m", "soundCard": "FgLaZYv7"}, {"additionals": "UEeUyrkT", "directXVersion": "zSpHp2wx", "diskSpace": "ncclr11q", "graphics": "84WOnZxO", "label": "fHIsTdvu", "osVersion": "PFyKrYs6", "processor": "78PeyeQ6", "ram": "c07IZHOk", "soundCard": "eJOZb7Kj"}, {"additionals": "NnlfeeNF", "directXVersion": "GVw6kQON", "diskSpace": "a909noGN", "graphics": "5Y34RU6D", "label": "062kVMfu", "osVersion": "zcIBAw6s", "processor": "DzoMzkby", "ram": "IqkTOc3s", "soundCard": "tzEfqvQ3"}], "KOqqLvKa": [{"additionals": "P8yV7I2i", "directXVersion": "FLay5WmR", "diskSpace": "hXTQQLCn", "graphics": "xGzuzU2E", "label": "jkJxUykz", "osVersion": "mAFsqbiG", "processor": "wdeu8Bua", "ram": "1CajFC8A", "soundCard": "ntwkv1VH"}, {"additionals": "PJ9E3DIo", "directXVersion": "fZN3g2OW", "diskSpace": "TZEEq5k5", "graphics": "h4CD3V6n", "label": "bNQi6fVO", "osVersion": "xpp2hwDW", "processor": "IawEKUTQ", "ram": "cMG2UkUs", "soundCard": "kuw0cTqG"}, {"additionals": "kvCFUuUB", "directXVersion": "D4HAsIQw", "diskSpace": "M6FT86MS", "graphics": "BNKxbyiI", "label": "P5QgrlvX", "osVersion": "4xaGU0v2", "processor": "EbjNwGHO", "ram": "AfzrMXud", "soundCard": "F77Scc46"}]}, "platforms": ["Windows", "Android", "Android"], "players": ["LocalCoop", "LocalCoop", "MMO"], "primaryGenre": "Indie", "publisher": "4iE08xBr", "releaseDate": "1971-06-05T00:00:00Z", "websiteUrl": "ZM4JDnLq"}' --login_with_auth "Bearer foo"
platform-disable-item 'jSPNYAhF' '5JFtEHyd' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'q5gIxeqa' --login_with_auth "Bearer foo"
platform-enable-item 'JWwXd83A' 'xaddMc1p' --login_with_auth "Bearer foo"
platform-feature-item 'FNrFQMCU' 'qtGzSRxd' 'CTiQSiFF' --login_with_auth "Bearer foo"
platform-defeature-item 'g1LHzVLt' 'AILU21yJ' 'Fm06kDc7' --login_with_auth "Bearer foo"
platform-get-locale-item 'hRzivuHO' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'BkQXI99O' 'KKdd25rl' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 79, "comparison": "isGreaterThanOrEqual", "name": "iMBWuTsA", "predicateType": "SeasonTierPredicate", "value": "dKROXw0Y", "values": ["G7Rt4Bwv", "vlLKjGvX", "SRzKdfxq"]}, {"anyOf": 59, "comparison": "includes", "name": "llNIDds3", "predicateType": "EntitlementPredicate", "value": "vLQhtjWM", "values": ["iHqX5dhD", "vsJ6XA8b", "IT51BMG4"]}, {"anyOf": 58, "comparison": "is", "name": "rswlwmGE", "predicateType": "EntitlementPredicate", "value": "THKeMUgC", "values": ["zovODHN2", "vYIGbsFk", "YVpAUwEa"]}]}, {"operator": "and", "predicates": [{"anyOf": 8, "comparison": "isGreaterThanOrEqual", "name": "PphpVUHy", "predicateType": "SeasonTierPredicate", "value": "QJlUYmJ8", "values": ["x8G7blgs", "5l5cQaVX", "BtqAXCn9"]}, {"anyOf": 91, "comparison": "isLessThanOrEqual", "name": "AA9iAVUK", "predicateType": "SeasonTierPredicate", "value": "qJA6Uhks", "values": ["6eKs1PkU", "rSPc8zJh", "2DL8A9bg"]}, {"anyOf": 26, "comparison": "isLessThanOrEqual", "name": "YiXSaWWV", "predicateType": "SeasonPassPredicate", "value": "Oio8bLSr", "values": ["Pn8R3b0k", "xC7XIi2W", "sx3UgS5u"]}]}, {"operator": "and", "predicates": [{"anyOf": 6, "comparison": "excludes", "name": "Y64ClB0R", "predicateType": "SeasonTierPredicate", "value": "lqkQQubD", "values": ["0opoCgBY", "rw1A1E4P", "GXiFHEa5"]}, {"anyOf": 40, "comparison": "is", "name": "WElJIuqu", "predicateType": "EntitlementPredicate", "value": "iFeONtMb", "values": ["TQn7g8cr", "7bva7nMK", "3JcEAXkQ"]}, {"anyOf": 20, "comparison": "isLessThan", "name": "omyZoPBN", "predicateType": "SeasonPassPredicate", "value": "3ZxP3Fox", "values": ["cFIGXfFE", "6NknVN16", "2DiyGH0m"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'ngNBMdrk' --body '{"orderNo": "q7ecErbi"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "UWrUKHSM", "name": "9pRZCmAi", "status": "INACTIVE", "tags": ["jLLKUiSO", "lRK0uyUX", "XoKz46cm"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'QUE5DXuJ' --login_with_auth "Bearer foo"
platform-update-key-group 'xAOReIY0' --body '{"description": "V217rrRP", "name": "Baab7Nwx", "status": "INACTIVE", "tags": ["936AQEqq", "doOuj7py", "277s7gTz"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'kX7EzCB7' --login_with_auth "Bearer foo"
platform-list-keys 'pNYOXClQ' --login_with_auth "Bearer foo"
platform-upload-keys 'PVqhuRey' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'o6TOnraf' --login_with_auth "Bearer foo"
platform-refund-order 'SDJ8qtol' --body '{"description": "SJP5iKyR"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "QY6D09DR", "privateKey": "L1Zdcuki"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "fH30tJsV", "currencyNamespace": "kqe2R07r", "customParameters": {"8pq6NcdK": {}, "QLM3C5EF": {}, "TMXFSb0m": {}}, "description": "Gx0IyXGA", "extOrderNo": "kcAE7e2u", "extUserId": "AmA65SRS", "itemType": "MEDIA", "language": "ZpsX", "metadata": {"f5C1RdtQ": "QVU5Yt8D", "WHbHT5zW": "aOp9HKjr", "fykZuXlI": "KwsALrDI"}, "notifyUrl": "B6000Qvu", "omitNotification": true, "platform": "8bKQGMQs", "price": 9, "recurringPaymentOrderNo": "3YRSXltR", "region": "DcE0ytbi", "returnUrl": "4aQLKFYg", "sandbox": true, "sku": "RN4rhS0z", "subscriptionId": "J2cXmHR0", "targetNamespace": "Ay6eNh82", "targetUserId": "kcUhmjlE", "title": "U96jzkrd"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '6J9erXJA' --login_with_auth "Bearer foo"
platform-get-payment-order 'RoO4MU1s' --login_with_auth "Bearer foo"
platform-charge-payment-order 'qvGxBv1K' --body '{"extTxId": "XQUuwOId", "paymentMethod": "06LlWgQO", "paymentProvider": "STRIPE"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'Sn2cmhfD' --body '{"description": "h2B594SB"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'IQcniOK2' --body '{"amount": 13, "currencyCode": "KzQrXnZH", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 99, "vat": 63}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'XaA7adrc' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Nintendo' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Other' --body '{"allowedBalanceOrigins": ["Other", "GooglePlay", "Xbox"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "EfVepTav", "eventTopic": "0OACxhtr", "maxAwarded": 70, "maxAwardedPerUser": 8, "namespaceExpression": "hTGgCMw1", "rewardCode": "lBLgKtzl", "rewardConditions": [{"condition": "ts9HfgHG", "conditionName": "YxT5WiIL", "eventName": "C77eWf1Y", "rewardItems": [{"duration": 0, "itemId": "kEWb8t9o", "quantity": 5}, {"duration": 31, "itemId": "IIF941tQ", "quantity": 2}, {"duration": 8, "itemId": "yEas5pkk", "quantity": 76}]}, {"condition": "8u4lBtMR", "conditionName": "nX15ecz4", "eventName": "SsTZmRjT", "rewardItems": [{"duration": 97, "itemId": "js54qM6C", "quantity": 10}, {"duration": 87, "itemId": "IX3mA0Z0", "quantity": 33}, {"duration": 67, "itemId": "BxEwRyWv", "quantity": 49}]}, {"condition": "U5zanFSm", "conditionName": "vftglYWb", "eventName": "0gFQGsDU", "rewardItems": [{"duration": 94, "itemId": "Yl5IBwDE", "quantity": 52}, {"duration": 59, "itemId": "CC07dhgg", "quantity": 44}, {"duration": 70, "itemId": "tCCOnp5t", "quantity": 7}]}], "userIdExpression": "voOceWKF"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'Ukix8bzg' --login_with_auth "Bearer foo"
platform-update-reward 'xu8vk9xj' --body '{"description": "bQOVNXfq", "eventTopic": "Ge6wBNBd", "maxAwarded": 32, "maxAwardedPerUser": 41, "namespaceExpression": "rpWMuMwU", "rewardCode": "h5ZFxGtA", "rewardConditions": [{"condition": "p3bshv2s", "conditionName": "Z6EUYlL3", "eventName": "DrXiGPWX", "rewardItems": [{"duration": 60, "itemId": "Qp46OMiB", "quantity": 72}, {"duration": 84, "itemId": "Zmrxoxn0", "quantity": 32}, {"duration": 34, "itemId": "wc8kLxU8", "quantity": 68}]}, {"condition": "nCsXrn6F", "conditionName": "Atidsut8", "eventName": "rA2LNASC", "rewardItems": [{"duration": 38, "itemId": "DMmV0UiG", "quantity": 28}, {"duration": 20, "itemId": "Rx6TQtme", "quantity": 51}, {"duration": 90, "itemId": "IVtyonFR", "quantity": 12}]}, {"condition": "x0bjwRvm", "conditionName": "JEFKcS7u", "eventName": "znTiaZSe", "rewardItems": [{"duration": 13, "itemId": "vM62Tmsq", "quantity": 86}, {"duration": 55, "itemId": "wB8eBIY4", "quantity": 28}, {"duration": 82, "itemId": "H63L4BjG", "quantity": 93}]}], "userIdExpression": "LtzQu5Pl"}' --login_with_auth "Bearer foo"
platform-delete-reward '6E5ChoSG' --login_with_auth "Bearer foo"
platform-check-event-condition 'NB2wH1tq' --body '{"payload": {"7n2ihNeL": {}, "mELxTLxq": {}, "esDTYLRW": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'c2fOU4HN' --body '{"conditionName": "M95KXMy2", "userId": "9n63IjDo"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "ML7tWkp1", "defaultRegion": "vjz0DTml", "description": "WQ5BrM6q", "supportedLanguages": ["PwzJE8S5", "j1VEhEap", "wOQorW4W"], "supportedRegions": ["nTa6BJ6N", "uD5Rm4zV", "T4YOuAgH"], "title": "FBViiIFY"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'NkdqDGvD' --login_with_auth "Bearer foo"
platform-update-store 'R43RpZhS' --body '{"defaultLanguage": "55z6OnEq", "defaultRegion": "qf1bzVVx", "description": "2kgWwf88", "supportedLanguages": ["r96D9hGO", "vIkPlRDn", "iQ115KeW"], "supportedRegions": ["9xp76fey", "hvPH5yyR", "YssmtBhp"], "title": "okbXZ0kz"}' --login_with_auth "Bearer foo"
platform-delete-store 'xJoI146p' --login_with_auth "Bearer foo"
platform-query-changes 'QMaZ0kEK' --login_with_auth "Bearer foo"
platform-publish-all '9OJ5Kk7Y' --login_with_auth "Bearer foo"
platform-publish-selected 'njACTrzK' --login_with_auth "Bearer foo"
platform-select-all-records 'p9zdooHc' --login_with_auth "Bearer foo"
platform-get-statistic 'nzUiaZ1C' --login_with_auth "Bearer foo"
platform-unselect-all-records 'JVusg0di' --login_with_auth "Bearer foo"
platform-select-record 'J3Lk0dJ7' 'RqhTpqA8' --login_with_auth "Bearer foo"
platform-unselect-record 'IlLvZ7Ri' 'miBVPN73' --login_with_auth "Bearer foo"
platform-clone-store 'COZvoTvH' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'R5m5dW0W' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'c4wUet9Z' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'vagHgMwP' --body '{"orderNo": "Xg9imwpW"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'wL6Z5EUB' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'H9TaiaN3' --body '{"count": 1, "orderNo": "fY2zsP9L"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'qX9Gmkk0' --body '{"achievements": [{"id": "U6unXpGJ", "value": 57}, {"id": "2MX1lb72", "value": 42}, {"id": "jmrcbl94", "value": 71}], "steamUserId": "Vv2pdaPe"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '1PzLQ2Zx' '2SMdyhgk' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'QV0hTgKU' --body '{"achievements": [{"id": "ptmPpuaz", "percentComplete": 82}, {"id": "HS4y7RfY", "percentComplete": 78}, {"id": "mgNQNJRm", "percentComplete": 58}], "serviceConfigId": "6UmSCliw", "titleId": "UjKeW70U", "xboxUserId": "g3XGTCQ2"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'EovLoa1D' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '5eBgWlrE' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'IUowDUzW' --login_with_auth "Bearer foo"
platform-anonymize-integration 'Wt1uCyxt' --login_with_auth "Bearer foo"
platform-anonymize-order 'cFdnVt2x' --login_with_auth "Bearer foo"
platform-anonymize-payment 'NnWuOD32' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'AuV54hAo' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'cnG36YrU' --login_with_auth "Bearer foo"
platform-query-user-entitlements '1nujmIKe' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'CD3Tjhww' --body '[{"endDate": "1996-06-30T00:00:00Z", "grantedCode": "PufLiT7a", "itemId": "tZU5PQuk", "itemNamespace": "cPkHsXB8", "language": "PBj", "quantity": 77, "region": "PnQ8aZ58", "source": "IAP", "startDate": "1985-03-04T00:00:00Z", "storeId": "9BV2GdlK"}, {"endDate": "1977-08-14T00:00:00Z", "grantedCode": "4NfqpY3V", "itemId": "FUbafRHA", "itemNamespace": "ehIzQgk1", "language": "YaM-965", "quantity": 50, "region": "vvRu1JXm", "source": "REDEEM_CODE", "startDate": "1998-03-22T00:00:00Z", "storeId": "4V6aQYPb"}, {"endDate": "1989-04-21T00:00:00Z", "grantedCode": "W5z3ujUh", "itemId": "zZNawcwM", "itemNamespace": "MpYjDRtu", "language": "YJOX-rkKu-883", "quantity": 40, "region": "oC5cxkxv", "source": "REWARD", "startDate": "1971-08-17T00:00:00Z", "storeId": "xVjVOFZw"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'zCJt9BNP' 'JjPvWHOF' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'u33GAdYM' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'mxzLcOhh' '8emv4Q5Q' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'gZPSBQoP' 'BzAqyxQw' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'IYN5eYW3' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'c8fQ9ONV' '["dzgHs0er", "21rIjzDt", "lg1Zg5Rz"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'oY2ekUfz' '6Vv4DW9X' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'CV4nAbMM' '50eLAmvH' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'b5vAJuKQ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'WpsaC74c' 'MRXiimSR' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements '9dhpvpK8' 'hAjCZjLB' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'cSE5FxPb' 'JNPmqKiF' --login_with_auth "Bearer foo"
platform-update-user-entitlement '8uBCSyo2' 'diSt5bML' --body '{"endDate": "1971-12-04T00:00:00Z", "nullFieldList": ["gXj7JBJ6", "Akn2lAg9", "MmJOEvM3"], "startDate": "1984-03-27T00:00:00Z", "status": "INACTIVE", "useCount": 91}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'YGHuHpe7' 'ixNUkMFR' --body '{"options": ["N7ZaM9xw", "YHPg4iSh", "7Dse6NvT"], "requestId": "hEyYAECU", "useCount": 69}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'MdA56nKc' 'w9c4CHy6' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'mKSebUxE' 'PD8mp6bL' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'ChWDvR1a' 'NgeM8I2E' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'GVb63EGv' 'qsLxfsem' --login_with_auth "Bearer foo"
platform-fulfill-item 'asKIgNvu' --body '{"duration": 22, "endDate": "1988-01-06T00:00:00Z", "itemId": "0RB2eyAe", "itemSku": "QJGu9PbT", "language": "BMk3CbxG", "order": {"currency": {"currencyCode": "OegRL8we", "currencySymbol": "38aoSAxe", "currencyType": "VIRTUAL", "decimals": 0, "namespace": "NBgd4pac"}, "ext": {"8cimWHcR": {}, "p4oAaHMn": {}, "2OjvdsN8": {}}, "free": true}, "orderNo": "EBNzHkH4", "origin": "Stadia", "quantity": 12, "region": "ZbZf14Ns", "source": "PROMOTION", "startDate": "1998-01-30T00:00:00Z", "storeId": "rdjySSA9"}' --login_with_auth "Bearer foo"
platform-redeem-code 'YeO5NNEn' --body '{"code": "5qktYPaM", "language": "upi-XldT_880", "region": "LkGlMrfc"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'tjZyMO5r' --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "8FqRue7n", "namespace": "B5xFOD4v"}, "item": {"itemId": "KlbmGO1G", "itemSku": "W59TnGyE", "itemType": "kAbwdbYl"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "VBgqCnVQ", "namespace": "yaHpjEsW"}, "item": {"itemId": "r8OWq2K6", "itemSku": "jR3n7Ngx", "itemType": "z1U574lL"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "7pU0VdYr", "namespace": "YgINIsYE"}, "item": {"itemId": "qhhWXDel", "itemSku": "BeOXZhC4", "itemType": "bRM1CZGW"}, "quantity": 78, "type": "CURRENCY"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '8KmDdpUE' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'uulFscMZ' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'B7VGnc5s' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'YIOnqHty' --body '{"itemIdentityType": "ITEM_ID", "language": "DW", "productId": "FFVMDAgn", "region": "gjs36ble", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'E6MUoaSZ' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'WpQ5fcFg' --body '{"currencyCode": "SqoeXaCE", "currencyNamespace": "E7x8SHDE", "discountedPrice": 91, "ext": {"gUrf4v1M": {}, "GlpmqXah": {}, "122sRPZd": {}}, "itemId": "y27gFuu9", "language": "vYNhvw4B", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 43, "quantity": 93, "region": "ledH3p1W", "returnUrl": "ESo6aVXi", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'juZI1i6s' 'p737Ep1U' --login_with_auth "Bearer foo"
platform-get-user-order 'rSxVQrzC' 'Xvbr72VC' --login_with_auth "Bearer foo"
platform-update-user-order-status 'T9sSM8q6' 'vu9ImRs8' --body '{"status": "CHARGEBACK", "statusReason": "e5aDTIAp"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'RONpkAwd' 'Fqje0EAI' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'qm3eWZyK' 'IDnHfkPq' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'h1m9p2FT' 'O4GE3Mye' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'AFcMdVez' 'kQoWQaJk' --body '{"additionalData": {"cardSummary": "MglKOJtF"}, "authorisedTime": "1971-07-01T00:00:00Z", "chargebackReversedTime": "1979-10-03T00:00:00Z", "chargebackTime": "1984-09-26T00:00:00Z", "chargedTime": "1982-03-17T00:00:00Z", "createdTime": "1977-02-01T00:00:00Z", "currency": {"currencyCode": "12x4RVxU", "currencySymbol": "1QpFMtuQ", "currencyType": "REAL", "decimals": 82, "namespace": "WL3oTqXp"}, "customParameters": {"sFqmXL1r": {}, "FyAV9E8W": {}, "jyujujD0": {}}, "extOrderNo": "b0lnxUlg", "extTxId": "FtL6vMbS", "extUserId": "Ot108aiZ", "issuedAt": "1976-08-12T00:00:00Z", "metadata": {"QhCGVRun": "vtQ3dM3M", "uDldbDBJ": "VIqeywPZ", "A8AeyrfF": "G5q9hTq1"}, "namespace": "ko5nMMpf", "nonceStr": "LD624niX", "paymentMethod": "D78Q2MDe", "paymentMethodFee": 71, "paymentOrderNo": "1M4dIsfe", "paymentProvider": "ADYEN", "paymentProviderFee": 10, "paymentStationUrl": "i4yHBtJJ", "price": 30, "refundedTime": "1971-06-17T00:00:00Z", "salesTax": 35, "sandbox": true, "sku": "CTctLnvA", "status": "REFUND_FAILED", "statusReason": "mIaanjTS", "subscriptionId": "CihcAbJG", "subtotalPrice": 98, "targetNamespace": "SG0MH9p1", "targetUserId": "ivoViScU", "tax": 35, "totalPrice": 32, "totalTax": 50, "txEndTime": "1971-08-26T00:00:00Z", "type": "wt3YppnP", "userId": "PSFWtzgb", "vat": 13}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'uEktlt8W' 'Qy7NuUYR' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'uEM1Bxqz' --body '{"currencyCode": "tBAhZjAi", "currencyNamespace": "r2MGwUS0", "customParameters": {"x6EjAKvL": {}, "hlXrM4eS": {}, "JtuRZI9b": {}}, "description": "zcVQ86ng", "extOrderNo": "wV7XsudU", "extUserId": "VRp6lOr2", "itemType": "COINS", "language": "Uirj-810", "metadata": {"TmhqeQDW": "hOfEYpMa", "wO0Bi1M3": "LhvhaTqy", "VnImjvFf": "hEsrG8gW"}, "notifyUrl": "8cq1dIdJ", "omitNotification": false, "platform": "UxWrdvEr", "price": 80, "recurringPaymentOrderNo": "qKrhcl7s", "region": "XOxaNJZ5", "returnUrl": "6f6NhtbG", "sandbox": true, "sku": "TBMdjvGu", "subscriptionId": "MUMFZFn2", "title": "YSQbOxmv"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'tzzNfOtz' 'ICswtDn0' --body '{"description": "TNMds2PF"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'qhTtlrBD' --body '{"code": "csDO6ADs", "orderNo": "tuEFUFSl"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'eSlAu1rM' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'GAzdx9ny' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'Mp6kGIkC' --body '{"grantDays": 77, "itemId": "nQq40p1b", "language": "C3tVRGQo", "reason": "hFMoT9ac", "region": "vJiRTWkK", "source": "32l2I5Kj"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'Lp1Lqsfe' 'tqnhVgfX' --login_with_auth "Bearer foo"
platform-get-user-subscription 'undWswDs' 'XccDsQRJ' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'YaNBrJkd' 'd9jIwPdG' --login_with_auth "Bearer foo"
platform-cancel-subscription 'vZXAehot' 'BqW4Y4Fg' --body '{"immediate": true, "reason": "Z1raLh9N"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'OnEEFb6p' 'ZHRobGKw' --body '{"grantDays": 25, "reason": "eNWF4asl"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'ocCqQtiT' 'x5ghLQOs' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'REikcS4n' 'tmCT4sxk' --body '{"additionalData": {"cardSummary": "V5heFFP9"}, "authorisedTime": "1999-02-06T00:00:00Z", "chargebackReversedTime": "1991-01-04T00:00:00Z", "chargebackTime": "1978-10-16T00:00:00Z", "chargedTime": "1976-08-29T00:00:00Z", "createdTime": "1975-07-07T00:00:00Z", "currency": {"currencyCode": "X5k0dgvI", "currencySymbol": "Uo40mUoJ", "currencyType": "VIRTUAL", "decimals": 59, "namespace": "ZvGe1Q1q"}, "customParameters": {"fnZrTsTP": {}, "Jg1cN866": {}, "F7kSD1yS": {}}, "extOrderNo": "xe0ygthO", "extTxId": "uH7HQ470", "extUserId": "xTE6Jh67", "issuedAt": "1977-06-19T00:00:00Z", "metadata": {"YtUSSEQh": "3gTAokkG", "qWvVEG9A": "JP5KfLHQ", "nveJfvLo": "ZiB9KfgP"}, "namespace": "aGa3wOl6", "nonceStr": "FIyiFBPg", "paymentMethod": "483DrcP0", "paymentMethodFee": 77, "paymentOrderNo": "pEnzbfL6", "paymentProvider": "CHECKOUT", "paymentProviderFee": 57, "paymentStationUrl": "e3Ku3jqB", "price": 41, "refundedTime": "1991-02-20T00:00:00Z", "salesTax": 77, "sandbox": false, "sku": "yCwn6X8O", "status": "REFUNDED", "statusReason": "wcx94V10", "subscriptionId": "orWl4YN3", "subtotalPrice": 95, "targetNamespace": "xDTqpJjJ", "targetUserId": "2ylC1CEA", "tax": 52, "totalPrice": 86, "totalTax": 55, "txEndTime": "1995-12-10T00:00:00Z", "type": "DWTdMa44", "userId": "2LSor6IE", "vat": 74}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '5vUwkklE' 'TNOR0eSP' --body '{"count": 48, "orderNo": "riRBnXVn"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'OOHXOAwB' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'AFHr7U8U' 'lfdLoQnw' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'ACpf1Oci' 'zBFMZems' --body '{"amount": 59, "expireAt": "1988-08-18T00:00:00Z", "origin": "Nintendo", "reason": "CioP08yF", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '0nbFDD3F' 'FfujhG4L' --body '{"amount": 31, "walletPlatform": "Steam"}' --login_with_auth "Bearer foo"
platform-sync-orders 'VnTpTVOp' 'Ty0XKvoI' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["aRlpHhcD", "OSIuir83", "ZRIq2VLZ"], "apiKey": "YzOh1z0A", "authoriseAsCapture": false, "blockedPaymentMethods": ["B4T4Ap8J", "yqJ4Hu0N", "d4yZd8Of"], "clientKey": "iIcXHCsg", "dropInSettings": "86wpBypl", "liveEndpointUrlPrefix": "RfOoxWG1", "merchantAccount": "uwYWx2fL", "notificationHmacKey": "XL0sVBsw", "notificationPassword": "zR8YI17T", "notificationUsername": "E1IGAHJN", "returnUrl": "Y6OuLP6Q", "settings": "P9MdPYlV"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "YfcsFS4h", "privateKey": "Hdq8ggvS", "publicKey": "ZoihQsuS", "returnUrl": "F9Do4k32"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "gKoJJxwQ", "secretKey": "hkGmlOUo"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "UUGsngWg", "clientSecret": "VdafF8W3", "returnUrl": "SPXZ1e2h", "webHookId": "Pv0tOHom"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["Np3cwzxp", "OOd6YtKw", "RXYgp9DP"], "publishableKey": "oEDMDDJh", "secretKey": "cQ4EoSSA", "webhookSecret": "kYgHlyoL"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "6Ixml9sQ", "key": "jhkni7hT", "mchid": "FEw3Ragj", "returnUrl": "HfP5As6J"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "Cr372m5F", "flowCompletionUrl": "Drn7FMhQ", "merchantId": 48, "projectId": 93, "projectSecretKey": "BHdtNmPD"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '7IZEGZvG' --login_with_auth "Bearer foo"
platform-update-adyen-config 'AAiuwjxg' --body '{"allowedPaymentMethods": ["Fdpc1cT5", "GsVNULrb", "68Wgsg11"], "apiKey": "LEwWaPEv", "authoriseAsCapture": true, "blockedPaymentMethods": ["SUCqbmjO", "Ke8oQqrZ", "SDw9wV0V"], "clientKey": "fMRQic8P", "dropInSettings": "rUcbouLP", "liveEndpointUrlPrefix": "w0G88ZSH", "merchantAccount": "xqWDH9dh", "notificationHmacKey": "wGMBGnQd", "notificationPassword": "j5sqGI6i", "notificationUsername": "sRAzbWCh", "returnUrl": "ZHs30NWn", "settings": "FkrOoQhm"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'gDe755Jd' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '9qsdgYcn' --body '{"appId": "ppo3jgQ3", "privateKey": "S9g6xhNL", "publicKey": "fBQH0jTM", "returnUrl": "tSJWvNid"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'wNSzBi0X' --login_with_auth "Bearer foo"
platform-update-checkout-config '4Lo0g6Gq' --body '{"publicKey": "oGKEDWDx", "secretKey": "poWvPAr8"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'xyYQjjOJ' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'vZNsudYv' --body '{"clientID": "uvwIVKkg", "clientSecret": "Qqz39QaZ", "returnUrl": "scWQMmCT", "webHookId": "YvVS0Md8"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'MCwn6uNn' --login_with_auth "Bearer foo"
platform-update-stripe-config 'm4JpRI76' --body '{"allowedPaymentMethodTypes": ["t0XB82iA", "A4Jbonjb", "iwJr8jbi"], "publishableKey": "GmzRPQIR", "secretKey": "a1PCy801", "webhookSecret": "NKrJyogw"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'hY0IevlZ' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'm45jmvWo' --body '{"appId": "WqbAKjS7", "key": "oMQcGRBj", "mchid": "HjdfW87E", "returnUrl": "J6ClXNT4"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'wOwIJUK3' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'V5kkiFn5' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'iB8nsTa3' --body '{"apiKey": "WXRAxd59", "flowCompletionUrl": "GUS58lnn", "merchantId": 97, "projectId": 42, "projectSecretKey": "nauFJXYB"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'RKvUEHVY' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'VN6sp5ei' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "3DMR0R18", "region": "NqhB5u2V", "sandboxTaxJarApiToken": "zv6JLOU2", "specials": ["PAYPAL", "ADYEN", "STRIPE"], "taxJarApiToken": "RoL4jpQs", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'WtfTnSra' --body '{"aggregate": "ADYEN", "namespace": "pbSPjCcu", "region": "s25sKBVG", "sandboxTaxJarApiToken": "iWqnr2sK", "specials": ["ADYEN", "ADYEN", "PAYPAL"], "taxJarApiToken": "bKMYCNck", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '5W9RBQv6' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "aw5TfSIY", "taxJarApiToken": "jeuFUUtW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"YwNo7Jqm": "xzYG38tf", "xEhGPCTV": "JwyTScnu", "HyyAwhxb": "CWo6Y2bx"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'fSo7h3vY' 'nesnNTkK' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'm6oJjr9T' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'oaK2qKtV' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'ANaJgpNL' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '5Kzj3YKC' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'MySLVdNM' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'sf4ZUup6' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["qrIGVIar", "wkil8jRf", "qRo9ZNQT"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'VVVb46pr' '0FrKYc8N' --login_with_auth "Bearer foo"
platform-public-get-app 'j7prMNkA' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'pYMUw7t6' --login_with_auth "Bearer foo"
platform-public-get-item '0pvqI5KR' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "7uM0E2I3", "paymentProvider": "ADYEN", "returnUrl": "ID4tyrrQ", "ui": "4Y7wDXyb", "zipCode": "7oqPbRbX"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'EqqRibkT' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'z8wKFlOy' --login_with_auth "Bearer foo"
platform-pay 'Hq0Ta74o' --body '{"token": "SUTv59Ks"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'qliDfw83' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'MlLA39NX' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'yyEGis2W' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '7rpNjeKI' 'mT3DpBYa' 'PAYPAL' 'nkvTz0UQ' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'FdK41Hp7' 'WXPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'M7uB575q' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'ClGvjUQk' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'jAMOw9Ff' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Xeti5M78' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '4ySxCofM' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet '9ZP1Yivc' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'sie0ZooI' --body '{"epicGamesJwtToken": "P2LZriQZ"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'xZhb8crx' --body '{"serviceLabel": 32}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'pSsYYwE8' --body '{"appId": "KfEhDzwk", "steamId": "1ewDAe1r"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'gpKIkMFS' --body '{"xstsToken": "7glqgI28"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'cGzq7spJ' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'fsb0pBif' '5dkl397H' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type '3uMzYYqT' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'zkFwxAIM' 'AJASKBc0' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'Xdfg9Ybd' 'pznrsj9Z' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'ZNL7mjVk' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'swF7oOFG' 'WBJLjYZ7' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'HWw5D2f2' 'ms5deLh9' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '4bVpOH38' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'r7EfqQm8' '04Wjis4M' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'yrHzHpOH' 'aOSKISv7' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'XggDWBZS' 'SVsmzhyC' --body '{"options": ["WaKoJUFz", "A1FRTHN6", "AeX24SCh"], "requestId": "7lxPLx47", "useCount": 58}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'U8vSavrm' --body '{"code": "2TUG8suw", "language": "ba_601", "region": "RkNAS0xP"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'cWkX2jFh' --body '{"excludeOldTransactions": false, "language": "MnV", "productId": "jdOJR6sa", "receiptData": "yLzxkhXx", "region": "f4FsfGI1", "transactionId": "6TP3FGkS"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'n22O8utr' --body '{"epicGamesJwtToken": "SB7X3gDo"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '8BU76ZyG' --body '{"autoAck": true, "language": "Iedn", "orderId": "ZrESXZva", "packageName": "7wVS8Kv3", "productId": "aw9pCuIg", "purchaseTime": 53, "purchaseToken": "levymRsq", "region": "wg9O8mow"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'rUlh36Kh' --body '{"currencyCode": "2PBIE044", "price": 0.2583192764131508, "productId": "6UwLgjdq", "serviceLabel": 79}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'x2cvANwB' --body '{"appId": "cZLjrgEj", "language": "cFw_avBW", "region": "6Dwm2FCo", "stadiaPlayerId": "nPCyMUn3"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'rslNMH7W' --body '{"appId": "nRdsbwYy", "currencyCode": "yh5oszHJ", "language": "YgBo_YA", "price": 0.15574700359950433, "productId": "WkSuPsAy", "region": "H38UHbd6", "steamId": "AZn3qWNa"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'WOLzz2wP' --body '{"gameId": "Yc5k4j8v", "language": "Mil-BYDV", "region": "ff07uFkc"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'waY5RbYZ' --body '{"currencyCode": "uiT7hSxm", "price": 0.19656502224180805, "productId": "paECssvf", "xstsToken": "BvgMHxbh"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'GsX1Ks7t' --login_with_auth "Bearer foo"
platform-public-create-user-order '2RbTLeI3' --body '{"currencyCode": "fQFG6rjU", "discountedPrice": 1, "ext": {"UGIev5gt": {}, "UP3CZZgz": {}, "tFHtF2Se": {}}, "itemId": "QBWfYx8H", "language": "UadU_lG", "price": 67, "quantity": 34, "region": "bT183xPf", "returnUrl": "zoM881EO"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'TO0jmEd4' 'gMO4OkYv' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'dK87PBjy' 'IBUpeVRU' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'MjJURX61' 'Iq8pGH4L' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'gwN54Q6u' 'hZmRno2P' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'lg6dhMme' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'WGkIlqbw' 'paypal' 'hbIJnv3i' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'VMOd1OHo' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'j151NCKR' --body '{"currencyCode": "UpY6Y4iL", "itemId": "vIZrHznx", "language": "GKbJ_ef", "region": "RgGXX9pi", "returnUrl": "RJzwXvIv", "source": "LhJCqMFg"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'wVGhCAyn' 'tbiwdeBx' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'NfNykE7g' 'bEaPMKCQ' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'snyJDtB3' 't3PDJt2H' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'zMSni68n' 'CtOKxgx9' --body '{"immediate": true, "reason": "bmkXqNXa"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'DZO0Vs8r' 'iOkKTf0P' --login_with_auth "Bearer foo"
platform-public-get-wallet 'kfDnncV7' 'qsmC0zQ0' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'gzBZPgQw' 'rVtH55Io' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'GwADfveN' --body '{"itemIds": ["iy6JyqtW", "AnctfT6x", "Glvzs46D"]}' --login_with_auth "Bearer foo"
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
echo "1..360"

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
    --body '{"context": {"item": {"appId": "Af2IiWak", "appType": "SOFTWARE", "baseAppId": "kReoefJd", "boothName": "S9Z0TpQ5", "boundItemIds": ["FxHmZIP8", "BSh6DTlQ", "Q0lGUxnJ"], "categoryPath": "gyrOW260", "clazz": "iUihbIAn", "createdAt": "1987-01-08T00:00:00Z", "description": "7WT9f3vi", "displayOrder": 52, "entitlementType": "CONSUMABLE", "ext": {"uajbPDTF": {}, "g2m7sCno": {}, "RqJSTtDX": {}}, "features": ["QHuPzS0k", "EigXpiCE", "oWpUrzr1"], "fresh": true, "images": [{"as": "oXlUO9Wv", "caption": "LnrYrqnb", "height": 12, "imageUrl": "QzIQ62pR", "smallImageUrl": "sX2t958M", "width": 47}, {"as": "InjoTVbC", "caption": "ZZPcw72X", "height": 9, "imageUrl": "TNPsSJmS", "smallImageUrl": "iazylTwq", "width": 13}, {"as": "xIQIzyIA", "caption": "naQ5aIlg", "height": 87, "imageUrl": "mc3dM4Ah", "smallImageUrl": "4kavwJrr", "width": 46}], "itemId": "Ayvd3wSb", "itemIds": ["5CN5hqey", "9ztOqo4q", "bCQtXMq9"], "itemQty": {"hah3Qdo5": 90, "gQRfr5cw": 9, "OrPFy39b": 45}, "itemType": "SUBSCRIPTION", "language": "GnBrr3Gm", "listable": false, "localExt": {"e5Qu05uq": {}, "YJWvRCRI": {}, "aUZTdbiG": {}}, "longDescription": "e48Ewc3v", "maxCount": 100, "maxCountPerUser": 13, "name": "ZI7D2xIs", "namespace": "i7QOdxgz", "optionBoxConfig": {"boxItems": [{"count": 97, "itemId": "fq3V8VlA", "itemSku": "fZon3vx7"}, {"count": 84, "itemId": "j8Qz1Ims", "itemSku": "k8dWZ5Kb"}, {"count": 59, "itemId": "RZA4ntCZ", "itemSku": "ihtPZ4tN"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 0, "comparison": "isNot", "name": "sSyvvOqu", "predicateType": "SeasonPassPredicate", "value": "9hTJwa4P", "values": ["6vwcVT7V", "eLczOANw", "JsnaxQ0j"]}, {"anyOf": 51, "comparison": "is", "name": "SVOa5ZVz", "predicateType": "EntitlementPredicate", "value": "46UJXKuh", "values": ["UkgBtrEq", "Buu46IeJ", "5hjUC8ax"]}, {"anyOf": 17, "comparison": "isLessThan", "name": "0pMN1fXH", "predicateType": "SeasonTierPredicate", "value": "tliOYfVp", "values": ["zDDUIwKB", "Mktt4QIZ", "gNiwLCZv"]}]}, {"operator": "or", "predicates": [{"anyOf": 62, "comparison": "isGreaterThan", "name": "KPa2BI2m", "predicateType": "SeasonPassPredicate", "value": "keF06kD5", "values": ["wMH0RIVW", "H5f6DAua", "PQia6gEp"]}, {"anyOf": 94, "comparison": "isGreaterThan", "name": "BEunoMpG", "predicateType": "EntitlementPredicate", "value": "7FqeYh85", "values": ["FF8Wfy8k", "QzMO96Km", "KGWvAU95"]}, {"anyOf": 87, "comparison": "isNot", "name": "Hi8ZUR3s", "predicateType": "SeasonTierPredicate", "value": "7oU5Lg7J", "values": ["kLai02a4", "fvHPy83c", "jZbW5Rng"]}]}, {"operator": "and", "predicates": [{"anyOf": 45, "comparison": "isGreaterThanOrEqual", "name": "srxBRisG", "predicateType": "EntitlementPredicate", "value": "PDw3YgSs", "values": ["KC5BepCw", "LjwMjmer", "fdTKA6bh"]}, {"anyOf": 86, "comparison": "isLessThanOrEqual", "name": "lOky7egJ", "predicateType": "SeasonPassPredicate", "value": "PlAzxkuJ", "values": ["kG0enLmi", "aEds4iCD", "xiBvPnGd"]}, {"anyOf": 40, "comparison": "is", "name": "PsoMS0rg", "predicateType": "EntitlementPredicate", "value": "XGAxLIyM", "values": ["UxqXB8sE", "7cV8Z4bN", "9glOFqaA"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 91, "fixedTrialCycles": 19, "graceDays": 15}, "region": "uDdqBt3V", "regionData": [{"currencyCode": "GWrq7dwI", "currencyNamespace": "M5YwpWJd", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1977-08-29T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-03-17T00:00:00Z", "discountedPrice": 98, "expireAt": "1996-06-26T00:00:00Z", "price": 95, "purchaseAt": "1974-02-24T00:00:00Z", "trialPrice": 0}, {"currencyCode": "wkfCk4T5", "currencyNamespace": "LazD0VCW", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1990-09-04T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1977-04-04T00:00:00Z", "discountedPrice": 96, "expireAt": "1975-02-23T00:00:00Z", "price": 75, "purchaseAt": "1979-03-19T00:00:00Z", "trialPrice": 0}, {"currencyCode": "QRR5QPnF", "currencyNamespace": "ir7GBXC2", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1994-07-11T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1987-05-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1985-10-09T00:00:00Z", "price": 25, "purchaseAt": "1995-05-05T00:00:00Z", "trialPrice": 40}], "seasonType": "PASS", "sku": "uImqSCzY", "stackable": true, "status": "INACTIVE", "tags": ["A2AbzysZ", "k9rj5JO3", "I5rQ0YBD"], "targetCurrencyCode": "ASnQd2gW", "targetItemId": "FlKbOkkK", "targetNamespace": "YReWNOFI", "thumbnailUrl": "2wSf4pAz", "title": "B81TIn3o", "updatedAt": "1971-09-24T00:00:00Z", "useCount": 97}, "namespace": "u1Oh35no", "order": {"currency": {"currencyCode": "y0ReQlFu", "currencySymbol": "SzYVL1JW", "currencyType": "VIRTUAL", "decimals": 60, "namespace": "6HALC622"}, "ext": {"Edpdn7hL": {}, "uUMWUEWH": {}, "8rkxfMYE": {}}, "free": false}, "source": "PURCHASE"}, "script": "4l9VkRUG", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'VyYPphWN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'X7uCkpSp' \
    --body '{"grantDays": "kjPj8O9R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'P5CVp7dJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'LnRmKdfy' \
    --body '{"grantDays": "NxJYKkwz"}' \
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
    --body '{"clazz": "9YYmKDbA", "dryRun": false, "fulfillmentUrl": "EgQh1J7v", "itemType": "SEASON", "purchaseConditionUrl": "RKfURvr2"}' \
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
    'bbiichJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'AbMTt9VH' \
    --body '{"clazz": "COHwx8TG", "dryRun": true, "fulfillmentUrl": "v99rDUKk", "purchaseConditionUrl": "tiH3Djuv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'VLOdmAln' \
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
    --body '{"description": "f6t2vqNb", "items": [{"extraSubscriptionDays": 55, "itemId": "pRTETSnr", "itemName": "sfloJZkJ", "quantity": 51}, {"extraSubscriptionDays": 22, "itemId": "j51YMONI", "itemName": "ZPOosKxP", "quantity": 60}, {"extraSubscriptionDays": 93, "itemId": "jucCl7KL", "itemName": "KGaO4syh", "quantity": 1}], "maxRedeemCountPerCampaignPerUser": 7, "maxRedeemCountPerCode": 35, "maxRedeemCountPerCodePerUser": 75, "maxSaleCount": 83, "name": "1zDwAxLk", "redeemEnd": "1990-08-07T00:00:00Z", "redeemStart": "1975-11-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["hTp5ddlv", "8XX80p3h", "kBLTfLkO"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '5zmVzzho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'bT0NXfnZ' \
    --body '{"description": "FeujPzhE", "items": [{"extraSubscriptionDays": 5, "itemId": "6lUgdVRX", "itemName": "IggiPCOe", "quantity": 96}, {"extraSubscriptionDays": 4, "itemId": "tzRHWIE8", "itemName": "XDhow1dD", "quantity": 93}, {"extraSubscriptionDays": 63, "itemId": "JGzcUGzU", "itemName": "fGDjP1cM", "quantity": 95}], "maxRedeemCountPerCampaignPerUser": 83, "maxRedeemCountPerCode": 99, "maxRedeemCountPerCodePerUser": 77, "maxSaleCount": 15, "name": "QuDlFIcd", "redeemEnd": "1981-04-28T00:00:00Z", "redeemStart": "1976-12-17T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["EkbiEWKN", "ilaJKSfJ", "PsmvPFxP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'FmcL6joY' \
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
    'ZEBK5EsA' \
    --body '{"categoryPath": "8UGqnfRA", "localizationDisplayNames": {"WooKHHUJ": "7EUDsbMp", "u89O3XMG": "djm4hSyg", "pwBry8bg": "Tionn79S"}}' \
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
    'RmJAI97q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'b2KZFaax' \
    '4rnU1kAu' \
    --body '{"localizationDisplayNames": {"YQ1fPp23": "lNLI0ez7", "HzA6kkVH": "M1onhNtv", "Ow0Q1y2L": "l8npHnTd"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '4bVZEqxa' \
    'vvr86qnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'd5pcaAfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'QxQzWaAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '5cXpX5sb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'zbOQSoUb' \
    --body '{"quantity": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'rLzqUAvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'eLThlGBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'XfJhFxpX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'yjEMRc8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'mbAiYEis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'qISRnAm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'SvxVyweL' \
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
    --body '{"currencyCode": "LUw2nu0c", "currencySymbol": "1q9WNDzQ", "currencyType": "REAL", "decimals": 37, "localizationDescriptions": {"pjbcKDMy": "ImtFHV3V", "iTL9RzW8": "5JDmotVn", "lBSAfQTp": "d6y2CBPQ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'pXCChUPp' \
    --body '{"localizationDescriptions": {"GQrFy4zK": "phdFGbqf", "90EVvG1E": "d1hjmnkI", "NOrTiJSg": "m4C9S7WF"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'rJIT8K3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'eIpkPNNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'NOolUeTv' \
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
    --body '{"data": [{"id": "wVCFxVHk", "rewards": [{"currency": {"currencyCode": "JvYYzcuO", "namespace": "kG1u4vmQ"}, "item": {"itemId": "eupHCmNv", "itemSku": "I26Uyaa7", "itemType": "JJOGjbBH"}, "quantity": 43, "type": "ITEM"}, {"currency": {"currencyCode": "afktfmDh", "namespace": "wifcJm7k"}, "item": {"itemId": "TSnNPUNy", "itemSku": "Pehj7oN6", "itemType": "uq6tN4og"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "jBGFqjRR", "namespace": "hGL2GF3P"}, "item": {"itemId": "VVaf5SzL", "itemSku": "vqCYRQqW", "itemType": "8eU6SeHn"}, "quantity": 47, "type": "CURRENCY"}]}, {"id": "i7LQHYNr", "rewards": [{"currency": {"currencyCode": "iFPZ15Zm", "namespace": "kKywYcva"}, "item": {"itemId": "Cj3xzCnJ", "itemSku": "cnYBgWET", "itemType": "3u8hIt7r"}, "quantity": 1, "type": "CURRENCY"}, {"currency": {"currencyCode": "s69IeWSZ", "namespace": "2hhYmLXG"}, "item": {"itemId": "Fs7gsp8X", "itemSku": "DNnCBZeT", "itemType": "ZScC4JAg"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "ntfydy35", "namespace": "ZvYbzXnG"}, "item": {"itemId": "VFsXyLDw", "itemSku": "i6d7YYPI", "itemType": "FKAC8FCf"}, "quantity": 97, "type": "ITEM"}]}, {"id": "clZBYcAV", "rewards": [{"currency": {"currencyCode": "NtFuaTql", "namespace": "m5miikw6"}, "item": {"itemId": "pkm0e2wG", "itemSku": "oICklMIU", "itemType": "oQBA9Pnc"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "k2HexsvA", "namespace": "jBG86Q7r"}, "item": {"itemId": "r5jVivzz", "itemSku": "xl5C3bKe", "itemType": "wHeGy9P5"}, "quantity": 12, "type": "ITEM"}, {"currency": {"currencyCode": "U07dhyPT", "namespace": "5meTAXhg"}, "item": {"itemId": "ixYIMex1", "itemSku": "OrgJ1iP1", "itemType": "s6UYfC3E"}, "quantity": 33, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"5WNYKUod": "fqfAOMQ7", "w7HzSIlM": "EKXDoj6I", "m8R1ngVY": "i6SIpvQe"}}, {"platform": "XBOX", "platformDlcIdMap": {"xNeUkolH": "OZgUk44j", "VEV6snZO": "zTBOLkHe", "ElxKXdeg": "tqQg4lTb"}}, {"platform": "STEAM", "platformDlcIdMap": {"5qbACkGV": "Knia1ZJ7", "EahoL4Hi": "RK1ENRqb", "gLTcu8r3": "LZ21nDWJ"}}]}' \
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
    'Z91GU15P' \
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
    --body '{"bundleId": "eXskM3U2", "password": "kuPBVPSI"}' \
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
    --body '{"sandboxId": "Er6XRsf9"}' \
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
    --body '{"applicationName": "3RaYahBU", "serviceAccountId": "H3VgzvM6"}' \
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
    --body '{"data": [{"itemIdentity": "unObXHgG", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"hYJzPJTA": "yjIHMXFC", "4d3ifEPr": "ZMEM0kVL", "EMSszVvo": "Tgd0Oa7A"}}, {"itemIdentity": "MI24h4ef", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"68RTMssk": "RpLJjqoL", "fNc8DgYp": "aRVlqIsD", "i2WHZadh": "gRZ0xKvz"}}, {"itemIdentity": "e2d1Il4z", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iIPMBV0y": "wy1OotDr", "vl1WCRpe": "4sbi66kv", "lubbtf2U": "GfjwVZ9k"}}]}' \
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
    --body '{"environment": "dou5xoeG"}' \
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
    --body '{"appId": "368OWmTq", "publisherAuthenticationKey": "htiUdvGj"}' \
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
    --body '{"clientId": "AL9opyey", "clientSecret": "9LndfeaQ", "organizationId": "rfBUBiSI"}' \
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
    --body '{"relyingPartyCert": "iiPjipws"}' \
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
    'ZVXreODt' \
    'qFQ10iRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'DbaP2ryf' \
    '2axdWoJS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'kB3yQn8o' \
    --body '{"categoryPath": "r4FbL9EM", "targetItemId": "iymIVa7i", "targetNamespace": "xodI1QjK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'rHFE6f97' \
    --body '{"appId": "Ymb5BK8f", "appType": "SOFTWARE", "baseAppId": "ZZfcdqI7", "boothName": "3ObS7Lr1", "categoryPath": "eequ7QDO", "clazz": "bMk91qjG", "displayOrder": 50, "entitlementType": "CONSUMABLE", "ext": {"meoQaGEY": {}, "TzhcnPzb": {}, "WrqjReWm": {}}, "features": ["FEq4Mn6h", "qQXL2bfX", "ISh18y99"], "images": [{"as": "d8eoxzXo", "caption": "0qehd1bm", "height": 52, "imageUrl": "q52rvHMa", "smallImageUrl": "OnwgOaCO", "width": 87}, {"as": "QjaQTa7G", "caption": "x2IdzCyC", "height": 92, "imageUrl": "0bFYUbLM", "smallImageUrl": "ZwSI3CNm", "width": 78}, {"as": "rx9h4KFb", "caption": "zdeHKs8y", "height": 54, "imageUrl": "fKOW0Qhr", "smallImageUrl": "CxQ9SWqG", "width": 83}], "itemIds": ["NqN5ZxUM", "SVtuPYeH", "yXmpoVcY"], "itemQty": {"WGfGWBg4": 94, "3vvMHh23": 88, "HZubdK7F": 16}, "itemType": "COINS", "listable": true, "localizations": {"pAAsH4pT": {"description": "LAHzi1Co", "localExt": {"EaONIUq0": {}, "ATGuOQHM": {}, "6tikgbpx": {}}, "longDescription": "kSCQjHYD", "title": "LMM4d9mh"}, "1eDSwEcC": {"description": "mTmUXVUx", "localExt": {"m3fvhKhR": {}, "8XN7F3Wc": {}, "NUzmfUhC": {}}, "longDescription": "TPOjQeiR", "title": "pvJ3NRy1"}, "xe3JC7mj": {"description": "bzlqncRA", "localExt": {"T6AMNj6e": {}, "894Un9pS": {}, "88turBfz": {}}, "longDescription": "20fhSc8u", "title": "pMSXAZ2E"}}, "maxCount": 100, "maxCountPerUser": 95, "name": "6gj02x2n", "optionBoxConfig": {"boxItems": [{"count": 98, "itemId": "r66p4AH3", "itemSku": "2zB1oigz"}, {"count": 53, "itemId": "4YzYNMxW", "itemSku": "ZYRoajdI"}, {"count": 10, "itemId": "2YPB3JMr", "itemSku": "6T1p9g38"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 49, "fixedTrialCycles": 47, "graceDays": 98}, "regionData": {"BmZKRuOX": [{"currencyCode": "OaA6kdZN", "currencyNamespace": "wSQUqzky", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1980-05-22T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1989-01-01T00:00:00Z", "discountedPrice": 84, "expireAt": "1997-04-05T00:00:00Z", "price": 41, "purchaseAt": "1981-11-30T00:00:00Z", "trialPrice": 1}, {"currencyCode": "EI0SzDzq", "currencyNamespace": "EHaDqpIY", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1973-05-02T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1991-02-13T00:00:00Z", "discountedPrice": 42, "expireAt": "1981-11-05T00:00:00Z", "price": 71, "purchaseAt": "1987-08-12T00:00:00Z", "trialPrice": 33}, {"currencyCode": "PDuwLEfV", "currencyNamespace": "vpyvSqKu", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1994-06-03T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-11-27T00:00:00Z", "discountedPrice": 68, "expireAt": "1985-09-23T00:00:00Z", "price": 83, "purchaseAt": "1977-10-08T00:00:00Z", "trialPrice": 58}], "jjJdy76C": [{"currencyCode": "ONU5SOtk", "currencyNamespace": "RfIuqLnw", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1997-08-02T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1998-02-17T00:00:00Z", "discountedPrice": 9, "expireAt": "1976-06-10T00:00:00Z", "price": 94, "purchaseAt": "1983-01-20T00:00:00Z", "trialPrice": 78}, {"currencyCode": "RTY8SXT0", "currencyNamespace": "BJcspqON", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1990-04-06T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1977-05-13T00:00:00Z", "discountedPrice": 69, "expireAt": "1979-12-31T00:00:00Z", "price": 99, "purchaseAt": "1984-02-01T00:00:00Z", "trialPrice": 13}, {"currencyCode": "SSxse2PU", "currencyNamespace": "X6QxdZkN", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1987-02-18T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1991-01-25T00:00:00Z", "discountedPrice": 69, "expireAt": "1982-12-19T00:00:00Z", "price": 33, "purchaseAt": "1977-03-25T00:00:00Z", "trialPrice": 57}], "bWcEup9R": [{"currencyCode": "xwaWYE6w", "currencyNamespace": "EXHSrDUu", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1997-05-29T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1996-11-13T00:00:00Z", "discountedPrice": 8, "expireAt": "1995-02-17T00:00:00Z", "price": 74, "purchaseAt": "1980-12-16T00:00:00Z", "trialPrice": 41}, {"currencyCode": "Xu7e9oyC", "currencyNamespace": "d1aZN5hW", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1985-11-15T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1994-05-31T00:00:00Z", "discountedPrice": 43, "expireAt": "1997-10-01T00:00:00Z", "price": 3, "purchaseAt": "1994-04-13T00:00:00Z", "trialPrice": 21}, {"currencyCode": "5N8ALhgY", "currencyNamespace": "fxbfi1Ga", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1977-02-15T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1994-09-03T00:00:00Z", "discountedPrice": 76, "expireAt": "1985-10-25T00:00:00Z", "price": 64, "purchaseAt": "1985-03-10T00:00:00Z", "trialPrice": 0}]}, "seasonType": "TIER", "sku": "lGJwDu6u", "stackable": false, "status": "INACTIVE", "tags": ["CpoD058J", "FpE69yzI", "WWxhCH9C"], "targetCurrencyCode": "uj7YPehg", "targetNamespace": "lHle9EZa", "thumbnailUrl": "FhUbstDk", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'nJw89FhS' \
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
    'jZOvBBsd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'v3a7hZZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'fsHfaBm8' \
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
    'PvgTcWQT' \
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
    'Wlle1a74' \
    --body '{"itemIds": ["0YrKtXsh", "MhrSmqKA", "X2omEmhv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'ZfTXLYqX' \
    'ShdrxkMr' \
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
    'oeJaeTHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'Kcy3ccUd' \
    '2pieGkcY' \
    --body '{"appId": "l4gJY3lp", "appType": "SOFTWARE", "baseAppId": "Glna9hEf", "boothName": "Edzyel5c", "categoryPath": "tm2j7BrE", "clazz": "KjFmPy7t", "displayOrder": 42, "entitlementType": "CONSUMABLE", "ext": {"sGQ2R8Uz": {}, "9ZbDOZFm": {}, "wgU9Wqbu": {}}, "features": ["ODwsO4vh", "uDdwNjQX", "auQ51c3U"], "images": [{"as": "gHvMJsOk", "caption": "mRf8kUXH", "height": 82, "imageUrl": "qw1yg4tO", "smallImageUrl": "yKaR2JlK", "width": 22}, {"as": "fTKoKUJj", "caption": "QKDEh8FP", "height": 96, "imageUrl": "FR2kGzjr", "smallImageUrl": "aTNvzqmE", "width": 12}, {"as": "AysKjg28", "caption": "Ax4D3C3f", "height": 89, "imageUrl": "8JzFxn5l", "smallImageUrl": "oOZmBXZZ", "width": 60}], "itemIds": ["5FKtdb9W", "lvSTZJ6U", "eUEjyxLU"], "itemQty": {"jLkDUQS9": 21, "pvleHuBE": 96, "z6CWK6Vw": 99}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"aQ0M7lXc": {"description": "Uziv7WRr", "localExt": {"UZpsUCyj": {}, "Bg3DWl11": {}, "uGxSGjOD": {}}, "longDescription": "PQW24iMJ", "title": "6DUU8uPl"}, "Q2qCWeqz": {"description": "eyOoVrZC", "localExt": {"bzwT4Uxs": {}, "eR1sAbOr": {}, "R91oRsj0": {}}, "longDescription": "tyjzv2gv", "title": "IXtEmzqp"}, "TWPw061B": {"description": "eA0lxg7W", "localExt": {"okJlVNBa": {}, "zIvkG94l": {}, "1c4UY0eF": {}}, "longDescription": "tfWst7zs", "title": "E3XuoIJr"}}, "maxCount": 31, "maxCountPerUser": 26, "name": "y5xU81TJ", "optionBoxConfig": {"boxItems": [{"count": 100, "itemId": "UtYo2rV3", "itemSku": "19SPSNB3"}, {"count": 67, "itemId": "4zp8aiBM", "itemSku": "RK85O1Pc"}, {"count": 51, "itemId": "Lw421ofI", "itemSku": "Af31lv46"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 40, "fixedTrialCycles": 47, "graceDays": 33}, "regionData": {"07JMkTrS": [{"currencyCode": "DG6dMDhA", "currencyNamespace": "MSqzzqgI", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1980-11-29T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1997-04-22T00:00:00Z", "discountedPrice": 90, "expireAt": "1981-11-30T00:00:00Z", "price": 8, "purchaseAt": "1979-08-15T00:00:00Z", "trialPrice": 20}, {"currencyCode": "yQwQKaPy", "currencyNamespace": "n6qSzSbL", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1993-01-16T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1974-05-23T00:00:00Z", "discountedPrice": 93, "expireAt": "1987-11-29T00:00:00Z", "price": 0, "purchaseAt": "1994-09-14T00:00:00Z", "trialPrice": 29}, {"currencyCode": "r8STjuYn", "currencyNamespace": "lDYbp6QD", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1991-11-09T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1982-02-17T00:00:00Z", "discountedPrice": 9, "expireAt": "1993-05-19T00:00:00Z", "price": 90, "purchaseAt": "1972-12-05T00:00:00Z", "trialPrice": 97}], "sn0Cu6qx": [{"currencyCode": "otTmIJQr", "currencyNamespace": "yJG6HWIh", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1977-07-24T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1979-05-24T00:00:00Z", "discountedPrice": 26, "expireAt": "1980-08-23T00:00:00Z", "price": 55, "purchaseAt": "1975-06-25T00:00:00Z", "trialPrice": 56}, {"currencyCode": "Z5Kq3KWN", "currencyNamespace": "92VcvNcy", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1989-09-02T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1994-09-08T00:00:00Z", "discountedPrice": 69, "expireAt": "1971-08-09T00:00:00Z", "price": 87, "purchaseAt": "1992-11-18T00:00:00Z", "trialPrice": 27}, {"currencyCode": "JC80t9cP", "currencyNamespace": "L26fsVuA", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1972-06-24T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1993-11-07T00:00:00Z", "discountedPrice": 60, "expireAt": "1980-10-20T00:00:00Z", "price": 40, "purchaseAt": "1986-08-09T00:00:00Z", "trialPrice": 12}], "s0XjwlhE": [{"currencyCode": "tdgRqPzn", "currencyNamespace": "fUqfpuRz", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1975-03-23T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1972-11-13T00:00:00Z", "discountedPrice": 87, "expireAt": "1978-06-12T00:00:00Z", "price": 0, "purchaseAt": "1994-11-02T00:00:00Z", "trialPrice": 57}, {"currencyCode": "P7HpYIvD", "currencyNamespace": "WFmfv42j", "currencyType": "REAL", "discountAmount": 39, "discountExpireAt": "1984-12-03T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1984-01-12T00:00:00Z", "discountedPrice": 61, "expireAt": "1988-06-23T00:00:00Z", "price": 71, "purchaseAt": "1973-01-05T00:00:00Z", "trialPrice": 74}, {"currencyCode": "8PzQQvqf", "currencyNamespace": "df7IsCki", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1994-06-07T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1976-01-23T00:00:00Z", "discountedPrice": 19, "expireAt": "1980-11-21T00:00:00Z", "price": 57, "purchaseAt": "1998-04-17T00:00:00Z", "trialPrice": 71}]}, "seasonType": "TIER", "sku": "NSKZYZ10", "stackable": false, "status": "INACTIVE", "tags": ["Jes4XWgr", "pPpzTMBU", "nPlyo12P"], "targetCurrencyCode": "CYArH0x3", "targetNamespace": "5fItGJAW", "thumbnailUrl": "cquhxn0m", "useCount": 6}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'acNkvaLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'MLZHACtq' \
    --body '{"count": 64, "orderNo": "T2gVqRP6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'wPy4AmrZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'ilTSooqR' \
    'Q5DZ36vP' \
    --body '{"carousel": [{"alt": "wuLnKlNe", "previewUrl": "x3xl32V9", "thumbnailUrl": "t7sAfP1u", "type": "image", "url": "6CH2zsUB", "videoSource": "generic"}, {"alt": "GuCVq0TZ", "previewUrl": "Uw0vMleM", "thumbnailUrl": "MGfOVbNz", "type": "video", "url": "4PvNe8UJ", "videoSource": "vimeo"}, {"alt": "CPsIwANm", "previewUrl": "JPImaip7", "thumbnailUrl": "AiBzHkNK", "type": "image", "url": "XMkZNF00", "videoSource": "vimeo"}], "developer": "Re4mEXka", "forumUrl": "CsenJJIs", "genres": ["Racing", "Racing", "Simulation"], "localizations": {"cDttO8U3": {"announcement": "ONtB0yIK", "slogan": "TDceRmmb"}, "DVu94mcP": {"announcement": "x3vyR1CH", "slogan": "TwrPlveK"}, "xm6gpd7J": {"announcement": "tszpMCyh", "slogan": "bwurVsvg"}}, "platformRequirements": {"dOXr7O8J": [{"additionals": "vGssGSV1", "directXVersion": "aSD51xn6", "diskSpace": "ozBsKcSg", "graphics": "ezTlwZFW", "label": "DGUa1WA3", "osVersion": "IQAdSIg7", "processor": "uW1xsZ33", "ram": "VuNZ2YVR", "soundCard": "pqTh8ujI"}, {"additionals": "hPCW7AIB", "directXVersion": "qzm9tCrC", "diskSpace": "xBfxQPQ3", "graphics": "0dBJoyWR", "label": "Bz8cB6Ca", "osVersion": "SLogYhU0", "processor": "ySF2R2B5", "ram": "ixseYoMM", "soundCard": "S907wcdN"}, {"additionals": "yc9Izhzj", "directXVersion": "PKIyFZLK", "diskSpace": "HYq0bKZ8", "graphics": "kZgQCYF4", "label": "5zquqUXG", "osVersion": "n7FtZ5Uf", "processor": "vyUcOBlV", "ram": "5dxUN9xD", "soundCard": "RFdF728k"}], "2Gszi8G7": [{"additionals": "pv6bsFVe", "directXVersion": "86CTHzPH", "diskSpace": "HuTDB9h0", "graphics": "BTS8BuVM", "label": "PiXDvwta", "osVersion": "EmcytBCj", "processor": "2snSz28g", "ram": "r8WPiaHE", "soundCard": "OEh17JIp"}, {"additionals": "hHLvQjLu", "directXVersion": "nM7mlh4M", "diskSpace": "mjJJQOrT", "graphics": "PO3yp1CD", "label": "ACUPtZSq", "osVersion": "bZHQNoZ8", "processor": "1LgoObDB", "ram": "AEzpuGEz", "soundCard": "cel75PtD"}, {"additionals": "ba6nX99K", "directXVersion": "TB7RGUnR", "diskSpace": "bDHPW9Ii", "graphics": "T2bWvQJJ", "label": "Lk3tPosY", "osVersion": "1oOJeKJ3", "processor": "F5GW3KhE", "ram": "N9eN2aUW", "soundCard": "Sovznmax"}], "Vzk4qUxr": [{"additionals": "hXPesRfm", "directXVersion": "93pQQOzV", "diskSpace": "vjP7PzzL", "graphics": "aqRvEdps", "label": "ZyysjmYa", "osVersion": "q2PBunx8", "processor": "zPKtGlku", "ram": "wfKPg54o", "soundCard": "u8F7np0I"}, {"additionals": "kkNOG9I9", "directXVersion": "HwkdLTyt", "diskSpace": "uFVEBi89", "graphics": "KxxQBqy6", "label": "4by4kAkS", "osVersion": "sABPXR02", "processor": "YFjGCngu", "ram": "Es7EtdOi", "soundCard": "v278ckN7"}, {"additionals": "CM4YBjMR", "directXVersion": "ROOMdRmk", "diskSpace": "uiWPqoEU", "graphics": "HaMIX0Mm", "label": "P3chr9Xv", "osVersion": "VlzG4xQb", "processor": "zEIGaeSL", "ram": "Tklev8WN", "soundCard": "n3eJxkIv"}]}, "platforms": ["Windows", "Windows", "Linux"], "players": ["CrossPlatformMulti", "LocalCoop", "MMO"], "primaryGenre": "Strategy", "publisher": "QwilxZsh", "releaseDate": "1998-11-16T00:00:00Z", "websiteUrl": "NmHjuqRo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '5xSnPQwJ' \
    'eYtMP61K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'bclWXk7L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'EyPQPkLK' \
    'cuZh24Ds' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'lfbr796w' \
    'gUiCrnzo' \
    's8fXbxdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'sOQqhc08' \
    'olWcXgOU' \
    'KWqaseK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'U9oayxLs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '4HxCE6PF' \
    'mJT7CRON' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 68, "comparison": "isNot", "name": "3mYGovx6", "predicateType": "SeasonPassPredicate", "value": "0nUvCEnl", "values": ["HCcquqLd", "SGKx9MfT", "mMN92QVm"]}, {"anyOf": 60, "comparison": "isGreaterThanOrEqual", "name": "E9dRKG50", "predicateType": "EntitlementPredicate", "value": "9Rzor5L9", "values": ["NH6Zmbrs", "pgYrHomt", "fCMTGnBp"]}, {"anyOf": 79, "comparison": "isNot", "name": "S4eUIwCE", "predicateType": "SeasonTierPredicate", "value": "zloMofKb", "values": ["v42zNTkT", "cDGdTSNV", "44HWL9ta"]}]}, {"operator": "or", "predicates": [{"anyOf": 2, "comparison": "isLessThanOrEqual", "name": "vYc749QD", "predicateType": "SeasonPassPredicate", "value": "UvnTHZGX", "values": ["TDZZ5WJL", "6TLebS8y", "CJztOz5X"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "FgSeRDyn", "predicateType": "SeasonTierPredicate", "value": "Eg8NTQbK", "values": ["TzwJFTaT", "0KfHgbFj", "S7Nrp829"]}, {"anyOf": 87, "comparison": "isLessThan", "name": "MkuBaIXb", "predicateType": "SeasonPassPredicate", "value": "WnbB4GUY", "values": ["zD0IF5Mw", "jpHJy1Ya", "7gD3By5E"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "is", "name": "qGEiaWEO", "predicateType": "SeasonTierPredicate", "value": "JAMopDlC", "values": ["o3EKpPQo", "rQEuxuQk", "XmFkKxAB"]}, {"anyOf": 36, "comparison": "isLessThan", "name": "9Rxlc5qU", "predicateType": "SeasonPassPredicate", "value": "aTcFPJwk", "values": ["z3JJ5wzm", "HVg3wugv", "AaciG8Kq"]}, {"anyOf": 83, "comparison": "excludes", "name": "4mahSx44", "predicateType": "SeasonTierPredicate", "value": "DFyH0RPq", "values": ["rNSNQGAI", "tqzdmNrO", "tES6vuad"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'Zv4WZpJR' \
    --body '{"orderNo": "0E49GCiq"}' \
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
    --body '{"description": "CcDHy11V", "name": "oCET5elW", "status": "INACTIVE", "tags": ["ZPzD9nVA", "lkGPE50d", "1iPmvJ8z"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'pvYPaaEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '3MJ5G1ZO' \
    --body '{"description": "wrm0PcN3", "name": "edT6hwRb", "status": "ACTIVE", "tags": ["kRgF2aDE", "p6MCibTN", "hNk9vP5M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'h86XSEwO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '1VPcbWjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'AZY4Zal5' \
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
    'UphxUmvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'Hmxkisj0' \
    --body '{"description": "O8qrzJuL"}' \
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
    --body '{"dryRun": false, "notifyUrl": "yI7DHMak", "privateKey": "Ji6RI63p"}' \
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
    --body '{"currencyCode": "GSCs5I9P", "currencyNamespace": "0Oc7XA2X", "customParameters": {"NrLGtH2p": {}, "JEvmYEqo": {}, "64lxs0cP": {}}, "description": "4FLpQq6m", "extOrderNo": "eLEXSCiI", "extUserId": "KEAGqjMt", "itemType": "APP", "language": "bU", "metadata": {"tVH6CUgO": "Z9wjgx1b", "GEMqZMZR": "AzOhH3kS", "JSsjPmqb": "2TMBOJEp"}, "notifyUrl": "UXO9casy", "omitNotification": false, "platform": "3VZmPCkq", "price": 73, "recurringPaymentOrderNo": "v90n7pWt", "region": "zecENRCL", "returnUrl": "pzkDFQOp", "sandbox": true, "sku": "tB97KdBP", "subscriptionId": "aJXN3rLt", "targetNamespace": "lnPzsrh4", "targetUserId": "EHLg7o3Z", "title": "oFqeG1aG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'ZLdzr99P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'maixARFb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'RBV2yUJy' \
    --body '{"extTxId": "K88xWD6S", "paymentMethod": "wOT2hRrJ", "paymentProvider": "ADYEN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'UL00G7Si' \
    --body '{"description": "4PoO7AUD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'QaqH6bLW' \
    --body '{"amount": 48, "currencyCode": "cKfsvlth", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 100, "vat": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'xfwVl8mr' \
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
    'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Xbox", "Other", "GooglePlay"]}' \
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
    --body '{"description": "P047bWAD", "eventTopic": "UmN7rH2I", "maxAwarded": 34, "maxAwardedPerUser": 69, "namespaceExpression": "LSCz0XRT", "rewardCode": "31kOUGsg", "rewardConditions": [{"condition": "Ndd6a59f", "conditionName": "BrvFUNRM", "eventName": "x01KJjXS", "rewardItems": [{"duration": 80, "itemId": "2Z8ugAgh", "quantity": 36}, {"duration": 61, "itemId": "tHnJiNt8", "quantity": 23}, {"duration": 51, "itemId": "cRPf37yY", "quantity": 93}]}, {"condition": "MX1ICa4h", "conditionName": "rprqrxQI", "eventName": "QE3GWWoL", "rewardItems": [{"duration": 34, "itemId": "FdqDMu9K", "quantity": 90}, {"duration": 63, "itemId": "JjAYKNXV", "quantity": 38}, {"duration": 39, "itemId": "nQFKxO9G", "quantity": 71}]}, {"condition": "hsKawEI8", "conditionName": "6ud2IJq7", "eventName": "huzwi6hM", "rewardItems": [{"duration": 17, "itemId": "eSJ8rKFL", "quantity": 16}, {"duration": 55, "itemId": "2TkEr7Dz", "quantity": 24}, {"duration": 79, "itemId": "n4LWnUSV", "quantity": 78}]}], "userIdExpression": "tuN2qcJo"}' \
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
    'KrffeglM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'PEHVdwMK' \
    --body '{"description": "ukNzs5Qe", "eventTopic": "gAYpnA2h", "maxAwarded": 54, "maxAwardedPerUser": 52, "namespaceExpression": "bORpBhl9", "rewardCode": "dO5owBIM", "rewardConditions": [{"condition": "EBPPmPAu", "conditionName": "002EHW4u", "eventName": "K5iRi3Xr", "rewardItems": [{"duration": 7, "itemId": "4eVNht9f", "quantity": 98}, {"duration": 49, "itemId": "uUCzuvDb", "quantity": 82}, {"duration": 20, "itemId": "5cU9eGIx", "quantity": 47}]}, {"condition": "xoqqxJyq", "conditionName": "ARKaFElh", "eventName": "qVe3PROp", "rewardItems": [{"duration": 79, "itemId": "81c5FEr0", "quantity": 9}, {"duration": 91, "itemId": "YamS0xSB", "quantity": 73}, {"duration": 10, "itemId": "QtOYyd2d", "quantity": 22}]}, {"condition": "VGut8ZpG", "conditionName": "8dy7vRBO", "eventName": "hHdYevfc", "rewardItems": [{"duration": 51, "itemId": "gmf9SHEK", "quantity": 18}, {"duration": 57, "itemId": "zEn1l123", "quantity": 57}, {"duration": 1, "itemId": "6fLD26gr", "quantity": 65}]}], "userIdExpression": "fBaFr8v9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'r3vCosNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'rIszFtaj' \
    --body '{"payload": {"6ykmGJVL": {}, "UR78H1LP": {}, "c8q42G1X": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'nJyxoAxY' \
    --body '{"conditionName": "Mnbf1Vtc", "userId": "w1KZw9dB"}' \
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
    --body '{"defaultLanguage": "KSBtFdO2", "defaultRegion": "BvhTypjW", "description": "9jjypUBZ", "supportedLanguages": ["hShjFHq0", "QO6S2QJb", "YUOZpKtO"], "supportedRegions": ["Jxx0Eg30", "3UwzxYYl", "qfEGpVnx"], "title": "1VFZ5huZ"}' \
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
    'wwLG823K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'k9xAN5mU' \
    --body '{"defaultLanguage": "8PmqF9JV", "defaultRegion": "FfGGpidM", "description": "CPCIosya", "supportedLanguages": ["DGmIpzzx", "mNyRsn1p", "rqbqG17g"], "supportedRegions": ["zqixyflV", "yqDLDcVk", "ojUIS8sT"], "title": "jA06mme1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'Quh6Vatu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '9qN1QIdK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'RB11LhcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'ymXVjLXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '47rjUocL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'ZnCEcoWR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'IqPy25Al' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'Q6B7mOTC' \
    'F3Om5Bqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'a1QbmN1R' \
    'Y91TQEcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'KzgsaSvg' \
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
    'Fmvc0hYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'Ac7Qa8mn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '4Bri1M1V' \
    --body '{"orderNo": "BSbfGFwA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '1weiu7jp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'LhRe7Hoe' \
    --body '{"count": 9, "orderNo": "Wy8Fv4ff"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'vok7VQTi' \
    --body '{"achievements": [{"id": "3KhDEow6", "value": 24}, {"id": "NlI9gXND", "value": 28}, {"id": "jBDeSlEG", "value": 2}], "steamUserId": "9DQ5ixUt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'FyRfWIrv' \
    'ID46CGwz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'cYdBAOWA' \
    --body '{"achievements": [{"id": "U1VRbQXC", "percentComplete": 84}, {"id": "mM8Y7A3F", "percentComplete": 16}, {"id": "THGDJWDa", "percentComplete": 17}], "serviceConfigId": "mZEuRpdn", "titleId": "T9Qi9pZs", "xboxUserId": "zUmTBxIM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'oV2SRhT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'ZhWDWYk7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'SULc8jRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'eqidgUx3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'cXbtkJfM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'J2hqBh1k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '8UHaeBFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'bfxxqJj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'z6RGP5m4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'eGN3kSHC' \
    --body '[{"endDate": "1997-04-15T00:00:00Z", "grantedCode": "84ccO106", "itemId": "vkOYx6ex", "itemNamespace": "zjzXs4cF", "language": "pxgY_Fc", "quantity": 10, "region": "M1fIG8cz", "source": "PURCHASE", "startDate": "1985-08-17T00:00:00Z", "storeId": "noTBflcx"}, {"endDate": "1990-04-03T00:00:00Z", "grantedCode": "xpTPKXXv", "itemId": "Zv6Khfk6", "itemNamespace": "BA8a9MXW", "language": "CFvY-TxZc-844", "quantity": 4, "region": "rpaKn1wD", "source": "GIFT", "startDate": "1972-04-13T00:00:00Z", "storeId": "k7gIxzpq"}, {"endDate": "1973-06-11T00:00:00Z", "grantedCode": "IdaCl3aj", "itemId": "YEshVjY7", "itemNamespace": "3zlH3Gjn", "language": "Xj_zNRT", "quantity": 45, "region": "tW5FIUxb", "source": "PURCHASE", "startDate": "1986-11-25T00:00:00Z", "storeId": "3I4hU0jH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'S3mRUDzm' \
    'nXJQXow7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'SY2I9mEU' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'FV21qaTE' \
    '2cbtYvQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'zZyA3dBF' \
    'uG143fS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'KE54AeiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'nirEAcLv' \
    '["QkrhOHtU", "LxVIl8Be", "NRtQgLjO"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'OXXUYJT3' \
    'tsITfuRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '02BgSbRB' \
    '8b1BrWMI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '6PmqlurD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'YAYWeYKH' \
    'yEfYuak0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '4xWqJowK' \
    'IzCCtYOb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '3qe8KkKG' \
    'h0zp2wri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'hnoVsIO7' \
    'FCVjaLxV' \
    --body '{"endDate": "1989-03-08T00:00:00Z", "nullFieldList": ["DYeXFQpp", "UY6tzH4C", "nvyFm9oU"], "startDate": "1971-01-04T00:00:00Z", "status": "CONSUMED", "useCount": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '0OtAiGyR' \
    'zfDoYtIG' \
    --body '{"options": ["aoWgvWzW", "MwtcD0BN", "r12Bi3Zw"], "requestId": "2dVpsAwx", "useCount": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '3t3zLDs9' \
    'XkBvlhBU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'PLitfqgk' \
    'YzaSfKPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'WSGZwVCB' \
    '9HPdzJcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'iyrKTxfS' \
    'NnnMj2xw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '3bhOshWC' \
    --body '{"duration": 53, "endDate": "1988-09-21T00:00:00Z", "itemId": "Py1pN3e5", "itemSku": "RYjaZghG", "language": "3jS4P0R4", "order": {"currency": {"currencyCode": "bX1ioQDL", "currencySymbol": "coTXyRrD", "currencyType": "REAL", "decimals": 61, "namespace": "AHDyQtGX"}, "ext": {"YFE3ZKeA": {}, "jNKzw36E": {}, "KBU9npb0": {}}, "free": false}, "orderNo": "eFSA3qsU", "origin": "IOS", "quantity": 39, "region": "VTo8jUql", "source": "REWARD", "startDate": "1983-12-12T00:00:00Z", "storeId": "cjzkftZ4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ra2H7KHO' \
    --body '{"code": "JRVe8JNC", "language": "aobc", "region": "AKtMdFnt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'eX8dGupb' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "G4tf0NdY", "namespace": "AGbSOBWY"}, "item": {"itemId": "DTF9aa3U", "itemSku": "X5sAyAgE", "itemType": "Imc4UixS"}, "quantity": 21, "type": "ITEM"}, {"currency": {"currencyCode": "k6KouDmc", "namespace": "UeOhPU36"}, "item": {"itemId": "JMSYMKTB", "itemSku": "WjLtvZmK", "itemType": "AfCjlgoY"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "Wp4ORrzw", "namespace": "XG8VB1xH"}, "item": {"itemId": "Duccd6VY", "itemSku": "BmSf2xrk", "itemType": "TQRCabhs"}, "quantity": 56, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'sIwlTpDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'VVRWelTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'X2ATebeV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPConsumeHistory' test.out

#- 208 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'OyGMaECX' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "rg-nqcI-521", "productId": "ns3MDGXI", "region": "sHHCSF20", "type": "GOOGLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'MockFulfillIAPItem' test.out

#- 209 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '2mxJmQUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'QueryUserOrders' test.out

#- 210 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'ZECd5hEm' \
    --body '{"currencyCode": "3OSPZqNm", "currencyNamespace": "migZGlLE", "discountedPrice": 80, "ext": {"7mwI0QWY": {}, "p7JfzfnV": {}, "9ANk1Uwv": {}}, "itemId": "NGPWjgDn", "language": "8vi0uKPs", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 25, "quantity": 16, "region": "0lNk98ZT", "returnUrl": "bBSWWumS", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminCreateUserOrder' test.out

#- 211 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '16euMd5E' \
    'smoGt4xn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'CountOfPurchasedItem' test.out

#- 212 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'Xhubywsa' \
    'AGR4pSvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrder' test.out

#- 213 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'bfFEqHvQ' \
    'CCMBlQke' \
    --body '{"status": "FULFILLED", "statusReason": "8xanmWAV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'UpdateUserOrderStatus' test.out

#- 214 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'T8e9fi8V' \
    '09Dg23xW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'FulfillUserOrder' test.out

#- 215 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'SNZYAvrK' \
    'WDIwgeUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderGrant' test.out

#- 216 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'Fz4A7xL0' \
    'LZwJWZAh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetUserOrderHistories' test.out

#- 217 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'gsM4T1zv' \
    'bYTkmu0f' \
    --body '{"additionalData": {"cardSummary": "FF2mG1Il"}, "authorisedTime": "1976-03-27T00:00:00Z", "chargebackReversedTime": "1971-04-23T00:00:00Z", "chargebackTime": "1976-06-06T00:00:00Z", "chargedTime": "1981-06-03T00:00:00Z", "createdTime": "1997-09-13T00:00:00Z", "currency": {"currencyCode": "184GLXm4", "currencySymbol": "bjEDWF33", "currencyType": "REAL", "decimals": 29, "namespace": "gBNMLLA5"}, "customParameters": {"iSsDHegt": {}, "UxJj72O0": {}, "IlZiXhrk": {}}, "extOrderNo": "khtauGs7", "extTxId": "QGWKC6zq", "extUserId": "8uhklU64", "issuedAt": "1985-05-12T00:00:00Z", "metadata": {"KKTDMsDg": "CxfHp8vQ", "0dr8ScaT": "LiqNkf7U", "Q3DRwT1D": "6FTVYHfL"}, "namespace": "HErfquDn", "nonceStr": "Oy2hFEYP", "paymentMethod": "WfxiweXQ", "paymentMethodFee": 55, "paymentOrderNo": "M91z1C5n", "paymentProvider": "ADYEN", "paymentProviderFee": 91, "paymentStationUrl": "4AyMiK2Q", "price": 84, "refundedTime": "1995-12-29T00:00:00Z", "salesTax": 34, "sandbox": false, "sku": "ZCE0BvZb", "status": "CHARGEBACK", "statusReason": "FeWfk7N5", "subscriptionId": "vwDMflvp", "subtotalPrice": 85, "targetNamespace": "8L4NBl4o", "targetUserId": "exPvH5Tj", "tax": 99, "totalPrice": 99, "totalTax": 40, "txEndTime": "1998-05-14T00:00:00Z", "type": "YXTGH5kT", "userId": "Vek3wurh", "vat": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'ProcessUserOrderNotification' test.out

#- 218 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'Xia1ypKp' \
    'Kfq7H57Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'DownloadUserOrderReceipt' test.out

#- 219 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'iUZq1DLj' \
    --body '{"currencyCode": "FMk2lZca", "currencyNamespace": "nN8vFC2h", "customParameters": {"4kZbx7Qw": {}, "7rNKzcwU": {}, "pJrrmMXt": {}}, "description": "9nEWQKX9", "extOrderNo": "xgSLWUeb", "extUserId": "3bfOqBDV", "itemType": "CODE", "language": "BlZz-PrlR-188", "metadata": {"Md1x7vp6": "vciPhnN3", "inyVdkLr": "CbyQPXUv", "5yUYOLIq": "mSVBMbl2"}, "notifyUrl": "ntWftgqu", "omitNotification": false, "platform": "UDxseNYn", "price": 2, "recurringPaymentOrderNo": "Pmyhm2Gs", "region": "k0wLRATe", "returnUrl": "Kr6VyW31", "sandbox": true, "sku": "RvAXAx2l", "subscriptionId": "tjzQNFyn", "title": "HtYhEvgn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'CreateUserPaymentOrder' test.out

#- 220 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'yRAfhAZw' \
    'CHYqRnhM' \
    --body '{"description": "uGZDigTd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'RefundUserPaymentOrder' test.out

#- 221 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'wDnIzDIZ' \
    --body '{"code": "N82R1xBW", "orderNo": "yQOT5l2y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'ApplyUserRedemption' test.out

#- 222 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'LZmr2Mij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserSubscriptions' test.out

#- 223 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'f6z43Tgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserSubscriptionActivities' test.out

#- 224 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'BcRXmIhe' \
    --body '{"grantDays": 74, "itemId": "jB5bYSsv", "language": "jGwAVwSy", "reason": "PyTuXyn4", "region": "FLVQwXh1", "source": "a8HZ3Qcg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'PlatformSubscribeSubscription' test.out

#- 225 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '8whsGtYb' \
    'xkOmJCCT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 226 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'xSIp0cBA' \
    'hGKMqO73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscription' test.out

#- 227 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '3dap03L6' \
    'FQbr3m3V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'DeleteUserSubscription' test.out

#- 228 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'fkwI5KYv' \
    'IJouDCpI' \
    --body '{"immediate": true, "reason": "Wp46P8Ix"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'CancelSubscription' test.out

#- 229 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'iHTXAWcZ' \
    'K8JwEJ4R' \
    --body '{"grantDays": 63, "reason": "b2VKWMYL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GrantDaysToSubscription' test.out

#- 230 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'dkkHMKc9' \
    '4VTVyGBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserSubscriptionBillingHistories' test.out

#- 231 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'tpFBwkQN' \
    'KZcJGUKk' \
    --body '{"additionalData": {"cardSummary": "YKeewVpX"}, "authorisedTime": "1972-09-09T00:00:00Z", "chargebackReversedTime": "1989-03-02T00:00:00Z", "chargebackTime": "1972-05-07T00:00:00Z", "chargedTime": "1999-08-14T00:00:00Z", "createdTime": "1997-10-30T00:00:00Z", "currency": {"currencyCode": "66wWy8R6", "currencySymbol": "01HiyAjk", "currencyType": "REAL", "decimals": 33, "namespace": "Uiihyq8z"}, "customParameters": {"Hd1Ut6iF": {}, "zNpv1Xo6": {}, "8ZjvsUQZ": {}}, "extOrderNo": "HzE4mTuP", "extTxId": "41McgSEZ", "extUserId": "Qog0TS07", "issuedAt": "1986-11-14T00:00:00Z", "metadata": {"28QvHBaG": "Yc70Q1RB", "IXTPQWnJ": "7hjc2cFQ", "5iNPD4CB": "M8rEVHdR"}, "namespace": "76mLmBQu", "nonceStr": "nF6uc540", "paymentMethod": "zIxHfu1M", "paymentMethodFee": 4, "paymentOrderNo": "bcjBzuqa", "paymentProvider": "WALLET", "paymentProviderFee": 11, "paymentStationUrl": "9YHHl4y3", "price": 39, "refundedTime": "1990-08-13T00:00:00Z", "salesTax": 99, "sandbox": false, "sku": "kLRA0KxX", "status": "REFUNDED", "statusReason": "gVgmDpBM", "subscriptionId": "fadDeM02", "subtotalPrice": 95, "targetNamespace": "9Suzk1Z1", "targetUserId": "6xWJIAeb", "tax": 68, "totalPrice": 89, "totalTax": 47, "txEndTime": "1984-09-20T00:00:00Z", "type": "g1Izbc70", "userId": "9MNyphfe", "vat": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'ProcessUserSubscriptionNotification' test.out

#- 232 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'N8YXyIi5' \
    'hW3HcDgB' \
    --body '{"count": 97, "orderNo": "IAZ7pTQw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AcquireUserTicket' test.out

#- 233 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'MRwBspuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserCurrencyWallets' test.out

#- 234 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'QTS5XJ7S' \
    'Y3TanNNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ListUserCurrencyTransactions' test.out

#- 235 CheckWallet
eval_tap 0 235 'CheckWallet # SKIP deprecated' test.out

#- 236 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'up0BZlcc' \
    'huJoYGcS' \
    --body '{"amount": 65, "expireAt": "1993-01-22T00:00:00Z", "origin": "Twitch", "reason": "5mqrFHD5", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CreditUserWallet' test.out

#- 237 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'AndplS7q' \
    'qLvGBUC3' \
    --body '{"amount": 91, "walletPlatform": "Playstation"}' \
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
    'NpP2B60d' \
    'XG1Qvjnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'SyncOrders' test.out

#- 246 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["IvSxjxe3", "UF64BOnI", "U125lltH"], "apiKey": "nYUy3orp", "authoriseAsCapture": true, "blockedPaymentMethods": ["x60mqhgm", "xXjvByhF", "bnMcxTiz"], "clientKey": "4zAg0ivK", "dropInSettings": "4hPGX3xF", "liveEndpointUrlPrefix": "nWDLcOpP", "merchantAccount": "5mRpH7LC", "notificationHmacKey": "8VbgG1Zs", "notificationPassword": "qghMt3Gw", "notificationUsername": "aL7AFgaM", "returnUrl": "mwm5YpJA", "settings": "Soqi4MFG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfig' test.out

#- 247 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "yWgu51kR", "privateKey": "Po07WJtv", "publicKey": "2BIizqSz", "returnUrl": "B1bWBPos"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfig' test.out

#- 248 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "NiEcqZ2N", "secretKey": "wczbTguQ"}' \
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
    --body '{"clientID": "mHDcX741", "clientSecret": "xgXwVGRo", "returnUrl": "Ovd1La27", "webHookId": "zkTPVm3D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestPayPalConfig' test.out

#- 251 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["ycnVbvX4", "t5TNTaEb", "uQ3CL5Rf"], "publishableKey": "lA9WQ7LP", "secretKey": "EyXgeixc", "webhookSecret": "6ZAH7KTG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestStripeConfig' test.out

#- 252 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "cvZwBQwS", "key": "UBazL9Qz", "mchid": "Tnz4XY5M", "returnUrl": "W2bvWvhh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfig' test.out

#- 253 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "osCFhsmn", "flowCompletionUrl": "leWcxEhF", "merchantId": 24, "projectId": 76, "projectSecretKey": "YtcLffWX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfig' test.out

#- 254 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'u5J0Vqpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentMerchantConfig' test.out

#- 255 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'RMqJDHH1' \
    --body '{"allowedPaymentMethods": ["RzDaAmpI", "BxuGw4VS", "mORJbDWq"], "apiKey": "HgDiuByo", "authoriseAsCapture": false, "blockedPaymentMethods": ["v0qidsjK", "xxeye17D", "5GuFCzFo"], "clientKey": "lFRplPbt", "dropInSettings": "zIbkHRRR", "liveEndpointUrlPrefix": "weIq71cd", "merchantAccount": "66FILrFy", "notificationHmacKey": "UkLnMkAR", "notificationPassword": "PFeo0B6u", "notificationUsername": "4xAKKxIz", "returnUrl": "JH3hsAXs", "settings": "myO9QNc0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateAdyenConfig' test.out

#- 256 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'cYSmziMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'TestAdyenConfigById' test.out

#- 257 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '4IroGnNx' \
    --body '{"appId": "7tAcJAxp", "privateKey": "af0vYqQK", "publicKey": "4ar7yI2D", "returnUrl": "dQLFsiJK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateAliPayConfig' test.out

#- 258 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'QlZTcESs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestAliPayConfigById' test.out

#- 259 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'RYKAYoNp' \
    --body '{"publicKey": "aRnpw51j", "secretKey": "OQ8Osaod"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateCheckoutConfig' test.out

#- 260 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'Df1c7Xeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestCheckoutConfigById' test.out

#- 261 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'LAX0Mwo5' \
    --body '{"clientID": "R6KMMqOj", "clientSecret": "1uMFXrdd", "returnUrl": "r1iPsLhI", "webHookId": "6vDE5v7j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdatePayPalConfig' test.out

#- 262 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '5qhQ7WcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestPayPalConfigById' test.out

#- 263 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'qpsPXiFp' \
    --body '{"allowedPaymentMethodTypes": ["yfp3RBnB", "ESR2eKyG", "UG9OsiHr"], "publishableKey": "DyaprT1P", "secretKey": "5N8xkMxw", "webhookSecret": "rpuBEEGo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateStripeConfig' test.out

#- 264 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'v7UGF9gT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestStripeConfigById' test.out

#- 265 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'mVwU1LXk' \
    --body '{"appId": "o0vSZuVa", "key": "rbGTV97v", "mchid": "uUR5K0FJ", "returnUrl": "5jQA5A2x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfig' test.out

#- 266 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'juUiWV7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateWxPayConfigCert' test.out

#- 267 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '2uaHr3xQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestWxPayConfigById' test.out

#- 268 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'PWEBEEFq' \
    --body '{"apiKey": "0eaz6YxJ", "flowCompletionUrl": "2SqbBvEf", "merchantId": 6, "projectId": 40, "projectSecretKey": "SKp2HvYe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaConfig' test.out

#- 269 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '3GQhwegC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfigById' test.out

#- 270 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '2ERm63KY' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
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
    --body '{"aggregate": "XSOLLA", "namespace": "16opxRg4", "region": "Fafl5ahS", "sandboxTaxJarApiToken": "xdQAewuf", "specials": ["CHECKOUT", "XSOLLA", "WXPAY"], "taxJarApiToken": "SJLrDbbw", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
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
    'qdtStpGm' \
    --body '{"aggregate": "XSOLLA", "namespace": "MPm9P2s5", "region": "8yKEuDOF", "sandboxTaxJarApiToken": "Uxd4w824", "specials": ["ALIPAY", "CHECKOUT", "WALLET"], "taxJarApiToken": "oyhY8PUG", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'UpdatePaymentProviderConfig' test.out

#- 277 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'o0eViAUe' \
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
    --body '{"sandboxTaxJarApiToken": "JujEsuRE", "taxJarApiToken": "nxNFcj7u", "taxJarEnabled": false, "taxJarProductCodesMapping": {"qj31h6ep": "CxM9u5Ny", "3AbM45aq": "KEKtV6Az", "DwsZWxim": "1mEa5hHf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdatePaymentTaxConfig' test.out

#- 280 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '4GxkuaBN' \
    '622aGMML' \
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
    '7SAb1MTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetCategory' test.out

#- 284 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'xlw9OCLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetChildCategories' test.out

#- 285 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'R5DwzxIW' \
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
    'bPEK9oHr' \
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
    'rEhItbyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemBySku' test.out

#- 290 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'FoFU0BSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicBulkGetItems' test.out

#- 291 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["jAjkyeku", "a8TawI6x", "fdsILpsp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicValidateItemPurchaseCondition' test.out

#- 292 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '4pjA9KfZ' \
    'J7Aa0s0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicSearchItems' test.out

#- 293 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'ZVLBJFTc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetApp' test.out

#- 294 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '0icNEemW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItemDynamicData' test.out

#- 295 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'd7VSaeGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetItem' test.out

#- 296 GetPaymentCustomization
eval_tap 0 296 'GetPaymentCustomization # SKIP deprecated' test.out

#- 297 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "XD9f9AZB", "paymentProvider": "WALLET", "returnUrl": "C4bVz8j3", "ui": "YuJ07rTT", "zipCode": "V6ss45s4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentUrl' test.out

#- 298 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'JmeHOt26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPaymentMethods' test.out

#- 299 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'Pp3mmAwM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUnpaidPaymentOrder' test.out

#- 300 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'F6QSRUU3' \
    --body '{"token": "xobV1zIV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'Pay' test.out

#- 301 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'HeCLKnuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicCheckPaymentOrderPaidStatus' test.out

#- 302 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    '10l4Jfk2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetPaymentPublicConfig' test.out

#- 303 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'xnrqlpNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetQRCode' test.out

#- 304 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'z0cdl75h' \
    'wLMEYwkS' \
    'PAYPAL' \
    'eQIRjmj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicNormalizePaymentReturnUrl' test.out

#- 305 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Ja38Fz5I' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetPaymentTaxValue' test.out

#- 306 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'AThgGZlH' \
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
    'uCi5GxoG' \
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
    'tbmteYHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 312 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'Moxu6jsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 313 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'g6e78yVn' \
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
    'fxCB2qPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyWallet' test.out

#- 316 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'CcCvSJSQ' \
    --body '{"epicGamesJwtToken": "gsEmFXiX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'SyncEpicGameDLC' test.out

#- 317 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'eHybFxRy' \
    --body '{"serviceLabel": 38}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicSyncPsnDlcInventory' test.out

#- 318 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'u5UPyjg3' \
    --body '{"appId": "L3IVYcV2", "steamId": "hwRPp5FX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncSteamDLC' test.out

#- 319 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'hA83ah1K' \
    --body '{"xstsToken": "o66YOCfd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'SyncXboxDLC' test.out

#- 320 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'NZQ6c37t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlements' test.out

#- 321 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'r58SlMWL' \
    'roAP6A8W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserAppEntitlementByAppId' test.out

#- 322 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'HYveyqle' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserEntitlementsByAppType' test.out

#- 323 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'HVOGjWJf' \
    'VMA4dzaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementByItemId' test.out

#- 324 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'gJloZ893' \
    'lcL1A1QI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementBySku' test.out

#- 325 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'cqilv3mN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicExistsAnyUserActiveEntitlement' test.out

#- 326 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '4K47BaaI' \
    'CQZOxY3X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'sjsnMDxp' \
    '0LFSjdlB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 328 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'ARM69j30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 329 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'kR6tPDl1' \
    '5bzxI9Ee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 330 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'kF6G3PR5' \
    'SBzE4eZD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlement' test.out

#- 331 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'TL7eNC30' \
    'pQsV4h6I' \
    --body '{"options": ["v73ZyDTe", "dnTZKWvo", "Z9fQK5MZ"], "requestId": "IIre4rY4", "useCount": 89}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicConsumeUserEntitlement' test.out

#- 332 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'ML6PCoYW' \
    --body '{"code": "ntoJZWmH", "language": "xf", "region": "ft3jftKU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicRedeemCode' test.out

#- 333 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '46d3V975' \
    --body '{"excludeOldTransactions": false, "language": "Mq", "productId": "H9eAzej8", "receiptData": "N6wKHy1z", "region": "hSoxDfdQ", "transactionId": "tkMuicCr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillAppleIAPItem' test.out

#- 334 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'LzGjLgIm' \
    --body '{"epicGamesJwtToken": "HiDXHIEj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'SyncEpicGamesInventory' test.out

#- 335 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'HwEcGaXk' \
    --body '{"autoAck": false, "language": "pK_sL", "orderId": "cwoTMqfE", "packageName": "XDQElVbe", "productId": "gxcBwDCI", "purchaseTime": 77, "purchaseToken": "TKYUDnMS", "region": "eRoBrutm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicFulfillGoogleIAPItem' test.out

#- 336 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '0UgffQzu' \
    --body '{"currencyCode": "FNqNUQzO", "price": 0.5898259450778803, "productId": "CigmXJwv", "serviceLabel": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicReconcilePlayStationStore' test.out

#- 337 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'Fqa9I2NF' \
    --body '{"appId": "Br4mYAjT", "language": "QK", "region": "OMzXdx4v", "stadiaPlayerId": "Vw7R8QPP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'SyncStadiaEntitlement' test.out

#- 338 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'wsGzf7F6' \
    --body '{"appId": "DdsUVPd1", "currencyCode": "NBTWfnsp", "language": "Hfk_hUMk-vN", "price": 0.009098479770590417, "productId": "5DP2ubmP", "region": "ZTA6Tho6", "steamId": "LMvUE328"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'SyncSteamInventory' test.out

#- 339 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'DqnBYPht' \
    --body '{"gameId": "ycMy1KWn", "language": "mk-tGND", "region": "oLbAlmwF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncTwitchDropsEntitlement' test.out

#- 340 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'hllYc3Tz' \
    --body '{"currencyCode": "VVoaKIaR", "price": 0.30153084622048154, "productId": "OwjyNcpL", "xstsToken": "9PdyUQle"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxInventory' test.out

#- 341 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'PHLIi0No' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserOrders' test.out

#- 342 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'afm58TvZ' \
    --body '{"currencyCode": "4tB6ck9i", "discountedPrice": 84, "ext": {"sXoJTozV": {}, "MvZRsMAD": {}, "hWaCtLIG": {}}, "itemId": "x2KlKVE0", "language": "pwN_iP", "price": 46, "quantity": 89, "region": "MbgfKTdi", "returnUrl": "5OTnBUIE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicCreateUserOrder' test.out

#- 343 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'MztZtgTL' \
    'bYmAdDRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrder' test.out

#- 344 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'cydKvm8x' \
    'MbX1OEQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelUserOrder' test.out

#- 345 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'QTjFuAyj' \
    'Ufo7BQ6O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserOrderHistories' test.out

#- 346 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'x7rSFpye' \
    'W7okinpM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicDownloadUserOrderReceipt' test.out

#- 347 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'dV8znuSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetPaymentAccounts' test.out

#- 348 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '3Cdh3oGs' \
    'card' \
    'eFp3Dpm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicDeletePaymentAccount' test.out

#- 349 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'seySP8Kf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicQueryUserSubscriptions' test.out

#- 350 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'o7N3RppM' \
    --body '{"currencyCode": "vtFU3p8E", "itemId": "Ihrib9vn", "language": "BXZ_pNrY", "region": "0azJ6NWf", "returnUrl": "hFfikLZ0", "source": "Az39587W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicSubscribeSubscription' test.out

#- 351 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '319JrxQa' \
    'Jf8JEP8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 352 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    '7VfGouxm' \
    'p3GNEzAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetUserSubscription' test.out

#- 353 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'yMNOv0EM' \
    'SNptPp0M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicChangeSubscriptionBillingAccount' test.out

#- 354 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'EEVvOEzb' \
    '327ReAv7' \
    --body '{"immediate": true, "reason": "1un0giXK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicCancelSubscription' test.out

#- 355 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'klbpjc7G' \
    'eol71711' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetUserSubscriptionBillingHistories' test.out

#- 356 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'nR5dro0g' \
    'Nb42a1sR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetWallet' test.out

#- 357 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'GnvOVEFu' \
    '0f7ChU1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicListUserWalletTransactions' test.out

#- 358 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'QueryItems1' test.out

#- 359 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'ImportStore1' test.out

#- 360 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    '7kfpQoYz' \
    --body '{"itemIds": ["XauW1QL5", "WfKUIM6d", "525ZT2em"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
