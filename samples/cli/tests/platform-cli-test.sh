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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "eDVnPk6Q", "appType": "DEMO", "baseAppId": "lKEdVS2n", "boothName": "CfpUjRDo", "boundItemIds": ["Tb9drVPU", "EfpbLK5J", "t3l6hYdU"], "categoryPath": "UKibJG8D", "clazz": "biFnmFZe", "createdAt": "1973-05-16T00:00:00Z", "description": "1lpwBU6x", "displayOrder": 89, "entitlementType": "DURABLE", "ext": {"hyN3qW4z": {}, "pCQkQqyp": {}, "eKA1SaPz": {}}, "features": ["69WGBMEh", "CKRs7Ugq", "4yFJRZeC"], "fresh": true, "images": [{"as": "WGA68WNU", "caption": "IAUU76q2", "height": 88, "imageUrl": "AdNxWKfU", "smallImageUrl": "LBLyHfSH", "width": 66}, {"as": "Jtj8EIiX", "caption": "r1eqO80Y", "height": 62, "imageUrl": "WcG4s1Ly", "smallImageUrl": "exy2Gl8e", "width": 84}, {"as": "xNjIMtnk", "caption": "aKBukE4o", "height": 7, "imageUrl": "8eBpqfbY", "smallImageUrl": "DzrYP8yb", "width": 51}], "itemId": "nO734r8v", "itemIds": ["ESdXH3N1", "hy0V2QkT", "s6JMPGbi"], "itemQty": {"JK4FdBAh": 10, "8HW9gLcI": 38, "2JcwLijT": 60}, "itemType": "INGAMEITEM", "language": "9wJzNSCa", "listable": false, "localExt": {"ujfTw00b": {}, "mgDiN8Th": {}, "gOTXtP3g": {}}, "longDescription": "IXAMYm3c", "lootBoxConfig": {"rewardCount": 14, "rewards": [{"lootBoxItems": [{"count": 75, "itemId": "6VPMxvfC", "itemSku": "xX1nTG14", "itemType": "orlQxE5S"}, {"count": 88, "itemId": "8FFqrEIU", "itemSku": "ppkaWP3u", "itemType": "r2i7poFm"}, {"count": 6, "itemId": "Tr5rhiX1", "itemSku": "BccqnuQy", "itemType": "ITGQaKCK"}], "name": "uunF0YqZ", "odds": 0.7636594659341742, "type": "PROBABILITY_GROUP", "weight": 10}, {"lootBoxItems": [{"count": 39, "itemId": "9eP7RxGv", "itemSku": "DOwNGeEZ", "itemType": "y977DJXS"}, {"count": 97, "itemId": "BsyE44gJ", "itemSku": "QTlQKcX5", "itemType": "TMfMSpwG"}, {"count": 84, "itemId": "Nh9HpfSJ", "itemSku": "3CWp1Zw0", "itemType": "NIvOeEzF"}], "name": "LieB871Q", "odds": 0.29923081883398794, "type": "REWARD_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 94, "itemId": "IJGPnlqJ", "itemSku": "NIXPoOVn", "itemType": "bXqfAiF6"}, {"count": 16, "itemId": "g8Me6Slp", "itemSku": "VgDMEwXu", "itemType": "e6392kSw"}, {"count": 99, "itemId": "ecbsQYjS", "itemSku": "aJ935UMB", "itemType": "5owr1DZw"}], "name": "bwOCrRNu", "odds": 0.7262715359131012, "type": "REWARD_GROUP", "weight": 85}]}, "maxCount": 81, "maxCountPerUser": 83, "name": "KfUYEnut", "namespace": "fkSnUXV5", "optionBoxConfig": {"boxItems": [{"count": 27, "itemId": "ugastaN1", "itemSku": "8OQkpG6L", "itemType": "q62IqOSW"}, {"count": 17, "itemId": "IR2GTaNT", "itemSku": "4CCevqCi", "itemType": "ssO6iSUm"}, {"count": 86, "itemId": "lEnt0lna", "itemSku": "NwqqTOog", "itemType": "iVyD0Azt"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 4, "comparison": "includes", "name": "QLErJQZr", "predicateType": "SeasonPassPredicate", "value": "ZtOlLnph", "values": ["VOYUuNgC", "SEq58BhB", "2wthGuYt"]}, {"anyOf": 33, "comparison": "isGreaterThanOrEqual", "name": "cmpfnmCC", "predicateType": "SeasonTierPredicate", "value": "t72fNYzI", "values": ["sRedzI3X", "GLJzRHWB", "JtiXsjQC"]}, {"anyOf": 32, "comparison": "includes", "name": "dQJdfG7F", "predicateType": "EntitlementPredicate", "value": "VdgxUqa0", "values": ["kP6var3l", "aFzjDKJ0", "Nstr7PrI"]}]}, {"operator": "and", "predicates": [{"anyOf": 10, "comparison": "isLessThan", "name": "BL6XcBTn", "predicateType": "SeasonTierPredicate", "value": "WmCcsyBn", "values": ["gWxitdQ3", "Jc8xwws4", "PlKUHFXo"]}, {"anyOf": 73, "comparison": "isLessThanOrEqual", "name": "zsCH0XX7", "predicateType": "SeasonTierPredicate", "value": "S8hVpP9W", "values": ["RuJLrMY0", "6pYCZcak", "EMmsgTHS"]}, {"anyOf": 76, "comparison": "is", "name": "hnpbu1jj", "predicateType": "SeasonTierPredicate", "value": "qYYKqDL3", "values": ["NgQurenh", "vOJcXaDh", "BDPRBNFv"]}]}, {"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isGreaterThan", "name": "s8N1ro9X", "predicateType": "SeasonPassPredicate", "value": "Hkx2vFpx", "values": ["UsXmKJXb", "pDOKwSEE", "yl2Tj0bx"]}, {"anyOf": 4, "comparison": "isGreaterThan", "name": "w81uBmVh", "predicateType": "EntitlementPredicate", "value": "0Xw1owCc", "values": ["PQtUgF2l", "RNDz1Z5i", "3J3iPPbg"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "lClUSx2u", "predicateType": "SeasonPassPredicate", "value": "Ay9j0d5k", "values": ["neIlJdy8", "hHvNcRYV", "rT3ZxE1l"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 44, "fixedTrialCycles": 75, "graceDays": 55}, "region": "JbzNjsXS", "regionData": [{"currencyCode": "uzlihUFc", "currencyNamespace": "ojSaiQp6", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1994-01-17T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1992-11-19T00:00:00Z", "discountedPrice": 5, "expireAt": "1994-08-02T00:00:00Z", "price": 38, "purchaseAt": "1977-05-08T00:00:00Z", "trialPrice": 42}, {"currencyCode": "cqUQopci", "currencyNamespace": "XUApev0b", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1974-11-27T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1985-03-12T00:00:00Z", "discountedPrice": 84, "expireAt": "1998-11-08T00:00:00Z", "price": 43, "purchaseAt": "1975-01-13T00:00:00Z", "trialPrice": 38}, {"currencyCode": "YDT6gm9k", "currencyNamespace": "OKI8hvOQ", "currencyType": "VIRTUAL", "discountAmount": 20, "discountExpireAt": "1995-07-30T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1972-01-01T00:00:00Z", "discountedPrice": 47, "expireAt": "1998-11-21T00:00:00Z", "price": 91, "purchaseAt": "1976-12-12T00:00:00Z", "trialPrice": 17}], "seasonType": "TIER", "sku": "4bzdR2vI", "stackable": false, "status": "INACTIVE", "tags": ["OfqLjpEb", "mESVYHEp", "7xyXmcod"], "targetCurrencyCode": "xtXOLHbE", "targetItemId": "ZDGpj7XN", "targetNamespace": "eSYqXIPZ", "thumbnailUrl": "FjApTCOI", "title": "3Hij1Bor", "updatedAt": "1987-06-11T00:00:00Z", "useCount": 26}, "namespace": "7AIPpyZG", "order": {"currency": {"currencyCode": "cQjat9MM", "currencySymbol": "DpnmGwN4", "currencyType": "VIRTUAL", "decimals": 82, "namespace": "Nb7ja6VT"}, "ext": {"htntMdef": {}, "0aeJ8iaa": {}, "iTmpLvr3": {}}, "free": false}, "source": "DLC"}, "script": "8mxrZR62", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'mt6bLz7R' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'xawQXyyT' --body '{"grantDays": "hC168W03"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'amLt8N1y' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'wv5hOVf1' --body '{"grantDays": "hNTVy8bk"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "6LhlbYNx", "dryRun": false, "fulfillmentUrl": "Rin90UfD", "itemType": "SUBSCRIPTION", "purchaseConditionUrl": "IwyRzimz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'COINS' --login_with_auth "Bearer foo"
platform-get-item-type-config 'sbEjH6AH' --login_with_auth "Bearer foo"
platform-update-item-type-config 'x2pMaN6i' --body '{"clazz": "IkXqk4P9", "dryRun": true, "fulfillmentUrl": "U9C3DLZ3", "purchaseConditionUrl": "csuO9Uxa"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'Q7bFqHnP' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "uo93nHfm", "items": [{"extraSubscriptionDays": 50, "itemId": "vNcEAYuU", "itemName": "ciUINA38", "quantity": 51}, {"extraSubscriptionDays": 20, "itemId": "uxWX8KV1", "itemName": "2RplbRlo", "quantity": 63}, {"extraSubscriptionDays": 52, "itemId": "JPNQ6Xww", "itemName": "BOlliSX8", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 24, "maxRedeemCountPerCode": 15, "maxRedeemCountPerCodePerUser": 87, "maxSaleCount": 70, "name": "JCSzQKdf", "redeemEnd": "1973-08-27T00:00:00Z", "redeemStart": "1992-12-08T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["iX7K6eA5", "Y34FBrdy", "pnZhwY8Y"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'GGyKItWZ' --login_with_auth "Bearer foo"
platform-update-campaign '7rHuBPFJ' --body '{"description": "MnW2vkA9", "items": [{"extraSubscriptionDays": 29, "itemId": "vHDwWGD2", "itemName": "IOcJxj3Z", "quantity": 37}, {"extraSubscriptionDays": 65, "itemId": "ODoEhUfV", "itemName": "SgcPDOEy", "quantity": 66}, {"extraSubscriptionDays": 70, "itemId": "tQkCVxAM", "itemName": "Kbm6ZFc9", "quantity": 80}], "maxRedeemCountPerCampaignPerUser": 42, "maxRedeemCountPerCode": 22, "maxRedeemCountPerCodePerUser": 38, "maxSaleCount": 61, "name": "G8rxu0z8", "redeemEnd": "1984-11-25T00:00:00Z", "redeemStart": "1977-08-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["jyISGCvG", "RiAwcVKb", "TTgPGq24"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'c3J5pcFK' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'tDSOPoOx' --body '{"categoryPath": "Lr9Urtq8", "localizationDisplayNames": {"5PPtAyy4": "sZ7iOBfG", "yfSN7TJG": "SCBcOTIO", "HZm36nX7": "GtUoZykJ"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category '3FAAT26j' --login_with_auth "Bearer foo"
platform-update-category 'PpDR4Ylo' 'f9nqzhsW' --body '{"localizationDisplayNames": {"A9IdMVvw": "Ztp3MxuI", "S70suCXZ": "GGwzwMlR", "quSKN2MQ": "7tlDP55n"}}' --login_with_auth "Bearer foo"
platform-delete-category 'hZnnewkU' '6qQoJh91' --login_with_auth "Bearer foo"
platform-get-child-categories 'YqjOR3Fk' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'H3ssnenZ' --login_with_auth "Bearer foo"
platform-query-codes 'MgrpKH7v' --login_with_auth "Bearer foo"
platform-create-codes 'Cz7YF4D2' --body '{"quantity": 26}' --login_with_auth "Bearer foo"
platform-download 'e5k3jAd7' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'LAY9sAOn' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'ojbjBHPA' --login_with_auth "Bearer foo"
platform-query-redeem-history '6aAcPTNs' --login_with_auth "Bearer foo"
platform-get-code 'RnzMLfa3' --login_with_auth "Bearer foo"
platform-disable-code '1CcG62VX' --login_with_auth "Bearer foo"
platform-enable-code 'SjqeWCjO' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "wd6pfPsY", "currencySymbol": "Afa52FfH", "currencyType": "REAL", "decimals": 9, "localizationDescriptions": {"J7MOLNtE": "i8wGOAeT", "10mzQOt5": "5cDvdhy6", "lXH33rbI": "VNnMepYS"}}' --login_with_auth "Bearer foo"
platform-update-currency 'zq5RXjXx' --body '{"localizationDescriptions": {"d60sbvX5": "NSMuOkoe", "K04yCJ9Y": "5tc7GKGK", "jEgi3u05": "bOO78hiw"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'tErLxovK' --login_with_auth "Bearer foo"
platform-get-currency-config 'F0ddBLFM' --login_with_auth "Bearer foo"
platform-get-currency-summary 'F8lFi6ra' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "BCiFiITF", "rewards": [{"currency": {"currencyCode": "lfdOGV0Q", "namespace": "v4kstLtJ"}, "item": {"itemId": "ZFe3h0z3", "itemSku": "1NjNJKBe", "itemType": "04RVsgTb"}, "quantity": 28, "type": "CURRENCY"}, {"currency": {"currencyCode": "pGNpqzTw", "namespace": "GvLFRpS7"}, "item": {"itemId": "PWGs8ozK", "itemSku": "L3Xa9pgZ", "itemType": "FrR5Lk5i"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "5lUkFtXQ", "namespace": "Moqnh3n6"}, "item": {"itemId": "EaLDYe6n", "itemSku": "8bE2XFvA", "itemType": "IgAb7Vdg"}, "quantity": 67, "type": "ITEM"}]}, {"id": "PAsyufhz", "rewards": [{"currency": {"currencyCode": "c4NG2Neu", "namespace": "fb86zPGf"}, "item": {"itemId": "HnD4fQ3Q", "itemSku": "b9Xc3Kii", "itemType": "HbqLq1rb"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "RfgEuNez", "namespace": "M3pgtPVa"}, "item": {"itemId": "4nLseWOQ", "itemSku": "We8LLf6D", "itemType": "qJoW6gwt"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "koLHCQ7k", "namespace": "n9vGl3Ck"}, "item": {"itemId": "m5Velnj3", "itemSku": "DCYVtWdL", "itemType": "M2naGsNp"}, "quantity": 70, "type": "CURRENCY"}]}, {"id": "nu1wd3ZR", "rewards": [{"currency": {"currencyCode": "w6z567yL", "namespace": "jvzaPcLw"}, "item": {"itemId": "Bf0gR58h", "itemSku": "Exd74mX0", "itemType": "qLT8gdoC"}, "quantity": 89, "type": "ITEM"}, {"currency": {"currencyCode": "Z7CBr0CK", "namespace": "EOT2u8wv"}, "item": {"itemId": "eD5qGXUl", "itemSku": "Mc0eRSIJ", "itemType": "XrmzjSqu"}, "quantity": 84, "type": "ITEM"}, {"currency": {"currencyCode": "BvxMsilm", "namespace": "Dc35BC9A"}, "item": {"itemId": "V5fK3JBt", "itemSku": "qNJmnGxn", "itemType": "Ss5xYzHz"}, "quantity": 97, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"byqwN6Ne": "CTSXRGsp", "DcuZOKcR": "kLKkH6e9", "gdiKDWNE": "cJYC7GAM"}}, {"platform": "PSN", "platformDlcIdMap": {"9Sem6xYx": "1j3UgOEc", "YcEEdzsE": "sjWYZd7t", "7PQSMipE": "OIveDpbd"}}, {"platform": "PSN", "platformDlcIdMap": {"A3SpONlK": "imp1ds8Z", "5FFbkOA7": "JlDlZwmc", "8yqRlqvX": "soCUGnvb"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement '8Zwl6fvF' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "SxGNfOgl", "password": "9qKi6Ut1"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "z1WGY0mP"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "rR6Y1mLr", "serviceAccountId": "Y8Xc2F7U"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "RA0oq1TF", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YihPxM1a": "X3QSI8X3", "H2K7Q2HN": "1s4CRthD", "Kxr0IdqX": "ix98w52H"}}, {"itemIdentity": "42qmPT92", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"iXSExAKb": "3c5DBoUt", "lc46QQgp": "ukdR3N2C", "2yvNhFGR": "R6OR93BP"}}, {"itemIdentity": "LhB8bHz3", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"WIaiE4wf": "1yAT20Vu", "jxMDXNqW": "JBK6jK04", "zYCr9ZNW": "ORRTjGRp"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "si3JNPrx"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "FqjmJAd6", "publisherAuthenticationKey": "Hmm57PFY"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "aAtZcRS7", "clientSecret": "rbT2q6Kr", "organizationId": "U1LUkOW8"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "MJPYM2Ln"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'eHKCG6um' 'qXcYM99Y' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'SbNLu3IC' 'TwZzA19o' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'OqSLVV1S' --body '{"categoryPath": "aY0P91nC", "targetItemId": "LzU30rX0", "targetNamespace": "aua9Ot1o"}' --login_with_auth "Bearer foo"
platform-create-item 'ChTFBtoX' --body '{"appId": "4hdKLMCO", "appType": "DEMO", "baseAppId": "D7n0nCr2", "boothName": "bCalctLo", "categoryPath": "DsaF6Ybd", "clazz": "LuSrfbS7", "displayOrder": 36, "entitlementType": "DURABLE", "ext": {"CoYgZGTq": {}, "YycPuDdO": {}, "o2LFK6Ot": {}}, "features": ["kYKuiqYm", "wZq9AZIZ", "ECf3HQrG"], "images": [{"as": "NvKmnU1L", "caption": "tLQEGaBn", "height": 51, "imageUrl": "BNV5ZWVl", "smallImageUrl": "MaxpS2fR", "width": 52}, {"as": "Lo5c5HcL", "caption": "zPT86wau", "height": 74, "imageUrl": "cEkGtuMi", "smallImageUrl": "4vpaDXVI", "width": 99}, {"as": "3vc5Z0Yu", "caption": "arw4coCu", "height": 26, "imageUrl": "JTcHoXPs", "smallImageUrl": "7LaipBCh", "width": 2}], "itemIds": ["MFn4wHZW", "UXSRKcPS", "ElDIKtGh"], "itemQty": {"7qRplqiz": 16, "B4wW036M": 43, "syGTFORM": 34}, "itemType": "LOOTBOX", "listable": true, "localizations": {"4ifup8lc": {"description": "pxpDwnaY", "localExt": {"TvLSGoz9": {}, "qBTvqMR0": {}, "QQpunf4P": {}}, "longDescription": "PORt4UBS", "title": "8ImMJQcr"}, "ZsmC9VQQ": {"description": "gMtuQWdM", "localExt": {"ESPboo4R": {}, "zudywRRq": {}, "5lSpulfn": {}}, "longDescription": "VSTeCFcw", "title": "Nt68fKEd"}, "Bo8KNQ8v": {"description": "YFR6byXy", "localExt": {"4BC6jjvH": {}, "RMvaf9Pm": {}, "NKKpBWts": {}}, "longDescription": "4y53Gs03", "title": "bnwMmEuR"}}, "lootBoxConfig": {"rewardCount": 59, "rewards": [{"lootBoxItems": [{"count": 55, "itemId": "zr79imHR", "itemSku": "bRvz5PDJ", "itemType": "DfRXYoki"}, {"count": 24, "itemId": "kR0VonQr", "itemSku": "FDmQfkZR", "itemType": "V37aiGI2"}, {"count": 91, "itemId": "Wz4hx9sM", "itemSku": "lXnc63xY", "itemType": "BDnMSOHH"}], "name": "H14oqplf", "odds": 0.14847497754546257, "type": "PROBABILITY_GROUP", "weight": 79}, {"lootBoxItems": [{"count": 61, "itemId": "mwYCWeBz", "itemSku": "ZoUVh7LE", "itemType": "axV90JYb"}, {"count": 4, "itemId": "O9XjdZDt", "itemSku": "YwAgBbci", "itemType": "XMmbt3AC"}, {"count": 80, "itemId": "qRBQTlCh", "itemSku": "xIwNmVIr", "itemType": "8QHucByo"}], "name": "aZBnDXGh", "odds": 0.4145505979356576, "type": "PROBABILITY_GROUP", "weight": 73}, {"lootBoxItems": [{"count": 3, "itemId": "KzjcYe9A", "itemSku": "11enB27j", "itemType": "hFAXHP7l"}, {"count": 37, "itemId": "UUWgZxz5", "itemSku": "483E9q21", "itemType": "kVcJRFiL"}, {"count": 89, "itemId": "1AvzDCWj", "itemSku": "aYIdgh91", "itemType": "FopmGQBB"}], "name": "GZaonsVy", "odds": 0.4984537902686875, "type": "PROBABILITY_GROUP", "weight": 24}]}, "maxCount": 98, "maxCountPerUser": 30, "name": "zPDal8Ux", "optionBoxConfig": {"boxItems": [{"count": 22, "itemId": "4wKXHgu6", "itemSku": "YpzJp8U0", "itemType": "BmzfecEt"}, {"count": 58, "itemId": "VD602N56", "itemSku": "CYVpIzO7", "itemType": "wmQBU9nr"}, {"count": 16, "itemId": "8BqQ6OvA", "itemSku": "qIEyTdKn", "itemType": "8cycNXpN"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 43, "fixedTrialCycles": 74, "graceDays": 73}, "regionData": {"uuaoqX02": [{"currencyCode": "l4wUB849", "currencyNamespace": "3bGyzXTl", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1984-04-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1976-08-14T00:00:00Z", "discountedPrice": 17, "expireAt": "1996-02-04T00:00:00Z", "price": 87, "purchaseAt": "1983-04-25T00:00:00Z", "trialPrice": 90}, {"currencyCode": "g7gmgqyi", "currencyNamespace": "TCTK3F7w", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1990-03-04T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1972-08-30T00:00:00Z", "discountedPrice": 90, "expireAt": "1998-08-23T00:00:00Z", "price": 43, "purchaseAt": "1971-01-27T00:00:00Z", "trialPrice": 64}, {"currencyCode": "JlmuXFDs", "currencyNamespace": "rgbbHYTY", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1986-10-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1981-04-26T00:00:00Z", "discountedPrice": 64, "expireAt": "1974-05-04T00:00:00Z", "price": 31, "purchaseAt": "1994-11-14T00:00:00Z", "trialPrice": 10}], "8KeWycCP": [{"currencyCode": "S6DpAFIk", "currencyNamespace": "VgKdo09P", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1978-08-23T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1993-04-02T00:00:00Z", "discountedPrice": 16, "expireAt": "1988-12-08T00:00:00Z", "price": 55, "purchaseAt": "1991-09-24T00:00:00Z", "trialPrice": 6}, {"currencyCode": "NPWBrTf2", "currencyNamespace": "EEG0V6qV", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1993-09-10T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1998-01-02T00:00:00Z", "discountedPrice": 25, "expireAt": "1982-08-23T00:00:00Z", "price": 43, "purchaseAt": "1978-07-14T00:00:00Z", "trialPrice": 48}, {"currencyCode": "FpN3pKdh", "currencyNamespace": "KpyrVGZZ", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1997-09-28T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1989-04-05T00:00:00Z", "discountedPrice": 39, "expireAt": "1974-06-23T00:00:00Z", "price": 11, "purchaseAt": "1998-10-31T00:00:00Z", "trialPrice": 92}], "jLHTUKP2": [{"currencyCode": "9h8lcraX", "currencyNamespace": "zgblTwMh", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1993-05-14T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1988-01-12T00:00:00Z", "discountedPrice": 100, "expireAt": "1988-09-16T00:00:00Z", "price": 96, "purchaseAt": "1983-12-12T00:00:00Z", "trialPrice": 23}, {"currencyCode": "Uqi8RnAU", "currencyNamespace": "RJy7AooV", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1986-10-15T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1978-02-02T00:00:00Z", "discountedPrice": 88, "expireAt": "1977-10-28T00:00:00Z", "price": 85, "purchaseAt": "1980-03-15T00:00:00Z", "trialPrice": 63}, {"currencyCode": "6ZAnbxEX", "currencyNamespace": "mY6nMBm6", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1998-08-27T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1993-11-15T00:00:00Z", "discountedPrice": 55, "expireAt": "1983-05-26T00:00:00Z", "price": 7, "purchaseAt": "1983-01-05T00:00:00Z", "trialPrice": 83}]}, "seasonType": "PASS", "sku": "vmzilKRh", "stackable": true, "status": "ACTIVE", "tags": ["yZWxn53S", "XgCpUDuS", "UP0Dfosf"], "targetCurrencyCode": "RtEEU35r", "targetNamespace": "hVkjUNbQ", "thumbnailUrl": "aNPCsVEN", "useCount": 26}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'LfcnNI70' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'KaXmz6Ta' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'wDA7wzG6' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'khGeHpNG' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'tBRGTLEh' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition '0w4CmaFU' --body '{"itemIds": ["gmPDFw1C", "tMbFa8yv", "TQwxh8yW"]}' --login_with_auth "Bearer foo"
platform-search-items 'vUnzIryb' 'MC753lZy' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'HBrkkVl0' --login_with_auth "Bearer foo"
platform-update-item 'VaXP0Hzv' 'HynIusRI' --body '{"appId": "QBS2NkS8", "appType": "SOFTWARE", "baseAppId": "Ov29LBf3", "boothName": "98QcZJ3R", "categoryPath": "k7lnAjM1", "clazz": "uar0tXyJ", "displayOrder": 93, "entitlementType": "CONSUMABLE", "ext": {"dkV5pA0t": {}, "UcWypwQS": {}, "0U6Hhso2": {}}, "features": ["KkuWh7rx", "3kJIyhmH", "7pnYoScG"], "images": [{"as": "84CSN5UT", "caption": "ThIhlUUC", "height": 36, "imageUrl": "vzE1WVSq", "smallImageUrl": "8nUEOlFq", "width": 73}, {"as": "zCXFhkG3", "caption": "qYSnFTtk", "height": 98, "imageUrl": "wzxlIcxo", "smallImageUrl": "2KIEBEOh", "width": 100}, {"as": "s2pqdrlr", "caption": "9CTUBLHU", "height": 12, "imageUrl": "ko7gdCPK", "smallImageUrl": "o4unPUh1", "width": 5}], "itemIds": ["5WHZSBWt", "MoqEyB9g", "gaABEtSd"], "itemQty": {"yenxaRpO": 82, "d356n5JE": 97, "rKzEv1aW": 13}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"YaIwlZwC": {"description": "F3V9oaJo", "localExt": {"7Eh7xXsh": {}, "ofFfyARC": {}, "lb6VyRvd": {}}, "longDescription": "q50aHKsB", "title": "TU2zslqH"}, "cpkvGaXi": {"description": "RNdbic4V", "localExt": {"xbYgipiQ": {}, "stUryfdM": {}, "cK0R20g0": {}}, "longDescription": "yRf2bt8R", "title": "PWuvEJXw"}, "3n5uS5S3": {"description": "WTuI0hcZ", "localExt": {"r2IyGPSo": {}, "7qB72nU9": {}, "zKzS3zew": {}}, "longDescription": "9YULvqn3", "title": "c5EzN79E"}}, "lootBoxConfig": {"rewardCount": 54, "rewards": [{"lootBoxItems": [{"count": 6, "itemId": "2VqNlxzk", "itemSku": "CKGohChB", "itemType": "6s9Zel1w"}, {"count": 24, "itemId": "lI6E253X", "itemSku": "zbk9pc3V", "itemType": "feuoPWV7"}, {"count": 78, "itemId": "AFpplSSd", "itemSku": "zNJnfXpe", "itemType": "OOv5zCUO"}], "name": "c7UJvzuN", "odds": 0.2611581953170834, "type": "REWARD_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 19, "itemId": "K8h864Dk", "itemSku": "RledjbEK", "itemType": "DRrjVwlT"}, {"count": 98, "itemId": "Scf8cmkC", "itemSku": "ww6uPV3x", "itemType": "vOQiQqVO"}, {"count": 28, "itemId": "GmIKFAj9", "itemSku": "jraf0M7P", "itemType": "PsRtv2N5"}], "name": "6IjV6G68", "odds": 0.7791595868302968, "type": "REWARD", "weight": 9}, {"lootBoxItems": [{"count": 43, "itemId": "bAxjhUNU", "itemSku": "eHVwjNlm", "itemType": "bokOFo4C"}, {"count": 67, "itemId": "fQMVnvhb", "itemSku": "DDPL7Wvn", "itemType": "o90sHjdG"}, {"count": 1, "itemId": "CYz9YwE0", "itemSku": "DSXNOdQG", "itemType": "zDz8FdiZ"}], "name": "WceLmBvn", "odds": 0.36753971749609493, "type": "PROBABILITY_GROUP", "weight": 15}]}, "maxCount": 1, "maxCountPerUser": 95, "name": "fn852M5C", "optionBoxConfig": {"boxItems": [{"count": 37, "itemId": "xDpBCvKv", "itemSku": "DA8vyKMw", "itemType": "bDrHoV2m"}, {"count": 86, "itemId": "6gohC6fN", "itemSku": "wzCIiKGE", "itemType": "zlGjb91V"}, {"count": 18, "itemId": "x8pFmRNz", "itemSku": "Zf3v1mah", "itemType": "sbNF6c4V"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 59, "fixedTrialCycles": 37, "graceDays": 25}, "regionData": {"mHm3Hmfi": [{"currencyCode": "WoK1FYbV", "currencyNamespace": "f9ye1n8T", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1996-04-05T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1977-02-28T00:00:00Z", "discountedPrice": 67, "expireAt": "1980-06-10T00:00:00Z", "price": 81, "purchaseAt": "1973-01-10T00:00:00Z", "trialPrice": 62}, {"currencyCode": "4tMH7cpE", "currencyNamespace": "hkI2tMzF", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1971-04-27T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1981-11-16T00:00:00Z", "discountedPrice": 19, "expireAt": "1987-01-06T00:00:00Z", "price": 87, "purchaseAt": "1989-11-07T00:00:00Z", "trialPrice": 40}, {"currencyCode": "vKyUoJ0X", "currencyNamespace": "zPbOzSF2", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1980-09-25T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1989-08-23T00:00:00Z", "discountedPrice": 83, "expireAt": "1988-01-16T00:00:00Z", "price": 13, "purchaseAt": "1971-09-30T00:00:00Z", "trialPrice": 36}], "mI0jWFCM": [{"currencyCode": "ZoK6XcRS", "currencyNamespace": "1C7UG0YK", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1972-12-25T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1991-01-19T00:00:00Z", "discountedPrice": 7, "expireAt": "1983-05-15T00:00:00Z", "price": 82, "purchaseAt": "1975-09-11T00:00:00Z", "trialPrice": 81}, {"currencyCode": "G3v3yyZT", "currencyNamespace": "b2jFKszn", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1978-04-08T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1971-05-08T00:00:00Z", "discountedPrice": 84, "expireAt": "1989-07-28T00:00:00Z", "price": 73, "purchaseAt": "1971-01-09T00:00:00Z", "trialPrice": 82}, {"currencyCode": "eYn2qVnp", "currencyNamespace": "udMQtS9r", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1993-12-20T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1980-06-04T00:00:00Z", "discountedPrice": 11, "expireAt": "1998-04-25T00:00:00Z", "price": 11, "purchaseAt": "1995-06-12T00:00:00Z", "trialPrice": 61}], "V3EaG8x0": [{"currencyCode": "B2V6mW0e", "currencyNamespace": "vdJRiL2R", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1986-09-01T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1971-07-20T00:00:00Z", "discountedPrice": 22, "expireAt": "1988-02-07T00:00:00Z", "price": 65, "purchaseAt": "1990-04-18T00:00:00Z", "trialPrice": 50}, {"currencyCode": "yiojsYpb", "currencyNamespace": "mcgWNSd1", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1984-06-24T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1975-12-09T00:00:00Z", "discountedPrice": 63, "expireAt": "1995-11-14T00:00:00Z", "price": 33, "purchaseAt": "1988-03-20T00:00:00Z", "trialPrice": 13}, {"currencyCode": "kL04pw9J", "currencyNamespace": "v9ZY63fC", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1976-04-10T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1982-03-24T00:00:00Z", "discountedPrice": 24, "expireAt": "1980-02-21T00:00:00Z", "price": 22, "purchaseAt": "1994-11-30T00:00:00Z", "trialPrice": 40}]}, "seasonType": "TIER", "sku": "q0N29qmw", "stackable": true, "status": "ACTIVE", "tags": ["xx4b09gy", "vvxRRZI4", "E7O3iklt"], "targetCurrencyCode": "CPqcAFqr", "targetNamespace": "oYRycTX6", "thumbnailUrl": "RI6OPbvq", "useCount": 19}' --login_with_auth "Bearer foo"
platform-delete-item 'GD8GHHQS' --login_with_auth "Bearer foo"
platform-acquire-item 'qjmNgKRH' --body '{"count": 48, "orderNo": "yzGWQnfM"}' --login_with_auth "Bearer foo"
platform-get-app 'J9vDlodh' --login_with_auth "Bearer foo"
platform-update-app 'b693psLK' 'mTk2ZJ6w' --body '{"carousel": [{"alt": "mH7jeC2B", "previewUrl": "cGZ2w5hi", "thumbnailUrl": "xZEcYXfI", "type": "image", "url": "j2qe7uqI", "videoSource": "vimeo"}, {"alt": "3VBD78j1", "previewUrl": "ZoGwJUol", "thumbnailUrl": "9XPYHVhR", "type": "video", "url": "gpOZQ13M", "videoSource": "generic"}, {"alt": "JRkoYaaD", "previewUrl": "b15qvsu4", "thumbnailUrl": "W4KjI9a5", "type": "image", "url": "UhK1oir7", "videoSource": "vimeo"}], "developer": "2KuDr86h", "forumUrl": "hj2yGwSg", "genres": ["RPG", "Strategy", "Indie"], "localizations": {"FtSHj41P": {"announcement": "oZblOBut", "slogan": "RzIoe4jb"}, "9d7T91Zv": {"announcement": "68PC4CeF", "slogan": "hHFn8CSM"}, "RneEmcWH": {"announcement": "pk3CcRYM", "slogan": "9GYkHUK0"}}, "platformRequirements": {"Cfe3Mkvg": [{"additionals": "YLWiGqmi", "directXVersion": "Xi2Vt5bP", "diskSpace": "MRAfEOgr", "graphics": "PYy7E9Ge", "label": "VqiNSyXs", "osVersion": "tmI0cZT7", "processor": "CsfKKxSd", "ram": "A2qj2G6u", "soundCard": "K9kDIqSK"}, {"additionals": "JDMvGhO6", "directXVersion": "2GQGhS6u", "diskSpace": "RJ7WgIlq", "graphics": "HrmztMLM", "label": "7IA4rfkT", "osVersion": "eujkz5dS", "processor": "mkuktxOg", "ram": "7OO0XGTR", "soundCard": "zNGGNP4m"}, {"additionals": "J3Jyf8Jc", "directXVersion": "5UkPPzFU", "diskSpace": "UOkjPWjR", "graphics": "NS8jabua", "label": "kXMNFeZg", "osVersion": "D8p1aQqG", "processor": "D2YbbxdP", "ram": "BvK9wTIZ", "soundCard": "txMnK8I4"}], "Qz8suGii": [{"additionals": "NJ7ULxGw", "directXVersion": "ICi0jz3W", "diskSpace": "WtcuLiuP", "graphics": "FfYlJ972", "label": "hnBoLpHr", "osVersion": "JgeqXXO0", "processor": "d5OLYV8i", "ram": "UfqeXiK3", "soundCard": "2oTAWXPJ"}, {"additionals": "4dKUuc1i", "directXVersion": "5XPT4u9Z", "diskSpace": "9QfI6If7", "graphics": "al8RzEUa", "label": "2VHxM73M", "osVersion": "C8POE9SO", "processor": "EYP1e13r", "ram": "m6ggwpw3", "soundCard": "TZVOn6or"}, {"additionals": "q9NWus2z", "directXVersion": "L6voZyXi", "diskSpace": "TSCYMrp4", "graphics": "X2eSJXKl", "label": "ZNjAiwYo", "osVersion": "FzF5ecd2", "processor": "RiLSmae6", "ram": "w7Y5n2vJ", "soundCard": "FxcIdLWr"}], "tUIYz3YU": [{"additionals": "vkjdBLJf", "directXVersion": "gDT0BdMv", "diskSpace": "mbkPkxCv", "graphics": "9EgZPy0P", "label": "wUMWuoNx", "osVersion": "DN9Qba4R", "processor": "BnevPZ1s", "ram": "lv7TTNem", "soundCard": "OsgjjyaQ"}, {"additionals": "4It6sE1U", "directXVersion": "wQNDxRAn", "diskSpace": "DhJtbBe2", "graphics": "rOcvA6CG", "label": "9y2BIVlW", "osVersion": "m5aB09N3", "processor": "6PTZbjvV", "ram": "te56SGqZ", "soundCard": "90yt2OV1"}, {"additionals": "XQ3tR9Ja", "directXVersion": "igbE4ZaF", "diskSpace": "XDUbwJIc", "graphics": "vCBTFYly", "label": "1kwnpRDO", "osVersion": "QMrxSba3", "processor": "5ptwon6f", "ram": "L7VsPHVV", "soundCard": "5Tt950H1"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["Multi", "Coop", "LocalCoop"], "primaryGenre": "MassivelyMultiplayer", "publisher": "Sz7urDV7", "releaseDate": "1987-10-07T00:00:00Z", "websiteUrl": "jPbmWbOs"}' --login_with_auth "Bearer foo"
platform-disable-item 'Uiu4qRIm' 'ovsmE1fR' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'sYJZXEcf' --login_with_auth "Bearer foo"
platform-enable-item 'pA45IH0p' '2Fy9V05x' --login_with_auth "Bearer foo"
platform-feature-item 'JEnmT09n' 'LHLGBqMC' 'sLxLfQuq' --login_with_auth "Bearer foo"
platform-defeature-item 'VVKKVvgs' 'cC5d7vMr' 'w7nZZ9xV' --login_with_auth "Bearer foo"
platform-get-locale-item 'X4Ij136B' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'i2vxtHLf' 'XDEWShWU' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 33, "comparison": "isLessThanOrEqual", "name": "RWdc6WGE", "predicateType": "EntitlementPredicate", "value": "8cHml3ro", "values": ["CnlP3Vcn", "V1JQ1sex", "8X0PppKI"]}, {"anyOf": 75, "comparison": "isNot", "name": "vvsitIZM", "predicateType": "SeasonTierPredicate", "value": "5DEw7HKO", "values": ["RPIzaki6", "Ciar1Kf5", "9sYoxEkQ"]}, {"anyOf": 61, "comparison": "isLessThan", "name": "QKYTukIz", "predicateType": "SeasonTierPredicate", "value": "nKVML8nF", "values": ["t0DPyBM0", "1Y8M0hEQ", "niElqvKi"]}]}, {"operator": "and", "predicates": [{"anyOf": 38, "comparison": "excludes", "name": "WalPGccO", "predicateType": "EntitlementPredicate", "value": "nyZ3fTnB", "values": ["Pr6XOYHN", "v2v26YZn", "fhkgjpHs"]}, {"anyOf": 13, "comparison": "is", "name": "6h6ffIRQ", "predicateType": "SeasonTierPredicate", "value": "XXrRlj7F", "values": ["Y3sdgyLH", "EyOpOwVN", "5TXXEHXb"]}, {"anyOf": 34, "comparison": "isLessThan", "name": "uG8zieTU", "predicateType": "EntitlementPredicate", "value": "Ry2DyoDn", "values": ["Epnrhqrx", "vhwtaTip", "GFh8JnDX"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "comparison": "isGreaterThan", "name": "6gAAZwgE", "predicateType": "EntitlementPredicate", "value": "KnF2Uy4I", "values": ["h20pu1qM", "uhpNF6MJ", "juQnjt6k"]}, {"anyOf": 77, "comparison": "includes", "name": "C2SCdkm0", "predicateType": "SeasonPassPredicate", "value": "2Cc0zWdM", "values": ["cJQHmX6t", "Fd8Joizc", "2Jvd8jyS"]}, {"anyOf": 71, "comparison": "isLessThan", "name": "qk4kCijn", "predicateType": "SeasonTierPredicate", "value": "sFcGwvM7", "values": ["75oUqjfX", "JN70nNC8", "9QEPinBc"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'aI3MdHVP' --body '{"orderNo": "ApFOTV6n"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "eJ1LzNAN", "name": "NpZ7a7to", "status": "INACTIVE", "tags": ["lAypV6f2", "gt8SqMN8", "nNmqYQKq"]}' --login_with_auth "Bearer foo"
platform-get-key-group '4k6dBgq7' --login_with_auth "Bearer foo"
platform-update-key-group 'eBqp7u3t' --body '{"description": "1Cz7ghg3", "name": "UiRnSbHH", "status": "ACTIVE", "tags": ["6fv8WJ84", "uZckWZy1", "ZCFHTBsu"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'JOHsAMxX' --login_with_auth "Bearer foo"
platform-list-keys 'QOGPCvHo' --login_with_auth "Bearer foo"
platform-upload-keys 'lXfAva59' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'icY3pS6E' --login_with_auth "Bearer foo"
platform-refund-order 'hd9duSBm' --body '{"description": "aanYxsp8"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "zcAFqgWj", "privateKey": "5I9TjKOF"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "7ctlthQ4", "currencyNamespace": "6OvtQp4z", "customParameters": {"oFFEJSo1": {}, "4z0PBbsu": {}, "goWU3WQi": {}}, "description": "7qhHigu4", "extOrderNo": "0doFT1e9", "extUserId": "rd1hMAAh", "itemType": "INGAMEITEM", "language": "KgWy_124", "metadata": {"XLgDfj3V": "MujkTe8j", "YzRxXMhS": "V4EDQ6Im", "LiknCI0m": "zYf8hr8p"}, "notifyUrl": "hlhf58hL", "omitNotification": true, "platform": "0RxLRlQp", "price": 57, "recurringPaymentOrderNo": "sHeQIlKr", "region": "XKRNzJnX", "returnUrl": "mGrSMObG", "sandbox": true, "sku": "KJcDht0Y", "subscriptionId": "FpHBJ35H", "targetNamespace": "3pLYWGjs", "targetUserId": "OPqjXs64", "title": "LbB3epNg"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '2rnYx7Vy' --login_with_auth "Bearer foo"
platform-get-payment-order 'XoCpHdZf' --login_with_auth "Bearer foo"
platform-charge-payment-order 'ypzZOnvG' --body '{"extTxId": "A3yNuOTv", "paymentMethod": "ZyZVeK1E", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '5FutC4m3' --body '{"description": "6o6C2Q3B"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '8M1scZmF' --body '{"amount": 38, "currencyCode": "GNushhTK", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 2, "vat": 93}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'tLFEOY7Q' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Epic' --body '{"allowedBalanceOrigins": ["Steam", "GooglePlay", "Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "p6PRa7Az", "eventTopic": "uLiPxxJH", "maxAwarded": 8, "maxAwardedPerUser": 44, "namespaceExpression": "kSgbto83", "rewardCode": "wv9fdJTw", "rewardConditions": [{"condition": "BAd1g7Ho", "conditionName": "Zy4KQnZK", "eventName": "UlzOBSkn", "rewardItems": [{"duration": 5, "itemId": "NRfT2afk", "quantity": 46}, {"duration": 59, "itemId": "aBl52nMo", "quantity": 56}, {"duration": 26, "itemId": "FNGr2Uaz", "quantity": 88}]}, {"condition": "rwcvGQJ6", "conditionName": "kV9K42cu", "eventName": "Tq78ENmr", "rewardItems": [{"duration": 20, "itemId": "eeJEdLU2", "quantity": 3}, {"duration": 98, "itemId": "h1VVmNuC", "quantity": 94}, {"duration": 56, "itemId": "XnSMJKrj", "quantity": 69}]}, {"condition": "mu277keO", "conditionName": "WyD4P3lW", "eventName": "yk2HfLJp", "rewardItems": [{"duration": 7, "itemId": "WLrpu3uY", "quantity": 28}, {"duration": 26, "itemId": "EVzJZemC", "quantity": 21}, {"duration": 51, "itemId": "R9UkxY9z", "quantity": 27}]}], "userIdExpression": "IWSdasGo"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward '9FsTZmRa' --login_with_auth "Bearer foo"
platform-update-reward '3ATPPjeA' --body '{"description": "C2JnBGga", "eventTopic": "nn4Ors7M", "maxAwarded": 87, "maxAwardedPerUser": 69, "namespaceExpression": "0xOCILmZ", "rewardCode": "kZBEkpIJ", "rewardConditions": [{"condition": "qOngXmPC", "conditionName": "3cbMDM4n", "eventName": "VmPSAB2Y", "rewardItems": [{"duration": 85, "itemId": "gHYpxJNt", "quantity": 52}, {"duration": 42, "itemId": "wr3XsGkc", "quantity": 20}, {"duration": 11, "itemId": "tcjCjJ8f", "quantity": 98}]}, {"condition": "D4LQO4cL", "conditionName": "oFjRIpgr", "eventName": "3Rd0B3Oa", "rewardItems": [{"duration": 70, "itemId": "ILML223D", "quantity": 80}, {"duration": 34, "itemId": "gquuqZYS", "quantity": 52}, {"duration": 47, "itemId": "Ng3LxLP3", "quantity": 62}]}, {"condition": "VRG5E8wr", "conditionName": "0IEko8p8", "eventName": "EgW93lZb", "rewardItems": [{"duration": 46, "itemId": "leMiepFD", "quantity": 5}, {"duration": 43, "itemId": "AoskalRD", "quantity": 36}, {"duration": 99, "itemId": "a1BjSzWT", "quantity": 96}]}], "userIdExpression": "E74lcXNW"}' --login_with_auth "Bearer foo"
platform-delete-reward 'VDBPQCul' --login_with_auth "Bearer foo"
platform-check-event-condition 'FlJwzfFx' --body '{"payload": {"LcxIOT4o": {}, "g0HbmPJe": {}, "aYdrIpAQ": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'i7sL6o5B' --body '{"conditionName": "J4uPcHGe", "userId": "QdPUjCwd"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "WoYqOSCH", "defaultRegion": "AtbFAllU", "description": "AdglOMw2", "supportedLanguages": ["ARQiKv0X", "jW0MFHL7", "zdNPhaug"], "supportedRegions": ["fkYMAfQe", "LSVCNvSa", "mHCd6lFO"], "title": "9qgGHQvo"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '5iOzNAd2' --login_with_auth "Bearer foo"
platform-update-store 'fUF7vQOm' --body '{"defaultLanguage": "LeVoeDNz", "defaultRegion": "uuAfl6vX", "description": "uX7sOYsi", "supportedLanguages": ["OBX2xdvw", "xG4lfhgY", "5asyHb3L"], "supportedRegions": ["d8ykJJVA", "JJTuumpH", "vLjBvFXz"], "title": "vLpM96Tc"}' --login_with_auth "Bearer foo"
platform-delete-store 'WZlwFHzW' --login_with_auth "Bearer foo"
platform-query-changes 'G5TOPmIw' --login_with_auth "Bearer foo"
platform-publish-all 'ILgc2Yfo' --login_with_auth "Bearer foo"
platform-publish-selected '7ka86XGp' --login_with_auth "Bearer foo"
platform-select-all-records 'y1OIOSJ4' --login_with_auth "Bearer foo"
platform-get-statistic '9ShiH7SL' --login_with_auth "Bearer foo"
platform-unselect-all-records 'vWHQdVNL' --login_with_auth "Bearer foo"
platform-select-record 'p3lLId7d' 'UKPEZ0W9' --login_with_auth "Bearer foo"
platform-unselect-record 'fVnLW0CO' 'YDCpDtYm' --login_with_auth "Bearer foo"
platform-clone-store 'stAEdVyy' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'jLtDiehB' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'U9jyKE3B' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'h70LOkYV' --body '{"orderNo": "hCrAwjZM"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'DLwRRylu' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'MfOqqt4f' --body '{"count": 57, "orderNo": "dABuYeKh"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '8bSNswHP' --body '{"achievements": [{"id": "NLGpGPV1", "value": 12}, {"id": "vP4j244O", "value": 48}, {"id": "FTpJvclq", "value": 54}], "steamUserId": "y9VvmNvc"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'OPVY3bOQ' 'NPXRnJdJ' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'RZQ92FdT' --body '{"achievements": [{"id": "g4eRttIe", "percentComplete": 39}, {"id": "8AaYGpIR", "percentComplete": 57}, {"id": "hBgx7QX7", "percentComplete": 93}], "serviceConfigId": "KKnwGESb", "titleId": "ff9EXbVP", "xboxUserId": "fwcc4wDA"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'yE7WFiIO' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'GEjQyRUq' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'Fe6z1icu' --login_with_auth "Bearer foo"
platform-anonymize-integration 'PHeWb6mX' --login_with_auth "Bearer foo"
platform-anonymize-order 'gBx5tttP' --login_with_auth "Bearer foo"
platform-anonymize-payment 'kiN7uXHJ' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'EwwKvkXd' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'cRINUWtC' --login_with_auth "Bearer foo"
platform-get-user-dlc 'qaF9cy2K' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'qNCZSwp0' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'd83NEr46' --body '[{"endDate": "1999-02-12T00:00:00Z", "grantedCode": "hpeeQG70", "itemId": "xewHVOHk", "itemNamespace": "vVhzASTa", "language": "rRj", "quantity": 80, "region": "4Qro9CYB", "source": "REWARD", "startDate": "1992-07-06T00:00:00Z", "storeId": "0pEbdqvS"}, {"endDate": "1979-11-10T00:00:00Z", "grantedCode": "044cXHwL", "itemId": "wdtcDwMw", "itemNamespace": "ZQMwlgSh", "language": "iX", "quantity": 98, "region": "yTQPCz4n", "source": "PROMOTION", "startDate": "1991-01-19T00:00:00Z", "storeId": "agytrA6Y"}, {"endDate": "1995-03-02T00:00:00Z", "grantedCode": "vN3pTcug", "itemId": "eJzRgNfP", "itemNamespace": "Du4egVT3", "language": "bHvh-rv", "quantity": 33, "region": "1Bk9GW0i", "source": "REDEEM_CODE", "startDate": "1982-03-07T00:00:00Z", "storeId": "qRYzMb8q"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'KvrNaydI' 'MctbiNbS' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'k9pC5m8U' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'TibZLXcf' 'wAcCj5CN' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'NcbMriE2' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'xjuYb3gG' 'VOWivdzj' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '9WpfwE3J' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'I9U82T3W' '["kqqutlhJ", "NPyByhSL", "iv1srVKu"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'sCk67NvR' 'svfzDVT8' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '0okEdL5i' 'h0x2U2QF' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'BsrWnXjC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'tRthpKUW' 'ntVWswnD' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'YOuRn9Cb' 'cqFp8oTw' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'ji9iUZRU' 'RCzHQGAF' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'KIsMY7Q7' 'PGBKzCcW' --body '{"endDate": "1999-02-22T00:00:00Z", "nullFieldList": ["FfqM76pV", "DIxOZcch", "ctUE33Sv"], "startDate": "1979-04-15T00:00:00Z", "status": "ACTIVE", "useCount": 97}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '6toz2k3X' 'mQebeVrT' --body '{"options": ["KK4w8rSn", "G8T2hsF7", "aWf5q832"], "requestId": "t3Yx5SfZ", "useCount": 49}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'NV0uXoHn' 'VlIy3ojl' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'q1bKoEBT' '59rN2lxC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'b1DmsOpA' 'ykhQ5Q8U' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'cZ8HQTBx' 'fnHlnaa7' --login_with_auth "Bearer foo"
platform-fulfill-item 'ahUNBUpv' --body '{"duration": 36, "endDate": "1998-10-26T00:00:00Z", "itemId": "Ueyazojd", "itemSku": "rAyiZPaO", "language": "E9SWFI4p", "order": {"currency": {"currencyCode": "dAYMcOmA", "currencySymbol": "gRTYzjCq", "currencyType": "VIRTUAL", "decimals": 77, "namespace": "20aNt7PE"}, "ext": {"KO4IFP0J": {}, "ypgppKgC": {}, "zzhOYYOU": {}}, "free": false}, "orderNo": "26iuJ4vu", "origin": "Xbox", "quantity": 7, "region": "A91YhYJe", "source": "PURCHASE", "startDate": "1982-03-02T00:00:00Z", "storeId": "gHLnDN35"}' --login_with_auth "Bearer foo"
platform-redeem-code 'tRDlTJ4B' --body '{"code": "ePOHAqcP", "language": "bPQ", "region": "RkYaK73L"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'ZL4xSdkU' --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "YWnbComF", "namespace": "DKP62BRG"}, "item": {"itemId": "qAGbzVBi", "itemSku": "3L1Ki6Sp", "itemType": "jJq9veHj"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "vQBC7qom", "namespace": "fFttM2jG"}, "item": {"itemId": "MJYl6CWO", "itemSku": "SxxvJuGx", "itemType": "SscJL11U"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "tKVBafb7", "namespace": "4JZ8zV9V"}, "item": {"itemId": "t6FIZKhQ", "itemSku": "Pe2WeM6L", "itemType": "pUrqideO"}, "quantity": 84, "type": "CURRENCY"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'p3lJZ3lg' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'Ox7n4arL' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'zTSx15to' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'qFoVhh6t' --body '{"itemIdentityType": "ITEM_ID", "language": "FI_nrrg", "productId": "mAOCOjCO", "region": "EfSQ2mjQ", "type": "TWITCH"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'jG5gQWv8' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'xVpM6uus' --body '{"currencyCode": "geSFxQSC", "currencyNamespace": "NQqxesjv", "discountedPrice": 72, "ext": {"FMJejsCF": {}, "iP9OtsFD": {}, "wKSPC5Eq": {}}, "itemId": "7EXLJ8yK", "language": "IjHuyJvk", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 31, "quantity": 40, "region": "mxj3tMyw", "returnUrl": "k6aKGB1l", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'DBMsPM30' '7UxCSGTM' --login_with_auth "Bearer foo"
platform-get-user-order '5UnGM0Gx' 'whcmVhmO' --login_with_auth "Bearer foo"
platform-update-user-order-status 'd5MYJPAe' 'psziaXB8' --body '{"status": "DELETED", "statusReason": "r5jlOzN0"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'aXa0MVeD' 'qwsFxgWZ' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'R6vNFnGv' 'inqUGCSv' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'PQVEUAFX' 'OzGWYgNi' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'k2QrV1tt' 'WSOeIkLd' --body '{"additionalData": {"cardSummary": "nrOAZ4dF"}, "authorisedTime": "1976-02-11T00:00:00Z", "chargebackReversedTime": "1995-10-27T00:00:00Z", "chargebackTime": "1989-09-19T00:00:00Z", "chargedTime": "1976-09-07T00:00:00Z", "createdTime": "1981-10-02T00:00:00Z", "currency": {"currencyCode": "kzwRSrpM", "currencySymbol": "OJEqq2eb", "currencyType": "VIRTUAL", "decimals": 17, "namespace": "y7jlcbYK"}, "customParameters": {"1lyjMrO5": {}, "GPZYzP9e": {}, "0leH8BWN": {}}, "extOrderNo": "H00iY8Qy", "extTxId": "t1Y49uSP", "extUserId": "yplmjZtu", "issuedAt": "1983-12-03T00:00:00Z", "metadata": {"dTw5j9DS": "M3hXAK4p", "IvFsLL7L": "ASDGswhz", "B8Iqors2": "uItSlIG4"}, "namespace": "8PpEW9Qj", "nonceStr": "tWEOlAo9", "paymentMethod": "vxT47lYg", "paymentMethodFee": 44, "paymentOrderNo": "OatJvVSN", "paymentProvider": "WALLET", "paymentProviderFee": 79, "paymentStationUrl": "yb68FEfj", "price": 42, "refundedTime": "1971-10-09T00:00:00Z", "salesTax": 10, "sandbox": true, "sku": "wPBInHHQ", "status": "REFUND_FAILED", "statusReason": "9MhMRvDX", "subscriptionId": "1zKMOrqI", "subtotalPrice": 73, "targetNamespace": "IZ2kTRFQ", "targetUserId": "ZAWHhODH", "tax": 78, "totalPrice": 34, "totalTax": 28, "txEndTime": "1977-10-13T00:00:00Z", "type": "HkgVtxF3", "userId": "BVxhN0l4", "vat": 74}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '0kiKq2Q5' '0O7qPd2w' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'p5qmnxgz' --body '{"currencyCode": "us046L20", "currencyNamespace": "HOIP1rzb", "customParameters": {"vQEumBIE": {}, "bsOkyG0g": {}, "zNCaVAKi": {}}, "description": "bvCBH4WQ", "extOrderNo": "JinAGgpM", "extUserId": "tp9lvuCY", "itemType": "MEDIA", "language": "qcCf", "metadata": {"EPRTRpQP": "TkvMxK8w", "rh4W9tXV": "geASMxs1", "1oBh4Qc7": "Yx8ZlymE"}, "notifyUrl": "w6qR568y", "omitNotification": true, "platform": "U6CW5zFz", "price": 71, "recurringPaymentOrderNo": "GUmmbTRB", "region": "9nTQYQcz", "returnUrl": "P18JiL6i", "sandbox": false, "sku": "ACV9Zz5i", "subscriptionId": "V9WKBOn6", "title": "mHpXgaUs"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'xDoTQaeH' 'c67pDETp' --body '{"description": "Zxxi21Uo"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption '7EJtiIkK' --body '{"code": "JQ6sjnut", "orderNo": "z98vxUE0"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'nV4nbmKG' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'MmiRh8bi' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'DT6E4LpN' --body '{"grantDays": 77, "itemId": "yRB9Iona", "language": "ypewRn0c", "reason": "df461L3l", "region": "P9AwAp67", "source": "ARvUCB5s"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'AULlb5w5' 'mJ9TQ6LU' --login_with_auth "Bearer foo"
platform-get-user-subscription 'K2pMiwf6' 'J9FWmheT' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'VsdNBMQo' 'b2iIbTCV' --login_with_auth "Bearer foo"
platform-cancel-subscription 'qGCsCbcA' 'MQmOKQRr' --body '{"immediate": false, "reason": "pBv6UULz"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'aIjVVm8W' 'RyMffPMM' --body '{"grantDays": 55, "reason": "mh6HHj6a"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'sG1gwryi' 'IjyKaQBv' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'Q6Lf9EK3' '4I6SehLF' --body '{"additionalData": {"cardSummary": "sObFYMdw"}, "authorisedTime": "1982-03-18T00:00:00Z", "chargebackReversedTime": "1974-12-04T00:00:00Z", "chargebackTime": "1983-09-07T00:00:00Z", "chargedTime": "1986-08-17T00:00:00Z", "createdTime": "1987-02-10T00:00:00Z", "currency": {"currencyCode": "qJ0vlgEA", "currencySymbol": "NTMfNmjX", "currencyType": "VIRTUAL", "decimals": 57, "namespace": "NR9yE5GN"}, "customParameters": {"2NTv4FWQ": {}, "V5jGEH7O": {}, "33JqOBK8": {}}, "extOrderNo": "zmtgVX6i", "extTxId": "j9brsNAN", "extUserId": "i9qi3xmR", "issuedAt": "1997-06-28T00:00:00Z", "metadata": {"FtmAOAdB": "capXjpeY", "8c8daiyZ": "Wc0JPaLf", "jO0ffiq0": "728dKFbY"}, "namespace": "VMNmlXK2", "nonceStr": "EVJjfXQc", "paymentMethod": "S6yCvqwd", "paymentMethodFee": 41, "paymentOrderNo": "NgRKIoLk", "paymentProvider": "ALIPAY", "paymentProviderFee": 88, "paymentStationUrl": "AxKpGmy2", "price": 12, "refundedTime": "1976-04-28T00:00:00Z", "salesTax": 71, "sandbox": false, "sku": "VYwa4vqQ", "status": "REFUNDED", "statusReason": "bwWu0Fip", "subscriptionId": "aQT1Crvj", "subtotalPrice": 53, "targetNamespace": "cONFvp6t", "targetUserId": "bVwAMq8F", "tax": 62, "totalPrice": 7, "totalTax": 70, "txEndTime": "1984-03-12T00:00:00Z", "type": "coHIRRPO", "userId": "wNbcHrGr", "vat": 45}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'YjVjQlm3' 'BJseQJG0' --body '{"count": 43, "orderNo": "cR3rSxtu"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'gsacq48V' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'OuN2Z3Fh' 'CaHVBfL3' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'qd0yHBEt' 'Q6pvEego' --body '{"amount": 57, "expireAt": "1986-08-10T00:00:00Z", "origin": "Playstation", "reason": "VVnpf9E9", "source": "DLC"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'ZJH31v4S' 'ojfJf8op' --body '{"amount": 86, "walletPlatform": "IOS"}' --login_with_auth "Bearer foo"
platform-sync-orders 'dPr88cF1' 'Px95V8OI' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["TCKq6UA2", "NMTBJrF6", "EjxAzviZ"], "apiKey": "PehFhYGv", "authoriseAsCapture": true, "blockedPaymentMethods": ["xIt5e9SR", "byorWpnX", "FdMR3QCs"], "clientKey": "O5DRuTHg", "dropInSettings": "B50nfiL1", "liveEndpointUrlPrefix": "zDB7QABI", "merchantAccount": "n4M11LCb", "notificationHmacKey": "7pPGXywy", "notificationPassword": "HEJcAdS8", "notificationUsername": "DSzHq1Ep", "returnUrl": "XjQyAkZG", "settings": "intDQWjf"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "1HnvYiXT", "privateKey": "XFYcgXwZ", "publicKey": "xoijBW7O", "returnUrl": "exBAgjwT"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "gnCslKaR", "secretKey": "9BL6RCao"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "HmWT1zID", "clientSecret": "oE0ydfh0", "returnUrl": "ngwAiVCp", "webHookId": "20qQREkJ"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["bL3sgbKF", "ovXcVBUN", "SuSukOCn"], "publishableKey": "PcNIG0Qk", "secretKey": "ZnDUaAPr", "webhookSecret": "VSUdl7sd"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "52xvSehv", "key": "3FCkZ2Eq", "mchid": "JzIbGeCW", "returnUrl": "Kvwxl7oK"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "JlQNS91C", "flowCompletionUrl": "oP3RlGQ8", "merchantId": 73, "projectId": 87, "projectSecretKey": "7SSi82HA"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'hmZFvOJD' --login_with_auth "Bearer foo"
platform-update-adyen-config 'kHZhOJm6' --body '{"allowedPaymentMethods": ["bfdnl7wr", "K8Ilkg3C", "sLil6xva"], "apiKey": "lpSPxtRX", "authoriseAsCapture": true, "blockedPaymentMethods": ["qkP5Y9Tm", "r5qV8wSU", "mbCpRqHU"], "clientKey": "Zb5IqcaT", "dropInSettings": "u4zNGsp7", "liveEndpointUrlPrefix": "yzLty3iA", "merchantAccount": "4CzwxKH2", "notificationHmacKey": "32vuK25i", "notificationPassword": "o1I20GrD", "notificationUsername": "G4TegKS2", "returnUrl": "baSssPxT", "settings": "qIDzScld"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'jS6gkCsC' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'bRutOgB2' --body '{"appId": "XSL4wWK4", "privateKey": "G2WaHwon", "publicKey": "qRkUvLJY", "returnUrl": "JMF7xPVA"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '6jiXVMeH' --login_with_auth "Bearer foo"
platform-update-checkout-config 'NuNf5W7u' --body '{"publicKey": "qngYCczx", "secretKey": "zEvF3sbx"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'qwpi7gIK' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'SwBpa9GK' --body '{"clientID": "cTd3qdy9", "clientSecret": "HiCw7QdE", "returnUrl": "RdRDXcil", "webHookId": "lBLjnFnc"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'qzJjE0lK' --login_with_auth "Bearer foo"
platform-update-stripe-config 'N7Vpl0V1' --body '{"allowedPaymentMethodTypes": ["JnY5wh6M", "stjqAIxm", "sYMqfStm"], "publishableKey": "FCi1f1cZ", "secretKey": "E4KlQZS7", "webhookSecret": "bitz0yYb"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'jMh6wvAR' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'wzfeO07h' --body '{"appId": "3Y0qXMJi", "key": "P0UcD8Mb", "mchid": "5DnTC2qg", "returnUrl": "QNRQbrY7"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'chBMn8uA' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'hvGv0vac' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'Gwse25aX' --body '{"apiKey": "9eNqxu5k", "flowCompletionUrl": "Dx1PD0vc", "merchantId": 76, "projectId": 29, "projectSecretKey": "1QEV3FJG"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id '9vQGEJ8X' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'VpI4FYvE' --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "epvqpQgP", "region": "28f9jRRi", "sandboxTaxJarApiToken": "9ca1AYAV", "specials": ["PAYPAL", "WXPAY", "XSOLLA"], "taxJarApiToken": "4GVw6nsR", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'mbVaCOox' --body '{"aggregate": "ADYEN", "namespace": "QUFpgMJU", "region": "rQzL3KQH", "sandboxTaxJarApiToken": "5ujn6NbN", "specials": ["WALLET", "WALLET", "ADYEN"], "taxJarApiToken": "k3CbWRgt", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'XAxt6yab' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "xivA9dp1", "taxJarApiToken": "jtFfiIWV", "taxJarEnabled": true, "taxJarProductCodesMapping": {"wxet0I0q": "2XcJRkBq", "Mno66h7w": "nx4fsNbx", "owEvTm8W": "JZYrTNxL"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '9GpYG2MD' 'hGUX58Q1' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'bng6Ly8T' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'j19ervHa' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'qGAjU4rw' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'WkHb6e0V' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 's24TwQbt' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'SDXuJ7tt' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["Zpp8KQnx", "5P3q4mKP", "BMFDXXBv"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'nir3PWYJ' 'C3t7ExBH' --login_with_auth "Bearer foo"
platform-public-get-app '9spKQ413' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'sgxLu5vG' --login_with_auth "Bearer foo"
platform-public-get-item 'yGuADkoj' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "gktUp37d", "paymentProvider": "STRIPE", "returnUrl": "czY4qogb", "ui": "oQIaKQAr", "zipCode": "KWl4sNTo"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'qtRLwzaY' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'ZHfBe3X6' --login_with_auth "Bearer foo"
platform-pay 'cAAev2e3' --body '{"token": "sQyxZLK3"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'mhDxzPp5' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'B323YDJr' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'C4VpIHQi' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'AtRTY6Yf' 'vgpWst8n' 'CHECKOUT' 'wv4K8iqF' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'VeCOyj38' 'PAYPAL' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'llvRTh4F' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'HhTDZnG5' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'pn4SS2BO' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Q31oa7A0' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'JUMg4eWL' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'z3drtBsb' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'i8pV3LRa' --body '{"epicGamesJwtToken": "BY2UEWWn"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'gE4UwQPi' --body '{"serviceLabel": 95}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '0ieLfPWn' --body '{"serviceLabels": [16, 75, 83]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'pIx1m0wQ' --body '{"appId": "23vklXVm", "steamId": "hZsZpO18"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'H30lZwYR' --body '{"xstsToken": "pn5RS4Tr"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'O9NDUFGk' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'zPnqD7pL' 'CD7dmoZe' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'cq1YIxYx' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id '85SeaKKf' 'CYR7jgFl' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'FEUxGB18' 'uAqXWe4L' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement '0SKxMEiD' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'e0mzuT0R' 'hirkXqM2' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'ol3EbFpf' 'zoYOFxfi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'RisTgq6J' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'OO9gqiSs' '1EN30YGk' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'VGMT4LZM' 'nYBswGoN' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'Hm4eWXKm' 'v5H3n1g9' --body '{"options": ["NbyL8EU9", "pMH3wojD", "Ev2KS22V"], "requestId": "vaQeTq2G", "useCount": 74}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'sZNZC85m' --body '{"code": "w6VpiUbs", "language": "arLw", "region": "sEwH0J2f"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'gQipyVFU' --body '{"excludeOldTransactions": true, "language": "qkT", "productId": "W3Ij6cjF", "receiptData": "cJ312OEs", "region": "F1qtjZrI", "transactionId": "N7XY5T0H"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'vOAUNtMm' --body '{"epicGamesJwtToken": "i7Ee4lco"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'fpTTaGAy' --body '{"autoAck": false, "language": "dJ_PZRs-wY", "orderId": "X71zqsTl", "packageName": "8fpv5T8S", "productId": "U2Zh2eAj", "purchaseTime": 34, "purchaseToken": "bGJNdI1U", "region": "U1bZuHzM"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'pnKxeyIT' --body '{"currencyCode": "3vjmHHon", "price": 0.8675840203057799, "productId": "hcFB2tMJ", "serviceLabel": 64}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'hKGv5wfi' --body '{"currencyCode": "L9o86Hkd", "price": 0.28161627450351323, "productId": "cOHeRBsv", "serviceLabels": [40, 53, 61]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'VQA0d6cX' --body '{"appId": "tfNygagP", "language": "xuyn-Ca", "region": "92VrUH8Q", "stadiaPlayerId": "GPtwLeO9"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'cAeTiKyZ' --body '{"appId": "YLyxMIM3", "currencyCode": "64OxgEif", "language": "CHoQ-GDVT-VZ", "price": 0.19926484552654888, "productId": "uF1RiiIA", "region": "ROXiOGj6", "steamId": "2DCj0BLr"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement '8GJpEDqE' --body '{"gameId": "twtwpWnC", "language": "dHj", "region": "fG0blQ9W"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'tj6FCPW7' --body '{"currencyCode": "gZO0jDwj", "price": 0.8238435110300925, "productId": "Bp6iLz2l", "xstsToken": "90EJbKBF"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'QbbgqAWV' --login_with_auth "Bearer foo"
platform-public-create-user-order 'ToZP2Gfk' --body '{"currencyCode": "TVvifSsn", "discountedPrice": 7, "ext": {"KhrZdeXH": {}, "evfBMp3g": {}, "c3dM5bl0": {}}, "itemId": "TaXBUPvm", "language": "gmD-009", "price": 51, "quantity": 44, "region": "xfDHGs21", "returnUrl": "8Y9lXAJ6"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'obKxj2rk' 'vKE0JFxE' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'ovi7sw9m' '4nq3K3Iu' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'NCNzF7yH' 'm34l1OWX' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'sKi428uY' '26bUJU2B' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '3OhRdQC9' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'x6MgSjIC' 'card' 'G3Nf66V8' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'GIiDLisl' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'qAwwBxD9' --body '{"currencyCode": "fFf6EFMl", "itemId": "cCeYyy34", "language": "ApeG-DxjV_474", "region": "jJwso777", "returnUrl": "IzY5XJN3", "source": "6oHFqjr9"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'C0Ms2KSs' 'b7XM6jvh' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'TcbgiNAn' 'qN33gdQ1' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'nFvNPlUZ' 'fUrzo9nw' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '5JklGup8' 'b5gUc27D' --body '{"immediate": true, "reason": "0A7syWwi"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'PJXlkou1' '6msjwCM1' --login_with_auth "Bearer foo"
platform-public-get-wallet 'MHJ5npnU' 'IIMcDQOd' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '1wf178gY' 'odHutFye' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'Hk0JfnpU' --body '{"itemIds": ["5xvidWOP", "4mUPaiip", "PQwEnfct"]}' --login_with_auth "Bearer foo"
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
echo "1..364"

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
    --body '{"context": {"item": {"appId": "P5jP7Rsp", "appType": "DEMO", "baseAppId": "lh5cYK3R", "boothName": "Mlv3kVIl", "boundItemIds": ["kEtnpvmY", "FFxM7iWk", "oVZcmSG7"], "categoryPath": "uaAMqhQ4", "clazz": "O5J5341V", "createdAt": "1979-05-05T00:00:00Z", "description": "NoOafV0B", "displayOrder": 31, "entitlementType": "CONSUMABLE", "ext": {"6K37QvsQ": {}, "GaJC9kyP": {}, "73TONJ9n": {}}, "features": ["6PkFq6W8", "yqjb3dwf", "cDToUx5h"], "fresh": false, "images": [{"as": "QEjylIFC", "caption": "2sKdHrFD", "height": 44, "imageUrl": "tSh3Uwye", "smallImageUrl": "0FRN5uGd", "width": 68}, {"as": "6yakROYh", "caption": "EXSPXQK7", "height": 37, "imageUrl": "962rgoYz", "smallImageUrl": "r5DjYd6I", "width": 31}, {"as": "9kZEwc3q", "caption": "HnM01fjo", "height": 52, "imageUrl": "XajlXpQ6", "smallImageUrl": "R3q2IPRV", "width": 11}], "itemId": "kuZ9XMoc", "itemIds": ["hqpCNhM8", "pAd8lKZA", "q4s5qHCc"], "itemQty": {"Q7EdYD81": 1, "oIpU5F5y": 33, "roTTsDp1": 81}, "itemType": "COINS", "language": "ePKM8m7f", "listable": false, "localExt": {"1yBhD3JY": {}, "2T9npjRW": {}, "pZgLZ6qb": {}}, "longDescription": "IJWT4Dyh", "lootBoxConfig": {"rewardCount": 84, "rewards": [{"lootBoxItems": [{"count": 87, "itemId": "tN3vnLsC", "itemSku": "vpGHmaZr", "itemType": "7LDE2xep"}, {"count": 73, "itemId": "akH5wehn", "itemSku": "pNCjTqGc", "itemType": "M9bY05sJ"}, {"count": 16, "itemId": "YE6X27Cr", "itemSku": "JBIfYbpD", "itemType": "jbO3NH13"}], "name": "yd3pij22", "odds": 0.5796699575364626, "type": "REWARD", "weight": 24}, {"lootBoxItems": [{"count": 96, "itemId": "w15Bz86y", "itemSku": "yN5gprC5", "itemType": "DUz4fesd"}, {"count": 30, "itemId": "gbXWrzp8", "itemSku": "QrZoNx7L", "itemType": "eptgTwFo"}, {"count": 76, "itemId": "Zxf2nI3f", "itemSku": "DFWPAPFD", "itemType": "3UzlGtSZ"}], "name": "C6lETcIe", "odds": 0.8793486743320273, "type": "REWARD_GROUP", "weight": 56}, {"lootBoxItems": [{"count": 85, "itemId": "lEShDhT5", "itemSku": "lIBe5CyA", "itemType": "fZaGkgpv"}, {"count": 0, "itemId": "dHnnFJRq", "itemSku": "jDz7TsWs", "itemType": "LhJxhzLm"}, {"count": 27, "itemId": "A573kaTe", "itemSku": "Lv8ihQPg", "itemType": "PNMndlam"}], "name": "skfwDrx2", "odds": 0.3331222088314564, "type": "REWARD", "weight": 84}]}, "maxCount": 62, "maxCountPerUser": 13, "name": "MtzwnOjb", "namespace": "TkOpQQ2Q", "optionBoxConfig": {"boxItems": [{"count": 86, "itemId": "IiMO8Wry", "itemSku": "jBYN4gHZ", "itemType": "IeS7AM8W"}, {"count": 35, "itemId": "DZGUgKtU", "itemSku": "tyrN6Ok4", "itemType": "62a3Ftgb"}, {"count": 86, "itemId": "kK4StwLV", "itemSku": "UgxoEnfT", "itemType": "ZV3H3xag"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 73, "comparison": "includes", "name": "yujILanG", "predicateType": "SeasonTierPredicate", "value": "KfN3jHcO", "values": ["Zxzewjxi", "L90QvV6u", "D8NVuDgi"]}, {"anyOf": 9, "comparison": "includes", "name": "Z46qNG6D", "predicateType": "SeasonPassPredicate", "value": "VFJM3yRl", "values": ["I9krZeac", "FzM2uy15", "oKJ2eNEy"]}, {"anyOf": 68, "comparison": "is", "name": "sYvrrx7L", "predicateType": "SeasonTierPredicate", "value": "Al0J06Ht", "values": ["ExxPrXEP", "Lx9F7ebo", "zysFIDnP"]}]}, {"operator": "and", "predicates": [{"anyOf": 55, "comparison": "isGreaterThan", "name": "X2ZmggAe", "predicateType": "SeasonPassPredicate", "value": "xjruTVFi", "values": ["MW58Aaec", "wjX3JU22", "c2TlUTL4"]}, {"anyOf": 85, "comparison": "excludes", "name": "5aIKYkT0", "predicateType": "SeasonTierPredicate", "value": "hlGxA2n3", "values": ["AZj7wKzh", "UoluL0Ba", "noYD9J2R"]}, {"anyOf": 71, "comparison": "isNot", "name": "kA0xBxqo", "predicateType": "SeasonTierPredicate", "value": "UqUb8bZs", "values": ["N1A6bG3P", "nyZs0mhM", "EHroGDsn"]}]}, {"operator": "and", "predicates": [{"anyOf": 40, "comparison": "isLessThan", "name": "Py1CaeV1", "predicateType": "SeasonPassPredicate", "value": "aTzj5Ayw", "values": ["Vd0pudry", "cHjelVBc", "jRtYOkHs"]}, {"anyOf": 50, "comparison": "isNot", "name": "WN5ogELb", "predicateType": "EntitlementPredicate", "value": "RJtJrpv6", "values": ["I2wt2KIC", "VB4D82W9", "nZE2DEIM"]}, {"anyOf": 77, "comparison": "isNot", "name": "KVNtnf25", "predicateType": "SeasonTierPredicate", "value": "vQvraKzb", "values": ["DIJQKQcD", "o8ln3TaX", "blQXqy58"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 91, "fixedTrialCycles": 30, "graceDays": 39}, "region": "onCT7LwO", "regionData": [{"currencyCode": "hHgpDNpu", "currencyNamespace": "WmowilSh", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1991-03-16T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1991-10-07T00:00:00Z", "discountedPrice": 66, "expireAt": "1980-03-15T00:00:00Z", "price": 46, "purchaseAt": "1977-07-17T00:00:00Z", "trialPrice": 72}, {"currencyCode": "wFjCHlM3", "currencyNamespace": "4oGSXNmy", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1980-08-11T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1987-02-07T00:00:00Z", "discountedPrice": 7, "expireAt": "1988-08-08T00:00:00Z", "price": 51, "purchaseAt": "1981-04-06T00:00:00Z", "trialPrice": 26}, {"currencyCode": "Q6Gyik0J", "currencyNamespace": "1vubpVo4", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1975-08-28T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1996-09-25T00:00:00Z", "discountedPrice": 44, "expireAt": "1986-09-13T00:00:00Z", "price": 79, "purchaseAt": "1980-11-20T00:00:00Z", "trialPrice": 24}], "seasonType": "PASS", "sku": "EpsCqQn5", "stackable": true, "status": "ACTIVE", "tags": ["3nqtnRT1", "MS0NqCKO", "578v73PG"], "targetCurrencyCode": "BFyVBeOz", "targetItemId": "HIRDMJTZ", "targetNamespace": "Ou59WVBB", "thumbnailUrl": "oe8BCaS7", "title": "Z2d20agy", "updatedAt": "1989-09-26T00:00:00Z", "useCount": 44}, "namespace": "kGS3z1sR", "order": {"currency": {"currencyCode": "HsNP0bNp", "currencySymbol": "1tnSFguI", "currencyType": "REAL", "decimals": 38, "namespace": "XyhNvT5s"}, "ext": {"KtwKhhK4": {}, "252n7z26": {}, "wmJ22Kvg": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "e0RAcXI5", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'MJkpWtNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'qx7Nq1Oe' \
    --body '{"grantDays": "ZLXJeOzv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'YzbbhS57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '3zMbRgPi' \
    --body '{"grantDays": "QsrQMKN1"}' \
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
    --body '{"clazz": "TMmCNU5m", "dryRun": true, "fulfillmentUrl": "O2mqeORZ", "itemType": "EXTENSION", "purchaseConditionUrl": "lfmMTW0P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'EXTENSION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'os68TPOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'VbI12CzL' \
    --body '{"clazz": "4KI2DbIZ", "dryRun": true, "fulfillmentUrl": "uyoN32g3", "purchaseConditionUrl": "SU9g24hN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'x5t7zYBL' \
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
    --body '{"description": "cSIs01Dq", "items": [{"extraSubscriptionDays": 60, "itemId": "dh5F9iIE", "itemName": "vdQ9U1HZ", "quantity": 69}, {"extraSubscriptionDays": 27, "itemId": "jthbRqDr", "itemName": "doUKfLG2", "quantity": 38}, {"extraSubscriptionDays": 95, "itemId": "ljDMcLrk", "itemName": "3Oh78Ydd", "quantity": 19}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 77, "maxRedeemCountPerCodePerUser": 95, "maxSaleCount": 29, "name": "NhNkWWqF", "redeemEnd": "1988-06-04T00:00:00Z", "redeemStart": "1983-05-10T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["HvBlSk0I", "fuXtRsTE", "ylJGkfSu"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'pFiFKWfI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '1JrkDqNv' \
    --body '{"description": "vFd10Gcc", "items": [{"extraSubscriptionDays": 79, "itemId": "BJmksa0K", "itemName": "NDJ3Xab3", "quantity": 81}, {"extraSubscriptionDays": 20, "itemId": "6RVwydjO", "itemName": "vjWN6YIb", "quantity": 46}, {"extraSubscriptionDays": 52, "itemId": "oYO60HwR", "itemName": "oaORL2j6", "quantity": 74}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 30, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 78, "name": "MxkBzkYj", "redeemEnd": "1978-05-12T00:00:00Z", "redeemStart": "1975-02-05T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["N58A6ZhI", "Dnv1kIbf", "S1u1Auyt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '9BPuj9kH' \
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
    'OmUpHXPA' \
    --body '{"categoryPath": "fhMmcPmk", "localizationDisplayNames": {"HNlAArtL": "fPAitiPz", "moA8YTSW": "tMPqT9im", "DPULLGCo": "xbk4RyTT"}}' \
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
    '6lfkaDsc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'nqhDQZCG' \
    'sjQysr4L' \
    --body '{"localizationDisplayNames": {"eOaxnGL6": "xjKULI1o", "5rQ3s0fH": "esb6aCLx", "Rj6IVh4h": "PahVCpEf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'pBE2AJLd' \
    'rvlmA7BD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'oDEv5KEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'LeCtITK3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'slXYP3yo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'N7IY1dca' \
    --body '{"quantity": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'QiNK8CUg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'YVZbc0rf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'Yn3VOXtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '3YRyCGO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    '87fwMVtR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'reCeEGhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    '6CMoy8nR' \
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
    --body '{"currencyCode": "Syh9sSZg", "currencySymbol": "anclGO3E", "currencyType": "REAL", "decimals": 34, "localizationDescriptions": {"2zqjWaQY": "1W8fsYAK", "1tM9CIRA": "9arKCD8E", "5Q0ESvLe": "0Hufxd5a"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'lQJTiyuG' \
    --body '{"localizationDescriptions": {"MbahWKlB": "X2DNaAkg", "LsKgDsJ2": "f4JSTbEf", "WBm7DzBa": "3dBElcxI"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'Q3pLzzeW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'MvCLvNoN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'o1pkSy3Q' \
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
    --body '{"data": [{"id": "IeL4LCaV", "rewards": [{"currency": {"currencyCode": "K929LZCK", "namespace": "tLbZuyPy"}, "item": {"itemId": "f5xebMF5", "itemSku": "Ekwi14Nk", "itemType": "5ssRqxNu"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "qy0OXnBk", "namespace": "ROG7IIDG"}, "item": {"itemId": "h8CBE6jY", "itemSku": "lSO0G5qr", "itemType": "jCiZbWsp"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "IwWPpJFK", "namespace": "wuKHH6U0"}, "item": {"itemId": "hSFe06IM", "itemSku": "zaixwiT7", "itemType": "gdkeavzp"}, "quantity": 25, "type": "ITEM"}]}, {"id": "6cnqliJ3", "rewards": [{"currency": {"currencyCode": "Qujqdnm2", "namespace": "hwRHuLfN"}, "item": {"itemId": "hwg9GvzV", "itemSku": "EwmdqFnr", "itemType": "5uOA1jb9"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "wpnZpYcO", "namespace": "5XxCJ5dY"}, "item": {"itemId": "DCIDzzss", "itemSku": "57djn2NB", "itemType": "LAux9Wvn"}, "quantity": 67, "type": "ITEM"}, {"currency": {"currencyCode": "zwWeNDKl", "namespace": "CGq0BGi8"}, "item": {"itemId": "w8ddLY34", "itemSku": "nhtJy6rX", "itemType": "pG6hEy2v"}, "quantity": 29, "type": "CURRENCY"}]}, {"id": "Gn4VRnx7", "rewards": [{"currency": {"currencyCode": "FD73vkU5", "namespace": "qOxCrn01"}, "item": {"itemId": "lJU0uavN", "itemSku": "XKjlweFL", "itemType": "yoOZCiA6"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "0sgglBeI", "namespace": "DBgCItmm"}, "item": {"itemId": "L15mxdvW", "itemSku": "CtyB3Fli", "itemType": "YvHDmYXf"}, "quantity": 96, "type": "CURRENCY"}, {"currency": {"currencyCode": "euGnMBir", "namespace": "lBkc3BAa"}, "item": {"itemId": "nmqhMLFf", "itemSku": "uFaH9KOb", "itemType": "ulDGCMWx"}, "quantity": 44, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"Ob3II6Ch": "g98pXpmP", "Fv1iO1ez": "1T3xy6cL", "XlSWS846": "wlrxiQ52"}}, {"platform": "XBOX", "platformDlcIdMap": {"2JX6FumJ": "vKoTCbkZ", "mCKToata": "veQe9bH4", "1GNcmJoq": "uY3UFydy"}}, {"platform": "XBOX", "platformDlcIdMap": {"Lmw7vLnq": "pX7exLYt", "5JCdBfQC": "NR9aEuyJ", "rNC9yNbQ": "8vhs8SSv"}}]}' \
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
    '52CAgIXi' \
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
    --body '{"bundleId": "PcEcemmh", "password": "YYhBy6Wn"}' \
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
    --body '{"sandboxId": "CLjWvey6"}' \
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
    --body '{"applicationName": "qg6wVSAt", "serviceAccountId": "XkZh0VCZ"}' \
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
    --body '{"data": [{"itemIdentity": "jn1onb01", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nybs8SZQ": "t30oprVo", "i3YSJ8hG": "BfWnAgZ6", "QwGCe1Ll": "CVsIAqJE"}}, {"itemIdentity": "Ar7ajujj", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"jGljNxKB": "cii3wUOe", "FR20ztar": "zHum5eo7", "9ATIfkoj": "b72dozVu"}}, {"itemIdentity": "MctiwKUn", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"vP5TJE5A": "Oc5w2Dis", "q7LkrIPF": "rlVo8vQH", "Klyca8gT": "wyWZaYDd"}}]}' \
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
    --body '{"environment": "KaoRF6Kf"}' \
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
    --body '{"appId": "sQK2UVHD", "publisherAuthenticationKey": "MJubaOWC"}' \
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
    --body '{"clientId": "WL9RNU4z", "clientSecret": "8D6KnRwh", "organizationId": "J7WkKthz"}' \
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
    --body '{"relyingPartyCert": "ENxmb1o3"}' \
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
    'bATR3PoS' \
    'XyLCavtP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'qLMFOaux' \
    'DtzTyWae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    '5l6tkHU0' \
    --body '{"categoryPath": "lBJLB8R2", "targetItemId": "wxg5cEu0", "targetNamespace": "tDsiSIzC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'dD5rLOmz' \
    --body '{"appId": "jJQe9ml1", "appType": "DEMO", "baseAppId": "uJYKwB9S", "boothName": "as0Jw8Xm", "categoryPath": "Kb6g4JwA", "clazz": "CQJIPJof", "displayOrder": 92, "entitlementType": "DURABLE", "ext": {"oyV0SZLu": {}, "yQXSXWoh": {}, "YAgTDWB6": {}}, "features": ["EulVEKzQ", "3jAcGupR", "SaiOXpyA"], "images": [{"as": "bgjPglfZ", "caption": "dXpO691P", "height": 64, "imageUrl": "UQSxVNLN", "smallImageUrl": "wUJUxIMO", "width": 93}, {"as": "MWvBxKWh", "caption": "PmbnIutK", "height": 19, "imageUrl": "xzqpHPdS", "smallImageUrl": "5mIq7AgM", "width": 41}, {"as": "7LbHLScJ", "caption": "S5Ub54zV", "height": 60, "imageUrl": "VYX0UMpS", "smallImageUrl": "RpTTKFiJ", "width": 2}], "itemIds": ["y4AI6GJ5", "Ocw4l1Jb", "0O42c8bH"], "itemQty": {"dDAhqHv9": 57, "rEFBypLT": 89, "PNG1iSfs": 45}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"1zhZxc0G": {"description": "gdmgAhig", "localExt": {"QhWQuJ5A": {}, "7le0uTUF": {}, "2miQ1Lt9": {}}, "longDescription": "rDwj4Gsb", "title": "d6UHaxV4"}, "GWTEvJrh": {"description": "eXx3xqYv", "localExt": {"mYu2SLmw": {}, "y6acjoXJ": {}, "5g25OhsS": {}}, "longDescription": "Fw9f4PMK", "title": "s4OeLZTX"}, "yM3xXEMp": {"description": "R96yKTD8", "localExt": {"X0M2jam9": {}, "ugA9dUNe": {}, "H7ZjD148": {}}, "longDescription": "qK7knOTn", "title": "9GiXoYlx"}}, "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 75, "itemId": "PTk8YM4G", "itemSku": "HAuHeOaI", "itemType": "dL42Fl6D"}, {"count": 66, "itemId": "hEUWFjqr", "itemSku": "jWpwTzoh", "itemType": "AYcTnbCN"}, {"count": 74, "itemId": "ssiXMzOn", "itemSku": "G956KyKn", "itemType": "zlf8u0sR"}], "name": "UuVdp9LA", "odds": 0.8479688453682533, "type": "PROBABILITY_GROUP", "weight": 74}, {"lootBoxItems": [{"count": 68, "itemId": "dJhmBkVi", "itemSku": "qzyavSDp", "itemType": "UbMfS5w6"}, {"count": 54, "itemId": "LdC4gCVR", "itemSku": "dEwpHVSV", "itemType": "19L176Zp"}, {"count": 16, "itemId": "EFSfNqPm", "itemSku": "IqrETLrC", "itemType": "ZsrfNULZ"}], "name": "BFFOL5ro", "odds": 0.8699903806476937, "type": "PROBABILITY_GROUP", "weight": 97}, {"lootBoxItems": [{"count": 96, "itemId": "JpEsFZ1r", "itemSku": "huas1O22", "itemType": "Qa1oCSEO"}, {"count": 83, "itemId": "3E1zEMLt", "itemSku": "JF6CEbrV", "itemType": "VbbxkwfS"}, {"count": 27, "itemId": "2BoKdCKX", "itemSku": "WE8L3aeS", "itemType": "EeUndgT6"}], "name": "d2xKm1t6", "odds": 0.27226101109543654, "type": "REWARD_GROUP", "weight": 39}]}, "maxCount": 56, "maxCountPerUser": 66, "name": "dzvjn61r", "optionBoxConfig": {"boxItems": [{"count": 33, "itemId": "TujghB8J", "itemSku": "89HefP37", "itemType": "G3noQtyo"}, {"count": 47, "itemId": "QI59U6mE", "itemSku": "YczWLfU6", "itemType": "0ADewwgi"}, {"count": 6, "itemId": "osdgaU8A", "itemSku": "DvMXpM0L", "itemType": "iPot6han"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 60, "fixedTrialCycles": 99, "graceDays": 69}, "regionData": {"6ds32pwN": [{"currencyCode": "Wf1pJiub", "currencyNamespace": "jT8VBQog", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1977-07-02T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1999-02-13T00:00:00Z", "discountedPrice": 61, "expireAt": "1980-09-16T00:00:00Z", "price": 62, "purchaseAt": "1987-07-02T00:00:00Z", "trialPrice": 98}, {"currencyCode": "JJ2YriBi", "currencyNamespace": "ADxdp2MF", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1984-07-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1973-11-24T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-10-09T00:00:00Z", "price": 34, "purchaseAt": "1983-10-26T00:00:00Z", "trialPrice": 65}, {"currencyCode": "yFevlePc", "currencyNamespace": "bNmyPCUj", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1981-09-19T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1993-04-14T00:00:00Z", "discountedPrice": 96, "expireAt": "1994-01-25T00:00:00Z", "price": 1, "purchaseAt": "1996-11-13T00:00:00Z", "trialPrice": 4}], "jGQLliXZ": [{"currencyCode": "PKnTp8T5", "currencyNamespace": "IPhR6PFH", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1977-09-18T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-12-09T00:00:00Z", "discountedPrice": 12, "expireAt": "1999-09-26T00:00:00Z", "price": 18, "purchaseAt": "1974-07-23T00:00:00Z", "trialPrice": 74}, {"currencyCode": "5rtbIRQO", "currencyNamespace": "3WldlIel", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1975-09-30T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1997-02-11T00:00:00Z", "discountedPrice": 27, "expireAt": "1997-11-09T00:00:00Z", "price": 61, "purchaseAt": "1997-08-10T00:00:00Z", "trialPrice": 95}, {"currencyCode": "v1ZiWRVo", "currencyNamespace": "LS69PnBt", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1979-10-05T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1985-07-16T00:00:00Z", "discountedPrice": 70, "expireAt": "1985-11-01T00:00:00Z", "price": 40, "purchaseAt": "1987-07-09T00:00:00Z", "trialPrice": 74}], "OemqUUrD": [{"currencyCode": "zqpHc0OT", "currencyNamespace": "d34sBG8R", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1976-02-04T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1992-03-20T00:00:00Z", "discountedPrice": 30, "expireAt": "1974-06-19T00:00:00Z", "price": 62, "purchaseAt": "1996-04-18T00:00:00Z", "trialPrice": 64}, {"currencyCode": "rNzWKP21", "currencyNamespace": "dWgb0kth", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1981-08-04T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1971-02-21T00:00:00Z", "discountedPrice": 14, "expireAt": "1997-03-26T00:00:00Z", "price": 48, "purchaseAt": "1990-12-17T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mu8yok8Z", "currencyNamespace": "PCny05sO", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1988-11-28T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1978-10-13T00:00:00Z", "discountedPrice": 81, "expireAt": "1995-12-08T00:00:00Z", "price": 71, "purchaseAt": "1975-02-17T00:00:00Z", "trialPrice": 5}]}, "seasonType": "PASS", "sku": "SbfJSLVz", "stackable": true, "status": "INACTIVE", "tags": ["yf6nXbHv", "4Q37Hh4X", "cpczar2s"], "targetCurrencyCode": "MaM37JcV", "targetNamespace": "2e4gCKSc", "thumbnailUrl": "4evIFFi1", "useCount": 99}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ImLRcuPB' \
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
    'CHFx0gzP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Zqfhb6gm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '36507VNj' \
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
    'rOsHGgSp' \
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
    'M8xQECsc' \
    --body '{"itemIds": ["He3Y3VAl", "M7hbYyck", "dqiVjqOH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '9E1ItuqD' \
    '9QhNR30x' \
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
    'UuFRzOEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'Q72c20Tw' \
    'FW88jGMf' \
    --body '{"appId": "4tmPSf4P", "appType": "SOFTWARE", "baseAppId": "DIY1YyrM", "boothName": "buDq2vgl", "categoryPath": "nxZd9DDI", "clazz": "4tedS1hs", "displayOrder": 52, "entitlementType": "CONSUMABLE", "ext": {"CcRIA2W4": {}, "Cvg2aZ5h": {}, "hyBX23zO": {}}, "features": ["sGJP90yW", "BnLJJBu1", "LSp92WWd"], "images": [{"as": "swL9Ck22", "caption": "RzjoXx55", "height": 97, "imageUrl": "SU2bU9Of", "smallImageUrl": "KbC9LMXS", "width": 36}, {"as": "IeHfge47", "caption": "fePrXnKv", "height": 29, "imageUrl": "GTgCYXkQ", "smallImageUrl": "QcxkUoyj", "width": 28}, {"as": "FwQu0jlF", "caption": "Qer9iKXY", "height": 50, "imageUrl": "vXr1QyaO", "smallImageUrl": "6YIjy1Df", "width": 45}], "itemIds": ["wLqoxAM3", "CNDwjTvP", "36ur7U0u"], "itemQty": {"kZQAqBAg": 88, "AiH4FpUL": 10, "HL4UnLCg": 47}, "itemType": "EXTENSION", "listable": true, "localizations": {"y2Pj44im": {"description": "1TYighnb", "localExt": {"609ivJmj": {}, "HmczPqZc": {}, "4zNPnP0m": {}}, "longDescription": "aOq1RPBj", "title": "iVzj97w3"}, "M2pSyA7a": {"description": "RGmd3K4T", "localExt": {"RBTvxUQ6": {}, "EFaHdNcH": {}, "WzEZfw48": {}}, "longDescription": "pwKkF0Q2", "title": "hb8EjefX"}, "0VK5tIun": {"description": "MHjTnsKc", "localExt": {"rx83k2yx": {}, "fSPst6lv": {}, "LRfDfeFU": {}}, "longDescription": "94dkdDCA", "title": "9ISF1TEU"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 67, "itemId": "sxHtXpPU", "itemSku": "CfVX7j2C", "itemType": "mTdoT5Dg"}, {"count": 32, "itemId": "Y9lTug9j", "itemSku": "hHPEyEQh", "itemType": "MzrfNSqC"}, {"count": 77, "itemId": "9Mh5Bc11", "itemSku": "HzzieEKv", "itemType": "jDxOt9xa"}], "name": "HDYM7Ikt", "odds": 0.26898270334207197, "type": "REWARD", "weight": 17}, {"lootBoxItems": [{"count": 47, "itemId": "eP3i4KhG", "itemSku": "7RXQdmVd", "itemType": "c2x7htQ1"}, {"count": 66, "itemId": "agczOgG3", "itemSku": "By50Vd6H", "itemType": "U2tMMggT"}, {"count": 1, "itemId": "VLcYnV5b", "itemSku": "PCXA4p16", "itemType": "oGfcUSQy"}], "name": "C370SuJO", "odds": 0.6074741166764008, "type": "PROBABILITY_GROUP", "weight": 73}, {"lootBoxItems": [{"count": 25, "itemId": "KJoPoQJQ", "itemSku": "3V4XqFif", "itemType": "hEkBtiwd"}, {"count": 73, "itemId": "6alPOrrR", "itemSku": "64zVSmVF", "itemType": "BsFIKQMr"}, {"count": 59, "itemId": "mZ1IagGe", "itemSku": "0xRPMaWf", "itemType": "tU81IMJG"}], "name": "YieRbVv4", "odds": 0.9974298468881376, "type": "REWARD", "weight": 86}]}, "maxCount": 32, "maxCountPerUser": 51, "name": "ue51hcAQ", "optionBoxConfig": {"boxItems": [{"count": 62, "itemId": "G56BTMKR", "itemSku": "EUBdOaiE", "itemType": "bCCECLjx"}, {"count": 49, "itemId": "6YaVo5Si", "itemSku": "KTWADo2l", "itemType": "Y9pGBAG8"}, {"count": 51, "itemId": "TRIWReGB", "itemSku": "M0b6PlRM", "itemType": "tm7wMkRe"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 37, "fixedTrialCycles": 37, "graceDays": 83}, "regionData": {"lcGbb1YB": [{"currencyCode": "mwaeQZfs", "currencyNamespace": "HYaULP0C", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1976-12-09T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1998-04-13T00:00:00Z", "discountedPrice": 67, "expireAt": "1978-12-19T00:00:00Z", "price": 32, "purchaseAt": "1976-06-22T00:00:00Z", "trialPrice": 38}, {"currencyCode": "drtF7JKb", "currencyNamespace": "7n6FMcZU", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1984-07-18T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1999-10-04T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-06-09T00:00:00Z", "price": 99, "purchaseAt": "1982-05-12T00:00:00Z", "trialPrice": 95}, {"currencyCode": "JZGWCVoE", "currencyNamespace": "Vm3zEUyT", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1974-01-31T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1992-08-22T00:00:00Z", "discountedPrice": 94, "expireAt": "1996-05-29T00:00:00Z", "price": 76, "purchaseAt": "1998-03-17T00:00:00Z", "trialPrice": 38}], "KUjTXbzg": [{"currencyCode": "UyGcHIlf", "currencyNamespace": "fU9aFTPS", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1990-05-02T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1978-05-17T00:00:00Z", "discountedPrice": 30, "expireAt": "1983-02-05T00:00:00Z", "price": 37, "purchaseAt": "1999-02-11T00:00:00Z", "trialPrice": 9}, {"currencyCode": "y6FrLDqc", "currencyNamespace": "mQ6wIDGq", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1982-07-23T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1992-05-28T00:00:00Z", "discountedPrice": 4, "expireAt": "1971-10-21T00:00:00Z", "price": 54, "purchaseAt": "1982-12-15T00:00:00Z", "trialPrice": 73}, {"currencyCode": "wO2du2MY", "currencyNamespace": "daClyFEt", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1976-02-07T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1995-01-01T00:00:00Z", "discountedPrice": 45, "expireAt": "1988-10-01T00:00:00Z", "price": 96, "purchaseAt": "1995-10-21T00:00:00Z", "trialPrice": 38}], "WRBvNsms": [{"currencyCode": "y9bm1dSZ", "currencyNamespace": "da70vY0Q", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1972-12-17T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1971-02-26T00:00:00Z", "discountedPrice": 31, "expireAt": "1974-02-09T00:00:00Z", "price": 81, "purchaseAt": "1979-08-14T00:00:00Z", "trialPrice": 47}, {"currencyCode": "Ir2jyI8h", "currencyNamespace": "Zg5c7bWp", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1980-11-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1985-06-20T00:00:00Z", "discountedPrice": 94, "expireAt": "1978-08-06T00:00:00Z", "price": 76, "purchaseAt": "1998-04-01T00:00:00Z", "trialPrice": 5}, {"currencyCode": "zIkraf0T", "currencyNamespace": "purecpXp", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1992-01-12T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1992-02-26T00:00:00Z", "discountedPrice": 27, "expireAt": "1994-11-15T00:00:00Z", "price": 30, "purchaseAt": "1971-11-05T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "KzPtZThX", "stackable": true, "status": "INACTIVE", "tags": ["Ns57pSf1", "5zOa0Xqy", "xaMyTHEm"], "targetCurrencyCode": "ZQNZZV9X", "targetNamespace": "llIBKocf", "thumbnailUrl": "9ljCcdvy", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'P7bWCfxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'eTh4I4oN' \
    --body '{"count": 60, "orderNo": "kpJH6iOb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'MuektmBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'fcIolubF' \
    'VCCUZ2jZ' \
    --body '{"carousel": [{"alt": "ccYDpmok", "previewUrl": "4TUW4LA3", "thumbnailUrl": "bW5EpfiT", "type": "image", "url": "v0Bv1Jqr", "videoSource": "youtube"}, {"alt": "I6kEZplr", "previewUrl": "cHOmAQ8J", "thumbnailUrl": "ABhem6kB", "type": "image", "url": "PtKZZfxH", "videoSource": "vimeo"}, {"alt": "vEoZjMCT", "previewUrl": "heYkM2Oo", "thumbnailUrl": "KByHWly6", "type": "image", "url": "NwUxPdPb", "videoSource": "youtube"}], "developer": "eWY0tDif", "forumUrl": "fCw0at4i", "genres": ["Strategy", "Sports", "Casual"], "localizations": {"ExRSvpTl": {"announcement": "aVw9Pu8X", "slogan": "3HQzvwg5"}, "njtg5FkA": {"announcement": "beZtT0qf", "slogan": "CkOiLyH5"}, "hP8e4JcX": {"announcement": "0dgGvGZR", "slogan": "Al5AqOWZ"}}, "platformRequirements": {"wjnFTfVE": [{"additionals": "FqJS0AvM", "directXVersion": "ct91e4aD", "diskSpace": "ibHq7aoc", "graphics": "rBI1dSGM", "label": "QH6sTtsE", "osVersion": "Ap3mYa0z", "processor": "NrgTejDM", "ram": "zI5oIjb3", "soundCard": "hy2xrHyQ"}, {"additionals": "11Z784eI", "directXVersion": "csrTo1Iw", "diskSpace": "MTqeTgLY", "graphics": "joy4SLI6", "label": "tXLsKUiH", "osVersion": "sO5Duehn", "processor": "JN485aMp", "ram": "QftkIN78", "soundCard": "KHW5ThWR"}, {"additionals": "bAn8apuA", "directXVersion": "0XRxee92", "diskSpace": "5ZMMItco", "graphics": "zLTmWKCJ", "label": "P6FpzCPD", "osVersion": "aqVea46o", "processor": "te7G2Xku", "ram": "LfV5JM1d", "soundCard": "0clAMJMZ"}], "G1LEqS7I": [{"additionals": "Z24WPXMG", "directXVersion": "RbEwPQyF", "diskSpace": "NT1MtHp0", "graphics": "ABgrRwDN", "label": "0oyuaF5b", "osVersion": "ClOY0yg7", "processor": "as5tqpHT", "ram": "sVSZ2GNS", "soundCard": "d5CtfWq5"}, {"additionals": "CnmMsGtH", "directXVersion": "RkOVjzpv", "diskSpace": "qSAjls2b", "graphics": "Wt3tuALk", "label": "6yz0zErL", "osVersion": "F0MwEgRb", "processor": "anpjlPa9", "ram": "ivVYSiwO", "soundCard": "gshxGx1h"}, {"additionals": "G8ntEetq", "directXVersion": "eD1XK6fI", "diskSpace": "hV21nCOL", "graphics": "62WdBv48", "label": "Bf8PSVIG", "osVersion": "HWqzFBIl", "processor": "mT6x38e8", "ram": "iqFu7SBE", "soundCard": "fzCe7F3D"}], "x5udIXKJ": [{"additionals": "CrIPLoVI", "directXVersion": "K9YsQlpN", "diskSpace": "aVSGzO5U", "graphics": "Lc5aU0E2", "label": "rDu9ErV1", "osVersion": "5SeXi3NY", "processor": "uqDDDFhC", "ram": "pSZl6qSf", "soundCard": "ctcutv3P"}, {"additionals": "Eh52BFJ2", "directXVersion": "Ej4AeF0k", "diskSpace": "SQjnYLi2", "graphics": "KqgLiCFK", "label": "pLJPw8o1", "osVersion": "KSGsRDLv", "processor": "NVKDAeU2", "ram": "klLyqx8K", "soundCard": "yO3fBwrF"}, {"additionals": "hUFpYvp8", "directXVersion": "vQ9RZkMK", "diskSpace": "lND8ThAx", "graphics": "dSCDw2vy", "label": "qKj9ZBNl", "osVersion": "UuGORg0m", "processor": "4rBcz9dY", "ram": "XLvmExpC", "soundCard": "vpKGYdSm"}]}, "platforms": ["Windows", "IOS", "MacOS"], "players": ["Single", "Single", "CrossPlatformMulti"], "primaryGenre": "MassivelyMultiplayer", "publisher": "7bJSXpsS", "releaseDate": "1979-08-18T00:00:00Z", "websiteUrl": "r61aGuEN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'WrsjqYTz' \
    '0WfPjjFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'r81jUcSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'FeRpveYb' \
    'tTjZ8eWN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'Oh0J7gL4' \
    '98Novyus' \
    'vRr1Am0P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'DUCU3jtO' \
    '9GOvPB4R' \
    'NTzFBhoF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'pMR3jyiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'WRSUfoKb' \
    'jD6zwIbh' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 90, "comparison": "isGreaterThanOrEqual", "name": "fJMJTUf7", "predicateType": "SeasonPassPredicate", "value": "9g7Mcmjn", "values": ["DoVQScMZ", "WVtEWvsV", "0f4QbQmY"]}, {"anyOf": 31, "comparison": "isNot", "name": "bpUPqq8I", "predicateType": "SeasonTierPredicate", "value": "BA9lKeGa", "values": ["HjBGriDo", "7yo5QFkV", "GmxracVE"]}, {"anyOf": 1, "comparison": "excludes", "name": "cCYfEseN", "predicateType": "SeasonPassPredicate", "value": "8XkCDMtd", "values": ["qq5QWwl3", "tZkRm5EU", "j8NijZ1K"]}]}, {"operator": "or", "predicates": [{"anyOf": 30, "comparison": "isGreaterThan", "name": "EhzQgBfA", "predicateType": "SeasonTierPredicate", "value": "DJKLwAAZ", "values": ["JMLYH70Z", "0eKMEI4I", "LVtCQwJb"]}, {"anyOf": 94, "comparison": "isLessThan", "name": "OQeMR8BB", "predicateType": "SeasonTierPredicate", "value": "0P32H2vf", "values": ["8o9kpTR2", "VsdNbK9k", "erTZG3oy"]}, {"anyOf": 84, "comparison": "isNot", "name": "lT7x5B2C", "predicateType": "SeasonTierPredicate", "value": "pFoOajaK", "values": ["ubcUD4tc", "diROLJgU", "ZF14Vnwk"]}]}, {"operator": "or", "predicates": [{"anyOf": 10, "comparison": "isNot", "name": "pOjgpvRf", "predicateType": "EntitlementPredicate", "value": "9U69a9lk", "values": ["lok8ycQ0", "b79BeIcn", "xAEZHjjY"]}, {"anyOf": 94, "comparison": "is", "name": "L5bZCgjM", "predicateType": "EntitlementPredicate", "value": "f8ElY409", "values": ["e4jO2kcp", "oJ2JCYI3", "Ftjq9241"]}, {"anyOf": 25, "comparison": "includes", "name": "32Q2YSEz", "predicateType": "SeasonTierPredicate", "value": "VAunijfu", "values": ["B20t3Wrm", "wbGqpkaY", "ffl5eFZ7"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'tzbA26OS' \
    --body '{"orderNo": "NwoYuQ9q"}' \
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
    --body '{"description": "YepGW69H", "name": "q1K5yeX7", "status": "INACTIVE", "tags": ["Wp4rK3oT", "omKmEi5a", "VnocgNdr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '2Lwp7iVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '0tM1lp1G' \
    --body '{"description": "xedXPGHG", "name": "4ryBk3gw", "status": "ACTIVE", "tags": ["I0SnlboH", "SxT0HjYT", "mIhF6RbD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'X3E68sXY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'DdDlZUEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'vFdsIypt' \
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
    'a7QF5YlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ZBomeHt9' \
    --body '{"description": "mInYe2j4"}' \
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
    --body '{"dryRun": false, "notifyUrl": "cNwpZzwn", "privateKey": "DWLOk8jX"}' \
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
    --body '{"currencyCode": "FkAHfL26", "currencyNamespace": "AT0MyVHg", "customParameters": {"8I9FpOKx": {}, "A4ZOkK23": {}, "08zcAgKu": {}}, "description": "eMub0ubs", "extOrderNo": "LlmaZbsu", "extUserId": "GElwmqLh", "itemType": "MEDIA", "language": "IaDO-Jl", "metadata": {"wtHuujJW": "ZeIN9X2q", "9jpKXYRX": "LcU0JvlU", "ECRjXgua": "h1fX6Zsi"}, "notifyUrl": "ZpfieqQy", "omitNotification": false, "platform": "6iRL5aR7", "price": 37, "recurringPaymentOrderNo": "ZRqxAwPF", "region": "nQpsUlqK", "returnUrl": "yYreLZyr", "sandbox": false, "sku": "wSo7bL0P", "subscriptionId": "h0nsDXCu", "targetNamespace": "dMTySK95", "targetUserId": "zAGRfo2w", "title": "bCKJPfog"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'fQ8kgJQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'F3gUjBaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'zdHopuo7' \
    --body '{"extTxId": "DANA0xL1", "paymentMethod": "wY3Jpxwh", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'mKTY0s4W' \
    --body '{"description": "bm9SM38g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'KxR97pDR' \
    --body '{"amount": 62, "currencyCode": "PujrFpPi", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 63, "vat": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'R6euzapN' \
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
    'Xbox' \
    --body '{"allowedBalanceOrigins": ["System", "Steam", "Nintendo"]}' \
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
    --body '{"description": "HMdtXseB", "eventTopic": "tZeKBWze", "maxAwarded": 55, "maxAwardedPerUser": 82, "namespaceExpression": "BNYjo23Q", "rewardCode": "cCgNdTqc", "rewardConditions": [{"condition": "FnlWzSM2", "conditionName": "I2fG8EdW", "eventName": "u7sz6gLQ", "rewardItems": [{"duration": 94, "itemId": "WYcI5QXQ", "quantity": 27}, {"duration": 40, "itemId": "9J9WAPvY", "quantity": 88}, {"duration": 34, "itemId": "Wwutg9Pd", "quantity": 88}]}, {"condition": "3P1nrQ2H", "conditionName": "Ct7Lqkb5", "eventName": "YtgP3hic", "rewardItems": [{"duration": 42, "itemId": "VzAL5p8w", "quantity": 15}, {"duration": 9, "itemId": "YzNBkWos", "quantity": 48}, {"duration": 93, "itemId": "rUo1ccJH", "quantity": 48}]}, {"condition": "RtgYCbe7", "conditionName": "XUkHRDHw", "eventName": "7Z0Wz7Xn", "rewardItems": [{"duration": 34, "itemId": "nntg6MCp", "quantity": 48}, {"duration": 54, "itemId": "YUtsi25Q", "quantity": 69}, {"duration": 31, "itemId": "G7tPqNPu", "quantity": 26}]}], "userIdExpression": "T6yROeJ6"}' \
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
    '6OBbU71L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'bXp6Ml7s' \
    --body '{"description": "dttVctwS", "eventTopic": "dJW9xUaH", "maxAwarded": 73, "maxAwardedPerUser": 79, "namespaceExpression": "VHBBk0KP", "rewardCode": "Ywbvgv7c", "rewardConditions": [{"condition": "1D7ssx2g", "conditionName": "WY4BI2K0", "eventName": "e6Q6GSvd", "rewardItems": [{"duration": 35, "itemId": "qHSIXny4", "quantity": 50}, {"duration": 7, "itemId": "mVEkFitr", "quantity": 29}, {"duration": 60, "itemId": "mDRbq0fX", "quantity": 9}]}, {"condition": "8ey0yVjX", "conditionName": "sEgFdCgP", "eventName": "9vvmpiET", "rewardItems": [{"duration": 56, "itemId": "7oyJ9FAS", "quantity": 39}, {"duration": 36, "itemId": "onJAjRej", "quantity": 98}, {"duration": 9, "itemId": "KHlmgoDh", "quantity": 93}]}, {"condition": "iUEWRznv", "conditionName": "4pMRw1EN", "eventName": "XXIv6Sy1", "rewardItems": [{"duration": 52, "itemId": "riLjTBQ9", "quantity": 92}, {"duration": 87, "itemId": "ACMbI9sE", "quantity": 13}, {"duration": 60, "itemId": "Ev3LZOqQ", "quantity": 14}]}], "userIdExpression": "kRma2jOg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'sLwAYhty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'kHpp01t4' \
    --body '{"payload": {"b6bEDAJW": {}, "pgvUZjir": {}, "aaeesF94": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'R8bEyuT1' \
    --body '{"conditionName": "bgOUuzJC", "userId": "23ScWEXo"}' \
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
    --body '{"defaultLanguage": "Fsl0BOBk", "defaultRegion": "6lc0e7oV", "description": "iNMIhv11", "supportedLanguages": ["C72bNrId", "MqwmCHrz", "Dcn7SXyL"], "supportedRegions": ["wPCEWfm2", "tc9M4b1r", "TcE6ZIYq"], "title": "rSfUrn8W"}' \
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
    'ePBWghZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'e3uGAFYy' \
    --body '{"defaultLanguage": "J0qdiKxX", "defaultRegion": "Nss2oW1s", "description": "WJVebVKP", "supportedLanguages": ["2WguisW1", "3SOqKrZG", "tktv8DkM"], "supportedRegions": ["qnCvlJxK", "OrA7f9v9", "MkGDvfRP"], "title": "ZDBmGl7e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'BaHGrI3X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'TH9Wn1ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'Ga2xNHfM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'PtP1IDCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '6FSPp2pU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'PupJglTW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'XwdAkbfc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'PHPt9M9B' \
    'Ftd7jPk0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'SZ7uUpmg' \
    'AylVp0hP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '5s73hnlc' \
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
    'KLRgE3pJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'zj76Z6TY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'MThGI8Jh' \
    --body '{"orderNo": "dqBVHNMW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'EEjqH895' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    '03iNCryb' \
    --body '{"count": 64, "orderNo": "LEevv1b6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'D9hsPPiv' \
    --body '{"achievements": [{"id": "sSlvjDpC", "value": 34}, {"id": "1Ub59Rkx", "value": 24}, {"id": "rIB3aKh3", "value": 21}], "steamUserId": "6NEVHTrq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'lQbDTJYq' \
    'K1EQLIPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'y01q3ZeY' \
    --body '{"achievements": [{"id": "b6N7arHY", "percentComplete": 61}, {"id": "veo3VW5T", "percentComplete": 29}, {"id": "4fgZScwa", "percentComplete": 60}], "serviceConfigId": "6Dz8QRNt", "titleId": "X2Bw7SuM", "xboxUserId": "SAadcO4B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'nPthHsGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'K3lVeRGj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'pj6JY2i6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'DUqJtIeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '0qy4ARkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'x9OuIaZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '4zbh3Qlb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'oI7CemM9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'PamEIBO5' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetUserDLC' test.out

#- 183 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'jrw4ky1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'QueryUserEntitlements' test.out

#- 184 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'o3aNYSCK' \
    --body '[{"endDate": "1979-08-17T00:00:00Z", "grantedCode": "KWQt5iJ0", "itemId": "gN2LCaTz", "itemNamespace": "sxYWoKV6", "language": "WBW-Tcbh", "quantity": 82, "region": "ggZVZ9p5", "source": "PROMOTION", "startDate": "1995-09-28T00:00:00Z", "storeId": "6L8dvujj"}, {"endDate": "1972-08-02T00:00:00Z", "grantedCode": "kKWGH5d7", "itemId": "z5MKgmf7", "itemNamespace": "dKwT2ez0", "language": "mch", "quantity": 62, "region": "GTLmZCZs", "source": "PROMOTION", "startDate": "1978-12-24T00:00:00Z", "storeId": "X3zGGZQH"}, {"endDate": "1991-07-15T00:00:00Z", "grantedCode": "S3wbhzTw", "itemId": "OgmLDtI5", "itemNamespace": "lNCfdgo8", "language": "WB", "quantity": 56, "region": "MUYFB9gn", "source": "IAP", "startDate": "1984-03-03T00:00:00Z", "storeId": "AcA9EDo4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GrantUserEntitlement' test.out

#- 185 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'XHm5oPC9' \
    '4xpJZIWM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserAppEntitlementByAppId' test.out

#- 186 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'p5sTij7P' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'QueryUserEntitlementsByAppType' test.out

#- 187 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'kPEYcLwW' \
    'yOANSy7E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementByItemId' test.out

#- 188 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'wl2bhTAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetUserActiveEntitlementsByItemIds' test.out

#- 189 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'du6qFVVC' \
    'Qlm2q9io' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementBySku' test.out

#- 190 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '1IstZQ1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ExistsAnyUserActiveEntitlement' test.out

#- 191 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'TjbFFx96' \
    '["3vvRAudQ", "Zqzgf06h", "krpkFDPo"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 192 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'LCo99gK5' \
    'Hi8DpgGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 193 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'LrUA6uhv' \
    'tsoga6sr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipByItemId' test.out

#- 194 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '8XIai0fn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlementOwnershipByItemIds' test.out

#- 195 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '4vqih06K' \
    'ehclAfVZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlementOwnershipBySku' test.out

#- 196 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'JNi29621' \
    'EJqAM2s0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'RevokeUserEntitlements' test.out

#- 197 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'HJHXVr3V' \
    'ilIxpLkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlement' test.out

#- 198 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'rXdACW0i' \
    'qDdKoLxC' \
    --body '{"endDate": "1985-06-18T00:00:00Z", "nullFieldList": ["OsLQEJO0", "2SwGmPRc", "XlDQh4zJ"], "startDate": "1995-10-31T00:00:00Z", "status": "INACTIVE", "useCount": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserEntitlement' test.out

#- 199 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'MJBXfhCU' \
    'hI7Gj8wE' \
    --body '{"options": ["Zk3XgJCN", "du32mY6L", "4I9R4tLN"], "requestId": "MX1MAJvc", "useCount": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ConsumeUserEntitlement' test.out

#- 200 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'EDD31Ltp' \
    'xepVrfAg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'DisableUserEntitlement' test.out

#- 201 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'Yu0iiKj1' \
    '1qWxvDcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'EnableUserEntitlement' test.out

#- 202 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'tMtqSMat' \
    'Qqwyv3pj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementHistories' test.out

#- 203 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'fpe3RUzH' \
    'yrq2dw2I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserEntitlement' test.out

#- 204 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'PZpEnASm' \
    --body '{"duration": 53, "endDate": "1972-02-20T00:00:00Z", "itemId": "llKfFuaG", "itemSku": "PAvdal58", "language": "3yHpIHBV", "order": {"currency": {"currencyCode": "ux8luiR7", "currencySymbol": "xycA9IHa", "currencyType": "VIRTUAL", "decimals": 36, "namespace": "ZrnkvNBF"}, "ext": {"7pWUcuQv": {}, "DZ0gZ4R1": {}, "AKB24P7P": {}}, "free": true}, "orderNo": "r2CoLO1O", "origin": "Other", "quantity": 65, "region": "tHriXMVM", "source": "IAP", "startDate": "1988-10-25T00:00:00Z", "storeId": "kofKJOCo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillItem' test.out

#- 205 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'swJGMBEx' \
    --body '{"code": "wur9kDDh", "language": "LP_kdVq-hp", "region": "DW4KHpZw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RedeemCode' test.out

#- 206 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'VjhIxBnZ' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "eaF5vpiR", "namespace": "7UhRKsTj"}, "item": {"itemId": "5FIf42sG", "itemSku": "VYXO7XOJ", "itemType": "kyTVfKS8"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "VXvX1AoH", "namespace": "QvTbDdHp"}, "item": {"itemId": "okcUtEud", "itemSku": "cQWfUpbP", "itemType": "ahvdkHen"}, "quantity": 62, "type": "CURRENCY"}, {"currency": {"currencyCode": "1lrK8Ifk", "namespace": "BVlgl81s"}, "item": {"itemId": "HppeymcU", "itemSku": "hfxFkrNj", "itemType": "H1AHuXVt"}, "quantity": 46, "type": "ITEM"}], "source": "REFERRAL_BONUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'FulfillRewards' test.out

#- 207 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'WT8LdytD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPOrders' test.out

#- 208 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'umraeePG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryAllUserIAPOrders' test.out

#- 209 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'UsqdWpi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'QueryUserIAPConsumeHistory' test.out

#- 210 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '2AldhfO5' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "SX-957", "productId": "Gqfxy9sJ", "region": "op09IUzD", "type": "PLAYSTATION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'MockFulfillIAPItem' test.out

#- 211 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'MWhYYnD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'QueryUserOrders' test.out

#- 212 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'C79H3lmj' \
    --body '{"currencyCode": "EVrnr6zK", "currencyNamespace": "WtCJKiYD", "discountedPrice": 18, "ext": {"Dx4KFfjZ": {}, "xBTDq9mC": {}, "nCelHUkA": {}}, "itemId": "NDk9FeUq", "language": "6vPyXC5H", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 94, "quantity": 19, "region": "sc94HtYu", "returnUrl": "28SXs8DS", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateUserOrder' test.out

#- 213 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'h2sbGfzj' \
    'nqY7sQuS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'CountOfPurchasedItem' test.out

#- 214 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'ru1qjufa' \
    'Q4qrxSqJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrder' test.out

#- 215 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'cHi3MJVm' \
    'A00TzkrD' \
    --body '{"status": "DELETED", "statusReason": "lhxD1Ruz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserOrderStatus' test.out

#- 216 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'vGW3adp1' \
    'Z8blxxXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'FulfillUserOrder' test.out

#- 217 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'r8wkQR4Y' \
    'wBuVk7Pa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserOrderGrant' test.out

#- 218 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'naMJHhDE' \
    '0DVoPdu3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetUserOrderHistories' test.out

#- 219 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'e5bcX3Gw' \
    'EoVmxEDn' \
    --body '{"additionalData": {"cardSummary": "c1yXDQqm"}, "authorisedTime": "1971-08-20T00:00:00Z", "chargebackReversedTime": "1978-11-17T00:00:00Z", "chargebackTime": "1994-08-11T00:00:00Z", "chargedTime": "1974-09-16T00:00:00Z", "createdTime": "1972-02-22T00:00:00Z", "currency": {"currencyCode": "G5prNoyO", "currencySymbol": "wsRWnaOi", "currencyType": "REAL", "decimals": 15, "namespace": "mWNMEKhx"}, "customParameters": {"IsmTcOE9": {}, "6uxYVFbn": {}, "rXq6k4oE": {}}, "extOrderNo": "IGKtFN2x", "extTxId": "FFLtJA3f", "extUserId": "43cJLH4X", "issuedAt": "1997-04-08T00:00:00Z", "metadata": {"RIzztP7o": "3G3yq9JG", "t3KVpCuj": "ai3nN2Ri", "m8bkUCE5": "7zHfteM9"}, "namespace": "UGzDBLZL", "nonceStr": "83LeDUS6", "paymentMethod": "twxlvFHe", "paymentMethodFee": 85, "paymentOrderNo": "iX2fGGQi", "paymentProvider": "WXPAY", "paymentProviderFee": 24, "paymentStationUrl": "US4IHmAs", "price": 8, "refundedTime": "1999-09-17T00:00:00Z", "salesTax": 38, "sandbox": true, "sku": "KKWlPY03", "status": "CHARGED", "statusReason": "w7f6yzpR", "subscriptionId": "VZa5pS5k", "subtotalPrice": 7, "targetNamespace": "IVSaHo9a", "targetUserId": "s4TBOyEL", "tax": 26, "totalPrice": 85, "totalTax": 12, "txEndTime": "1991-07-21T00:00:00Z", "type": "SqxOB0AY", "userId": "rzeQb1K6", "vat": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'ProcessUserOrderNotification' test.out

#- 220 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'kB38SCzF' \
    'nynq6VWG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'DownloadUserOrderReceipt' test.out

#- 221 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'DhAZYUjJ' \
    --body '{"currencyCode": "B93pPey2", "currencyNamespace": "lBRtGrJ8", "customParameters": {"CKu7zK0n": {}, "0qWBuxt1": {}, "2xYDTLs2": {}}, "description": "f1jyMEXg", "extOrderNo": "pPaolT0h", "extUserId": "J6iFurok", "itemType": "EXTENSION", "language": "AuHW_WJni_296", "metadata": {"QrsXof0g": "1FVxTHR0", "mN2WVfsK": "FpuRxjyd", "VozVmHtb": "lZWlS1vR"}, "notifyUrl": "8YTkMLpa", "omitNotification": false, "platform": "1JQKyvo4", "price": 21, "recurringPaymentOrderNo": "5YNdnVzN", "region": "eqQhh8Z7", "returnUrl": "vq35VAEg", "sandbox": false, "sku": "TXG6IJ6b", "subscriptionId": "KMVKlAXy", "title": "LT5x8Wvt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CreateUserPaymentOrder' test.out

#- 222 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'zj9YO2K7' \
    'i4FNBgFs' \
    --body '{"description": "FTgHpR6J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'RefundUserPaymentOrder' test.out

#- 223 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'l3brIFFP' \
    --body '{"code": "vX6Psl2u", "orderNo": "cdZdzlum"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'ApplyUserRedemption' test.out

#- 224 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'Y7ZlVOZ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryUserSubscriptions' test.out

#- 225 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'AfyzdDvA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscriptionActivities' test.out

#- 226 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '4pSsXLlz' \
    --body '{"grantDays": 11, "itemId": "KFMZVDya", "language": "vrzdXhwn", "reason": "9CfWvuEE", "region": "QftLAdeT", "source": "WNmKCbFs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PlatformSubscribeSubscription' test.out

#- 227 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'oGqeSfbt' \
    'a6iLlGaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 228 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'mrDnlAge' \
    '1KbE5MZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscription' test.out

#- 229 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'GQwICF3I' \
    'rcObYyRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'DeleteUserSubscription' test.out

#- 230 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'OfZezCpn' \
    'Y5LxpWFN' \
    --body '{"immediate": true, "reason": "mIrjRIGu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CancelSubscription' test.out

#- 231 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'IJro0KeH' \
    'FKJlzcwb' \
    --body '{"grantDays": 88, "reason": "lGpHRBxQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GrantDaysToSubscription' test.out

#- 232 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'K1uXDx5Y' \
    '5RkE4FRx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserSubscriptionBillingHistories' test.out

#- 233 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'LCIJDckz' \
    'ZPyXZjaN' \
    --body '{"additionalData": {"cardSummary": "9lMgCf6m"}, "authorisedTime": "1985-05-18T00:00:00Z", "chargebackReversedTime": "1972-05-16T00:00:00Z", "chargebackTime": "1979-09-25T00:00:00Z", "chargedTime": "1989-12-25T00:00:00Z", "createdTime": "1986-12-24T00:00:00Z", "currency": {"currencyCode": "H6JML0lN", "currencySymbol": "G9ZmFcwq", "currencyType": "VIRTUAL", "decimals": 65, "namespace": "ymlSzLvf"}, "customParameters": {"d4v29f8V": {}, "d3903Dgx": {}, "bAtiHrFS": {}}, "extOrderNo": "Z78mEyEt", "extTxId": "i0xq9oar", "extUserId": "ATY5Fr8b", "issuedAt": "1988-05-14T00:00:00Z", "metadata": {"6PFwdVTM": "DfJEGlTQ", "IVeXmcV1": "86xc7Fo0", "Ihl5HCTh": "fV8MjNaD"}, "namespace": "poc4l6Jk", "nonceStr": "parjhUAs", "paymentMethod": "H2tG5ngH", "paymentMethodFee": 61, "paymentOrderNo": "QhjrEcYT", "paymentProvider": "ALIPAY", "paymentProviderFee": 94, "paymentStationUrl": "ORugg30Y", "price": 85, "refundedTime": "1989-01-14T00:00:00Z", "salesTax": 73, "sandbox": false, "sku": "UQKFdcqn", "status": "REQUEST_FOR_INFORMATION", "statusReason": "pNF1RRyn", "subscriptionId": "Ourb8DJH", "subtotalPrice": 62, "targetNamespace": "6X849STT", "targetUserId": "nxEXEfdx", "tax": 16, "totalPrice": 74, "totalTax": 87, "txEndTime": "1979-02-28T00:00:00Z", "type": "SSMK9H1F", "userId": "dCSgNhOg", "vat": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'ProcessUserSubscriptionNotification' test.out

#- 234 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'Luy1759A' \
    'dZPWNTKS' \
    --body '{"count": 81, "orderNo": "XrAUwsZy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AcquireUserTicket' test.out

#- 235 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'BqKfcL7H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'QueryUserCurrencyWallets' test.out

#- 236 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'lsd0wXAT' \
    'O44Lslly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ListUserCurrencyTransactions' test.out

#- 237 CheckWallet
eval_tap 0 237 'CheckWallet # SKIP deprecated' test.out

#- 238 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'ikmS8duT' \
    'jfNAA0UT' \
    --body '{"amount": 16, "expireAt": "1971-11-30T00:00:00Z", "origin": "Nintendo", "reason": "dHTMNnBj", "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'CreditUserWallet' test.out

#- 239 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '6f0Ufigi' \
    'OLlCfRHQ' \
    --body '{"amount": 27, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PayWithUserWallet' test.out

#- 240 GetUserWallet
eval_tap 0 240 'GetUserWallet # SKIP deprecated' test.out

#- 241 DebitUserWallet
eval_tap 0 241 'DebitUserWallet # SKIP deprecated' test.out

#- 242 DisableUserWallet
eval_tap 0 242 'DisableUserWallet # SKIP deprecated' test.out

#- 243 EnableUserWallet
eval_tap 0 243 'EnableUserWallet # SKIP deprecated' test.out

#- 244 ListUserWalletTransactions
eval_tap 0 244 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 245 QueryWallets
eval_tap 0 245 'QueryWallets # SKIP deprecated' test.out

#- 246 GetWallet
eval_tap 0 246 'GetWallet # SKIP deprecated' test.out

#- 247 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '6BQXq2OW' \
    'tc3aKgnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'SyncOrders' test.out

#- 248 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["JA178S5J", "flPAvtT6", "AyD8NOYg"], "apiKey": "HI8D5z1J", "authoriseAsCapture": true, "blockedPaymentMethods": ["kS4Y0HYk", "eztfwaqm", "2KHltXMF"], "clientKey": "U27CnNfc", "dropInSettings": "FzrrLWFD", "liveEndpointUrlPrefix": "1YsP3ul4", "merchantAccount": "mt2BrW1D", "notificationHmacKey": "vgbmE17M", "notificationPassword": "5spHXnbM", "notificationUsername": "3s9adVX1", "returnUrl": "BNAAddv8", "settings": "jzH8K0Zx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestAdyenConfig' test.out

#- 249 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Nmnkmu2A", "privateKey": "CQpQ5WVD", "publicKey": "xby03Tu6", "returnUrl": "XP6d9h4C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestAliPayConfig' test.out

#- 250 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "wUTvuuSW", "secretKey": "16ji8E4c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfig' test.out

#- 251 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'DebugMatchedPaymentMerchantConfig' test.out

#- 252 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "LeUsn6nv", "clientSecret": "oue2Dshz", "returnUrl": "X8kDEknC", "webHookId": "H0daXfnK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfig' test.out

#- 253 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["FYEQ1V0E", "K57Zk3sR", "7nrpkPuM"], "publishableKey": "sHUZsuKU", "secretKey": "6NB63JEM", "webhookSecret": "iPI4wuu1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfig' test.out

#- 254 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "xfMJEm1A", "key": "8u4fPp8q", "mchid": "SyLGDXr1", "returnUrl": "J4wwZs2b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestWxPayConfig' test.out

#- 255 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "3YnVb0kC", "flowCompletionUrl": "X5R6zmtV", "merchantId": 78, "projectId": 90, "projectSecretKey": "5HhYTpk4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'TestXsollaConfig' test.out

#- 256 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'yMF0utkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetPaymentMerchantConfig' test.out

#- 257 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'sC6rUesN' \
    --body '{"allowedPaymentMethods": ["6PE1aFTH", "ibQeKeqz", "vG7Sn280"], "apiKey": "NjdxHwha", "authoriseAsCapture": true, "blockedPaymentMethods": ["WvP3h18U", "oAbSA1pW", "G75Zdg4L"], "clientKey": "DxIJc6IT", "dropInSettings": "Uf8XRMFx", "liveEndpointUrlPrefix": "ieuxpRp9", "merchantAccount": "1L8ChVBc", "notificationHmacKey": "OJPAHycy", "notificationPassword": "KOiMhlY3", "notificationUsername": "0RDZ6mpB", "returnUrl": "JUU7GRX3", "settings": "RfYhDWfC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateAdyenConfig' test.out

#- 258 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'TVzzM2EY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestAdyenConfigById' test.out

#- 259 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'o5EyxQL9' \
    --body '{"appId": "7Z3t6oTM", "privateKey": "y2zQ32kx", "publicKey": "SfxEMNEI", "returnUrl": "GaRluB0g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateAliPayConfig' test.out

#- 260 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'MhhgCvdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestAliPayConfigById' test.out

#- 261 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '2u8b1OdF' \
    --body '{"publicKey": "Q7hMnl0p", "secretKey": "kzggzaDB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateCheckoutConfig' test.out

#- 262 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'ND7JmLbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestCheckoutConfigById' test.out

#- 263 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '2nSfRhI8' \
    --body '{"clientID": "oYD5gvYW", "clientSecret": "AiLlA2P7", "returnUrl": "sUEOom5C", "webHookId": "vkTSrghN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdatePayPalConfig' test.out

#- 264 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'njwkh3Dd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestPayPalConfigById' test.out

#- 265 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'xSE4E9eI' \
    --body '{"allowedPaymentMethodTypes": ["lVdQ3B4f", "XviOFXVw", "mnWkXsCa"], "publishableKey": "wZQarPRT", "secretKey": "VIX2e6yl", "webhookSecret": "oPb84Hot"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateStripeConfig' test.out

#- 266 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'sk74e49S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestStripeConfigById' test.out

#- 267 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'B5qGnKlU' \
    --body '{"appId": "9Fp4AQ8j", "key": "JJDysgz6", "mchid": "E0JUT9Fs", "returnUrl": "jlPkhFzM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'UpdateWxPayConfig' test.out

#- 268 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'wq3z8aaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateWxPayConfigCert' test.out

#- 269 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'ZCEybvaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestWxPayConfigById' test.out

#- 270 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'PSvhvxeG' \
    --body '{"apiKey": "QodHdkG3", "flowCompletionUrl": "osuinig1", "merchantId": 27, "projectId": 46, "projectSecretKey": "067rmFLw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaConfig' test.out

#- 271 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '06IGY0ux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestXsollaConfigById' test.out

#- 272 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'W2tHJmh0' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'UpdateXsollaUIConfig' test.out

#- 273 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryPaymentProviderConfig' test.out

#- 274 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "KTRVxnKg", "region": "wIaKiZjG", "sandboxTaxJarApiToken": "T3y0l5tQ", "specials": ["STRIPE", "XSOLLA", "XSOLLA"], "taxJarApiToken": "rhmG4dbE", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'CreatePaymentProviderConfig' test.out

#- 275 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetAggregatePaymentProviders' test.out

#- 276 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DebugMatchedPaymentProviderConfig' test.out

#- 277 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetSpecialPaymentProviders' test.out

#- 278 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'Aw0rjtad' \
    --body '{"aggregate": "XSOLLA", "namespace": "jiFvfcIT", "region": "9BboWgs9", "sandboxTaxJarApiToken": "W63wdIkD", "specials": ["XSOLLA", "CHECKOUT", "WALLET"], "taxJarApiToken": "pdfxPQOk", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentProviderConfig' test.out

#- 279 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '6K82F49i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'DeletePaymentProviderConfig' test.out

#- 280 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxConfig' test.out

#- 281 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "HFk6LjQs", "taxJarApiToken": "Z9XGB1zU", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Qo8K4DtY": "FlxTVCcC", "D78JnnRo": "hfKNjs2B", "Y9rUDOYE": "4Z4YHREx"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdatePaymentTaxConfig' test.out

#- 282 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'vwnZnNDP' \
    '1FgblPOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'SyncPaymentOrders' test.out

#- 283 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRootCategories' test.out

#- 284 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'DownloadCategories' test.out

#- 285 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'JGkQzLKc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetCategory' test.out

#- 286 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'FEM6cFwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetChildCategories' test.out

#- 287 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Wumx9M0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetDescendantCategories' test.out

#- 288 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicListCurrencies' test.out

#- 289 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'gkQU8lIE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemByAppId' test.out

#- 290 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicQueryItems' test.out

#- 291 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'aKEab1XO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItemBySku' test.out

#- 292 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'kycvNYk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicBulkGetItems' test.out

#- 293 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["2IkeT8tH", "bKZxI0dD", "g8CWCA00"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicValidateItemPurchaseCondition' test.out

#- 294 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'cVhOxhdu' \
    'ZN0tcfAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicSearchItems' test.out

#- 295 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'WG44oTDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetApp' test.out

#- 296 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'Kh3hbyNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetItemDynamicData' test.out

#- 297 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '6P3scg2f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetItem' test.out

#- 298 GetPaymentCustomization
eval_tap 0 298 'GetPaymentCustomization # SKIP deprecated' test.out

#- 299 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "jriNZoEJ", "paymentProvider": "CHECKOUT", "returnUrl": "rSrrhInB", "ui": "t1eSwyI2", "zipCode": "FrUJoP8u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetPaymentUrl' test.out

#- 300 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'WBUv1KeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetPaymentMethods' test.out

#- 301 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'y9LawwCS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUnpaidPaymentOrder' test.out

#- 302 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'tYfBX76Z' \
    --body '{"token": "g5qojSVw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'Pay' test.out

#- 303 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'tuQOgjtc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicCheckPaymentOrderPaidStatus' test.out

#- 304 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    'RDa0bchp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentPublicConfig' test.out

#- 305 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '3XUml0Uq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetQRCode' test.out

#- 306 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'zZIG99qG' \
    'tqcECYxb' \
    'CHECKOUT' \
    'TATLyvsq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicNormalizePaymentReturnUrl' test.out

#- 307 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'ILfM4sW2' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetPaymentTaxValue' test.out

#- 308 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'nrfhKhW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetRewardByCode' test.out

#- 309 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'QueryRewards1' test.out

#- 310 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'rdKL6Xl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetReward1' test.out

#- 311 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicListStores' test.out

#- 312 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicExistsAnyMyActiveEntitlement' test.out

#- 313 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'yfyMGt87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 314 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'kQzZlc2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 315 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'WhwGV1hx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 316 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetEntitlementOwnershipToken' test.out

#- 317 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'hELVLEhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetMyWallet' test.out

#- 318 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    '2ewXEiRZ' \
    --body '{"epicGamesJwtToken": "uz171D9S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncEpicGameDLC' test.out

#- 319 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'BTq2bFCW' \
    --body '{"serviceLabel": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicSyncPsnDlcInventory' test.out

#- 320 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'zie5cbJE' \
    --body '{"serviceLabels": [19, 28, 39]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 321 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'oeHDY4Pj' \
    --body '{"appId": "5xv3AAV5", "steamId": "XoApgOOV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamDLC' test.out

#- 322 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '0wrIHf1r' \
    --body '{"xstsToken": "YzuTUzh9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'SyncXboxDLC' test.out

#- 323 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '9eToms9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlements' test.out

#- 324 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'WmPaU1cb' \
    'XVOixaIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementByAppId' test.out

#- 325 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '8pio6pv6' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicQueryUserEntitlementsByAppType' test.out

#- 326 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'tuah7u9C' \
    'xLyOPxLX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementByItemId' test.out

#- 327 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'nNM7SP6F' \
    'NuO4hX8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementBySku' test.out

#- 328 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '73OWKdDf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicExistsAnyUserActiveEntitlement' test.out

#- 329 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '0IJ55Xlv' \
    '4TuOKwEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 330 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'MInoi1hv' \
    '3XmRDkdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 331 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'dRBXufdH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 332 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'etG6kBxA' \
    'gGfMDmD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 333 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'fhPb6PQq' \
    'ntLMx5RN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserEntitlement' test.out

#- 334 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'RAfO4ruK' \
    '6CNn0P2W' \
    --body '{"options": ["6JwbLGRK", "ZtTBjgf7", "Va7Ik2pI"], "requestId": "FOZqYtwG", "useCount": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicConsumeUserEntitlement' test.out

#- 335 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'nxDweHd7' \
    --body '{"code": "DMA8OOFW", "language": "BXh_ADGC-Sh", "region": "P8r7tW1J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicRedeemCode' test.out

#- 336 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'dX7SYqAx' \
    --body '{"excludeOldTransactions": false, "language": "pCm_021", "productId": "GmDzhkaX", "receiptData": "y24tjiZ8", "region": "6lGS5ZER", "transactionId": "9Jo4Tg44"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillAppleIAPItem' test.out

#- 337 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '6DwKJvgE' \
    --body '{"epicGamesJwtToken": "umhP5UTO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'SyncEpicGamesInventory' test.out

#- 338 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'acZz0QZq' \
    --body '{"autoAck": true, "language": "AqNQ-kv", "orderId": "0ltsPdNa", "packageName": "zFlk8kKe", "productId": "MGiNBJJn", "purchaseTime": 100, "purchaseToken": "eQauH7Om", "region": "3FpYFZ5r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicFulfillGoogleIAPItem' test.out

#- 339 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'iGzPFBbx' \
    --body '{"currencyCode": "iL7pf5TW", "price": 0.8097382489018871, "productId": "JRYieO8k", "serviceLabel": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicReconcilePlayStationStore' test.out

#- 340 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'f136Ipc9' \
    --body '{"currencyCode": "Fcr079Qy", "price": 0.08690303008173383, "productId": "71GFDlEC", "serviceLabels": [3, 12, 7]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 341 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'WmLhzoje' \
    --body '{"appId": "Y5aiwULt", "language": "Nt_pbqx_En", "region": "oWu7RcVF", "stadiaPlayerId": "jghZQAUb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncStadiaEntitlement' test.out

#- 342 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'JDCYJu5E' \
    --body '{"appId": "6vBxYuPM", "currencyCode": "o8SJTUQV", "language": "mYl-486", "price": 0.9787009679171705, "productId": "0fPMQxEt", "region": "Fxx6UF7l", "steamId": "aytGyuuU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'SyncSteamInventory' test.out

#- 343 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'MTxjh6DX' \
    --body '{"gameId": "Qhgr0DyW", "language": "vvSt-vybj_am", "region": "L0QWF14g"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'SyncTwitchDropsEntitlement' test.out

#- 344 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'ANHCNuHG' \
    --body '{"currencyCode": "sdQEWlzR", "price": 0.9669408436586107, "productId": "v1CQ6cKz", "xstsToken": "qhHjMv6T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxInventory' test.out

#- 345 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'rFn8UlVj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserOrders' test.out

#- 346 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'BTJbkX78' \
    --body '{"currencyCode": "xniGRmQo", "discountedPrice": 65, "ext": {"SKmTJyQz": {}, "bAxNNHzy": {}, "GRPH9OA4": {}}, "itemId": "q7tuSPrB", "language": "YmCj-Suhs", "price": 16, "quantity": 42, "region": "Y6AOxvcS", "returnUrl": "Y1xWK1Ng"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserOrder' test.out

#- 347 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'Oe1ZKHqu' \
    'fCDKv6QW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrder' test.out

#- 348 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'MQjNer4Y' \
    'wAycNp4G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicCancelUserOrder' test.out

#- 349 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'xsDuXel2' \
    'OugM4M9O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserOrderHistories' test.out

#- 350 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'QHLxyoaF' \
    'VDPiJkWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicDownloadUserOrderReceipt' test.out

#- 351 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'Og3ypwfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentAccounts' test.out

#- 352 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'LKFMRPm0' \
    'paypal' \
    '7MVR8PFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicDeletePaymentAccount' test.out

#- 353 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'eaLmq8E3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserSubscriptions' test.out

#- 354 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'ZNuwYbUD' \
    --body '{"currencyCode": "jL7QacuJ", "itemId": "LiCKSHE9", "language": "wulV_pYfL", "region": "1wjelCUK", "returnUrl": "0neX2B2y", "source": "wF95ahfe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicSubscribeSubscription' test.out

#- 355 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '7pEWvgub' \
    'oUAlRmf9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 356 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'NxksOhC0' \
    '5K7J8NDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserSubscription' test.out

#- 357 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'vtdXCqFh' \
    '06hVEium' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicChangeSubscriptionBillingAccount' test.out

#- 358 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'Tj5ftQvh' \
    'yJ7csbX2' \
    --body '{"immediate": false, "reason": "4ALrMCvw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicCancelSubscription' test.out

#- 359 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '5n8ieaBG' \
    'FtSIVlHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserSubscriptionBillingHistories' test.out

#- 360 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'Yui0NTHc' \
    'rqvqLDli' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetWallet' test.out

#- 361 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'tAhtl9Zp' \
    '60kTUodQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicListUserWalletTransactions' test.out

#- 362 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'QueryItems1' test.out

#- 363 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'ImportStore1' test.out

#- 364 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'sB7mzP7n' \
    --body '{"itemIds": ["Q2FvaQBo", "iGktZvqR", "8bz5xIuA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
