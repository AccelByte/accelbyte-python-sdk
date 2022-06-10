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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "DEMO", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "DURABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "COINS", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 32, "graceDays": 24}, "region": "AGTJ8IEd", "regionData": [{"currencyCode": "agEtp4w2", "currencyNamespace": "9KOu9c19", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1995-09-24T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1976-11-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1978-10-30T00:00:00Z", "price": 61, "purchaseAt": "1989-10-31T00:00:00Z", "trialPrice": 11}], "seasonType": "PASS", "sku": "iX7jpkVZ", "stackable": false, "status": "ACTIVE", "tags": ["QYEmqGod"], "targetCurrencyCode": "OEGt9gPO", "targetItemId": "j0c6i0Jk", "targetNamespace": "vIas73uc", "thumbnailUrl": "YnFAJ3DK", "title": "5T4Eogg0", "updatedAt": "1996-04-22T00:00:00Z", "useCount": 23}, "namespace": "pv5bVAgt", "order": {"currency": {"currencyCode": "sDhUTDUs", "currencySymbol": "cbQDjbTQ", "currencyType": "VIRTUAL", "decimals": 83, "namespace": "Mz2PTRlk"}, "ext": {"yU89ZPOw": {}}, "free": true}, "source": "GIFT"}, "script": "J42cwmzB", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-update-dlc-item-config --body '{"data": [{"id": "mWDlXsuN", "rewards": [{"currency": {"currencyCode": "IdQJR5ls", "namespace": "NOlvkfwa"}, "item": {"itemId": "SbnsuLCg", "itemSku": "ToxuVTek", "itemType": "Jgvg6h5H"}, "quantity": 68, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"0DviplEk": "4vj3LDp4"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'yqDt8QUZ' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "DpxlHasi", "password": "nGcjrkmR"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "MttgjDSa"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "IVBmft3U", "serviceAccountId": "dg7p9PGm"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "Y2H5kX4M", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"isSX28nA": "RxWRpv5o"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "u5xtvd28"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "OUfCt8UJ", "publisherAuthenticationKey": "C5flNyj6"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "HsTtX8P3", "clientSecret": "llnaaS9l", "organizationId": "qyygPcfk"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "JIxfQZza"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-sync-in-game-item '8kNVbDxV' --body '{"categoryPath": "Mq7HJk0F", "targetItemId": "89xAc3YV", "targetNamespace": "faENtrl0"}' --login_with_auth "Bearer foo"
platform-create-item 'pTKZTXqz' --body '{"appId": "HuBMYQSA", "appType": "SOFTWARE", "baseAppId": "z1ZOpdOj", "boothName": "SyMddB41", "categoryPath": "JuMf7RUy", "clazz": "BHRj8IiR", "displayOrder": 17, "entitlementType": "DURABLE", "ext": {"RllHT6Dc": {}}, "features": ["40vFFA6g"], "images": [{"as": "pU7EW3x1", "caption": "dCpm55gO", "height": 8, "imageUrl": "qQIqcJVK", "smallImageUrl": "mBM1J1Ib", "width": 40}], "itemIds": ["TrrkbmuT"], "itemQty": {"1whOqmEn": 59}, "itemType": "CODE", "listable": true, "localizations": {"PlSay46m": {"description": "v71BAZAO", "localExt": {"jtFJ2vmT": {}}, "longDescription": "j7tT7TZH", "title": "WDdCkIsZ"}}, "maxCount": 29, "maxCountPerUser": 52, "name": "rWwPHcyF", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 52, "fixedTrialCycles": 38, "graceDays": 100}, "regionData": {"ciLIgRwF": [{"currencyCode": "Rr0gwB9t", "currencyNamespace": "z3vp99XV", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1979-10-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1986-04-13T00:00:00Z", "discountedPrice": 36, "expireAt": "1977-03-05T00:00:00Z", "price": 30, "purchaseAt": "1997-05-29T00:00:00Z", "trialPrice": 44}]}, "seasonType": "PASS", "sku": "Ud9pqtv6", "stackable": false, "status": "INACTIVE", "tags": ["cCVOXcVa"], "targetCurrencyCode": "80TmCwtD", "targetNamespace": "2lAH01o6", "thumbnailUrl": "NdcBIgzr", "useCount": 58}' --login_with_auth "Bearer foo"
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
platform-update-item 'K4DEUJRV' 'K3l9Eb0R' --body '{"appId": "1XRb0RH8", "appType": "DLC", "baseAppId": "S1smeOln", "boothName": "grdTXCza", "categoryPath": "PBtkZMio", "clazz": "4wcyhloV", "displayOrder": 88, "entitlementType": "CONSUMABLE", "ext": {"Yp8QtcEm": {}}, "features": ["CEVc75Uf"], "images": [{"as": "eypWjDNh", "caption": "zCL5sWS2", "height": 32, "imageUrl": "wO763iEk", "smallImageUrl": "lkzLm88L", "width": 31}], "itemIds": ["LuYRO3C5"], "itemQty": {"5yHpwK2J": 1}, "itemType": "CODE", "listable": false, "localizations": {"nDGn7a2N": {"description": "UplWiLjq", "localExt": {"06n6a0rW": {}}, "longDescription": "8EfkpaXt", "title": "wYZJaQ4W"}}, "maxCount": 3, "maxCountPerUser": 44, "name": "NmsFYetj", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 35, "fixedTrialCycles": 66, "graceDays": 8}, "regionData": {"loJzNKtR": [{"currencyCode": "UaTz1ETd", "currencyNamespace": "smwzjkkn", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1992-03-28T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1972-11-19T00:00:00Z", "discountedPrice": 76, "expireAt": "1971-11-20T00:00:00Z", "price": 18, "purchaseAt": "1976-04-27T00:00:00Z", "trialPrice": 59}]}, "seasonType": "PASS", "sku": "P2qMrTQ1", "stackable": false, "status": "ACTIVE", "tags": ["fU6wJhy1"], "targetCurrencyCode": "jOVkkUlS", "targetNamespace": "79527EZ2", "thumbnailUrl": "5Ia8uCeZ", "useCount": 62}' --login_with_auth "Bearer foo"
platform-delete-item 'lLtEVpDA' --login_with_auth "Bearer foo"
platform-acquire-item 'EbA82jy7' --body '{"count": 23, "orderNo": "q0pDE5xR"}' --login_with_auth "Bearer foo"
platform-get-app 'wh5b45eb' --login_with_auth "Bearer foo"
platform-update-app 'pcM7ScSs' '3UOpAwIp' --body '{"carousel": [{"alt": "9rRtn1Pc", "previewUrl": "CxdbumeY", "thumbnailUrl": "gOdEBWRQ", "type": "image", "url": "W3KFfU8i", "videoSource": "generic"}], "developer": "H4081gRB", "forumUrl": "1GyLfLg4", "genres": ["Strategy"], "localizations": {"YuEbgUDE": {"announcement": "cJyIvsPw", "slogan": "Or0BmV5i"}}, "platformRequirements": {"FvfwFjTS": [{"additionals": "mIEqoLyL", "directXVersion": "eUGmomGX", "diskSpace": "9sXTZ0v8", "graphics": "pqLfc5Sw", "label": "GnReUULD", "osVersion": "X4QUIbb5", "processor": "nh68ZnyU", "ram": "tRvW9hNB", "soundCard": "SFTtFrOm"}]}, "platforms": ["MacOS"], "players": ["Multi"], "primaryGenre": "RPG", "publisher": "rFVA8t0x", "releaseDate": "1986-05-03T00:00:00Z", "websiteUrl": "t6ZlTTic"}' --login_with_auth "Bearer foo"
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
platform-create-payment-order-by-dedicated --body '{"currencyCode": "Hi3u8BzV", "currencyNamespace": "Wu1tOmhU", "customParameters": {"tCgcpvGr": {}}, "description": "EbcZUDEx", "extOrderNo": "H1tayOGX", "extUserId": "IHzMRjMC", "itemType": "CODE", "language": "jSeI", "metadata": {"rbpyyEcQ": "xVgJIjMZ"}, "notifyUrl": "qcWfMl6d", "omitNotification": true, "platform": "rpD4tnc3", "price": 86, "recurringPaymentOrderNo": "B3IkdtPf", "region": "AJEomwen", "returnUrl": "JvQ8grtQ", "sandbox": true, "sku": "6EcALcMI", "subscriptionId": "Pms5bT51", "targetNamespace": "M4yko8S0", "targetUserId": "EnGLvGvf", "title": "uSyCTyjj"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '4mCaiuMG' --login_with_auth "Bearer foo"
platform-get-payment-order 'KOF5GJJo' --login_with_auth "Bearer foo"
platform-charge-payment-order 'oSXUl3YU' --body '{"extTxId": "35QHGpBA", "paymentMethod": "BnOlxDzn", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'QVyqBg34' --body '{"description": "WTtDkn0r"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'tn6t0Yx4' --body '{"amount": 50, "currencyCode": "12EaQ1rU", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 59, "vat": 98}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status '4jE3M2Is' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["System"]}' --login_with_auth "Bearer foo"
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
platform-clone-store 'FbSFlEWo' --login_with_auth "Bearer foo"
platform-export-store 'MPdgK5zn' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '62mhnFSp' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'CTlDNBOc' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'ygvv2LAg' --body '{"orderNo": "fBGVzanb"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'KYsB0gqJ' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '8VhYSikJ' --body '{"count": 23, "orderNo": "2p9rBx8N"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign '5egapqxD' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'y4cLfNjz' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'zEZYA8jI' --login_with_auth "Bearer foo"
platform-anonymize-integration 'kMJb7cZ2' --login_with_auth "Bearer foo"
platform-anonymize-order 'bPsaLLpE' --login_with_auth "Bearer foo"
platform-anonymize-payment 'BVEMk5As' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'KaF2P44l' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'XkI3zdiR' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'iC5IbPit' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '71JWlYCo' --body '[{"endDate": "1975-04-22T00:00:00Z", "grantedCode": "DfPu5V6Q", "itemId": "SYxEVOry", "itemNamespace": "VuZYmgUe", "language": "pba_027", "quantity": 54, "region": "A4azRz0d", "source": "REFERRAL_BONUS", "startDate": "1977-04-22T00:00:00Z", "storeId": "bor4p1Pl"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'gQB9EcNG' 'OeBRY6G5' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'ae07deDL' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'Z8JCvbeT' 'fW0hgzra' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'bLJxEwJr' 'EBmQ64ha' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'NOzlGu68' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'UYyupjdD' '["etnoT0rf"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'WtVPwQfq' '6V92gbfP' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'ouNdmP7f' 'ckVnuDGv' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'YIb1p5tc' 'R5z8ZJLj' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'SHcaR3X4' 'tZmwr0Qm' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'OnsEg49e' 'Xp0xQkZ2' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'JjuwWWy0' 'tU11PCeS' --body '{"endDate": "1979-06-17T00:00:00Z", "nullFieldList": ["ejUKwVfF"], "startDate": "1998-05-13T00:00:00Z", "status": "INACTIVE", "useCount": 20}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'DzFBI1Vw' 'hkVSKDlN' --body '{"useCount": 62}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'OUHBJsvT' 'sqk9hg4h' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'j6nUdebW' '6UskbPkk' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'ZAk01f1K' 'xCtWADU2' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'guN6U9w1' '3W1K9TZQ' --login_with_auth "Bearer foo"
platform-fulfill-item '4qRLEi5w' --body '{"duration": 29, "endDate": "1982-09-03T00:00:00Z", "itemId": "36rfmM0C", "itemSku": "Cs35TPUP", "language": "LmsY8Wgw", "order": {"currency": {"currencyCode": "Sx1DI5GH", "currencySymbol": "9bv9ZTo2", "currencyType": "REAL", "decimals": 52, "namespace": "6pzjHpZO"}, "ext": {"0E9iLgRP": {}}, "free": false}, "orderNo": "Bae3GOgb", "origin": "Other", "quantity": 34, "region": "qra0Ptkf", "source": "REDEEM_CODE", "startDate": "1991-04-30T00:00:00Z", "storeId": "Y2ramp5l"}' --login_with_auth "Bearer foo"
platform-redeem-code 'nBn6xmBk' --body '{"code": "fMtC66hF", "language": "Kpo", "region": "2XjlNEE5"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'ecPzAmi0' --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "SJHfPloP", "namespace": "1XkYK4Mg"}, "item": {"itemId": "IsDSFMPy", "itemSku": "Mhyw1OLZ", "itemType": "PVwwxH4B"}, "quantity": 69, "type": "CURRENCY"}], "source": "DLC"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'uDoShMMf' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'tll8N0Vv' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'ChHz9urm' --body '{"itemIdentityType": "ITEM_SKU", "language": "wVeS-ywdt_088", "productId": "GT88prRE", "region": "BgYOWdHJ", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'mohtU13g' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'f7TRigNZ' --body '{"currencyCode": "j5w5y3Hm", "discountedPrice": 73, "ext": {"8QVOa62e": {}}, "itemId": "QZtbLLcF", "language": "671WLtv3", "platform": "Xbox", "price": 4, "quantity": 4, "region": "zopFmeRw", "returnUrl": "pcJBZyi3", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'LC4Kzeki' 'SzeyolnO' --login_with_auth "Bearer foo"
platform-get-user-order 'Qt0joVHg' 'CytC6lRG' --login_with_auth "Bearer foo"
platform-update-user-order-status '98YxnHbR' 'doTKKeuS' --body '{"status": "CHARGEBACK", "statusReason": "fZe9i1os"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'ghF1hzi1' 'Nl47syJ5' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'ibzSHZeC' 'LIvWPVRs' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'dEqA61yT' 'rMgsycTg' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'mPzc20Eu' 'O5dMqGDl' --body '{"additionalData": {"cardSummary": "SZPY07rE"}, "authorisedTime": "1994-12-14T00:00:00Z", "chargebackReversedTime": "1975-07-24T00:00:00Z", "chargebackTime": "1987-03-17T00:00:00Z", "chargedTime": "1989-01-05T00:00:00Z", "createdTime": "1995-03-13T00:00:00Z", "currency": {"currencyCode": "G6DSmpp3", "currencySymbol": "op8htaRL", "currencyType": "VIRTUAL", "decimals": 39, "namespace": "W4PvFkES"}, "customParameters": {"TULat5F1": {}}, "extOrderNo": "Le7cR7q6", "extTxId": "PWhZmmKz", "extUserId": "41i1Tp78", "issuedAt": "1986-03-07T00:00:00Z", "metadata": {"pJHahViJ": "vLYW0kdm"}, "namespace": "lk2luqSO", "nonceStr": "OA2VOZBo", "paymentMethod": "NbB98PuS", "paymentMethodFee": 65, "paymentOrderNo": "ykqFzPwS", "paymentProvider": "WALLET", "paymentProviderFee": 54, "paymentStationUrl": "uL38beOY", "price": 59, "refundedTime": "1994-06-07T00:00:00Z", "salesTax": 66, "sandbox": true, "sku": "6w23Wf8i", "status": "CHARGEBACK", "statusReason": "Qo72sH0a", "subscriptionId": "RdcDlDyG", "subtotalPrice": 4, "targetNamespace": "sfIuI4Dv", "targetUserId": "5lEJpK1A", "tax": 49, "totalPrice": 86, "totalTax": 22, "txEndTime": "1983-05-27T00:00:00Z", "type": "rRXEFZiv", "userId": "QOHG6wVi", "vat": 4}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'NratsvvH' 'LmIohfNI' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'SLXMDWDd' --body '{"currencyCode": "m5FE4lli", "currencyNamespace": "QMnutJbp", "customParameters": {"Eo4mUNHF": {}}, "description": "tdml2xNv", "extOrderNo": "iWacJc3F", "extUserId": "m7Z548uu", "itemType": "COINS", "language": "cb-cBWc", "metadata": {"eq9ouEdD": "tjOgsypL"}, "notifyUrl": "km2ZYew5", "omitNotification": false, "platform": "0gnYyj6M", "price": 99, "recurringPaymentOrderNo": "f9G1ntye", "region": "bvoeHenA", "returnUrl": "ALKt7Efx", "sandbox": false, "sku": "UnP2S74u", "subscriptionId": "nXwg0JKq", "title": "VWW1rjK1"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'epwkAvcs' 'YvbgfBVP' --body '{"description": "pTa8Yuq7"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'TKiNXmz7' --body '{"code": "eMrMD5Tb", "orderNo": "aUxTCTng"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '0xjtdBrj' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 's3Kiykt2' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'Ck2gOlSa' --body '{"grantDays": 38, "itemId": "ECZ2UgwQ", "language": "LqDqYSxT", "reason": "PuVlBqir", "region": "dp3yxnsE", "source": "Tl1SvhQu"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'dsjIhXdx' 'iSoWpnnx' --login_with_auth "Bearer foo"
platform-get-user-subscription 'gX7BCPMq' 'zQIxibhp' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'NYsHtdB3' 'IkjuaZqh' --login_with_auth "Bearer foo"
platform-cancel-subscription 'JilrZkSS' 'KgP5rxCR' --body '{"immediate": false, "reason": "5CA1GORS"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'bL9n0dbW' 'DEupmdLQ' --body '{"grantDays": 50, "reason": "PnNfBAcW"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'ArbkCfdH' 'IZb03otq' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'mBuS9V2p' 'CZ23UHmk' --body '{"additionalData": {"cardSummary": "0lpJ4JLl"}, "authorisedTime": "1997-05-04T00:00:00Z", "chargebackReversedTime": "1975-10-25T00:00:00Z", "chargebackTime": "1998-04-23T00:00:00Z", "chargedTime": "1985-04-21T00:00:00Z", "createdTime": "1994-12-07T00:00:00Z", "currency": {"currencyCode": "Ub39j22P", "currencySymbol": "4Sp09cKm", "currencyType": "REAL", "decimals": 87, "namespace": "UbZVBVS7"}, "customParameters": {"OK2Zrdcs": {}}, "extOrderNo": "ckMekROW", "extTxId": "Z2KUTqkK", "extUserId": "2eFaGLoS", "issuedAt": "1977-09-04T00:00:00Z", "metadata": {"EPbLywJs": "yUie6fZg"}, "namespace": "LllUPsO8", "nonceStr": "lg46Si70", "paymentMethod": "06vL2w4a", "paymentMethodFee": 0, "paymentOrderNo": "jDAOx0iJ", "paymentProvider": "ADYEN", "paymentProviderFee": 100, "paymentStationUrl": "leaktqv2", "price": 96, "refundedTime": "1976-04-01T00:00:00Z", "salesTax": 18, "sandbox": true, "sku": "D5mnJONq", "status": "CHARGEBACK_REVERSED", "statusReason": "Gq8mB7mF", "subscriptionId": "2lMFcagh", "subtotalPrice": 63, "targetNamespace": "XJIJflRH", "targetUserId": "FcsIqCy4", "tax": 47, "totalPrice": 58, "totalTax": 16, "txEndTime": "1973-12-24T00:00:00Z", "type": "SQ5On2cc", "userId": "Ecl3xeiO", "vat": 2}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'wF5JOjGo' 'GxKM3qMc' --body '{"count": 9, "orderNo": "5tfLcpjF"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'ZMKCbp0p' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'EbLCLFpH' 'xMYF8360' --login_with_auth "Bearer foo"
platform-credit-user-wallet '75xEpzdn' 'Ytpja5ig' --body '{"amount": 16, "expireAt": "1980-12-06T00:00:00Z", "origin": "Xbox", "reason": "a6Vy76iz", "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'iQRjYa8f' 'v5fIt22t' --body '{"amount": 69, "walletPlatform": "Xbox"}' --login_with_auth "Bearer foo"
platform-sync-orders 'jhgkigW2' '2zXMWXfb' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["cM0GIALI"], "apiKey": "bFCQgBcL", "authoriseAsCapture": false, "blockedPaymentMethods": ["OQVYx5rW"], "clientKey": "2gMsI1aY", "dropInSettings": "BitSn3UD", "liveEndpointUrlPrefix": "eKj97I4W", "merchantAccount": "YXLqjN7k", "notificationHmacKey": "tOBTraBx", "notificationPassword": "WRTVuYEq", "notificationUsername": "GlKDwTKX", "returnUrl": "BrXiQcd9", "settings": "IW8kiCKe"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "QJWZBvcq", "privateKey": "1ETvWBxY", "publicKey": "ZJh7B8gb", "returnUrl": "nSu9M2Ox"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "D2udaeYp", "secretKey": "CXYSMiy8"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "7CTqEQBg", "clientSecret": "36my3sY2", "returnUrl": "clrDcain", "webHookId": "0cOVF1zH"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["wDTI0sJ1"], "publishableKey": "Q0kphMTg", "secretKey": "gSP2SLcu", "webhookSecret": "AP7vU971"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "Czw2nbg8", "key": "C7Mvywhu", "mchid": "6MjOjuGz", "returnUrl": "o1Fz4tU0"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "aSn98N8q", "flowCompletionUrl": "OUA0z92R", "merchantId": 0, "projectId": 58, "projectSecretKey": "e8ngT8LR"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'QkMnG1LZ' --login_with_auth "Bearer foo"
platform-update-adyen-config 'yF2mdYY6' --body '{"allowedPaymentMethods": ["ZMfuTYTK"], "apiKey": "sue48qBE", "authoriseAsCapture": true, "blockedPaymentMethods": ["NAV5BTe6"], "clientKey": "ec1zA92U", "dropInSettings": "RCLSGPmR", "liveEndpointUrlPrefix": "BZWunHW7", "merchantAccount": "MYvr6QA7", "notificationHmacKey": "Ppepc92H", "notificationPassword": "A94eACde", "notificationUsername": "yfUpgiPp", "returnUrl": "f8nxKJ3d", "settings": "nmtPwa64"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'Y4gPEKMh' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'hu9a6f3x' --body '{"appId": "JNtUlKLl", "privateKey": "IIAeHbm5", "publicKey": "M6LsY1VM", "returnUrl": "uIEcRls6"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '8M3MPMRP' --login_with_auth "Bearer foo"
platform-update-checkout-config 'BepyyMz6' --body '{"publicKey": "zfR1pvTY", "secretKey": "YtDOiEi4"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'RuEcHCSG' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'hpOZQFlw' --body '{"clientID": "OiuKGDFg", "clientSecret": "K49YuKnX", "returnUrl": "ks0m8ANr", "webHookId": "cRal7ta3"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'fojA3h4M' --login_with_auth "Bearer foo"
platform-update-stripe-config 'MW3AJ5zl' --body '{"allowedPaymentMethodTypes": ["sFBwjvLY"], "publishableKey": "vmg6avud", "secretKey": "QFF1CPNY", "webhookSecret": "9u2dVYdg"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'lOOoCeK0' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'kPKmBqVu' --body '{"appId": "x3lXcD8a", "key": "ertAVCqs", "mchid": "8XT8xy3n", "returnUrl": "J06KkseA"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert '0ARj9ric' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'fayvnhi8' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'MDdY4WLH' --body '{"apiKey": "oaUkYnQp", "flowCompletionUrl": "5egdmVE8", "merchantId": 68, "projectId": 24, "projectSecretKey": "ivNtQxqW"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'RKHohODo' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'WOr98kjB' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "2FrgiaGr", "region": "cB7dIOVK", "sandboxTaxJarApiToken": "IPSJJHo5", "specials": ["CHECKOUT"], "taxJarApiToken": "KH8ou9Sd", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'SXcrEFCw' --body '{"aggregate": "ADYEN", "namespace": "eGNLdIBR", "region": "dliFQVMK", "sandboxTaxJarApiToken": "EzVUWlUW", "specials": ["PAYPAL"], "taxJarApiToken": "s2x1EQU0", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'pEvcjaSg' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "Eh6jJnFx", "taxJarApiToken": "inIHJ1o7", "taxJarEnabled": false, "taxJarProductCodesMapping": {"q5Zznd5e": "acobTsuR"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'lhreQVFI' 'D3o8hJWV' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'jKIOAw70' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'DvAHhSGW' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'Uvzq1Za3' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'IBC4vQFs' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'UJPfiaJp' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '1rt7OBgB' --login_with_auth "Bearer foo"
platform-public-search-items 'Ce6N0eI6' '5Mn5tngE' --login_with_auth "Bearer foo"
platform-public-get-app 'YXgPVT5C' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'qXDZBVMJ' --login_with_auth "Bearer foo"
platform-public-get-item 'yJeKFO92' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "YDtaZvJo", "paymentProvider": "ALIPAY", "returnUrl": "yipZuO4N", "ui": "9S2YCgHa", "zipCode": "6XBcvGRY"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'k5rUtWHC' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'nhmzzppV' --login_with_auth "Bearer foo"
platform-pay '7tKNKYUQ' --body '{"token": "VBXymWcN"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'lHaFxYaG' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'PAYPAL' 'mBFyOrFK' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'txGNAi0f' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'q4xChPLd' '2lOopc7X' 'PAYPAL' 'Vpdd6rCp' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'yMrnH9YH' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code '7KnCVOKY' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '2zsBRGtd' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '8QY2OLbi' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'jrvfr8hk' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'njWUWdMU' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'XHvw4pNl' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'GLjdBxLM' --body '{"serviceLabel": 30}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'DAbTgmsE' --body '{"appId": "YEq2GkYK", "steamId": "1vYm9flX"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'Q7CQoemn' --body '{"xstsToken": "QG0dH0NV"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'M9VEHTPq' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'Dhkcu5vn' 'z6GiNMbo' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'BJHml0LJ' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'pPi4mqhr' 'uiCZLGGP' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '5UXkHNTM' 'app5Sbon' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'sUJKADr6' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '0EkdFrpL' 'sGt9yTXW' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'USCQcMsH' 'N7reI22k' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 's7I12tAZ' 'c8sxxLx9' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'XQeqNWLm' '8cNJbYH5' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'J4WiJLv9' 'NvHwtw2M' --body '{"useCount": 18}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'cy9ZL6Zs' --body '{"code": "5Bu2XYop", "language": "wzEu_IS", "region": "eREzzRG6"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'z9wmuHdd' --body '{"excludeOldTransactions": true, "language": "DIBi-Dydg-pP", "productId": "3zLWUxMz", "receiptData": "MtSmMmZP", "region": "8nG0FoQP", "transactionId": "8q7aSsb8"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '5gAh9RD3' --body '{"epicGamesJwtToken": "ZzN6N1iJ"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '8ltt9IRq' --body '{"autoAck": true, "language": "LG", "orderId": "6r5f0s5H", "packageName": "6lCf3QHa", "productId": "11hLLCgw", "purchaseTime": 1, "purchaseToken": "v4LExdab", "region": "D8g2cvHf"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'MRupDA5x' --body '{"currencyCode": "bjs3XRdH", "price": 0.7314008738815447, "productId": "0GCmflIX", "serviceLabel": 20}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'gJ6zkTwo' --body '{"appId": "akq7sEej", "language": "znT_684", "region": "frlzKpQd", "stadiaPlayerId": "d58dZP5R"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'vrinNtvB' --body '{"appId": "tqFSkA68", "currencyCode": "mIVYJ5pS", "language": "XbSl-Ct", "price": 0.22991011122714922, "productId": "A4M1oUFP", "region": "hgo7Z6mw", "steamId": "NC4FY69m"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'M87joJNO' --body '{"gameId": "GB83Ns6H", "language": "pO", "region": "6lKoVqNB"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'UzIxOfgl' --body '{"currencyCode": "quS2q2Do", "price": 0.7592360770790583, "productId": "9zvFtKa2", "xstsToken": "mOAqOokV"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '1plxQ2Yr' --login_with_auth "Bearer foo"
platform-public-create-user-order 'iTPfipD6' --body '{"currencyCode": "7jI2hiZk", "discountedPrice": 34, "ext": {"tLnh2U1R": {}}, "itemId": "QlMxkfNM", "language": "nTQV_ZKxo", "price": 21, "quantity": 68, "region": "gm1wkSWs", "returnUrl": "YvAsu18o"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'bUdc8mbv' 'XcwcgMqO' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'XMziXrVd' 'sEc3ClFP' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '3mJwusCB' 'Te4kLcuq' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'L40NYgek' 'RavpaGTA' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '9BTyCCyN' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '4Fw9i6mI' 'paypal' 'jjCqPVyY' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 's01hEYzW' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'w3qrcxM0' --body '{"currencyCode": "DPAXQBNM", "itemId": "P7j3xfPa", "language": "zA-KuKN", "region": "PqD4Agfa", "returnUrl": "sBfclBhZ", "source": "jZbLnmgh"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'KwPyVIn3' 'qaHP7KNu' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'lyfrENVQ' 'kpcaWHf6' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'T2xOOljn' '7c6c9efJ' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'I02TZxrg' 'LBFJEkph' --body '{"immediate": true, "reason": "z0h6WpoV"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'pVc2HBBm' 'j6cEi02h' --login_with_auth "Bearer foo"
platform-public-get-wallet 'Xl42ubCR' 'fy4GjKn5' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'ItHXLDZq' 'pRhqnR74' --login_with_auth "Bearer foo"
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
echo "1..330"

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
    --body '{"context": {"item": {"appId": "2GcbLuQO", "appType": "DEMO", "baseAppId": "zmdjNhT0", "boothName": "S46kqyfM", "boundItemIds": ["BSaZc4SA"], "categoryPath": "16M8gQCD", "clazz": "7aBHWCYe", "createdAt": "1981-11-14T00:00:00Z", "description": "kfcQvl4O", "displayOrder": 37, "entitlementType": "DURABLE", "ext": {"7tx65zXC": {}}, "features": ["iTfjorLF"], "images": [{"as": "qTmIUFUo", "caption": "onHBI13S", "height": 62, "imageUrl": "Hfm0F8vS", "smallImageUrl": "2BrZ3nq8", "width": 100}], "itemId": "SSD7zV0C", "itemIds": ["8FvVU3kR"], "itemQty": {"XBGPXIdf": 38}, "itemType": "APP", "language": "iZHuhWyF", "listable": false, "localExt": {"XcyvZEhY": {}}, "longDescription": "eUSy5Ukc", "maxCount": 26, "maxCountPerUser": 0, "name": "P11R8Xww", "namespace": "9vq9nMa2", "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 13, "fixedTrialCycles": 45, "graceDays": 48}, "region": "uf2fjV30", "regionData": [{"currencyCode": "SLxi7uyh", "currencyNamespace": "aeFtcO9X", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1991-06-19T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-01-16T00:00:00Z", "discountedPrice": 21, "expireAt": "1993-08-26T00:00:00Z", "price": 58, "purchaseAt": "1986-10-28T00:00:00Z", "trialPrice": 9}], "seasonType": "TIER", "sku": "QBeGPLiE", "stackable": true, "status": "INACTIVE", "tags": ["r0GPFvT0"], "targetCurrencyCode": "SAK91y5v", "targetItemId": "CeBIJq0B", "targetNamespace": "9UcI6c5c", "thumbnailUrl": "re9ealHO", "title": "ZphcLncn", "updatedAt": "1975-04-21T00:00:00Z", "useCount": 25}, "namespace": "yU8FSxXd", "order": {"currency": {"currencyCode": "CrskoFqn", "currencySymbol": "owq9Laz1", "currencyType": "VIRTUAL", "decimals": 76, "namespace": "hf8Z7ahm"}, "ext": {"bVPm2g7x": {}}, "free": true}, "source": "GIFT"}, "script": "fRRLUjfW", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'ftIfHGe5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'bUTSXOv1' \
    --body '{"grantDays": "2PMcRO6E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '2Mkre5q7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'FvaACp6h' \
    --body '{"grantDays": "e0fzjkPN"}' \
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
    --body '{"description": "NS0BfgF6", "items": [{"extraSubscriptionDays": 16, "itemId": "nIRsZ5hr", "itemName": "qNzVszGV", "quantity": 82}], "maxRedeemCountPerCampaignPerUser": 82, "maxRedeemCountPerCode": 16, "maxRedeemCountPerCodePerUser": 44, "maxSaleCount": 14, "name": "cf30C1KH", "redeemEnd": "1992-09-23T00:00:00Z", "redeemStart": "1990-09-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bfZvYIFF"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'tEKOLxSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'xe0wmWBM' \
    --body '{"description": "cNiWoobB", "items": [{"extraSubscriptionDays": 28, "itemId": "6alTQcP0", "itemName": "EpE9wGNV", "quantity": 44}], "maxRedeemCountPerCampaignPerUser": 20, "maxRedeemCountPerCode": 13, "maxRedeemCountPerCodePerUser": 10, "maxSaleCount": 71, "name": "J2HIalfz", "redeemEnd": "1974-12-13T00:00:00Z", "redeemStart": "1978-12-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["xF1JPBiz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'XZtrGe8L' \
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
    'yOH24nne' \
    --body '{"categoryPath": "ZHFeRld0", "localizationDisplayNames": {"bGA7JxWY": "zaEaimvo"}}' \
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
    'kcWX59kw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'iYHgHT6I' \
    'vd0fGpU2' \
    --body '{"localizationDisplayNames": {"09nVRclu": "mQTFvr5r"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'RyYzaNmz' \
    '3PjMx2T8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '9NTrFRUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'XFkruxeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'pkcXCfzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'cvv0WE5E' \
    --body '{"quantity": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
$PYTHON -m $MODULE 'platform-download' \
    'hcomPS1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    '7cpsLgr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'zEnjyRNj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'EC3FMDcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'vwwf8aU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    '8In31mF4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'jlwKyGxT' \
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
    --body '{"currencyCode": "F1l5q1Np", "currencySymbol": "0sT1X8J2", "currencyType": "REAL", "decimals": 53, "localizationDescriptions": {"WOzjmh9U": "zIfnhoo6"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'xUmTleUn' \
    --body '{"localizationDescriptions": {"JFM7XhoD": "xGik2JSf"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'Z64wWePq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '6103PONK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'IS7F9emW' \
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
    --body '{"data": [{"id": "4R15tAsi", "rewards": [{"currency": {"currencyCode": "G31CEyUO", "namespace": "uOZhmnHk"}, "item": {"itemId": "vek6Aa5k", "itemSku": "Nnoclxs9", "itemType": "kxcvIpV7"}, "quantity": 25, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"WKjY9CsQ": "YsGyhEOn"}}]}' \
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
    'tEkedM1A' \
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
    --body '{"bundleId": "0bFqvjxb", "password": "T3YuVdaB"}' \
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
    --body '{"sandboxId": "N5RSjhcj"}' \
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
    --body '{"applicationName": "uDvNrXL8", "serviceAccountId": "45jfh5tZ"}' \
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
    --body '{"data": [{"itemIdentity": "0hqJLjQU", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"oYUnC849": "OBNuLZto"}}]}' \
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
    --body '{"environment": "fGAAaMpB"}' \
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
    --body '{"appId": "QArU4RS0", "publisherAuthenticationKey": "FQRy5Qz5"}' \
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
    --body '{"clientId": "VcyfBpHj", "clientSecret": "tvFwKSJy", "organizationId": "Zeqvpevc"}' \
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
    --body '{"relyingPartyCert": "VXTxs9LT"}' \
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
    'orIyx23L' \
    --body '{"categoryPath": "hLy7ds3g", "targetItemId": "3BuHTPF1", "targetNamespace": "9dBYFws5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'Ya4eOwWq' \
    --body '{"appId": "W8HiLpTi", "appType": "GAME", "baseAppId": "cgM5kYu3", "boothName": "6JpTL55W", "categoryPath": "4ws3KCyp", "clazz": "lY1ocKDC", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"qrVeegT3": {}}, "features": ["uGDIIcvu"], "images": [{"as": "uokt8TC3", "caption": "8mYoUanQ", "height": 91, "imageUrl": "4Mmznv7r", "smallImageUrl": "2jthibge", "width": 57}], "itemIds": ["LX41qyOi"], "itemQty": {"Lgd8Wy73": 85}, "itemType": "SEASON", "listable": true, "localizations": {"0TEzpd7T": {"description": "V5vhMM2i", "localExt": {"3DM6etfI": {}}, "longDescription": "7TzC3sKm", "title": "tsyEKdO6"}}, "maxCount": 66, "maxCountPerUser": 78, "name": "m3zGu71q", "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 96, "fixedTrialCycles": 22, "graceDays": 61}, "regionData": {"Tp9XOCA1": [{"currencyCode": "X3HHMTla", "currencyNamespace": "kAWQfBuB", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1985-03-18T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-08-13T00:00:00Z", "discountedPrice": 4, "expireAt": "1978-04-02T00:00:00Z", "price": 48, "purchaseAt": "1973-09-18T00:00:00Z", "trialPrice": 0}]}, "seasonType": "TIER", "sku": "krgBH4ic", "stackable": false, "status": "ACTIVE", "tags": ["6L36Vg2F"], "targetCurrencyCode": "2Q9aZDJg", "targetNamespace": "1OT8109o", "thumbnailUrl": "t70TevJg", "useCount": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'b2PyFfJ6' \
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
    'qcHABdGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'V9jAPqon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '7UmLNy9P' \
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
    'kF9SnlbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'NcAxv8uH' \
    'DqJtYC7r' \
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
    'znwNdLhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetItem' test.out

#- 87 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'XvXVnjvc' \
    '0BMegJpW' \
    --body '{"appId": "1ZeuhpLX", "appType": "DEMO", "baseAppId": "HZ4hnOmm", "boothName": "yXu6XtjN", "categoryPath": "CqYk9TPU", "clazz": "KcDTfR7d", "displayOrder": 30, "entitlementType": "CONSUMABLE", "ext": {"o2Oe08Hp": {}}, "features": ["eJBfG0nG"], "images": [{"as": "ZHe5lw2T", "caption": "lkPIxL9v", "height": 10, "imageUrl": "pCd0Uk5h", "smallImageUrl": "1kP1pkkT", "width": 56}], "itemIds": ["s6DdXZWo"], "itemQty": {"wBgZizMv": 44}, "itemType": "CODE", "listable": true, "localizations": {"f84MAmay": {"description": "JJ6vzDTX", "localExt": {"xsyIaTgp": {}}, "longDescription": "0pwnEJL1", "title": "5kxO4oVU"}}, "maxCount": 82, "maxCountPerUser": 27, "name": "g5JsHAkI", "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 41, "fixedTrialCycles": 53, "graceDays": 63}, "regionData": {"uZcUwPte": [{"currencyCode": "KdQgUTF3", "currencyNamespace": "3fYWZfQM", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1983-03-06T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1974-01-02T00:00:00Z", "discountedPrice": 60, "expireAt": "1998-01-10T00:00:00Z", "price": 38, "purchaseAt": "1977-06-14T00:00:00Z", "trialPrice": 30}]}, "seasonType": "PASS", "sku": "TQ7XymDS", "stackable": true, "status": "ACTIVE", "tags": ["ZyFhIeqi"], "targetCurrencyCode": "NHtVSnhx", "targetNamespace": "by8F6xF8", "thumbnailUrl": "MhbJAYED", "useCount": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateItem' test.out

#- 88 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '1xszppR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteItem' test.out

#- 89 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '9nsKAS5z' \
    --body '{"count": 72, "orderNo": "sTRXd7b3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'AcquireItem' test.out

#- 90 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'v2fkZIkr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetApp' test.out

#- 91 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '06ojUtoV' \
    'JLGXekom' \
    --body '{"carousel": [{"alt": "vwD849mo", "previewUrl": "5vIkDZYr", "thumbnailUrl": "YEf1xYnl", "type": "video", "url": "HHXjFoXt", "videoSource": "youtube"}], "developer": "KW6AOnqn", "forumUrl": "WCuXMWqG", "genres": ["Adventure"], "localizations": {"NprJx82n": {"announcement": "AFexNou1", "slogan": "AicsQjKx"}}, "platformRequirements": {"5LjetHEw": [{"additionals": "0aCQpU6E", "directXVersion": "GOW0VAI8", "diskSpace": "7DPH0fLL", "graphics": "iUqzay0g", "label": "ET8T53yE", "osVersion": "ej7DsqsT", "processor": "vNKAXqfq", "ram": "MJHGeHaN", "soundCard": "2k1Eutm9"}]}, "platforms": ["IOS"], "players": ["MMO"], "primaryGenre": "RPG", "publisher": "cDv3ISBg", "releaseDate": "1996-08-11T00:00:00Z", "websiteUrl": "Af2pWOWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateApp' test.out

#- 92 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '4I2lOHfi' \
    'u4HraKYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DisableItem' test.out

#- 93 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'tgBmvCHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetItemDynamicData' test.out

#- 94 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'tF15a7T0' \
    'IheywiPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'EnableItem' test.out

#- 95 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '1WUR1PTF' \
    'fJJ46kzf' \
    'qapbByIK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'FeatureItem' test.out

#- 96 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'oYzYtTWJ' \
    'A3nFCDgW' \
    'Opz3yPQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DefeatureItem' test.out

#- 97 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'qbeVG7i4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetLocaleItem' test.out

#- 98 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'VTAhuFYh' \
    --body '{"orderNo": "EgQBb9Hn"}' \
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
    --body '{"description": "i6lDMj9g", "name": "vkBcQjQ5", "status": "INACTIVE", "tags": ["AvUlMWp8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'CreateKeyGroup' test.out

#- 101 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'WGpZxCe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetKeyGroup' test.out

#- 102 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'KsmXtGBb' \
    --body '{"description": "KrV58TIT", "name": "hQ52PYNk", "status": "ACTIVE", "tags": ["BCjirw4h"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateKeyGroup' test.out

#- 103 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'mfMSl2bE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetKeyGroupDynamic' test.out

#- 104 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'TuFLFOfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'ListKeys' test.out

#- 105 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'l0yRndbO' \
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
    '78R8ybYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetOrder' test.out

#- 109 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'Hx3BIgGu' \
    --body '{"description": "o817lZA5"}' \
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
    --body '{"dryRun": false, "notifyUrl": "fCJ833JK", "privateKey": "RNcdpuCx"}' \
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
    --body '{"currencyCode": "SDFWMVcs", "currencyNamespace": "OZlS0ule", "customParameters": {"rU61drwL": {}}, "description": "ngbZxOGx", "extOrderNo": "FwnmB60e", "extUserId": "a7XItZS8", "itemType": "SUBSCRIPTION", "language": "OpAJ_392", "metadata": {"WVmc8PVw": "ShVQz7FY"}, "notifyUrl": "3h2oVVSc", "omitNotification": true, "platform": "3YTBM4te", "price": 80, "recurringPaymentOrderNo": "pqevsWvM", "region": "hiheE2KM", "returnUrl": "7Ctal5z7", "sandbox": false, "sku": "LiOYz1jF", "subscriptionId": "fu1y1d77", "targetNamespace": "D8ZNOfHy", "targetUserId": "enhbRZ4a", "title": "9UjjjU0E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'CreatePaymentOrderByDedicated' test.out

#- 115 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'ggYLcGiE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListExtOrderNoByExtTxId' test.out

#- 116 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'DZbDl9Ze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetPaymentOrder' test.out

#- 117 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'ZH3M87v0' \
    --body '{"extTxId": "FhdKDEfX", "paymentMethod": "RhaO0AYS", "paymentProvider": "CHECKOUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ChargePaymentOrder' test.out

#- 118 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'vcV2Lqfg' \
    --body '{"description": "CX28Je4k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'RefundPaymentOrderByDedicated' test.out

#- 119 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'yPQjgDJN' \
    --body '{"amount": 80, "currencyCode": "EMtdEtN4", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 9, "vat": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'SimulatePaymentOrderNotification' test.out

#- 120 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'nQucgaop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetPaymentOrderChargeStatus' test.out

#- 121 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetPlatformWalletConfig' test.out

#- 122 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["Xbox"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdatePlatformWalletConfig' test.out

#- 123 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'ResetPlatformWalletConfig' test.out

#- 124 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "rScNiUxn", "eventTopic": "JUewUVhk", "maxAwarded": 64, "maxAwardedPerUser": 87, "namespaceExpression": "RTgLCb9e", "rewardCode": "vywZywun", "rewardConditions": [{"condition": "LImNhyZs", "conditionName": "b7YhhQbD", "eventName": "xLRKxzUt", "rewardItems": [{"duration": 30, "itemId": "KDC8gl2o", "quantity": 39}]}], "userIdExpression": "jUWKxgW6"}' \
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
    '8AJaeqxT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetReward' test.out

#- 129 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'PgZKFi3S' \
    --body '{"description": "BGlCD4ig", "eventTopic": "5ZRoJd1a", "maxAwarded": 37, "maxAwardedPerUser": 96, "namespaceExpression": "kfh3l8Hy", "rewardCode": "GWZTdpmT", "rewardConditions": [{"condition": "xPUBFjTI", "conditionName": "IKcXlxPf", "eventName": "dDyjJ0ww", "rewardItems": [{"duration": 34, "itemId": "YeljMyoe", "quantity": 2}]}], "userIdExpression": "3gsMOMdq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateReward' test.out

#- 130 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'bt4PnuFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'DeleteReward' test.out

#- 131 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '18ijp3Cm' \
    --body '{"payload": {"zrfVIa1v": {}}}' \
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
    --body '{"defaultLanguage": "i9oky2P7", "defaultRegion": "fIgBRSBl", "description": "xukoOTCo", "supportedLanguages": ["sjAXo6lj"], "supportedRegions": ["BVW8r7ny"], "title": "NcVl6ZB3"}' \
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
    'bGHupBuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetStore' test.out

#- 140 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'L2avXKOj' \
    --body '{"defaultLanguage": "wGRJbZqX", "defaultRegion": "gQ9azOre", "description": "TsviZmgm", "supportedLanguages": ["0l8Yr4wm"], "supportedRegions": ["giwIF5Zx"], "title": "5TIIhBtL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateStore' test.out

#- 141 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '3zT6xRqy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DeleteStore' test.out

#- 142 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'V0tlLaMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'QueryChanges' test.out

#- 143 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'L1p95v9m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'PublishAll' test.out

#- 144 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'OiIFEdQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'CloneStore' test.out

#- 145 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'RKeQy2WR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'ExportStore' test.out

#- 146 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'QuerySubscriptions' test.out

#- 147 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'ztR5qztu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'RecurringChargeSubscription' test.out

#- 148 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'hVaJDWx2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'GetTicketDynamic' test.out

#- 149 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'OdrUV7bh' \
    --body '{"orderNo": "cKGIOZcB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'DecreaseTicketSale' test.out

#- 150 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '6NWffXkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'GetTicketBoothID' test.out

#- 151 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'zes2xHp1' \
    --body '{"count": 41, "orderNo": "fZNxhbsa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'IncreaseTicketSale' test.out

#- 152 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'SFtTmbIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AnonymizeCampaign' test.out

#- 153 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '2hFQRmsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AnonymizeEntitlement' test.out

#- 154 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '02melJQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AnonymizeFulfillment' test.out

#- 155 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'LtV2QnPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AnonymizeIntegration' test.out

#- 156 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'mhFVPtJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AnonymizeOrder' test.out

#- 157 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'Gig12OdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AnonymizePayment' test.out

#- 158 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'nxXuJoZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AnonymizeSubscription' test.out

#- 159 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'OG4tOeWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AnonymizeWallet' test.out

#- 160 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'MI9K1eJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'QueryUserEntitlements' test.out

#- 161 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'xC2h6U8T' \
    --body '[{"endDate": "1974-12-14T00:00:00Z", "grantedCode": "2k2RkEr8", "itemId": "XbmQNuv8", "itemNamespace": "0Em9nuff", "language": "guwN_WhrQ_702", "quantity": 11, "region": "e5eawFpd", "source": "OTHER", "startDate": "1973-09-23T00:00:00Z", "storeId": "5p8Zx8jy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GrantUserEntitlement' test.out

#- 162 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '7nxGzOTB' \
    'pmmjuEEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetUserAppEntitlementByAppId' test.out

#- 163 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'yDtwbtA8' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'QueryUserEntitlementsByAppType' test.out

#- 164 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'smmcaOLd' \
    'FifUk9p7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'GetUserEntitlementByItemId' test.out

#- 165 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '00jB0p4H' \
    'pK8pvufS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetUserEntitlementBySku' test.out

#- 166 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'xYM0Vkuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'ExistsAnyUserActiveEntitlement' test.out

#- 167 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'OKrhvMwv' \
    '["D04UY8gh"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 168 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'vsmSrrJz' \
    'Ai6FOuhQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 169 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'IBAbup1f' \
    'pWsO6fW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetUserEntitlementOwnershipByItemId' test.out

#- 170 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '68fWxqRk' \
    'JDjfNhYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetUserEntitlementOwnershipBySku' test.out

#- 171 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'gVm0TCao' \
    's4wyjaPP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'RevokeUserEntitlements' test.out

#- 172 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '6ClekQGm' \
    '25KYmFZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetUserEntitlement' test.out

#- 173 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Qr4xbV63' \
    'gcdU4vyI' \
    --body '{"endDate": "1991-10-04T00:00:00Z", "nullFieldList": ["eRjCj7UK"], "startDate": "1999-04-15T00:00:00Z", "status": "REVOKED", "useCount": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateUserEntitlement' test.out

#- 174 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'wsQtSfDq' \
    'A4CysEX4' \
    --body '{"useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'ConsumeUserEntitlement' test.out

#- 175 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'Oy0n2EkP' \
    'BjC4ecHw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DisableUserEntitlement' test.out

#- 176 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'tSGzayUa' \
    'Dh3m2eX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'EnableUserEntitlement' test.out

#- 177 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '1qVPH2VH' \
    'Dznf57fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementHistories' test.out

#- 178 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '1PY5uDkQ' \
    '8zpNRwyc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'RevokeUserEntitlement' test.out

#- 179 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'EAShpFLp' \
    --body '{"duration": 33, "endDate": "1984-07-07T00:00:00Z", "itemId": "1N5IGebN", "itemSku": "uvyrghVd", "language": "sSwDc9NJ", "order": {"currency": {"currencyCode": "RX9ZdaC8", "currencySymbol": "sja1J7eu", "currencyType": "REAL", "decimals": 64, "namespace": "SSxZJPto"}, "ext": {"04wTEI8i": {}}, "free": true}, "orderNo": "XmyAGW2r", "origin": "Playstation", "quantity": 43, "region": "VW26Oays", "source": "REDEEM_CODE", "startDate": "1998-05-11T00:00:00Z", "storeId": "wV3MdXNV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'FulfillItem' test.out

#- 180 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'RDzT2sBb' \
    --body '{"code": "flg7cD24", "language": "xy-136", "region": "kqWDPEP4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'RedeemCode' test.out

#- 181 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'CWnZJjXd' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "Uv9owF1m", "namespace": "Qrc03W7o"}, "item": {"itemId": "OdpY5ZJC", "itemSku": "hQtpD2U9", "itemType": "IQzA2eex"}, "quantity": 18, "type": "CURRENCY"}], "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'FulfillRewards' test.out

#- 182 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'nJ6ryQ4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryUserIAPOrders' test.out

#- 183 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'Cg5Itn9T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'QueryAllUserIAPOrders' test.out

#- 184 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'YOR2n8qF' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "sz-rDMG_kZ", "productId": "SPfek369", "region": "fIM1tcxw", "type": "XBOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'MockFulfillIAPItem' test.out

#- 185 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '2XqPFaIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryUserOrders' test.out

#- 186 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'BgzRO8GK' \
    --body '{"currencyCode": "ycdcXuUL", "discountedPrice": 31, "ext": {"vuBNRzUb": {}}, "itemId": "H0hI7yCE", "language": "yjKXQPno", "platform": "Epic", "price": 53, "quantity": 37, "region": "HMpmDvt4", "returnUrl": "tkWavQ0j", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateUserOrder' test.out

#- 187 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    '17Qq6AFd' \
    'E7URb19B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'CountOfPurchasedItem' test.out

#- 188 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'cvWfPxHP' \
    'QaUClyAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetUserOrder' test.out

#- 189 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'fGkGwDso' \
    'o09NdZjN' \
    --body '{"status": "CHARGEBACK", "statusReason": "jtl8XIGZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'UpdateUserOrderStatus' test.out

#- 190 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'V3GBXIHx' \
    'WGX4iwwH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'FulfillUserOrder' test.out

#- 191 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'LohaKvD9' \
    'nNeLi2tR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserOrderGrant' test.out

#- 192 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'rclM3o5F' \
    'mkWcIpWl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserOrderHistories' test.out

#- 193 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'bLNxQciS' \
    'm2ObiacE' \
    --body '{"additionalData": {"cardSummary": "1VtVP5yW"}, "authorisedTime": "1989-08-02T00:00:00Z", "chargebackReversedTime": "1998-01-20T00:00:00Z", "chargebackTime": "1974-11-17T00:00:00Z", "chargedTime": "1999-08-23T00:00:00Z", "createdTime": "1999-01-17T00:00:00Z", "currency": {"currencyCode": "HbV6Tq3m", "currencySymbol": "akniWG9A", "currencyType": "VIRTUAL", "decimals": 1, "namespace": "znHrmvF1"}, "customParameters": {"mJZ3dLFx": {}}, "extOrderNo": "AkQrsQXC", "extTxId": "UjnXNZpa", "extUserId": "cdMfX6X3", "issuedAt": "1996-05-31T00:00:00Z", "metadata": {"a5msSId5": "56xncCH3"}, "namespace": "7zoQElCS", "nonceStr": "NpKYpjKm", "paymentMethod": "IIb0iBSA", "paymentMethodFee": 43, "paymentOrderNo": "dLvUFJ7q", "paymentProvider": "ALIPAY", "paymentProviderFee": 5, "paymentStationUrl": "qfJth42F", "price": 59, "refundedTime": "1984-03-24T00:00:00Z", "salesTax": 4, "sandbox": false, "sku": "LvxRuULx", "status": "CHARGEBACK", "statusReason": "jXJ9BFwE", "subscriptionId": "yGUCv8O9", "subtotalPrice": 60, "targetNamespace": "BlPmENb7", "targetUserId": "inSCGzNu", "tax": 66, "totalPrice": 31, "totalTax": 52, "txEndTime": "1984-06-03T00:00:00Z", "type": "t9GgpAZj", "userId": "cg8z9cH6", "vat": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'ProcessUserOrderNotification' test.out

#- 194 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '6SmVFciD' \
    'GufTZk7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'DownloadUserOrderReceipt' test.out

#- 195 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'k6nZZgUC' \
    --body '{"currencyCode": "Ws5b2flA", "currencyNamespace": "nrsypCRQ", "customParameters": {"fPhfO9Ea": {}}, "description": "mej28Jum", "extOrderNo": "6vaoBRuM", "extUserId": "FZbZvy6m", "itemType": "INGAMEITEM", "language": "XDPQ-BsPY_rz", "metadata": {"9gwlM0hF": "50v8sFHE"}, "notifyUrl": "2trW2mRr", "omitNotification": false, "platform": "k4IK6APT", "price": 30, "recurringPaymentOrderNo": "bukLGw4H", "region": "J51V5Dd7", "returnUrl": "JZjCvoCn", "sandbox": false, "sku": "0By8GbfD", "subscriptionId": "bnZRasK3", "title": "D9LYj8f7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'CreateUserPaymentOrder' test.out

#- 196 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'kb4sU5W5' \
    'wrnCC7OG' \
    --body '{"description": "huPV98XU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'RefundUserPaymentOrder' test.out

#- 197 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'YE5mm7bH' \
    --body '{"code": "ElXpNGEU", "orderNo": "uLY9Nu31"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ApplyUserRedemption' test.out

#- 198 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'elzdmX7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QueryUserSubscriptions' test.out

#- 199 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'z9djDT8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserSubscriptionActivities' test.out

#- 200 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'pJ3j7LyG' \
    --body '{"grantDays": 59, "itemId": "uYXVurnW", "language": "5P0Zs13F", "reason": "tOvKL3NS", "region": "8Iq1rRNy", "source": "HR1S2ZUI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'PlatformSubscribeSubscription' test.out

#- 201 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'C8uvkyFC' \
    'MKBFVFMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 202 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '8RmFR37l' \
    'ij05gCbg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserSubscription' test.out

#- 203 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'x9wKmx7c' \
    'jHqzVYnt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DeleteUserSubscription' test.out

#- 204 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '0cmkvnir' \
    'igdjwdDL' \
    --body '{"immediate": false, "reason": "v0pxwrYj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'CancelSubscription' test.out

#- 205 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'Q08MafjV' \
    '6ihDDPn2' \
    --body '{"grantDays": 92, "reason": "ODE5C6wj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GrantDaysToSubscription' test.out

#- 206 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'RywXS6Qp' \
    'nJBEzx6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserSubscriptionBillingHistories' test.out

#- 207 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'WqAZXp1n' \
    'DSpnpvCu' \
    --body '{"additionalData": {"cardSummary": "DbIzKZsy"}, "authorisedTime": "1987-10-12T00:00:00Z", "chargebackReversedTime": "1988-03-18T00:00:00Z", "chargebackTime": "1971-09-22T00:00:00Z", "chargedTime": "1979-01-17T00:00:00Z", "createdTime": "1973-12-14T00:00:00Z", "currency": {"currencyCode": "Yx5T5vYI", "currencySymbol": "U38uD0Cm", "currencyType": "REAL", "decimals": 40, "namespace": "XsTIzKib"}, "customParameters": {"hFZHPU1W": {}}, "extOrderNo": "j69C0Wji", "extTxId": "FzSiMY3W", "extUserId": "s9FISxHT", "issuedAt": "1998-04-09T00:00:00Z", "metadata": {"4vzccwcc": "BELwGw2M"}, "namespace": "tzYXVSOa", "nonceStr": "df8DmjQP", "paymentMethod": "LvwUrZEi", "paymentMethodFee": 9, "paymentOrderNo": "ujw5qBkd", "paymentProvider": "ADYEN", "paymentProviderFee": 43, "paymentStationUrl": "UCTavaEg", "price": 47, "refundedTime": "1994-06-16T00:00:00Z", "salesTax": 17, "sandbox": true, "sku": "KQdlaAHq", "status": "REFUND_FAILED", "statusReason": "iWYY25XB", "subscriptionId": "ucG9pj0l", "subtotalPrice": 42, "targetNamespace": "Am79JifA", "targetUserId": "IygeL9jO", "tax": 71, "totalPrice": 85, "totalTax": 52, "txEndTime": "1977-03-16T00:00:00Z", "type": "xPLaTrFO", "userId": "9wj0k9J7", "vat": 50}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserSubscriptionNotification' test.out

#- 208 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'QlxTM4wA' \
    'bIaBJF8V' \
    --body '{"count": 84, "orderNo": "fE9fBFxs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AcquireUserTicket' test.out

#- 209 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'EcwU3hIn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'QueryUserCurrencyWallets' test.out

#- 210 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'PH6WGHoW' \
    'LtuXx6HZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ListUserCurrencyTransactions' test.out

#- 211 CheckWallet
eval_tap 0 211 'CheckWallet # SKIP deprecated' test.out

#- 212 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'KN3M9BmH' \
    'lEEbsM2O' \
    --body '{"amount": 46, "expireAt": "1981-03-21T00:00:00Z", "origin": "System", "reason": "m55nGqL8", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'CreditUserWallet' test.out

#- 213 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'ensZA4Xq' \
    'DpcNJf1z' \
    --body '{"amount": 15, "walletPlatform": "Other"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'PayWithUserWallet' test.out

#- 214 GetUserWallet
eval_tap 0 214 'GetUserWallet # SKIP deprecated' test.out

#- 215 DebitUserWallet
eval_tap 0 215 'DebitUserWallet # SKIP deprecated' test.out

#- 216 DisableUserWallet
eval_tap 0 216 'DisableUserWallet # SKIP deprecated' test.out

#- 217 EnableUserWallet
eval_tap 0 217 'EnableUserWallet # SKIP deprecated' test.out

#- 218 ListUserWalletTransactions
eval_tap 0 218 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 219 QueryWallets
eval_tap 0 219 'QueryWallets # SKIP deprecated' test.out

#- 220 GetWallet
eval_tap 0 220 'GetWallet # SKIP deprecated' test.out

#- 221 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'EAI2t0br' \
    'iD5LIWth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'SyncOrders' test.out

#- 222 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["O7lSGEhw"], "apiKey": "whO3BEqq", "authoriseAsCapture": false, "blockedPaymentMethods": ["TipojGJp"], "clientKey": "QoqR37zy", "dropInSettings": "vGfBwIwU", "liveEndpointUrlPrefix": "b2vXOg1N", "merchantAccount": "yvf3E3eA", "notificationHmacKey": "S5oIXUfp", "notificationPassword": "QwWGai76", "notificationUsername": "ytXQXBCH", "returnUrl": "dfrm4ewy", "settings": "1DqBG8Jj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'TestAdyenConfig' test.out

#- 223 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "ZFetBdgq", "privateKey": "9tnIAcoM", "publicKey": "WKJZMKj9", "returnUrl": "kmxpXX8J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'TestAliPayConfig' test.out

#- 224 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "38efuUGZ", "secretKey": "B9jaeWRz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'TestCheckoutConfig' test.out

#- 225 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'DebugMatchedPaymentMerchantConfig' test.out

#- 226 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "lsDdiuR6", "clientSecret": "RZDT5q7Y", "returnUrl": "cCkB6eLu", "webHookId": "zsPaXohA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'TestPayPalConfig' test.out

#- 227 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["vroQYbof"], "publishableKey": "yTgKruut", "secretKey": "bCF9DcEV", "webhookSecret": "3SD004RR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'TestStripeConfig' test.out

#- 228 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "xWaBiyCK", "key": "BsxKfO0Q", "mchid": "MZpBpvQu", "returnUrl": "O9P251BV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'TestWxPayConfig' test.out

#- 229 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "fUn3ZgcT", "flowCompletionUrl": "hlx4DM5M", "merchantId": 71, "projectId": 82, "projectSecretKey": "c8bulwqL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'TestXsollaConfig' test.out

#- 230 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'yhFMeCxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetPaymentMerchantConfig' test.out

#- 231 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'RHmTK6J8' \
    --body '{"allowedPaymentMethods": ["Prk4dhQH"], "apiKey": "62tYAMHu", "authoriseAsCapture": true, "blockedPaymentMethods": ["uVtmjatn"], "clientKey": "R06xDNs2", "dropInSettings": "SWbI1hXV", "liveEndpointUrlPrefix": "OD0eAWHA", "merchantAccount": "N9PfJYqb", "notificationHmacKey": "Y1oJTdNi", "notificationPassword": "leWvsff1", "notificationUsername": "vwfz6XV9", "returnUrl": "5AYceo0e", "settings": "ecB0xtL3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'UpdateAdyenConfig' test.out

#- 232 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'jFZOELdL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'TestAdyenConfigById' test.out

#- 233 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'mYKsPGmu' \
    --body '{"appId": "AIxJmj3U", "privateKey": "DvN6gGLo", "publicKey": "AUPH7Sjr", "returnUrl": "EfcuDTSj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'UpdateAliPayConfig' test.out

#- 234 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '7rQ9btDn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'TestAliPayConfigById' test.out

#- 235 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'wEzMsiel' \
    --body '{"publicKey": "cjxQjMfc", "secretKey": "lMXOz5zB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'UpdateCheckoutConfig' test.out

#- 236 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'Krt8bOHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestCheckoutConfigById' test.out

#- 237 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'p5P78hLD' \
    --body '{"clientID": "gFeSh6En", "clientSecret": "KHynFXOH", "returnUrl": "8gKVlK1f", "webHookId": "cIlMKOlq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'UpdatePayPalConfig' test.out

#- 238 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '53upI4Hj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'TestPayPalConfigById' test.out

#- 239 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'a15XYvf5' \
    --body '{"allowedPaymentMethodTypes": ["1zcBd5rD"], "publishableKey": "2Wuo6Hrr", "secretKey": "2NbYUJGZ", "webhookSecret": "iJejefFK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'UpdateStripeConfig' test.out

#- 240 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'sLszYGFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfigById' test.out

#- 241 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'WNm21v93' \
    --body '{"appId": "bvhuxpnW", "key": "ueDoXqzi", "mchid": "W0pPTKlf", "returnUrl": "M7OLcwhN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'UpdateWxPayConfig' test.out

#- 242 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'Q0ISPjMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'UpdateWxPayConfigCert' test.out

#- 243 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '5wYj4TNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'TestWxPayConfigById' test.out

#- 244 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'MAawH8QD' \
    --body '{"apiKey": "HVdTqEMl", "flowCompletionUrl": "F2AUpohD", "merchantId": 16, "projectId": 52, "projectSecretKey": "hJuGjwVi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateXsollaConfig' test.out

#- 245 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'onKlaCrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'TestXsollaConfigById' test.out

#- 246 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '0i06kgIw' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdateXsollaUIConfig' test.out

#- 247 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryPaymentProviderConfig' test.out

#- 248 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "lT8zVC1Y", "region": "eUyHaXqQ", "sandboxTaxJarApiToken": "xmhwd575", "specials": ["XSOLLA"], "taxJarApiToken": "R80UC9RF", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'CreatePaymentProviderConfig' test.out

#- 249 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'GetAggregatePaymentProviders' test.out

#- 250 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'DebugMatchedPaymentProviderConfig' test.out

#- 251 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'GetSpecialPaymentProviders' test.out

#- 252 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'xvMfwnQf' \
    --body '{"aggregate": "ADYEN", "namespace": "yXL00wCE", "region": "65MfNt8O", "sandboxTaxJarApiToken": "Iy8S0YmP", "specials": ["CHECKOUT"], "taxJarApiToken": "h1yYYw5D", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'UpdatePaymentProviderConfig' test.out

#- 253 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'WTzS93fl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'DeletePaymentProviderConfig' test.out

#- 254 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetPaymentTaxConfig' test.out

#- 255 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "MEy3MrRf", "taxJarApiToken": "CDtYmnBm", "taxJarEnabled": true, "taxJarProductCodesMapping": {"oEqxMV23": "JYjtET8O"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdatePaymentTaxConfig' test.out

#- 256 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'ONm1ccFA' \
    'Qh3NhEAG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'SyncPaymentOrders' test.out

#- 257 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetRootCategories' test.out

#- 258 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'DownloadCategories' test.out

#- 259 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'DA9kOIP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PublicGetCategory' test.out

#- 260 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'a4swJXie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicGetChildCategories' test.out

#- 261 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'A6PNyI4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetDescendantCategories' test.out

#- 262 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicListCurrencies' test.out

#- 263 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'D8ZALgmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetItemByAppId' test.out

#- 264 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicQueryItems' test.out

#- 265 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'weJppm1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetItemBySku' test.out

#- 266 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'A5zpzKWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicBulkGetItems' test.out

#- 267 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'KNzBoL7E' \
    'Q3TeNMSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicSearchItems' test.out

#- 268 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Nex5dlwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetApp' test.out

#- 269 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'l2qhfwy7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetItemDynamicData' test.out

#- 270 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '4gW8E4cH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetItem' test.out

#- 271 GetPaymentCustomization
eval_tap 0 271 'GetPaymentCustomization # SKIP deprecated' test.out

#- 272 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "gyXCFX94", "paymentProvider": "CHECKOUT", "returnUrl": "RGGL68te", "ui": "k2UNjsgQ", "zipCode": "Kca6OwZu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetPaymentUrl' test.out

#- 273 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'wyOkSQht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetPaymentMethods' test.out

#- 274 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'XEMam6Ib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetUnpaidPaymentOrder' test.out

#- 275 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '7k8cIhle' \
    --body '{"token": "ApHrsu9y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'Pay' test.out

#- 276 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'ZjjbdrzA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicCheckPaymentOrderPaidStatus' test.out

#- 277 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WALLET' \
    'Leuen91R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetPaymentPublicConfig' test.out

#- 278 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'QMkVpH8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetQRCode' test.out

#- 279 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'caclJ9CL' \
    'naYpzlQ2' \
    'WALLET' \
    '3EnMj99g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicNormalizePaymentReturnUrl' test.out

#- 280 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Ey4Sy9nZ' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxValue' test.out

#- 281 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'dlJ6t4Am' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetRewardByCode' test.out

#- 282 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'QueryRewards1' test.out

#- 283 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'HiTuje6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetReward1' test.out

#- 284 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicListStores' test.out

#- 285 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicExistsAnyMyActiveEntitlement' test.out

#- 286 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    '87DePRQB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 287 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'jep2Is3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 288 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'NmYmXhUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 289 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetEntitlementOwnershipToken' test.out

#- 290 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'ICHQ1Trm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetMyWallet' test.out

#- 291 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'IdK8DmYP' \
    --body '{"serviceLabel": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicSyncPsnDlcInventory' test.out

#- 292 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '6gpPJK9q' \
    --body '{"appId": "L0Emqezb", "steamId": "Fm0Y5OsH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'SyncSteamDLC' test.out

#- 293 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'aOOyB4Kp' \
    --body '{"xstsToken": "7hzU9HaT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'SyncXboxDLC' test.out

#- 294 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'yWFQlLw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicQueryUserEntitlements' test.out

#- 295 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'K5eorxH1' \
    'KFuEYygH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetUserAppEntitlementByAppId' test.out

#- 296 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '2i0CbngO' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicQueryUserEntitlementsByAppType' test.out

#- 297 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'bnr1dAwa' \
    '0f9bDmas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUserEntitlementByItemId' test.out

#- 298 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'QwUImnIP' \
    'Z2s9WLUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUserEntitlementBySku' test.out

#- 299 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'Br8ZsOML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyUserActiveEntitlement' test.out

#- 300 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'NA3BJ6xn' \
    'FtsrdJPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'HSCY5CUx' \
    'UobAtEeZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 302 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'gYwX4Axn' \
    'hDDe36HM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 303 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'eSdRZdfb' \
    'GUCViBiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserEntitlement' test.out

#- 304 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '43SHBqN3' \
    'FrZ27sTW' \
    --body '{"useCount": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicConsumeUserEntitlement' test.out

#- 305 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '1j8CNGKX' \
    --body '{"code": "B1PHd0dA", "language": "rmQx", "region": "hRnjEOdE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicRedeemCode' test.out

#- 306 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'WLJwo4jN' \
    --body '{"excludeOldTransactions": false, "language": "ypRY-uw", "productId": "9TYFxn34", "receiptData": "wV03oJwy", "region": "CXdXlDay", "transactionId": "1d5wzQ8M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicFulfillAppleIAPItem' test.out

#- 307 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'i5e6YQR2' \
    --body '{"epicGamesJwtToken": "j2NwEyTQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'SyncEpicGamesInventory' test.out

#- 308 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'qkypjj3G' \
    --body '{"autoAck": true, "language": "cIU_tNwf", "orderId": "OAWpCJKn", "packageName": "XYo8etpj", "productId": "dAxIszZC", "purchaseTime": 75, "purchaseToken": "j7ourPca", "region": "znSH2Cxs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicFulfillGoogleIAPItem' test.out

#- 309 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '5k0AiVIv' \
    --body '{"currencyCode": "GckJ4UyH", "price": 0.7337820802796104, "productId": "uSmRQBGD", "serviceLabel": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicReconcilePlayStationStore' test.out

#- 310 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'gfJbtT26' \
    --body '{"appId": "RB4dllAO", "language": "aLX_fR", "region": "VlUOhh6O", "stadiaPlayerId": "gcWFoDkY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'SyncStadiaEntitlement' test.out

#- 311 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'wud3hXXT' \
    --body '{"appId": "8cAMMjFU", "currencyCode": "ukAbWMlm", "language": "SK", "price": 0.2139651632454802, "productId": "Hna8npNI", "region": "aZA6bGj3", "steamId": "weTlX2fr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'SyncSteamInventory' test.out

#- 312 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'nV4SnI56' \
    --body '{"gameId": "iSamKfvo", "language": "cna_udRX", "region": "iFB3t7Su"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'SyncTwitchDropsEntitlement' test.out

#- 313 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '887Ey5S3' \
    --body '{"currencyCode": "EsksPusI", "price": 0.28586452499902204, "productId": "tH5nDyVn", "xstsToken": "0dADUFds"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'SyncXboxInventory' test.out

#- 314 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'q2oLRcIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicQueryUserOrders' test.out

#- 315 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'berqiArH' \
    --body '{"currencyCode": "PblrPveO", "discountedPrice": 54, "ext": {"BV9k49Ie": {}}, "itemId": "IHNjkojd", "language": "DYc-kwwg_aw", "price": 42, "quantity": 13, "region": "XLP7elmz", "returnUrl": "4qzOrsRp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicCreateUserOrder' test.out

#- 316 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    's4NnGGxf' \
    'LzGbmQPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserOrder' test.out

#- 317 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'b8usTL87' \
    'xMPcqN6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCancelUserOrder' test.out

#- 318 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'f3uB7Rko' \
    'HPclOsJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserOrderHistories' test.out

#- 319 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'D4RbVS0C' \
    'nsf4H98g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicDownloadUserOrderReceipt' test.out

#- 320 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'jXlNYVv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetPaymentAccounts' test.out

#- 321 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'BjfSEeqt' \
    'card' \
    'NJSNg3AJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicDeletePaymentAccount' test.out

#- 322 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'JU1oQnLD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserSubscriptions' test.out

#- 323 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'QsMpjdBK' \
    --body '{"currencyCode": "WrShZRZY", "itemId": "P6m3rqG4", "language": "pmSB-GT", "region": "D5OViuZa", "returnUrl": "I7Jv2evn", "source": "HbcDM73D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicSubscribeSubscription' test.out

#- 324 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'kqohzhIN' \
    'jwDfIe7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 325 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'oslK0BMQ' \
    'F7VvTIqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserSubscription' test.out

#- 326 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'BjCCBKnP' \
    'i4rFNHcv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicChangeSubscriptionBillingAccount' test.out

#- 327 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'CKN66VCN' \
    'AThE5Wzj' \
    --body '{"immediate": false, "reason": "yLOQJxnb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicCancelSubscription' test.out

#- 328 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'ExCczwhR' \
    'oWp6lkuH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserSubscriptionBillingHistories' test.out

#- 329 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'P8buZiH2' \
    'GRmQR4At' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetWallet' test.out

#- 330 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ntPilLE8' \
    'i8KPrA5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicListUserWalletTransactions' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
