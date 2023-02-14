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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "zpXLM4eO", "appType": "DLC", "baseAppId": "sFQVegkK", "boothName": "vONIVQMi", "boundItemIds": ["ZzqDUV85", "4eISb7Tu", "tsbu2haF"], "categoryPath": "cDz7DGDF", "clazz": "jW1V9QCI", "createdAt": "1995-04-30T00:00:00Z", "description": "HEyEv6LR", "displayOrder": 62, "entitlementType": "CONSUMABLE", "ext": {"hqqHCXn7": {}, "TFoQ3xZ6": {}, "RYdzgPuV": {}}, "features": ["Kja4RMAd", "3EcZyL3l", "kcIx2kWL"], "fresh": true, "images": [{"as": "RBDiMtNV", "caption": "k8vYsJfX", "height": 42, "imageUrl": "jGOUgLtB", "smallImageUrl": "KcRTP51E", "width": 1}, {"as": "00XMODzR", "caption": "O10B0NEJ", "height": 56, "imageUrl": "Syg3gvjw", "smallImageUrl": "GtRjRI2a", "width": 43}, {"as": "g3nkCY1I", "caption": "I4QZtoxw", "height": 66, "imageUrl": "NztTsXgz", "smallImageUrl": "jxIbweYI", "width": 31}], "itemId": "UYMdZbFE", "itemIds": ["UqSRjyOg", "Ukw0o9ja", "Oa35zmT1"], "itemQty": {"wJZlcT9H": 76, "gBfZVi5B": 59, "FtnOc4f5": 86}, "itemType": "EXTENSION", "language": "EydjsK6J", "listable": false, "localExt": {"TV5GvIYF": {}, "xl7KRmes": {}, "u3fMDvYm": {}}, "longDescription": "LaWB6DVe", "lootBoxConfig": {"rewardCount": 33, "rewards": [{"lootBoxItems": [{"count": 72, "itemId": "8K8v1cqq", "itemSku": "qytQNk0w", "itemType": "kO6HWVUM"}, {"count": 100, "itemId": "RChACjCT", "itemSku": "bUo13l5u", "itemType": "e5Hybs9p"}, {"count": 91, "itemId": "3GXOyv5U", "itemSku": "PJMre2qm", "itemType": "l0hqw4xh"}], "name": "AMA4k3hC", "odds": 0.139019850963631, "type": "REWARD_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 100, "itemId": "c7ktIsH6", "itemSku": "4zHUDBF8", "itemType": "YB3tREU4"}, {"count": 99, "itemId": "87f5dSRt", "itemSku": "oA07O7bJ", "itemType": "jil5rPbt"}, {"count": 75, "itemId": "zda8FatW", "itemSku": "zTNCjRWf", "itemType": "JZm0ZIRv"}], "name": "b5QM2Dz1", "odds": 0.9926656927361683, "type": "REWARD", "weight": 78}, {"lootBoxItems": [{"count": 55, "itemId": "AsDO32Jm", "itemSku": "aO0mf3yC", "itemType": "QSHDc6nB"}, {"count": 58, "itemId": "G0B5l8vt", "itemSku": "A9Cr7nhM", "itemType": "bTtt40s8"}, {"count": 60, "itemId": "mxo3oaNr", "itemSku": "JxtXJICE", "itemType": "fi5VJFEw"}], "name": "oGkeIiyq", "odds": 0.09919862198550211, "type": "REWARD", "weight": 11}], "rollFunction": "CUSTOM"}, "maxCount": 10, "maxCountPerUser": 10, "name": "PgizSAup", "namespace": "sQouS5Nw", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "iWIw5VoS", "itemSku": "1YHCKcDC", "itemType": "qN8cHjJT"}, {"count": 77, "itemId": "AxDElUFE", "itemSku": "oeZN8Pye", "itemType": "4VwpCruS"}, {"count": 13, "itemId": "SJCk5b4h", "itemSku": "gtcGkK2p", "itemType": "LiJ0cyxs"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 51, "comparison": "isGreaterThan", "name": "brsGzMd0", "predicateType": "SeasonPassPredicate", "value": "V4h5SBOR", "values": ["fJUKgreh", "yywRd8vM", "5uEpUMMH"]}, {"anyOf": 38, "comparison": "includes", "name": "gePxhwt6", "predicateType": "EntitlementPredicate", "value": "y64Pq486", "values": ["LkkTZJ1l", "333xWebP", "Qv9LFVqT"]}, {"anyOf": 41, "comparison": "isGreaterThan", "name": "iWYhCPZj", "predicateType": "SeasonTierPredicate", "value": "rWkomPGG", "values": ["MRoRmcWT", "Er9BPrvf", "h8BuMnDW"]}]}, {"operator": "and", "predicates": [{"anyOf": 86, "comparison": "isGreaterThanOrEqual", "name": "PD3LGpoJ", "predicateType": "EntitlementPredicate", "value": "wMlOppQz", "values": ["QnosgAYF", "gBv3PrfJ", "RUu2Qa8g"]}, {"anyOf": 18, "comparison": "is", "name": "OveRp5C6", "predicateType": "EntitlementPredicate", "value": "754QEdUV", "values": ["DQlBgMDM", "r1ZYrbCP", "QKOWLlKw"]}, {"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "vnkicOwf", "predicateType": "SeasonPassPredicate", "value": "nMTRDCeP", "values": ["7JoloY4c", "bF89P5qP", "nu54K4cs"]}]}, {"operator": "or", "predicates": [{"anyOf": 36, "comparison": "isLessThan", "name": "zotzic4w", "predicateType": "SeasonTierPredicate", "value": "Ia36xE2f", "values": ["jLT9tGSz", "ZcIRiH85", "KKyLVML0"]}, {"anyOf": 84, "comparison": "isNot", "name": "vHwRiWxx", "predicateType": "SeasonTierPredicate", "value": "mPbT83Cb", "values": ["IgHeX2vZ", "bQ42yHTC", "mSwXtMxz"]}, {"anyOf": 12, "comparison": "includes", "name": "C0TYdg6j", "predicateType": "SeasonTierPredicate", "value": "ITkl9OPw", "values": ["K3Zn0p6q", "qmkqf8Xx", "tWHKmQ0M"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 5, "fixedTrialCycles": 33, "graceDays": 81}, "region": "NEJQK0SM", "regionData": [{"currencyCode": "XXeCXu1G", "currencyNamespace": "RIzLwBPM", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1990-10-22T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-11-02T00:00:00Z", "discountedPrice": 21, "expireAt": "1994-04-05T00:00:00Z", "price": 14, "purchaseAt": "1976-08-09T00:00:00Z", "trialPrice": 50}, {"currencyCode": "SamOERMN", "currencyNamespace": "utCggM0T", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1999-03-19T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1999-02-21T00:00:00Z", "discountedPrice": 96, "expireAt": "1971-09-03T00:00:00Z", "price": 19, "purchaseAt": "1976-01-29T00:00:00Z", "trialPrice": 89}, {"currencyCode": "TSiK7Lak", "currencyNamespace": "PKZu2c5g", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1974-09-03T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1981-05-16T00:00:00Z", "discountedPrice": 56, "expireAt": "1976-12-03T00:00:00Z", "price": 50, "purchaseAt": "1998-06-24T00:00:00Z", "trialPrice": 68}], "seasonType": "TIER", "sku": "eh4aSfHz", "stackable": false, "status": "ACTIVE", "tags": ["dTU6VJwo", "1goJm8jx", "wRmLPFE8"], "targetCurrencyCode": "SCEf1L8J", "targetItemId": "zqAIV7gX", "targetNamespace": "ipdzcXqb", "thumbnailUrl": "QIuZocBz", "title": "nCT86DWa", "updatedAt": "1995-02-24T00:00:00Z", "useCount": 3}, "namespace": "5oq0pJ5Q", "order": {"currency": {"currencyCode": "6ryFuuWk", "currencySymbol": "z89bfD2d", "currencyType": "REAL", "decimals": 71, "namespace": "yVJ8HFs5"}, "ext": {"hkEwsKQR": {}, "FmFDuVdl": {}, "iJAiN0ez": {}}, "free": false}, "source": "GIFT"}, "script": "VzLC5JdN", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script '2NzTSDIv' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'hmrjAtZ5' --body '{"grantDays": "VUkrx1DX"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'Zg0Dr4Yc' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'JMGRUwMQ' --body '{"grantDays": "tolUag0N"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "Ac6IadSG", "dryRun": true, "fulfillmentUrl": "x053OCXt", "itemType": "OPTIONBOX", "purchaseConditionUrl": "fHrZfWHL"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'LOOTBOX' --login_with_auth "Bearer foo"
platform-get-item-type-config 'yKAqwuJg' --login_with_auth "Bearer foo"
platform-update-item-type-config 'DZjMSt39' --body '{"clazz": "TtGw7Lqa", "dryRun": true, "fulfillmentUrl": "9CKmJh2S", "purchaseConditionUrl": "AQgYhsxl"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'aY7HIIaB' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "9rHcDF8p", "items": [{"extraSubscriptionDays": 84, "itemId": "aFGUHBfY", "itemName": "AxdZu4oZ", "quantity": 99}, {"extraSubscriptionDays": 46, "itemId": "GTv4xzrW", "itemName": "xk0fDSIG", "quantity": 14}, {"extraSubscriptionDays": 61, "itemId": "kwkkugo0", "itemName": "cMuOAFge", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 80, "maxRedeemCountPerCode": 69, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 90, "name": "aDyFYMsm", "redeemEnd": "1988-07-12T00:00:00Z", "redeemStart": "1998-08-31T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8EpueTIk", "gmXIBzKB", "qVfa3qy0"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'I8Dx6yqP' --login_with_auth "Bearer foo"
platform-update-campaign 'tJw9lODc' --body '{"description": "hbdIo8dx", "items": [{"extraSubscriptionDays": 34, "itemId": "kdKzWvpC", "itemName": "ae9mz9ho", "quantity": 46}, {"extraSubscriptionDays": 23, "itemId": "TUn1ia2p", "itemName": "P56q2iOl", "quantity": 49}, {"extraSubscriptionDays": 10, "itemId": "zToBUEvc", "itemName": "aBRCFFJG", "quantity": 68}], "maxRedeemCountPerCampaignPerUser": 35, "maxRedeemCountPerCode": 8, "maxRedeemCountPerCodePerUser": 94, "maxSaleCount": 84, "name": "fnjWnjKq", "redeemEnd": "1997-11-15T00:00:00Z", "redeemStart": "1986-08-16T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["DIFanS28", "tP6cOw3o", "v4LJF16x"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'Ou3yRDl1' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '6Qv2pSQq' --body '{"categoryPath": "6YzuydX2", "localizationDisplayNames": {"XIX56UbU": "6ldSuXcW", "fdqjRR81": "36k8NX6L", "vNdB8sKz": "drulFkdU"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'N5eqv33q' --login_with_auth "Bearer foo"
platform-update-category '9UL7wRIT' '8mlFiOpV' --body '{"localizationDisplayNames": {"qGXFjCV7": "Ad8wsguf", "EeIIDdWA": "5ZJeeVMl", "sBChUi6d": "TZ3H4yAz"}}' --login_with_auth "Bearer foo"
platform-delete-category 'VVZaPpyI' 'qlkzCgyS' --login_with_auth "Bearer foo"
platform-get-child-categories 'RQdHJJ8b' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'HDM8ytB8' --login_with_auth "Bearer foo"
platform-query-codes 'D94ZiF3t' --login_with_auth "Bearer foo"
platform-create-codes 'xpwHEBEP' --body '{"quantity": 10}' --login_with_auth "Bearer foo"
platform-download 'CIyPKLqi' --login_with_auth "Bearer foo"
platform-bulk-disable-codes '3FjkbIHO' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'BJg8v0H2' --login_with_auth "Bearer foo"
platform-query-redeem-history 'ZuQvserZ' --login_with_auth "Bearer foo"
platform-get-code 'AhzcxAdy' --login_with_auth "Bearer foo"
platform-disable-code 'LOCoCpgZ' --login_with_auth "Bearer foo"
platform-enable-code 'UMxaMmp5' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "8WZDmqL2"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "pRgMCLUM", "currencySymbol": "eWfaQ4vi", "currencyType": "VIRTUAL", "decimals": 11, "localizationDescriptions": {"FT0oQDEa": "IuRxxnCp", "u8b8CUkO": "3IX9jjfI", "YLbIvF8W": "kzcK2aqn"}}' --login_with_auth "Bearer foo"
platform-update-currency 'Jch5ifDM' --body '{"localizationDescriptions": {"c341Hnva": "8RuhOXKR", "ovYWNbnj": "xZdHBi4Q", "DszI7W5A": "eFCXYMwh"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'eIeonWXR' --login_with_auth "Bearer foo"
platform-get-currency-config 'XWtcb1z1' --login_with_auth "Bearer foo"
platform-get-currency-summary 'bikeRyml' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "zcX1JNXs", "rewards": [{"currency": {"currencyCode": "CWcAylm2", "namespace": "Wb3S2t1x"}, "item": {"itemId": "LwKswWEz", "itemSku": "mMH1ffex", "itemType": "yZu9AVFn"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "6hj4KM5X", "namespace": "9pAjNp9O"}, "item": {"itemId": "qVqG9B6q", "itemSku": "eoSAV5LN", "itemType": "828pgVFo"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "V6WQWpn2", "namespace": "XVr76vkk"}, "item": {"itemId": "r39cPZPL", "itemSku": "byx0jYfN", "itemType": "IiVcdXfk"}, "quantity": 22, "type": "CURRENCY"}]}, {"id": "hPdAgDJn", "rewards": [{"currency": {"currencyCode": "f4x5o4IZ", "namespace": "AIZqbXMa"}, "item": {"itemId": "xFoL2P0p", "itemSku": "HL7Z6ZST", "itemType": "ygET9hbn"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "FhgPmlkj", "namespace": "PXkVEQO5"}, "item": {"itemId": "6KtnZJMg", "itemSku": "S6FQKCzk", "itemType": "0odeDWcf"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "qQZHxkxB", "namespace": "q9n0ltuu"}, "item": {"itemId": "BcAMwtPt", "itemSku": "YBrfQ28S", "itemType": "pigjK5Qb"}, "quantity": 86, "type": "CURRENCY"}]}, {"id": "x4UBjjXS", "rewards": [{"currency": {"currencyCode": "BZc2a83c", "namespace": "zcsu6gHs"}, "item": {"itemId": "ot5cYxSo", "itemSku": "3FqdXTkP", "itemType": "I6mLUqk8"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "ejol3O1B", "namespace": "amw9DXye"}, "item": {"itemId": "p3DkgYgT", "itemSku": "mobjZGdd", "itemType": "KEcSYIJy"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "59aKqFKy", "namespace": "7G1WHYOt"}, "item": {"itemId": "oiaA4RiZ", "itemSku": "UAxuMVkz", "itemType": "dqH7Qfni"}, "quantity": 81, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"1KqFIXT6": "qLgxgKAT", "b2YOZ0Sj": "06mxSYco", "qTKfd3vn": "shgD2QGe"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"YFCiKJ5e": "EhTd31e6", "Lap54NSx": "vCalHMUl", "RWzome5l": "ErcVOy0L"}}, {"platform": "XBOX", "platformDlcIdMap": {"TZwUBrMT": "57X1JZwO", "UC8rHlQq": "HGDmVsNQ", "om5MuKtR": "dP51h4gR"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'I8c5LO9S' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "7dwZxrJe", "password": "TDRNnN06"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "PnFVmqrv"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "1f7EMwsC", "serviceAccountId": "DWu00qMP"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "wS80WEPb", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"GR4Jthpq": "WhrVuVXu", "ZmvsM76y": "YkLktNqG", "lek36ZoP": "b2JRRXBJ"}}, {"itemIdentity": "WdSC3HA6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"q10w95lm": "Y2oRz6Jn", "LXtsV1Z5": "Tn7rLquR", "vmuHJKJL": "0ePKoZqu"}}, {"itemIdentity": "1Rs8dfBm", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"CRpOP1ZI": "9CVWZ3kO", "ctYL6q3I": "shHESvvA", "0kIVSl8G": "8eSfTerT"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "6saVMZRx"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "1Bf4B50P", "publisherAuthenticationKey": "KiLSPecS"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "Mqt5hwcX", "clientSecret": "Sc8gdMZk", "organizationId": "vTQ6x41W"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "5Z83wnVR"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'o8gAmAaJ' 'Cc3oIGCm' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '6spFuV5i' '6X9oZ37X' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'URAE18hu' --body '{"categoryPath": "MJmpp6M9", "targetItemId": "T7xbGFKu", "targetNamespace": "nShAktOE"}' --login_with_auth "Bearer foo"
platform-create-item '8prcVpq9' --body '{"appId": "UDCSJYiW", "appType": "DLC", "baseAppId": "y7ObrTWY", "boothName": "T2gwm4cp", "categoryPath": "2roBHH21", "clazz": "XJBeyg6h", "displayOrder": 81, "entitlementType": "DURABLE", "ext": {"mOypQ5Gp": {}, "7LcjNKwp": {}, "gVpvNrOH": {}}, "features": ["hVnw73NU", "j2cuh9YQ", "vUu423i3"], "images": [{"as": "V1tgirix", "caption": "kCj9tIpt", "height": 17, "imageUrl": "1Ts0dXTk", "smallImageUrl": "UBKBtCoP", "width": 83}, {"as": "NIeDVgty", "caption": "ab2HN936", "height": 54, "imageUrl": "rBftQJpS", "smallImageUrl": "eR9pqC5y", "width": 57}, {"as": "J9cPK9HZ", "caption": "akxLjfim", "height": 73, "imageUrl": "w0vD4jvL", "smallImageUrl": "qhgsokch", "width": 65}], "itemIds": ["WknfTbWC", "LIueuTM1", "0B7fkPtb"], "itemQty": {"1HTQj9Ph": 22, "cwGxEFdO": 55, "XtMCcnbs": 93}, "itemType": "EXTENSION", "listable": true, "localizations": {"en6tzKHB": {"description": "qiys6xUT", "localExt": {"vFgnEKMl": {}, "1yb3Yd5Y": {}, "zKJPAT8y": {}}, "longDescription": "1gdHgtut", "title": "6LRQKCsv"}, "KtN8WZFa": {"description": "ijt1sPZq", "localExt": {"fMbCWo7I": {}, "Bycg4HgJ": {}, "7qlbcctQ": {}}, "longDescription": "r2FPisM4", "title": "bjomAck1"}, "qU80qiOy": {"description": "5ecxiw9A", "localExt": {"jaYEqJ9u": {}, "9Q1P5lmV": {}, "JGyc6BRl": {}}, "longDescription": "eXjpK7fz", "title": "8SVwtRMZ"}}, "lootBoxConfig": {"rewardCount": 80, "rewards": [{"lootBoxItems": [{"count": 16, "itemId": "EvYW8TNw", "itemSku": "TQLFXpvZ", "itemType": "QUdnwg1H"}, {"count": 50, "itemId": "da3leGUw", "itemSku": "i3dfBBYJ", "itemType": "wbqEDkkq"}, {"count": 63, "itemId": "VJkOTrYp", "itemSku": "Slji4din", "itemType": "y8j44baI"}], "name": "wXBCgiCW", "odds": 0.5996680750778093, "type": "PROBABILITY_GROUP", "weight": 95}, {"lootBoxItems": [{"count": 80, "itemId": "m1kM7VqK", "itemSku": "0C8OxWbB", "itemType": "R5ograNh"}, {"count": 99, "itemId": "Swt3yY5L", "itemSku": "S3P3O6mw", "itemType": "ZzPbgbPo"}, {"count": 23, "itemId": "wmfxnqfn", "itemSku": "jrlYIpdM", "itemType": "1TS9hxN3"}], "name": "NyWZuZEg", "odds": 0.7448612916622903, "type": "REWARD_GROUP", "weight": 98}, {"lootBoxItems": [{"count": 12, "itemId": "YfdJyU8M", "itemSku": "nu9Sav7W", "itemType": "ZFM9C60h"}, {"count": 48, "itemId": "mqv8DGvR", "itemSku": "v6Vc5h2j", "itemType": "1VS9Zkui"}, {"count": 61, "itemId": "mTb2IJyB", "itemSku": "tPdhjGX4", "itemType": "DK8a1Pdu"}], "name": "Ni5sJRlE", "odds": 0.8716161546280963, "type": "REWARD", "weight": 10}], "rollFunction": "CUSTOM"}, "maxCount": 38, "maxCountPerUser": 53, "name": "POHpnztF", "optionBoxConfig": {"boxItems": [{"count": 32, "itemId": "lpgFzHyc", "itemSku": "PaYK6BLl", "itemType": "Qvo1v1AD"}, {"count": 83, "itemId": "qvkBBiZ0", "itemSku": "5DYpV5JU", "itemType": "98xZV0Uh"}, {"count": 74, "itemId": "dub5Mda1", "itemSku": "xMEPEqDf", "itemType": "9GeG2lzW"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 39, "fixedTrialCycles": 47, "graceDays": 41}, "regionData": {"SHDe3ROM": [{"currencyCode": "HmG70Rvh", "currencyNamespace": "x30TIIPQ", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1978-07-27T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1987-04-06T00:00:00Z", "discountedPrice": 17, "expireAt": "1993-07-08T00:00:00Z", "price": 51, "purchaseAt": "1980-10-28T00:00:00Z", "trialPrice": 26}, {"currencyCode": "MZvVkLEq", "currencyNamespace": "AincDaDD", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1983-11-27T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1974-10-05T00:00:00Z", "discountedPrice": 18, "expireAt": "1974-02-23T00:00:00Z", "price": 59, "purchaseAt": "1991-01-20T00:00:00Z", "trialPrice": 85}, {"currencyCode": "oz0oU49p", "currencyNamespace": "17xg9PFN", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1976-05-28T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1973-12-21T00:00:00Z", "discountedPrice": 52, "expireAt": "1986-11-29T00:00:00Z", "price": 15, "purchaseAt": "1981-01-01T00:00:00Z", "trialPrice": 27}], "jLU1xnjj": [{"currencyCode": "mndExTEk", "currencyNamespace": "icGbzKNT", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1981-02-11T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1979-02-09T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-02-01T00:00:00Z", "price": 25, "purchaseAt": "1971-08-19T00:00:00Z", "trialPrice": 24}, {"currencyCode": "KGIwsVvk", "currencyNamespace": "4ui7JX3v", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1998-07-14T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1984-06-25T00:00:00Z", "discountedPrice": 48, "expireAt": "1990-02-05T00:00:00Z", "price": 98, "purchaseAt": "1999-04-11T00:00:00Z", "trialPrice": 11}, {"currencyCode": "5eg8ofxn", "currencyNamespace": "YQrAH2By", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1976-05-06T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-04-23T00:00:00Z", "discountedPrice": 78, "expireAt": "1984-09-16T00:00:00Z", "price": 75, "purchaseAt": "1986-12-23T00:00:00Z", "trialPrice": 50}], "2ZLu7i4x": [{"currencyCode": "bgu4oIT0", "currencyNamespace": "3PKj13eS", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1988-08-05T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1973-11-28T00:00:00Z", "discountedPrice": 78, "expireAt": "1996-07-18T00:00:00Z", "price": 70, "purchaseAt": "1978-02-07T00:00:00Z", "trialPrice": 26}, {"currencyCode": "Wv04AnOM", "currencyNamespace": "DHeZmm8G", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1992-06-12T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1974-12-15T00:00:00Z", "discountedPrice": 31, "expireAt": "1987-06-25T00:00:00Z", "price": 63, "purchaseAt": "1988-11-28T00:00:00Z", "trialPrice": 42}, {"currencyCode": "BFlKmYJK", "currencyNamespace": "1I0HoFkn", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1996-11-26T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-03-21T00:00:00Z", "discountedPrice": 62, "expireAt": "1981-10-31T00:00:00Z", "price": 93, "purchaseAt": "1998-07-15T00:00:00Z", "trialPrice": 70}]}, "seasonType": "PASS", "sku": "yVB4LbKR", "stackable": false, "status": "ACTIVE", "tags": ["MQ9RQmMI", "WScHjj6D", "lbawsKCi"], "targetCurrencyCode": "ZhtERz94", "targetNamespace": "ogyJ9gj8", "thumbnailUrl": "sDPW7x0n", "useCount": 72}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'TRbfE3hn' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'jWGTZ8DX' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'SdlHhPGY' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'ospQWIA1' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'zBue8A1d' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'XXuA8jkY' --body '{"itemIds": ["is7peIVZ", "swixZXJW", "THCPlYcz"]}' --login_with_auth "Bearer foo"
platform-search-items '0m7CSHi4' '9NDBLuKt' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'Vn8QOFcD' --login_with_auth "Bearer foo"
platform-update-item 'D0mfXJyk' 'eG3qqC3O' --body '{"appId": "mC3f9FIF", "appType": "SOFTWARE", "baseAppId": "hKrcZS1V", "boothName": "mEWS56G4", "categoryPath": "SCbt4lsh", "clazz": "e9Ze1ew0", "displayOrder": 16, "entitlementType": "DURABLE", "ext": {"g5z8V42U": {}, "pivZrgil": {}, "ZWNqzn9a": {}}, "features": ["BBeNe4TC", "0JiOWVE9", "FGkCY9v7"], "images": [{"as": "OTgSoJfC", "caption": "D78TefWn", "height": 95, "imageUrl": "01UZMeUn", "smallImageUrl": "FA2XIfxI", "width": 5}, {"as": "udhoPyga", "caption": "h50dwyA3", "height": 94, "imageUrl": "z2jskqjB", "smallImageUrl": "aTeMyp2C", "width": 99}, {"as": "sjwDsYVa", "caption": "mTopbMDF", "height": 75, "imageUrl": "4cN4gIoD", "smallImageUrl": "kv0PbAwg", "width": 4}], "itemIds": ["PQTbOPqS", "5MUnIdRU", "3UIlVwHt"], "itemQty": {"i9AiuKKA": 32, "HgdALwPz": 91, "jkIE8mX8": 25}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"zamX9yUu": {"description": "T5InYyX7", "localExt": {"5Alep2IA": {}, "WpA3OQTB": {}, "qHnchiBk": {}}, "longDescription": "NHvIBwnn", "title": "MKyIDk0S"}, "eohXjyoQ": {"description": "ATJ9NvKE", "localExt": {"CFohu4Fn": {}, "04KwrnYo": {}, "ZUKBRenZ": {}}, "longDescription": "XVzAm2ug", "title": "kc5aSUG3"}, "GESwiuZt": {"description": "Hf1tBluK", "localExt": {"OP3o06NL": {}, "cd0bgnZ4": {}, "anctLKEP": {}}, "longDescription": "BpPt6JQC", "title": "GE7mX8Z1"}}, "lootBoxConfig": {"rewardCount": 12, "rewards": [{"lootBoxItems": [{"count": 61, "itemId": "bmYCHhzt", "itemSku": "8KvivJJG", "itemType": "kJD0iv3o"}, {"count": 49, "itemId": "exU80WZn", "itemSku": "RhbHSB7l", "itemType": "KXK32rIN"}, {"count": 28, "itemId": "aKzwnO1h", "itemSku": "rtBfoUo9", "itemType": "9po7j1mH"}], "name": "w28zmE00", "odds": 0.24736043031553645, "type": "PROBABILITY_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 21, "itemId": "J71SYuHF", "itemSku": "0JxHrZqS", "itemType": "9Ng1xi6C"}, {"count": 9, "itemId": "6FHTh8oS", "itemSku": "cjpTjdz7", "itemType": "zVaW39Oo"}, {"count": 63, "itemId": "Dt5VD3JJ", "itemSku": "dGFIifOy", "itemType": "i2NQegFl"}], "name": "iLyvKW5L", "odds": 0.7146061563740178, "type": "REWARD", "weight": 23}, {"lootBoxItems": [{"count": 60, "itemId": "yKS2A5LG", "itemSku": "aH7yxTW7", "itemType": "pAb9JPwu"}, {"count": 84, "itemId": "lEXmLi7Q", "itemSku": "wQpgamYE", "itemType": "yqCgvUlp"}, {"count": 64, "itemId": "PmPRCi5y", "itemSku": "ZdcSvkBj", "itemType": "xiyXKjqQ"}], "name": "fueebAXW", "odds": 0.06325549874775305, "type": "REWARD_GROUP", "weight": 3}], "rollFunction": "CUSTOM"}, "maxCount": 88, "maxCountPerUser": 51, "name": "jnSWLt2w", "optionBoxConfig": {"boxItems": [{"count": 18, "itemId": "9fum73CD", "itemSku": "0F2cSW5z", "itemType": "g4J780oj"}, {"count": 90, "itemId": "tYzQuOo0", "itemSku": "N2McZGWz", "itemType": "bBR1WvW7"}, {"count": 79, "itemId": "vcdQe17e", "itemSku": "f4e7uftc", "itemType": "XDSRq6AD"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 74, "fixedTrialCycles": 1, "graceDays": 18}, "regionData": {"WWeqblAa": [{"currencyCode": "7zvSITy5", "currencyNamespace": "KWjknU9X", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1978-05-18T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1994-12-23T00:00:00Z", "discountedPrice": 62, "expireAt": "1999-09-12T00:00:00Z", "price": 85, "purchaseAt": "1997-09-27T00:00:00Z", "trialPrice": 100}, {"currencyCode": "R2a8rpqY", "currencyNamespace": "DgsEJkuO", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1985-02-11T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1990-05-25T00:00:00Z", "discountedPrice": 53, "expireAt": "1977-09-06T00:00:00Z", "price": 91, "purchaseAt": "1977-12-26T00:00:00Z", "trialPrice": 30}, {"currencyCode": "Odi6fQZ7", "currencyNamespace": "SruRYWIc", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1986-06-08T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1992-08-09T00:00:00Z", "discountedPrice": 23, "expireAt": "1988-05-13T00:00:00Z", "price": 49, "purchaseAt": "1977-10-12T00:00:00Z", "trialPrice": 25}], "P2FbW4s7": [{"currencyCode": "2ALBQGmr", "currencyNamespace": "AREYIH5y", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1978-10-26T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1980-11-12T00:00:00Z", "discountedPrice": 88, "expireAt": "1979-08-26T00:00:00Z", "price": 12, "purchaseAt": "1986-06-06T00:00:00Z", "trialPrice": 41}, {"currencyCode": "0CkSSXmy", "currencyNamespace": "0LuI8ttO", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1986-04-16T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1971-02-07T00:00:00Z", "discountedPrice": 98, "expireAt": "1982-05-13T00:00:00Z", "price": 94, "purchaseAt": "1990-04-19T00:00:00Z", "trialPrice": 48}, {"currencyCode": "cRttMFz4", "currencyNamespace": "FJBEziD1", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1981-11-06T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1977-05-19T00:00:00Z", "discountedPrice": 74, "expireAt": "1992-07-14T00:00:00Z", "price": 50, "purchaseAt": "1977-10-30T00:00:00Z", "trialPrice": 4}], "jx6DCa0v": [{"currencyCode": "TEsuVNuJ", "currencyNamespace": "DDFbQk8O", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1985-10-11T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1976-04-03T00:00:00Z", "discountedPrice": 25, "expireAt": "1992-05-19T00:00:00Z", "price": 57, "purchaseAt": "1993-04-12T00:00:00Z", "trialPrice": 4}, {"currencyCode": "cGT54nlO", "currencyNamespace": "V8PRedr9", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1999-01-02T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1984-05-20T00:00:00Z", "discountedPrice": 47, "expireAt": "1985-02-05T00:00:00Z", "price": 89, "purchaseAt": "1975-04-02T00:00:00Z", "trialPrice": 47}, {"currencyCode": "XofikrHN", "currencyNamespace": "KI3y4RYQ", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1998-09-21T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1984-04-28T00:00:00Z", "discountedPrice": 61, "expireAt": "1983-03-27T00:00:00Z", "price": 90, "purchaseAt": "1977-11-18T00:00:00Z", "trialPrice": 89}]}, "seasonType": "TIER", "sku": "2RNeIGnL", "stackable": false, "status": "INACTIVE", "tags": ["NyHbjG5Z", "qDNanNI9", "NX8R03tC"], "targetCurrencyCode": "QY6UTNKP", "targetNamespace": "Yfgrt84n", "thumbnailUrl": "aacfyGLj", "useCount": 2}' --login_with_auth "Bearer foo"
platform-delete-item 'yr4sY2BB' --login_with_auth "Bearer foo"
platform-acquire-item 'j6UdkgWX' --body '{"count": 56, "orderNo": "x9M2JXvS"}' --login_with_auth "Bearer foo"
platform-get-app 'D1mboxdr' --login_with_auth "Bearer foo"
platform-update-app '1bGG9qQG' 'XM63ipII' --body '{"carousel": [{"alt": "KRyWsgfr", "previewUrl": "9cCzJvAX", "thumbnailUrl": "VtimOxm9", "type": "video", "url": "Q2AVBl18", "videoSource": "vimeo"}, {"alt": "CxvrTjqv", "previewUrl": "V3ObIuIa", "thumbnailUrl": "cFP01MVM", "type": "video", "url": "nMN1Z4r4", "videoSource": "generic"}, {"alt": "9OXuMZKx", "previewUrl": "HQ0CEmPt", "thumbnailUrl": "FZXTS7Il", "type": "image", "url": "cYaJAZGj", "videoSource": "generic"}], "developer": "EbieguuZ", "forumUrl": "fcvp68bk", "genres": ["FreeToPlay", "MassivelyMultiplayer", "Simulation"], "localizations": {"6oRF28sY": {"announcement": "vdCPjp9u", "slogan": "AzYZrVhB"}, "lOWuj22H": {"announcement": "bHwGShJ4", "slogan": "zcmjBSL5"}, "1waJNKF0": {"announcement": "qBECfcTJ", "slogan": "2G9imPVH"}}, "platformRequirements": {"2qGCifN4": [{"additionals": "AUqexGWV", "directXVersion": "XI7EPaHa", "diskSpace": "Ss2VHNEO", "graphics": "fngbz7PK", "label": "y0ZzjV4V", "osVersion": "QjotikxZ", "processor": "feUpAqAB", "ram": "jFCq3mPt", "soundCard": "KOQbFwGn"}, {"additionals": "yykCOduV", "directXVersion": "ZaztKjLS", "diskSpace": "29xrY9f2", "graphics": "X3rblBmi", "label": "ec7jjFbw", "osVersion": "z9sRDmO3", "processor": "x7LwotI8", "ram": "AgJdaXgU", "soundCard": "ug0xdBnj"}, {"additionals": "e4gl1WcW", "directXVersion": "rfjHqWY0", "diskSpace": "SDigmwAs", "graphics": "5Oa1b9fu", "label": "o4n2LbKo", "osVersion": "jB1n5CCY", "processor": "kmZ0Yf5D", "ram": "RnaYL8SB", "soundCard": "5InZUbRd"}], "GjYa3c5r": [{"additionals": "P9Bp6NdO", "directXVersion": "tCwvKiHq", "diskSpace": "CLkhRuGs", "graphics": "79i9LMA7", "label": "0tcR3BFP", "osVersion": "O8zyesVz", "processor": "uqhyaiGH", "ram": "dz95NNGI", "soundCard": "pBUMZzO0"}, {"additionals": "NuInNQBF", "directXVersion": "8a4l48KK", "diskSpace": "uribTRCh", "graphics": "TDJ5mbVy", "label": "1SwkgKah", "osVersion": "vhsWGnrI", "processor": "WEAcToOj", "ram": "c1gEKXPR", "soundCard": "oAcyJ78P"}, {"additionals": "ghVOmuRU", "directXVersion": "OeesBJBn", "diskSpace": "NruBMNAp", "graphics": "UCwgBxTe", "label": "zApsHBRI", "osVersion": "j3LneiXA", "processor": "2V2mVgTD", "ram": "DVJsgPoI", "soundCard": "68d80gtB"}], "0uRk7gJt": [{"additionals": "M62KgCvL", "directXVersion": "CV6gncfk", "diskSpace": "ZakzyjNT", "graphics": "ghVmIDOq", "label": "LLHhhBkU", "osVersion": "4bfaJIoP", "processor": "jeLp6H6g", "ram": "RC9bikpO", "soundCard": "MG8umARz"}, {"additionals": "KsCa06Jd", "directXVersion": "c8DLNN2t", "diskSpace": "2GvIfAr6", "graphics": "VI9FYir9", "label": "yxZ2bEkL", "osVersion": "ue9fNwpt", "processor": "mxvvt3UR", "ram": "vQ9A53kI", "soundCard": "zaq1lq4N"}, {"additionals": "FUU4Wb1w", "directXVersion": "v9g1Foya", "diskSpace": "2ivtpoa1", "graphics": "lWwBoyOS", "label": "aMh7znyK", "osVersion": "l2tScdVs", "processor": "CVdwES6f", "ram": "S46Qdn5m", "soundCard": "VkSHhmHK"}]}, "platforms": ["MacOS", "Windows", "Windows"], "players": ["LocalCoop", "CrossPlatformMulti", "Coop"], "primaryGenre": "Action", "publisher": "Vrtw58HI", "releaseDate": "1973-07-22T00:00:00Z", "websiteUrl": "KJranzrx"}' --login_with_auth "Bearer foo"
platform-disable-item '6jBDxLso' '2nTNFoa1' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'cqahZTa8' --login_with_auth "Bearer foo"
platform-enable-item 'F7L6ibyV' 'Il5jqDe8' --login_with_auth "Bearer foo"
platform-feature-item 'IxCmgQWm' 'raTXmu8B' 'jzaiZ9Ru' --login_with_auth "Bearer foo"
platform-defeature-item 'NW6dN95G' '9yvAgNiA' 'qazrIENp' --login_with_auth "Bearer foo"
platform-get-locale-item 'dLgfN8QQ' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition '3qv6Vutr' 'e7erO5cS' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 51, "comparison": "excludes", "name": "EyV490RD", "predicateType": "SeasonTierPredicate", "value": "Wam10lnt", "values": ["VfUZem5q", "IB90mYtr", "hGRxqtz1"]}, {"anyOf": 51, "comparison": "is", "name": "vkBQixiT", "predicateType": "EntitlementPredicate", "value": "XsUammSc", "values": ["WynhZJcJ", "LyvJbUrJ", "2iJcqeci"]}, {"anyOf": 16, "comparison": "includes", "name": "klh1Qbjg", "predicateType": "SeasonTierPredicate", "value": "H90kaSeu", "values": ["rtUvPuqQ", "A9AqctPX", "5znLpPvn"]}]}, {"operator": "and", "predicates": [{"anyOf": 53, "comparison": "includes", "name": "Nb3stxzF", "predicateType": "SeasonPassPredicate", "value": "UySfURt4", "values": ["BenEeGmi", "80VGvw3I", "ji8egdti"]}, {"anyOf": 67, "comparison": "excludes", "name": "pW3l6gGD", "predicateType": "EntitlementPredicate", "value": "AWeu2lmg", "values": ["jC72YlYY", "rYqAxZOI", "hPvosUte"]}, {"anyOf": 96, "comparison": "isLessThanOrEqual", "name": "XWFA85N5", "predicateType": "SeasonTierPredicate", "value": "47yQFjly", "values": ["9V0eYZcx", "WlC334ho", "yPgQFGWC"]}]}, {"operator": "and", "predicates": [{"anyOf": 14, "comparison": "isNot", "name": "23bVCPre", "predicateType": "EntitlementPredicate", "value": "9Yer6o60", "values": ["zgOxcl7W", "o8Z1K0H6", "jhCVMAFO"]}, {"anyOf": 24, "comparison": "excludes", "name": "QrgDKSV1", "predicateType": "EntitlementPredicate", "value": "PfBt5HPg", "values": ["PJTMC7W3", "beJY3Qja", "8gXQfr6X"]}, {"anyOf": 5, "comparison": "isGreaterThanOrEqual", "name": "W61siDyA", "predicateType": "SeasonPassPredicate", "value": "D5wcc45x", "values": ["0x1HUoZN", "qrS21vfZ", "RIMR5fh6"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'a1lB97Ko' --body '{"orderNo": "1EPH2ogX"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "ldbYh2G4", "name": "jP0LqiZd", "status": "ACTIVE", "tags": ["q4fXaS6c", "kOKk9QyJ", "7XcOA4GD"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'QCrgFMfg' --login_with_auth "Bearer foo"
platform-update-key-group 'cvCrgYZO' --body '{"description": "c5WwtCey", "name": "6zZEAfb7", "status": "ACTIVE", "tags": ["CoNwqEYx", "ERWFrBjM", "p9bRzKnS"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'TB1uX2lh' --login_with_auth "Bearer foo"
platform-list-keys 'vB7Qlw2H' --login_with_auth "Bearer foo"
platform-upload-keys 'rJBxUOp3' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'r8zVAbrM' --login_with_auth "Bearer foo"
platform-refund-order 'nNmTDDLb' --body '{"description": "6pT6BvVh"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "SerziWD9", "privateKey": "rEpMewJt"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "5nigZYCE", "currencyNamespace": "LNSGG35F", "customParameters": {"uLQ42Ch3": {}, "H7KMEC1e": {}, "sBXGhmDw": {}}, "description": "9UyrHmpx", "extOrderNo": "SeXOGgJW", "extUserId": "JOCWk4Xl", "itemType": "CODE", "language": "gZrI_Kfcx", "metadata": {"bjw6Kt5M": "udGtOQMo", "jpyCMq0v": "9fD06f1k", "JP0UrcT9": "vDwNb4cS"}, "notifyUrl": "9bJk7Xe9", "omitNotification": false, "platform": "yKW25HPG", "price": 55, "recurringPaymentOrderNo": "ywreUTnG", "region": "ZbX1LyQK", "returnUrl": "EAvWsoHC", "sandbox": true, "sku": "gM9MMbkO", "subscriptionId": "AMEEXG4T", "targetNamespace": "jAJrFggM", "targetUserId": "7N1cr59F", "title": "jQa41yrg"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'LR4DqHhe' --login_with_auth "Bearer foo"
platform-get-payment-order 'tt5hC6EB' --login_with_auth "Bearer foo"
platform-charge-payment-order 'lRQVgf7Z' --body '{"extTxId": "1etiqYef", "paymentMethod": "2MlMrrXQ", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'whODoeYz' --body '{"description": "2zZrztJj"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'izZWgFfO' --body '{"amount": 15, "currencyCode": "zqFGrOfZ", "notifyType": "REFUND", "paymentProvider": "XSOLLA", "salesTax": 25, "vat": 62}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'ByeKhlTw' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Nintendo' --body '{"allowedBalanceOrigins": ["Nintendo", "System", "Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-payment-callback-config-1 --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "rWB6z45W", "eventTopic": "6qsYV9rU", "maxAwarded": 59, "maxAwardedPerUser": 13, "namespaceExpression": "rloqzW5S", "rewardCode": "QaqBSpxP", "rewardConditions": [{"condition": "aRlV7dS6", "conditionName": "8pt48eha", "eventName": "bJPDc2jg", "rewardItems": [{"duration": 51, "itemId": "7DRNa2EA", "quantity": 43}, {"duration": 99, "itemId": "ugXasK0B", "quantity": 27}, {"duration": 44, "itemId": "tYcvubym", "quantity": 60}]}, {"condition": "Acj8VYgW", "conditionName": "LMlADGbM", "eventName": "hdKxbiNB", "rewardItems": [{"duration": 38, "itemId": "DvveyLX7", "quantity": 51}, {"duration": 91, "itemId": "pyqKi2iE", "quantity": 65}, {"duration": 53, "itemId": "ntE7DDRL", "quantity": 14}]}, {"condition": "GvgUlG1Z", "conditionName": "U39S680v", "eventName": "g14iwtEI", "rewardItems": [{"duration": 68, "itemId": "aFYE1XE2", "quantity": 10}, {"duration": 36, "itemId": "dnxlf9TG", "quantity": 52}, {"duration": 42, "itemId": "q6Ua8BM7", "quantity": 74}]}], "userIdExpression": "90pMKVgc"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'pTsJuzeM' --login_with_auth "Bearer foo"
platform-update-reward '64wFq4Ft' --body '{"description": "1ndz5Yxv", "eventTopic": "LnHHmT5P", "maxAwarded": 43, "maxAwardedPerUser": 70, "namespaceExpression": "cByJ6zVV", "rewardCode": "ms1aXDii", "rewardConditions": [{"condition": "Yx0Ef7VL", "conditionName": "Bd22Plhs", "eventName": "nMVnAZuB", "rewardItems": [{"duration": 88, "itemId": "8Lc0CUN5", "quantity": 57}, {"duration": 9, "itemId": "AtFLyfCO", "quantity": 48}, {"duration": 1, "itemId": "ZjmnrIGt", "quantity": 47}]}, {"condition": "N0a1oJ00", "conditionName": "sERCW2cN", "eventName": "3Nqwbusp", "rewardItems": [{"duration": 32, "itemId": "my8DhSfH", "quantity": 33}, {"duration": 82, "itemId": "CQqCmZRp", "quantity": 65}, {"duration": 35, "itemId": "LLkuJR8a", "quantity": 54}]}, {"condition": "gph7iDaH", "conditionName": "2pNqwz16", "eventName": "7q2GdWZo", "rewardItems": [{"duration": 73, "itemId": "oFx5mH12", "quantity": 55}, {"duration": 48, "itemId": "nVFhxDGS", "quantity": 97}, {"duration": 83, "itemId": "0f8pXu1e", "quantity": 97}]}], "userIdExpression": "mFdh1bfW"}' --login_with_auth "Bearer foo"
platform-delete-reward 'xJw7mdPf' --login_with_auth "Bearer foo"
platform-check-event-condition 'uhj7UJbD' --body '{"payload": {"kQnw4aRu": {}, "LnaiRUEj": {}, "McCAh4ai": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'xIJ1lgmq' --body '{"conditionName": "u6N57EKt", "userId": "taQWFsIA"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'yulful53' --body '{"active": false, "displayOrder": 95, "endDate": "1983-08-09T00:00:00Z", "ext": {"jku2vr03": {}, "bfa77is5": {}, "93FBFGy0": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 66, "itemCount": 92, "rule": "SEQUENCE"}, "items": [{"id": "Kl3cTJ2s", "sku": "fupwv8YG"}, {"id": "eLuOZqfp", "sku": "Ycrht0p0"}, {"id": "SdzT6PbE", "sku": "OhSAylE2"}], "localizations": {"031rZRdP": {"description": "4jNJEicm", "localExt": {"gettWeSR": {}, "fmqc1Of8": {}, "7hQG6ikV": {}}, "longDescription": "zmFtLEJM", "title": "vJirVCkb"}, "mAb3G8PZ": {"description": "7fwp5O5N", "localExt": {"vQDMTGD3": {}, "q3NANcZo": {}, "64nU5cPD": {}}, "longDescription": "VOhuhuqD", "title": "qZ5GorPs"}, "Rg0Bml7K": {"description": "AzKVZ7A1", "localExt": {"gMmfrLjm": {}, "x07X3Nxr": {}, "7zFQrZHc": {}}, "longDescription": "XU6M8BLq", "title": "Sd17mLbL"}}, "name": "jn62ocoX", "rotationType": "CUSTOM", "startDate": "1976-03-27T00:00:00Z", "viewId": "larfmAsz"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'x24ZbJbB' --login_with_auth "Bearer foo"
platform-get-section '4LO2x7fq' --login_with_auth "Bearer foo"
platform-update-section 'm0vzLo4r' 'f7VfpGBZ' --body '{"active": true, "displayOrder": 76, "endDate": "1983-03-21T00:00:00Z", "ext": {"H9xfzRtd": {}, "aK9WsY09": {}, "6npJtijR": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 70, "itemCount": 12, "rule": "SEQUENCE"}, "items": [{"id": "WKtNfIPG", "sku": "4eAYJT2f"}, {"id": "JPPrARi4", "sku": "GRQQmPGM"}, {"id": "XrdDdcFi", "sku": "sgMMnim9"}], "localizations": {"DiYcFgDz": {"description": "Ap5nOdYL", "localExt": {"RXtoHhJ5": {}, "wssjbIHN": {}, "7EKjuTG3": {}}, "longDescription": "B8bwzyAr", "title": "pp117GaY"}, "R0GQhF23": {"description": "jZzh16E6", "localExt": {"nG30eG4W": {}, "O9OQmjw9": {}, "7gdnxeq9": {}}, "longDescription": "0NprPzm5", "title": "g5SLr4Ey"}, "oeeMsrf3": {"description": "7qfVNILc", "localExt": {"htiWnNS4": {}, "20PDrLYk": {}, "tZzJpvsN": {}}, "longDescription": "3vZ6Cpy7", "title": "hgGUWV4H"}}, "name": "2xJFr6nX", "rotationType": "CUSTOM", "startDate": "1977-07-08T00:00:00Z", "viewId": "7Al2pT9k"}' --login_with_auth "Bearer foo"
platform-delete-section 'XQEwQXAp' 'zXVU2Dip' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "mLOKIlNU", "defaultRegion": "JcJmyc1g", "description": "S1NTlvmi", "supportedLanguages": ["d9bzsvMN", "dG5yVGu1", "UFheNNvy"], "supportedRegions": ["ynFcOujh", "UXxlru4X", "fHC4GpON"], "title": "ZUnSIglb"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'xuSaARdw' --login_with_auth "Bearer foo"
platform-update-store 'WBXrxSoJ' --body '{"defaultLanguage": "BEDbEv9r", "defaultRegion": "4rHc7dB4", "description": "DL1V3zcv", "supportedLanguages": ["fidcdymP", "ZhIUerDP", "VyKpAFUa"], "supportedRegions": ["mAUF97RV", "soUgB0AO", "Tnol7abU"], "title": "WhSUwhCY"}' --login_with_auth "Bearer foo"
platform-delete-store 'ayXlu9pe' --login_with_auth "Bearer foo"
platform-query-changes 'WwmCN8l7' --login_with_auth "Bearer foo"
platform-publish-all 'cMSdZMHt' --login_with_auth "Bearer foo"
platform-publish-selected 'X77O2PWe' --login_with_auth "Bearer foo"
platform-select-all-records 'FudBLpRu' --login_with_auth "Bearer foo"
platform-get-statistic '8bBKFclK' --login_with_auth "Bearer foo"
platform-unselect-all-records 'KLkZ8ZLj' --login_with_auth "Bearer foo"
platform-select-record 'ZwznojTF' 'qGUpX34s' --login_with_auth "Bearer foo"
platform-unselect-record 'xL8h98lU' 'VJJSmVV3' --login_with_auth "Bearer foo"
platform-clone-store 'hrT8ZVlu' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'aGARosLW' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'vEEZAi1h' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'Jl2Ydsem' --body '{"orderNo": "wg6QDH61"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'nVRjxam2' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'GF78FIjl' --body '{"count": 58, "orderNo": "zB8ZYwVu"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'C4RZdwEi' --body '{"achievements": [{"id": "NcQAOuwA", "value": 81}, {"id": "jApoaCoE", "value": 78}, {"id": "NxrNcJcS", "value": 81}], "steamUserId": "EdRG3wg0"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'Lxs5zsii' 't5dRaMEc' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '9w9Uzl0c' --body '{"achievements": [{"id": "AO0aUKmQ", "percentComplete": 21}, {"id": "E0AIUx2A", "percentComplete": 28}, {"id": "nWxpKboc", "percentComplete": 35}], "serviceConfigId": "xDh1e5R4", "titleId": "r612WVnM", "xboxUserId": "ieSCiKJA"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign '35oXdGbs' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'qfEjyyac' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'SXRdZTDN' --login_with_auth "Bearer foo"
platform-anonymize-integration 'szdGJKtF' --login_with_auth "Bearer foo"
platform-anonymize-order 'tklDVHV1' --login_with_auth "Bearer foo"
platform-anonymize-payment 'Xpy0ioZx' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'gsJiNXap' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'spLuEd7e' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'BnEqJefb' --login_with_auth "Bearer foo"
platform-get-user-dlc 'ahqI20E0' 'EPICGAMES' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'l32ODvnG' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '7N6VbEm7' --body '[{"endDate": "1991-02-01T00:00:00Z", "grantedCode": "ILNnqmTx", "itemId": "mJigW96Y", "itemNamespace": "CQ2rwN3f", "language": "erU_BxfX", "quantity": 68, "region": "eJ8k7H3w", "source": "IAP", "startDate": "1977-10-23T00:00:00Z", "storeId": "jvEKd6WL"}, {"endDate": "1992-02-21T00:00:00Z", "grantedCode": "3zNVzWWy", "itemId": "dfI2FbPb", "itemNamespace": "z4ePgFft", "language": "zHEe-pXLy", "quantity": 39, "region": "hYkGfKSo", "source": "IAP", "startDate": "1980-01-14T00:00:00Z", "storeId": "T7EIOGrL"}, {"endDate": "1996-07-02T00:00:00Z", "grantedCode": "KnAJWI93", "itemId": "l1eYQvYS", "itemNamespace": "Uv0rzlHU", "language": "hfGc_XG", "quantity": 23, "region": "xwqJWeRZ", "source": "PURCHASE", "startDate": "1984-09-08T00:00:00Z", "storeId": "fqCKHRQN"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'LzSKR3tn' 'VTzCqKCf' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'm4IlAdEY' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'i5DVysQu' '0KyDDHuS' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'SqqJ3JXc' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'EtGBY6Oj' 'BKtVyNgK' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'YfsuqXJS' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'vgFXE13r' '["STkkC47e", "hUdKx2rF", "CFR1y1Ws"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'UlJifNLa' 'SY18QdR6' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '7hxKiw8s' 'nue1cQfA' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'xWpvkewK' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'W2eisvhO' '8Cq68Uoe' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'h9EyWWBj' 'UxLPTeuB' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'Ou5NzAA0' 'IaoC1a0l' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'jZ6yHVDm' 'VY1XUtXU' --body '{"endDate": "1980-07-15T00:00:00Z", "nullFieldList": ["WZHHhfks", "wDdJcSAJ", "LNlkn0Tr"], "startDate": "1999-02-04T00:00:00Z", "status": "CONSUMED", "useCount": 63}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'H5fDMVbV' 'tNowdHtZ' --body '{"options": ["9vcfgooA", "qqE86e7w", "3HGATWYK"], "requestId": "2jhGteu3", "useCount": 47}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'w2q1vWWX' '5qTOgAKl' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'FST7nq0h' 'tEREyZ4W' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'RZ8R0x4Q' 'Jk2gjst3' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'RoBIQeLV' 'UqfH2rg8' --login_with_auth "Bearer foo"
platform-fulfill-item '84M83FTo' --body '{"duration": 0, "endDate": "1975-05-09T00:00:00Z", "itemId": "dOOQQj3a", "itemSku": "ySU59Tu1", "language": "JAP9WBKP", "order": {"currency": {"currencyCode": "TAimmIq1", "currencySymbol": "DwXF4ANb", "currencyType": "VIRTUAL", "decimals": 28, "namespace": "LcyAh3Oh"}, "ext": {"Py6ZVa2s": {}, "cENlBauU": {}, "yrS2ENsP": {}}, "free": true}, "orderNo": "8uCOXzIq", "origin": "Other", "quantity": 64, "region": "5y93gzuw", "source": "ACHIEVEMENT", "startDate": "1999-08-18T00:00:00Z", "storeId": "1Lcx3l3H"}' --login_with_auth "Bearer foo"
platform-redeem-code 'RdOUpTCZ' --body '{"code": "wZCOJneP", "language": "qeFx-MGbs-JE", "region": "VDaUi1mq"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'soVCthOU' --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "6WK2N7D9", "namespace": "jyRH1Xdw"}, "item": {"itemId": "03BAZJZ7", "itemSku": "OiKhA8hN", "itemType": "poiPSCG3"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "PptxjanF", "namespace": "zyIudSOs"}, "item": {"itemId": "VWIcuIHC", "itemSku": "qrpIeoy6", "itemType": "Jfhv9s6f"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "vrDzz0or", "namespace": "3277878A"}, "item": {"itemId": "4P0QvGjj", "itemSku": "bzwtuaSg", "itemType": "rAYM61BI"}, "quantity": 100, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'IrjT9DHr' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'gLRVDm4P' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'Y7uAjWzh' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'm6uERCyX' --body '{"itemIdentityType": "ITEM_SKU", "language": "pBA_lTkT", "productId": "LZnzZLfG", "region": "6SXlhu7P", "type": "XBOX"}' --login_with_auth "Bearer foo"
platform-query-user-orders '3gPIGNE8' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'y1DAc6bm' --body '{"currencyCode": "k81M5B72", "currencyNamespace": "o1aljr2s", "discountedPrice": 6, "ext": {"6apWN2aw": {}, "7zydeBIN": {}, "AMVZj6yA": {}}, "itemId": "QxoZUeac", "language": "rFDMdJe5", "options": {"skipPriceValidation": false}, "platform": "Epic", "price": 56, "quantity": 38, "region": "TJFaVB48", "returnUrl": "JZK5bMnI", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item '6DiCdjvB' 'HRye5XRd' --login_with_auth "Bearer foo"
platform-get-user-order 'ppKzc1vx' '9AClPUlC' --login_with_auth "Bearer foo"
platform-update-user-order-status '381clAMp' 'g9S9ej6x' --body '{"status": "CLOSED", "statusReason": "Xwub8SjJ"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order '9UaylgBd' '2yAy4S14' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'oiZloSoY' '8i0PmFJ8' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'YjqfKqfU' '6UP5w2L4' --login_with_auth "Bearer foo"
platform-process-user-order-notification '8KY3kstS' '3v0Lvvqr' --body '{"additionalData": {"cardSummary": "kxql7Oct"}, "authorisedTime": "1997-11-06T00:00:00Z", "chargebackReversedTime": "1994-04-01T00:00:00Z", "chargebackTime": "1990-09-12T00:00:00Z", "chargedTime": "1979-10-03T00:00:00Z", "createdTime": "1982-11-05T00:00:00Z", "currency": {"currencyCode": "7gnL0QFV", "currencySymbol": "h1bauJOb", "currencyType": "VIRTUAL", "decimals": 32, "namespace": "Vo4DTnsK"}, "customParameters": {"Oa4WoLrC": {}, "cxpuANaV": {}, "pYXBIHbA": {}}, "extOrderNo": "HqED1hNW", "extTxId": "ZkQH9Gp8", "extUserId": "AZRiqLun", "issuedAt": "1986-10-02T00:00:00Z", "metadata": {"LfcqzBaV": "8280yA9T", "UPu9xBAF": "QlM9k5Bz", "3KuDUCfe": "FNXaEesB"}, "namespace": "qsQKiYsL", "nonceStr": "xr7YwRPi", "paymentMethod": "wxMwVSjo", "paymentMethodFee": 66, "paymentOrderNo": "zDhy23Dw", "paymentProvider": "STRIPE", "paymentProviderFee": 12, "paymentStationUrl": "SHl5K9zF", "price": 42, "refundedTime": "1986-01-23T00:00:00Z", "salesTax": 36, "sandbox": true, "sku": "K81DCgN0", "status": "CHARGEBACK", "statusReason": "0SGaPW7R", "subscriptionId": "vLIorgAG", "subtotalPrice": 96, "targetNamespace": "RzCEDcn3", "targetUserId": "ad5qW41e", "tax": 21, "totalPrice": 22, "totalTax": 64, "txEndTime": "1973-12-28T00:00:00Z", "type": "8cewTIiN", "userId": "hIvxFwVg", "vat": 3}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'mrFyixQ6' 'kfUEOKdi' --login_with_auth "Bearer foo"
platform-create-user-payment-order '2q5nGWCM' --body '{"currencyCode": "9QpXr7t7", "currencyNamespace": "BI1grAbB", "customParameters": {"UXYlmDeg": {}, "pWywAmhD": {}, "HsW522QO": {}}, "description": "RZQuE1D2", "extOrderNo": "9MLBayaD", "extUserId": "6FLiPhfZ", "itemType": "LOOTBOX", "language": "xZa", "metadata": {"L47TUmN1": "MHpEjzLD", "Taavg6Cx": "CEbxXsGy", "8wDXL6O9": "1eiJbKNR"}, "notifyUrl": "VdPMaSkv", "omitNotification": true, "platform": "3hH05c5L", "price": 89, "recurringPaymentOrderNo": "hZgnNnN6", "region": "DvnMrqUt", "returnUrl": "Lzd6Yrza", "sandbox": false, "sku": "waNlQprB", "subscriptionId": "qeeYPL1M", "title": "6e170Uod"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'O3gQhBZZ' 'EazinAjA' --body '{"description": "cVtIBW3y"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'Rmr5pfdR' --body '{"code": "qefekNgj", "orderNo": "OhrVJL2k"}' --login_with_auth "Bearer foo"
platform-do-revocation '6INrDGN2' --body '{"meta": {"xLkuRQ3o": {}, "BmlbVxkC": {}, "OVsTzmLh": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Xbox", "currencyCode": "ofx2TZiV", "namespace": "4W33JjwU"}, "entitlement": {"clazz": "OPTIONBOX", "entitlementId": "3H6To83T", "type": "DURABLE"}, "item": {"itemIdentity": "F6lF7EfU", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 13, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "mFUOPy98", "namespace": "Ofai7TGX"}, "entitlement": {"clazz": "APP", "entitlementId": "jJTacQgg", "type": "CONSUMABLE"}, "item": {"itemIdentity": "1ZAmGDEJ", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "oOkDgQbi", "namespace": "5aqadyYD"}, "entitlement": {"clazz": "OPTIONBOX", "entitlementId": "PqMd24mq", "type": "CONSUMABLE"}, "item": {"itemIdentity": "KyHLiwBW", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 84, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "hRSNgmXq"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'hyPhhaZp' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'IyRqGKgh' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'Xe7An6su' --body '{"grantDays": 87, "itemId": "ir9Z2y5i", "language": "C5t9NPto", "reason": "KMdyBDdg", "region": "JSXHPOSN", "source": "Xe6Ay8da"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'wXx93qQF' 'wIWpMUdi' --login_with_auth "Bearer foo"
platform-get-user-subscription '4G4pdxkv' 'C0kZKVyU' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'nLZEsLsm' '369VxZPl' --login_with_auth "Bearer foo"
platform-cancel-subscription 'Jd8gKMWW' 'teWcyqHW' --body '{"immediate": true, "reason": "mjbt8PUm"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'kRqGOjiK' 'sg2vMzzG' --body '{"grantDays": 71, "reason": "510zzafL"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'OwFWSLLE' 'iDrbaEr8' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'KuCw48hh' 'rHdGdebP' --body '{"additionalData": {"cardSummary": "6LMTFp3u"}, "authorisedTime": "1998-01-16T00:00:00Z", "chargebackReversedTime": "1977-05-08T00:00:00Z", "chargebackTime": "1990-04-18T00:00:00Z", "chargedTime": "1981-07-12T00:00:00Z", "createdTime": "1975-06-24T00:00:00Z", "currency": {"currencyCode": "2lEpt843", "currencySymbol": "kgZoitLK", "currencyType": "VIRTUAL", "decimals": 42, "namespace": "R3Rmh1Tj"}, "customParameters": {"iATyYsK3": {}, "20g18d88": {}, "6IxKXkHK": {}}, "extOrderNo": "m6nOZiOd", "extTxId": "uEefiO3e", "extUserId": "HOYkCjff", "issuedAt": "1992-10-26T00:00:00Z", "metadata": {"DNQmJfST": "8jc5vZda", "USCNppHo": "M857MHw2", "D4Ccx2yx": "rq7tzvXQ"}, "namespace": "u9x1cKol", "nonceStr": "6oSWkAVk", "paymentMethod": "F1gaM6d0", "paymentMethodFee": 9, "paymentOrderNo": "2P5slNGV", "paymentProvider": "XSOLLA", "paymentProviderFee": 78, "paymentStationUrl": "EXfW4U4l", "price": 35, "refundedTime": "1993-06-10T00:00:00Z", "salesTax": 60, "sandbox": true, "sku": "8aZ6Cdg6", "status": "INIT", "statusReason": "9x5GcMAy", "subscriptionId": "W19tPNgt", "subtotalPrice": 54, "targetNamespace": "GLJ5dziD", "targetUserId": "6zK3Sskf", "tax": 77, "totalPrice": 45, "totalTax": 92, "txEndTime": "1988-10-30T00:00:00Z", "type": "vtKLoqyH", "userId": "t8X6hn3o", "vat": 70}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'L4DVZr2R' '3JhMqnxA' --body '{"count": 40, "orderNo": "9NhMb0tZ"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'oJGgDShd' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'bayRw9h0' 'Sqz7xYQH' --body '{"allowOverdraft": true, "amount": 84, "balanceOrigin": "Nintendo", "reason": "dzvMptAW"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'cqfQEqHS' 'EzfWUsKl' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'EGjEL4pI' '4AoxewiU' --body '{"amount": 91, "expireAt": "1982-04-26T00:00:00Z", "origin": "Other", "reason": "mQbtv1VF", "source": "PROMOTION"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'GSofxmyK' 'ra14bcJ6' --body '{"amount": 69, "walletPlatform": "Other"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '6VnqcmYZ' --body '{"displayOrder": 36, "localizations": {"cBAgD8lv": {"description": "O1nn5OWO", "localExt": {"TfEKYcz3": {}, "PYhMYmzV": {}, "WLj0LcVR": {}}, "longDescription": "MeC6za1Z", "title": "F3xulCOE"}, "H8UWinBM": {"description": "YXCVmKUL", "localExt": {"8aHaswt3": {}, "3r3EZlD1": {}, "nD38PZmB": {}}, "longDescription": "ZyYwIRSH", "title": "gtagREZA"}, "lIfbDmk0": {"description": "3MGcRXrk", "localExt": {"Uezt9BOh": {}, "03p4QKvu": {}, "ik04KBVr": {}}, "longDescription": "PrWNd4Ma", "title": "JEYI468w"}}, "name": "SwSfxNVZ"}' --login_with_auth "Bearer foo"
platform-get-view 'JVQkL4ho' --login_with_auth "Bearer foo"
platform-update-view 'N45l1ko4' 'eZ78rkcz' --body '{"displayOrder": 34, "localizations": {"z3aPw5XU": {"description": "AT5phBYe", "localExt": {"3ahQ1sz5": {}, "0z6XJzAg": {}, "9YWveIUP": {}}, "longDescription": "AGNie5LG", "title": "Bw4GwMQ5"}, "cNFKYQ8H": {"description": "xu7WoYeu", "localExt": {"8GoF9Yge": {}, "KTbsJ1Ml": {}, "GGwhLaN6": {}}, "longDescription": "G2KTIaow", "title": "1rMkbWk7"}, "7FWIZKzO": {"description": "4i21HeLQ", "localExt": {"AgmSKnfd": {}, "DMSG6Wx1": {}, "qaqsA163": {}}, "longDescription": "nc9f05Rs", "title": "X3kqeNjB"}}, "name": "ZhGDWWgM"}' --login_with_auth "Bearer foo"
platform-delete-view 'KYs3fIaM' 'Z2xxy4x7' --login_with_auth "Bearer foo"
platform-sync-orders 'B3yeACmp' 'j0j6jhbp' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["syS2VlwM", "Il55kRT7", "G4wIr9CZ"], "apiKey": "CgrKwbwp", "authoriseAsCapture": false, "blockedPaymentMethods": ["qZvugDGk", "bfS4mN3R", "mftrVlDv"], "clientKey": "HsLvhpTR", "dropInSettings": "Ongog54r", "liveEndpointUrlPrefix": "Tp6FTz3Z", "merchantAccount": "JQef4Gp4", "notificationHmacKey": "YwT2Gapf", "notificationPassword": "JcanIzZP", "notificationUsername": "r80jBc7j", "returnUrl": "f3xz8O6T", "settings": "PBEsfsxd"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "dS4AEr5Y", "privateKey": "TlR9w7d3", "publicKey": "zGmGZPlz", "returnUrl": "DpSzY8k2"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "CgtxugtO", "secretKey": "7ZISzuCr"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "RxVx8lfk", "clientSecret": "piUvfOty", "returnUrl": "In8P9OA1", "webHookId": "PmY6G4iD"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["4UlHAbFk", "ZTAr6hrU", "OTnf80CQ"], "publishableKey": "BpSG6UPg", "secretKey": "c06UGKry", "webhookSecret": "S5t4yGmI"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "8okoBj56", "key": "rFA8993p", "mchid": "mKchgARM", "returnUrl": "Jq4K8dVA"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "k0Ovx998", "flowCompletionUrl": "yNopyCj4", "merchantId": 79, "projectId": 0, "projectSecretKey": "Qupu7QbU"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '10IGqfyH' --login_with_auth "Bearer foo"
platform-update-adyen-config 'teF9Giy8' --body '{"allowedPaymentMethods": ["S6J0X6R9", "vUTlCcMR", "7D4ESVjF"], "apiKey": "tFrhMtPW", "authoriseAsCapture": false, "blockedPaymentMethods": ["xtJewPhm", "Q3qJsFIc", "BYQgRbxv"], "clientKey": "6CGTTSsj", "dropInSettings": "XR0z056M", "liveEndpointUrlPrefix": "XPi3sK99", "merchantAccount": "4erjrUdE", "notificationHmacKey": "c2fxFhIt", "notificationPassword": "QsRuN5NM", "notificationUsername": "zffD4jnv", "returnUrl": "w1SI4ceg", "settings": "J7U7RmFC"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '51F3EUfT' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'j7417ET9' --body '{"appId": "8q5EC6P9", "privateKey": "XcMWMHdf", "publicKey": "MfoAl4DI", "returnUrl": "wpBNLTj8"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'QMvuxmT9' --login_with_auth "Bearer foo"
platform-update-checkout-config 'dxYtJkJ5' --body '{"publicKey": "QIs3RZDS", "secretKey": "HRnR8HY2"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'PqlAszOS' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'MmSabmSB' --body '{"clientID": "ZZcDBWgN", "clientSecret": "bOGWhKUD", "returnUrl": "Fh8WmhCr", "webHookId": "abvRLGwB"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id '6Eao57wh' --login_with_auth "Bearer foo"
platform-update-stripe-config 'syBC50yS' --body '{"allowedPaymentMethodTypes": ["5VJYRzi9", "zgt8GTRZ", "qcTmDo2Z"], "publishableKey": "jugTiAJo", "secretKey": "JHb045iR", "webhookSecret": "WwYkzXRI"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'R9tEQblO' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'aV37cREG' --body '{"appId": "gBbwR906", "key": "ZQ2pd7Z8", "mchid": "9X3fk38E", "returnUrl": "ZGJ9Wq0c"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'K4bLUA3o' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'oFXvdpXI' --login_with_auth "Bearer foo"
platform-update-xsolla-config '9aD1cEX3' --body '{"apiKey": "umThUZ6t", "flowCompletionUrl": "zyPhmUzU", "merchantId": 56, "projectId": 28, "projectSecretKey": "mRTWy6sz"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'lhR2o2hL' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '5PKVeu9f' --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "O9bmbxXo", "region": "fJKVMFDm", "sandboxTaxJarApiToken": "KqVcMR76", "specials": ["PAYPAL", "XSOLLA", "XSOLLA"], "taxJarApiToken": "6GVlII0z", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'ALx21o4L' --body '{"aggregate": "ADYEN", "namespace": "iLHv2blr", "region": "GNfaHIMp", "sandboxTaxJarApiToken": "Aqmy8m9K", "specials": ["ADYEN", "ALIPAY", "WXPAY"], "taxJarApiToken": "QgQNcUl8", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'NAlyWCFb' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "0cxRUdCl", "taxJarApiToken": "NOMfuwRN", "taxJarEnabled": true, "taxJarProductCodesMapping": {"QstT77Wb": "IokRa5Wk", "bgIpaFsE": "N6F5bPns", "y0cZgGQd": "XI75EMAz"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'C06fIe1C' 'jzJgCoTd' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'rXdGdNQj' --login_with_auth "Bearer foo"
platform-public-get-child-categories '97DWJSt3' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'FWGfsFHy' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id '94ZyPX7H' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'H1TbNjEM' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'iCZpakhp' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["QgRP6t2W", "u582XIXH", "qXSOOW9J"]}' --login_with_auth "Bearer foo"
platform-public-search-items '2rzLxpcB' 'mBZNBWvR' --login_with_auth "Bearer foo"
platform-public-get-app 'PrsMbrTD' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'UpO8sth1' --login_with_auth "Bearer foo"
platform-public-get-item 'yEPwPYqE' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "bzHsF5LQ", "paymentProvider": "PAYPAL", "returnUrl": "GOiSbz2c", "ui": "Scdv1avC", "zipCode": "OYV8nEBi"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'KQ9VJAbf' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'hME7Ndf0' --login_with_auth "Bearer foo"
platform-pay '5jKxatPO' --body '{"token": "sMh9skoo"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'T8OLOybU' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'XSOLLA' '16Kcmufe' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'XDhitMlk' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '284Jj3y7' 'RwjL8Z4u' 'CHECKOUT' '6eO6Ehvq' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'WtloAR8H' 'STRIPE' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'E28eNzzH' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '3l6FIzGd' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'oWCuWpjQ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'vzMS1Dim' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'ZM57lfxf' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'qafBw8Il' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'ZPRRJrH3' --body '{"epicGamesJwtToken": "SWqgqlDC"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'hbQ5M1Lt' --body '{"serviceLabel": 39}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'HIye6N6d' --body '{"serviceLabels": [51, 99, 87]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'eMP16qbe' --body '{"appId": "XuJwmhzf", "steamId": "CM7eWmHG"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'ghSLx8Ik' --body '{"xstsToken": "0dSfvUtK"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'rpQbQqCK' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'PClAlC77' 'YEf2cjWh' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'bHuurMfS' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Pwl24OTV' '5eIUqTEP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'G0NAiyQO' 'qfkIzrZR' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'SginGUIn' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '48qolcrB' 'dKyIshm3' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'rh4yfAWf' 'pulCOAaD' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'fdwSxQ2B' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'ArRcFkJz' 'A1pEKo1j' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '1XMd7Chz' 'kgdoWubF' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '9AayTbUk' 'v17sgOA3' --body '{"options": ["GzoUxCkf", "YdCXDYr9", "ZKQj190o"], "requestId": "YgSVPUcp", "useCount": 79}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'nUKFndaW' --body '{"code": "UNLBOkMy", "language": "Jub", "region": "0NEEOuzC"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '5ttZ0T8O' --body '{"excludeOldTransactions": false, "language": "EPTw-nknh_AX", "productId": "NkJtRS4k", "receiptData": "osphw8lR", "region": "ZO31NL1Q", "transactionId": "AJqME8gH"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'SLOTGZ4J' --body '{"epicGamesJwtToken": "bjRADPH1"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'Ny9CUC2D' --body '{"autoAck": false, "language": "LMDh-HgrC", "orderId": "9et0ECIH", "packageName": "6gMBIB9l", "productId": "oZAXWznE", "purchaseTime": 20, "purchaseToken": "zFaJgllk", "region": "PvZA6kmo"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Z3Rm667H' --body '{"currencyCode": "2d77QK89", "price": 0.4485159139061533, "productId": "Yn1XCSCy", "serviceLabel": 18}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'QYFiTYRC' --body '{"currencyCode": "UHCQxyp1", "price": 0.23991437813909056, "productId": "o0B39DkZ", "serviceLabels": [41, 37, 22]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'lQznEbmK' --body '{"appId": "w3aFCHX2", "currencyCode": "G4JjuVSI", "language": "zh_YIpb-de", "price": 0.40748656210538003, "productId": "I71ItWpV", "region": "cTVlLIFe", "steamId": "FSJ1oTMW"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'foAZo8GC' --body '{"gameId": "tVxwls8R", "language": "Hf-700", "region": "Bk0AfyR6"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'tgfYDqXw' --body '{"currencyCode": "1E5hoLGS", "price": 0.6990848910318067, "productId": "DVxgW7eB", "xstsToken": "CXC3Xt0A"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'd6POU94z' --login_with_auth "Bearer foo"
platform-public-create-user-order 'koeCYyhV' --body '{"currencyCode": "nvBAiLbN", "discountedPrice": 88, "ext": {"AnftYo1H": {}, "qj5jGu1J": {}, "ZFTVSAAu": {}}, "itemId": "FHD3IGcH", "language": "IPJ", "price": 55, "quantity": 82, "region": "HncNfABF", "returnUrl": "0m9WDCQe"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'mCRjNOr8' 'TiCS9kzw' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'QZv3mxoR' 'XPiirCUQ' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'uR52bBMB' 'U22s5S4m' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '2SytTJy5' 'VKycHyed' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'hn3Dp2GU' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'E62uEN9o' 'card' 'QBqXkCqv' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'xQXikCdq' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '4TdJh5uh' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'iSK9Fzl1' --body '{"currencyCode": "QhTvGhqh", "itemId": "p6Sqmlkf", "language": "ti_wvVp", "region": "or9XsQ8K", "returnUrl": "YzIdrPiH", "source": "NPZh9YS5"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'U6l9fpIU' 'q550O9oa' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'gGjDDbqm' 'tLjIppwS' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'bx1Rboyh' 'yQgQus6C' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'R9glhc6p' 'cRosGBNM' --body '{"immediate": true, "reason": "bU6bwzWI"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'lrAmfyxa' '1MQQEL31' --login_with_auth "Bearer foo"
platform-public-list-views 'hyKFMApK' --login_with_auth "Bearer foo"
platform-public-get-wallet 'NV1ku2YG' 'C5TRCx2w' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions '7Q9r2otY' '1geRQIwO' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'fCiDCaeS' --body '{"itemIds": ["9KPz0ynp", "LpJ8iyfR", "qRUs0WMr"]}' --login_with_auth "Bearer foo"
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
    --body '{"context": {"item": {"appId": "qzWr5N66", "appType": "DLC", "baseAppId": "HKeXkpSv", "boothName": "Na52E8pR", "boundItemIds": ["65Z1Iwo7", "z4r3wXzj", "6TZZYxWz"], "categoryPath": "ouyenJxp", "clazz": "yY1l0kKM", "createdAt": "1997-10-03T00:00:00Z", "description": "ccjoXIUQ", "displayOrder": 99, "entitlementType": "CONSUMABLE", "ext": {"4l3AAerf": {}, "fY02kgsu": {}, "fJ9gr5U1": {}}, "features": ["8iMGy3xn", "qIkHMChx", "u6dcxiKM"], "fresh": false, "images": [{"as": "3HEsyP0G", "caption": "QdlWttrb", "height": 100, "imageUrl": "TAFd1kvg", "smallImageUrl": "LhsI5nzW", "width": 9}, {"as": "ch8IrHZX", "caption": "pLHSObpp", "height": 70, "imageUrl": "iYQ2ZdNl", "smallImageUrl": "zLpenViS", "width": 28}, {"as": "2FGA4K00", "caption": "X43XeDBs", "height": 47, "imageUrl": "bE4rarxU", "smallImageUrl": "WZQyms15", "width": 82}], "itemId": "gaNHOG6Q", "itemIds": ["BdKxalm8", "p6CHBiBz", "1uwXc9yr"], "itemQty": {"bOLSuJar": 72, "E0YweMJh": 47, "37s2jEnE": 12}, "itemType": "EXTENSION", "language": "hcyt169P", "listable": false, "localExt": {"HhlduTL4": {}, "A0h0I88f": {}, "r1Cd8FX1": {}}, "longDescription": "MqzniK7l", "lootBoxConfig": {"rewardCount": 83, "rewards": [{"lootBoxItems": [{"count": 30, "itemId": "uXQE0UQU", "itemSku": "FrYRRWvS", "itemType": "9KceNbXz"}, {"count": 31, "itemId": "vjjqrcTh", "itemSku": "NNnBc1X3", "itemType": "U8T0rGpH"}, {"count": 5, "itemId": "fUoFtJN9", "itemSku": "woVZCCsn", "itemType": "hs3fsq28"}], "name": "ZONo7lRx", "odds": 0.9756076859850183, "type": "REWARD_GROUP", "weight": 37}, {"lootBoxItems": [{"count": 72, "itemId": "TMW7BPAS", "itemSku": "RMuuLRRU", "itemType": "LENrLtAq"}, {"count": 91, "itemId": "YfeS4eEg", "itemSku": "u9sV5m3Y", "itemType": "Jrk1ntYF"}, {"count": 52, "itemId": "Vwb1aLJJ", "itemSku": "FrcQ27Gm", "itemType": "FppIrjaH"}], "name": "WrAU7LYL", "odds": 0.27892729308203223, "type": "REWARD_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 98, "itemId": "l46D5nPr", "itemSku": "3CzHDUOz", "itemType": "J5Kcmh1v"}, {"count": 37, "itemId": "dyhd6ZXo", "itemSku": "esey9jju", "itemType": "HUdEeHce"}, {"count": 54, "itemId": "oyKElWMu", "itemSku": "xSBwAJb6", "itemType": "cBWnHREy"}], "name": "uDAAm6dA", "odds": 0.7436221623521735, "type": "REWARD_GROUP", "weight": 12}], "rollFunction": "CUSTOM"}, "maxCount": 14, "maxCountPerUser": 45, "name": "n1SHVWvN", "namespace": "FyIGRjWa", "optionBoxConfig": {"boxItems": [{"count": 1, "itemId": "HmkavQW9", "itemSku": "Mfeoc22l", "itemType": "dWK1Sd2Q"}, {"count": 27, "itemId": "0wdLvgyc", "itemSku": "4FXRRwkG", "itemType": "LVQMbJsC"}, {"count": 41, "itemId": "kqrRzgD9", "itemSku": "QiGRtrBp", "itemType": "z7lxt9qg"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 57, "comparison": "isLessThan", "name": "zKV0EMKF", "predicateType": "EntitlementPredicate", "value": "TIz1FYVJ", "values": ["VfAELpSG", "PK7H5vZU", "WsEg5CEV"]}, {"anyOf": 46, "comparison": "excludes", "name": "jDiusc1X", "predicateType": "SeasonTierPredicate", "value": "Q2cKQ5SN", "values": ["KLSpkNkT", "bRaCbhRr", "qV7QRA54"]}, {"anyOf": 44, "comparison": "includes", "name": "acnGXXnc", "predicateType": "SeasonTierPredicate", "value": "zEgfsLcL", "values": ["3HpJKTBE", "kPFqbAxq", "lQwAUsE2"]}]}, {"operator": "or", "predicates": [{"anyOf": 43, "comparison": "excludes", "name": "RjHzn916", "predicateType": "SeasonTierPredicate", "value": "MCozJ90r", "values": ["Y0IS6Zlo", "ZhcuXp1H", "xeFZHO1y"]}, {"anyOf": 6, "comparison": "includes", "name": "FDUkVFP8", "predicateType": "SeasonTierPredicate", "value": "F20lN40o", "values": ["WPSzsfhz", "PFPibV0D", "lkVIWh86"]}, {"anyOf": 98, "comparison": "includes", "name": "sG31eE9s", "predicateType": "EntitlementPredicate", "value": "4OksGnJP", "values": ["CSeDXzXr", "1L2NYnoo", "6kOhPiCo"]}]}, {"operator": "and", "predicates": [{"anyOf": 99, "comparison": "isGreaterThan", "name": "3cuwCXMk", "predicateType": "SeasonPassPredicate", "value": "kZlKWgOj", "values": ["UxlA5PkW", "WHKzqSVS", "vc56NcOJ"]}, {"anyOf": 100, "comparison": "isNot", "name": "0iv64Z2O", "predicateType": "SeasonPassPredicate", "value": "GkoJNyrJ", "values": ["fpP7Pgr9", "fdGUMyPj", "1cBgqwgZ"]}, {"anyOf": 87, "comparison": "isNot", "name": "i1PtREwd", "predicateType": "SeasonPassPredicate", "value": "9yPdKNEp", "values": ["w8F2FSSi", "b9KiVLRi", "DX2yEVtI"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 82, "fixedTrialCycles": 95, "graceDays": 99}, "region": "AKlLpks1", "regionData": [{"currencyCode": "t3ZrPldH", "currencyNamespace": "zKMGzLLt", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1971-03-29T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1972-07-30T00:00:00Z", "discountedPrice": 6, "expireAt": "1987-05-24T00:00:00Z", "price": 50, "purchaseAt": "1999-05-02T00:00:00Z", "trialPrice": 2}, {"currencyCode": "4mM1eZhs", "currencyNamespace": "0UNDqcOT", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1987-01-11T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1997-02-16T00:00:00Z", "discountedPrice": 49, "expireAt": "1993-12-12T00:00:00Z", "price": 82, "purchaseAt": "1991-08-01T00:00:00Z", "trialPrice": 79}, {"currencyCode": "iHcyVwax", "currencyNamespace": "E8AaRtL5", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1974-08-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1996-01-09T00:00:00Z", "discountedPrice": 68, "expireAt": "1998-01-07T00:00:00Z", "price": 53, "purchaseAt": "1989-04-29T00:00:00Z", "trialPrice": 23}], "seasonType": "TIER", "sku": "uqtCbHOB", "stackable": true, "status": "INACTIVE", "tags": ["7OUnAcU6", "atOAXnMG", "1KvC4Fbn"], "targetCurrencyCode": "CE4zSzPT", "targetItemId": "x5TeUdCk", "targetNamespace": "gkFceUh6", "thumbnailUrl": "h3Q4Z17e", "title": "PKmKgqGK", "updatedAt": "1999-03-08T00:00:00Z", "useCount": 30}, "namespace": "2pQTux5d", "order": {"currency": {"currencyCode": "HiC5IgZR", "currencySymbol": "REyj5tgM", "currencyType": "REAL", "decimals": 48, "namespace": "KZzfd6rM"}, "ext": {"DzpybtON": {}, "NXuIVxIy": {}, "p5IqRBEr": {}}, "free": false}, "source": "DLC"}, "script": "W4tqUCiL", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'kmjjXlha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'z4xSilKb' \
    --body '{"grantDays": "B7VEPQKT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'mJNkzyQR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'f1MxqJUf' \
    --body '{"grantDays": "M4nqn4ZS"}' \
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
    --body '{"clazz": "287OULxF", "dryRun": false, "fulfillmentUrl": "inYRNsVZ", "itemType": "EXTENSION", "purchaseConditionUrl": "aMOrqLbp"}' \
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
    'VHD5pr0t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'k65r87EB' \
    --body '{"clazz": "BsGOB1ns", "dryRun": true, "fulfillmentUrl": "p2loQPfN", "purchaseConditionUrl": "bDrp9UzV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'KhOTmLZt' \
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
    --body '{"description": "u7rmQaQ5", "items": [{"extraSubscriptionDays": 87, "itemId": "dKUvCAHP", "itemName": "CSJp607O", "quantity": 53}, {"extraSubscriptionDays": 95, "itemId": "H2CwzojD", "itemName": "tM59iISn", "quantity": 64}, {"extraSubscriptionDays": 50, "itemId": "bztHvZeO", "itemName": "vsjaCntl", "quantity": 39}], "maxRedeemCountPerCampaignPerUser": 69, "maxRedeemCountPerCode": 75, "maxRedeemCountPerCodePerUser": 61, "maxSaleCount": 9, "name": "kTmZ1YjP", "redeemEnd": "1972-04-23T00:00:00Z", "redeemStart": "1981-11-12T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["c40KGt7l", "qTpGyeoE", "BQOy8tGO"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'dH8CH5qY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'dRtj1asy' \
    --body '{"description": "UPxsOhpO", "items": [{"extraSubscriptionDays": 63, "itemId": "AMTBxCbW", "itemName": "2RJjzIMD", "quantity": 35}, {"extraSubscriptionDays": 11, "itemId": "62oMFP8c", "itemName": "s9MsIpsG", "quantity": 53}, {"extraSubscriptionDays": 1, "itemId": "KAq6HJjJ", "itemName": "SM3GHXO8", "quantity": 52}], "maxRedeemCountPerCampaignPerUser": 76, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 9, "maxSaleCount": 14, "name": "VJzO0xnY", "redeemEnd": "1984-05-14T00:00:00Z", "redeemStart": "1992-01-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["RkmnrraO", "WwQPdLka", "wyQS3iO2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'ola5C4cI' \
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
    'MSccp51y' \
    --body '{"categoryPath": "jhVUXSfA", "localizationDisplayNames": {"7USSMkiF": "8rjPCt4O", "5JgXTGAr": "sH84EQLB", "TmmHbZEE": "3Su4vQWT"}}' \
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
    'cCPB1yxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'IZ8JqZcN' \
    'UL2ae6pz' \
    --body '{"localizationDisplayNames": {"RllFTypx": "IdVVnGyq", "EJeqVBPy": "I7wEI1fN", "4cH5lPST": "jV98QlIp"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '1jP54GLs' \
    'wyHCEUkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'gXTv1poW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'UJLXeZyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'yCkk8aYr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'bdeIM0yD' \
    --body '{"quantity": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'kjniP7vD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'HfzHWYwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'OVwaiwjR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'A2BoEQU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'ToxsEqy9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'mtOg7eFT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'JJ0bedwA' \
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
    --body '{"grpcServerAddress": "6g8d4JNF"}' \
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
    --body '{"currencyCode": "RdVk7tyy", "currencySymbol": "33DKHzCa", "currencyType": "VIRTUAL", "decimals": 73, "localizationDescriptions": {"TjRGBuyh": "YeVU1rTX", "yd83wHoj": "JnJ4cQ4E", "AooIw16o": "Jz2A7IoF"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'SFELDSTz' \
    --body '{"localizationDescriptions": {"BARlU6xx": "KlbTVkvp", "szfJZdGN": "vrjC2ywu", "zNbHWrWp": "yexayGi1"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'Ad6Ge4Ks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'jKoZVivm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'sgaIhVXS' \
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
    --body '{"data": [{"id": "KHKY2VRi", "rewards": [{"currency": {"currencyCode": "62lA5iId", "namespace": "peW4dEMT"}, "item": {"itemId": "2sdki9RO", "itemSku": "HDyi72XX", "itemType": "TmNNHO61"}, "quantity": 57, "type": "CURRENCY"}, {"currency": {"currencyCode": "0r0jsA3f", "namespace": "cwXasatv"}, "item": {"itemId": "VWRcVJNe", "itemSku": "UtxbOZoX", "itemType": "0IaQsEyf"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "gwpp7ztB", "namespace": "qxjcABDZ"}, "item": {"itemId": "JnCcDBGo", "itemSku": "DOATorhJ", "itemType": "55qHwgfK"}, "quantity": 13, "type": "CURRENCY"}]}, {"id": "ahifgcdJ", "rewards": [{"currency": {"currencyCode": "9VPp9YdS", "namespace": "9LmvDXeQ"}, "item": {"itemId": "riCJBSPo", "itemSku": "2apnwyKb", "itemType": "GxtBEPwP"}, "quantity": 96, "type": "ITEM"}, {"currency": {"currencyCode": "mtsGxF7z", "namespace": "P7HP4gXl"}, "item": {"itemId": "H4Wsn1RP", "itemSku": "mqViLEim", "itemType": "DxGeyLpq"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "sryS3eiZ", "namespace": "4w1X7l1j"}, "item": {"itemId": "tqNlUhWy", "itemSku": "hHjXMuez", "itemType": "lxTmULLi"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "YRkkl7Mc", "rewards": [{"currency": {"currencyCode": "l5u3xgG5", "namespace": "caMUAGVV"}, "item": {"itemId": "kQwxBUNB", "itemSku": "myNiQfds", "itemType": "xYTxrloK"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "FSmoxxr5", "namespace": "uP4eVYip"}, "item": {"itemId": "6zcojDna", "itemSku": "jG7ZnCWB", "itemType": "6x2Xkz04"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "Qkuiczt1", "namespace": "wtudi3fa"}, "item": {"itemId": "EjdDfnKc", "itemSku": "rP55gOI7", "itemType": "3Kh2O6Me"}, "quantity": 88, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"3SAETfpd": "aMUwweU9", "wP3yjxw3": "daYdhnGb", "y39GuQZm": "S5ZB3dsZ"}}, {"platform": "STEAM", "platformDlcIdMap": {"g1bvJSh7": "arrvVZU3", "2X44fk1D": "oJArcDCU", "Pls0Xbmn": "kr48TiPe"}}, {"platform": "STEAM", "platformDlcIdMap": {"dYeTRPpB": "W8qBSZyD", "gpDbZ5FM": "VMAoFYbV", "kbJ6I2ol": "VyQH817d"}}]}' \
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
    'QU3FmVaU' \
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
    --body '{"bundleId": "1WxbicdS", "password": "CVO5NvNT"}' \
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
    --body '{"sandboxId": "7KJyc6X0"}' \
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
    --body '{"applicationName": "OAuRY4h5", "serviceAccountId": "ibVKsO5P"}' \
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
    --body '{"data": [{"itemIdentity": "gss2ZFd5", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nacGvDyY": "xhYnzfNX", "8qY04Vnm": "wI1U0ChA", "fjuuy67N": "sQnlvONb"}}, {"itemIdentity": "VR6uyotk", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"GaH5KgGn": "U2qKHw9o", "plLrcDNP": "fQJl6kji", "uXjdLcc6": "2bnXJGLh"}}, {"itemIdentity": "M2MKgG6i", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"YLjLtBP8": "i3IGkxof", "jX89ibEA": "doXQ50G2", "PfDz48pE": "HoPXRyaz"}}]}' \
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
    --body '{"environment": "24G7HppC"}' \
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
    --body '{"appId": "ghZHhe2u", "publisherAuthenticationKey": "2bpnBgKh"}' \
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
    --body '{"clientId": "9s503sgJ", "clientSecret": "snjbYRIe", "organizationId": "Kw5QZpbW"}' \
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
    --body '{"relyingPartyCert": "9LV4y6AO"}' \
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
    'biqUjLF8' \
    '49wYYnJf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'I7RokSzP' \
    'u3ILaNW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'DYSfyJrR' \
    --body '{"categoryPath": "buXBxlY5", "targetItemId": "ZGYUigTP", "targetNamespace": "HXc4eMR2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'YFY5dJSh' \
    --body '{"appId": "WYRoM3FS", "appType": "DLC", "baseAppId": "KK0Gd0Fr", "boothName": "92QFictQ", "categoryPath": "jbRPagTk", "clazz": "IGFQrhiE", "displayOrder": 12, "entitlementType": "CONSUMABLE", "ext": {"Yt1P6DzH": {}, "bfkbJXZw": {}, "GY6gpULp": {}}, "features": ["NYaZXpcm", "Dlmb2v2j", "ng93L3OV"], "images": [{"as": "D7rx41rO", "caption": "O6vycL52", "height": 87, "imageUrl": "OEafnI9F", "smallImageUrl": "VN6BkYiW", "width": 30}, {"as": "2NUsngNc", "caption": "tTfW4v3Z", "height": 77, "imageUrl": "RAKxfqLp", "smallImageUrl": "qaNPFNpi", "width": 27}, {"as": "Ja2Gw1hI", "caption": "U11fOvlf", "height": 55, "imageUrl": "4GQQy7AL", "smallImageUrl": "UrxLMZC7", "width": 85}], "itemIds": ["ocVJ3IP1", "sW6282oM", "rjv1wLfy"], "itemQty": {"mS8cEeKS": 48, "UwW1wa07": 100, "byYfjpF2": 75}, "itemType": "EXTENSION", "listable": false, "localizations": {"20skD52g": {"description": "cdosf6vP", "localExt": {"ELaH29wb": {}, "0wyEzZvu": {}, "5eF5AiUG": {}}, "longDescription": "akRhcVIk", "title": "o7wtXh4D"}, "6cqjQr7A": {"description": "J0YMtNQJ", "localExt": {"coPnnwqA": {}, "kxpoFx09": {}, "14i6Mx2A": {}}, "longDescription": "6GwEQMmZ", "title": "0R0B9M9Z"}, "be3ccDlC": {"description": "tRJtX35y", "localExt": {"wSJqEQFX": {}, "q5mO3Rry": {}, "JtbboVuv": {}}, "longDescription": "VhwxVLKh", "title": "KxNrn2wz"}}, "lootBoxConfig": {"rewardCount": 76, "rewards": [{"lootBoxItems": [{"count": 38, "itemId": "A5Ezk6ya", "itemSku": "Pff6SOs9", "itemType": "kuHGdXfx"}, {"count": 27, "itemId": "rUvtw8B0", "itemSku": "Sbu2MZNA", "itemType": "gjEOp3gu"}, {"count": 98, "itemId": "bn1Iklhr", "itemSku": "dNXVw0Rm", "itemType": "BiVvq3jw"}], "name": "bm6FKsFr", "odds": 0.9077694687787632, "type": "REWARD_GROUP", "weight": 24}, {"lootBoxItems": [{"count": 89, "itemId": "wawxbA5h", "itemSku": "FI9waptU", "itemType": "I4teBZne"}, {"count": 45, "itemId": "qflxJv5h", "itemSku": "llS1xICY", "itemType": "pnuhcFGO"}, {"count": 65, "itemId": "H2cAOM4v", "itemSku": "zEIPeQaY", "itemType": "LRKlVbKC"}], "name": "0gouDdvL", "odds": 0.9665077862342423, "type": "REWARD", "weight": 8}, {"lootBoxItems": [{"count": 88, "itemId": "9PdtpPdT", "itemSku": "3QGdvulQ", "itemType": "agDkRGhU"}, {"count": 65, "itemId": "d0xwaLF1", "itemSku": "7Rbig6od", "itemType": "Z9SYZe9a"}, {"count": 3, "itemId": "Hsl5h7oD", "itemSku": "8P4oCli5", "itemType": "gldliEaR"}], "name": "BsE0P74l", "odds": 0.2645777830875784, "type": "REWARD", "weight": 19}], "rollFunction": "CUSTOM"}, "maxCount": 82, "maxCountPerUser": 61, "name": "fihHfdQP", "optionBoxConfig": {"boxItems": [{"count": 77, "itemId": "kjtSQpzJ", "itemSku": "91TRB0hr", "itemType": "gkaQzgsF"}, {"count": 71, "itemId": "OdMrAiJo", "itemSku": "qc0mSKE2", "itemType": "5TAZ7RFa"}, {"count": 63, "itemId": "SpcieNZm", "itemSku": "3VtDRSFP", "itemType": "ab50q13G"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 2, "fixedTrialCycles": 70, "graceDays": 9}, "regionData": {"hHHgLTsK": [{"currencyCode": "6yIAaMLg", "currencyNamespace": "IW0YimfC", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1987-06-11T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1983-07-30T00:00:00Z", "discountedPrice": 50, "expireAt": "1981-05-22T00:00:00Z", "price": 71, "purchaseAt": "1972-08-20T00:00:00Z", "trialPrice": 11}, {"currencyCode": "TDl1UIUW", "currencyNamespace": "3qupXUb5", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1999-11-21T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1977-08-03T00:00:00Z", "discountedPrice": 90, "expireAt": "1993-05-22T00:00:00Z", "price": 30, "purchaseAt": "1978-06-06T00:00:00Z", "trialPrice": 57}, {"currencyCode": "e3oMqnRc", "currencyNamespace": "5enNIeif", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1975-02-17T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1997-12-28T00:00:00Z", "discountedPrice": 42, "expireAt": "1976-05-03T00:00:00Z", "price": 21, "purchaseAt": "1988-12-07T00:00:00Z", "trialPrice": 56}], "l5r8MZJ6": [{"currencyCode": "kPsBZ2kI", "currencyNamespace": "lLj75jHI", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1974-12-27T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-11-26T00:00:00Z", "discountedPrice": 86, "expireAt": "1992-03-27T00:00:00Z", "price": 60, "purchaseAt": "1979-04-14T00:00:00Z", "trialPrice": 30}, {"currencyCode": "2URpXzQD", "currencyNamespace": "V2nS055b", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1994-07-28T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1989-03-28T00:00:00Z", "discountedPrice": 57, "expireAt": "1971-08-24T00:00:00Z", "price": 96, "purchaseAt": "1977-01-12T00:00:00Z", "trialPrice": 69}, {"currencyCode": "23yLmDQX", "currencyNamespace": "YPyyLFo8", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1990-03-07T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1974-03-30T00:00:00Z", "discountedPrice": 32, "expireAt": "1995-04-15T00:00:00Z", "price": 76, "purchaseAt": "1978-06-06T00:00:00Z", "trialPrice": 43}], "yc5NUmAL": [{"currencyCode": "6b4FPmyA", "currencyNamespace": "UxiCVKxu", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1997-12-13T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1996-04-29T00:00:00Z", "discountedPrice": 33, "expireAt": "1991-08-06T00:00:00Z", "price": 80, "purchaseAt": "1989-01-27T00:00:00Z", "trialPrice": 81}, {"currencyCode": "Pzwvf4wL", "currencyNamespace": "weNlQlHn", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1976-08-11T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1977-09-25T00:00:00Z", "discountedPrice": 86, "expireAt": "1993-08-10T00:00:00Z", "price": 77, "purchaseAt": "1973-06-14T00:00:00Z", "trialPrice": 0}, {"currencyCode": "Gy0vlJb5", "currencyNamespace": "Pfv7s0IM", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1984-08-09T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1998-07-31T00:00:00Z", "discountedPrice": 82, "expireAt": "1975-11-26T00:00:00Z", "price": 72, "purchaseAt": "1998-11-19T00:00:00Z", "trialPrice": 57}]}, "seasonType": "PASS", "sku": "fwTF61Wa", "stackable": false, "status": "ACTIVE", "tags": ["zM9iwKg4", "tTUeo9GJ", "HS7HnssG"], "targetCurrencyCode": "l0betwlH", "targetNamespace": "KvNZG8ic", "thumbnailUrl": "N6bytJKG", "useCount": 1}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'V9mlpFBF' \
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
    'pgc5n4dk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'aymsennz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'anBLGEjB' \
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
    '3NrvJjkW' \
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
    'Mo2ycbPa' \
    --body '{"itemIds": ["vKVKxnjP", "6bGen8Ev", "YUXUwhl4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'sOfdgteM' \
    'H4TATDfQ' \
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
    'SVK9O7Ca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'HhxbvRAw' \
    'SRT1u4du' \
    --body '{"appId": "dUR2h2h1", "appType": "DLC", "baseAppId": "4PXBCO0t", "boothName": "XtMkM49p", "categoryPath": "ihLSckVv", "clazz": "dYlErDab", "displayOrder": 57, "entitlementType": "CONSUMABLE", "ext": {"u26OP5r2": {}, "yGGkslqP": {}, "WM0Lry3A": {}}, "features": ["o8atMeJN", "Z850J0GI", "szGiaB1L"], "images": [{"as": "LMrIpdqa", "caption": "GM6liquG", "height": 28, "imageUrl": "WvmoaOy7", "smallImageUrl": "Kev00s1R", "width": 6}, {"as": "SCNy6DO8", "caption": "Z5Zkm8Wq", "height": 1, "imageUrl": "TqJrO8zn", "smallImageUrl": "Puqgzg5q", "width": 95}, {"as": "lp6sSfRd", "caption": "ymKeO8Ql", "height": 17, "imageUrl": "uA53JzFE", "smallImageUrl": "9ZgOYozp", "width": 7}], "itemIds": ["4Hk8QGdi", "wjxZ4mM8", "hHELNkWe"], "itemQty": {"FfddWjF1": 59, "JX42z8wU": 50, "4ZzNPujP": 98}, "itemType": "COINS", "listable": false, "localizations": {"kMATj1Fp": {"description": "TvkxUGqK", "localExt": {"rTyXBilt": {}, "HFDXB7me": {}, "kscFsGfP": {}}, "longDescription": "0yBXo7Gt", "title": "Fa5aREE6"}, "joHxjUDz": {"description": "0tofJXAp", "localExt": {"6mvCvwld": {}, "14240Twr": {}, "nUeToqos": {}}, "longDescription": "MT4FIceU", "title": "rbrQFzjA"}, "hcA9VRYA": {"description": "b8XsVkEb", "localExt": {"87WaM5QN": {}, "CoAU1gtL": {}, "4WAr2bhj": {}}, "longDescription": "7UosxOGO", "title": "FyomDy7L"}}, "lootBoxConfig": {"rewardCount": 93, "rewards": [{"lootBoxItems": [{"count": 95, "itemId": "VMfMYP9W", "itemSku": "50125jdG", "itemType": "rFOTN1GE"}, {"count": 54, "itemId": "fmfsPsMM", "itemSku": "JBSKdoxI", "itemType": "5mVaREcI"}, {"count": 63, "itemId": "R4S1p38O", "itemSku": "tiQDrUBo", "itemType": "ghw2jSgx"}], "name": "NFwlOHuN", "odds": 0.18335816449621045, "type": "PROBABILITY_GROUP", "weight": 36}, {"lootBoxItems": [{"count": 94, "itemId": "Z4LNRtCx", "itemSku": "HFtF8LCO", "itemType": "Fj3llbCs"}, {"count": 55, "itemId": "iEUl6LrA", "itemSku": "96jW5vM1", "itemType": "fTECGcWz"}, {"count": 52, "itemId": "SkbHcrwF", "itemSku": "2LTVA0rU", "itemType": "aH3qMJac"}], "name": "btyjQYrY", "odds": 0.8977583187310149, "type": "PROBABILITY_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 1, "itemId": "Ncnz01mg", "itemSku": "WR8cB5TB", "itemType": "P0muL7Lp"}, {"count": 74, "itemId": "QsS8GSoP", "itemSku": "V7y4RD0u", "itemType": "tzfOHuZJ"}, {"count": 55, "itemId": "ECVO0xdO", "itemSku": "eO8SxFFS", "itemType": "z77XXRW7"}], "name": "4v96x4hi", "odds": 0.5879926196010338, "type": "REWARD", "weight": 63}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 49, "name": "oxMDmn44", "optionBoxConfig": {"boxItems": [{"count": 51, "itemId": "HYtSErxm", "itemSku": "tG1KcYW0", "itemType": "GTAhzJBB"}, {"count": 24, "itemId": "gk12golX", "itemSku": "cOFwF1SS", "itemType": "sozeQhwU"}, {"count": 34, "itemId": "Gsz4EtnT", "itemSku": "g46yW7nJ", "itemType": "9uSgI2zN"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 95, "fixedTrialCycles": 62, "graceDays": 77}, "regionData": {"etcwzo57": [{"currencyCode": "jOoy0ZUP", "currencyNamespace": "WlfyoVB2", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1990-03-23T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1997-09-10T00:00:00Z", "discountedPrice": 1, "expireAt": "1971-05-25T00:00:00Z", "price": 40, "purchaseAt": "1994-01-12T00:00:00Z", "trialPrice": 82}, {"currencyCode": "hIZKY9pl", "currencyNamespace": "1WYP7h0b", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1974-03-02T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1981-10-10T00:00:00Z", "discountedPrice": 90, "expireAt": "1990-03-31T00:00:00Z", "price": 16, "purchaseAt": "1998-04-27T00:00:00Z", "trialPrice": 19}, {"currencyCode": "MAiocB6P", "currencyNamespace": "v1sxlBad", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1983-12-30T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1979-05-17T00:00:00Z", "discountedPrice": 26, "expireAt": "1998-06-02T00:00:00Z", "price": 78, "purchaseAt": "1988-03-26T00:00:00Z", "trialPrice": 48}], "I19tAULH": [{"currencyCode": "gInaE7xC", "currencyNamespace": "IvEwyS7R", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1987-05-19T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1971-02-20T00:00:00Z", "discountedPrice": 44, "expireAt": "1992-02-21T00:00:00Z", "price": 9, "purchaseAt": "1986-11-12T00:00:00Z", "trialPrice": 8}, {"currencyCode": "Iv0i11KB", "currencyNamespace": "DnsD2QvT", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1971-11-29T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1993-06-16T00:00:00Z", "discountedPrice": 82, "expireAt": "1982-09-17T00:00:00Z", "price": 53, "purchaseAt": "1991-03-19T00:00:00Z", "trialPrice": 51}, {"currencyCode": "jNIlcK04", "currencyNamespace": "gXHtVtIl", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1996-12-11T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1999-02-18T00:00:00Z", "discountedPrice": 42, "expireAt": "1989-03-26T00:00:00Z", "price": 9, "purchaseAt": "1999-03-12T00:00:00Z", "trialPrice": 28}], "nWDXfYH1": [{"currencyCode": "AnJFJCUC", "currencyNamespace": "X08u4AI3", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1973-04-20T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1977-10-01T00:00:00Z", "discountedPrice": 66, "expireAt": "1971-11-10T00:00:00Z", "price": 66, "purchaseAt": "1973-09-17T00:00:00Z", "trialPrice": 86}, {"currencyCode": "qoeEEqcy", "currencyNamespace": "I7BygN9C", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1985-08-29T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1990-09-22T00:00:00Z", "discountedPrice": 13, "expireAt": "1981-05-27T00:00:00Z", "price": 12, "purchaseAt": "1992-02-13T00:00:00Z", "trialPrice": 74}, {"currencyCode": "EeUjPbPB", "currencyNamespace": "gIg3fK2c", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1991-10-26T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-06-13T00:00:00Z", "discountedPrice": 79, "expireAt": "1972-07-09T00:00:00Z", "price": 30, "purchaseAt": "1989-06-27T00:00:00Z", "trialPrice": 92}]}, "seasonType": "PASS", "sku": "Udwvr70W", "stackable": false, "status": "ACTIVE", "tags": ["c6tmhVwe", "eAuhUwNm", "UDgYTc2E"], "targetCurrencyCode": "p7bNRoiU", "targetNamespace": "GUiNuKZb", "thumbnailUrl": "xvwFEWsh", "useCount": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'BotsMuS5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'wZuOhm4p' \
    --body '{"count": 97, "orderNo": "hjrCexOP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'y5Uc5We8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'kCXP1NFg' \
    'dPln96Gl' \
    --body '{"carousel": [{"alt": "N81l6s7n", "previewUrl": "W4cPihRM", "thumbnailUrl": "JsO0jfe2", "type": "image", "url": "hK20HD7k", "videoSource": "youtube"}, {"alt": "HFrhtiZ4", "previewUrl": "DqJfEsL4", "thumbnailUrl": "gZWoQ0XY", "type": "video", "url": "lLdRycbq", "videoSource": "generic"}, {"alt": "j24bzLP2", "previewUrl": "jnNguIQP", "thumbnailUrl": "SvvnoqB5", "type": "video", "url": "l1xPwddo", "videoSource": "youtube"}], "developer": "w0OulvqG", "forumUrl": "W5vhAVOo", "genres": ["Racing", "Indie", "Indie"], "localizations": {"e2XSlL1D": {"announcement": "64EP8YGW", "slogan": "T3s8i9XT"}, "rj7LmSDG": {"announcement": "8wTOv3VJ", "slogan": "IaSEnK1A"}, "QuUANExV": {"announcement": "WJ3AusL2", "slogan": "Gd1tulLQ"}}, "platformRequirements": {"PNIK8YXi": [{"additionals": "lov0j7N7", "directXVersion": "yCCPGeKs", "diskSpace": "QsD7NOQm", "graphics": "HD7nXYqa", "label": "WSaed9qB", "osVersion": "ZB8q0ZdQ", "processor": "T1onSrNk", "ram": "t2cQCfhg", "soundCard": "TQGIs985"}, {"additionals": "pJ01JbTr", "directXVersion": "pEMYZWb9", "diskSpace": "lPraLqLt", "graphics": "UllpL7kS", "label": "CMzCCFKL", "osVersion": "QwqUCN2c", "processor": "T8XjeGXu", "ram": "E57zaylm", "soundCard": "jJiwMFrM"}, {"additionals": "6fHHx7af", "directXVersion": "yEsTBn9V", "diskSpace": "OSXTEltT", "graphics": "4hT2D9Ir", "label": "1oUIc965", "osVersion": "o9mEY8eg", "processor": "WmvcHsGd", "ram": "dpQMBDLV", "soundCard": "wYHll99O"}], "uztB1Z29": [{"additionals": "hObVfecH", "directXVersion": "lWq6yo9o", "diskSpace": "R2Ds5kCb", "graphics": "pl0Zz6mi", "label": "wOhlPKjl", "osVersion": "ApeqPBlB", "processor": "c8g53Ewm", "ram": "j7svDuOu", "soundCard": "gQ8BWhTM"}, {"additionals": "uyJPFSSr", "directXVersion": "ivPnfpps", "diskSpace": "StlOJs7g", "graphics": "8A920POX", "label": "nrsq6U8Z", "osVersion": "cZzPtYcn", "processor": "AwYR1K7x", "ram": "D4c5oVfq", "soundCard": "nWX0CcPx"}, {"additionals": "1qMkWvhU", "directXVersion": "LItiUQ0G", "diskSpace": "sGkVSwZP", "graphics": "c7pliEeJ", "label": "Vdas8FNF", "osVersion": "h2vrStaM", "processor": "BKIazIcO", "ram": "AqYtfdqt", "soundCard": "CdLVL9Ob"}], "4l4wx4sW": [{"additionals": "cXzkMK4C", "directXVersion": "JccSiR6b", "diskSpace": "pFWvb0vg", "graphics": "Ubzvavaw", "label": "cNuGjheb", "osVersion": "NC5A4sCC", "processor": "AEtyLCaY", "ram": "xQw9H1v5", "soundCard": "PBv3a07P"}, {"additionals": "fuWxKufi", "directXVersion": "7qtK7vFu", "diskSpace": "sB0okzCK", "graphics": "nciD7roX", "label": "gpN8oNWx", "osVersion": "YDo3CGY1", "processor": "3ObtyxD8", "ram": "cyJ43z4u", "soundCard": "LFS1fWmh"}, {"additionals": "tZdRmvxO", "directXVersion": "bBFguhIO", "diskSpace": "9n6wI2jS", "graphics": "6OCqtIgZ", "label": "8ngwWzM6", "osVersion": "aELsJGYJ", "processor": "V2RueOUx", "ram": "mKCr9TAb", "soundCard": "ArYTBjxy"}]}, "platforms": ["Linux", "Windows", "Linux"], "players": ["Multi", "LocalCoop", "Multi"], "primaryGenre": "Sports", "publisher": "J4kL76Qf", "releaseDate": "1994-03-25T00:00:00Z", "websiteUrl": "fSUTVE1c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '2P9RmrBq' \
    '71eHA2hy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'amDNu9cQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '8ZcDgnSS' \
    'XfvJRVd8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'jmQKAY3D' \
    'Q0yl0wZF' \
    '8JuyfeHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'bkVWnmsl' \
    'QAj59uDl' \
    'p4XD6LYr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'cloGkhye' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '2LUGoIRG' \
    'Rbf4BAaP' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 13, "comparison": "isLessThan", "name": "7jfVjxZf", "predicateType": "SeasonTierPredicate", "value": "42sFYJ4i", "values": ["XEi7HI9F", "UAj385Gr", "1WYm32JS"]}, {"anyOf": 42, "comparison": "isLessThan", "name": "7q5r5OPT", "predicateType": "EntitlementPredicate", "value": "nB16kMRM", "values": ["WR0bcHFt", "inFcExl0", "pmnbW66w"]}, {"anyOf": 39, "comparison": "includes", "name": "t0XdIiox", "predicateType": "SeasonPassPredicate", "value": "eKdHzpER", "values": ["jQv0DpjH", "RuisG4uH", "nvKHJClO"]}]}, {"operator": "and", "predicates": [{"anyOf": 85, "comparison": "isLessThanOrEqual", "name": "lvkzDHUZ", "predicateType": "EntitlementPredicate", "value": "aYGmrX7M", "values": ["uvBzOIHr", "4Ci1CiKz", "2w6X2A2p"]}, {"anyOf": 9, "comparison": "isLessThan", "name": "pPtawvyv", "predicateType": "EntitlementPredicate", "value": "w9qUuqNu", "values": ["DiRaPxhJ", "w0pkypWv", "g6P2E3St"]}, {"anyOf": 49, "comparison": "is", "name": "x54HIMIV", "predicateType": "SeasonPassPredicate", "value": "IPoQvupL", "values": ["2oBUHKeq", "9302rb4f", "KZ4CMhku"]}]}, {"operator": "or", "predicates": [{"anyOf": 47, "comparison": "isLessThan", "name": "njw7wsEQ", "predicateType": "EntitlementPredicate", "value": "0TUZ08Cm", "values": ["aXGt3lGq", "IeMViecq", "WdR5ID9J"]}, {"anyOf": 87, "comparison": "isLessThan", "name": "QW5y2OSX", "predicateType": "SeasonPassPredicate", "value": "qVXHtVVt", "values": ["mDD3yv38", "xumWpjy5", "0WaZ0Kxx"]}, {"anyOf": 82, "comparison": "excludes", "name": "rrk0WVng", "predicateType": "EntitlementPredicate", "value": "o6Vgb25A", "values": ["yFcydg6I", "9nVjcR8C", "wltj9YGx"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'QIWp0GpH' \
    --body '{"orderNo": "5gKVkfQk"}' \
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
    --body '{"description": "7oH3gwf2", "name": "RNFs5Frg", "status": "ACTIVE", "tags": ["VAb2cXAO", "iHpGpEnv", "iBgXjQ09"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    '1EOECMuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '4rDLfxhx' \
    --body '{"description": "aTSfV7in", "name": "lSNKuI6O", "status": "ACTIVE", "tags": ["Ug5q17yN", "DaKciEqI", "hJKv9TOt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'qhfeZ8Rx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'JydwQ1zx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'G8pMcMQr' \
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
    'nE6XzFB5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'pLxiTnWN' \
    --body '{"description": "mDCK8YV7"}' \
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
    --body '{"dryRun": false, "notifyUrl": "4TWbhCu5", "privateKey": "2LBdsOBh"}' \
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
    --body '{"currencyCode": "pZBwrfd8", "currencyNamespace": "yBrHN4W3", "customParameters": {"5gfQhmyD": {}, "v9Q3zDQ5": {}, "izZYvjP1": {}}, "description": "OXT2w6QF", "extOrderNo": "9p1PqlDJ", "extUserId": "lrkmhs4R", "itemType": "OPTIONBOX", "language": "GFk-Fr", "metadata": {"Z6jTiIsn": "Gk3dLWTJ", "8ru0gAVR": "fstQFeH8", "mCkAeCNq": "8XRwmCTC"}, "notifyUrl": "V0m4dG8c", "omitNotification": true, "platform": "ILeX9A9v", "price": 62, "recurringPaymentOrderNo": "v9lMgEqX", "region": "0OsbKk99", "returnUrl": "mZwQOppD", "sandbox": true, "sku": "c6zPxXla", "subscriptionId": "QvVViDAO", "targetNamespace": "6UhkV7Q6", "targetUserId": "O0tas6G7", "title": "jjPrkhpM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    '1QkMGCuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'E9SL1TNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'RMZCV34G' \
    --body '{"extTxId": "jVt2Y1D9", "paymentMethod": "niqxX4BB", "paymentProvider": "PAYPAL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'vfTl0EoC' \
    --body '{"description": "5xG0yQnR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '0S8YTtEv' \
    --body '{"amount": 25, "currencyCode": "iqTXNOD8", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 76, "vat": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'jvTpNyKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Other' \
    --body '{"allowedBalanceOrigins": ["System", "GooglePlay", "System"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
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
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
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
    --body '{"description": "ic0NriNP", "eventTopic": "cp0ePqR1", "maxAwarded": 45, "maxAwardedPerUser": 25, "namespaceExpression": "GJQmnfcz", "rewardCode": "xawI6Ubq", "rewardConditions": [{"condition": "foVybXVG", "conditionName": "lrZEtXE2", "eventName": "f5x6XgoS", "rewardItems": [{"duration": 48, "itemId": "GsQozELA", "quantity": 57}, {"duration": 29, "itemId": "fYcXz8xg", "quantity": 46}, {"duration": 30, "itemId": "Ld25OyUQ", "quantity": 73}]}, {"condition": "rgwCLJVR", "conditionName": "qYfuxgzi", "eventName": "GNSGMQGo", "rewardItems": [{"duration": 17, "itemId": "7czTRS0v", "quantity": 12}, {"duration": 72, "itemId": "ysLwUcea", "quantity": 44}, {"duration": 81, "itemId": "wFrhwOrs", "quantity": 74}]}, {"condition": "JW2xOdhb", "conditionName": "WYaYjDrm", "eventName": "1ytkqyGt", "rewardItems": [{"duration": 54, "itemId": "ib7xhafL", "quantity": 61}, {"duration": 68, "itemId": "zzwOy9WF", "quantity": 29}, {"duration": 25, "itemId": "5twN1rV3", "quantity": 31}]}], "userIdExpression": "VK3CVFSn"}' \
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
    '2lPAjZuP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '8tTqSYPE' \
    --body '{"description": "dZMF4XNC", "eventTopic": "A4mMGDce", "maxAwarded": 93, "maxAwardedPerUser": 83, "namespaceExpression": "3vYYdErQ", "rewardCode": "vNRoQCTb", "rewardConditions": [{"condition": "iLet6QQW", "conditionName": "1f6oKZHA", "eventName": "tstm3icS", "rewardItems": [{"duration": 39, "itemId": "rzjZAGp2", "quantity": 59}, {"duration": 86, "itemId": "YQlEOuFU", "quantity": 35}, {"duration": 88, "itemId": "hxgrt1W8", "quantity": 85}]}, {"condition": "ud5L8P73", "conditionName": "9CD9syuQ", "eventName": "jaF4u8AJ", "rewardItems": [{"duration": 71, "itemId": "Wj8B6ISL", "quantity": 29}, {"duration": 60, "itemId": "JBuaKdyc", "quantity": 87}, {"duration": 2, "itemId": "ipst4dZO", "quantity": 4}]}, {"condition": "proi03iI", "conditionName": "Vbeo0lE5", "eventName": "Rkauu40Y", "rewardItems": [{"duration": 63, "itemId": "ZAm2nCQm", "quantity": 28}, {"duration": 9, "itemId": "S8JaoIYW", "quantity": 94}, {"duration": 57, "itemId": "czK6olNB", "quantity": 52}]}], "userIdExpression": "CwlDXG1G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'FYjfua1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'Yq8YrsI3' \
    --body '{"payload": {"JdOljaCO": {}, "bgD8VbdU": {}, "7nZQlwpr": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'dSsxMUA4' \
    --body '{"conditionName": "qq2eso1A", "userId": "Sub5x8e5"}' \
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
    'MyxGy9V0' \
    --body '{"active": false, "displayOrder": 74, "endDate": "1980-07-02T00:00:00Z", "ext": {"U6tSdW2f": {}, "DAadSch4": {}, "Z59OrSk2": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 95, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "5L06H22J", "sku": "zk7Hj9BW"}, {"id": "eurTaADI", "sku": "10AY6OVm"}, {"id": "vwvYmLoO", "sku": "3mR6nw3K"}], "localizations": {"xAaikjkn": {"description": "jCRexnrP", "localExt": {"Ft3gw3LE": {}, "AdsVU8g9": {}, "0IL58k6p": {}}, "longDescription": "s5nOI6Fx", "title": "iDqSTN9y"}, "2bWrH8cA": {"description": "yEin7PiG", "localExt": {"psQOYTMd": {}, "mfxBsa3p": {}, "feOgBh2m": {}}, "longDescription": "B1mwQEKZ", "title": "cjtk46hl"}, "wgQ9tQn6": {"description": "3GFRwA6x", "localExt": {"tOR9Xsit": {}, "3ahy7Gt2": {}, "Kv5iW2qK": {}}, "longDescription": "bv89zXA6", "title": "FDXCtP4q"}}, "name": "UJkAKJLy", "rotationType": "FIXED_PERIOD", "startDate": "1997-09-19T00:00:00Z", "viewId": "b6gGe9zC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'MXF7cph4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'hLmaIguV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'QPPEM5Iw' \
    'MUMJCArF' \
    --body '{"active": false, "displayOrder": 100, "endDate": "1984-11-22T00:00:00Z", "ext": {"UDMTq61Q": {}, "onUGsgKP": {}, "wkGiTpdj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 89, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "5PUbJONb", "sku": "BI5f8Uli"}, {"id": "LFiyNF5A", "sku": "aDcLNcLm"}, {"id": "q9H6eNNk", "sku": "BmLEikkQ"}], "localizations": {"XzN7U8ht": {"description": "SULo0d2o", "localExt": {"rbCyay9b": {}, "EQ4IUlgd": {}, "CdtAp9hZ": {}}, "longDescription": "tZQ8BnYl", "title": "weuUl4FW"}, "fAGqvgJn": {"description": "FwfE8kQw", "localExt": {"3gK7X74g": {}, "b7E44ggT": {}, "FFczUL31": {}}, "longDescription": "m11sb8sW", "title": "1479pI8V"}, "Wik9JSqC": {"description": "uTvGB6kq", "localExt": {"EaUC0Wki": {}, "FPYPvasn": {}, "cCGnusPH": {}}, "longDescription": "JUE4X4UT", "title": "kY6NgGOr"}}, "name": "e9ruVOce", "rotationType": "FIXED_PERIOD", "startDate": "1987-05-16T00:00:00Z", "viewId": "1SHBjtgP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '7PbK2ZGY' \
    'ugLYYdgo' \
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
    --body '{"defaultLanguage": "2N8n0jN7", "defaultRegion": "rDCMUP5T", "description": "jWr0OmeR", "supportedLanguages": ["6f3ze62I", "2suLC1Cd", "hc8cmjkx"], "supportedRegions": ["b00HBfpL", "m4KaNNem", "AnsGXjwX"], "title": "cbrARNov"}' \
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
    '1B5iFV7e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'lvyLp0qI' \
    --body '{"defaultLanguage": "4tKlHXPP", "defaultRegion": "BMpfOR7t", "description": "tHUprSVi", "supportedLanguages": ["f2k4yGBW", "C3zj6jpB", "79HgUQHC"], "supportedRegions": ["4i6quj6F", "sXTz0TMO", "yNy7zUDX"], "title": "ZEjRzkkj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'w3hkqqW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'wZi8nt3R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'FI4y1Lpg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'JS3ghnLL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'xjhBBUvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'uCguXPoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'g4rKqeFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '9Tui30PY' \
    '6d569NzU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '0KoYDGJx' \
    'STD5BNts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'VQ9x669K' \
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
    'ePukYn75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'Aqy3hZZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'JJxdvYwe' \
    --body '{"orderNo": "KiqF48Fm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'pthCYIik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'RphAGFHa' \
    --body '{"count": 16, "orderNo": "tagOXQLm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'VaejBhso' \
    --body '{"achievements": [{"id": "Ctfmf1sT", "value": 30}, {"id": "sjBvNC3l", "value": 85}, {"id": "1E8lj1dk", "value": 69}], "steamUserId": "qItbwBW5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'ZijGPPvW' \
    'Gxt1xORa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'BMvlgoYD' \
    --body '{"achievements": [{"id": "9705OLWj", "percentComplete": 49}, {"id": "OwQOaOrK", "percentComplete": 1}, {"id": "ypQ5ktpV", "percentComplete": 61}], "serviceConfigId": "VdVqTxH0", "titleId": "n7hsf6dM", "xboxUserId": "5dDwRNLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'uM6cDw42' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'vhktogTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'uCL4RdTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Onw3621X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'yJhHNU9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'FwPPRSv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'R9rMT2k0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'RHmZnoBZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'Bxy67C63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'UVTzMQNw' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'aVIDGOi6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '6ZHDvwXX' \
    --body '[{"endDate": "1977-05-26T00:00:00Z", "grantedCode": "PYMgMF5k", "itemId": "PCfteLWV", "itemNamespace": "nBg6Batz", "language": "kRz-034", "quantity": 69, "region": "qsJRwYCv", "source": "PURCHASE", "startDate": "1983-08-09T00:00:00Z", "storeId": "Mg2HK08N"}, {"endDate": "1974-02-11T00:00:00Z", "grantedCode": "Xyb39CnI", "itemId": "ODKYmlvj", "itemNamespace": "tuxYd5wa", "language": "DE_735", "quantity": 0, "region": "xlNyuwdg", "source": "IAP", "startDate": "1991-01-18T00:00:00Z", "storeId": "GgbsZlUB"}, {"endDate": "1998-07-15T00:00:00Z", "grantedCode": "DrTxLUXH", "itemId": "XdHEFl4t", "itemNamespace": "B2SjHPQn", "language": "Wt", "quantity": 10, "region": "lbvOYhjv", "source": "REWARD", "startDate": "1987-09-30T00:00:00Z", "storeId": "XQu28EsM"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'hUi1nnFl' \
    'GbTFZYzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'hNosVJ1D' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'l4fnOwCP' \
    'HH45p9H0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'xHE2MUnu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'NbT7yLOz' \
    '1VdAYusH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '4w1pkzPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '45n50BPd' \
    '["O4TpZq4H", "VG4q9dri", "875pZQwU"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'zDHWKsXF' \
    'IhOH3LNX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'SYULRjO6' \
    '1fF0IWax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'yh118Dkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'z1mwFPS1' \
    'LxuNlG1t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'anMKE8Jk' \
    'yKYwWK83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'RxL9ijt0' \
    'Mg6KOVbQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'poudYBw5' \
    'tZskdhEi' \
    --body '{"endDate": "1974-04-11T00:00:00Z", "nullFieldList": ["cimNbpAg", "K07HrI89", "Hi5kr2Vc"], "startDate": "1990-01-10T00:00:00Z", "status": "ACTIVE", "useCount": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '8j6TxDed' \
    '1ektEYlf' \
    --body '{"options": ["LiLEaPbc", "CPzfCumD", "P0vGAc1x"], "requestId": "xGXsDMNA", "useCount": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'cxWlIoTp' \
    'xA8dXvEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'MtzhiFBk' \
    'i92mWBwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'gePRfTEU' \
    'L6gkhrnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'GEmJ1rvA' \
    '0iEDL1jL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'JDXdnBsI' \
    --body '{"duration": 72, "endDate": "1986-04-09T00:00:00Z", "itemId": "DhV38bMV", "itemSku": "0RhagqGH", "language": "6Q66Y476", "order": {"currency": {"currencyCode": "do39WzBn", "currencySymbol": "XzLTQuYK", "currencyType": "VIRTUAL", "decimals": 57, "namespace": "pjaWs90M"}, "ext": {"OgyesZED": {}, "WFOnIPVC": {}, "VwDBKbbu": {}}, "free": true}, "orderNo": "ihWiClpU", "origin": "IOS", "quantity": 86, "region": "xEFlHbwH", "source": "PROMOTION", "startDate": "1984-08-22T00:00:00Z", "storeId": "VOgKCZUs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '8nV7F5yu' \
    --body '{"code": "5ZHr35d2", "language": "GE-zBVp", "region": "zB9BxRWD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'wUffwTry' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "i2LhIufU", "namespace": "kSodG9BL"}, "item": {"itemId": "ddVInjJk", "itemSku": "hU3jkGDh", "itemType": "R2IbEuge"}, "quantity": 25, "type": "ITEM"}, {"currency": {"currencyCode": "p4wHVS7i", "namespace": "0UDO3RZD"}, "item": {"itemId": "e8TAQywQ", "itemSku": "JPQaKU0B", "itemType": "2ulzxgi5"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "qmKKlxec", "namespace": "h6kPYfQa"}, "item": {"itemId": "RKsQO2vR", "itemSku": "ZsPnX7MT", "itemType": "7AVCS56W"}, "quantity": 78, "type": "ITEM"}], "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'JTxIQ7ZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'K9MLeUsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    '3szRAVPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'dVdDXKKW' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "dh_dgrf", "productId": "hdzZj8FR", "region": "EEvdC1jX", "type": "GOOGLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'ukUT8q8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'Wo3sotUM' \
    --body '{"currencyCode": "PSM1HYBC", "currencyNamespace": "Ms2OjDC4", "discountedPrice": 23, "ext": {"uXjTT2W5": {}, "ioTpm4GM": {}, "skQpyD1w": {}}, "itemId": "BJTQoolS", "language": "9fe0jt7L", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 55, "quantity": 38, "region": "Mkv1ISpV", "returnUrl": "8orxDcf6", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '13g4NJjN' \
    'P0Y1kupn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'VhydBgZK' \
    'hc3N64xQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    't4fnm1vl' \
    'Kl5szTbx' \
    --body '{"status": "CHARGEBACK", "statusReason": "mhzfxKZC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'FzN9rR2K' \
    '1Ixc4DIO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'uyLbCbg6' \
    'oh2zppnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'MKaA5mIN' \
    'BJS2X5wS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'SQw39Ix7' \
    'yOiOLAgq' \
    --body '{"additionalData": {"cardSummary": "h5hx43ja"}, "authorisedTime": "1971-07-20T00:00:00Z", "chargebackReversedTime": "1999-05-27T00:00:00Z", "chargebackTime": "1990-11-26T00:00:00Z", "chargedTime": "1999-06-10T00:00:00Z", "createdTime": "1983-09-11T00:00:00Z", "currency": {"currencyCode": "m8ONAVot", "currencySymbol": "O2h0oFav", "currencyType": "VIRTUAL", "decimals": 32, "namespace": "PhZT7oDR"}, "customParameters": {"uiqepsBI": {}, "V5BJJfs9": {}, "hISfFRcj": {}}, "extOrderNo": "FyIVTGMt", "extTxId": "sluNaA8f", "extUserId": "SyVgc343", "issuedAt": "1999-12-05T00:00:00Z", "metadata": {"woioM3HB": "GP3BsP6v", "H4WPSfvQ": "L1j9HXie", "Yhv2OUjU": "l4WYXxmL"}, "namespace": "6fcmzGUl", "nonceStr": "g0KDpfW5", "paymentMethod": "NHBwI60f", "paymentMethodFee": 82, "paymentOrderNo": "QDK0FxgW", "paymentProvider": "PAYPAL", "paymentProviderFee": 73, "paymentStationUrl": "WB4JgTgw", "price": 50, "refundedTime": "1995-06-13T00:00:00Z", "salesTax": 74, "sandbox": false, "sku": "XKXCgTLz", "status": "DELETED", "statusReason": "3dibGCVs", "subscriptionId": "ulKPf8zl", "subtotalPrice": 31, "targetNamespace": "EZhsnYo2", "targetUserId": "UAdhbKUl", "tax": 72, "totalPrice": 73, "totalTax": 65, "txEndTime": "1973-06-17T00:00:00Z", "type": "aFax2wfX", "userId": "pby1q7y8", "vat": 81}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'bykLia5b' \
    'ZfksZjA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '5ozxmdRB' \
    --body '{"currencyCode": "mUFbf9Yv", "currencyNamespace": "lhWY7r6k", "customParameters": {"kwWhXlkA": {}, "IoDhPvFr": {}, "pz1kc3cW": {}}, "description": "lbBLuRlA", "extOrderNo": "zZHohpMF", "extUserId": "h10sjZ13", "itemType": "INGAMEITEM", "language": "VRZv-groY_928", "metadata": {"x00gSgZZ": "gEX6eGbD", "vCcQ8Zpc": "L29m8yUR", "V8dBJLJ2": "YJhIYMvQ"}, "notifyUrl": "4Keesnel", "omitNotification": false, "platform": "iry5hnbO", "price": 95, "recurringPaymentOrderNo": "ZOfyjC51", "region": "Gso9W8f7", "returnUrl": "dARc16TI", "sandbox": false, "sku": "oXS8qClq", "subscriptionId": "v0q9Y3TX", "title": "bGNXobnO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'Y5hKSyva' \
    'kMvivdIH' \
    --body '{"description": "u6nMTCmL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'Fq31qMhv' \
    --body '{"code": "dLkVOWMG", "orderNo": "oM9ACoOr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'slarhApE' \
    --body '{"meta": {"D44aBl4n": {}, "KeCID861": {}, "bOEfPlwS": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "x7ZCAbit", "namespace": "UOcdpIL9"}, "entitlement": {"clazz": "APP", "entitlementId": "7fRLZmwA", "type": "DURABLE"}, "item": {"itemIdentity": "y8l2hMQY", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 79, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "4TUd0yHF", "namespace": "NuVzRu0O"}, "entitlement": {"clazz": "CODE", "entitlementId": "fFBNiFrM", "type": "DURABLE"}, "item": {"itemIdentity": "CdDZzcp0", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "nkKjVuZZ", "namespace": "X3D4gh3U"}, "entitlement": {"clazz": "MEDIA", "entitlementId": "9RjUFwqd", "type": "CONSUMABLE"}, "item": {"itemIdentity": "wTMvgn2f", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 21, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "16VIG0EE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'D0KiBRU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'oDCT9ioZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '33rqNbHb' \
    --body '{"grantDays": 66, "itemId": "cVULxu8c", "language": "JSuRKgp9", "reason": "YGY2MrwF", "region": "c9hLut7C", "source": "Lxu43HIz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'ZaNn036V' \
    'Bp3ZMtn5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'b1o7MfL9' \
    'j8rB4Hmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'Ke1zWtoT' \
    'HhfjYgRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'gRrPe85O' \
    'NTrD4TUw' \
    --body '{"immediate": true, "reason": "n5VEBVEn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'WnGO9cah' \
    'kfXmlAw6' \
    --body '{"grantDays": 7, "reason": "PBI6IA5Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'W0PEbUux' \
    '75m2VSAU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'ry2ris5z' \
    'g3Qum6aG' \
    --body '{"additionalData": {"cardSummary": "YxEiGtlS"}, "authorisedTime": "1979-07-26T00:00:00Z", "chargebackReversedTime": "1994-06-02T00:00:00Z", "chargebackTime": "1983-05-20T00:00:00Z", "chargedTime": "1971-04-13T00:00:00Z", "createdTime": "1999-03-03T00:00:00Z", "currency": {"currencyCode": "sG5dW4Vq", "currencySymbol": "ol46kum2", "currencyType": "VIRTUAL", "decimals": 95, "namespace": "woBajQ8o"}, "customParameters": {"aaYxHL6i": {}, "9rqjeUSt": {}, "6aVQSKL8": {}}, "extOrderNo": "fnbXER81", "extTxId": "QAEJHZKr", "extUserId": "dKijdn2T", "issuedAt": "1990-05-28T00:00:00Z", "metadata": {"aoK1hMta": "0luW8Ai4", "pwvvnRd2": "yvJ3sGWK", "HzaRMnf1": "ouyiNbja"}, "namespace": "0UfbPV70", "nonceStr": "EAgCoJDG", "paymentMethod": "LQXDviER", "paymentMethodFee": 91, "paymentOrderNo": "lDT19iig", "paymentProvider": "ADYEN", "paymentProviderFee": 53, "paymentStationUrl": "GASLW7Sz", "price": 40, "refundedTime": "1982-09-17T00:00:00Z", "salesTax": 97, "sandbox": false, "sku": "iYPVIde9", "status": "CHARGEBACK", "statusReason": "sViTUr1Q", "subscriptionId": "5evTqTLq", "subtotalPrice": 12, "targetNamespace": "mr005C6T", "targetUserId": "02r3bxeX", "tax": 48, "totalPrice": 62, "totalTax": 78, "txEndTime": "1977-04-07T00:00:00Z", "type": "UcG5YhVv", "userId": "vNFLkjqw", "vat": 61}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'ANUsVREC' \
    'OMcf7Nld' \
    --body '{"count": 93, "orderNo": "Wcwxgg9p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'tCjtQIxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'wQnBXH2p' \
    'mIORfdWf' \
    --body '{"allowOverdraft": true, "amount": 78, "balanceOrigin": "Playstation", "reason": "sZpUUKf9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'QGFtQYxv' \
    'CYvSgy2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'LpVNnnrv' \
    'ihIP7FTC' \
    --body '{"amount": 1, "expireAt": "1998-11-03T00:00:00Z", "origin": "Epic", "reason": "kawa72BV", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'BKY0Bry7' \
    'Ibcu2VKd' \
    --body '{"amount": 22, "walletPlatform": "Nintendo"}' \
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
    'S4nmSrfj' \
    --body '{"displayOrder": 64, "localizations": {"z1tU1uIN": {"description": "jscuG4nY", "localExt": {"XSSVSCXh": {}, "SXG2sLA5": {}, "08GIyLen": {}}, "longDescription": "ND3ErxuZ", "title": "Z5wG72uc"}, "8BFlKsBy": {"description": "MBlDJ5NP", "localExt": {"IAd5pw7g": {}, "pVz0D7tj": {}, "7uZuHFyY": {}}, "longDescription": "t1PtMvP0", "title": "fPZS2BdK"}, "2j5pZs3Z": {"description": "5LGErpnM", "localExt": {"UeKsKMpk": {}, "wilMu567": {}, "9vhjfxrF": {}}, "longDescription": "HXKB3Oi3", "title": "6urc768m"}}, "name": "ZVOIQSPU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'kpPhJfCb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'QKu1nIq3' \
    'IXlEwiAE' \
    --body '{"displayOrder": 19, "localizations": {"ctNXkVEE": {"description": "d5diSsNm", "localExt": {"9FOm2duV": {}, "T6ThXL04": {}, "eBB3Cqui": {}}, "longDescription": "jCI8kLvr", "title": "voGZQtJ3"}, "lu71hEKY": {"description": "wPmQB3GC", "localExt": {"6b1uAXCM": {}, "R47NDpM1": {}, "hukNv8vX": {}}, "longDescription": "nXJupcL7", "title": "3VyCke7T"}, "nqAAzuoU": {"description": "4AIJVrBa", "localExt": {"1PbU9kAj": {}, "ZNyjBeWf": {}, "jMbFSCNN": {}}, "longDescription": "AC9GMpQB", "title": "by4Z5NlJ"}}, "name": "vAbOUhjJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'JoAK8cDy' \
    'wIVszd6U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'DTniy3rI' \
    'fr66iOo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["pnciYkGh", "hsx1PkCG", "TiTS7hai"], "apiKey": "uNHtq2rQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["gkNXFEvW", "JUjUHmU4", "5haZ2BNf"], "clientKey": "cDgXlwk4", "dropInSettings": "ca3YFQiT", "liveEndpointUrlPrefix": "7kJTVGgj", "merchantAccount": "9mDa11f8", "notificationHmacKey": "hLoYB1kR", "notificationPassword": "QjPopGJX", "notificationUsername": "iwCLH3OW", "returnUrl": "kBmSimUW", "settings": "3WDNCLff"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "0wsmu68a", "privateKey": "mEFEACEe", "publicKey": "8hW0cFu2", "returnUrl": "YbnSHvMm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "tVYu9T0M", "secretKey": "22umVLuI"}' \
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
    --body '{"clientID": "xmdCs4Tv", "clientSecret": "k25ICcXG", "returnUrl": "JQah7IrT", "webHookId": "bprHFOCa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["FTO1Ns5X", "6pLE2xgv", "GE2PJfYL"], "publishableKey": "flsBKUvt", "secretKey": "0m8ylqmS", "webhookSecret": "ZjjSyLJo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "69dwGKkZ", "key": "GpcR2tXA", "mchid": "FS7qSqiI", "returnUrl": "bB2xvdJe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "o47XulL5", "flowCompletionUrl": "vHNqcGAZ", "merchantId": 40, "projectId": 4, "projectSecretKey": "iO3Puxx4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'KzMEGnfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'MtCFcLx5' \
    --body '{"allowedPaymentMethods": ["7fvGVNHv", "h2cbQ0Zn", "KvxQ7WXt"], "apiKey": "vc8YnriD", "authoriseAsCapture": false, "blockedPaymentMethods": ["tGKmiozA", "0cHlvN1i", "VW2Lw7Pt"], "clientKey": "hBSOcIFk", "dropInSettings": "L3RjSS4Q", "liveEndpointUrlPrefix": "1DRaGsxQ", "merchantAccount": "KPomQYmi", "notificationHmacKey": "59SozOTd", "notificationPassword": "2bzRaucG", "notificationUsername": "gnS57nzd", "returnUrl": "o7L0ijgO", "settings": "PS2FixO4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'qBTTccLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'r1V282Zc' \
    --body '{"appId": "gfISaAEO", "privateKey": "qYIdoZsp", "publicKey": "q8hJXaUA", "returnUrl": "ikYisTEm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '32WMZFKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '1931PSnf' \
    --body '{"publicKey": "SBPpvsO6", "secretKey": "2ONr2exA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'gt36WSO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'RKYeiIeq' \
    --body '{"clientID": "GzXUKwGD", "clientSecret": "yprMDqhG", "returnUrl": "QssbMIJT", "webHookId": "THYxEKH7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'Db3bdvIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'PT4Og7bf' \
    --body '{"allowedPaymentMethodTypes": ["36MiRFNI", "aArlwzxt", "jB4R5Sro"], "publishableKey": "HAWcsAFR", "secretKey": "dLMAtrUE", "webhookSecret": "R0wY9XcY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'WNH6A3v8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'U94jN5QK' \
    --body '{"appId": "wpy51PeP", "key": "ucDvzoDp", "mchid": "Tb0Bbm95", "returnUrl": "RYphacvd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'jeO30OWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'fmrtarxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '4UIpbmVe' \
    --body '{"apiKey": "etqXBCjH", "flowCompletionUrl": "cl73RRQd", "merchantId": 79, "projectId": 15, "projectSecretKey": "QpMt2YdS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'mNwXRMWM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'XbPKprA0' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
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
    --body '{"aggregate": "ADYEN", "namespace": "AjR2JCz5", "region": "BUSdIq13", "sandboxTaxJarApiToken": "WXhEoNV3", "specials": ["CHECKOUT", "PAYPAL", "ALIPAY"], "taxJarApiToken": "MwVRLNiD", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
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
    'IG2RzwhS' \
    --body '{"aggregate": "XSOLLA", "namespace": "McCJZjTi", "region": "NUlB3oUL", "sandboxTaxJarApiToken": "5G57pIpJ", "specials": ["PAYPAL", "WALLET", "PAYPAL"], "taxJarApiToken": "QX2UgwOv", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'yfW2yhoc' \
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
    --body '{"sandboxTaxJarApiToken": "8wvlKkR0", "taxJarApiToken": "bLocDJsa", "taxJarEnabled": true, "taxJarProductCodesMapping": {"meZlCCBq": "HBGKGH3V", "PthrDqmZ": "yB3ENyOQ", "nFPLIeeA": "uTP3api9"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'i6ihdE2Y' \
    'cTYvdSXT' \
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
    'b5sVw8Fy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'yk8bG596' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    '1maMJDhj' \
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
    'v8hMEUlQ' \
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
    'cXRvRoYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'pHZmEa4y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["YdMiCqtC", "0Xw5qrds", "PVLYTzdc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'McHKRDOX' \
    'kZKnMcVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'hvGROW4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'F9eQHa87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'Mp2KxWOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "0tmrs72Y", "paymentProvider": "ADYEN", "returnUrl": "rEZhJ8wV", "ui": "cNk5SNO1", "zipCode": "s6QADIOm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'rQbXJOsV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'ktuoyhkZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'xOwFKJ66' \
    --body '{"token": "NO5N1dT2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'iCHhNaFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    'Gir3sDE5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'a0KDXCbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'gCpdMdbB' \
    'wjtkTRHV' \
    'STRIPE' \
    '6751EAaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'r62g7CiU' \
    'PAYPAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '7ezL3s96' \
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
    'iKtzUShG' \
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
    'WEjX2lE0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    't2dxQnQU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'p8XLL5CY' \
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
    'G3w4HliO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'c3kPhcqx' \
    --body '{"epicGamesJwtToken": "NV5AWRXq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'bfXSexJZ' \
    --body '{"serviceLabel": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'PI77rwa2' \
    --body '{"serviceLabels": [40, 90, 7]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'yWTFYOhA' \
    --body '{"appId": "aSDU2lB3", "steamId": "yeYZTzIs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'blZoOFxZ' \
    --body '{"xstsToken": "umO056Qe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'HQZMg1ep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'gTeBOrDh' \
    'BbIZ2Rmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'wi1ZHZfa' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '8tdYdjSA' \
    'jnbJyMeO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'oGxMSynT' \
    'Bh5FeYTb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'Jwn9XAxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'PISxv29V' \
    'LEPxUEEY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'Cys60jbu' \
    'DW3fSQ75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'eamEYaqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'Srccq6YR' \
    'Q1lFT51c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'kky99UKm' \
    'Tk2V4EA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'K5424ZCS' \
    'bjGqlLEs' \
    --body '{"options": ["1hMVmY1l", "ZLDZoFh1", "x1avzDNX"], "requestId": "uLUPmu8Q", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'YVgJoKjV' \
    --body '{"code": "yvL1bbO6", "language": "Fvo_IZ", "region": "0sZIHENR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '9S8XTmkw' \
    --body '{"excludeOldTransactions": true, "language": "HM_NF", "productId": "IxXXvzUu", "receiptData": "UrGrgrhG", "region": "9IjLQK98", "transactionId": "thK7AElU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'I6xyeHtn' \
    --body '{"epicGamesJwtToken": "987sxw0E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'kEVt8Sgu' \
    --body '{"autoAck": false, "language": "rNMy_EK", "orderId": "If0vFHXT", "packageName": "nD3Izcdk", "productId": "jsXCs5eo", "purchaseTime": 88, "purchaseToken": "xYOxVzxO", "region": "qbIDJEjg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Iqgf4e1X' \
    --body '{"currencyCode": "kJaB3qc5", "price": 0.10874643283834184, "productId": "PBk2Lfjp", "serviceLabel": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '56VTRdOW' \
    --body '{"currencyCode": "YxOcX3bA", "price": 0.5660539942671403, "productId": "Y0qV1jKm", "serviceLabels": [98, 10, 6]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'HASKbr2d' \
    --body '{"appId": "bwWEmr6s", "currencyCode": "7e6pN3tr", "language": "Le-Amat_299", "price": 0.30901566424793625, "productId": "rqHcFZKH", "region": "EdYiSanR", "steamId": "pj1X5VaQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '1zTMZgYu' \
    --body '{"gameId": "JMxVtsb8", "language": "cR", "region": "n3dh5grj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'CdBm1Z02' \
    --body '{"currencyCode": "cGF9BRWT", "price": 0.9844205465270958, "productId": "MuyLVwUx", "xstsToken": "pID3qDQ8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'ktB8vrsa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'mgcRyL62' \
    --body '{"currencyCode": "LrplFc5I", "discountedPrice": 19, "ext": {"Widtzcmd": {}, "r4epClFK": {}, "rDIWdktm": {}}, "itemId": "onQBUQwr", "language": "jVi-tKGT", "price": 32, "quantity": 70, "region": "EaN43Xwr", "returnUrl": "Bosj64lg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'bENhmVBp' \
    'CRKw4xzR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'quc8fTRf' \
    'tu2A8ywI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '7aoNRjo9' \
    'EXRWzIWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ONWsaLkd' \
    'kFNHFcyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'Cf9Mtmvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'QFJEJEwl' \
    'paypal' \
    '6NWcMml5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'VmZKxVwr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'qBc5zl4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'macSJRHY' \
    --body '{"currencyCode": "VzyoQsi8", "itemId": "J1LgHmuP", "language": "RSZT", "region": "6cqMHcpC", "returnUrl": "ZfbQPiH2", "source": "EkOgfD7y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'nuGWLnTv' \
    'elZzfYGa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'gc9hHphp' \
    'PFndtv4n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'Z87X9wZe' \
    'Ndv8BZc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'lr65AgTg' \
    'RFrkIQmx' \
    --body '{"immediate": false, "reason": "yhpP2uBE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'sm6ssUdn' \
    'k0Xgeqdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'bImaN88T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'IyEKuwnM' \
    'uOFgRIqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'w4oAPIoB' \
    'SuWvHn2k' \
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
    '89zRuF2n' \
    --body '{"itemIds": ["GGNat7bI", "875e7yf7", "kzMmVl5R"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
