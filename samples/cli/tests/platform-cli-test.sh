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
platform-create-item 'pTKZTXqz' --body '{"appId": "HuBMYQSA", "appType": "DLC", "baseAppId": "z1ZOpdOj", "boothName": "SyMddB41", "categoryPath": "JuMf7RUy", "clazz": "BHRj8IiR", "displayOrder": 17, "entitlementType": "CONSUMABLE", "ext": {"RllHT6Dc": {}}, "features": ["40vFFA6g"], "images": [{"as": "pU7EW3x1", "caption": "dCpm55gO", "height": 8, "imageUrl": "qQIqcJVK", "smallImageUrl": "mBM1J1Ib", "width": 40}], "itemIds": ["TrrkbmuT"], "itemQty": {"1whOqmEn": 59}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"PlSay46m": {"description": "v71BAZAO", "localExt": {"jtFJ2vmT": {}}, "longDescription": "j7tT7TZH", "title": "WDdCkIsZ"}}, "maxCount": 29, "maxCountPerUser": 52, "name": "rWwPHcyF", "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 52, "fixedTrialCycles": 38, "graceDays": 100}, "regionData": {"ciLIgRwF": [{"currencyCode": "Rr0gwB9t", "currencyNamespace": "z3vp99XV", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1979-10-18T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1986-04-13T00:00:00Z", "discountedPrice": 36, "expireAt": "1977-03-05T00:00:00Z", "price": 30, "purchaseAt": "1997-05-29T00:00:00Z", "trialPrice": 44}]}, "seasonType": "PASS", "sku": "Ud9pqtv6", "stackable": false, "status": "INACTIVE", "tags": ["cCVOXcVa"], "targetCurrencyCode": "80TmCwtD", "targetNamespace": "2lAH01o6", "thumbnailUrl": "NdcBIgzr", "useCount": 58}' --login_with_auth "Bearer foo"
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
platform-update-xbl-user-achievement '6QSYxEVO' --body '{"achievements": [{"id": "ryVuZYmg", "percentComplete": 93}], "serviceConfigId": "eEPB5AGP", "titleId": "gvk0Ztha", "xboxUserId": "j0EBA4az"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'Rz0d56sm' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'obor4p1P' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'lgQB9EcN' --login_with_auth "Bearer foo"
platform-anonymize-integration 'GOeBRY6G' --login_with_auth "Bearer foo"
platform-anonymize-order '5ae07deD' --login_with_auth "Bearer foo"
platform-anonymize-payment 'LaZ8JCvb' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'eTfW0hgz' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'rabLJxEw' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'JrEBmQ64' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'haNOzlGu' --body '[{"endDate": "1994-07-09T00:00:00Z", "grantedCode": "upjdDetn", "itemId": "oT0rfWtV", "itemNamespace": "PwQfq6V9", "language": "BF_CK", "quantity": 94, "region": "nuDGvYIb", "source": "OTHER", "startDate": "1999-06-01T00:00:00Z", "storeId": "cR5z8ZJL"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'jSHcaR3X' '4tZmwr0Q' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'mOnsEg49' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'Xp0xQkZ2' 'JjuwWWy0' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'tU11PCeS' 'rvejUKwV' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'fF37Vr7m' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'kDzFBI1V' '["whkVSKDl"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'NFOUHBJs' 'vTsqk9hg' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '4hj6nUde' 'bW6UskbP' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'kkZAk01f' '1KxCtWAD' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'U2guN6U9' 'w13W1K9T' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'ZQ4qRLEi' '5wowE36r' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'fmM0CCs3' '5TPUPLms' --body '{"endDate": "1996-02-20T00:00:00Z", "nullFieldList": ["wSx1DI5G"], "startDate": "1987-01-13T00:00:00Z", "status": "INACTIVE", "useCount": 91}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'o2HpA6pz' 'jHpZO0E9' --body '{"useCount": 17}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'LgRPJK3n' 'Bae3GOgb' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'Qrqra0Pt' 'kfvOpY2r' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'amp5lnBn' '6xmBkfMt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'C66hFq0k' 'POkORm2X' --login_with_auth "Bearer foo"
platform-fulfill-item 'jlNEE5ec' --body '{"duration": 83, "endDate": "1983-07-30T00:00:00Z", "itemId": "mi0ySJHf", "itemSku": "PloP1XkY", "language": "K4MgIsDS", "order": {"currency": {"currencyCode": "FMPyMhyw", "currencySymbol": "1OLZPVww", "currencyType": "VIRTUAL", "decimals": 67, "namespace": "4BIDJuDo"}, "ext": {"ShMMftll": {}}, "free": true}, "orderNo": "ChHz9urm", "origin": "Other", "quantity": 84, "region": "WvE8s6Uz", "source": "PURCHASE", "startDate": "1992-06-08T00:00:00Z", "storeId": "YWDTtL6M"}' --login_with_auth "Bearer foo"
platform-redeem-code 'TTRkCbb9' --body '{"code": "S5Q1IVHG", "language": "PRre_hjjU", "region": "ohtU13gf"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards '7TRigNZj' --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "5y3HmK8Q", "namespace": "VOa62eQZ"}, "item": {"itemId": "tbLLcF67", "itemSku": "1WLtv38H", "itemType": "ecczopFm"}, "quantity": 9, "type": "ITEM"}], "source": "IAP"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'cJBZyi3m' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'LC4Kzeki' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'SzeyolnO' --body '{"itemIdentityType": "ITEM_SKU", "language": "Ov-285", "productId": "nHbRdoTK", "region": "KeuSjfZe", "type": "GOOGLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders '1osghF1h' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'zi1Nl47s' --body '{"currencyCode": "yJ5ibzSH", "discountedPrice": 8, "ext": {"CLIvWPVR": {}}, "itemId": "sdEqA61y", "language": "TrMgsycT", "platform": "GooglePlay", "price": 25, "quantity": 82, "region": "zc20EuO5", "returnUrl": "dMqGDlSZ", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'EVSjzHjL' '6ZbXjG6D' --login_with_auth "Bearer foo"
platform-get-user-order 'Smpp3op8' 'htaRLxtW' --login_with_auth "Bearer foo"
platform-update-user-order-status '4PvFkEST' 'ULat5F1L' --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "7cR7q6PW"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'hZmmKz41' 'i1Tp78Fi' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'pJHahViJ' 'vLYW0kdm' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'lk2luqSO' 'OA2VOZBo' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'NbB98PuS' 'GykqFzPw' --body '{"additionalData": {"cardSummary": "SMXT53bB"}, "authorisedTime": "1981-10-28T00:00:00Z", "chargebackReversedTime": "1998-01-04T00:00:00Z", "chargebackTime": "1973-11-20T00:00:00Z", "chargedTime": "1996-08-21T00:00:00Z", "createdTime": "1994-06-07T00:00:00Z", "currency": {"currencyCode": "HZQ9LYt6", "currencySymbol": "w23Wf8iE", "currencyType": "REAL", "decimals": 37, "namespace": "H0aRdcDl"}, "customParameters": {"DyGcsfIu": {}}, "extOrderNo": "I4Dv5lEJ", "extTxId": "pK1AyRlz", "extUserId": "srRXEFZi", "issuedAt": "1981-12-01T00:00:00Z", "metadata": {"OHG6wVic": "NratsvvH"}, "namespace": "LmIohfNI", "nonceStr": "SLXMDWDd", "paymentMethod": "m5FE4lli", "paymentMethodFee": 85, "paymentOrderNo": "MnutJbpE", "paymentProvider": "PAYPAL", "paymentProviderFee": 25, "paymentStationUrl": "UNHFtdml", "price": 47, "refundedTime": "1990-06-16T00:00:00Z", "salesTax": 16, "sandbox": false, "sku": "cJc3Fm7Z", "status": "CHARGE_FAILED", "statusReason": "uKgoCBqS", "subscriptionId": "5uIdCbwC", "subtotalPrice": 8, "targetNamespace": "eq9ouEdD", "targetUserId": "tjOgsypL", "tax": 21, "totalPrice": 24, "totalTax": 100, "txEndTime": "1973-06-26T00:00:00Z", "type": "5H7Zm0gn", "userId": "Yyj6MXf9", "vat": 64}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '1ntyebvo' 'eHenAALK' --login_with_auth "Bearer foo"
platform-create-user-payment-order 't7EfxIH4' --body '{"currencyCode": "46oUnP2S", "currencyNamespace": "74unXwg0", "customParameters": {"JKqVWW1r": {}}, "description": "jK1epwkA", "extOrderNo": "vcsYvbgf", "extUserId": "BVPpTa8Y", "itemType": "MEDIA", "language": "tkI_005", "metadata": {"TCTng0xj": "tdBrjs3K"}, "notifyUrl": "iykt2Ck2", "omitNotification": false, "platform": "OlSatECZ", "price": 93, "recurringPaymentOrderNo": "gwQLqDqY", "region": "SxTPuVlB", "returnUrl": "qirdp3yx", "sandbox": false, "sku": "sETl1Svh", "subscriptionId": "QudsjIhX", "title": "dxiSoWpn"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'nxgX7BCP' 'MqzQIxib' --body '{"description": "hpNYsHtd"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'B3IkjuaZ' --body '{"code": "qhJilrZk", "orderNo": "SSKgP5rx"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'CR77G9d5' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'CA1GORSb' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'L9n0dbWD' --body '{"grantDays": 61, "itemId": "upmdLQzP", "language": "nNfBAcWA", "reason": "rbkCfdHI", "region": "Zb03otqm", "source": "BuS9V2pC"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'Z23UHmk0' 'lpJ4JLl0' --login_with_auth "Bearer foo"
platform-get-user-subscription '1qi7L2oD' 'UoVRUb39' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'j22P4Sp0' '9cKmjRUb' --login_with_auth "Bearer foo"
platform-cancel-subscription 'ZVBVS7OK' '2Zrdcsck' --body '{"immediate": false, "reason": "kROWZ2KU"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'TqkK2eFa' 'GLoSmEEP' --body '{"grantDays": 3, "reason": "LywJsyUi"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'e6fZgLll' 'UPsO8lg4' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '6Si7006v' 'L2w4aajD' --body '{"additionalData": {"cardSummary": "AOx0iJjY"}, "authorisedTime": "1976-02-07T00:00:00Z", "chargebackReversedTime": "1971-03-29T00:00:00Z", "chargebackTime": "1980-05-08T00:00:00Z", "chargedTime": "1981-03-22T00:00:00Z", "createdTime": "1976-03-16T00:00:00Z", "currency": {"currencyCode": "QuD5mnJO", "currencySymbol": "NqHGq8mB", "currencyType": "REAL", "decimals": 62, "namespace": "2lMFcagh"}, "customParameters": {"FXJIJflR": {}}, "extOrderNo": "HFcsIqCy", "extTxId": "4xDifSSQ", "extUserId": "5On2ccEc", "issuedAt": "1976-07-05T00:00:00Z", "metadata": {"eiO4bwF5": "JOjGoGxK"}, "namespace": "M3qMce5t", "nonceStr": "fLcpjFZM", "paymentMethod": "KCbp0pEb", "paymentMethodFee": 74, "paymentOrderNo": "CLFpHxMY", "paymentProvider": "XSOLLA", "paymentProviderFee": 47, "paymentStationUrl": "EpzdnYtp", "price": 19, "refundedTime": "1971-03-14T00:00:00Z", "salesTax": 13, "sandbox": false, "sku": "sQZga6Vy", "status": "CHARGEBACK", "statusReason": "zPiQRjYa", "subscriptionId": "8fv5fIt2", "subtotalPrice": 39, "targetNamespace": "IZhjhgki", "targetUserId": "gW22zXMW", "tax": 98, "totalPrice": 11, "totalTax": 2, "txEndTime": "1972-11-06T00:00:00Z", "type": "0GIALIbF", "userId": "CQgBcLNT", "vat": 17}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'OQVYx5rW' '2gMsI1aY' --body '{"count": 54, "orderNo": "itSn3UDe"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'Kj97I4WY' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'XLqjN7kt' 'OBTraBxW' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'RTVuYEqG' 'lKDwTKXB' --body '{"amount": 34, "expireAt": "1995-03-07T00:00:00Z", "origin": "Xbox", "reason": "cd9IW8ki", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'KeQJWZBv' 'cq1ETvWB' --body '{"amount": 46, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-sync-orders '7B8gbnSu' '9M2OxD2u' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["daeYpCXY"], "apiKey": "SMiy87CT", "authoriseAsCapture": true, "blockedPaymentMethods": ["EQBg36my"], "clientKey": "3sY2clrD", "dropInSettings": "cain0cOV", "liveEndpointUrlPrefix": "F1zHwDTI", "merchantAccount": "0sJ1Q0kp", "notificationHmacKey": "hMTggSP2", "notificationPassword": "SLcuAP7v", "notificationUsername": "U971Czw2", "returnUrl": "nbg8C7Mv", "settings": "ywhu6MjO"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "juGzo1Fz", "privateKey": "4tU0aSn9", "publicKey": "8N8qOUA0", "returnUrl": "z92RaDe8"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "ngT8LRQk", "secretKey": "MnG1LZyF"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "2mdYY6ZM", "clientSecret": "fuTYTKsu", "returnUrl": "e48qBEBN", "webHookId": "AV5BTe6e"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["c1zA92UR"], "publishableKey": "CLSGPmRB", "secretKey": "ZWunHW7M", "webhookSecret": "Yvr6QA7P"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "pepc92HA", "key": "94eACdey", "mchid": "fUpgiPpf", "returnUrl": "8nxKJ3dn"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "mtPwa64Y", "flowCompletionUrl": "4gPEKMhh", "merchantId": 40, "projectId": 0, "projectSecretKey": "6f3xJNtU"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'lKLlIIAe' --login_with_auth "Bearer foo"
platform-update-adyen-config 'Hbm5M6Ls' --body '{"allowedPaymentMethods": ["Y1VMuIEc"], "apiKey": "Rls68M3M", "authoriseAsCapture": true, "blockedPaymentMethods": ["epyyMz6z"], "clientKey": "fR1pvTYY", "dropInSettings": "tDOiEi4R", "liveEndpointUrlPrefix": "uEcHCSGh", "merchantAccount": "pOZQFlwO", "notificationHmacKey": "iuKGDFgK", "notificationPassword": "49YuKnXk", "notificationUsername": "s0m8ANrc", "returnUrl": "Ral7ta3f", "settings": "ojA3h4MM"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'W3AJ5zls' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'FBwjvLYv' --body '{"appId": "mg6avudQ", "privateKey": "FF1CPNY9", "publicKey": "u2dVYdgl", "returnUrl": "OOoCeK0k"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'PKmBqVux' --login_with_auth "Bearer foo"
platform-update-checkout-config '3lXcD8ae' --body '{"publicKey": "rtAVCqs8", "secretKey": "XT8xy3nJ"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '06KkseA0' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'ARj9ricf' --body '{"clientID": "ayvnhi8M", "clientSecret": "DdY4WLHo", "returnUrl": "aUkYnQp5", "webHookId": "egdmVE8I"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'mivNtQxq' --login_with_auth "Bearer foo"
platform-update-stripe-config 'WRKHohOD' --body '{"allowedPaymentMethodTypes": ["oWOr98kj"], "publishableKey": "BUas9jjz", "secretKey": "2FrgiaGr", "webhookSecret": "cB7dIOVK"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'IPSJJHo5' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'W8tKH8ou' --body '{"appId": "9SdbxSXc", "key": "rEFCwqeG", "mchid": "NLdIBRdl", "returnUrl": "iFQVMKEz"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'VUWlUWDs' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '2x1EQU0o' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'epEvcjaS' --body '{"apiKey": "gEh6jJnF", "flowCompletionUrl": "xinIHJ1o", "merchantId": 1, "projectId": 33, "projectSecretKey": "5Zznd5ea"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'cobTsuRl' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'hreQVFID' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "KIOAw70D", "region": "vAHhSGWU", "sandboxTaxJarApiToken": "vzq1Za3I", "specials": ["WXPAY"], "taxJarApiToken": "C4vQFsUJ", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'aJp1rt7O' --body '{"aggregate": "XSOLLA", "namespace": "gBCe6N0e", "region": "I65Mn5tn", "sandboxTaxJarApiToken": "gEYXgPVT", "specials": ["XSOLLA"], "taxJarApiToken": "qXDZBVMJ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'KFO92YDt' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "aZvJoKS0", "taxJarApiToken": "OxyipZuO", "taxJarEnabled": true, "taxJarProductCodesMapping": {"gHa6XBcv": "GRYk5rUt"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'WHCnhmzz' 'ppV7tKNK' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'YUQVBXym' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'WcNlHaFx' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'YaGHUpmB' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'FyOrFKtx' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'GNAi0fq4' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'xChPLd2l' --login_with_auth "Bearer foo"
platform-public-search-items 'Oopc7XoV' 'pdd6rCpy' --login_with_auth "Bearer foo"
platform-public-get-app 'MrnH9YHX' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'h7KnCVOK' --login_with_auth "Bearer foo"
platform-public-get-item 'Y2zsBRGt' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "d8QY2OLb", "paymentProvider": "CHECKOUT", "returnUrl": "jrvfr8hk", "ui": "njWUWdMU", "zipCode": "XHvw4pNl"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'GLjdBxLM' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '079pDAbT' --login_with_auth "Bearer foo"
platform-pay 'gmsEYEq2' --body '{"token": "GkYK1vYm"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '9flXQ7CQ' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'PAYPAL' 'emnQG0dH' --login_with_auth "Bearer foo"
platform-public-get-qr-code '0NVM9VEH' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'TPqDhkcu' '5vnz6GiN' 'ADYEN' 'oBJHml0L' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'JmpPi4mq' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'ruiCZLGG' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'P5UXkHNT' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'Mapp5Sbo' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'nsUJKADr' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '60EkdFrp' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'LsGt9yTX' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'WUSCQcMs' --body '{"serviceLabel": 66}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'N7reI22k' --body '{"appId": "s7I12tAZ", "steamId": "c8sxxLx9"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'XQeqNWLm' --body '{"xstsToken": "8cNJbYH5"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'J4WiJLv9' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'NvHwtw2M' 'jcy9ZL6Z' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 's5Bu2XYo' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'LWZeUKJJ' 'NftRpGgk' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '1iseREzz' 'RG6z9wmu' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'HddyOdib' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'I1LVyqbd' 'Y8DGZKAu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'oIKz3Pp3' 'zLWUxMzM' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'tSmMmZP8' 'nG0FoQP8' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'q7aSsb85' 'gAh9RD3Z' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'zN6N1iJ8' 'ltt9IRqC' --body '{"useCount": 10}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'lgln6r5f' --body '{"code": "0s5H6lCf", "language": "hAHl_AVle_dG", "region": "2cvHfMRu"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'pDA5xbjs' --body '{"excludeOldTransactions": false, "language": "ujgc", "productId": "lIXkgJ6z", "receiptData": "kTwoakq7", "region": "sEejFZ1N", "transactionId": "tONXb9w9"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'hsQHszIs' --body '{"epicGamesJwtToken": "frlzKpQd"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'd58dZP5R' --body '{"autoAck": true, "language": "INn-TQfs", "orderId": "A68mIVYJ", "packageName": "5pSVxBsL", "productId": "hty3pecT", "purchaseTime": 29, "purchaseToken": "XA4M1oUF", "region": "Phgo7Z6m"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'wNC4FY69' --body '{"currencyCode": "mM87joJN", "price": 0.6254354678993388, "productId": "B83Ns6Hl", "serviceLabel": 82}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'oab6lKoV' --body '{"appId": "qNBUzIxO", "language": "GL-dOwR-903", "region": "OAqOokV1", "stadiaPlayerId": "plxQ2Yri"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'TPfipD67' --body '{"appId": "jI2hiZkr", "currencyCode": "tLnh2U1R", "language": "LmXK-036", "price": 0.15989172294372445, "productId": "Oek83Igm", "region": "1wkSWsYv", "steamId": "Asu18obU"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'dc8mbvXc' --body '{"gameId": "wcgMqOXM", "language": "IxR-Lf", "region": "P3mJwusC"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'BTe4kLcu' --body '{"currencyCode": "qL40NYge", "price": 0.16933823362385636, "productId": "RavpaGTA", "xstsToken": "9BTyCCyN"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '4Fw9i6mI' --login_with_auth "Bearer foo"
platform-public-create-user-order '2W3tjjCq' --body '{"currencyCode": "PVyYs01h", "discountedPrice": 60, "ext": {"YzWw3qrc": {}}, "itemId": "xM0DPAXQ", "language": "nmp_zA", "price": 96, "quantity": 63, "region": "spkU5kn6", "returnUrl": "PlPqD4Ag"}' --login_with_auth "Bearer foo"
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
echo "1..338"

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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"VXTxs9LT": "orIyx23L"}}]}' \
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

#- 159 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'vufSxYM0' \
    --body '{"achievements": [{"id": "VkuqOKrh", "percentComplete": 42}], "serviceConfigId": "MwvD04UY", "titleId": "8ghvsmSr", "xboxUserId": "rJzAi6FO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdateXblUserAchievement' test.out

#- 160 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'uhQIBAbu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AnonymizeCampaign' test.out

#- 161 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'p1fpWsO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AnonymizeEntitlement' test.out

#- 162 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'fW468fWx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AnonymizeFulfillment' test.out

#- 163 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'qRkJDjfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AnonymizeIntegration' test.out

#- 164 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'hYDgVm0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeOrder' test.out

#- 165 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'Caos4wyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AnonymizePayment' test.out

#- 166 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'aPP6Clek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeSubscription' test.out

#- 167 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'QGm25KYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeWallet' test.out

#- 168 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'FZxQr4xb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'QueryUserEntitlements' test.out

#- 169 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'V63gcdU4' \
    --body '[{"endDate": "1981-07-13T00:00:00Z", "grantedCode": "IPJeRjCj", "itemId": "7UK5nEmw", "itemNamespace": "sQtSfDqA", "language": "YSe_KpbJ_Ts", "quantity": 64, "region": "zayUaDh3", "source": "OTHER", "startDate": "1998-01-27T00:00:00Z", "storeId": "X31qVPH2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GrantUserEntitlement' test.out

#- 170 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'VHDznf57' \
    'fQ1PY5uD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'GetUserAppEntitlementByAppId' test.out

#- 171 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'kQ8zpNRw' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'QueryUserEntitlementsByAppType' test.out

#- 172 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'cEAShpFL' \
    'pqAx1N5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetUserEntitlementByItemId' test.out

#- 173 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'GebNuvyr' \
    'ghVdsSwD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetUserEntitlementBySku' test.out

#- 174 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'c9NJRX9Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'ExistsAnyUserActiveEntitlement' test.out

#- 175 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'daC8sja1' \
    '["J7eucGSS"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 176 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'xZJPto04' \
    'wTEI8isX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 177 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'myAGW2rZ' \
    '7bYvVW26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementOwnershipByItemId' test.out

#- 178 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'Oaysx72r' \
    'wV3MdXNV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementOwnershipBySku' test.out

#- 179 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'RDzT2sBb' \
    'flg7cD24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'RevokeUserEntitlements' test.out

#- 180 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '7c1XYYJf' \
    '18StYu6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetUserEntitlement' test.out

#- 181 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'b2We3Q6P' \
    'm7RBkqWD' \
    --body '{"endDate": "1991-08-31T00:00:00Z", "nullFieldList": ["P4CWnZJj"], "startDate": "1995-01-26T00:00:00Z", "status": "CONSUMED", "useCount": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UpdateUserEntitlement' test.out

#- 182 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'v9owF1mQ' \
    'rc03W7oO' \
    --body '{"useCount": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'ConsumeUserEntitlement' test.out

#- 183 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'pY5ZJChQ' \
    'tpD2U9IQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DisableUserEntitlement' test.out

#- 184 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'zA2eexjq' \
    '3TfnJ6ry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'EnableUserEntitlement' test.out

#- 185 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'Q4wCg5It' \
    'n9TYOR2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlementHistories' test.out

#- 186 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    '8qFjjSZx' \
    '0FeRdmgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'RevokeUserEntitlement' test.out

#- 187 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'ta6pcKzS' \
    --body '{"duration": 82, "endDate": "1973-02-07T00:00:00Z", "itemId": "k369fIM1", "itemSku": "tcxwt2Xq", "language": "PFaIxBgz", "order": {"currency": {"currencyCode": "RO8GKycd", "currencySymbol": "cXuULpvu", "currencyType": "VIRTUAL", "decimals": 78, "namespace": "RzUbH0hI"}, "ext": {"7yCEyjKX": {}}, "free": false}, "orderNo": "omAsHMpm", "origin": "Steam", "quantity": 42, "region": "t4tkWavQ", "source": "GIFT", "startDate": "1978-12-04T00:00:00Z", "storeId": "q6AFdE7U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'FulfillItem' test.out

#- 188 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'Rb19BcvW' \
    --body '{"code": "fPxHPQaU", "language": "LYa", "region": "GkGwDsoo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'RedeemCode' test.out

#- 189 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '09NdZjNj' \
    --body '{"origin": "IOS", "rewards": [{"currency": {"currencyCode": "tl8XIGZV", "namespace": "3GBXIHxW"}, "item": {"itemId": "GX4iwwHL", "itemSku": "ohaKvD9n", "itemType": "NeLi2tRr"}, "quantity": 5, "type": "CURRENCY"}], "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'FulfillRewards' test.out

#- 190 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '3o5FmkWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'QueryUserIAPOrders' test.out

#- 191 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'IpWlbLNx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'QueryAllUserIAPOrders' test.out

#- 192 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'QciSm2Ob' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "Ce-DHoe", "productId": "HbV6Tq3m", "region": "akniWG9A", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'MockFulfillIAPItem' test.out

#- 193 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'aznHrmvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'QueryUserOrders' test.out

#- 194 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '1mJZ3dLF' \
    --body '{"currencyCode": "xAkQrsQX", "discountedPrice": 56, "ext": {"UjnXNZpa": {}}, "itemId": "cdMfX6X3", "language": "Zta5msSI", "platform": "Epic", "price": 47, "quantity": 26, "region": "cCH37zoQ", "returnUrl": "ElCSNpKY", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminCreateUserOrder' test.out

#- 195 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'jKmIIb0i' \
    'BSA7vdLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'CountOfPurchasedItem' test.out

#- 196 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'UFJ7qN6u' \
    'cqfJth42' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserOrder' test.out

#- 197 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'FD6A3kch' \
    'LvxRuULx' \
    --body '{"status": "INIT", "statusReason": "jXJ9BFwE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'UpdateUserOrderStatus' test.out

#- 198 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'yGUCv8O9' \
    'EBlPmENb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'FulfillUserOrder' test.out

#- 199 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '7inSCGzN' \
    'uHpABtt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserOrderGrant' test.out

#- 200 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'GgpAZjcg' \
    '8z9cH6u6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserOrderHistories' test.out

#- 201 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'SmVFciDG' \
    'ufTZk7gk' \
    --body '{"additionalData": {"cardSummary": "6nZZgUCW"}, "authorisedTime": "1980-01-13T00:00:00Z", "chargebackReversedTime": "1998-02-11T00:00:00Z", "chargebackTime": "1976-07-29T00:00:00Z", "chargedTime": "1977-05-17T00:00:00Z", "createdTime": "1980-07-14T00:00:00Z", "currency": {"currencyCode": "pCRQfPhf", "currencySymbol": "O9Eamej2", "currencyType": "VIRTUAL", "decimals": 24, "namespace": "6vaoBRuM"}, "customParameters": {"FZbZvy6m": {}}, "extOrderNo": "J2jHxdpq", "extTxId": "HuBibSpy", "extUserId": "FVnkERZ9", "issuedAt": "1974-06-30T00:00:00Z", "metadata": {"lM0hF50v": "8sFHE2tr"}, "namespace": "W2mRr4XS", "nonceStr": "8ek4IK6A", "paymentMethod": "PTpbukLG", "paymentMethodFee": 45, "paymentOrderNo": "4HJ51V5D", "paymentProvider": "ADYEN", "paymentProviderFee": 70, "paymentStationUrl": "ZjCvoCnb", "price": 55, "refundedTime": "1983-09-13T00:00:00Z", "salesTax": 3, "sandbox": false, "sku": "DbnZRasK", "status": "INIT", "statusReason": "9LYj8f7k", "subscriptionId": "b4sU5W5w", "subtotalPrice": 35, "targetNamespace": "nCC7OGhu", "targetUserId": "PV98XUYE", "tax": 24, "totalPrice": 25, "totalTax": 3, "txEndTime": "1987-09-02T00:00:00Z", "type": "lXpNGEUu", "userId": "LY9Nu31e", "vat": 23}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ProcessUserOrderNotification' test.out

#- 202 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'zdmX7gz9' \
    'djDT8HpJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'DownloadUserOrderReceipt' test.out

#- 203 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '3j7LyGDu' \
    --body '{"currencyCode": "YXVurnW5", "currencyNamespace": "P0Zs13Ft", "customParameters": {"OvKL3NS8": {}}, "description": "Iq1rRNyH", "extOrderNo": "R1S2ZUIC", "extUserId": "8uvkyFCM", "itemType": "SEASON", "language": "vfm_rLIJ", "metadata": {"Cbgx9wKm": "x7cjHqzV"}, "notifyUrl": "Ynt0cmkv", "omitNotification": false, "platform": "irigdjwd", "price": 58, "recurringPaymentOrderNo": "Lkv0pxwr", "region": "YjQ08Maf", "returnUrl": "jV6ihDDP", "sandbox": false, "sku": "2UODE5C6", "subscriptionId": "wjRywXS6", "title": "QpnJBEzx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'CreateUserPaymentOrder' test.out

#- 204 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '6dWqAZXp' \
    '1nDSpnpv' \
    --body '{"description": "CuDbIzKZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'RefundUserPaymentOrder' test.out

#- 205 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'syGX6JJk' \
    --body '{"code": "bGq2cf2R", "orderNo": "Yx5T5vYI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'ApplyUserRedemption' test.out

#- 206 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'U38uD0Cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'QueryUserSubscriptions' test.out

#- 207 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'guXsTIzK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetUserSubscriptionActivities' test.out

#- 208 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'ibhFZHPU' \
    --body '{"grantDays": 96, "itemId": "j69C0Wji", "language": "FzSiMY3W", "reason": "s9FISxHT", "region": "2n4vzccw", "source": "ccBELwGw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'PlatformSubscribeSubscription' test.out

#- 209 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '2MtzYXVS' \
    'Oadf8Dmj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 210 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'QPLvwUrZ' \
    'Eieujw5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserSubscription' test.out

#- 211 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'BkdlvUCT' \
    'avaEgxUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DeleteUserSubscription' test.out

#- 212 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'iPTrKQdl' \
    'aAHqUiWY' \
    --body '{"immediate": true, "reason": "ucG9pj0l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'CancelSubscription' test.out

#- 213 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'vAm79Jif' \
    'AIygeL9j' \
    --body '{"grantDays": 81, "reason": "JQAmjxPL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GrantDaysToSubscription' test.out

#- 214 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'aTrFO9wj' \
    '0k9J7zQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserSubscriptionBillingHistories' test.out

#- 215 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'xTM4wAbI' \
    'aBJF8VQf' \
    --body '{"additionalData": {"cardSummary": "E9fBFxsE"}, "authorisedTime": "1972-07-02T00:00:00Z", "chargebackReversedTime": "1994-02-24T00:00:00Z", "chargebackTime": "1988-04-16T00:00:00Z", "chargedTime": "1991-09-25T00:00:00Z", "createdTime": "1995-09-15T00:00:00Z", "currency": {"currencyCode": "HoWLtuXx", "currencySymbol": "6HZKN3M9", "currencyType": "VIRTUAL", "decimals": 25, "namespace": "HlEEbsM2"}, "customParameters": {"OxvkKm55": {}}, "extOrderNo": "nGqL82Wn", "extTxId": "ensZA4Xq", "extUserId": "DpcNJf1z", "issuedAt": "1998-02-25T00:00:00Z", "metadata": {"DEAI2t0b": "riD5LIWt"}, "namespace": "hO7lSGEh", "nonceStr": "wwhO3BEq", "paymentMethod": "q64jTipo", "paymentMethodFee": 18, "paymentOrderNo": "GJpQoqR3", "paymentProvider": "WXPAY", "paymentProviderFee": 49, "paymentStationUrl": "vGfBwIwU", "price": 2, "refundedTime": "1998-06-19T00:00:00Z", "salesTax": 98, "sandbox": false, "sku": "1Nyvf3E3", "status": "AUTHORISE_FAILED", "statusReason": "AS5oIXUf", "subscriptionId": "pQwWGai7", "subtotalPrice": 48, "targetNamespace": "tXQXBCHd", "targetUserId": "frm4ewy1", "tax": 59, "totalPrice": 32, "totalTax": 55, "txEndTime": "1987-10-12T00:00:00Z", "type": "jZFetBdg", "userId": "q9tnIAco", "vat": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ProcessUserSubscriptionNotification' test.out

#- 216 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'WKJZMKj9' \
    'kmxpXX8J' \
    --body '{"count": 8, "orderNo": "fuUGZB9j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AcquireUserTicket' test.out

#- 217 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'aeWRzlsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'QueryUserCurrencyWallets' test.out

#- 218 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'diuR6RZD' \
    'T5q7YcCk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'ListUserCurrencyTransactions' test.out

#- 219 CheckWallet
eval_tap 0 219 'CheckWallet # SKIP deprecated' test.out

#- 220 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'B6eLuzsP' \
    'aXohAvro' \
    --body '{"amount": 85, "expireAt": "1996-01-04T00:00:00Z", "origin": "Nintendo", "reason": "fyTgKruu", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'CreditUserWallet' test.out

#- 221 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'bCF9DcEV' \
    '3SD004RR' \
    --body '{"amount": 46, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'PayWithUserWallet' test.out

#- 222 GetUserWallet
eval_tap 0 222 'GetUserWallet # SKIP deprecated' test.out

#- 223 DebitUserWallet
eval_tap 0 223 'DebitUserWallet # SKIP deprecated' test.out

#- 224 DisableUserWallet
eval_tap 0 224 'DisableUserWallet # SKIP deprecated' test.out

#- 225 EnableUserWallet
eval_tap 0 225 'EnableUserWallet # SKIP deprecated' test.out

#- 226 ListUserWalletTransactions
eval_tap 0 226 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 227 QueryWallets
eval_tap 0 227 'QueryWallets # SKIP deprecated' test.out

#- 228 GetWallet
eval_tap 0 228 'GetWallet # SKIP deprecated' test.out

#- 229 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'BiyCKBsx' \
    'KfO0QMZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'SyncOrders' test.out

#- 230 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["BpvQuO9P"], "apiKey": "251BVfUn", "authoriseAsCapture": false, "blockedPaymentMethods": ["cThlx4DM"], "clientKey": "5MJ2Pc8b", "dropInSettings": "ulwqLyhF", "liveEndpointUrlPrefix": "MeCxvRHm", "merchantAccount": "TK6J8Prk", "notificationHmacKey": "4dhQH62t", "notificationPassword": "YAMHu963", "notificationUsername": "tuVtmjat", "returnUrl": "nR06xDNs", "settings": "2SWbI1hX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'TestAdyenConfig' test.out

#- 231 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "VOD0eAWH", "privateKey": "AN9PfJYq", "publicKey": "bY1oJTdN", "returnUrl": "ileWvsff"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'TestAliPayConfig' test.out

#- 232 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "1vwfz6XV", "secretKey": "95AYceo0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'TestCheckoutConfig' test.out

#- 233 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'DebugMatchedPaymentMerchantConfig' test.out

#- 234 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "eecB0xtL", "clientSecret": "3jFZOELd", "returnUrl": "LmYKsPGm", "webHookId": "uAIxJmj3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'TestPayPalConfig' test.out

#- 235 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["UDvN6gGL"], "publishableKey": "oAUPH7Sj", "secretKey": "rEfcuDTS", "webhookSecret": "j7rQ9btD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'TestStripeConfig' test.out

#- 236 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "nwEzMsie", "key": "lcjxQjMf", "mchid": "clMXOz5z", "returnUrl": "BKrt8bOH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestWxPayConfig' test.out

#- 237 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "Gp5P78hL", "flowCompletionUrl": "DgFeSh6E", "merchantId": 27, "projectId": 72, "projectSecretKey": "HynFXOH8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'TestXsollaConfig' test.out

#- 238 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'gKVlK1fc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetPaymentMerchantConfig' test.out

#- 239 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'IlMKOlq5' \
    --body '{"allowedPaymentMethods": ["3upI4Hja"], "apiKey": "15XYvf51", "authoriseAsCapture": true, "blockedPaymentMethods": ["cBd5rD2W"], "clientKey": "uo6Hrr2N", "dropInSettings": "bYUJGZiJ", "liveEndpointUrlPrefix": "ejefFKsL", "merchantAccount": "szYGFlWN", "notificationHmacKey": "m21v93bv", "notificationPassword": "huxpnWue", "notificationUsername": "DoXqziW0", "returnUrl": "pPTKlfM7", "settings": "OLcwhNQ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'UpdateAdyenConfig' test.out

#- 240 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'ISPjMA5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'TestAdyenConfigById' test.out

#- 241 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Yj4TNoMA' \
    --body '{"appId": "awH8QDHV", "privateKey": "dTqEMlF2", "publicKey": "AUpohDiA", "returnUrl": "hJuGjwVi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'UpdateAliPayConfig' test.out

#- 242 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'onKlaCrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'TestAliPayConfigById' test.out

#- 243 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '0i06kgIw' \
    --body '{"publicKey": "CrEgelT8", "secretKey": "zVC1YeUy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'UpdateCheckoutConfig' test.out

#- 244 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'HaXqQxmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'TestCheckoutConfigById' test.out

#- 245 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'wd575JhR' \
    --body '{"clientID": "80UC9RFv", "clientSecret": "txvMfwnQ", "returnUrl": "fvyXL00w", "webHookId": "CE65MfNt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'UpdatePayPalConfig' test.out

#- 246 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '8OIy8S0Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestPayPalConfigById' test.out

#- 247 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'mPqh1yYY' \
    --body '{"allowedPaymentMethodTypes": ["w5DgqWTz"], "publishableKey": "S93flMEy", "secretKey": "3MrRfCDt", "webhookSecret": "YmnBmWWs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UpdateStripeConfig' test.out

#- 248 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'oEqxMV23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestStripeConfigById' test.out

#- 249 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'JYjtET8O' \
    --body '{"appId": "ONm1ccFA", "key": "Qh3NhEAG", "mchid": "DA9kOIP1", "returnUrl": "a4swJXie"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateWxPayConfig' test.out

#- 250 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'A6PNyI4Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'UpdateWxPayConfigCert' test.out

#- 251 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'D8ZALgmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestWxPayConfigById' test.out

#- 252 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'weJppm1W' \
    --body '{"apiKey": "A5zpzKWy", "flowCompletionUrl": "KNzBoL7E", "merchantId": 85, "projectId": 90, "projectSecretKey": "eNMSNNex"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'UpdateXsollaConfig' test.out

#- 253 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '5dlwul2q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestXsollaConfigById' test.out

#- 254 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'hfwy74gW' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateXsollaUIConfig' test.out

#- 255 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'QueryPaymentProviderConfig' test.out

#- 256 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "XCFX94Mt", "region": "RGGL68te", "sandboxTaxJarApiToken": "k2UNjsgQ", "specials": ["ADYEN"], "taxJarApiToken": "a6OwZuwy", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'CreatePaymentProviderConfig' test.out

#- 257 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetAggregatePaymentProviders' test.out

#- 258 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'DebugMatchedPaymentProviderConfig' test.out

#- 259 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'GetSpecialPaymentProviders' test.out

#- 260 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'tXEMam6I' \
    --body '{"aggregate": "ADYEN", "namespace": "7k8cIhle", "region": "ApHrsu9y", "sandboxTaxJarApiToken": "ZjjbdrzA", "specials": ["WALLET"], "taxJarApiToken": "Leuen91R", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'UpdatePaymentProviderConfig' test.out

#- 261 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'H8AcaclJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'DeletePaymentProviderConfig' test.out

#- 262 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetPaymentTaxConfig' test.out

#- 263 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "9CLnaYpz", "taxJarApiToken": "lQ2x3EnM", "taxJarEnabled": false, "taxJarProductCodesMapping": {"99gEy4Sy": "9nZidlJ6"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdatePaymentTaxConfig' test.out

#- 264 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    't4AmHiTu' \
    'je6S87De' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'SyncPaymentOrders' test.out

#- 265 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRootCategories' test.out

#- 266 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'DownloadCategories' test.out

#- 267 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'PRQBjep2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCategory' test.out

#- 268 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'Is3ANmYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetChildCategories' test.out

#- 269 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'XhUrICHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetDescendantCategories' test.out

#- 270 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicListCurrencies' test.out

#- 271 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '1TrmIdK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetItemByAppId' test.out

#- 272 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicQueryItems' test.out

#- 273 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'DmYPF6gp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetItemBySku' test.out

#- 274 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'PJK9qL0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicBulkGetItems' test.out

#- 275 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'mqezbFm0' \
    'Y5OsHaOO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicSearchItems' test.out

#- 276 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'yB4Kp7hz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetApp' test.out

#- 277 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'U9HaTyWF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemDynamicData' test.out

#- 278 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'QlLw8K5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItem' test.out

#- 279 GetPaymentCustomization
eval_tap 0 279 'GetPaymentCustomization # SKIP deprecated' test.out

#- 280 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "orxH1KFu", "paymentProvider": "XSOLLA", "returnUrl": "YygH2i0C", "ui": "bngOhbnr", "zipCode": "1dAwa0f9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetPaymentUrl' test.out

#- 281 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'bDmasQwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetPaymentMethods' test.out

#- 282 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'ImnIPZ2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUnpaidPaymentOrder' test.out

#- 283 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '9WLUOBr8' \
    --body '{"token": "ZsOMLNA3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'Pay' test.out

#- 284 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'BJ6xnFts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicCheckPaymentOrderPaidStatus' test.out

#- 285 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'STRIPE' \
    'dJPTHSCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetPaymentPublicConfig' test.out

#- 286 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '5CUxUobA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetQRCode' test.out

#- 287 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'tEeZgYwX' \
    '4AxnhDDe' \
    'ALIPAY' \
    'SdRZdfbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicNormalizePaymentReturnUrl' test.out

#- 288 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'UCViBiK4' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetPaymentTaxValue' test.out

#- 289 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'qN3FrZ27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GetRewardByCode' test.out

#- 290 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'QueryRewards1' test.out

#- 291 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'sTWO1j8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GetReward1' test.out

#- 292 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicListStores' test.out

#- 293 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicExistsAnyMyActiveEntitlement' test.out

#- 294 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'NGKXB1PH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 295 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'd0dAJRMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 296 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '4Xl4dhRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 297 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetEntitlementOwnershipToken' test.out

#- 298 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'jEOdEWLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetMyWallet' test.out

#- 299 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'wo4jNJYK' \
    --body '{"serviceLabel": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicSyncPsnDlcInventory' test.out

#- 300 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'GYPryjvs' \
    --body '{"appId": "OPgnUW9T", "steamId": "YFxn34wV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'SyncSteamDLC' test.out

#- 301 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '03oJwyCX' \
    --body '{"xstsToken": "dXlDay1d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'SyncXboxDLC' test.out

#- 302 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '5wzQ8Mi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicQueryUserEntitlements' test.out

#- 303 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'e6YQR2j2' \
    'NwEyTQqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserAppEntitlementByAppId' test.out

#- 304 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'ypjj3GNM' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryUserEntitlementsByAppType' test.out

#- 305 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '7FCiusiV' \
    'RT3F9T4n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserEntitlementByItemId' test.out

#- 306 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'WFoOAWpC' \
    'JKnXYo8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserEntitlementBySku' test.out

#- 307 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'tpjdAxIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicExistsAnyUserActiveEntitlement' test.out

#- 308 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'zZC3Lj7o' \
    'urPcaznS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 309 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'H2Cxs5k0' \
    'AiVIvGck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 310 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'J4UyHUQu' \
    'SmRQBGDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 311 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'gfJbtT26' \
    'RB4dllAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserEntitlement' test.out

#- 312 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'yAlx2pzg' \
    'H47Jmh8F' \
    --body '{"useCount": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicConsumeUserEntitlement' test.out

#- 313 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'VlUOhh6O' \
    --body '{"code": "gcWFoDkY", "language": "UDH_260", "region": "WMlmoskP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicRedeemCode' test.out

#- 314 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'fZlnfHna' \
    --body '{"excludeOldTransactions": false, "language": "ni_Et", "productId": "lX2frnV4", "receiptData": "SnI56iSa", "region": "mKfvoBCN", "transactionId": "AFlc2UDr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicFulfillAppleIAPItem' test.out

#- 315 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'xciFB3t7' \
    --body '{"epicGamesJwtToken": "Su887Ey5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'SyncEpicGamesInventory' test.out

#- 316 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'S3EsksPu' \
    --body '{"autoAck": true, "language": "SDTh-ad", "orderId": "UFdsq2oL", "packageName": "RcIgberq", "productId": "iArHPblr", "purchaseTime": 82, "purchaseToken": "veOBBV9k", "region": "49IeIHNj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicFulfillGoogleIAPItem' test.out

#- 317 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'kojdAdy9' \
    --body '{"currencyCode": "CDCc6KWW", "price": 0.5036420693631035, "productId": "LJj7aNoA", "serviceLabel": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicReconcilePlayStationStore' test.out

#- 318 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'v2gXLP7e' \
    --body '{"appId": "lmz4qzOr", "language": "rPS_320", "region": "8usTL87x", "stadiaPlayerId": "MPcqN6Kf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncStadiaEntitlement' test.out

#- 319 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '3uB7RkoH' \
    --body '{"appId": "PclOsJaD", "currencyCode": "4RbVS0Cn", "language": "FhG", "price": 0.623814225080071, "productId": "YVv6BjfS", "region": "EeqtMeNJ", "steamId": "SNg3AJJU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'SyncSteamInventory' test.out

#- 320 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '1oQnLDQs' \
    --body '{"gameId": "MpjdBKWr", "language": "Hzrz-367", "region": "Z1nbgtD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'SyncTwitchDropsEntitlement' test.out

#- 321 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'OViuZaI7' \
    --body '{"currencyCode": "Jv2evnHb", "price": 0.045260052854040445, "productId": "M73Dkqoh", "xstsToken": "zhINjwDf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'SyncXboxInventory' test.out

#- 322 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'Ie7xoslK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicQueryUserOrders' test.out

#- 323 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '0BMQF7Vv' \
    --body '{"currencyCode": "TIqMBjCC", "discountedPrice": 55, "ext": {"KnPi4rFN": {}}, "itemId": "HcvCKN66", "language": "cnat-Yl", "price": 81, "quantity": 84, "region": "JxnbExCc", "returnUrl": "zwhRoWp6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicCreateUserOrder' test.out

#- 324 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'lkuHP8bu' \
    'ZiH2GRmQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserOrder' test.out

#- 325 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'R4AtntPi' \
    'lLE8i8KP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicCancelUserOrder' test.out

#- 326 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'rA5PyjRz' \
    '6eP98Itq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserOrderHistories' test.out

#- 327 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'gopWhLj5' \
    'tZDX9fbQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicDownloadUserOrderReceipt' test.out

#- 328 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'AYktQpmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetPaymentAccounts' test.out

#- 329 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'fcWdRdhZ' \
    'card' \
    '6MACiufn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicDeletePaymentAccount' test.out

#- 330 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'Gqyyq7F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicQueryUserSubscriptions' test.out

#- 331 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'aCoZstPA' \
    --body '{"currencyCode": "UCl2eCy6", "itemId": "xDIxbzIR", "language": "SG-ulJE_720", "region": "bG5HAufl", "returnUrl": "1c4Sh7xc", "source": "c4KF44Gs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicSubscribeSubscription' test.out

#- 332 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'n5ewnln4' \
    '9JNf4B4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 333 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'TFAbVqpd' \
    '5OiYOUCH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserSubscription' test.out

#- 334 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'EDiDw1OG' \
    'oQx3PQmY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicChangeSubscriptionBillingAccount' test.out

#- 335 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'e1qncZKQ' \
    'gFGrSQzT' \
    --body '{"immediate": true, "reason": "s6TNpk09"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicCancelSubscription' test.out

#- 336 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'JnLu8mQz' \
    '6huRB8ET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetUserSubscriptionBillingHistories' test.out

#- 337 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'D3HQirZL' \
    'aWMQtU4o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetWallet' test.out

#- 338 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'yjkCIhkM' \
    'isoOPhEe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicListUserWalletTransactions' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
