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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "SOFTWARE", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "fresh": true, "images": [{"as": "Vaewc72k", "caption": "rSha68n3", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "BUNDLE", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "optionBoxConfig": {"boxItems": [{"count": 46, "itemId": "xFqmAGTJ", "itemSku": "8IEdagEt"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isLessThan", "name": "9c19R6XD", "predicateType": "SeasonPassPredicate", "value": "WHkkP8np", "values": ["LEKMfjiX"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 31, "fixedTrialCycles": 21, "graceDays": 95}, "region": "Zk3IaQYE", "regionData": [{"currencyCode": "mqGodOEG", "currencyNamespace": "t9gPOj0c", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1976-06-17T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1971-05-31T00:00:00Z", "discountedPrice": 40, "expireAt": "1972-04-21T00:00:00Z", "price": 63, "purchaseAt": "1984-10-12T00:00:00Z", "trialPrice": 59}], "seasonType": "TIER", "sku": "ogg0Y39U", "stackable": false, "status": "ACTIVE", "tags": ["pv5bVAgt"], "targetCurrencyCode": "sDhUTDUs", "targetItemId": "cbQDjbTQ", "targetNamespace": "uPMz2PTR", "thumbnailUrl": "lkyU89ZP", "title": "Ow6zPFJ4", "updatedAt": "1998-01-16T00:00:00Z", "useCount": 45}, "namespace": "mzBBSMNc", "order": {"currency": {"currencyCode": "oAAOjKNj", "currencySymbol": "fcYHm093", "currencyType": "REAL", "decimals": 100, "namespace": "gBU1sqjy"}, "ext": {"K0XH45Pa": {}}, "free": true}, "source": "PURCHASE"}, "script": "tu23REZ8", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'RVX7LGOv' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'DdYiQS9i' --body '{"grantDays": "7mV1C91p"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'jG9gpxL6' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'ycTQdvln' --body '{"grantDays": "2LAuSQWE"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "XL6LFE1Y", "dryRun": false, "fulfillmentUrl": "9m126ZWc", "itemType": "BUNDLE", "purchaseConditionUrl": "HtWvbNYq"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'BUNDLE' --login_with_auth "Bearer foo"
platform-get-item-type-config 'UqslArFP' --login_with_auth "Bearer foo"
platform-update-item-type-config 'iHUIvaCv' --body '{"clazz": "8kU9dBBp", "dryRun": false, "fulfillmentUrl": "sJLhsVyE", "purchaseConditionUrl": "xrkxoot0"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'B7WOferc' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "ZdpMci37", "items": [{"extraSubscriptionDays": 58, "itemId": "s7YSfExa", "itemName": "I3uzLteM", "quantity": 3}], "maxRedeemCountPerCampaignPerUser": 62, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 23, "maxSaleCount": 39, "name": "4hr7HmOY", "redeemEnd": "1975-08-09T00:00:00Z", "redeemStart": "1984-03-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["OXmlG6eh"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'TdoTFpBI' --login_with_auth "Bearer foo"
platform-update-campaign 'cuC1dQY9' --body '{"description": "3OJnJ6Te", "items": [{"extraSubscriptionDays": 42, "itemId": "D8ldz7Hu", "itemName": "8AD79kdW", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 26, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 17, "maxSaleCount": 50, "name": "U0q1pHyh", "redeemEnd": "1974-09-04T00:00:00Z", "redeemStart": "1992-04-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["rysMizBG"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'SRdP2l7D' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'NSZ8Aq0X' --body '{"categoryPath": "iPLQXSe0", "localizationDisplayNames": {"7ZddOGTM": "lJjBwj9H"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'JHQKseEd' --login_with_auth "Bearer foo"
platform-update-category 'SXRDSvgu' 'auw1xT7e' --body '{"localizationDisplayNames": {"MwSl9MLH": "0NnTJ2ul"}}' --login_with_auth "Bearer foo"
platform-delete-category 'NzBvwJaQ' 'a547Jllv' --login_with_auth "Bearer foo"
platform-get-child-categories 'A8RWSpab' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'Ut7xk6Qx' --login_with_auth "Bearer foo"
platform-query-codes 'yWhfqoWf' --login_with_auth "Bearer foo"
platform-create-codes 'Jw2o8oWU' --body '{"quantity": 32}' --login_with_auth "Bearer foo"
platform-download 'vPCZ2HzT' --login_with_auth "Bearer foo"
platform-bulk-disable-codes '7NXmWDlX' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'suNIdQJR' --login_with_auth "Bearer foo"
platform-query-redeem-history '5lsNOlvk' --login_with_auth "Bearer foo"
platform-get-code 'fwaSbnsu' --login_with_auth "Bearer foo"
platform-disable-code 'LCgToxuV' --login_with_auth "Bearer foo"
platform-enable-code 'TekJgvg6' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "h5HIpH0D", "currencySymbol": "viplEk4v", "currencyType": "REAL", "decimals": 75, "localizationDescriptions": {"Dp4yqDt8": "QUZDpxlH"}}' --login_with_auth "Bearer foo"
platform-update-currency 'asinGcjr' --body '{"localizationDescriptions": {"kmRMttgj": "DSaIVBmf"}}' --login_with_auth "Bearer foo"
platform-delete-currency 't3Udg7p9' --login_with_auth "Bearer foo"
platform-get-currency-config 'PGmY2H5k' --login_with_auth "Bearer foo"
platform-get-currency-summary 'X4MsisSX' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "28nARxWR", "rewards": [{"currency": {"currencyCode": "pv5ou5xt", "namespace": "vd28OUfC"}, "item": {"itemId": "t8UJC5fl", "itemSku": "Nyj6HsTt", "itemType": "X8P3llna"}, "quantity": 1, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"yygPcfkJ": "IxfQZza8"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'kNVbDxVM' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "q7HJk0F8", "password": "9xAc3YVf"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "aENtrl0p"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "TKZTXqzH", "serviceAccountId": "uBMYQSA2"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "jz1ZOpdO", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"SyMddB41": "JuMf7RUy"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "BHRj8IiR"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "imRllHT6", "publisherAuthenticationKey": "Dc40vFFA"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "6gpU7EW3", "clientSecret": "x1dCpm55", "organizationId": "gOeqQIqc"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "JVKmBM1J"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-sync-in-game-item '1IbuTrrk' --body '{"categoryPath": "bmuT1whO", "targetItemId": "qmEnDXIW", "targetNamespace": "rBPlSay4"}' --login_with_auth "Bearer foo"
platform-create-item '6mv71BAZ' --body '{"appId": "AOjtFJ2v", "appType": "DLC", "baseAppId": "Tj7tT7TZ", "boothName": "HWDdCkIs", "categoryPath": "ZoArWwPH", "clazz": "cyFAdAtY", "displayOrder": 5, "entitlementType": "CONSUMABLE", "ext": {"LIgRwFRr": {}}, "features": ["0gwB9tz3"], "images": [{"as": "vp99XVlV", "caption": "8rK3tE6n", "height": 36, "imageUrl": "mip1tw3L", "smallImageUrl": "7cUd9pqt", "width": 42}], "itemIds": ["6JfPZwcC"], "itemQty": {"VOXcVa80": 90}, "itemType": "COINS", "listable": true, "localizations": {"wtD2lAH0": {"description": "1o6NdcBI", "localExt": {"gzrDyWpF": {}}, "longDescription": "BYGmmBaw", "title": "MyoKyNpd"}}, "maxCount": 53, "maxCountPerUser": 1, "name": "sm8xwUfz", "optionBoxConfig": {"boxItems": [{"count": 80, "itemId": "lQiZY4Nb", "itemSku": "OQXJ7uOT"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 41, "fixedTrialCycles": 33, "graceDays": 39}, "regionData": {"Nl4CX4Ij": [{"currencyCode": "iK4DEUJR", "currencyNamespace": "VK3l9Eb0", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1987-06-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1997-05-23T00:00:00Z", "discountedPrice": 24, "expireAt": "1973-11-22T00:00:00Z", "price": 22, "purchaseAt": "1977-02-22T00:00:00Z", "trialPrice": 34}]}, "seasonType": "PASS", "sku": "TXCzaPBt", "stackable": false, "status": "ACTIVE", "tags": ["o4wcyhlo"], "targetCurrencyCode": "VS3rYp8Q", "targetNamespace": "tcEmCEVc", "thumbnailUrl": "75UfeypW", "useCount": 19}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'DNhzCL5s' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'WS2qwO76' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku '3iEklkzL' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'm88LpLuY' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'RO3C55yH' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'pwK2Jaqe' --body '{"itemIds": ["nDGn7a2N"]}' --login_with_auth "Bearer foo"
platform-search-items 'UplWiLjq' '06n6a0rW' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '8EfkpaXt' --login_with_auth "Bearer foo"
platform-update-item 'wYZJaQ4W' 'bwNmsFYe' --body '{"appId": "tjEurH8e", "appType": "DLC", "baseAppId": "oJzNKtRU", "boothName": "aTz1ETds", "categoryPath": "mwzjkkn9", "clazz": "oiQl05g7", "displayOrder": 4, "entitlementType": "CONSUMABLE", "ext": {"6Ojlo6DM": {}}, "features": ["NpP2qMrT"], "images": [{"as": "Q1UpjfU6", "caption": "wJhy1jOV", "height": 21, "imageUrl": "kUlS7952", "smallImageUrl": "7EZ25Ia8", "width": 40}], "itemIds": ["CeZFlLtE"], "itemQty": {"VpDAEbA8": 18}, "itemType": "MEDIA", "listable": false, "localizations": {"q0pDE5xR": {"description": "wh5b45eb", "localExt": {"pcM7ScSs": {}}, "longDescription": "3UOpAwIp", "title": "9rRtn1Pc"}}, "maxCount": 56, "maxCountPerUser": 46, "name": "dbumeYgO", "optionBoxConfig": {"boxItems": [{"count": 7, "itemId": "EBWRQiW3", "itemSku": "KFfU8icH"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 64, "fixedTrialCycles": 48, "graceDays": 75}, "regionData": {"fLg4RYuE": [{"currencyCode": "bgUDEcJy", "currencyNamespace": "IvsPwOr0", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1994-03-02T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1981-02-08T00:00:00Z", "discountedPrice": 45, "expireAt": "1986-03-15T00:00:00Z", "price": 90, "purchaseAt": "1993-04-06T00:00:00Z", "trialPrice": 69}]}, "seasonType": "TIER", "sku": "qoLyLeUG", "stackable": false, "status": "ACTIVE", "tags": ["mGX9sXTZ"], "targetCurrencyCode": "0v8pqLfc", "targetNamespace": "5SwGnReU", "thumbnailUrl": "ULDX4QUI", "useCount": 3}' --login_with_auth "Bearer foo"
platform-delete-item 'b5nh68Zn' --login_with_auth "Bearer foo"
platform-acquire-item 'yUtRvW9h' --body '{"count": 78, "orderNo": "BSFTtFrO"}' --login_with_auth "Bearer foo"
platform-get-app 'mjkFrFVA' --login_with_auth "Bearer foo"
platform-update-app '8t0xF34X' 'pt6ZlTTi' --body '{"carousel": [{"alt": "c0kr2a0n", "previewUrl": "I2oo7UHC", "thumbnailUrl": "JK5sp0aC", "type": "video", "url": "Iq3aHVYI", "videoSource": "generic"}], "developer": "ewLRuHY8", "forumUrl": "3bGj0HTe", "genres": ["Adventure"], "localizations": {"WXlIcRid": {"announcement": "qctDpygY", "slogan": "0ax476ED"}}, "platformRequirements": {"4MMO9Tw2": [{"additionals": "JH0qhWIw", "directXVersion": "HWTgzJFR", "diskSpace": "Yw6t1IKZ", "graphics": "LO6V4Ode", "label": "46QmCidg", "osVersion": "dpP7RTC5", "processor": "87lmUmBz", "ram": "iPZBnpOf", "soundCard": "kllxfq0N"}]}, "platforms": ["Linux"], "players": ["LocalCoop"], "primaryGenre": "Casual", "publisher": "w5Hog0bl", "releaseDate": "1990-01-23T00:00:00Z", "websiteUrl": "5MStYGcz"}' --login_with_auth "Bearer foo"
platform-disable-item 'LINlEC0O' 'EsE3yzIs' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'UP0NjluO' --login_with_auth "Bearer foo"
platform-enable-item 'rGZTzsLW' '7Fjfs9nI' --login_with_auth "Bearer foo"
platform-feature-item 'kcZ38fUE' 'anjKHbXf' 'k1zxdzxg' --login_with_auth "Bearer foo"
platform-defeature-item '0UXcRyHi' '3u8BzVWu' '1tOmhUtC' --login_with_auth "Bearer foo"
platform-get-locale-item 'gcpvGrEb' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'cZUDExH1' 'tayOGXIH' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 77, "comparison": "is", "name": "MCtOJsEi", "predicateType": "EntitlementPredicate", "value": "lrbpyyEc", "values": ["QxVgJIjM"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'ZqcWfMl6' --body '{"orderNo": "dqrpD4tn"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "c3ZRB3Ik", "name": "dtPfAJEo", "status": "ACTIVE", "tags": ["wenJvQ8g"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'rtQSv6Ec' --login_with_auth "Bearer foo"
platform-update-key-group 'ALcMIPms' --body '{"description": "5bT51M4y", "name": "ko8S0EnG", "status": "INACTIVE", "tags": ["GvfuSyCT"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'yjj4mCai' --login_with_auth "Bearer foo"
platform-list-keys 'uMGKOF5G' --login_with_auth "Bearer foo"
platform-upload-keys 'JJooSXUl' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '3YU35QHG' --login_with_auth "Bearer foo"
platform-refund-order 'pBABnOlx' --body '{"description": "DznICQVy"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "Bg34WTtD", "privateKey": "kn0rtn6t"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "0Yx4z12E", "currencyNamespace": "aQ1rUQYC", "customParameters": {"NTiDX4jE": {}}, "description": "3M2IsTHu", "extOrderNo": "8QwNyOlX", "extUserId": "fIWd0mcq", "itemType": "APP", "language": "wF-JGfC", "metadata": {"nEMySPfh": "xBenDiTi"}, "notifyUrl": "AqFYmFKj", "omitNotification": false, "platform": "ELmmll6o", "price": 9, "recurringPaymentOrderNo": "xId1OKGU", "region": "N2Uznd7u", "returnUrl": "Va7t14yv", "sandbox": false, "sku": "HifCIf4t", "subscriptionId": "suu6Pkam", "targetNamespace": "6tFSYFt4", "targetUserId": "ZxA2PzZF", "title": "RkBNlg6h"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'n5qusKyZ' --login_with_auth "Bearer foo"
platform-get-payment-order 'AuV6uUvq' --login_with_auth "Bearer foo"
platform-charge-payment-order 'M0lV6UZM' --body '{"extTxId": "lEbxHNgJ", "paymentMethod": "RiQExaun", "paymentProvider": "CHECKOUT"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'dAqnHUz4' --body '{"description": "4tx4O6ha"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'mPwNoi07' --body '{"amount": 8, "currencyCode": "zDK56JFI", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 74, "vat": 5}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'N0DsaD5F' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Steam' --body '{"allowedBalanceOrigins": ["Other"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "e9OYEJVs", "eventTopic": "Yffmhyx6", "maxAwarded": 70, "maxAwardedPerUser": 82, "namespaceExpression": "rM4S3cB8", "rewardCode": "m17hEeLL", "rewardConditions": [{"condition": "goaYth6z", "conditionName": "cf8eA45O", "eventName": "MvObWejo", "rewardItems": [{"duration": 75, "itemId": "fGeegJMa", "quantity": 54}]}], "userIdExpression": "GR6D1ZoZ"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'True' --login_with_auth "Bearer foo"
platform-get-reward 'ZQkJ8DSq' --login_with_auth "Bearer foo"
platform-update-reward 'FnhdKvjF' --body '{"description": "CFbSFlEW", "eventTopic": "oMPdgK5z", "maxAwarded": 27, "maxAwardedPerUser": 25, "namespaceExpression": "hnFSpCTl", "rewardCode": "DNBOcygv", "rewardConditions": [{"condition": "v2LAgfBG", "conditionName": "VzanbKYs", "eventName": "B0gqJ8Vh", "rewardItems": [{"duration": 88, "itemId": "ikJl2p9r", "quantity": 54}]}], "userIdExpression": "x8N5egap"}' --login_with_auth "Bearer foo"
platform-delete-reward 'qxDy4cLf' --login_with_auth "Bearer foo"
platform-check-event-condition 'NjzzEZYA' --body '{"payload": {"8jIkMJb7": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'cZ2bPsaL' --body '{"conditionName": "LpEBVEMk", "userId": "5AsKaF2P"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "44lXkI3z", "defaultRegion": "diRiC5Ib", "description": "Pit71JWl", "supportedLanguages": ["YCoi4nDf"], "supportedRegions": ["Pu5V6QSY"], "title": "xEVOryVu"}' --login_with_auth "Bearer foo"
platform-import-store --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'ZYmgUeEP' --login_with_auth "Bearer foo"
platform-update-store 'B5AGPgvk' --body '{"defaultLanguage": "0Zthaj0E", "defaultRegion": "BA4azRz0", "description": "d56smobo", "supportedLanguages": ["r4p1PlgQ"], "supportedRegions": ["B9EcNGOe"], "title": "BRY6G5ae"}' --login_with_auth "Bearer foo"
platform-delete-store '07deDLaZ' --login_with_auth "Bearer foo"
platform-query-changes '8JCvbeTf' --login_with_auth "Bearer foo"
platform-publish-all 'W0hgzrab' --login_with_auth "Bearer foo"
platform-publish-selected 'LJxEwJrE' --login_with_auth "Bearer foo"
platform-select-all-records 'BmQ64haN' --login_with_auth "Bearer foo"
platform-get-statistic 'OzlGu68U' --login_with_auth "Bearer foo"
platform-unselect-all-records 'YyupjdDe' --login_with_auth "Bearer foo"
platform-select-record 'tnoT0rfW' 'tVPwQfq6' --login_with_auth "Bearer foo"
platform-unselect-record 'V92gbfPo' 'uNdmP7fc' --login_with_auth "Bearer foo"
platform-clone-store 'kVnuDGvY' --login_with_auth "Bearer foo"
platform-export-store 'Ib1p5tcR' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '5z8ZJLjS' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'HcaR3X4t' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'Zmwr0QmO' --body '{"orderNo": "nsEg49eX"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'p0xQkZ2J' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'juwWWy0t' --body '{"count": 93, "orderNo": "11PCeSrv"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'ejUKwVfF' --body '{"achievements": [{"id": "37Vr7mkD", "value": 50}], "steamUserId": "FBI1Vwhk"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'VSKDlNFO' 'UHBJsvTs' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'qk9hg4hj' --body '{"achievements": [{"id": "6nUdebW6", "percentComplete": 93}], "serviceConfigId": "skbPkkZA", "titleId": "k01f1KxC", "xboxUserId": "tWADU2gu"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'N6U9w13W' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '1K9TZQ4q' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'RLEi5wow' --login_with_auth "Bearer foo"
platform-anonymize-integration 'E36rfmM0' --login_with_auth "Bearer foo"
platform-anonymize-order 'CCs35TPU' --login_with_auth "Bearer foo"
platform-anonymize-payment 'PLmsY8Wg' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'wSx1DI5G' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'H9bv9ZTo' --login_with_auth "Bearer foo"
platform-query-user-entitlements '2HpA6pzj' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'HpZO0E9i' --body '[{"endDate": "1989-02-17T00:00:00Z", "grantedCode": "RPJK3nBa", "itemId": "e3GOgbQr", "itemNamespace": "qra0Ptkf", "language": "oPy_PLNb", "quantity": 47, "region": "mBkfMtC6", "source": "GIFT", "startDate": "1986-05-11T00:00:00Z", "storeId": "0kPOkORm"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id '2XjlNEE5' 'ecPzAmi0' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'ySJHfPlo' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'YK4MgIsD' 'SFMPyMhy' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'w1OLZPVw' 'wxH4BIDJ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'uDoShMMf' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'tll8N0Vv' '["ChHz9urm"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 't7QWvE8s' '6Uz8BRuY' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'WDTtL6MT' 'TRkCbb9S' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids '5Q1IVHGT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku '88prREBg' 'YOWdHJ9J' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'umohtU13' 'gf7TRigN' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'Zj5w5y3H' 'mK8QVOa6' --login_with_auth "Bearer foo"
platform-update-user-entitlement '2eQZtbLL' 'cF671WLt' --body '{"endDate": "1981-09-27T00:00:00Z", "nullFieldList": ["ecczopFm"], "startDate": "1973-12-17T00:00:00Z", "status": "INACTIVE", "useCount": 30}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'cJBZyi3m' 'LC4Kzeki' --body '{"options": ["SzeyolnO"], "useCount": 85}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 't0joVHgC' 'ytC6lRG9' --login_with_auth "Bearer foo"
platform-enable-user-entitlement '8YxnHbRd' 'oTKKeuSj' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'fZe9i1os' 'ghF1hzi1' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'Nl47syJ5' 'ibzSHZeC' --login_with_auth "Bearer foo"
platform-fulfill-item 'LIvWPVRs' --body '{"duration": 7, "endDate": "1986-05-10T00:00:00Z", "itemId": "A61yTrMg", "itemSku": "sycTgmPz", "language": "c20EuO5d", "order": {"currency": {"currencyCode": "MqGDlSZP", "currencySymbol": "Y07rEVSj", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "jL6ZbXjG"}, "ext": {"6DSmpp3o": {}}, "free": false}, "orderNo": "8htaRLxt", "origin": "Xbox", "quantity": 42, "region": "FkESTULa", "source": "OTHER", "startDate": "1999-08-31T00:00:00Z", "storeId": "1Le7cR7q"}' --login_with_auth "Bearer foo"
platform-redeem-code '6PWhZmmK' --body '{"code": "z41i1Tp7", "language": "IPj", "region": "ViJvLYW0"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'kdmlk2lu' --body '{"origin": "Other", "rewards": [{"currency": {"currencyCode": "SOOA2VOZ", "namespace": "BoNbB98P"}, "item": {"itemId": "uSGykqFz", "itemSku": "PwSMXT53", "itemType": "bBuL38be"}, "quantity": 80, "type": "ITEM"}], "source": "PROMOTION"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'HZQ9LYt6' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'w23Wf8iE' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'Qo72sH0a' --body '{"itemIdentityType": "ITEM_ID", "language": "dL-SFiU-jP", "productId": "K1AyRlzs", "region": "rRXEFZiv", "type": "STEAM"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'VicNrats' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'vvHLmIoh' --body '{"currencyCode": "fNISLXMD", "currencyNamespace": "WDdm5FE4", "discountedPrice": 22, "ext": {"liQMnutJ": {}}, "itemId": "bpEo4mUN", "language": "HFtdml2x", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 96, "quantity": 0, "region": "cJc3Fm7Z", "returnUrl": "548uuKgo", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'BqS5uIdC' 'bwCeeq9o' --login_with_auth "Bearer foo"
platform-get-user-order 'uEdDtjOg' 'sypLkm2Z' --login_with_auth "Bearer foo"
platform-update-user-order-status 'Yew5H7Zm' '0gnYyj6M' --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "9G1ntyeb"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'voeHenAA' 'LKt7EfxI' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'H446oUnP' '2S74unXw' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'g0JKqVWW' '1rjK1epw' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'kAvcsYvb' 'gfBVPpTa' --body '{"additionalData": {"cardSummary": "8Yuq7TKi"}, "authorisedTime": "1990-04-04T00:00:00Z", "chargebackReversedTime": "1983-02-02T00:00:00Z", "chargebackTime": "1990-05-19T00:00:00Z", "chargedTime": "1990-08-21T00:00:00Z", "createdTime": "1999-12-25T00:00:00Z", "currency": {"currencyCode": "baUxTCTn", "currencySymbol": "g0xjtdBr", "currencyType": "REAL", "decimals": 36, "namespace": "3Kiykt2C"}, "customParameters": {"k2gOlSat": {}}, "extOrderNo": "ECZ2UgwQ", "extTxId": "LqDqYSxT", "extUserId": "PuVlBqir", "issuedAt": "1972-05-07T00:00:00Z", "metadata": {"3yxnsETl": "1SvhQuds"}, "namespace": "jIhXdxiS", "nonceStr": "oWpnnxgX", "paymentMethod": "7BCPMqzQ", "paymentMethodFee": 68, "paymentOrderNo": "xibhpNYs", "paymentProvider": "STRIPE", "paymentProviderFee": 6, "paymentStationUrl": "B3IkjuaZ", "price": 32, "refundedTime": "1974-10-12T00:00:00Z", "salesTax": 17, "sandbox": false, "sku": "rZkSSKgP", "status": "CHARGED", "statusReason": "xCR77G9d", "subscriptionId": "5CA1GORS", "subtotalPrice": 2, "targetNamespace": "L9n0dbWD", "targetUserId": "EupmdLQz", "tax": 82, "totalPrice": 27, "totalTax": 79, "txEndTime": "1973-08-08T00:00:00Z", "type": "AcWArbkC", "userId": "fdHIZb03", "vat": 28}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'tqmBuS9V' '2pCZ23UH' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'mk0lpJ4J' --body '{"currencyCode": "Ll01qi7L", "currencyNamespace": "2oDUoVRU", "customParameters": {"b39j22P4": {}}, "description": "Sp09cKmj", "extOrderNo": "RUbZVBVS", "extUserId": "7OK2Zrdc", "itemType": "EXTENSION", "language": "Km", "metadata": {"ROWZ2KUT": "qkK2eFaG"}, "notifyUrl": "LoSmEEPb", "omitNotification": true, "platform": "wJsyUie6", "price": 10, "recurringPaymentOrderNo": "ZgLllUPs", "region": "O8lg46Si", "returnUrl": "7006vL2w", "sandbox": false, "sku": "ajDAOx0i", "subscriptionId": "JjYleakt", "title": "qv2WkljQ"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'uD5mnJON' 'qHGq8mB7' --body '{"description": "mF2lMFca"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'ghFXJIJf' --body '{"code": "lRHFcsIq", "orderNo": "Cy4xDifS"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'SQ5On2cc' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'Ecl3xeiO' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '4bwF5JOj' --body '{"grantDays": 65, "itemId": "oGxKM3qM", "language": "ce5tfLcp", "reason": "jFZMKCbp", "region": "0pEbLCLF", "source": "pHxMYF83"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '6075xEpz' 'dnYtpja5' --login_with_auth "Bearer foo"
platform-get-user-subscription 'ig2isQZg' 'a6Vy76iz' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'PiQRjYa8' 'fv5fIt22' --login_with_auth "Bearer foo"
platform-cancel-subscription 'tIZhjhgk' 'igW22zXM' --body '{"immediate": false, "reason": "bcM0GIAL"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'IbFCQgBc' 'LNT6iOQV' --body '{"grantDays": 100, "reason": "x5rW2gMs"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'I1aYBitS' 'n3UDeKj9' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '7I4WYXLq' 'jN7ktOBT' --body '{"additionalData": {"cardSummary": "raBxWRTV"}, "authorisedTime": "1981-08-30T00:00:00Z", "chargebackReversedTime": "1979-09-13T00:00:00Z", "chargebackTime": "1976-10-22T00:00:00Z", "chargedTime": "1985-06-25T00:00:00Z", "createdTime": "1993-10-12T00:00:00Z", "currency": {"currencyCode": "XBrXiQcd", "currencySymbol": "9IW8kiCK", "currencyType": "REAL", "decimals": 85, "namespace": "JWZBvcq1"}, "customParameters": {"ETvWBxYZ": {}}, "extOrderNo": "Jh7B8gbn", "extTxId": "Su9M2OxD", "extUserId": "2udaeYpC", "issuedAt": "1995-12-15T00:00:00Z", "metadata": {"Miy87CTq": "EQBg36my"}, "namespace": "3sY2clrD", "nonceStr": "cain0cOV", "paymentMethod": "F1zHwDTI", "paymentMethodFee": 37, "paymentOrderNo": "J1Q0kphM", "paymentProvider": "ALIPAY", "paymentProviderFee": 12, "paymentStationUrl": "SP2SLcuA", "price": 83, "refundedTime": "1981-08-11T00:00:00Z", "salesTax": 50, "sandbox": true, "sku": "2nbg8C7M", "status": "CHARGE_FAILED", "statusReason": "ywhu6MjO", "subscriptionId": "juGzo1Fz", "subtotalPrice": 39, "targetNamespace": "U0aSn98N", "targetUserId": "8qOUA0z9", "tax": 86, "totalPrice": 0, "totalTax": 58, "txEndTime": "1973-04-21T00:00:00Z", "type": "gT8LRQkM", "userId": "nG1LZyF2", "vat": 24}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'dYY6ZMfu' 'TYTKsue4' --body '{"count": 32, "orderNo": "BEBNAV5B"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'Te6ec1zA' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '92URCLSG' 'PmRBZWun' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'HW7MYvr6' 'QA7Ppepc' --body '{"amount": 67, "expireAt": "1984-02-01T00:00:00Z", "origin": "Stadia", "reason": "CdeyfUpg", "source": "GIFT"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'Ppf8nxKJ' '3dnmtPwa' --body '{"amount": 100, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-sync-orders 'PEKMhhu9' 'a6f3xJNt' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["UlKLlIIA"], "apiKey": "eHbm5M6L", "authoriseAsCapture": true, "blockedPaymentMethods": ["Y1VMuIEc"], "clientKey": "Rls68M3M", "dropInSettings": "PMRPBepy", "liveEndpointUrlPrefix": "yMz6zfR1", "merchantAccount": "pvTYYtDO", "notificationHmacKey": "iEi4RuEc", "notificationPassword": "HCSGhpOZ", "notificationUsername": "QFlwOiuK", "returnUrl": "GDFgK49Y", "settings": "uKnXks0m"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "8ANrcRal", "privateKey": "7ta3fojA", "publicKey": "3h4MMW3A", "returnUrl": "J5zlsFBw"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "jvLYvmg6", "secretKey": "avudQFF1"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "CPNY9u2d", "clientSecret": "VYdglOOo", "returnUrl": "CeK0kPKm", "webHookId": "BqVux3lX"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["cD8aertA"], "publishableKey": "VCqs8XT8", "secretKey": "xy3nJ06K", "webhookSecret": "kseA0ARj"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "9ricfayv", "key": "nhi8MDdY", "mchid": "4WLHoaUk", "returnUrl": "YnQp5egd"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "mVE8Imiv", "flowCompletionUrl": "NtQxqWRK", "merchantId": 66, "projectId": 28, "projectSecretKey": "hODoWOr9"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '8kjBUas9' --login_with_auth "Bearer foo"
platform-update-adyen-config 'jjz2Frgi' --body '{"allowedPaymentMethods": ["aGrcB7dI"], "apiKey": "OVKIPSJJ", "authoriseAsCapture": false, "blockedPaymentMethods": ["5W8tKH8o"], "clientKey": "u9SdbxSX", "dropInSettings": "crEFCwqe", "liveEndpointUrlPrefix": "GNLdIBRd", "merchantAccount": "liFQVMKE", "notificationHmacKey": "zVUWlUWD", "notificationPassword": "s2x1EQU0", "notificationUsername": "oepEvcja", "returnUrl": "SgEh6jJn", "settings": "FxinIHJ1"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'o7aq5Zzn' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'd5eacobT' --body '{"appId": "suRlhreQ", "privateKey": "VFID3o8h", "publicKey": "JWVjKIOA", "returnUrl": "w70DvAHh"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'SGWUvzq1' --login_with_auth "Bearer foo"
platform-update-checkout-config 'Za3IBC4v' --body '{"publicKey": "QFsUJPfi", "secretKey": "aJp1rt7O"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'BgBCe6N0' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'eI65Mn5t' --body '{"clientID": "ngEYXgPV", "clientSecret": "T5CqXDZB", "returnUrl": "VMJyJeKF", "webHookId": "O92YDtaZ"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'vJoKS0Ox' --login_with_auth "Bearer foo"
platform-update-stripe-config 'yipZuO4N' --body '{"allowedPaymentMethodTypes": ["9S2YCgHa"], "publishableKey": "6XBcvGRY", "secretKey": "k5rUtWHC", "webhookSecret": "nhmzzppV"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '7tKNKYUQ' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'VBXymWcN' --body '{"appId": "lHaFxYaG", "key": "HUpmBFyO", "mchid": "rFKtxGNA", "returnUrl": "i0fq4xCh"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'PLd2lOop' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'c7XoVpdd' --login_with_auth "Bearer foo"
platform-update-xsolla-config '6rCpyMrn' --body '{"apiKey": "H9YHXh7K", "flowCompletionUrl": "nCVOKY2z", "merchantId": 37, "projectId": 54, "projectSecretKey": "RGtd8QY2"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'OLbijrvf' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'r8hknjWU' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "GLjdBxLM", "region": "079pDAbT", "sandboxTaxJarApiToken": "gmsEYEq2", "specials": ["CHECKOUT"], "taxJarApiToken": "YK1vYm9f", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'QoemnQG0' --body '{"aggregate": "ADYEN", "namespace": "H0NVM9VE", "region": "HTPqDhkc", "sandboxTaxJarApiToken": "u5vnz6Gi", "specials": ["ADYEN"], "taxJarApiToken": "oBJHml0L", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'Pi4mqhru' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "iCZLGGP5", "taxJarApiToken": "UXkHNTMa", "taxJarEnabled": false, "taxJarProductCodesMapping": {"p5SbonsU": "JKADr60E"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'kdFrpLsG' 't9yTXWUS' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'CQcMsHN7' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'reI22ks7' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'I12tAZc8' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'sxxLx9XQ' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'eqNWLm8c' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'NJbYH5J4' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["WiJLv9Nv"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'Hwtw2Mjc' 'y9ZL6Zs5' --login_with_auth "Bearer foo"
platform-public-get-app 'Bu2XYopL' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'WZeUKJJN' --login_with_auth "Bearer foo"
platform-public-get-item 'ftRpGgk1' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "iseREzzR", "paymentProvider": "WXPAY", "returnUrl": "9wmuHddy", "ui": "OdibI1LV", "zipCode": "yqbdY8DG"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'ZKAuoIKz' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '3Pp3zLWU' --login_with_auth "Bearer foo"
platform-pay 'xMzMtSmM' --body '{"token": "mZP8nG0F"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'oQP8q7aS' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'b85gAh9R' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'D3ZzN6N1' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'iJ8ltt9I' 'RqCflgln' 'STRIPE' '5f0s5H6l' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'Cf3QHa11' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'LLCgw5av' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '4LExdabD' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '8g2cvHfM' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'RupDA5xb' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'js3XRdHU' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'J0GCmflI' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'XkgJ6zkT' --body '{"epicGamesJwtToken": "woakq7sE"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'ejFZ1NtO' --body '{"serviceLabel": 78}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'Xb9w9hsQ' --body '{"appId": "HszIsfrl", "steamId": "zKpQdd58"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'dZP5Rvri' --body '{"xstsToken": "nNtvBtqF"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'SkA68mIV' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'YJ5pSVxB' 'sLhty3pe' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'cToXA4M1' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'UFPhgo7Z' '6mwNC4FY' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '69mM87jo' 'JNOGB83N' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 's6Hl5Poa' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'b6lKoVqN' 'BUzIxOfg' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'lquS2q2D' 'oWr9zvFt' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'Ka2mOAqO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'okV1plxQ' '2YriTPfi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'pD67jI2h' 'iZkrtLnh' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '2U1RQlMx' 'kfNMPNtq' --body '{"options": ["v2TMz1b7"], "useCount": 89}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'nzkXOek8' --body '{"code": "3Igm1wkS", "language": "yVa-BuDC", "region": "bvXcwcgM"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'qOXMziXr' --body '{"excludeOldTransactions": false, "language": "eCc_476", "productId": "Te4kLcuq", "receiptData": "L40NYgek", "region": "RavpaGTA", "transactionId": "9BTyCCyN"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '4Fw9i6mI' --body '{"epicGamesJwtToken": "2W3tjjCq"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'PVyYs01h' --body '{"autoAck": true, "language": "wWQ_mdpa_030", "orderId": "WFspkU5k", "packageName": "n6PlPqD4", "productId": "AgfasBfc", "purchaseTime": 23, "purchaseToken": "BhZjZbLn", "region": "mghKwPyV"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'In3qaHP7' --body '{"currencyCode": "KNulyfrE", "price": 0.6145895625732333, "productId": "QkpcaWHf", "serviceLabel": 90}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement '2xOOljn7' --body '{"appId": "c6c9efJI", "language": "zXRG-KPHf_vP", "region": "Vc2HBBmj", "stadiaPlayerId": "6cEi02hX"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'l42ubCRf' --body '{"appId": "y4GjKn5I", "currencyCode": "tHXLDZqp", "language": "HQNr", "price": 0.9947175427070248, "productId": "uQOGMOEz", "region": "mdjNhT0S", "steamId": "46kqyfMB"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'SaZc4SA1' --body '{"gameId": "6M8gQCD7", "language": "bh_nKFC_456", "region": "XCiTfjor"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'LFqTmIUF' --body '{"currencyCode": "UoonHBI1", "price": 0.8603256397158772, "productId": "ZFHfm0F8", "xstsToken": "vS2BrZ3n"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'q88YSSD7' --login_with_auth "Bearer foo"
platform-public-create-user-order 'zV0C8FvV' --body '{"currencyCode": "U3kRXBGP", "discountedPrice": 99, "ext": {"Idft1biZ": {}}, "itemId": "HuhWyFPH", "language": "xC-HyEu_Ap", "price": 86, "quantity": 98, "region": "ww9vq9nM", "returnUrl": "a2Btgwyu"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'f2fjV30S' 'Lxi7uyha' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'eFtcO9XN' 'y63QO9vW' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '0ck7TEDE' '8LeEQBeG' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'PLiE6tHC' 'r0GPFvT0' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'SAK91y5v' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'CeBIJq0B' 'card' 'I6c5cre9' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'ealHOZph' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'cLncnjnm' --body '{"currencyCode": "yU8FSxXd", "itemId": "CrskoFqn", "language": "WQ-zA", "region": "hmbVPm2g", "returnUrl": "7xAFfRRL", "source": "UjfWS9sf"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'tIfHGe5b' 'UTSXOv12' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'PMcRO6E2' 'Mkre5q7F' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'vaACp6he' '0fzjkPNN' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'S0BfgF6i' 'nIRsZ5hr' --body '{"immediate": true, "reason": "NzVszGVP"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '5P1iwhcf' '30C1KHRZ' --login_with_auth "Bearer foo"
platform-public-get-wallet 'HMGy5vbf' 'ZvYIFFct' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'EKOLxSRx' 'e0wmWBMc' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
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
echo "1..354"

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
    --body '{"context": {"item": {"appId": "NiWoobB6", "appType": "DLC", "baseAppId": "6alTQcP0", "boothName": "EpE9wGNV", "boundItemIds": ["wkgfJJ2H"], "categoryPath": "IalfzgRp", "clazz": "Tf9lxF1J", "createdAt": "1991-08-08T00:00:00Z", "description": "izXZtrGe", "displayOrder": 75, "entitlementType": "DURABLE", "ext": {"OH24nneZ": {}}, "features": ["HFeRld0b"], "fresh": true, "images": [{"as": "7JxWYzaE", "caption": "aimvokcW", "height": 98, "imageUrl": "59kwiYHg", "smallImageUrl": "HT6Ivd0f", "width": 64}], "itemId": "pU209nVR", "itemIds": ["clumQTFv"], "itemQty": {"r5rRyYza": 78}, "itemType": "COINS", "language": "z3PjMx2T", "listable": true, "localExt": {"FRUCXFkr": {}}, "longDescription": "uxegpkcX", "maxCount": 57, "maxCountPerUser": 10, "name": "zgcvv0WE", "namespace": "5EQhcomP", "optionBoxConfig": {"boxItems": [{"count": 89, "itemId": "1E7cpsLg", "itemSku": "r2zEnjyR"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 56, "comparison": "isNot", "name": "MDcZvwwf", "predicateType": "EntitlementPredicate", "value": "U98In31m", "values": ["F4jlwKyG"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 90, "fixedTrialCycles": 63, "graceDays": 23}, "region": "5q1Np0sT", "regionData": [{"currencyCode": "1X8J2eAW", "currencyNamespace": "Ozjmh9Uz", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1974-04-28T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1982-04-10T00:00:00Z", "discountedPrice": 91, "expireAt": "1976-02-05T00:00:00Z", "price": 93, "purchaseAt": "1977-10-12T00:00:00Z", "trialPrice": 63}], "seasonType": "PASS", "sku": "oDxGik2J", "stackable": false, "status": "INACTIVE", "tags": ["WePq6103"], "targetCurrencyCode": "PONKIS7F", "targetItemId": "9emW4R15", "targetNamespace": "tAsiG31C", "thumbnailUrl": "EyUOuOZh", "title": "mnHkvek6", "updatedAt": "1983-12-31T00:00:00Z", "useCount": 20}, "namespace": "Nnoclxs9", "order": {"currency": {"currencyCode": "kxcvIpV7", "currencySymbol": "mCYfWKjY", "currencyType": "VIRTUAL", "decimals": 36, "namespace": "QYsGyhEO"}, "ext": {"ntEkedM1": {}}, "free": true}, "source": "ACHIEVEMENT"}, "script": "FqvjxbT3", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'VdaBN5RS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'jhcjuDvN' \
    --body '{"grantDays": "rXL845jf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'h5tZ0hqJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'LjQUmoYU' \
    --body '{"grantDays": "nC849OBN"}' \
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
    --body '{"clazz": "uLZtofGA", "dryRun": true, "fulfillmentUrl": "aMpBQArU", "itemType": "OPTIONBOX", "purchaseConditionUrl": "QRy5Qz5V"}' \
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
    'yfBpHjtv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'FwKSJyZe' \
    --body '{"clazz": "qvpevcVX", "dryRun": true, "fulfillmentUrl": "s9LTorIy", "purchaseConditionUrl": "x23LhLy7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'ds3g3BuH' \
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
    --body '{"description": "TPF19dBY", "items": [{"extraSubscriptionDays": 62, "itemId": "ws5Ya4eO", "itemName": "wWqW8HiL", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 96, "maxSaleCount": 67, "name": "ccgM5kYu", "redeemEnd": "1998-10-04T00:00:00Z", "redeemStart": "1978-10-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["3KCyplY1"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'cKDCVaqr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'VeegT3uG' \
    --body '{"description": "DIIcvuuo", "items": [{"extraSubscriptionDays": 21, "itemId": "t8TC38mY", "itemName": "oUanQT4M", "quantity": 24}], "maxRedeemCountPerCampaignPerUser": 50, "maxRedeemCountPerCode": 27, "maxRedeemCountPerCodePerUser": 43, "maxSaleCount": 34, "name": "2jthibge", "redeemEnd": "1985-10-25T00:00:00Z", "redeemStart": "1995-05-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Lgd8Wy73"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '9QHzw0TE' \
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
    'zpd7TV5v' \
    --body '{"categoryPath": "hMM2i3DM", "localizationDisplayNames": {"6etfI7Tz": "C3sKmtsy"}}' \
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
    'EKdO6HNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '3zGu71qT' \
    'SSJEbWlE' \
    --body '{"localizationDisplayNames": {"Tp9XOCA1": "X3HHMTla"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'kAWQfBuB' \
    'AOCjBfYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'cplye2Ga' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'PNzkrgBH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '4icml6L3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    '6Vg2F2Q9' \
    --body '{"quantity": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'ZDJg1OT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '109ot70T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'evJgsb2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'yFfJ6qcH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'ABdGtV9j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'APqon7Um' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'LNy9PkF9' \
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
    --body '{"currencyCode": "SnlbWNcA", "currencySymbol": "xv8uHDqJ", "currencyType": "VIRTUAL", "decimals": 100, "localizationDescriptions": {"C7rznwNd": "LhqXvXVn"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'jvc0BMeg' \
    --body '{"localizationDescriptions": {"JpW1Zeuh": "pLX1BHZ4"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'hnOmmyXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '6XtjNCqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'k9TPUKcD' \
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
    --body '{"data": [{"id": "TfR7dpUE", "rewards": [{"currency": {"currencyCode": "o2Oe08Hp", "namespace": "eJBfG0nG"}, "item": {"itemId": "ZHe5lw2T", "itemSku": "lkPIxL9v", "itemType": "4fpCd0Uk"}, "quantity": 14, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"kkT08Cs6": "DdXZWowB"}}]}' \
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
    'gZizMvwH' \
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
    --body '{"bundleId": "szf84MAm", "password": "ayJJ6vzD"}' \
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
    --body '{"sandboxId": "TXxsyIaT"}' \
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
    --body '{"applicationName": "gp0pwnEJ", "serviceAccountId": "L15kxO4o"}' \
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
    --body '{"data": [{"itemIdentity": "VUPng5Js", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"kI47jO1w": "uAFuZcUw"}}]}' \
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
    --body '{"environment": "PteKdQgU"}' \
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
    --body '{"appId": "TF33fYWZ", "publisherAuthenticationKey": "fQMAnziT"}' \
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
    --body '{"clientId": "haE2btn0", "clientSecret": "up9GeTQ7", "organizationId": "XymDSQNY"}' \
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
    --body '{"relyingPartyCert": "XNEpZyFh"}' \
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

#- 80 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'IeqiNHtV' \
    --body '{"categoryPath": "Snhxby8F", "targetItemId": "6xF8MhbJ", "targetNamespace": "AYEDN1xs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'SyncInGameItem' test.out

#- 81 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'zppR69ns' \
    --body '{"appId": "KAS5zKsT", "appType": "DEMO", "baseAppId": "7b3v2fkZ", "boothName": "Ikr06ojU", "categoryPath": "toVJLGXe", "clazz": "komvwD84", "displayOrder": 25, "entitlementType": "CONSUMABLE", "ext": {"5vIkDZYr": {}}, "features": ["YEf1xYnl"], "images": [{"as": "xHHXjFoX", "caption": "twKW6AOn", "height": 32, "imageUrl": "nWCuXMWq", "smallImageUrl": "G8fNprJx", "width": 27}], "itemIds": ["AFexNou1"], "itemQty": {"AicsQjKx": 74}, "itemType": "CODE", "listable": false, "localizations": {"tHEw0aCQ": {"description": "pU6EGOW0", "localExt": {"VAI87DPH": {}}, "longDescription": "0fLLiUqz", "title": "ay0gET8T"}}, "maxCount": 48, "maxCountPerUser": 61, "name": "ej7DsqsT", "optionBoxConfig": {"boxItems": [{"count": 42, "itemId": "NKAXqfqM", "itemSku": "JHGeHaN2"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 41, "fixedTrialCycles": 38, "graceDays": 24}, "regionData": {"9AAWDcDv": [{"currencyCode": "3ISBgZCA", "currencyNamespace": "f2pWOWs4", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1987-02-08T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1981-09-23T00:00:00Z", "discountedPrice": 34, "expireAt": "1971-10-20T00:00:00Z", "price": 77, "purchaseAt": "1980-02-19T00:00:00Z", "trialPrice": 54}]}, "seasonType": "PASS", "sku": "vCHMtF15", "stackable": false, "status": "ACTIVE", "tags": ["eywiPE1W"], "targetCurrencyCode": "UR1PTFfJ", "targetNamespace": "J46kzfqa", "thumbnailUrl": "pbByIKoY", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'CreateItem' test.out

#- 82 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'YtTWJA3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetItemByAppId' test.out

#- 83 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'QueryItems' test.out

#- 84 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'ListBasicItemsByFeatures' test.out

#- 85 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'FCDgWOpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetItemBySku' test.out

#- 86 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    '3yPQfqbe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetLocaleItemBySku' test.out

#- 87 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'VG7i4VTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemIdBySku' test.out

#- 88 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetBulkItemIdBySkus' test.out

#- 89 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'huFYhEgQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkGetLocaleItems' test.out

#- 90 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetAvailablePredicateTypes' test.out

#- 91 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'Bb9Hni6l' \
    --body '{"itemIds": ["DMj9gvkB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'ValidateItemPurchaseCondition' test.out

#- 92 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'cQjQ56Ru' \
    'AvUlMWp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'SearchItems' test.out

#- 93 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'QueryUncategorizedItems' test.out

#- 94 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'WGpZxCe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetItem' test.out

#- 95 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'KsmXtGBb' \
    'KrV58TIT' \
    --body '{"appId": "hQ52PYNk", "appType": "DLC", "baseAppId": "BCjirw4h", "boothName": "mfMSl2bE", "categoryPath": "TuFLFOfd", "clazz": "l0yRndbO", "displayOrder": 87, "entitlementType": "DURABLE", "ext": {"bYsHx3BI": {}}, "features": ["gGuo817l"], "images": [{"as": "ZA58OI2L", "caption": "MYRX16nf", "height": 56, "imageUrl": "J833JKRN", "smallImageUrl": "cdpuCxSD", "width": 62}], "itemIds": ["WMVcsOZl"], "itemQty": {"S0ulerU6": 6}, "itemType": "EXTENSION", "listable": true, "localizations": {"LngbZxOG": {"description": "xFwnmB60", "localExt": {"ea7XItZS": {}}, "longDescription": "8KIu9T60", "title": "4oPajgyS"}}, "maxCount": 15, "maxCountPerUser": 72, "name": "uLB7pQLZ", "optionBoxConfig": {"boxItems": [{"count": 17, "itemId": "WVmc8PVw", "itemSku": "ShVQz7FY"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 94, "fixedTrialCycles": 95, "graceDays": 89}, "regionData": {"cVv3YTBM": [{"currencyCode": "4teOpqev", "currencyNamespace": "sWvMhihe", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1990-08-11T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1971-04-06T00:00:00Z", "discountedPrice": 51, "expireAt": "1974-10-27T00:00:00Z", "price": 16, "purchaseAt": "1991-07-22T00:00:00Z", "trialPrice": 19}]}, "seasonType": "TIER", "sku": "fu1y1d77", "stackable": true, "status": "ACTIVE", "tags": ["HyenhbRZ"], "targetCurrencyCode": "4a9UjjjU", "targetNamespace": "0EggYLcG", "thumbnailUrl": "iEDZbDl9", "useCount": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateItem' test.out

#- 96 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'ZH3M87v0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteItem' test.out

#- 97 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'FhdKDEfX' \
    --body '{"count": 87, "orderNo": "haO0AYSq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'AcquireItem' test.out

#- 98 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'vcV2Lqfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetApp' test.out

#- 99 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'CX28Je4k' \
    'yPQjgDJN' \
    --body '{"carousel": [{"alt": "OEMtdEtN", "previewUrl": "4sEebnQu", "thumbnailUrl": "cgaop5NE", "type": "image", "url": "hurScNiU", "videoSource": "vimeo"}], "developer": "nJUewUVh", "forumUrl": "kGRRTgLC", "genres": ["Action"], "localizations": {"9evywZyw": {"announcement": "unLImNhy", "slogan": "Zsb7YhhQ"}}, "platformRequirements": {"bDxLRKxz": [{"additionals": "UtpKDC8g", "directXVersion": "l2otjUWK", "diskSpace": "xgW6n8AJ", "graphics": "aeqxTPgZ", "label": "KFi3SBGl", "osVersion": "CD4ig5ZR", "processor": "oJd1as1W", "ram": "kfh3l8Hy", "soundCard": "GWZTdpmT"}]}, "platforms": ["Linux"], "players": ["Single"], "primaryGenre": "RPG", "publisher": "FjTIIKcX", "releaseDate": "1976-07-06T00:00:00Z", "websiteUrl": "PfdDyjJ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateApp' test.out

#- 100 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'wwrYeljM' \
    'yoeb3gsM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DisableItem' test.out

#- 101 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'OMdqbt4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetItemDynamicData' test.out

#- 102 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'nuFr18ij' \
    'p3CmzrfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'EnableItem' test.out

#- 103 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'Ia1vi9ok' \
    'y2P7fIgB' \
    'RSBlxuko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'FeatureItem' test.out

#- 104 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'OTCosjAX' \
    'o6ljBVW8' \
    'r7nyNcVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'DefeatureItem' test.out

#- 105 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '6ZB3bGHu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetLocaleItem' test.out

#- 106 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'pBuAL2av' \
    'XKOjwGRJ' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 32, "comparison": "includes", "name": "Q9azOreT", "predicateType": "SeasonPassPredicate", "value": "viZmgm0l", "values": ["8Yr4wmgi"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'UpdateItemPurchaseCondition' test.out

#- 107 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'wIF5Zx5T' \
    --body '{"orderNo": "IIhBtL3z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'ReturnItem' test.out

#- 108 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'QueryKeyGroups' test.out

#- 109 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "T6xRqyV0", "name": "tlLaMYL1", "status": "ACTIVE", "tags": ["95v9mOiI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'CreateKeyGroup' test.out

#- 110 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'FEdQ2RKe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetKeyGroup' test.out

#- 111 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'Qy2WRztR' \
    --body '{"description": "5qztuhVa", "name": "JDWx2Odr", "status": "ACTIVE", "tags": ["hcKGIOZc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'UpdateKeyGroup' test.out

#- 112 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'B6NWffXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupDynamic' test.out

#- 113 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'Yzes2xHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ListKeys' test.out

#- 114 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '1ufZNxhb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UploadKeys' test.out

#- 115 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'QueryOrders' test.out

#- 116 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetOrderStatistics' test.out

#- 117 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'saSFtTmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetOrder' test.out

#- 118 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'If2hFQRm' \
    --body '{"description": "si02melJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'RefundOrder' test.out

#- 119 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentCallbackConfig' test.out

#- 120 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "LtV2QnPs", "privateKey": "mhFVPtJT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdatePaymentCallbackConfig' test.out

#- 121 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'QueryPaymentNotifications' test.out

#- 122 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'QueryPaymentOrders' test.out

#- 123 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "Gig12OdD", "currencyNamespace": "nxXuJoZg", "customParameters": {"OG4tOeWV": {}}, "description": "MI9K1eJ6", "extOrderNo": "xC2h6U8T", "extUserId": "gR2k2RkE", "itemType": "EXTENSION", "language": "Mq-MNUF", "metadata": {"LGUWnVBQ": "PhwwHR0q"}, "notifyUrl": "yfFcSCdk", "omitNotification": false, "platform": "e5eawFpd", "price": 66, "recurringPaymentOrderNo": "eH5p8Zx8", "region": "jy7nxGzO", "returnUrl": "TBpmmjuE", "sandbox": true, "sku": "EyDtwbtA", "subscriptionId": "8xsmmcaO", "targetNamespace": "LdFifUk9", "targetUserId": "p700jB0p", "title": "4HpK8pvu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'CreatePaymentOrderByDedicated' test.out

#- 124 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'fSxYM0Vk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'ListExtOrderNoByExtTxId' test.out

#- 125 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'uqOKrhvM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetPaymentOrder' test.out

#- 126 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'wvD04UY8' \
    --body '{"extTxId": "ghvsmSrr", "paymentMethod": "JzAi6FOu", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'ChargePaymentOrder' test.out

#- 127 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'QIBAbup1' \
    --body '{"description": "fpWsO6fW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'RefundPaymentOrderByDedicated' test.out

#- 128 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '468fWxqR' \
    --body '{"amount": 21, "currencyCode": "JDjfNhYD", "notifyType": "CHARGE", "paymentProvider": "PAYPAL", "salesTax": 90, "vat": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'SimulatePaymentOrderNotification' test.out

#- 129 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'aos4wyja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'GetPaymentOrderChargeStatus' test.out

#- 130 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetPlatformWalletConfig' test.out

#- 131 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'IOS' \
    --body '{"allowedBalanceOrigins": ["GooglePlay"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdatePlatformWalletConfig' test.out

#- 132 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ResetPlatformWalletConfig' test.out

#- 133 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "QGm25KYm", "eventTopic": "FZxQr4xb", "maxAwarded": 95, "maxAwardedPerUser": 13, "namespaceExpression": "cdU4vyIP", "rewardCode": "JeRjCj7U", "rewardConditions": [{"condition": "K5nEmwsQ", "conditionName": "tSfDqA4C", "eventName": "ysEX4VOy", "rewardItems": [{"duration": 26, "itemId": "2EkPBjC4", "quantity": 8}]}], "userIdExpression": "cHwtSGza"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'CreateReward' test.out

#- 134 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'QueryRewards' test.out

#- 135 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ExportRewards' test.out

#- 136 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'True' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ImportRewards' test.out

#- 137 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'UaDh3m2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetReward' test.out

#- 138 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'X31qVPH2' \
    --body '{"description": "VHDznf57", "eventTopic": "fQ1PY5uD", "maxAwarded": 20, "maxAwardedPerUser": 84, "namespaceExpression": "8zpNRwyc", "rewardCode": "EAShpFLp", "rewardConditions": [{"condition": "qAx1N5IG", "conditionName": "ebNuvyrg", "eventName": "hVdsSwDc", "rewardItems": [{"duration": 79, "itemId": "JRX9ZdaC", "quantity": 37}]}], "userIdExpression": "ja1J7euc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UpdateReward' test.out

#- 139 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'GSSxZJPt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeleteReward' test.out

#- 140 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'o04wTEI8' \
    --body '{"payload": {"isXmyAGW": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'CheckEventCondition' test.out

#- 141 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    '2rZ7bYvV' \
    --body '{"conditionName": "W26Oaysx", "userId": "72rwV3Md"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DeleteRewardConditionRecord' test.out

#- 142 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'ListStores' test.out

#- 143 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "XNVRDzT2", "defaultRegion": "sBbflg7c", "description": "D247c1XY", "supportedLanguages": ["YJf18StY"], "supportedRegions": ["u6wb2We3"], "title": "Q6Pm7RBk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CreateStore' test.out

#- 144 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'ImportStore' test.out

#- 145 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetPublishedStore' test.out

#- 146 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'DeletePublishedStore' test.out

#- 147 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetPublishedStoreBackup' test.out

#- 148 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'RollbackPublishedStore' test.out

#- 149 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'qWDPEP4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetStore' test.out

#- 150 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'WnZJjXdi' \
    --body '{"defaultLanguage": "Uv9owF1m", "defaultRegion": "Qrc03W7o", "description": "OdpY5ZJC", "supportedLanguages": ["hQtpD2U9"], "supportedRegions": ["IQzA2eex"], "title": "jq3TfnJ6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdateStore' test.out

#- 151 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'ryQ4wCg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteStore' test.out

#- 152 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'Itn9TYOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'QueryChanges' test.out

#- 153 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '2n8qFjjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'PublishAll' test.out

#- 154 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'Zx0FeRdm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'PublishSelected' test.out

#- 155 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'gOta6pcK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'SelectAllRecords' test.out

#- 156 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'zSPfek36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetStatistic' test.out

#- 157 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '9fIM1tcx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UnselectAllRecords' test.out

#- 158 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'wt2XqPFa' \
    'IxBgzRO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectRecord' test.out

#- 159 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'GKycdcXu' \
    'ULpvuBNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UnselectRecord' test.out

#- 160 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'zUbH0hI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'CloneStore' test.out

#- 161 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'yCEyjKXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'ExportStore' test.out

#- 162 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'QuerySubscriptions' test.out

#- 163 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'PnomAsHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'RecurringChargeSubscription' test.out

#- 164 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'pmDvt4tk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetTicketDynamic' test.out

#- 165 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'WavQ0jo1' \
    --body '{"orderNo": "7Qq6AFdE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'DecreaseTicketSale' test.out

#- 166 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '7URb19Bc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetTicketBoothID' test.out

#- 167 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'vWfPxHPQ' \
    --body '{"count": 1, "orderNo": "UClyAjfG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'IncreaseTicketSale' test.out

#- 168 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'kGwDsoo0' \
    --body '{"achievements": [{"id": "9NdZjNjj", "value": 39}], "steamUserId": "l8XIGZV3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UnlockSteamUserAchievement' test.out

#- 169 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'GBXIHxWG' \
    'X4iwwHLo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetXblUserAchievements' test.out

#- 170 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'haKvD9nN' \
    --body '{"achievements": [{"id": "eLi2tRrc", "percentComplete": 22}], "serviceConfigId": "M3o5FmkW", "titleId": "cIpWlbLN", "xboxUserId": "xQciSm2O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateXblUserAchievement' test.out

#- 171 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'biacE1Vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeCampaign' test.out

#- 172 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'VP5yWKB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeEntitlement' test.out

#- 173 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'dhO4E5cH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AnonymizeFulfillment' test.out

#- 174 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'bV6Tq3ma' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeIntegration' test.out

#- 175 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'kniWG9At' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeOrder' test.out

#- 176 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'aznHrmvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizePayment' test.out

#- 177 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '1mJZ3dLF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeSubscription' test.out

#- 178 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'xAkQrsQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeWallet' test.out

#- 179 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'CUjnXNZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'QueryUserEntitlements' test.out

#- 180 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'acdMfX6X' \
    --body '[{"endDate": "1998-05-31T00:00:00Z", "grantedCode": "a5msSId5", "itemId": "56xncCH3", "itemNamespace": "7zoQElCS", "language": "PkyP", "quantity": 69, "region": "Ib0iBSA7", "source": "PURCHASE", "startDate": "1972-10-29T00:00:00Z", "storeId": "vUFJ7qN6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GrantUserEntitlement' test.out

#- 181 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'ucqfJth4' \
    '2FD6A3kc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementByAppId' test.out

#- 182 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'hLvxRuUL' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlementsByAppType' test.out

#- 183 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'DjXJ9BFw' \
    'EyGUCv8O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementByItemId' test.out

#- 184 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '9EBlPmEN' \
    'b7inSCGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementBySku' test.out

#- 185 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'NuHpABtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'ExistsAnyUserActiveEntitlement' test.out

#- 186 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '9GgpAZjc' \
    '["g8z9cH6u"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 187 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '6SmVFciD' \
    'GufTZk7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 188 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'k6nZZgUC' \
    'Ws5b2flA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetUserEntitlementOwnershipByItemId' test.out

#- 189 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'nrsypCRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementOwnershipByItemIds' test.out

#- 190 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'fPhfO9Ea' \
    'mej28Jum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementOwnershipBySku' test.out

#- 191 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '6vaoBRuM' \
    'FZbZvy6m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'RevokeUserEntitlements' test.out

#- 192 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'J2jHxdpq' \
    'HuBibSpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlement' test.out

#- 193 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'FVnkERZ9' \
    'gwlM0hF5' \
    --body '{"endDate": "1997-06-14T00:00:00Z", "nullFieldList": ["8sFHE2tr"], "startDate": "1995-04-05T00:00:00Z", "status": "INACTIVE", "useCount": 98}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UpdateUserEntitlement' test.out

#- 194 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'S8ek4IK6' \
    'APTpbukL' \
    --body '{"options": ["Gw4HJ51V"], "useCount": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'ConsumeUserEntitlement' test.out

#- 195 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'd7JZjCvo' \
    'Cnb0By8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'DisableUserEntitlement' test.out

#- 196 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'bfDbnZRa' \
    'sK3D9LYj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'EnableUserEntitlement' test.out

#- 197 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '8f7kb4sU' \
    '5W5wrnCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlementHistories' test.out

#- 198 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '7OGhuPV9' \
    '8XUYE5mm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'RevokeUserEntitlement' test.out

#- 199 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '7bHElXpN' \
    --body '{"duration": 65, "endDate": "1986-06-13T00:00:00Z", "itemId": "LY9Nu31e", "itemSku": "lzdmX7gz", "language": "9djDT8Hp", "order": {"currency": {"currencyCode": "J3j7LyGD", "currencySymbol": "uYXVurnW", "currencyType": "VIRTUAL", "decimals": 63, "namespace": "tOvKL3NS"}, "ext": {"8Iq1rRNy": {}}, "free": true}, "orderNo": "8uvkyFCM", "origin": "Twitch", "quantity": 54, "region": "FVFMD8Rm", "source": "REDEEM_CODE", "startDate": "1992-04-01T00:00:00Z", "storeId": "ij05gCbg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'FulfillItem' test.out

#- 200 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'x9wKmx7c' \
    --body '{"code": "jHqzVYnt", "language": "MK_RIGD", "region": "wdDLkv0p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'RedeemCode' test.out

#- 201 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'xwrYjQ08' \
    --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "afjV6ihD", "namespace": "DPn2UODE"}, "item": {"itemId": "5C6wjRyw", "itemSku": "XS6QpnJB", "itemType": "Ezx6dWqA"}, "quantity": 99, "type": "CURRENCY"}], "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'FulfillRewards' test.out

#- 202 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'DSpnpvCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'QueryUserIAPOrders' test.out

#- 203 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'DbIzKZsy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'QueryAllUserIAPOrders' test.out

#- 204 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'GX6JJkbG' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Fr-dcMG-017", "productId": "ZHPU1Wj6", "region": "9C0WjiFz", "type": "GOOGLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'MockFulfillIAPItem' test.out

#- 205 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'MY3Ws9FI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryUserOrders' test.out

#- 206 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'SxHT2n4v' \
    --body '{"currencyCode": "zccwccBE", "currencyNamespace": "LwGw2Mtz", "discountedPrice": 100, "ext": {"XVSOadf8": {}}, "itemId": "DmjQPLvw", "language": "UrZEieuj", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 54, "quantity": 21, "region": "dlvUCTav", "returnUrl": "aEgxUviP", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminCreateUserOrder' test.out

#- 207 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'KQdlaAHq' \
    'UiWYY25X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'CountOfPurchasedItem' test.out

#- 208 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'BucG9pj0' \
    'lvAm79Ji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserOrder' test.out

#- 209 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'fAIygeL9' \
    'jOJQAmjx' \
    --body '{"status": "REFUND_FAILED", "statusReason": "LaTrFO9w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserOrderStatus' test.out

#- 210 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'j0k9J7zQ' \
    'lxTM4wAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'FulfillUserOrder' test.out

#- 211 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'IaBJF8VQ' \
    'fE9fBFxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserOrderGrant' test.out

#- 212 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'EcwU3hIn' \
    'PH6WGHoW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetUserOrderHistories' test.out

#- 213 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'LtuXx6HZ' \
    'KN3M9BmH' \
    --body '{"additionalData": {"cardSummary": "lEEbsM2O"}, "authorisedTime": "1982-06-16T00:00:00Z", "chargebackReversedTime": "1976-10-21T00:00:00Z", "chargebackTime": "1977-04-19T00:00:00Z", "chargedTime": "1987-05-11T00:00:00Z", "createdTime": "1989-04-17T00:00:00Z", "currency": {"currencyCode": "ensZA4Xq", "currencySymbol": "DpcNJf1z", "currencyType": "REAL", "decimals": 58, "namespace": "EAI2t0br"}, "customParameters": {"iD5LIWth": {}}, "extOrderNo": "O7lSGEhw", "extTxId": "whO3BEqq", "extUserId": "64jTipoj", "issuedAt": "1987-10-06T00:00:00Z", "metadata": {"pQoqR37z": "yvGfBwIw"}, "namespace": "Ub2vXOg1", "nonceStr": "Nyvf3E3e", "paymentMethod": "AS5oIXUf", "paymentMethodFee": 30, "paymentOrderNo": "QwWGai76", "paymentProvider": "WXPAY", "paymentProviderFee": 39, "paymentStationUrl": "XQXBCHdf", "price": 34, "refundedTime": "1977-02-08T00:00:00Z", "salesTax": 45, "sandbox": true, "sku": "1DqBG8Jj", "status": "REQUEST_FOR_INFORMATION", "statusReason": "FetBdgq9", "subscriptionId": "tnIAcoMW", "subtotalPrice": 72, "targetNamespace": "JZMKj9km", "targetUserId": "xpXX8J38", "tax": 8, "totalPrice": 10, "totalTax": 41, "txEndTime": "1994-09-13T00:00:00Z", "type": "ZB9jaeWR", "userId": "zlsDdiuR", "vat": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'ProcessUserOrderNotification' test.out

#- 214 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ZDT5q7Yc' \
    'CkB6eLuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'DownloadUserOrderReceipt' test.out

#- 215 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'sPaXohAv' \
    --body '{"currencyCode": "roQYbofy", "currencyNamespace": "TgKruutb", "customParameters": {"CF9DcEV3": {}}, "description": "SD004RRx", "extOrderNo": "WaBiyCKB", "extUserId": "sxKfO0QM", "itemType": "COINS", "language": "PVq-uNzG", "metadata": {"Thlx4DM5": "MJ2Pc8bu"}, "notifyUrl": "lwqLyhFM", "omitNotification": false, "platform": "CxvRHmTK", "price": 71, "recurringPaymentOrderNo": "8Prk4dhQ", "region": "H62tYAMH", "returnUrl": "u963tuVt", "sandbox": false, "sku": "jatnR06x", "subscriptionId": "DNs2SWbI", "title": "1hXVOD0e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'CreateUserPaymentOrder' test.out

#- 216 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'AWHAN9Pf' \
    'JYqbY1oJ' \
    --body '{"description": "TdNileWv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RefundUserPaymentOrder' test.out

#- 217 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'sff1vwfz' \
    --body '{"code": "6XV95AYc", "orderNo": "eo0eecB0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'ApplyUserRedemption' test.out

#- 218 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'xtL3jFZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserSubscriptions' test.out

#- 219 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'ELdLmYKs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserSubscriptionActivities' test.out

#- 220 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'PGmuAIxJ' \
    --body '{"grantDays": 24, "itemId": "j3UDvN6g", "language": "GLoAUPH7", "reason": "SjrEfcuD", "region": "TSj7rQ9b", "source": "tDnwEzMs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'PlatformSubscribeSubscription' test.out

#- 221 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'ielcjxQj' \
    'MfclMXOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 222 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '5zBKrt8b' \
    'OHGp5P78' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserSubscription' test.out

#- 223 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'hLDgFeSh' \
    '6EnKHynF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'DeleteUserSubscription' test.out

#- 224 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'XOH8gKVl' \
    'K1fcIlMK' \
    --body '{"immediate": false, "reason": "q53upI4H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CancelSubscription' test.out

#- 225 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'ja15XYvf' \
    '51zcBd5r' \
    --body '{"grantDays": 59, "reason": "2Wuo6Hrr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GrantDaysToSubscription' test.out

#- 226 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '2NbYUJGZ' \
    'iJejefFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserSubscriptionBillingHistories' test.out

#- 227 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'sLszYGFl' \
    'WNm21v93' \
    --body '{"additionalData": {"cardSummary": "bvhuxpnW"}, "authorisedTime": "1981-01-31T00:00:00Z", "chargebackReversedTime": "1985-04-21T00:00:00Z", "chargebackTime": "1995-05-10T00:00:00Z", "chargedTime": "1983-03-07T00:00:00Z", "createdTime": "1995-04-26T00:00:00Z", "currency": {"currencyCode": "PTKlfM7O", "currencySymbol": "LcwhNQ0I", "currencyType": "REAL", "decimals": 77, "namespace": "A5wYj4TN"}, "customParameters": {"oMAawH8Q": {}}, "extOrderNo": "DHVdTqEM", "extTxId": "lF2AUpoh", "extUserId": "DiAhJuGj", "issuedAt": "1982-03-10T00:00:00Z", "metadata": {"onKlaCrO": "0i06kgIw"}, "namespace": "CrEgelT8", "nonceStr": "zVC1YeUy", "paymentMethod": "HaXqQxmh", "paymentMethodFee": 44, "paymentOrderNo": "d575JhR8", "paymentProvider": "XSOLLA", "paymentProviderFee": 87, "paymentStationUrl": "FvtxvMfw", "price": 26, "refundedTime": "1992-02-12T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "XL00wCE6", "status": "REFUNDED", "statusReason": "fNt8OIy8", "subscriptionId": "S0YmPqh1", "subtotalPrice": 48, "targetNamespace": "YYw5DgqW", "targetUserId": "TzS93flM", "tax": 61, "totalPrice": 48, "totalTax": 77, "txEndTime": "1979-12-11T00:00:00Z", "type": "fCDtYmnB", "userId": "mWWsoEqx", "vat": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'ProcessUserSubscriptionNotification' test.out

#- 228 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'V23JYjtE' \
    'T8OONm1c' \
    --body '{"count": 5, "orderNo": "FAQh3NhE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AcquireUserTicket' test.out

#- 229 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'AGDA9kOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'QueryUserCurrencyWallets' test.out

#- 230 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'P1a4swJX' \
    'ieA6PNyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ListUserCurrencyTransactions' test.out

#- 231 CheckWallet
eval_tap 0 231 'CheckWallet # SKIP deprecated' test.out

#- 232 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '4ZD8ZALg' \
    'mNweJppm' \
    --body '{"amount": 96, "expireAt": "1984-07-18T00:00:00Z", "origin": "Nintendo", "reason": "zKWyKNzB", "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CreditUserWallet' test.out

#- 233 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'L7EQ3TeN' \
    'MSNNex5d' \
    --body '{"amount": 23, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'PayWithUserWallet' test.out

#- 234 GetUserWallet
eval_tap 0 234 'GetUserWallet # SKIP deprecated' test.out

#- 235 DebitUserWallet
eval_tap 0 235 'DebitUserWallet # SKIP deprecated' test.out

#- 236 DisableUserWallet
eval_tap 0 236 'DisableUserWallet # SKIP deprecated' test.out

#- 237 EnableUserWallet
eval_tap 0 237 'EnableUserWallet # SKIP deprecated' test.out

#- 238 ListUserWalletTransactions
eval_tap 0 238 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 239 QueryWallets
eval_tap 0 239 'QueryWallets # SKIP deprecated' test.out

#- 240 GetWallet
eval_tap 0 240 'GetWallet # SKIP deprecated' test.out

#- 241 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'ul2qhfwy' \
    '74gW8E4c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'SyncOrders' test.out

#- 242 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["HgyXCFX9"], "apiKey": "4MtRGGL6", "authoriseAsCapture": true, "blockedPaymentMethods": ["ek2UNjsg"], "clientKey": "QKca6OwZ", "dropInSettings": "uwyOkSQh", "liveEndpointUrlPrefix": "tXEMam6I", "merchantAccount": "b7k8cIhl", "notificationHmacKey": "eApHrsu9", "notificationPassword": "yZjjbdrz", "notificationUsername": "ATuLeuen", "returnUrl": "91RQMkVp", "settings": "H8AcaclJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'TestAdyenConfig' test.out

#- 243 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "9CLnaYpz", "privateKey": "lQ2x3EnM", "publicKey": "j99gEy4S", "returnUrl": "y9nZidlJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'TestAliPayConfig' test.out

#- 244 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "6t4AmHiT", "secretKey": "uje6S87D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'TestCheckoutConfig' test.out

#- 245 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'DebugMatchedPaymentMerchantConfig' test.out

#- 246 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "ePRQBjep", "clientSecret": "2Is3ANmY", "returnUrl": "mXhUrICH", "webHookId": "Q1TrmIdK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestPayPalConfig' test.out

#- 247 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["8DmYPF6g"], "publishableKey": "pPJK9qL0", "secretKey": "EmqezbFm", "webhookSecret": "0Y5OsHaO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestStripeConfig' test.out

#- 248 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "OyB4Kp7h", "key": "zU9HaTyW", "mchid": "FQlLw8K5", "returnUrl": "eorxH1KF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestWxPayConfig' test.out

#- 249 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "uEYygH2i", "flowCompletionUrl": "0CbngOhb", "merchantId": 27, "projectId": 35, "projectSecretKey": "1dAwa0f9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestXsollaConfig' test.out

#- 250 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'bDmasQwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetPaymentMerchantConfig' test.out

#- 251 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'ImnIPZ2s' \
    --body '{"allowedPaymentMethods": ["9WLUOBr8"], "apiKey": "ZsOMLNA3", "authoriseAsCapture": true, "blockedPaymentMethods": ["J6xnFtsr"], "clientKey": "dJPTHSCY", "dropInSettings": "5CUxUobA", "liveEndpointUrlPrefix": "tEeZgYwX", "merchantAccount": "4AxnhDDe", "notificationHmacKey": "36HMeSdR", "notificationPassword": "ZdfbGUCV", "notificationUsername": "iBiK43SH", "returnUrl": "BqN3FrZ2", "settings": "7sTWO1j8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'UpdateAdyenConfig' test.out

#- 252 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'CNGKXB1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestAdyenConfigById' test.out

#- 253 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Hd0dAJRM' \
    --body '{"appId": "q4Xl4dhR", "privateKey": "njEOdEWL", "publicKey": "Jwo4jNJY", "returnUrl": "KgGYPryj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'UpdateAliPayConfig' test.out

#- 254 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'vsOPgnUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestAliPayConfigById' test.out

#- 255 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '9TYFxn34' \
    --body '{"publicKey": "wV03oJwy", "secretKey": "CXdXlDay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateCheckoutConfig' test.out

#- 256 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '1d5wzQ8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'TestCheckoutConfigById' test.out

#- 257 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'i5e6YQR2' \
    --body '{"clientID": "j2NwEyTQ", "clientSecret": "qkypjj3G", "returnUrl": "NMz7FCiu", "webHookId": "siVRT3F9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdatePayPalConfig' test.out

#- 258 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'T4nWFoOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestPayPalConfigById' test.out

#- 259 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'WpCJKnXY' \
    --body '{"allowedPaymentMethodTypes": ["o8etpjdA"], "publishableKey": "xIszZC3L", "secretKey": "j7ourPca", "webhookSecret": "znSH2Cxs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateStripeConfig' test.out

#- 260 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '5k0AiVIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestStripeConfigById' test.out

#- 261 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'GckJ4UyH' \
    --body '{"appId": "UQuSmRQB", "key": "GDNgfJbt", "mchid": "T26RB4dl", "returnUrl": "lAOyAlx2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateWxPayConfig' test.out

#- 262 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'pzgH47Jm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'UpdateWxPayConfigCert' test.out

#- 263 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'h8F9rVlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'TestWxPayConfigById' test.out

#- 264 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'Ohh6OgcW' \
    --body '{"apiKey": "FoDkYwud", "flowCompletionUrl": "3hXXT8cA", "merchantId": 76, "projectId": 76, "projectSecretKey": "jFUukAbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'UpdateXsollaConfig' test.out

#- 265 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'MlmoskPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'TestXsollaConfigById' test.out

#- 266 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'ZlnfHna8' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateXsollaUIConfig' test.out

#- 267 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'QueryPaymentProviderConfig' test.out

#- 268 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "ZA6bGj3w", "region": "eTlX2frn", "sandboxTaxJarApiToken": "V4SnI56i", "specials": ["ADYEN"], "taxJarApiToken": "mKfvoBCN", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'CreatePaymentProviderConfig' test.out

#- 269 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetAggregatePaymentProviders' test.out

#- 270 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'DebugMatchedPaymentProviderConfig' test.out

#- 271 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetSpecialPaymentProviders' test.out

#- 272 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'lc2UDrxc' \
    --body '{"aggregate": "ADYEN", "namespace": "FB3t7Su8", "region": "87Ey5S3E", "sandboxTaxJarApiToken": "sksPusIs", "specials": ["ADYEN"], "taxJarApiToken": "tH5nDyVn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'UpdatePaymentProviderConfig' test.out

#- 273 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'DUFdsq2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DeletePaymentProviderConfig' test.out

#- 274 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentTaxConfig' test.out

#- 275 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "LRcIgber", "taxJarApiToken": "qiArHPbl", "taxJarEnabled": true, "taxJarProductCodesMapping": {"PveOBBV9": "k49IeIHN"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdatePaymentTaxConfig' test.out

#- 276 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'jkojdAdy' \
    '9CDCc6KW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'SyncPaymentOrders' test.out

#- 277 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetRootCategories' test.out

#- 278 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'DownloadCategories' test.out

#- 279 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'WGrLJj7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetCategory' test.out

#- 280 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'NoAWv2gX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetChildCategories' test.out

#- 281 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'LP7elmz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetDescendantCategories' test.out

#- 282 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicListCurrencies' test.out

#- 283 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'qzOrsRps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetItemByAppId' test.out

#- 284 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicQueryItems' test.out

#- 285 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '4NnGGxfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItemBySku' test.out

#- 286 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'zGbmQPlb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicBulkGetItems' test.out

#- 287 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["8usTL87x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicValidateItemPurchaseCondition' test.out

#- 288 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'MPcqN6Kf' \
    '3uB7RkoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicSearchItems' test.out

#- 289 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'PclOsJaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetApp' test.out

#- 290 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '4RbVS0Cn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetItemDynamicData' test.out

#- 291 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'sf4H98gj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItem' test.out

#- 292 GetPaymentCustomization
eval_tap 0 292 'GetPaymentCustomization # SKIP deprecated' test.out

#- 293 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "XlNYVv6B", "paymentProvider": "CHECKOUT", "returnUrl": "fSEeqtMe", "ui": "NJSNg3AJ", "zipCode": "JU1oQnLD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetPaymentUrl' test.out

#- 294 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'QsMpjdBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetPaymentMethods' test.out

#- 295 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'WrShZRZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUnpaidPaymentOrder' test.out

#- 296 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'P6m3rqG4' \
    --body '{"token": "IPMsbpzD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'Pay' test.out

#- 297 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'Z1nbgtD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicCheckPaymentOrderPaidStatus' test.out

#- 298 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'uZaI7Jv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'GetPaymentPublicConfig' test.out

#- 299 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'evnHbcDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetQRCode' test.out

#- 300 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '73Dkqohz' \
    'hINjwDfI' \
    'ALIPAY' \
    '7xoslK0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicNormalizePaymentReturnUrl' test.out

#- 301 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'MQF7VvTI' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentTaxValue' test.out

#- 302 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'MBjCCBKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'GetRewardByCode' test.out

#- 303 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'QueryRewards1' test.out

#- 304 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'Pi4rFNHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetReward1' test.out

#- 305 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicListStores' test.out

#- 306 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicExistsAnyMyActiveEntitlement' test.out

#- 307 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'vCKN66VC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 308 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'NAThE5Wz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 309 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'jPhyLOQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 310 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetEntitlementOwnershipToken' test.out

#- 311 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'xnbExCcz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyWallet' test.out

#- 312 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'whRoWp6l' \
    --body '{"epicGamesJwtToken": "kuHP8buZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'SyncEpicGameDLC' test.out

#- 313 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'iH2GRmQR' \
    --body '{"serviceLabel": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicSyncPsnDlcInventory' test.out

#- 314 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'tntPilLE' \
    --body '{"appId": "8i8KPrA5", "steamId": "PyjRz6eP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'SyncSteamDLC' test.out

#- 315 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '98Itqgop' \
    --body '{"xstsToken": "WhLj5tZD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'SyncXboxDLC' test.out

#- 316 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'X9fbQAYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicQueryUserEntitlements' test.out

#- 317 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'tQpmvfcW' \
    'dRdhZ5Kj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserAppEntitlementByAppId' test.out

#- 318 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '6MACiufn' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicQueryUserEntitlementsByAppType' test.out

#- 319 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'yyq7F9aC' \
    'oZstPAUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementByItemId' test.out

#- 320 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'l2eCy6xD' \
    'IxbzIRjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlementBySku' test.out

#- 321 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'gW7qJKLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicExistsAnyUserActiveEntitlement' test.out

#- 322 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'YvWQ0T9y' \
    '9ULje9SY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 323 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'EdqFTDja' \
    'bG5HAufl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 324 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '1c4Sh7xc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 325 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'c4KF44Gs' \
    'n5ewnln4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 326 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '9JNf4B4L' \
    'TFAbVqpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlement' test.out

#- 327 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '5OiYOUCH' \
    'EDiDw1OG' \
    --body '{"options": ["oQx3PQmY"], "useCount": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicConsumeUserEntitlement' test.out

#- 328 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '1qncZKQg' \
    --body '{"code": "FGrSQzTT", "language": "wQSt", "region": "09JnLu8m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicRedeemCode' test.out

#- 329 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'Qz6huRB8' \
    --body '{"excludeOldTransactions": true, "language": "dhqI_uOYJ", "productId": "CIhkMiso", "receiptData": "OPhEeg9R", "region": "71nKBYT1", "transactionId": "IjDPnThU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicFulfillAppleIAPItem' test.out

#- 330 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'OAIPTVYr' \
    --body '{"epicGamesJwtToken": "ucqWKPIZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'SyncEpicGamesInventory' test.out

#- 331 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    't5yavhaw' \
    --body '{"autoAck": true, "language": "Xy_XXXy", "orderId": "tVuokjxP", "packageName": "n7cwvLE1", "productId": "5HSXy5Cy", "purchaseTime": 78, "purchaseToken": "fd21S2Zt", "region": "C4YkCoad"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicFulfillGoogleIAPItem' test.out

#- 332 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'XhWin1Nh' \
    --body '{"currencyCode": "6x6BmifM", "price": 0.5644157104199067, "productId": "10stX6hq", "serviceLabel": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicReconcilePlayStationStore' test.out

#- 333 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'mTM6E9J8' \
    --body '{"appId": "SdcHhH6K", "language": "XJle_oZkj-906", "region": "zlOZYszW", "stadiaPlayerId": "ZKRbDZAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'SyncStadiaEntitlement' test.out

#- 334 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'a8QeKSh1' \
    --body '{"appId": "pax9HYKx", "currencyCode": "pJKcaTA7", "language": "UNRl-TABv-819", "price": 0.74767577592817, "productId": "t0XZH4j3", "region": "CPiWTJBs", "steamId": "z9lOZT6f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'SyncSteamInventory' test.out

#- 335 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'coT420K5' \
    --body '{"gameId": "eOIsp2YS", "language": "lVr", "region": "mafYQzNu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'SyncTwitchDropsEntitlement' test.out

#- 336 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '1QRfRdqs' \
    --body '{"currencyCode": "x3tCuZEy", "price": 0.9757744062884658, "productId": "QFHaqVkS", "xstsToken": "vz7effH0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxInventory' test.out

#- 337 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'KyszQ0Ye' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserOrders' test.out

#- 338 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'zIEB0YzH' \
    --body '{"currencyCode": "gwKOWVbP", "discountedPrice": 95, "ext": {"RKHS2Nib": {}}, "itemId": "IlEcVVgR", "language": "BB_359", "price": 68, "quantity": 39, "region": "C4XPfSOq", "returnUrl": "QKWITKcL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicCreateUserOrder' test.out

#- 339 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'jAZM5z0I' \
    '03Uz8o4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetUserOrder' test.out

#- 340 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'My3n5mQf' \
    'rJnvzCyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicCancelUserOrder' test.out

#- 341 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '5g6KmVvO' \
    'MGdfwNts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserOrderHistories' test.out

#- 342 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'NU2MJZYO' \
    '6kojew8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicDownloadUserOrderReceipt' test.out

#- 343 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'gE0hRyw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetPaymentAccounts' test.out

#- 344 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'fyo14fSA' \
    'paypal' \
    'cPigz3r6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicDeletePaymentAccount' test.out

#- 345 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '5YPszkUJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserSubscriptions' test.out

#- 346 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'oRc3vM3L' \
    --body '{"currencyCode": "0i4GfRDp", "itemId": "IMIEvYva", "language": "xF-GluI", "region": "EocyK48i", "returnUrl": "V7D3cZPJ", "source": "dtOR25NR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicSubscribeSubscription' test.out

#- 347 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'HvTpYpCV' \
    'Kx7EmUWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 348 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'X8aKQUVH' \
    'rNkvPdMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserSubscription' test.out

#- 349 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'xywmJDXL' \
    '6dcjO0b4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicChangeSubscriptionBillingAccount' test.out

#- 350 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'KSHSRi7M' \
    '9illRmdQ' \
    --body '{"immediate": false, "reason": "HnGq8jdU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicCancelSubscription' test.out

#- 351 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'M3MEJSff' \
    'JHXtJjHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserSubscriptionBillingHistories' test.out

#- 352 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'lczd1lXb' \
    'Sd6TYZ8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetWallet' test.out

#- 353 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '9HuJQs1d' \
    'UPVMp7Rh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicListUserWalletTransactions' test.out

#- 354 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'QueryItems1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
