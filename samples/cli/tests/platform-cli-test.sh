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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "SOFTWARE", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "BUNDLE", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "REDEEM_CODE"}, "script": "J42cwmzB", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'SMNcoAAO' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'jKNjfcYH' --body '{"grantDays": "m093aYgB"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'U1sqjyK0' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'XH45PaRS' --body '{"grantDays": "OFQBtu23"}' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "REZ8hRVX", "items": [{"extraSubscriptionDays": 74, "itemId": "GOvDdYiQ", "itemName": "S9i7mV1C", "quantity": 30}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 64, "maxRedeemCountPerCodePerUser": 13, "maxSaleCount": 31, "name": "xL6ycTQd", "redeemEnd": "1981-03-31T00:00:00Z", "redeemStart": "1977-10-25T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["SQWEXL6L"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'E1YHo9m1' --login_with_auth "Bearer foo"
platform-update-campaign '26ZWc8hH' --body '{"description": "tWvbNYqg", "items": [{"extraSubscriptionDays": 92, "itemId": "qslArFPi", "itemName": "HUIvaCv8", "quantity": 20}], "maxRedeemCountPerCampaignPerUser": 92, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 55, "name": "pdsJLhsV", "redeemEnd": "1983-09-03T00:00:00Z", "redeemStart": "1982-05-20T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["oot0B7WO"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'fercZdpM' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'ci37Ds7Y' --body '{"categoryPath": "SfExaI3u", "localizationDisplayNames": {"zLteMbFA": "lt4hr7Hm"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'OYiBA5lt' --login_with_auth "Bearer foo"
platform-update-category 'AOXmlG6e' 'h1dTdoTF' --body '{"localizationDisplayNames": {"pBIcuC1d": "QY93OJnJ"}}' --login_with_auth "Bearer foo"
platform-delete-category '6Te9vD8l' 'dz7Hu8AD' --login_with_auth "Bearer foo"
platform-get-child-categories '79kdWunv' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'izU0q1pH' --login_with_auth "Bearer foo"
platform-query-codes 'yhhERoGg' --login_with_auth "Bearer foo"
platform-create-codes 'drysMizB' --body '{"quantity": 65}' --login_with_auth "Bearer foo"
platform-download 'SRdP2l7D' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'NSZ8Aq0X' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'iPLQXSe0' --login_with_auth "Bearer foo"
platform-query-redeem-history '7ZddOGTM' --login_with_auth "Bearer foo"
platform-get-code 'lJjBwj9H' --login_with_auth "Bearer foo"
platform-disable-code 'JHQKseEd' --login_with_auth "Bearer foo"
platform-enable-code 'SXRDSvgu' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "auw1xT7e", "currencySymbol": "MwSl9MLH", "currencyType": "REAL", "decimals": 91, "localizationDescriptions": {"J2ulNzBv": "wJaQa547"}}' --login_with_auth "Bearer foo"
platform-update-currency 'JllvA8RW' --body '{"localizationDescriptions": {"SpabUt7x": "k6QxyWhf"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'qoWfJw2o' --login_with_auth "Bearer foo"
platform-get-currency-config '8oWUqvPC' --login_with_auth "Bearer foo"
platform-get-currency-summary 'Z2HzT7NX' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "mWDlXsuN", "rewards": [{"currency": {"currencyCode": "IdQJR5ls", "namespace": "NOlvkfwa"}, "item": {"itemId": "SbnsuLCg", "itemSku": "ToxuVTek", "itemType": "Jgvg6h5H"}, "quantity": 68, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"viplEk4v": "j3LDp4yq"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'Dt8QUZDp' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "xlHasinG", "password": "cjrkmRMt"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "tgjDSaIV"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "Bmft3Udg", "serviceAccountId": "7p9PGmY2"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "H5kX4Msi", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"SX28nARx": "WRpv5ou5"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "xtvd28OU"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "fCt8UJC5", "publisherAuthenticationKey": "flNyj6Hs"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "TtX8P3ll", "clientSecret": "naaS9lqy", "organizationId": "ygPcfkJI"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "xfQZza8k"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-sync-in-game-item 'NVbDxVMq' --body '{"categoryPath": "7HJk0F89", "targetItemId": "xAc3YVfa", "targetNamespace": "ENtrl0pT"}' --login_with_auth "Bearer foo"
platform-create-item 'KZTXqzHu' --body '{"appId": "BMYQSA2j", "appType": "SOFTWARE", "baseAppId": "1ZOpdOjS", "boothName": "yMddB41J", "categoryPath": "uMf7RUyB", "clazz": "HRj8IiRi", "displayOrder": 24, "entitlementType": "CONSUMABLE", "ext": {"lHT6Dc40": {}}, "features": ["vFFA6gpU"], "images": [{"as": "7EW3x1dC", "caption": "pm55gOeq", "height": 84, "imageUrl": "IqcJVKmB", "smallImageUrl": "M1J1IbuT", "width": 35}], "itemIds": ["rkbmuT1w"], "itemQty": {"hOqmEnDX": 69}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"PlSay46m": {"description": "v71BAZAO", "localExt": {"jtFJ2vmT": {}}, "longDescription": "j7tT7TZH", "title": "WDdCkIsZ"}}, "maxCount": 29, "maxCountPerUser": 52, "name": "rWwPHcyF", "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 52, "fixedTrialCycles": 38, "graceDays": 100}, "regionData": {"ciLIgRwF": [{"currencyCode": "Rr0gwB9t", "currencyNamespace": "z3vp99XV", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1979-10-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1986-04-13T00:00:00Z", "discountedPrice": 36, "expireAt": "1977-03-05T00:00:00Z", "price": 30, "purchaseAt": "1997-05-29T00:00:00Z", "trialPrice": 44}]}, "seasonType": "PASS", "sku": "Ud9pqtv6", "stackable": false, "status": "INACTIVE", "tags": ["cCVOXcVa"], "targetCurrencyCode": "80TmCwtD", "targetNamespace": "2lAH01o6", "thumbnailUrl": "NdcBIgzr", "useCount": 58}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'yWpFBYGm' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'mBawMyoK' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'yNpdAasm' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '8xwUfzOl' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'QiZY4NbO' --login_with_auth "Bearer foo"
platform-search-items 'QXJ7uOTz' 'NMvuq2tN' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'l4CX4Iji' --login_with_auth "Bearer foo"
platform-update-item 'K4DEUJRV' 'K3l9Eb0R' --body '{"appId": "1XRb0RH8", "appType": "GAME", "baseAppId": "S1smeOln", "boothName": "grdTXCza", "categoryPath": "PBtkZMio", "clazz": "4wcyhloV", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"Yp8QtcEm": {}}, "features": ["CEVc75Uf"], "images": [{"as": "eypWjDNh", "caption": "zCL5sWS2", "height": 32, "imageUrl": "wO763iEk", "smallImageUrl": "lkzLm88L", "width": 31}], "itemIds": ["LuYRO3C5"], "itemQty": {"5yHpwK2J": 1}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"nDGn7a2N": {"description": "UplWiLjq", "localExt": {"06n6a0rW": {}}, "longDescription": "8EfkpaXt", "title": "wYZJaQ4W"}}, "maxCount": 3, "maxCountPerUser": 44, "name": "NmsFYetj", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 35, "fixedTrialCycles": 66, "graceDays": 8}, "regionData": {"loJzNKtR": [{"currencyCode": "UaTz1ETd", "currencyNamespace": "smwzjkkn", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1992-03-28T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1972-11-19T00:00:00Z", "discountedPrice": 76, "expireAt": "1971-11-20T00:00:00Z", "price": 18, "purchaseAt": "1976-04-27T00:00:00Z", "trialPrice": 59}]}, "seasonType": "PASS", "sku": "P2qMrTQ1", "stackable": false, "status": "ACTIVE", "tags": ["fU6wJhy1"], "targetCurrencyCode": "jOVkkUlS", "targetNamespace": "79527EZ2", "thumbnailUrl": "5Ia8uCeZ", "useCount": 62}' --login_with_auth "Bearer foo"
platform-delete-item 'lLtEVpDA' --login_with_auth "Bearer foo"
platform-acquire-item 'EbA82jy7' --body '{"count": 23, "orderNo": "q0pDE5xR"}' --login_with_auth "Bearer foo"
platform-get-app 'wh5b45eb' --login_with_auth "Bearer foo"
platform-update-app 'pcM7ScSs' '3UOpAwIp' --body '{"carousel": [{"alt": "9rRtn1Pc", "previewUrl": "CxdbumeY", "thumbnailUrl": "gOdEBWRQ", "type": "image", "url": "W3KFfU8i", "videoSource": "generic"}], "developer": "H4081gRB", "forumUrl": "1GyLfLg4", "genres": ["Strategy"], "localizations": {"YuEbgUDE": {"announcement": "cJyIvsPw", "slogan": "Or0BmV5i"}}, "platformRequirements": {"FvfwFjTS": [{"additionals": "mIEqoLyL", "directXVersion": "eUGmomGX", "diskSpace": "9sXTZ0v8", "graphics": "pqLfc5Sw", "label": "GnReUULD", "osVersion": "X4QUIbb5", "processor": "nh68ZnyU", "ram": "tRvW9hNB", "soundCard": "SFTtFrOm"}]}, "platforms": ["IOS"], "players": ["CrossPlatformMulti"], "primaryGenre": "Racing", "publisher": "rFVA8t0x", "releaseDate": "1986-05-03T00:00:00Z", "websiteUrl": "t6ZlTTic"}' --login_with_auth "Bearer foo"
platform-disable-item '0kr2a0nI' '2oo7UHCJ' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'K5sp0aCv' --login_with_auth "Bearer foo"
platform-enable-item 'Iq3aHVYI' 'lewLRuHY' --login_with_auth "Bearer foo"
platform-feature-item '83bGj0HT' 'eeWXlIcR' 'idqctDpy' --login_with_auth "Bearer foo"
platform-defeature-item 'gY0ax476' 'ED4MMO9T' 'w2JH0qhW' --login_with_auth "Bearer foo"
platform-get-locale-item 'IwHWTgzJ' --login_with_auth "Bearer foo"
platform-return-item 'FRYw6t1I' --body '{"orderNo": "KZLO6V4O"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "de46QmCi", "name": "dgdpP7RT", "status": "INACTIVE", "tags": ["587lmUmB"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'ziPZBnpO' --login_with_auth "Bearer foo"
platform-update-key-group 'fkllxfq0' --body '{"description": "NsrSjw5H", "name": "og0blM1d", "status": "INACTIVE", "tags": ["YGczLINl"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'EC0OEsE3' --login_with_auth "Bearer foo"
platform-list-keys 'yzIsUP0N' --login_with_auth "Bearer foo"
platform-upload-keys 'jluOrGZT' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'zsLW7Fjf' --login_with_auth "Bearer foo"
platform-refund-order 's9nIkcZ3' --body '{"description": "8fUEanjK"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "Xfk1zxdz", "privateKey": "xg0UXcRy"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "Hi3u8BzV", "currencyNamespace": "Wu1tOmhU", "customParameters": {"tCgcpvGr": {}}, "description": "EbcZUDEx", "extOrderNo": "H1tayOGX", "extUserId": "IHzMRjMC", "itemType": "INGAMEITEM", "language": "jSeI", "metadata": {"rbpyyEcQ": "xVgJIjMZ"}, "notifyUrl": "qcWfMl6d", "omitNotification": true, "platform": "rpD4tnc3", "price": 86, "recurringPaymentOrderNo": "B3IkdtPf", "region": "AJEomwen", "returnUrl": "JvQ8grtQ", "sandbox": true, "sku": "6EcALcMI", "subscriptionId": "Pms5bT51", "targetNamespace": "M4yko8S0", "targetUserId": "EnGLvGvf", "title": "uSyCTyjj"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '4mCaiuMG' --login_with_auth "Bearer foo"
platform-get-payment-order 'KOF5GJJo' --login_with_auth "Bearer foo"
platform-charge-payment-order 'oSXUl3YU' --body '{"extTxId": "35QHGpBA", "paymentMethod": "BnOlxDzn", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'QVyqBg34' --body '{"description": "WTtDkn0r"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'tn6t0Yx4' --body '{"amount": 50, "currencyCode": "12EaQ1rU", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 59, "vat": 98}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status '4jE3M2Is' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["Twitch"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "OlXfIWd0", "eventTopic": "mcq5T4SU", "maxAwarded": 4, "maxAwardedPerUser": 5, "namespaceExpression": "WfCKK6Di", "rewardCode": "j1gFcenE", "rewardConditions": [{"condition": "MySPfhxB", "conditionName": "enDiTiAq", "eventName": "FYmFKjaE", "rewardItems": [{"duration": 75, "itemId": "mmll6oex", "quantity": 68}]}], "userIdExpression": "d1OKGUN2"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'True' --login_with_auth "Bearer foo"
platform-get-reward 'nd7uVa7t' --login_with_auth "Bearer foo"
platform-update-reward '14yvSYSV' --body '{"description": "52bHifCI", "eventTopic": "f4tsuu6P", "maxAwarded": 20, "maxAwardedPerUser": 0, "namespaceExpression": "m6tFSYFt", "rewardCode": "4ZxA2PzZ", "rewardConditions": [{"condition": "FRkBNlg6", "conditionName": "hn5qusKy", "eventName": "ZAuV6uUv", "rewardItems": [{"duration": 33, "itemId": "M0lV6UZM", "quantity": 22}]}], "userIdExpression": "EbxHNgJR"}' --login_with_auth "Bearer foo"
platform-delete-reward 'iQExaunj' --login_with_auth "Bearer foo"
platform-check-event-condition 'dAqnHUz4' --body '{"payload": {"4tx4O6ha": {}}}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "mPwNoi07", "defaultRegion": "1ezDK56J", "description": "FIGe1IMU", "supportedLanguages": ["CLcN0Dsa"], "supportedRegions": ["D5FyBsFe"], "title": "9OYEJVsY"}' --login_with_auth "Bearer foo"
platform-import-store --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'ffmhyx6J' --login_with_auth "Bearer foo"
platform-update-store '25PrM4S3' --body '{"defaultLanguage": "cB8m17hE", "defaultRegion": "eLLgoaYt", "description": "h6zcf8eA", "supportedLanguages": ["45OMvObW"], "supportedRegions": ["ejo9LfGe"], "title": "egJMaBGR"}' --login_with_auth "Bearer foo"
platform-delete-store '6D1ZoZEZ' --login_with_auth "Bearer foo"
platform-query-changes 'QkJ8DSqF' --login_with_auth "Bearer foo"
platform-publish-all 'nhdKvjFC' --login_with_auth "Bearer foo"
platform-publish-selected 'FbSFlEWo' --login_with_auth "Bearer foo"
platform-select-all-records 'MPdgK5zn' --login_with_auth "Bearer foo"
platform-get-statistic '62mhnFSp' --login_with_auth "Bearer foo"
platform-unselect-all-records 'CTlDNBOc' --login_with_auth "Bearer foo"
platform-select-record 'ygvv2LAg' 'fBGVzanb' --login_with_auth "Bearer foo"
platform-unselect-record 'KYsB0gqJ' '8VhYSikJ' --login_with_auth "Bearer foo"
platform-clone-store 'l2p9rBx8' --login_with_auth "Bearer foo"
platform-export-store 'N5egapqx' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'Dy4cLfNj' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'zzEZYA8j' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'IkMJb7cZ' --body '{"orderNo": "2bPsaLLp"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'EBVEMk5A' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'sKaF2P44' --body '{"count": 22, "orderNo": "XkI3zdiR"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'iC5IbPit' --body '{"achievements": [{"id": "71JWlYCo", "value": 16}], "steamUserId": "4nDfPu5V"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '6QSYxEVO' 'ryVuZYmg' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'UeEPB5AG' --body '{"achievements": [{"id": "Pgvk0Zth", "percentComplete": 1}], "serviceConfigId": "j0EBA4az", "titleId": "Rz0d56sm", "xboxUserId": "obor4p1P"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'lgQB9EcN' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'GOeBRY6G' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment '5ae07deD' --login_with_auth "Bearer foo"
platform-anonymize-integration 'LaZ8JCvb' --login_with_auth "Bearer foo"
platform-anonymize-order 'eTfW0hgz' --login_with_auth "Bearer foo"
platform-anonymize-payment 'rabLJxEw' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'JrEBmQ64' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'haNOzlGu' --login_with_auth "Bearer foo"
platform-query-user-entitlements '68UYyupj' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'dDetnoT0' --body '[{"endDate": "1979-02-09T00:00:00Z", "grantedCode": "WtVPwQfq", "itemId": "6V92gbfP", "itemNamespace": "ouNdmP7f", "language": "Kv-340", "quantity": 87, "region": "5z8ZJLjS", "source": "REWARD", "startDate": "1972-01-05T00:00:00Z", "storeId": "R3X4tZmw"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'r0QmOnsE' 'g49eXp0x' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'QkZ2Jjuw' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id '0tU11PCe' 'SrvejUKw' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'VfF37Vr7' 'mkDzFBI1' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'VwhkVSKD' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'lNFOUHBJ' '["svTsqk9h"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'g4hj6nUd' 'ebW6Uskb' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'PkkZAk01' 'f1KxCtWA' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'DU2guN6U' '9w13W1K9' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'TZQ4qRLE' 'i5wowE36' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'rfmM0CCs' '35TPUPLm' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'sY8WgwSx' '1DI5GH9b' --body '{"endDate": "1981-04-24T00:00:00Z", "nullFieldList": ["2HpA6pzj"], "startDate": "1987-05-05T00:00:00Z", "status": "REVOKED", "useCount": 17}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'LgRPJK3n' 'Bae3GOgb' --body '{"useCount": 85}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'rqra0Ptk' 'fvOpY2ra' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'mp5lnBn6' 'xmBkfMtC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '66hFq0kP' 'OkORm2Xj' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'lNEE5ecP' 'zAmi0ySJ' --login_with_auth "Bearer foo"
platform-fulfill-item 'HfPloP1X' --body '{"duration": 20, "endDate": "1996-10-12T00:00:00Z", "itemId": "4MgIsDSF", "itemSku": "MPyMhyw1", "language": "OLZPVwwx", "order": {"currency": {"currencyCode": "H4BIDJuD", "currencySymbol": "oShMMftl", "currencyType": "REAL", "decimals": 79, "namespace": "0VvChHz9"}, "ext": {"urmt7QWv": {}}, "free": true}, "orderNo": "8s6Uz8BR", "origin": "Playstation", "quantity": 96, "region": "DTtL6MTT", "source": "GIFT", "startDate": "1985-01-07T00:00:00Z", "storeId": "b9S5Q1IV"}' --login_with_auth "Bearer foo"
platform-redeem-code 'HGT88prR' --body '{"code": "EBgYOWdH", "language": "jUMO_Gn", "region": "Zj5w5y3H"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'mK8QVOa6' --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "QZtbLLcF", "namespace": "671WLtv3"}, "item": {"itemId": "8Hecczop", "itemSku": "FmeRwpcJ", "itemType": "BZyi3mLC"}, "quantity": 72, "type": "ITEM"}], "source": "DLC"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'kiSzeyol' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'nOQt0joV' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'HgCytC6l' --body '{"itemIdentityType": "ITEM_SKU", "language": "hB", "productId": "TKKeuSjf", "region": "Ze9i1osg", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'F1hzi1Nl' --login_with_auth "Bearer foo"
platform-admin-create-user-order '47syJ5ib' --body '{"currencyCode": "zSHZeCLI", "currencyNamespace": "vWPVRsdE", "discountedPrice": 33, "ext": {"A61yTrMg": {}}, "itemId": "sycTgmPz", "language": "c20EuO5d", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 22, "quantity": 89, "region": "ZPY07rEV", "returnUrl": "SjzHjL6Z", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'XjG6DSmp' 'p3op8hta' --login_with_auth "Bearer foo"
platform-get-user-order 'RLxtW4Pv' 'FkESTULa' --login_with_auth "Bearer foo"
platform-update-user-order-status 't5F1Le7c' 'R7q6PWhZ' --body '{"status": "CLOSED", "statusReason": "mKz41i1T"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'p78FipJH' 'ahViJvLY' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'W0kdmlk2' 'luqSOOA2' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'VOZBoNbB' '98PuSGyk' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'qFzPwSMX' 'T53bBuL3' --body '{"additionalData": {"cardSummary": "8beOYDVu"}, "authorisedTime": "1987-12-06T00:00:00Z", "chargebackReversedTime": "1989-06-02T00:00:00Z", "chargebackTime": "1982-02-15T00:00:00Z", "chargedTime": "1975-08-30T00:00:00Z", "createdTime": "1992-04-25T00:00:00Z", "currency": {"currencyCode": "72sH0aRd", "currencySymbol": "cDlDyGcs", "currencyType": "REAL", "decimals": 69, "namespace": "uI4Dv5lE"}, "customParameters": {"JpK1AyRl": {}}, "extOrderNo": "zsrRXEFZ", "extTxId": "ivQOHG6w", "extUserId": "VicNrats", "issuedAt": "1981-06-21T00:00:00Z", "metadata": {"HLmIohfN": "ISLXMDWD"}, "namespace": "dm5FE4ll", "nonceStr": "iQMnutJb", "paymentMethod": "pEo4mUNH", "paymentMethodFee": 63, "paymentOrderNo": "tdml2xNv", "paymentProvider": "CHECKOUT", "paymentProviderFee": 96, "paymentStationUrl": "acJc3Fm7", "price": 40, "refundedTime": "1981-10-15T00:00:00Z", "salesTax": 13, "sandbox": false, "sku": "CBqS5uId", "status": "INIT", "statusReason": "bwCeeq9o", "subscriptionId": "uEdDtjOg", "subtotalPrice": 36, "targetNamespace": "ypLkm2ZY", "targetUserId": "ew5H7Zm0", "tax": 13, "totalPrice": 27, "totalTax": 100, "txEndTime": "1983-03-17T00:00:00Z", "type": "6MXf9G1n", "userId": "tyebvoeH", "vat": 9}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'nAALKt7E' 'fxIH446o' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'UnP2S74u' --body '{"currencyCode": "nXwg0JKq", "currencyNamespace": "VWW1rjK1", "customParameters": {"epwkAvcs": {}}, "description": "YvbgfBVP", "extOrderNo": "pTa8Yuq7", "extUserId": "TKiNXmz7", "itemType": "BUNDLE", "language": "Rmdt", "metadata": {"UxTCTng0": "xjtdBrjs"}, "notifyUrl": "3Kiykt2C", "omitNotification": false, "platform": "2gOlSatE", "price": 56, "recurringPaymentOrderNo": "Z2UgwQLq", "region": "DqYSxTPu", "returnUrl": "VlBqirdp", "sandbox": true, "sku": "xnsETl1S", "subscriptionId": "vhQudsjI", "title": "hXdxiSoW"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'pnnxgX7B' 'CPMqzQIx' --body '{"description": "ibhpNYsH"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'tdB3Ikju' --body '{"code": "aZqhJilr", "orderNo": "ZkSSKgP5"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'rxCR77G9' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'd5CA1GOR' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'SbL9n0db' --body '{"grantDays": 96, "itemId": "DEupmdLQ", "language": "zPnNfBAc", "reason": "WArbkCfd", "region": "HIZb03ot", "source": "qmBuS9V2"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'pCZ23UHm' 'k0lpJ4JL' --login_with_auth "Bearer foo"
platform-get-user-subscription 'l01qi7L2' 'oDUoVRUb' --login_with_auth "Bearer foo"
platform-delete-user-subscription '39j22P4S' 'p09cKmjR' --login_with_auth "Bearer foo"
platform-cancel-subscription 'UbZVBVS7' 'OK2Zrdcs' --body '{"immediate": false, "reason": "kMekROWZ"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '2KUTqkK2' 'eFaGLoSm' --body '{"grantDays": 61, "reason": "EPbLywJs"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'yUie6fZg' 'LllUPsO8' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'lg46Si70' '06vL2w4a' --body '{"additionalData": {"cardSummary": "ajDAOx0i"}, "authorisedTime": "1988-03-12T00:00:00Z", "chargebackReversedTime": "1996-03-28T00:00:00Z", "chargebackTime": "1973-01-07T00:00:00Z", "chargedTime": "1976-06-08T00:00:00Z", "createdTime": "1979-06-20T00:00:00Z", "currency": {"currencyCode": "2WkljQuD", "currencySymbol": "5mnJONqH", "currencyType": "VIRTUAL", "decimals": 24, "namespace": "B7mF2lMF"}, "customParameters": {"caghFXJI": {}}, "extOrderNo": "JflRHFcs", "extTxId": "IqCy4xDi", "extUserId": "fSSQ5On2", "issuedAt": "1972-01-18T00:00:00Z", "metadata": {"Ecl3xeiO": "4bwF5JOj"}, "namespace": "GoGxKM3q", "nonceStr": "Mce5tfLc", "paymentMethod": "pjFZMKCb", "paymentMethodFee": 31, "paymentOrderNo": "0pEbLCLF", "paymentProvider": "PAYPAL", "paymentProviderFee": 67, "paymentStationUrl": "xMYF8360", "price": 47, "refundedTime": "1986-05-03T00:00:00Z", "salesTax": 50, "sandbox": false, "sku": "nYtpja5i", "status": "AUTHORISE_FAILED", "statusReason": "2isQZga6", "subscriptionId": "Vy76izPi", "subtotalPrice": 85, "targetNamespace": "RjYa8fv5", "targetUserId": "fIt22tIZ", "tax": 15, "totalPrice": 18, "totalTax": 14, "txEndTime": "1974-03-28T00:00:00Z", "type": "igW22zXM", "userId": "WXfbcM0G", "vat": 68}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'ALIbFCQg' 'BcLNT6iO' --body '{"count": 85, "orderNo": "VYx5rW2g"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'MsI1aYBi' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'tSn3UDeK' 'j97I4WYX' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'LqjN7ktO' 'BTraBxWR' --body '{"amount": 90, "expireAt": "1994-06-10T00:00:00Z", "origin": "Steam", "reason": "qGlKDwTK", "source": "PURCHASE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'rXiQcd9I' 'W8kiCKeQ' --body '{"amount": 71, "walletPlatform": "Steam"}' --login_with_auth "Bearer foo"
platform-sync-orders 'vcq1ETvW' 'BxYZJh7B' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["8gbnSu9M"], "apiKey": "2OxD2uda", "authoriseAsCapture": false, "blockedPaymentMethods": ["YpCXYSMi"], "clientKey": "y87CTqEQ", "dropInSettings": "Bg36my3s", "liveEndpointUrlPrefix": "Y2clrDca", "merchantAccount": "in0cOVF1", "notificationHmacKey": "zHwDTI0s", "notificationPassword": "J1Q0kphM", "notificationUsername": "TggSP2SL", "returnUrl": "cuAP7vU9", "settings": "71Czw2nb"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "g8C7Mvyw", "privateKey": "hu6MjOju", "publicKey": "Gzo1Fz4t", "returnUrl": "U0aSn98N"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "8qOUA0z9", "secretKey": "2RaDe8ng"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "T8LRQkMn", "clientSecret": "G1LZyF2m", "returnUrl": "dYY6ZMfu", "webHookId": "TYTKsue4"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["8qBEBNAV"], "publishableKey": "5BTe6ec1", "secretKey": "zA92URCL", "webhookSecret": "SGPmRBZW"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "unHW7MYv", "key": "r6QA7Ppe", "mchid": "pc92HA94", "returnUrl": "eACdeyfU"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "pgiPpf8n", "flowCompletionUrl": "xKJ3dnmt", "merchantId": 82, "projectId": 44, "projectSecretKey": "a64Y4gPE"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'KMhhu9a6' --login_with_auth "Bearer foo"
platform-update-adyen-config 'f3xJNtUl' --body '{"allowedPaymentMethods": ["KLlIIAeH"], "apiKey": "bm5M6LsY", "authoriseAsCapture": true, "blockedPaymentMethods": ["IEcRls68"], "clientKey": "M3MPMRPB", "dropInSettings": "epyyMz6z", "liveEndpointUrlPrefix": "fR1pvTYY", "merchantAccount": "tDOiEi4R", "notificationHmacKey": "uEcHCSGh", "notificationPassword": "pOZQFlwO", "notificationUsername": "iuKGDFgK", "returnUrl": "49YuKnXk", "settings": "s0m8ANrc"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'Ral7ta3f' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'ojA3h4MM' --body '{"appId": "W3AJ5zls", "privateKey": "FBwjvLYv", "publicKey": "mg6avudQ", "returnUrl": "FF1CPNY9"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'u2dVYdgl' --login_with_auth "Bearer foo"
platform-update-checkout-config 'OOoCeK0k' --body '{"publicKey": "PKmBqVux", "secretKey": "3lXcD8ae"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'rtAVCqs8' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'XT8xy3nJ' --body '{"clientID": "06KkseA0", "clientSecret": "ARj9ricf", "returnUrl": "ayvnhi8M", "webHookId": "DdY4WLHo"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'aUkYnQp5' --login_with_auth "Bearer foo"
platform-update-stripe-config 'egdmVE8I' --body '{"allowedPaymentMethodTypes": ["mivNtQxq"], "publishableKey": "WRKHohOD", "secretKey": "oWOr98kj", "webhookSecret": "BUas9jjz"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '2FrgiaGr' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'cB7dIOVK' --body '{"appId": "IPSJJHo5", "key": "W8tKH8ou", "mchid": "9SdbxSXc", "returnUrl": "rEFCwqeG"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'NLdIBRdl' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'iFQVMKEz' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'VUWlUWDs' --body '{"apiKey": "2x1EQU0o", "flowCompletionUrl": "epEvcjaS", "merchantId": 12, "projectId": 60, "projectSecretKey": "h6jJnFxi"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'nIHJ1o7a' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'q5Zznd5e' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "uRlhreQV", "region": "FID3o8hJ", "sandboxTaxJarApiToken": "WVjKIOAw", "specials": ["XSOLLA"], "taxJarApiToken": "vAHhSGWU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'q1Za3IBC' --body '{"aggregate": "XSOLLA", "namespace": "QFsUJPfi", "region": "aJp1rt7O", "sandboxTaxJarApiToken": "BgBCe6N0", "specials": ["ALIPAY"], "taxJarApiToken": "I65Mn5tn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'YXgPVT5C' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "qXDZBVMJ", "taxJarApiToken": "yJeKFO92", "taxJarEnabled": true, "taxJarProductCodesMapping": {"taZvJoKS": "0OxyipZu"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'O4N9S2YC' 'gHa6XBcv' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'GRYk5rUt' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'WHCnhmzz' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'ppV7tKNK' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'YUQVBXym' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'WcNlHaFx' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'YaGHUpmB' --login_with_auth "Bearer foo"
platform-public-search-items 'FyOrFKtx' 'GNAi0fq4' --login_with_auth "Bearer foo"
platform-public-get-app 'xChPLd2l' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'Oopc7XoV' --login_with_auth "Bearer foo"
platform-public-get-item 'pdd6rCpy' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "MrnH9YHX", "paymentProvider": "ALIPAY", "returnUrl": "7KnCVOKY", "ui": "2zsBRGtd", "zipCode": "8QY2OLbi"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'jrvfr8hk' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'njWUWdMU' --login_with_auth "Bearer foo"
platform-pay 'XHvw4pNl' --body '{"token": "GLjdBxLM"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '079pDAbT' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ALIPAY' 'msEYEq2G' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'kYK1vYm9' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'flXQ7CQo' 'emnQG0dH' 'XSOLLA' 'HTPqDhkc' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'u5vnz6Gi' 'ADYEN' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'oBJHml0L' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'JmpPi4mq' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'hruiCZLG' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'GP5UXkHN' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'TMapp5Sb' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'onsUJKAD' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'r60EkdFr' --body '{"epicGamesJwtToken": "pLsGt9yT"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'XWUSCQcM' --body '{"serviceLabel": 36}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'HN7reI22' --body '{"appId": "ks7I12tA", "steamId": "Zc8sxxLx"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '9XQeqNWL' --body '{"xstsToken": "m8cNJbYH"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '5J4WiJLv' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '9NvHwtw2' 'Mjcy9ZL6' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'Zs5Bu2XY' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'pLWZeUKJ' 'JNftRpGg' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'k1iseREz' 'zRG6z9wm' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'uHddyOdi' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'bI1LVyqb' 'dY8DGZKA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'uoIKz3Pp' '3zLWUxMz' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'MtSmMmZP' '8nG0FoQP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '8q7aSsb8' '5gAh9RD3' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'ZzN6N1iJ' '8ltt9IRq' --body '{"useCount": 57}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'flgln6r5' --body '{"code": "f0s5H6lC", "language": "qh", "region": "LLCgw5av"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '4LExdabD' --body '{"excludeOldTransactions": false, "language": "Vh_502", "productId": "s3XRdHUJ", "receiptData": "0GCmflIX", "region": "kgJ6zkTw", "transactionId": "oakq7sEe"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'jFZ1NtON' --body '{"epicGamesJwtToken": "Xb9w9hsQ"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'HszIsfrl' --body '{"autoAck": true, "language": "PqDD-nT", "orderId": "vBtqFSkA", "packageName": "68mIVYJ5", "productId": "pSVxBsLh", "purchaseTime": 39, "purchaseToken": "y3pecToX", "region": "A4M1oUFP"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'hgo7Z6mw' --body '{"currencyCode": "NC4FY69m", "price": 0.5984429862291547, "productId": "7joJNOGB", "serviceLabel": 79}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 's6Hl5Poa' --body '{"appId": "b6lKoVqN", "language": "uZi_LQUs-ZV", "region": "FtKa2mOA", "stadiaPlayerId": "qOokV1pl"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'xQ2YriTP' --body '{"appId": "fipD67jI", "currencyCode": "2hiZkrtL", "language": "Hu_QV", "price": 0.8467071482101634, "productId": "Mz1b7Snz", "region": "kXOek83I", "steamId": "gm1wkSWs"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'YvAsu18o' --body '{"gameId": "bUdc8mbv", "language": "WC-vD", "region": "sEc3ClFP"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '3mJwusCB' --body '{"currencyCode": "Te4kLcuq", "price": 0.5843429109758178, "productId": "0NYgekRa", "xstsToken": "vpaGTA9B"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'TyCCyN4F' --login_with_auth "Bearer foo"
platform-public-create-user-order 'w9i6mI2W' --body '{"currencyCode": "3tjjCqPV", "discountedPrice": 49, "ext": {"Ys01hEYz": {}}, "itemId": "Ww3qrcxM", "language": "pax_FpAO", "price": 96, "quantity": 63, "region": "spkU5kn6", "returnUrl": "PlPqD4Ag"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'fasBfclB' 'hZjZbLnm' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'ghKwPyVI' 'n3qaHP7K' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'NulyfrEN' 'VQkpcaWH' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'f6T2xOOl' 'jn7c6c9e' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'fJI02TZx' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'rgLBFJEk' 'card' 'hFz0h6Wp' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'oVpVc2HB' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'Bmj6cEi0' --body '{"currencyCode": "2hXl42ub", "itemId": "CRfy4GjK", "language": "iT-rHQN", "region": "bLuQOGMO", "returnUrl": "EzmdjNhT", "source": "0S46kqyf"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'MBSaZc4S' 'A16M8gQC' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'D7aBHWCY' 'evNkfcQv' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'l4Oso7tx' '65zXCiTf' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'jorLFqTm' 'IUFUoonH' --body '{"immediate": true, "reason": "I13SZFHf"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'm0F8vS2B' 'rZ3nq88Y' --login_with_auth "Bearer foo"
platform-public-get-wallet 'SSD7zV0C' '8FvVU3kR' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'XBGPXIdf' 't1biZHuh' --login_with_auth "Bearer foo"
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
echo "1..340"

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
    --body '{"context": {"item": {"appId": "WyFPHdXc", "appType": "SOFTWARE", "baseAppId": "vZEhYeUS", "boothName": "y5Ukc65n", "boundItemIds": ["aP11R8Xw"], "categoryPath": "w9vq9nMa", "clazz": "2Btgwyuf", "createdAt": "1998-02-08T00:00:00Z", "description": "jV30SLxi", "displayOrder": 41, "entitlementType": "DURABLE", "ext": {"haeFtcO9": {}}, "features": ["XNy63QO9"], "images": [{"as": "vW0ck7TE", "caption": "DE8LeEQB", "height": 8, "imageUrl": "GPLiE6tH", "smallImageUrl": "Cr0GPFvT", "width": 88}], "itemId": "AK91y5vC", "itemIds": ["eBIJq0B9"], "itemQty": {"UcI6c5cr": 9}, "itemType": "BUNDLE", "language": "alHOZphc", "listable": false, "localExt": {"cnjnmyU8": {}}, "longDescription": "FSxXdCrs", "maxCount": 21, "maxCountPerUser": 29, "name": "Fqnowq9L", "namespace": "az1GLt5M", "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 0, "fixedTrialCycles": 15, "graceDays": 24}, "region": "bVPm2g7x", "regionData": [{"currencyCode": "AFfRRLUj", "currencyNamespace": "fWS9sftI", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1987-02-04T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1994-12-26T00:00:00Z", "discountedPrice": 88, "expireAt": "1995-11-15T00:00:00Z", "price": 42, "purchaseAt": "1997-11-21T00:00:00Z", "trialPrice": 77}], "seasonType": "PASS", "sku": "RO6E2Mkr", "stackable": false, "status": "INACTIVE", "tags": ["7FvaACp6"], "targetCurrencyCode": "he0fzjkP", "targetItemId": "NNS0BfgF", "targetNamespace": "6inIRsZ5", "thumbnailUrl": "hrqNzVsz", "title": "GVP5P1iw", "updatedAt": "1974-01-18T00:00:00Z", "useCount": 11}, "namespace": "30C1KHRZ", "order": {"currency": {"currencyCode": "HMGy5vbf", "currencySymbol": "ZvYIFFct", "currencyType": "VIRTUAL", "decimals": 73, "namespace": "OLxSRxe0"}, "ext": {"wmWBMcNi": {}}, "free": false}, "source": "IAP"}, "script": "bB6o6alT", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'P0EpE9wG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'NVwkgfJJ' \
    --body '{"grantDays": "2HIalfzg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'RpTf9lxF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '1JPBizXZ' \
    --body '{"grantDays": "trGe8LyO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateFulfillmentScript' test.out

#- 8 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'QueryCampaigns' test.out

#- 9 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "H24nneZH", "items": [{"extraSubscriptionDays": 62, "itemId": "eRld0bGA", "itemName": "7JxWYzaE", "quantity": 0}], "maxRedeemCountPerCampaignPerUser": 16, "maxRedeemCountPerCode": 24, "maxRedeemCountPerCodePerUser": 42, "maxSaleCount": 28, "name": "kcWX59kw", "redeemEnd": "1975-09-29T00:00:00Z", "redeemStart": "1974-09-25T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["0fGpU209"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'VRclumQT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'Fvr5rRyY' \
    --body '{"description": "zaNmz3Pj", "items": [{"extraSubscriptionDays": 76, "itemId": "x2T89NTr", "itemName": "FRUCXFkr", "quantity": 40}], "maxRedeemCountPerCampaignPerUser": 47, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 12, "maxSaleCount": 30, "name": "kcXCfzgc", "redeemEnd": "1981-06-23T00:00:00Z", "redeemStart": "1997-08-26T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["comPS1E7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'cpsLgr2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetCampaignDynamic' test.out

#- 13 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetRootCategories' test.out

#- 14 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'EnjyRNjE' \
    --body '{"categoryPath": "C3FMDcZv", "localizationDisplayNames": {"wwf8aU98": "In31mF4j"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCategory' test.out

#- 15 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ListCategoriesBasic' test.out

#- 16 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'lwKyGxTF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '1l5q1Np0' \
    'sT1X8J2e' \
    --body '{"localizationDisplayNames": {"AWOzjmh9": "UzIfnhoo"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '6xUmTleU' \
    'nJFM7Xho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'DxGik2JS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'fZ64wWeP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'q6103PON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'KIS7F9em' \
    --body '{"quantity": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
$PYTHON -m $MODULE 'platform-download' \
    '4R15tAsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'G31CEyUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'uOZhmnHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'vek6Aa5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'Nnoclxs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'kxcvIpV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'mCYfWKjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'EnableCode' test.out

#- 30 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ListCurrencies' test.out

#- 31 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "9CsQYsGy", "currencySymbol": "hEOntEke", "currencyType": "REAL", "decimals": 77, "localizationDescriptions": {"1A0bFqvj": "xbT3YuVd"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'aBN5RSjh' \
    --body '{"localizationDescriptions": {"cjuDvNrX": "L845jfh5"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'tZ0hqJLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'QUmoYUnC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '849OBNuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetCurrencySummary' test.out

#- 36 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetDLCItemConfig' test.out

#- 37 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "ZtofGAAa", "rewards": [{"currency": {"currencyCode": "MpBQArU4", "namespace": "RS0FQRy5"}, "item": {"itemId": "Qz5VcyfB", "itemSku": "pHjtvFwK", "itemType": "SJyZeqvp"}, "quantity": 8, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateDLCItemConfig' test.out

#- 38 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteDLCItemConfig' test.out

#- 39 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetPlatformDLCConfig' test.out

#- 40 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"VXTxs9LT": "orIyx23L"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePlatformDLCConfig' test.out

#- 41 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeletePlatformDLCConfig' test.out

#- 42 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'QueryEntitlements' test.out

#- 43 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'hLy7ds3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetEntitlement' test.out

#- 44 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryFulfillmentHistories' test.out

#- 45 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetAppleIAPConfig' test.out

#- 46 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "3BuHTPF1", "password": "9dBYFws5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateAppleIAPConfig' test.out

#- 47 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteAppleIAPConfig' test.out

#- 48 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetEpicGamesIAPConfig' test.out

#- 49 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "Ya4eOwWq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateEpicGamesIAPConfig' test.out

#- 50 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteEpicGamesIAPConfig' test.out

#- 51 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGoogleIAPConfig' test.out

#- 52 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "W8HiLpTi", "serviceAccountId": "1W63Hccg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGoogleIAPConfig' test.out

#- 53 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteGoogleIAPConfig' test.out

#- 54 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGoogleP12File' test.out

#- 55 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetIAPItemConfig' test.out

#- 56 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "M5kYu36J", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"TL55W4ws": "3KCyplY1"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateIAPItemConfig' test.out

#- 57 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteIAPItemConfig' test.out

#- 58 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetPlayStationIAPConfig' test.out

#- 59 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"environment": "ocKDCVaq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdatePlaystationIAPConfig' test.out

#- 60 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeletePlaystationIAPConfig' test.out

#- 61 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetStadiaIAPConfig' test.out

#- 62 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteStadiaIAPConfig' test.out

#- 63 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateStadiaJsonConfigFile' test.out

#- 64 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetSteamIAPConfig' test.out

#- 65 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "rVeegT3u", "publisherAuthenticationKey": "GDIIcvuu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateSteamIAPConfig' test.out

#- 66 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteSteamIAPConfig' test.out

#- 67 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetTwitchIAPConfig' test.out

#- 68 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "okt8TC38", "clientSecret": "mYoUanQT", "organizationId": "4Mmznv7r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateTwitchIAPConfig' test.out

#- 69 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteTwitchIAPConfig' test.out

#- 70 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetXblIAPConfig' test.out

#- 71 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "2jthibge"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateXblIAPConfig' test.out

#- 72 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteXblAPConfig' test.out

#- 73 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateXblBPCertFile' test.out

#- 74 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'CLX41qyO' \
    --body '{"categoryPath": "iLgd8Wy7", "targetItemId": "39QHzw0T", "targetNamespace": "Ezpd7TV5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'vhMM2i3D' \
    --body '{"appId": "M6etfI7T", "appType": "SOFTWARE", "baseAppId": "C3sKmtsy", "boothName": "EKdO6HNm", "categoryPath": "3zGu71qT", "clazz": "SSJEbWlE", "displayOrder": 91, "entitlementType": "CONSUMABLE", "ext": {"9XOCA1X3": {}}, "features": ["HHMTlakA"], "images": [{"as": "WQfBuBAO", "caption": "CjBfYCcp", "height": 23, "imageUrl": "ye2GaPNz", "smallImageUrl": "krgBH4ic", "width": 25}], "itemIds": ["l6L36Vg2"], "itemQty": {"F2Q9aZDJ": 12}, "itemType": "COINS", "listable": true, "localizations": {"70TevJgs": {"description": "b2PyFfJ6", "localExt": {"qcHABdGt": {}}, "longDescription": "V9jAPqon", "title": "7UmLNy9P"}}, "maxCount": 21, "maxCountPerUser": 62, "name": "9SnlbWNc", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 43, "fixedTrialCycles": 40, "graceDays": 66}, "regionData": {"DqJtYC7r": [{"currencyCode": "znwNdLhq", "currencyNamespace": "XvXVnjvc", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1973-02-19T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1978-02-05T00:00:00Z", "discountedPrice": 40, "expireAt": "1974-05-03T00:00:00Z", "price": 74, "purchaseAt": "1995-08-02T00:00:00Z", "trialPrice": 67}]}, "seasonType": "PASS", "sku": "nOmmyXu6", "stackable": true, "status": "ACTIVE", "tags": ["NCqYk9TP"], "targetCurrencyCode": "UKcDTfR7", "targetNamespace": "dpUEo2Oe", "thumbnailUrl": "08HpeJBf", "useCount": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '0nGZHe5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetItemByAppId' test.out

#- 77 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'QueryItems' test.out

#- 78 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ListBasicItemsByFeatures' test.out

#- 79 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'w2TlkPIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'L9v4fpCd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '0Uk5h1kP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetItemIdBySku' test.out

#- 82 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetBulkItemIdBySkus' test.out

#- 83 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '1pkkT08C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    's6DdXZWo' \
    'wBgZizMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'SearchItems' test.out

#- 85 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'QueryUncategorizedItems' test.out

#- 86 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'wHszf84M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetItem' test.out

#- 87 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'AmayJJ6v' \
    'zDTXxsyI' \
    --body '{"appId": "aTgp0pwn", "appType": "SOFTWARE", "baseAppId": "JL15kxO4", "boothName": "oVUPng5J", "categoryPath": "sHAkI47j", "clazz": "O1wuAFuZ", "displayOrder": 4, "entitlementType": "DURABLE", "ext": {"PteKdQgU": {}}, "features": ["TF33fYWZ"], "images": [{"as": "fQMAnziT", "caption": "haE2btn0", "height": 41, "imageUrl": "p9GeTQ7X", "smallImageUrl": "ymDSQNYX", "width": 78}], "itemIds": ["EpZyFhIe"], "itemQty": {"qiNHtVSn": 14}, "itemType": "MEDIA", "listable": false, "localizations": {"y8F6xF8M": {"description": "hbJAYEDN", "localExt": {"1xszppR6": {}}, "longDescription": "9nsKAS5z", "title": "KsTRXd7b"}}, "maxCount": 42, "maxCountPerUser": 11, "name": "kZIkr06o", "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 29, "fixedTrialCycles": 94, "graceDays": 71}, "regionData": {"LGXekomv": [{"currencyCode": "wD849mo5", "currencyNamespace": "vIkDZYrY", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1997-07-02T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1977-04-05T00:00:00Z", "discountedPrice": 47, "expireAt": "1987-09-22T00:00:00Z", "price": 98, "purchaseAt": "1975-09-10T00:00:00Z", "trialPrice": 29}]}, "seasonType": "TIER", "sku": "wKW6AOnq", "stackable": false, "status": "INACTIVE", "tags": ["uXMWqG8f"], "targetCurrencyCode": "NprJx82n", "targetNamespace": "AFexNou1", "thumbnailUrl": "AicsQjKx", "useCount": 74}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateItem' test.out

#- 88 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'jetHEw0a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteItem' test.out

#- 89 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'CQpU6EGO' \
    --body '{"count": 96, "orderNo": "0VAI87DP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AcquireItem' test.out

#- 90 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'H0fLLiUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetApp' test.out

#- 91 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'zay0gET8' \
    'T53yEej7' \
    --body '{"carousel": [{"alt": "DsqsTvNK", "previewUrl": "AXqfqMJH", "thumbnailUrl": "GeHaN2k1", "type": "video", "url": "utm9AAWD", "videoSource": "generic"}], "developer": "Dv3ISBgZ", "forumUrl": "CAf2pWOW", "genres": ["Indie"], "localizations": {"4I2lOHfi": {"announcement": "u4HraKYM", "slogan": "tgBmvCHM"}}, "platformRequirements": {"tF15a7T0": [{"additionals": "IheywiPE", "directXVersion": "1WUR1PTF", "diskSpace": "fJJ46kzf", "graphics": "qapbByIK", "label": "oYzYtTWJ", "osVersion": "A3nFCDgW", "processor": "Opz3yPQf", "ram": "qbeVG7i4", "soundCard": "VTAhuFYh"}]}, "platforms": ["MacOS"], "players": ["Coop"], "primaryGenre": "Strategy", "publisher": "Bb9Hni6l", "releaseDate": "1985-11-05T00:00:00Z", "websiteUrl": "j9gvkBcQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateApp' test.out

#- 92 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'jQ56RuAv' \
    'UlMWp8WG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DisableItem' test.out

#- 93 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'pZxCe0Ks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetItemDynamicData' test.out

#- 94 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'mXtGBbKr' \
    'V58TIThQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'EnableItem' test.out

#- 95 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '52PYNknB' \
    'Cjirw4hm' \
    'fMSl2bET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'FeatureItem' test.out

#- 96 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'uFLFOfdl' \
    '0yRndbO7' \
    '8R8ybYsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DefeatureItem' test.out

#- 97 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'x3BIgGuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetLocaleItem' test.out

#- 98 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '817lZA58' \
    --body '{"orderNo": "OI2LMYRX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'ReturnItem' test.out

#- 99 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'QueryKeyGroups' test.out

#- 100 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "16nfCJ83", "name": "3JKRNcdp", "status": "INACTIVE", "tags": ["CxSDFWMV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'CreateKeyGroup' test.out

#- 101 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'csOZlS0u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetKeyGroup' test.out

#- 102 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'lerU61dr' \
    --body '{"description": "wLngbZxO", "name": "GxFwnmB6", "status": "ACTIVE", "tags": ["a7XItZS8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateKeyGroup' test.out

#- 103 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'KIu9T604' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetKeyGroupDynamic' test.out

#- 104 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'oPajgySh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'ListKeys' test.out

#- 105 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'KuLB7pQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UploadKeys' test.out

#- 106 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'QueryOrders' test.out

#- 107 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetOrderStatistics' test.out

#- 108 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'ZiWVmc8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetOrder' test.out

#- 109 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'VwShVQz7' \
    --body '{"description": "FY3h2oVV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'RefundOrder' test.out

#- 110 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetPaymentCallbackConfig' test.out

#- 111 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "Vv3YTBM4", "privateKey": "teOpqevs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'UpdatePaymentCallbackConfig' test.out

#- 112 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'QueryPaymentNotifications' test.out

#- 113 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'QueryPaymentOrders' test.out

#- 114 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "WvMhiheE", "currencyNamespace": "2KM7Ctal", "customParameters": {"5z7hLiOY": {}}, "description": "z1jFfu1y", "extOrderNo": "1d77D8ZN", "extUserId": "OfHyenhb", "itemType": "APP", "language": "JJJu_ylCg", "metadata": {"EDZbDl9Z": "eZH3M87v"}, "notifyUrl": "0FhdKDEf", "omitNotification": false, "platform": "aO0AYSqv", "price": 5, "recurringPaymentOrderNo": "V2LqfgCX", "region": "28Je4kyP", "returnUrl": "QjgDJNOE", "sandbox": true, "sku": "dEtN4sEe", "subscriptionId": "bnQucgao", "targetNamespace": "p5NEdhur", "targetUserId": "ScNiUxnJ", "title": "UewUVhkG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'CreatePaymentOrderByDedicated' test.out

#- 115 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'RRTgLCb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListExtOrderNoByExtTxId' test.out

#- 116 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'evywZywu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetPaymentOrder' test.out

#- 117 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'nLImNhyZ' \
    --body '{"extTxId": "sb7YhhQb", "paymentMethod": "DxLRKxzU", "paymentProvider": "STRIPE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ChargePaymentOrder' test.out

#- 118 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'pKDC8gl2' \
    --body '{"description": "otjUWKxg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'RefundPaymentOrderByDedicated' test.out

#- 119 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'W6n8AJae' \
    --body '{"amount": 33, "currencyCode": "xTPgZKFi", "notifyType": "REFUND", "paymentProvider": "CHECKOUT", "salesTax": 57, "vat": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'SimulatePaymentOrderNotification' test.out

#- 120 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '4ig5ZRoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetPaymentOrderChargeStatus' test.out

#- 121 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetPlatformWalletConfig' test.out

#- 122 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["Other"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdatePlatformWalletConfig' test.out

#- 123 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'ResetPlatformWalletConfig' test.out

#- 124 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "fh3l8HyG", "eventTopic": "WZTdpmTx", "maxAwarded": 82, "maxAwardedPerUser": 93, "namespaceExpression": "BFjTIIKc", "rewardCode": "XlxPfdDy", "rewardConditions": [{"condition": "jJ0wwrYe", "conditionName": "ljMyoeb3", "eventName": "gsMOMdqb", "rewardItems": [{"duration": 39, "itemId": "4PnuFr18", "quantity": 16}]}], "userIdExpression": "jp3Cmzrf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'CreateReward' test.out

#- 125 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'QueryRewards' test.out

#- 126 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'ExportRewards' test.out

#- 127 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ImportRewards' test.out

#- 128 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    '1vi9oky2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetReward' test.out

#- 129 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'P7fIgBRS' \
    --body '{"description": "BlxukoOT", "eventTopic": "CosjAXo6", "maxAwarded": 22, "maxAwardedPerUser": 18, "namespaceExpression": "BVW8r7ny", "rewardCode": "NcVl6ZB3", "rewardConditions": [{"condition": "bGHupBuA", "conditionName": "L2avXKOj", "eventName": "wGRJbZqX", "rewardItems": [{"duration": 13, "itemId": "Q9azOreT", "quantity": 37}]}], "userIdExpression": "viZmgm0l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateReward' test.out

#- 130 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    '8Yr4wmgi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'DeleteReward' test.out

#- 131 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'wIF5Zx5T' \
    --body '{"payload": {"IIhBtL3z": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'CheckEventCondition' test.out

#- 132 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ListStores' test.out

#- 133 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "T6xRqyV0", "defaultRegion": "tlLaMYL1", "description": "p95v9mOi", "supportedLanguages": ["IFEdQ2RK"], "supportedRegions": ["eQy2WRzt"], "title": "R5qztuhV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'CreateStore' test.out

#- 134 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'ImportStore' test.out

#- 135 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetPublishedStore' test.out

#- 136 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'DeletePublishedStore' test.out

#- 137 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'GetPublishedStoreBackup' test.out

#- 138 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'RollbackPublishedStore' test.out

#- 139 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'aJDWx2Od' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetStore' test.out

#- 140 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'rUV7bhcK' \
    --body '{"defaultLanguage": "GIOZcB6N", "defaultRegion": "WffXkYze", "description": "s2xHp1uf", "supportedLanguages": ["ZNxhbsaS"], "supportedRegions": ["FtTmbIf2"], "title": "hFQRmsi0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateStore' test.out

#- 141 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '2melJQkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DeleteStore' test.out

#- 142 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'tV2QnPsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'QueryChanges' test.out

#- 143 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'hFVPtJTG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'PublishAll' test.out

#- 144 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'ig12OdDn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'PublishSelected' test.out

#- 145 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'xXuJoZgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'SelectAllRecords' test.out

#- 146 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'G4tOeWVM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'GetStatistic' test.out

#- 147 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'I9K1eJ6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'UnselectAllRecords' test.out

#- 148 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'C2h6U8Tg' \
    'R2k2RkEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'SelectRecord' test.out

#- 149 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '8XbmQNuv' \
    '80Em9nuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UnselectRecord' test.out

#- 150 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'fLGUWnVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'CloneStore' test.out

#- 151 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'QPhwwHR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'ExportStore' test.out

#- 152 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'QuerySubscriptions' test.out

#- 153 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'qyfFcSCd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RecurringChargeSubscription' test.out

#- 154 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'kfe5eawF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetTicketDynamic' test.out

#- 155 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'pdHeH5p8' \
    --body '{"orderNo": "Zx8jy7nx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'DecreaseTicketSale' test.out

#- 156 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'GzOTBpmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetTicketBoothID' test.out

#- 157 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'juEEEyDt' \
    --body '{"count": 44, "orderNo": "btA8xsmm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'IncreaseTicketSale' test.out

#- 158 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'caOLdFif' \
    --body '{"achievements": [{"id": "Uk9p700j", "value": 55}], "steamUserId": "0p4HpK8p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'UnlockSteamUserAchievement' test.out

#- 159 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'vufSxYM0' \
    'VkuqOKrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetXblUserAchievements' test.out

#- 160 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'vMwvD04U' \
    --body '{"achievements": [{"id": "Y8ghvsmS", "percentComplete": 35}], "serviceConfigId": "rJzAi6FO", "titleId": "uhQIBAbu", "xboxUserId": "p1fpWsO6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateXblUserAchievement' test.out

#- 161 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'fW468fWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AnonymizeCampaign' test.out

#- 162 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'qRkJDjfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AnonymizeEntitlement' test.out

#- 163 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'hYDgVm0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AnonymizeFulfillment' test.out

#- 164 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Caos4wyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeIntegration' test.out

#- 165 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'aPP6Clek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeOrder' test.out

#- 166 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'QGm25KYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AnonymizePayment' test.out

#- 167 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'FZxQr4xb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeSubscription' test.out

#- 168 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'V63gcdU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeWallet' test.out

#- 169 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'vyIPJeRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'QueryUserEntitlements' test.out

#- 170 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'Cj7UK5nE' \
    --body '[{"endDate": "1977-06-30T00:00:00Z", "grantedCode": "sQtSfDqA", "itemId": "4CysEX4V", "itemNamespace": "Oy0n2EkP", "language": "JcE-607", "quantity": 15, "region": "3m2eX31q", "source": "REWARD", "startDate": "1998-09-23T00:00:00Z", "storeId": "Dznf57fQ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GrantUserEntitlement' test.out

#- 171 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '1PY5uDkQ' \
    '8zpNRwyc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetUserAppEntitlementByAppId' test.out

#- 172 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'EAShpFLp' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QueryUserEntitlementsByAppType' test.out

#- 173 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Ax1N5IGe' \
    'bNuvyrgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementByItemId' test.out

#- 174 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'VdsSwDc9' \
    'NJRX9Zda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetUserEntitlementBySku' test.out

#- 175 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'C8sja1J7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ExistsAnyUserActiveEntitlement' test.out

#- 176 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'eucGSSxZ' \
    '["JPto04wT"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 177 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'EI8isXmy' \
    'AGW2rZ7b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 178 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'YvVW26Oa' \
    'ysx72rwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementOwnershipByItemId' test.out

#- 179 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '3MdXNVRD' \
    'zT2sBbfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetUserEntitlementOwnershipBySku' test.out

#- 180 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'g7cD247c' \
    '1XYYJf18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'RevokeUserEntitlements' test.out

#- 181 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'StYu6wb2' \
    'We3Q6Pm7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserEntitlement' test.out

#- 182 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'RBkqWDPE' \
    'P4CWnZJj' \
    --body '{"endDate": "1995-01-26T00:00:00Z", "nullFieldList": ["iUv9owF1"], "startDate": "1977-12-03T00:00:00Z", "status": "INACTIVE", "useCount": 5}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateUserEntitlement' test.out

#- 183 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '03W7oOdp' \
    'Y5ZJChQt' \
    --body '{"useCount": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'ConsumeUserEntitlement' test.out

#- 184 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'D2U9IQzA' \
    '2eexjq3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DisableUserEntitlement' test.out

#- 185 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'fnJ6ryQ4' \
    'wCg5Itn9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'EnableUserEntitlement' test.out

#- 186 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'TYOR2n8q' \
    'FjjSZx0F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementHistories' test.out

#- 187 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'eRdmgOta' \
    '6pcKzSPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'RevokeUserEntitlement' test.out

#- 188 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'ek369fIM' \
    --body '{"duration": 39, "endDate": "1972-07-06T00:00:00Z", "itemId": "wt2XqPFa", "itemSku": "IxBgzRO8", "language": "GKycdcXu", "order": {"currency": {"currencyCode": "ULpvuBNR", "currencySymbol": "zUbH0hI7", "currencyType": "VIRTUAL", "decimals": 56, "namespace": "EyjKXQPn"}, "ext": {"omAsHMpm": {}}, "free": true}, "orderNo": "vt4tkWav", "origin": "Xbox", "quantity": 19, "region": "o17Qq6AF", "source": "ACHIEVEMENT", "startDate": "1986-12-12T00:00:00Z", "storeId": "b19BcvWf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'FulfillItem' test.out

#- 189 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'PxHPQaUC' \
    --body '{"code": "lyAjfGkG", "language": "dSO", "region": "ZjNjjtl8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'RedeemCode' test.out

#- 190 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'XIGZV3GB' \
    --body '{"origin": "System", "rewards": [{"currency": {"currencyCode": "HxWGX4iw", "namespace": "wHLohaKv"}, "item": {"itemId": "D9nNeLi2", "itemSku": "tRrclM3o", "itemType": "5FmkWcIp"}, "quantity": 97, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'FulfillRewards' test.out

#- 191 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'LNxQciSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QueryUserIAPOrders' test.out

#- 192 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '2ObiacE1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'QueryAllUserIAPOrders' test.out

#- 193 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'VtVP5yWK' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "Ho_vtQM", "productId": "kniWG9At", "region": "aznHrmvF", "type": "PLAYSTATION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'MockFulfillIAPItem' test.out

#- 194 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'JZ3dLFxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryUserOrders' test.out

#- 195 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'kQrsQXCU' \
    --body '{"currencyCode": "jnXNZpac", "currencyNamespace": "dMfX6X3Z", "discountedPrice": 39, "ext": {"a5msSId5": {}}, "itemId": "56xncCH3", "language": "7zoQElCS", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 19, "quantity": 73, "region": "mIIb0iBS", "returnUrl": "A7vdLvUF", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminCreateUserOrder' test.out

#- 196 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'N6ucqfJt' \
    'h42FD6A3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'CountOfPurchasedItem' test.out

#- 197 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'kchLvxRu' \
    'ULxDjXJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserOrder' test.out

#- 198 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'BFwEyGUC' \
    'v8O9EBlP' \
    --body '{"status": "CLOSED", "statusReason": "ENb7inSC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserOrderStatus' test.out

#- 199 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'GzNuHpAB' \
    'tt9GgpAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'FulfillUserOrder' test.out

#- 200 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'jcg8z9cH' \
    '6u6SmVFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserOrderGrant' test.out

#- 201 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'iDGufTZk' \
    '7gk6nZZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserOrderHistories' test.out

#- 202 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'UCWs5b2f' \
    'lAnrsypC' \
    --body '{"additionalData": {"cardSummary": "RQfPhfO9"}, "authorisedTime": "1986-01-02T00:00:00Z", "chargebackReversedTime": "1977-02-03T00:00:00Z", "chargebackTime": "1975-10-09T00:00:00Z", "chargedTime": "1981-04-07T00:00:00Z", "createdTime": "1981-01-06T00:00:00Z", "currency": {"currencyCode": "oBRuMFZb", "currencySymbol": "Zvy6mJ2j", "currencyType": "VIRTUAL", "decimals": 7, "namespace": "pqHuBibS"}, "customParameters": {"pyFVnkER": {}}, "extOrderNo": "Z9gwlM0h", "extTxId": "F50v8sFH", "extUserId": "E2trW2mR", "issuedAt": "1979-12-20T00:00:00Z", "metadata": {"8ek4IK6A": "PTpbukLG"}, "namespace": "w4HJ51V5", "nonceStr": "Dd7JZjCv", "paymentMethod": "oCnb0By8", "paymentMethodFee": 64, "paymentOrderNo": "bfDbnZRa", "paymentProvider": "STRIPE", "paymentProviderFee": 73, "paymentStationUrl": "3D9LYj8f", "price": 21, "refundedTime": "1971-05-28T00:00:00Z", "salesTax": 93, "sandbox": true, "sku": "rnCC7OGh", "status": "CHARGE_FAILED", "statusReason": "PV98XUYE", "subscriptionId": "5mm7bHEl", "subtotalPrice": 98, "targetNamespace": "pNGEUuLY", "targetUserId": "9Nu31elz", "tax": 6, "totalPrice": 25, "totalTax": 99, "txEndTime": "1974-07-24T00:00:00Z", "type": "9djDT8Hp", "userId": "J3j7LyGD", "vat": 41}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ProcessUserOrderNotification' test.out

#- 203 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'YXVurnW5' \
    'P0Zs13Ft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DownloadUserOrderReceipt' test.out

#- 204 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'OvKL3NS8' \
    --body '{"currencyCode": "Iq1rRNyH", "currencyNamespace": "R1S2ZUIC", "customParameters": {"8uvkyFCM": {}}, "description": "KBFVFMD8", "extOrderNo": "RmFR37li", "extUserId": "j05gCbgx", "itemType": "MEDIA", "language": "MXCJ-TCMK_IG", "metadata": {"djwdDLkv": "0pxwrYjQ"}, "notifyUrl": "08MafjV6", "omitNotification": false, "platform": "hDDPn2UO", "price": 58, "recurringPaymentOrderNo": "E5C6wjRy", "region": "wXS6QpnJ", "returnUrl": "BEzx6dWq", "sandbox": true, "sku": "ZXp1nDSp", "subscriptionId": "npvCuDbI", "title": "zKZsyGX6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CreateUserPaymentOrder' test.out

#- 205 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'JJkbGq2c' \
    'f2RYx5T5' \
    --body '{"description": "vYIU38uD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RefundUserPaymentOrder' test.out

#- 206 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '0CmguXsT' \
    --body '{"code": "IzKibhFZ", "orderNo": "HPU1Wj69"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ApplyUserRedemption' test.out

#- 207 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'C0WjiFzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserSubscriptions' test.out

#- 208 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'iMY3Ws9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserSubscriptionActivities' test.out

#- 209 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'ISxHT2n4' \
    --body '{"grantDays": 43, "itemId": "zccwccBE", "language": "LwGw2Mtz", "reason": "YXVSOadf", "region": "8DmjQPLv", "source": "wUrZEieu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'PlatformSubscribeSubscription' test.out

#- 210 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'jw5qBkdl' \
    'vUCTavaE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 211 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'gxUviPTr' \
    'KQdlaAHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserSubscription' test.out

#- 212 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'UiWYY25X' \
    'BucG9pj0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'DeleteUserSubscription' test.out

#- 213 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'lvAm79Ji' \
    'fAIygeL9' \
    --body '{"immediate": false, "reason": "OJQAmjxP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'CancelSubscription' test.out

#- 214 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'LaTrFO9w' \
    'j0k9J7zQ' \
    --body '{"grantDays": 22, "reason": "xTM4wAbI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GrantDaysToSubscription' test.out

#- 215 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'aBJF8VQf' \
    'E9fBFxsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserSubscriptionBillingHistories' test.out

#- 216 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'cwU3hInP' \
    'H6WGHoWL' \
    --body '{"additionalData": {"cardSummary": "tuXx6HZK"}, "authorisedTime": "1990-10-28T00:00:00Z", "chargebackReversedTime": "1984-04-09T00:00:00Z", "chargebackTime": "1987-03-29T00:00:00Z", "chargedTime": "1986-08-28T00:00:00Z", "createdTime": "1971-05-28T00:00:00Z", "currency": {"currencyCode": "M2OxvkKm", "currencySymbol": "55nGqL82", "currencyType": "REAL", "decimals": 8, "namespace": "nsZA4XqD"}, "customParameters": {"pcNJf1z3": {}}, "extOrderNo": "5hDEAI2t", "extTxId": "0briD5LI", "extUserId": "WthO7lSG", "issuedAt": "1986-02-23T00:00:00Z", "metadata": {"wwhO3BEq": "q64jTipo"}, "namespace": "jGJpQoqR", "nonceStr": "37zyvGfB", "paymentMethod": "wIwUb2vX", "paymentMethodFee": 80, "paymentOrderNo": "g1Nyvf3E", "paymentProvider": "ALIPAY", "paymentProviderFee": 53, "paymentStationUrl": "S5oIXUfp", "price": 84, "refundedTime": "1982-09-12T00:00:00Z", "salesTax": 0, "sandbox": false, "sku": "76ytXQXB", "status": "INIT", "statusReason": "Hdfrm4ew", "subscriptionId": "y1DqBG8J", "subtotalPrice": 19, "targetNamespace": "ZFetBdgq", "targetUserId": "9tnIAcoM", "tax": 97, "totalPrice": 72, "totalTax": 70, "txEndTime": "1996-11-02T00:00:00Z", "type": "Kj9kmxpX", "userId": "X8J38efu", "vat": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ProcessUserSubscriptionNotification' test.out

#- 217 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'GZB9jaeW' \
    'RzlsDdiu' \
    --body '{"count": 86, "orderNo": "6RZDT5q7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AcquireUserTicket' test.out

#- 218 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'YcCkB6eL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserCurrencyWallets' test.out

#- 219 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'uzsPaXoh' \
    'AvroQYbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'ListUserCurrencyTransactions' test.out

#- 220 CheckWallet
eval_tap 0 220 'CheckWallet # SKIP deprecated' test.out

#- 221 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'fyTgKruu' \
    'tbCF9DcE' \
    --body '{"amount": 95, "expireAt": "1998-12-14T00:00:00Z", "origin": "Steam", "reason": "004RRxWa", "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CreditUserWallet' test.out

#- 222 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'iyCKBsxK' \
    'fO0QMZpB' \
    --body '{"amount": 31, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PayWithUserWallet' test.out

#- 223 GetUserWallet
eval_tap 0 223 'GetUserWallet # SKIP deprecated' test.out

#- 224 DebitUserWallet
eval_tap 0 224 'DebitUserWallet # SKIP deprecated' test.out

#- 225 DisableUserWallet
eval_tap 0 225 'DisableUserWallet # SKIP deprecated' test.out

#- 226 EnableUserWallet
eval_tap 0 226 'EnableUserWallet # SKIP deprecated' test.out

#- 227 ListUserWalletTransactions
eval_tap 0 227 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 228 QueryWallets
eval_tap 0 228 'QueryWallets # SKIP deprecated' test.out

#- 229 GetWallet
eval_tap 0 229 'GetWallet # SKIP deprecated' test.out

#- 230 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'QuO9P251' \
    'BVfUn3Zg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'SyncOrders' test.out

#- 231 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["cThlx4DM"], "apiKey": "5MJ2Pc8b", "authoriseAsCapture": true, "blockedPaymentMethods": ["lwqLyhFM"], "clientKey": "eCxvRHmT", "dropInSettings": "K6J8Prk4", "liveEndpointUrlPrefix": "dhQH62tY", "merchantAccount": "AMHu963t", "notificationHmacKey": "uVtmjatn", "notificationPassword": "R06xDNs2", "notificationUsername": "SWbI1hXV", "returnUrl": "OD0eAWHA", "settings": "N9PfJYqb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'TestAdyenConfig' test.out

#- 232 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Y1oJTdNi", "privateKey": "leWvsff1", "publicKey": "vwfz6XV9", "returnUrl": "5AYceo0e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'TestAliPayConfig' test.out

#- 233 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "ecB0xtL3", "secretKey": "jFZOELdL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'TestCheckoutConfig' test.out

#- 234 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'DebugMatchedPaymentMerchantConfig' test.out

#- 235 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "mYKsPGmu", "clientSecret": "AIxJmj3U", "returnUrl": "DvN6gGLo", "webHookId": "AUPH7Sjr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'TestPayPalConfig' test.out

#- 236 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["EfcuDTSj"], "publishableKey": "7rQ9btDn", "secretKey": "wEzMsiel", "webhookSecret": "cjxQjMfc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestStripeConfig' test.out

#- 237 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "lMXOz5zB", "key": "Krt8bOHG", "mchid": "p5P78hLD", "returnUrl": "gFeSh6En"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'TestWxPayConfig' test.out

#- 238 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "KHynFXOH", "flowCompletionUrl": "8gKVlK1f", "merchantId": 5, "projectId": 69, "projectSecretKey": "lMKOlq53"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'TestXsollaConfig' test.out

#- 239 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'upI4Hja1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetPaymentMerchantConfig' test.out

#- 240 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '5XYvf51z' \
    --body '{"allowedPaymentMethods": ["cBd5rD2W"], "apiKey": "uo6Hrr2N", "authoriseAsCapture": false, "blockedPaymentMethods": ["YUJGZiJe"], "clientKey": "jefFKsLs", "dropInSettings": "zYGFlWNm", "liveEndpointUrlPrefix": "21v93bvh", "merchantAccount": "uxpnWueD", "notificationHmacKey": "oXqziW0p", "notificationPassword": "PTKlfM7O", "notificationUsername": "LcwhNQ0I", "returnUrl": "SPjMA5wY", "settings": "j4TNoMAa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'UpdateAdyenConfig' test.out

#- 241 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'wH8QDHVd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'TestAdyenConfigById' test.out

#- 242 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'TqEMlF2A' \
    --body '{"appId": "UpohDiAh", "privateKey": "JuGjwVio", "publicKey": "nKlaCrO0", "returnUrl": "i06kgIwC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'UpdateAliPayConfig' test.out

#- 243 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'rEgelT8z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'TestAliPayConfigById' test.out

#- 244 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'VC1YeUyH' \
    --body '{"publicKey": "aXqQxmhw", "secretKey": "d575JhR8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateCheckoutConfig' test.out

#- 245 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '0UC9RFvt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'TestCheckoutConfigById' test.out

#- 246 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'xvMfwnQf' \
    --body '{"clientID": "vyXL00wC", "clientSecret": "E65MfNt8", "returnUrl": "OIy8S0Ym", "webHookId": "Pqh1yYYw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdatePayPalConfig' test.out

#- 247 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '5DgqWTzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestPayPalConfigById' test.out

#- 248 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '93flMEy3' \
    --body '{"allowedPaymentMethodTypes": ["MrRfCDtY"], "publishableKey": "mnBmWWso", "secretKey": "EqxMV23J", "webhookSecret": "YjtET8OO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'UpdateStripeConfig' test.out

#- 249 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'Nm1ccFAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestStripeConfigById' test.out

#- 250 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'h3NhEAGD' \
    --body '{"appId": "A9kOIP1a", "key": "4swJXieA", "mchid": "6PNyI4ZD", "returnUrl": "8ZALgmNw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'UpdateWxPayConfig' test.out

#- 251 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'eJppm1WA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'UpdateWxPayConfigCert' test.out

#- 252 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '5zpzKWyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestWxPayConfigById' test.out

#- 253 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'NzBoL7EQ' \
    --body '{"apiKey": "3TeNMSNN", "flowCompletionUrl": "ex5dlwul", "merchantId": 33, "projectId": 15, "projectSecretKey": "fwy74gW8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'UpdateXsollaConfig' test.out

#- 254 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'E4cHgyXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestXsollaConfigById' test.out

#- 255 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'FX94MtRG' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateXsollaUIConfig' test.out

#- 256 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'QueryPaymentProviderConfig' test.out

#- 257 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "sgQKca6O", "region": "wZuwyOkS", "sandboxTaxJarApiToken": "QhtXEMam", "specials": ["ADYEN"], "taxJarApiToken": "7k8cIhle", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'CreatePaymentProviderConfig' test.out

#- 258 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetAggregatePaymentProviders' test.out

#- 259 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'DebugMatchedPaymentProviderConfig' test.out

#- 260 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetSpecialPaymentProviders' test.out

#- 261 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'Hrsu9yZj' \
    --body '{"aggregate": "ADYEN", "namespace": "bdrzATuL", "region": "euen91RQ", "sandboxTaxJarApiToken": "MkVpH8Ac", "specials": ["ADYEN"], "taxJarApiToken": "clJ9CLna", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdatePaymentProviderConfig' test.out

#- 262 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'lQ2x3EnM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DeletePaymentProviderConfig' test.out

#- 263 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetPaymentTaxConfig' test.out

#- 264 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "j99gEy4S", "taxJarApiToken": "y9nZidlJ", "taxJarEnabled": true, "taxJarProductCodesMapping": {"4AmHiTuj": "e6S87DeP"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'UpdatePaymentTaxConfig' test.out

#- 265 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'RQBjep2I' \
    's3ANmYmX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'SyncPaymentOrders' test.out

#- 266 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetRootCategories' test.out

#- 267 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'DownloadCategories' test.out

#- 268 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'hUrICHQ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetCategory' test.out

#- 269 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'TrmIdK8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetChildCategories' test.out

#- 270 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'mYPF6gpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetDescendantCategories' test.out

#- 271 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicListCurrencies' test.out

#- 272 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'JK9qL0Em' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetItemByAppId' test.out

#- 273 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicQueryItems' test.out

#- 274 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'qezbFm0Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetItemBySku' test.out

#- 275 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    '5OsHaOOy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetItems' test.out

#- 276 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'B4Kp7hzU' \
    '9HaTyWFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicSearchItems' test.out

#- 277 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'lLw8K5eo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetApp' test.out

#- 278 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'rxH1KFuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItemDynamicData' test.out

#- 279 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'YygH2i0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItem' test.out

#- 280 GetPaymentCustomization
eval_tap 0 280 'GetPaymentCustomization # SKIP deprecated' test.out

#- 281 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "bngOhbnr", "paymentProvider": "ADYEN", "returnUrl": "Awa0f9bD", "ui": "masQwUIm", "zipCode": "nIPZ2s9W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPaymentUrl' test.out

#- 282 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'LUOBr8Zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetPaymentMethods' test.out

#- 283 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'OMLNA3BJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUnpaidPaymentOrder' test.out

#- 284 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '6xnFtsrd' \
    --body '{"token": "JPTHSCY5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'Pay' test.out

#- 285 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'CUxUobAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicCheckPaymentOrderPaidStatus' test.out

#- 286 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    'eZgYwX4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetPaymentPublicConfig' test.out

#- 287 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'xnhDDe36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetQRCode' test.out

#- 288 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'HMeSdRZd' \
    'fbGUCViB' \
    'CHECKOUT' \
    'K43SHBqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicNormalizePaymentReturnUrl' test.out

#- 289 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '3FrZ27sT' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GetPaymentTaxValue' test.out

#- 290 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '8CNGKXB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetRewardByCode' test.out

#- 291 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'QueryRewards1' test.out

#- 292 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'PHd0dAJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GetReward1' test.out

#- 293 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicListStores' test.out

#- 294 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicExistsAnyMyActiveEntitlement' test.out

#- 295 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'Mq4Xl4dh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 296 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'RnjEOdEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 297 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'LJwo4jNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 298 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetEntitlementOwnershipToken' test.out

#- 299 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'YKgGYPry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetMyWallet' test.out

#- 300 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'jvsOPgnU' \
    --body '{"epicGamesJwtToken": "W9TYFxn3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncEpicGameDLC' test.out

#- 301 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '4wV03oJw' \
    --body '{"serviceLabel": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicSyncPsnDlcInventory' test.out

#- 302 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'CXdXlDay' \
    --body '{"appId": "1d5wzQ8M", "steamId": "i5e6YQR2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'SyncSteamDLC' test.out

#- 303 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'j2NwEyTQ' \
    --body '{"xstsToken": "qkypjj3G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'SyncXboxDLC' test.out

#- 304 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'NMz7FCiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryUserEntitlements' test.out

#- 305 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'siVRT3F9' \
    'T4nWFoOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserAppEntitlementByAppId' test.out

#- 306 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'WpCJKnXY' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicQueryUserEntitlementsByAppType' test.out

#- 307 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '8etpjdAx' \
    'IszZC3Lj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserEntitlementByItemId' test.out

#- 308 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    '7ourPcaz' \
    'nSH2Cxs5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserEntitlementBySku' test.out

#- 309 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'k0AiVIvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicExistsAnyUserActiveEntitlement' test.out

#- 310 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'ckJ4UyHU' \
    'QuSmRQBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 311 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'DNgfJbtT' \
    '26RB4dll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 312 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'AOyAlx2p' \
    'zgH47Jmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 313 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '8F9rVlUO' \
    'hh6OgcWF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlement' test.out

#- 314 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'oDkYwud3' \
    'hXXT8cAM' \
    --body '{"useCount": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicConsumeUserEntitlement' test.out

#- 315 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'jFUukAbW' \
    --body '{"code": "MlmoskPf", "language": "NF", "region": "8npNIaZA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicRedeemCode' test.out

#- 316 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '6bGj3weT' \
    --body '{"excludeOldTransactions": false, "language": "RN", "productId": "SamKfvoB", "receiptData": "CNAFlc2U", "region": "DrxciFB3", "transactionId": "t7Su887E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicFulfillAppleIAPItem' test.out

#- 317 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'y5S3Esks' \
    --body '{"epicGamesJwtToken": "PusIsdtH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'SyncEpicGamesInventory' test.out

#- 318 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '5nDyVn0d' \
    --body '{"autoAck": true, "language": "ufD-lrCi", "orderId": "berqiArH", "packageName": "PblrPveO", "productId": "BBV9k49I", "purchaseTime": 8, "purchaseToken": "IHNjkojd", "region": "Ady9CDCc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicFulfillGoogleIAPItem' test.out

#- 319 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '6KWWGrLJ' \
    --body '{"currencyCode": "j7aNoAWv", "price": 0.847053096502891, "productId": "XLP7elmz", "serviceLabel": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicReconcilePlayStationStore' test.out

#- 320 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'zOrsRps4' \
    --body '{"appId": "NnGGxfLz", "language": "BMqp", "region": "8usTL87x", "stadiaPlayerId": "MPcqN6Kf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'SyncStadiaEntitlement' test.out

#- 321 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '3uB7RkoH' \
    --body '{"appId": "PclOsJaD", "currencyCode": "4RbVS0Cn", "language": "FhG", "price": 0.623814225080071, "productId": "YVv6BjfS", "region": "EeqtMeNJ", "steamId": "SNg3AJJU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamInventory' test.out

#- 322 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '1oQnLDQs' \
    --body '{"gameId": "MpjdBKWr", "language": "Hzrz-367", "region": "Z1nbgtD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'SyncTwitchDropsEntitlement' test.out

#- 323 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'OViuZaI7' \
    --body '{"currencyCode": "Jv2evnHb", "price": 0.045260052854040445, "productId": "M73Dkqoh", "xstsToken": "zhINjwDf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'SyncXboxInventory' test.out

#- 324 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'Ie7xoslK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicQueryUserOrders' test.out

#- 325 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '0BMQF7Vv' \
    --body '{"currencyCode": "TIqMBjCC", "discountedPrice": 55, "ext": {"KnPi4rFN": {}}, "itemId": "HcvCKN66", "language": "cnat-Yl", "price": 81, "quantity": 84, "region": "JxnbExCc", "returnUrl": "zwhRoWp6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicCreateUserOrder' test.out

#- 326 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'lkuHP8bu' \
    'ZiH2GRmQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserOrder' test.out

#- 327 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'R4AtntPi' \
    'lLE8i8KP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCancelUserOrder' test.out

#- 328 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'rA5PyjRz' \
    '6eP98Itq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserOrderHistories' test.out

#- 329 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'gopWhLj5' \
    'tZDX9fbQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadUserOrderReceipt' test.out

#- 330 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'AYktQpmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPaymentAccounts' test.out

#- 331 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'fcWdRdhZ' \
    'card' \
    '6MACiufn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicDeletePaymentAccount' test.out

#- 332 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'Gqyyq7F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicQueryUserSubscriptions' test.out

#- 333 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'aCoZstPA' \
    --body '{"currencyCode": "UCl2eCy6", "itemId": "xDIxbzIR", "language": "SG-ulJE_720", "region": "bG5HAufl", "returnUrl": "1c4Sh7xc", "source": "c4KF44Gs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicSubscribeSubscription' test.out

#- 334 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'n5ewnln4' \
    '9JNf4B4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 335 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'TFAbVqpd' \
    '5OiYOUCH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserSubscription' test.out

#- 336 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'EDiDw1OG' \
    'oQx3PQmY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicChangeSubscriptionBillingAccount' test.out

#- 337 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'e1qncZKQ' \
    'gFGrSQzT' \
    --body '{"immediate": true, "reason": "s6TNpk09"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicCancelSubscription' test.out

#- 338 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'JnLu8mQz' \
    '6huRB8ET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserSubscriptionBillingHistories' test.out

#- 339 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'D3HQirZL' \
    'aWMQtU4o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetWallet' test.out

#- 340 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'yjkCIhkM' \
    'isoOPhEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicListUserWalletTransactions' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
