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
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "XL6LFE1Y", "items": [{"extraSubscriptionDays": 67, "itemId": "o9m126ZW", "itemName": "c8hHtWvb", "quantity": 79}], "maxRedeemCountPerCampaignPerUser": 33, "maxRedeemCountPerCode": 12, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 33, "name": "slArFPiH", "redeemEnd": "1994-09-27T00:00:00Z", "redeemStart": "1980-12-31T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8kU9dBBp"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'sJLhsVyE' --login_with_auth "Bearer foo"
platform-update-campaign 'xrkxoot0' --body '{"description": "B7WOferc", "items": [{"extraSubscriptionDays": 7, "itemId": "pMci37Ds", "itemName": "7YSfExaI", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 74, "maxRedeemCountPerCodePerUser": 38, "maxSaleCount": 9, "name": "MbFAlt4h", "redeemEnd": "1979-09-25T00:00:00Z", "redeemStart": "1977-11-23T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["A5ltAOXm"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'lG6eh1dT' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'doTFpBIc' --body '{"categoryPath": "uC1dQY93", "localizationDisplayNames": {"OJnJ6Te9": "vD8ldz7H"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'u8AD79kd' --login_with_auth "Bearer foo"
platform-update-category 'WunvizU0' 'q1pHyhhE' --body '{"localizationDisplayNames": {"RoGgdrys": "MizBGSRd"}}' --login_with_auth "Bearer foo"
platform-delete-category 'P2l7DNSZ' '8Aq0XiPL' --login_with_auth "Bearer foo"
platform-get-child-categories 'QXSe07Zd' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'dOGTMlJj' --login_with_auth "Bearer foo"
platform-query-codes 'Bwj9HJHQ' --login_with_auth "Bearer foo"
platform-create-codes 'KseEdSXR' --body '{"quantity": 59}' --login_with_auth "Bearer foo"
platform-download 'Svguauw1' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'xT7eMwSl' --login_with_auth "Bearer foo"
platform-bulk-enable-codes '9MLH0NnT' --login_with_auth "Bearer foo"
platform-query-redeem-history 'J2ulNzBv' --login_with_auth "Bearer foo"
platform-get-code 'wJaQa547' --login_with_auth "Bearer foo"
platform-disable-code 'JllvA8RW' --login_with_auth "Bearer foo"
platform-enable-code 'SpabUt7x' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "k6QxyWhf", "currencySymbol": "qoWfJw2o", "currencyType": "REAL", "decimals": 96, "localizationDescriptions": {"UqvPCZ2H": "zT7NXmWD"}}' --login_with_auth "Bearer foo"
platform-update-currency 'lXsuNIdQ' --body '{"localizationDescriptions": {"JR5lsNOl": "vkfwaSbn"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'suLCgTox' --login_with_auth "Bearer foo"
platform-get-currency-config 'uVTekJgv' --login_with_auth "Bearer foo"
platform-get-currency-summary 'g6h5HIpH' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "0DviplEk", "rewards": [{"currency": {"currencyCode": "4vj3LDp4", "namespace": "yqDt8QUZ"}, "item": {"itemId": "DpxlHasi", "itemSku": "nGcjrkmR", "itemType": "MttgjDSa"}, "quantity": 68, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"ft3Udg7p": "9PGmY2H5"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'kX4MsisS' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "X28nARxW", "password": "Rpv5ou5x"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "tvd28OUf"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "Ct8UJC5f", "serviceAccountId": "lNyj6HsT"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "tX8P3lln", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"aS9lqyyg": "PcfkJIxf"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "QZza8kNV"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "bDxVMq7H", "publisherAuthenticationKey": "Jk0F89xA"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "c3YVfaEN", "clientSecret": "trl0pTKZ", "organizationId": "TXqzHuBM"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "YQSA2jz1"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-sync-in-game-item 'ZOpdOjSy' --body '{"categoryPath": "MddB41Ju", "targetItemId": "Mf7RUyBH", "targetNamespace": "Rj8IiRim"}' --login_with_auth "Bearer foo"
platform-create-item 'RllHT6Dc' --body '{"appId": "40vFFA6g", "appType": "DLC", "baseAppId": "U7EW3x1d", "boothName": "Cpm55gOe", "categoryPath": "qQIqcJVK", "clazz": "mBM1J1Ib", "displayOrder": 40, "entitlementType": "DURABLE", "ext": {"rkbmuT1w": {}}, "features": ["hOqmEnDX"], "images": [{"as": "IWrBPlSa", "caption": "y46mv71B", "height": 53, "imageUrl": "ZAOjtFJ2", "smallImageUrl": "vmTj7tT7", "width": 90}], "itemIds": ["ZHWDdCkI"], "itemQty": {"sZoArWwP": 66}, "itemType": "APP", "listable": true, "localizations": {"FAdAtYci": {"description": "LIgRwFRr", "localExt": {"0gwB9tz3": {}}, "longDescription": "vp99XVlV", "title": "8rK3tE6n"}}, "maxCount": 36, "maxCountPerUser": 25, "name": "ip1tw3L7", "optionBoxConfig": {"boxItems": [{"count": 4, "itemId": "Ud9pqtv6", "itemSku": "JfPZwcCV"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 90, "fixedTrialCycles": 25, "graceDays": 56}, "regionData": {"wtD2lAH0": [{"currencyCode": "1o6NdcBI", "currencyNamespace": "gzrDyWpF", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1977-04-13T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1971-06-30T00:00:00Z", "discountedPrice": 77, "expireAt": "1983-04-26T00:00:00Z", "price": 73, "purchaseAt": "1983-11-13T00:00:00Z", "trialPrice": 30}]}, "seasonType": "PASS", "sku": "Aasm8xwU", "stackable": false, "status": "INACTIVE", "tags": ["OlQiZY4N"], "targetCurrencyCode": "bOQXJ7uO", "targetNamespace": "TzNMvuq2", "thumbnailUrl": "tNl4CX4I", "useCount": 19}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'iK4DEUJR' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'VK3l9Eb0' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'R1XRb0RH' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '8vS1smeO' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'lngrdTXC' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'zaPBtkZM' --body '{"itemIds": ["io4wcyhl"]}' --login_with_auth "Bearer foo"
platform-search-items 'oVS3rYp8' 'QtcEmCEV' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'c75Ufeyp' --login_with_auth "Bearer foo"
platform-update-item 'WjDNhzCL' '5sWS2qwO' --body '{"appId": "763iEklk", "appType": "SOFTWARE", "baseAppId": "Lm88LpLu", "boothName": "YRO3C55y", "categoryPath": "HpwK2Jaq", "clazz": "enDGn7a2", "displayOrder": 78, "entitlementType": "CONSUMABLE", "ext": {"lWiLjq06": {}}, "features": ["n6a0rW8E"], "images": [{"as": "fkpaXtwY", "caption": "ZJaQ4Wbw", "height": 78, "imageUrl": "msFYetjE", "smallImageUrl": "urH8eloJ", "width": 51}], "itemIds": ["NKtRUaTz"], "itemQty": {"1ETdsmwz": 19}, "itemType": "CODE", "listable": false, "localizations": {"n9oiQl05": {"description": "g7cO3ZMb", "localExt": {"6Ojlo6DM": {}}, "longDescription": "NpP2qMrT", "title": "Q1UpjfU6"}}, "maxCount": 45, "maxCountPerUser": 70, "name": "hy1jOVkk", "optionBoxConfig": {"boxItems": [{"count": 92, "itemId": "lS79527E", "itemSku": "Z25Ia8uC"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 22, "fixedTrialCycles": 75, "graceDays": 39}, "regionData": {"EVpDAEbA": [{"currencyCode": "82jy74lq", "currencyNamespace": "0pDE5xRw", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1999-02-02T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1978-01-20T00:00:00Z", "discountedPrice": 77, "expireAt": "1993-01-13T00:00:00Z", "price": 88, "purchaseAt": "1980-11-15T00:00:00Z", "trialPrice": 30}]}, "seasonType": "TIER", "sku": "wIp9rRtn", "stackable": false, "status": "INACTIVE", "tags": ["xdbumeYg"], "targetCurrencyCode": "OdEBWRQi", "targetNamespace": "W3KFfU8i", "thumbnailUrl": "cH4081gR", "useCount": 55}' --login_with_auth "Bearer foo"
platform-delete-item '1GyLfLg4' --login_with_auth "Bearer foo"
platform-acquire-item 'RYuEbgUD' --body '{"count": 61, "orderNo": "cJyIvsPw"}' --login_with_auth "Bearer foo"
platform-get-app 'Or0BmV5i' --login_with_auth "Bearer foo"
platform-update-app 'FvfwFjTS' 'mIEqoLyL' --body '{"carousel": [{"alt": "eUGmomGX", "previewUrl": "9sXTZ0v8", "thumbnailUrl": "pqLfc5Sw", "type": "image", "url": "ReUULDX4", "videoSource": "youtube"}], "developer": "UIbb5nh6", "forumUrl": "8ZnyUtRv", "genres": ["Adventure"], "localizations": {"NBSFTtFr": {"announcement": "OmjkFrFV", "slogan": "A8t0xF34"}}, "platformRequirements": {"Xpt6ZlTT": [{"additionals": "ic0kr2a0", "directXVersion": "nI2oo7UH", "diskSpace": "CJK5sp0a", "graphics": "CvIq3aHV", "label": "YIlewLRu", "osVersion": "HY83bGj0", "processor": "HTeeWXlI", "ram": "cRidqctD", "soundCard": "pygY0ax4"}]}, "platforms": ["MacOS"], "players": ["MMO"], "primaryGenre": "Sports", "publisher": "MO9Tw2JH", "releaseDate": "1997-05-10T00:00:00Z", "websiteUrl": "hWIwHWTg"}' --login_with_auth "Bearer foo"
platform-disable-item 'zJFRYw6t' '1IKZLO6V' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '4Ode46Qm' --login_with_auth "Bearer foo"
platform-enable-item 'CidgdpP7' 'RTC587lm' --login_with_auth "Bearer foo"
platform-feature-item 'UmBziPZB' 'npOfkllx' 'fq0NsrSj' --login_with_auth "Bearer foo"
platform-defeature-item 'w5Hog0bl' 'M1d5MStY' 'GczLINlE' --login_with_auth "Bearer foo"
platform-get-locale-item 'C0OEsE3y' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'zIsUP0Nj' 'luOrGZTz' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 74, "comparison": "isNot", "name": "jfs9nIkc", "predicateType": "EntitlementPredicate", "value": "UEanjKHb", "values": ["Xfk1zxdz"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'xg0UXcRy' --body '{"orderNo": "Hi3u8BzV"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "Wu1tOmhU", "name": "tCgcpvGr", "status": "INACTIVE", "tags": ["bcZUDExH"]}' --login_with_auth "Bearer foo"
platform-get-key-group '1tayOGXI' --login_with_auth "Bearer foo"
platform-update-key-group 'HzMRjMCt' --body '{"description": "OJsEijlr", "name": "bpyyEcQx", "status": "ACTIVE", "tags": ["JIjMZqcW"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'fMl6dqrp' --login_with_auth "Bearer foo"
platform-list-keys 'D4tnc3ZR' --login_with_auth "Bearer foo"
platform-upload-keys 'B3IkdtPf' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'AJEomwen' --login_with_auth "Bearer foo"
platform-refund-order 'JvQ8grtQ' --body '{"description": "Sv6EcALc"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "s5bT51M4", "privateKey": "yko8S0En"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "GLvGvfuS", "currencyNamespace": "yCTyjj4m", "customParameters": {"CaiuMGKO": {}}, "description": "F5GJJooS", "extOrderNo": "XUl3YU35", "extUserId": "QHGpBABn", "itemType": "CODE", "language": "dZN-bGwt-RT", "metadata": {"n6t0Yx4z": "12EaQ1rU"}, "notifyUrl": "QYCNTiDX", "omitNotification": false, "platform": "E3M2IsTH", "price": 41, "recurringPaymentOrderNo": "8QwNyOlX", "region": "fIWd0mcq", "returnUrl": "5T4SUc7c", "sandbox": false, "sku": "CKK6Dij1", "subscriptionId": "gFcenEMy", "targetNamespace": "SPfhxBen", "targetUserId": "DiTiAqFY", "title": "mFKjaELm"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'mll6oexI' --login_with_auth "Bearer foo"
platform-get-payment-order 'd1OKGUN2' --login_with_auth "Bearer foo"
platform-charge-payment-order 'Uznd7uVa' --body '{"extTxId": "7t14yvSY", "paymentMethod": "SV52bHif", "paymentProvider": "XSOLLA"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'If4tsuu6' --body '{"description": "Pkam6tFS"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'YFt4ZxA2' --body '{"amount": 82, "currencyCode": "zZFRkBNl", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 26, "vat": 33}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'usKyZAuV' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["Other"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "V6UZMlEb", "eventTopic": "xHNgJRiQ", "maxAwarded": 60, "maxAwardedPerUser": 47, "namespaceExpression": "aunjdAqn", "rewardCode": "HUz44tx4", "rewardConditions": [{"condition": "O6hamPwN", "conditionName": "oi071ezD", "eventName": "K56JFIGe", "rewardItems": [{"duration": 69, "itemId": "MUCLcN0D", "quantity": 37}]}], "userIdExpression": "aD5FyBsF"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'False' --login_with_auth "Bearer foo"
platform-get-reward '9OYEJVsY' --login_with_auth "Bearer foo"
platform-update-reward 'ffmhyx6J' --body '{"description": "25PrM4S3", "eventTopic": "cB8m17hE", "maxAwarded": 9, "maxAwardedPerUser": 74, "namespaceExpression": "LgoaYth6", "rewardCode": "zcf8eA45", "rewardConditions": [{"condition": "OMvObWej", "conditionName": "o9LfGeeg", "eventName": "JMaBGR6D", "rewardItems": [{"duration": 29, "itemId": "ZEZQkJ8D", "quantity": 88}]}], "userIdExpression": "qFnhdKvj"}' --login_with_auth "Bearer foo"
platform-delete-reward 'FCFbSFlE' --login_with_auth "Bearer foo"
platform-check-event-condition 'WoMPdgK5' --body '{"payload": {"zn62mhnF": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'SpCTlDNB' --body '{"conditionName": "Ocygvv2L", "userId": "AgfBGVza"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "nbKYsB0g", "defaultRegion": "qJ8VhYSi", "description": "kJl2p9rB", "supportedLanguages": ["x8N5egap"], "supportedRegions": ["qxDy4cLf"], "title": "NjzzEZYA"}' --login_with_auth "Bearer foo"
platform-import-store --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '8jIkMJb7' --login_with_auth "Bearer foo"
platform-update-store 'cZ2bPsaL' --body '{"defaultLanguage": "LpEBVEMk", "defaultRegion": "5AsKaF2P", "description": "44lXkI3z", "supportedLanguages": ["diRiC5Ib"], "supportedRegions": ["Pit71JWl"], "title": "YCoi4nDf"}' --login_with_auth "Bearer foo"
platform-delete-store 'Pu5V6QSY' --login_with_auth "Bearer foo"
platform-query-changes 'xEVOryVu' --login_with_auth "Bearer foo"
platform-publish-all 'ZYmgUeEP' --login_with_auth "Bearer foo"
platform-publish-selected 'B5AGPgvk' --login_with_auth "Bearer foo"
platform-select-all-records '0Zthaj0E' --login_with_auth "Bearer foo"
platform-get-statistic 'BA4azRz0' --login_with_auth "Bearer foo"
platform-unselect-all-records 'd56smobo' --login_with_auth "Bearer foo"
platform-select-record 'r4p1PlgQ' 'B9EcNGOe' --login_with_auth "Bearer foo"
platform-unselect-record 'BRY6G5ae' '07deDLaZ' --login_with_auth "Bearer foo"
platform-clone-store '8JCvbeTf' --login_with_auth "Bearer foo"
platform-export-store 'W0hgzrab' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'LJxEwJrE' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'BmQ64haN' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'OzlGu68U' --body '{"orderNo": "YyupjdDe"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'tnoT0rfW' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'tVPwQfq6' --body '{"count": 95, "orderNo": "92gbfPou"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'NdmP7fck' --body '{"achievements": [{"id": "VnuDGvYI", "value": 3}], "steamUserId": "1p5tcR5z"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '8ZJLjSHc' 'aR3X4tZm' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'wr0QmOns' --body '{"achievements": [{"id": "Eg49eXp0", "percentComplete": 47}], "serviceConfigId": "QkZ2Jjuw", "titleId": "WWy0tU11", "xboxUserId": "PCeSrvej"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'UKwVfF37' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'Vr7mkDzF' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'BI1VwhkV' --login_with_auth "Bearer foo"
platform-anonymize-integration 'SKDlNFOU' --login_with_auth "Bearer foo"
platform-anonymize-order 'HBJsvTsq' --login_with_auth "Bearer foo"
platform-anonymize-payment 'k9hg4hj6' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'nUdebW6U' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'skbPkkZA' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'k01f1KxC' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'tWADU2gu' --body '[{"endDate": "1990-06-27T00:00:00Z", "grantedCode": "13W1K9TZ", "itemId": "Q4qRLEi5", "itemNamespace": "wowE36rf", "language": "mc-SywG-538", "quantity": 30, "region": "A6pzjHpZ", "source": "REFERRAL_BONUS", "startDate": "1975-10-31T00:00:00Z", "storeId": "gRPJK3nB"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'ae3GOgbQ' 'rqra0Ptk' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'fvOpY2ra' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'p5lnBn6x' 'mBkfMtC6' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '6hFq0kPO' 'kORm2Xjl' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'NEE5ecPz' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'Ami0ySJH' '["fPloP1Xk"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'YK4MgIsD' 'SFMPyMhy' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'w1OLZPVw' 'wxH4BIDJ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'uDoShMMf' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'tll8N0Vv' 'ChHz9urm' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 't7QWvE8s' '6Uz8BRuY' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'WDTtL6MT' 'TRkCbb9S' --login_with_auth "Bearer foo"
platform-update-user-entitlement '5Q1IVHGT' '88prREBg' --body '{"endDate": "1996-11-12T00:00:00Z", "nullFieldList": ["WdHJ9Jum"], "startDate": "1978-03-03T00:00:00Z", "status": "INACTIVE", "useCount": 92}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '13gf7TRi' 'gNZj5w5y' --body '{"options": ["3HmK8QVO"], "useCount": 1}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '62eQZtbL' 'LcF671WL' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'tv38Hecc' 'zopFmeRw' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'pcJBZyi3' 'mLC4Kzek' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'iSzeyoln' 'OQt0joVH' --login_with_auth "Bearer foo"
platform-fulfill-item 'gCytC6lR' --body '{"duration": 65, "endDate": "1996-07-03T00:00:00Z", "itemId": "nHbRdoTK", "itemSku": "KeuSjfZe", "language": "9i1osghF", "order": {"currency": {"currencyCode": "1hzi1Nl4", "currencySymbol": "7syJ5ibz", "currencyType": "REAL", "decimals": 56, "namespace": "LIvWPVRs"}, "ext": {"dEqA61yT": {}}, "free": true}, "orderNo": "MgsycTgm", "origin": "Xbox", "quantity": 51, "region": "c20EuO5d", "source": "REWARD", "startDate": "1979-09-17T00:00:00Z", "storeId": "DlSZPY07"}' --login_with_auth "Bearer foo"
platform-redeem-code 'rEVSjzHj' --body '{"code": "L6ZbXjG6", "language": "sMP", "region": "p8htaRLx"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'tW4PvFkE' --body '{"origin": "Twitch", "rewards": [{"currency": {"currencyCode": "at5F1Le7", "namespace": "cR7q6PWh"}, "item": {"itemId": "ZmmKz41i", "itemSku": "1Tp78Fip", "itemType": "JHahViJv"}, "quantity": 75, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'mlk2luqS' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'OOA2VOZB' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'oNbB98Pu' --body '{"itemIdentityType": "ITEM_SKU", "language": "Qf-bUlB", "productId": "OYDVuHZQ", "region": "9LYt6w23", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders '8iEQo72s' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'H0aRdcDl' --body '{"currencyCode": "DyGcsfIu", "currencyNamespace": "I4Dv5lEJ", "discountedPrice": 31, "ext": {"K1AyRlzs": {}}, "itemId": "rRXEFZiv", "language": "QOHG6wVi", "options": {"skipPriceValidation": false}, "platform": "Other", "price": 0, "quantity": 38, "region": "svvHLmIo", "returnUrl": "hfNISLXM", "sandbox": true}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'WDdm5FE4' 'lliQMnut' --login_with_auth "Bearer foo"
platform-get-user-order 'JbpEo4mU' 'NHFtdml2' --login_with_auth "Bearer foo"
platform-update-user-order-status 'xNviWacJ' 'c3Fm7Z54' --body '{"status": "FULFILLED", "statusReason": "uKgoCBqS"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order '5uIdCbwC' 'eeq9ouEd' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'DtjOgsyp' 'Lkm2ZYew' --login_with_auth "Bearer foo"
platform-get-user-order-histories '5H7Zm0gn' 'Yyj6MXf9' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'G1ntyebv' 'oeHenAAL' --body '{"additionalData": {"cardSummary": "Kt7EfxIH"}, "authorisedTime": "1999-04-21T00:00:00Z", "chargebackReversedTime": "1994-04-12T00:00:00Z", "chargebackTime": "1991-12-21T00:00:00Z", "chargedTime": "1999-06-05T00:00:00Z", "createdTime": "1977-06-28T00:00:00Z", "currency": {"currencyCode": "g0JKqVWW", "currencySymbol": "1rjK1epw", "currencyType": "REAL", "decimals": 53, "namespace": "vcsYvbgf"}, "customParameters": {"BVPpTa8Y": {}}, "extOrderNo": "uq7TKiNX", "extTxId": "mz7eMrMD", "extUserId": "5TbaUxTC", "issuedAt": "1993-04-11T00:00:00Z", "metadata": {"g0xjtdBr": "js3Kiykt"}, "namespace": "2Ck2gOlS", "nonceStr": "atECZ2Ug", "paymentMethod": "wQLqDqYS", "paymentMethodFee": 46, "paymentOrderNo": "TPuVlBqi", "paymentProvider": "STRIPE", "paymentProviderFee": 7, "paymentStationUrl": "p3yxnsET", "price": 22, "refundedTime": "1997-12-14T00:00:00Z", "salesTax": 42, "sandbox": false, "sku": "QudsjIhX", "status": "AUTHORISED", "statusReason": "xiSoWpnn", "subscriptionId": "xgX7BCPM", "subtotalPrice": 33, "targetNamespace": "zQIxibhp", "targetUserId": "NYsHtdB3", "tax": 69, "totalPrice": 20, "totalTax": 19, "txEndTime": "1981-01-05T00:00:00Z", "type": "ZqhJilrZ", "userId": "kSSKgP5r", "vat": 46}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'CR77G9d5' 'CA1GORSb' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'L9n0dbWD' --body '{"currencyCode": "EupmdLQz", "currencyNamespace": "PnNfBAcW", "customParameters": {"ArbkCfdH": {}}, "description": "IZb03otq", "extOrderNo": "mBuS9V2p", "extUserId": "CZ23UHmk", "itemType": "CODE", "language": "jj_uO", "metadata": {"VRUb39j2": "2P4Sp09c"}, "notifyUrl": "KmjRUbZV", "omitNotification": true, "platform": "VS7OK2Zr", "price": 6, "recurringPaymentOrderNo": "csckMekR", "region": "OWZ2KUTq", "returnUrl": "kK2eFaGL", "sandbox": false, "sku": "SmEEPbLy", "subscriptionId": "wJsyUie6", "title": "fZgLllUP"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'sO8lg46S' 'i7006vL2' --body '{"description": "w4aajDAO"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'x0iJjYle' --body '{"code": "aktqv2Wk", "orderNo": "ljQuD5mn"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'JONqHGq8' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'mB7mF2lM' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'FcaghFXJ' --body '{"grantDays": 68, "itemId": "JflRHFcs", "language": "IqCy4xDi", "reason": "fSSQ5On2", "region": "ccEcl3xe", "source": "iO4bwF5J"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'OjGoGxKM' '3qMce5tf' --login_with_auth "Bearer foo"
platform-get-user-subscription 'LcpjFZMK' 'Cbp0pEbL' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'CLFpHxMY' 'F836075x' --login_with_auth "Bearer foo"
platform-cancel-subscription 'EpzdnYtp' 'ja5ig2is' --body '{"immediate": false, "reason": "a6Vy76iz"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'PiQRjYa8' 'fv5fIt22' --body '{"grantDays": 39, "reason": "IZhjhgki"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'gW22zXMW' 'XfbcM0GI' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'ALIbFCQg' 'BcLNT6iO' --body '{"additionalData": {"cardSummary": "QVYx5rW2"}, "authorisedTime": "1974-11-02T00:00:00Z", "chargebackReversedTime": "1980-10-05T00:00:00Z", "chargebackTime": "1996-12-28T00:00:00Z", "chargedTime": "1996-07-31T00:00:00Z", "createdTime": "1975-06-04T00:00:00Z", "currency": {"currencyCode": "Sn3UDeKj", "currencySymbol": "97I4WYXL", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "N7ktOBTr"}, "customParameters": {"aBxWRTVu": {}}, "extOrderNo": "YEqGlKDw", "extTxId": "TKXBrXiQ", "extUserId": "cd9IW8ki", "issuedAt": "1985-10-17T00:00:00Z", "metadata": {"eQJWZBvc": "q1ETvWBx"}, "namespace": "YZJh7B8g", "nonceStr": "bnSu9M2O", "paymentMethod": "xD2udaeY", "paymentMethodFee": 30, "paymentOrderNo": "CXYSMiy8", "paymentProvider": "XSOLLA", "paymentProviderFee": 90, "paymentStationUrl": "qEQBg36m", "price": 48, "refundedTime": "1998-05-19T00:00:00Z", "salesTax": 4, "sandbox": false, "sku": "rDcain0c", "status": "REFUNDING", "statusReason": "VF1zHwDT", "subscriptionId": "I0sJ1Q0k", "subtotalPrice": 30, "targetNamespace": "hMTggSP2", "targetUserId": "SLcuAP7v", "tax": 92, "totalPrice": 56, "totalTax": 50, "txEndTime": "1982-04-14T00:00:00Z", "type": "bg8C7Mvy", "userId": "whu6MjOj", "vat": 41}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'Gzo1Fz4t' 'U0aSn98N' --body '{"count": 33, "orderNo": "OUA0z92R"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'aDe8ngT8' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'LRQkMnG1' 'LZyF2mdY' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'Y6ZMfuTY' 'TKsue48q' --body '{"amount": 54, "expireAt": "1986-08-08T00:00:00Z", "origin": "Twitch", "reason": "AV5BTe6e", "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '1zA92URC' 'LSGPmRBZ' --body '{"amount": 97, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-sync-orders 'nHW7MYvr' '6QA7Ppep' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["c92HA94e"], "apiKey": "ACdeyfUp", "authoriseAsCapture": false, "blockedPaymentMethods": ["iPpf8nxK"], "clientKey": "J3dnmtPw", "dropInSettings": "a64Y4gPE", "liveEndpointUrlPrefix": "KMhhu9a6", "merchantAccount": "f3xJNtUl", "notificationHmacKey": "KLlIIAeH", "notificationPassword": "bm5M6LsY", "notificationUsername": "1VMuIEcR", "returnUrl": "ls68M3MP", "settings": "MRPBepyy"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "Mz6zfR1p", "privateKey": "vTYYtDOi", "publicKey": "Ei4RuEcH", "returnUrl": "CSGhpOZQ"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "FlwOiuKG", "secretKey": "DFgK49Yu"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "KnXks0m8", "clientSecret": "ANrcRal7", "returnUrl": "ta3fojA3", "webHookId": "h4MMW3AJ"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["5zlsFBwj"], "publishableKey": "vLYvmg6a", "secretKey": "vudQFF1C", "webhookSecret": "PNY9u2dV"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "YdglOOoC", "key": "eK0kPKmB", "mchid": "qVux3lXc", "returnUrl": "D8aertAV"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "Cqs8XT8x", "flowCompletionUrl": "y3nJ06Kk", "merchantId": 36, "projectId": 9, "projectSecretKey": "A0ARj9ri"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'cfayvnhi' --login_with_auth "Bearer foo"
platform-update-adyen-config '8MDdY4WL' --body '{"allowedPaymentMethods": ["HoaUkYnQ"], "apiKey": "p5egdmVE", "authoriseAsCapture": false, "blockedPaymentMethods": ["ivNtQxqW"], "clientKey": "RKHohODo", "dropInSettings": "WOr98kjB", "liveEndpointUrlPrefix": "Uas9jjz2", "merchantAccount": "FrgiaGrc", "notificationHmacKey": "B7dIOVKI", "notificationPassword": "PSJJHo5W", "notificationUsername": "8tKH8ou9", "returnUrl": "SdbxSXcr", "settings": "EFCwqeGN"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'LdIBRdli' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'FQVMKEzV' --body '{"appId": "UWlUWDs2", "privateKey": "x1EQU0oe", "publicKey": "pEvcjaSg", "returnUrl": "Eh6jJnFx"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'inIHJ1o7' --login_with_auth "Bearer foo"
platform-update-checkout-config 'aq5Zznd5' --body '{"publicKey": "eacobTsu", "secretKey": "RlhreQVF"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'ID3o8hJW' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'VjKIOAw7' --body '{"clientID": "0DvAHhSG", "clientSecret": "WUvzq1Za", "returnUrl": "3IBC4vQF", "webHookId": "sUJPfiaJ"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'p1rt7OBg' --login_with_auth "Bearer foo"
platform-update-stripe-config 'BCe6N0eI' --body '{"allowedPaymentMethodTypes": ["65Mn5tng"], "publishableKey": "EYXgPVT5", "secretKey": "CqXDZBVM", "webhookSecret": "JyJeKFO9"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '2YDtaZvJ' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'oKS0Oxyi' --body '{"appId": "pZuO4N9S", "key": "2YCgHa6X", "mchid": "BcvGRYk5", "returnUrl": "rUtWHCnh"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'mzzppV7t' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'KNKYUQVB' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'XymWcNlH' --body '{"apiKey": "aFxYaGHU", "flowCompletionUrl": "pmBFyOrF", "merchantId": 72, "projectId": 38, "projectSecretKey": "xGNAi0fq"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id '4xChPLd2' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'lOopc7Xo' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "pyMrnH9Y", "region": "HXh7KnCV", "sandboxTaxJarApiToken": "OKY2zsBR", "specials": ["STRIPE"], "taxJarApiToken": "d8QY2OLb", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'rvfr8hkn' --body '{"aggregate": "ADYEN", "namespace": "WUWdMUXH", "region": "vw4pNlGL", "sandboxTaxJarApiToken": "jdBxLM07", "specials": ["PAYPAL"], "taxJarApiToken": "DAbTgmsE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '2GkYK1vY' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "m9flXQ7C", "taxJarApiToken": "QoemnQG0", "taxJarEnabled": false, "taxJarProductCodesMapping": {"H0NVM9VE": "HTPqDhkc"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'u5vnz6Gi' 'NMboBJHm' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'l0LJmpPi' --login_with_auth "Bearer foo"
platform-public-get-child-categories '4mqhruiC' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'ZLGGP5UX' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'kHNTMapp' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '5SbonsUJ' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'KADr60Ek' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["dFrpLsGt"]}' --login_with_auth "Bearer foo"
platform-public-search-items '9yTXWUSC' 'QcMsHN7r' --login_with_auth "Bearer foo"
platform-public-get-app 'eI22ks7I' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '12tAZc8s' --login_with_auth "Bearer foo"
platform-public-get-item 'xxLx9XQe' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "qNWLm8cN", "paymentProvider": "ADYEN", "returnUrl": "YH5J4WiJ", "ui": "Lv9NvHwt", "zipCode": "w2Mjcy9Z"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'L6Zs5Bu2' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'XYopLWZe' --login_with_auth "Bearer foo"
platform-pay 'UKJJNftR' --body '{"token": "pGgk1ise"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'REzzRG6z' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'muHddyOd' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'ibI1LVyq' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'bdY8DGZK' 'AuoIKz3P' 'PAYPAL' '3zLWUxMz' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'MtSmMmZP' 'PAYPAL' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'G0FoQP8q' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '7aSsb85g' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'Ah9RD3Zz' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'N6N1iJ8l' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'tt9IRqCf' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'lgln6r5f' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '0s5H6lCf' --body '{"epicGamesJwtToken": "3QHa11hL"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'LCgw5av4' --body '{"serviceLabel": 74}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'ExdabD8g' --body '{"appId": "2cvHfMRu", "steamId": "pDA5xbjs"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '3XRdHUJ0' --body '{"xstsToken": "GCmflIXk"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'gJ6zkTwo' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'akq7sEej' 'FZ1NtONX' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'b9w9hsQH' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'zIsfrlzK' 'pQdd58dZ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'P5RvrinN' 'tvBtqFSk' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'A68mIVYJ' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '5pSVxBsL' 'hty3pecT' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'oXA4M1oU' 'FPhgo7Z6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'mwNC4FY6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '9mM87joJ' 'NOGB83Ns' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '6Hl5Poab' '6lKoVqNB' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'UzIxOfgl' 'quS2q2Do' --body '{"options": ["Wr9zvFtK"], "useCount": 1}' --login_with_auth "Bearer foo"
platform-public-redeem-code '2mOAqOok' --body '{"code": "V1plxQ2Y", "language": "Itp", "region": "pD67jI2h"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'iZkrtLnh' --body '{"excludeOldTransactions": false, "language": "XKFn-tmZB", "productId": "zkXOek83", "receiptData": "Igm1wkSW", "region": "sYvAsu18", "transactionId": "obUdc8mb"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'vXcwcgMq' --body '{"epicGamesJwtToken": "OXMziXrV"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'dsEc3ClF' --body '{"autoAck": false, "language": "WUSc_lCUQ", "orderId": "ekRavpaG", "packageName": "TA9BTyCC", "productId": "yN4Fw9i6", "purchaseTime": 24, "purchaseToken": "I2W3tjjC", "region": "qPVyYs01"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'hEYzWw3q' --body '{"currencyCode": "rcxM0DPA", "price": 0.7790865575462415, "productId": "BNMP7j3x", "serviceLabel": 11}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'PaoZaWFs' --body '{"appId": "pkU5kn6P", "language": "pQ-FASb", "region": "clBhZjZb", "stadiaPlayerId": "LnmghKwP"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'yVIn3qaH' --body '{"appId": "P7KNulyf", "currencyCode": "rENVQkpc", "language": "wh_CC", "price": 0.9557083105165052, "productId": "fJI02TZx", "region": "rgLBFJEk", "steamId": "phFz0h6W"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'poVpVc2H' --body '{"gameId": "BBmj6cEi", "language": "xL_rFYg", "region": "Kn5ItHXL"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'DZqpRhqn' --body '{"currencyCode": "R742GcbL", "price": 0.31309738509713403, "productId": "OGMOEzmd", "xstsToken": "jNhT0S46"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'kqyfMBSa' --login_with_auth "Bearer foo"
platform-public-create-user-order 'Zc4SA16M' --body '{"currencyCode": "8gQCD7aB", "discountedPrice": 67, "ext": {"WCYevNkf": {}}, "itemId": "cQvl4Oso", "language": "XZx_JORl-uO", "price": 29, "quantity": 27, "region": "HBI13SZF", "returnUrl": "Hfm0F8vS"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '2BrZ3nq8' '8YSSD7zV' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '0C8FvVU3' 'kRXBGPXI' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'dft1biZH' 'uhWyFPHd' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'XcyvZEhY' 'eUSy5Ukc' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '65naP11R' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '8Xww9vq9' 'card' 'Ma2Btgwy' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'uf2fjV30' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'SLxi7uyh' --body '{"currencyCode": "aeFtcO9X", "itemId": "Ny63QO9v", "language": "Kt-lEeq_Th", "region": "Cr0GPFvT", "returnUrl": "0SAK91y5", "source": "vCeBIJq0"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'B9UcI6c5' 'cre9ealH' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'OZphcLnc' 'njnmyU8F' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'SxXdCrsk' 'oFqnowq9' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'Laz1GLt5' 'Mhf8Z7ah' --body '{"immediate": false, "reason": "bVPm2g7x"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'AFfRRLUj' 'fWS9sftI' --login_with_auth "Bearer foo"
platform-public-get-wallet 'fHGe5bUT' 'SXOv12PM' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'cRO6E2Mk' 're5q7Fva' --login_with_auth "Bearer foo"
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
echo "1..347"

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
    --body '{"context": {"item": {"appId": "ACp6he0f", "appType": "SOFTWARE", "baseAppId": "jkPNNS0B", "boothName": "fgF6inIR", "boundItemIds": ["sZ5hrqNz"], "categoryPath": "VszGVP5P", "clazz": "1iwhcf30", "createdAt": "1985-10-20T00:00:00Z", "description": "HRZHMGy5", "displayOrder": 43, "entitlementType": "CONSUMABLE", "ext": {"fZvYIFFc": {}}, "features": ["tEKOLxSR"], "fresh": true, "images": [{"as": "e0wmWBMc", "caption": "NiWoobB6", "height": 28, "imageUrl": "6alTQcP0", "smallImageUrl": "EpE9wGNV", "width": 44}], "itemId": "kgfJJ2HI", "itemIds": ["alfzgRpT"], "itemQty": {"f9lxF1JP": 55}, "itemType": "CODE", "language": "zXZtrGe8", "listable": true, "localExt": {"OH24nneZ": {}}, "longDescription": "HFeRld0b", "maxCount": 65, "maxCountPerUser": 52, "name": "7JxWYzaE", "namespace": "aimvokcW", "optionBoxConfig": {"boxItems": [{"count": 98, "itemId": "59kwiYHg", "itemSku": "HT6Ivd0f"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "excludes", "name": "lumQTFvr", "predicateType": "SeasonPassPredicate", "value": "RyYzaNmz", "values": ["3PjMx2T8"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 62, "fixedTrialCycles": 87, "graceDays": 93}, "region": "CXFkruxe", "regionData": [{"currencyCode": "gpkcXCfz", "currencyNamespace": "gcvv0WE5", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1974-01-17T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-11-27T00:00:00Z", "discountedPrice": 89, "expireAt": "1997-08-28T00:00:00Z", "price": 5, "purchaseAt": "1978-05-24T00:00:00Z", "trialPrice": 75}], "seasonType": "PASS", "sku": "r2zEnjyR", "stackable": false, "status": "INACTIVE", "tags": ["C3FMDcZv"], "targetCurrencyCode": "wwf8aU98", "targetItemId": "In31mF4j", "targetNamespace": "lwKyGxTF", "thumbnailUrl": "1l5q1Np0", "title": "sT1X8J2e", "updatedAt": "1984-11-16T00:00:00Z", "useCount": 51}, "namespace": "jmh9UzIf", "order": {"currency": {"currencyCode": "nhoo6xUm", "currencySymbol": "TleUnJFM", "currencyType": "REAL", "decimals": 29, "namespace": "DxGik2JS"}, "ext": {"fZ64wWeP": {}}, "free": true}, "source": "REWARD"}, "script": "KIS7F9em", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'AsiG31CE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'yUOuOZhm' \
    --body '{"grantDays": "nHkvek6A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'a5kNnocl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'xs9kxcvI' \
    --body '{"grantDays": "pV7mCYfW"}' \
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
    --body '{"description": "KjY9CsQY", "items": [{"extraSubscriptionDays": 36, "itemId": "GyhEOntE", "itemName": "kedM1A0b", "quantity": 62}], "maxRedeemCountPerCampaignPerUser": 32, "maxRedeemCountPerCode": 43, "maxRedeemCountPerCodePerUser": 18, "maxSaleCount": 46, "name": "bT3YuVda", "redeemEnd": "1984-11-06T00:00:00Z", "redeemStart": "1999-12-11T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["cjuDvNrX"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateCampaign' test.out

#- 10 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'fh5tZ0hq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetCampaign' test.out

#- 11 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'JLjQUmoY' \
    --body '{"description": "UnC849OB", "items": [{"extraSubscriptionDays": 79, "itemId": "uLZtofGA", "itemName": "AaMpBQAr", "quantity": 93}], "maxRedeemCountPerCampaignPerUser": 86, "maxRedeemCountPerCode": 88, "maxRedeemCountPerCodePerUser": 63, "maxSaleCount": 84, "name": "Ry5Qz5Vc", "redeemEnd": "1983-02-09T00:00:00Z", "redeemStart": "1984-04-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["vFwKSJyZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateCampaign' test.out

#- 12 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'eqvpevcV' \
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
    'XTxs9LTo' \
    --body '{"categoryPath": "rIyx23Lh", "localizationDisplayNames": {"Ly7ds3g3": "BuHTPF19"}}' \
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
    'dBYFws5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCategory' test.out

#- 17 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'a4eOwWqW' \
    '8HiLpTi1' \
    --body '{"localizationDisplayNames": {"W63HccgM": "5kYu36Jp"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCategory' test.out

#- 18 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'TL55W4ws' \
    '3KCyplY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteCategory' test.out

#- 19 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'ocKDCVaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetChildCategories' test.out

#- 20 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'rVeegT3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetDescendantCategories' test.out

#- 21 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'GDIIcvuu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'QueryCodes' test.out

#- 22 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'okt8TC38' \
    --body '{"quantity": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateCodes' test.out

#- 23 Download
$PYTHON -m $MODULE 'platform-download' \
    'YoUanQT4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'Download' test.out

#- 24 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'Mmznv7r2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'BulkDisableCodes' test.out

#- 25 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'jthibgeC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkEnableCodes' test.out

#- 26 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'LX41qyOi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QueryRedeemHistory' test.out

#- 27 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'Lgd8Wy73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetCode' test.out

#- 28 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    '9QHzw0TE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DisableCode' test.out

#- 29 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'zpd7TV5v' \
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
    --body '{"currencyCode": "hMM2i3DM", "currencySymbol": "6etfI7Tz", "currencyType": "VIRTUAL", "decimals": 37, "localizationDescriptions": {"KmtsyEKd": "O6HNm3zG"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateCurrency' test.out

#- 32 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'u71qTSSJ' \
    --body '{"localizationDescriptions": {"EbWlETp9": "XOCA1X3H"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateCurrency' test.out

#- 33 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'HMTlakAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteCurrency' test.out

#- 34 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'QfBuBAOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCurrencyConfig' test.out

#- 35 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'jBfYCcpl' \
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
    --body '{"data": [{"id": "ye2GaPNz", "rewards": [{"currency": {"currencyCode": "krgBH4ic", "namespace": "ml6L36Vg"}, "item": {"itemId": "2F2Q9aZD", "itemSku": "Jg1OT810", "itemType": "9ot70Tev"}, "quantity": 70, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"b2PyFfJ6": "qcHABdGt"}}]}' \
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
    'V9jAPqon' \
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
    --body '{"bundleId": "7UmLNy9P", "password": "kF9SnlbW"}' \
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
    --body '{"sandboxId": "NcAxv8uH"}' \
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
    --body '{"applicationName": "DqJtYC7r", "serviceAccountId": "znwNdLhq"}' \
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
    --body '{"data": [{"itemIdentity": "XvXVnjvc", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"MegJpW1Z": "euhpLX1B"}}]}' \
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
    --body '{"environment": "HZ4hnOmm"}' \
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
    --body '{"appId": "yXu6XtjN", "publisherAuthenticationKey": "CqYk9TPU"}' \
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
    --body '{"clientId": "KcDTfR7d", "clientSecret": "pUEo2Oe0", "organizationId": "8HpeJBfG"}' \
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
    --body '{"relyingPartyCert": "0nGZHe5l"}' \
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
    'w2TlkPIx' \
    --body '{"categoryPath": "L9v4fpCd", "targetItemId": "0Uk5h1kP", "targetNamespace": "1pkkT08C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'SyncInGameItem' test.out

#- 75 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    's6DdXZWo' \
    --body '{"appId": "wBgZizMv", "appType": "GAME", "baseAppId": "Hszf84MA", "boothName": "mayJJ6vz", "categoryPath": "DTXxsyIa", "clazz": "Tgp0pwnE", "displayOrder": 71, "entitlementType": "CONSUMABLE", "ext": {"xO4oVUPn": {}}, "features": ["g5JsHAkI"], "images": [{"as": "47jO1wuA", "caption": "FuZcUwPt", "height": 9, "imageUrl": "KdQgUTF3", "smallImageUrl": "3fYWZfQM", "width": 53}], "itemIds": ["nziThaE2"], "itemQty": {"btn0up9G": 9}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"DSQNYXNE": {"description": "pZyFhIeq", "localExt": {"iNHtVSnh": {}}, "longDescription": "xby8F6xF", "title": "8MhbJAYE"}}, "maxCount": 59, "maxCountPerUser": 78, "name": "1xszppR6", "optionBoxConfig": {"boxItems": [{"count": 27, "itemId": "sKAS5zKs", "itemSku": "TRXd7b3v"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 68, "fixedTrialCycles": 20, "graceDays": 35}, "regionData": {"06ojUtoV": [{"currencyCode": "JLGXekom", "currencyNamespace": "vwD849mo", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1976-08-21T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1996-08-26T00:00:00Z", "discountedPrice": 11, "expireAt": "1997-07-02T00:00:00Z", "price": 100, "purchaseAt": "1977-04-05T00:00:00Z", "trialPrice": 47}]}, "seasonType": "PASS", "sku": "FoXtwKW6", "stackable": true, "status": "ACTIVE", "tags": ["qnWCuXMW"], "targetCurrencyCode": "qG8fNprJ", "targetNamespace": "x82nAFex", "thumbnailUrl": "Nou1Aics", "useCount": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateItem' test.out

#- 76 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'jKx5Ljet' \
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
    'HEw0aCQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetItemBySku' test.out

#- 80 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'U6EGOW0V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetLocaleItemBySku' test.out

#- 81 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'AI87DPH0' \
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
    'fLLiUqza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkGetLocaleItems' test.out

#- 84 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetAvailablePredicateTypes' test.out

#- 85 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'y0gET8T5' \
    --body '{"itemIds": ["3yEej7Ds"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'ValidateItemPurchaseCondition' test.out

#- 86 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'qsTvNKAX' \
    'qfqMJHGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'SearchItems' test.out

#- 87 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'QueryUncategorizedItems' test.out

#- 88 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'HaN2k1Eu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetItem' test.out

#- 89 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'tm9AAWDc' \
    'Dv3ISBgZ' \
    --body '{"appId": "CAf2pWOW", "appType": "GAME", "baseAppId": "4I2lOHfi", "boothName": "u4HraKYM", "categoryPath": "tgBmvCHM", "clazz": "tF15a7T0", "displayOrder": 68, "entitlementType": "CONSUMABLE", "ext": {"eywiPE1W": {}}, "features": ["UR1PTFfJ"], "images": [{"as": "J46kzfqa", "caption": "pbByIKoY", "height": 51, "imageUrl": "YtTWJA3n", "smallImageUrl": "FCDgWOpz", "width": 49}], "itemIds": ["PQfqbeVG"], "itemQty": {"7i4VTAhu": 63}, "itemType": "BUNDLE", "listable": true, "localizations": {"gQBb9Hni": {"description": "6lDMj9gv", "localExt": {"kBcQjQ56": {}}, "longDescription": "RuAvUlMW", "title": "p8WGpZxC"}}, "maxCount": 8, "maxCountPerUser": 73, "name": "smXtGBbK", "optionBoxConfig": {"boxItems": [{"count": 35, "itemId": "V58TIThQ", "itemSku": "52PYNknB"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 16, "fixedTrialCycles": 34, "graceDays": 44}, "regionData": {"4hmfMSl2": [{"currencyCode": "bETuFLFO", "currencyNamespace": "fdl0yRnd", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1992-07-07T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1996-05-26T00:00:00Z", "discountedPrice": 67, "expireAt": "1982-08-08T00:00:00Z", "price": 69, "purchaseAt": "1974-09-14T00:00:00Z", "trialPrice": 40}]}, "seasonType": "PASS", "sku": "817lZA58", "stackable": false, "status": "ACTIVE", "tags": ["CJ833JKR"], "targetCurrencyCode": "NcdpuCxS", "targetNamespace": "DFWMVcsO", "thumbnailUrl": "ZlS0uler", "useCount": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateItem' test.out

#- 90 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '61drwLng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteItem' test.out

#- 91 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'bZxOGxFw' \
    --body '{"count": 27, "orderNo": "mB60ea7X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AcquireItem' test.out

#- 92 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'ItZS8KIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetApp' test.out

#- 93 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '9T604oPa' \
    'jgyShKuL' \
    --body '{"carousel": [{"alt": "B7pQLZiW", "previewUrl": "Vmc8PVwS", "thumbnailUrl": "hVQz7FY3", "type": "image", "url": "2oVVScVv", "videoSource": "youtube"}], "developer": "BM4teOpq", "forumUrl": "evsWvMhi", "genres": ["Adventure"], "localizations": {"eE2KM7Ct": {"announcement": "al5z7hLi", "slogan": "OYz1jFfu"}}, "platformRequirements": {"1y1d77D8": [{"additionals": "ZNOfHyen", "directXVersion": "hbRZ4a9U", "diskSpace": "jjjU0Egg", "graphics": "YLcGiEDZ", "label": "bDl9ZeZH", "osVersion": "3M87v0Fh", "processor": "dKDEfXRh", "ram": "aO0AYSqv", "soundCard": "cV2LqfgC"}]}, "platforms": ["Windows"], "players": ["Coop"], "primaryGenre": "Casual", "publisher": "yPQjgDJN", "releaseDate": "1991-08-29T00:00:00Z", "websiteUrl": "MtdEtN4s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'UpdateApp' test.out

#- 94 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'EebnQucg' \
    'aop5NEdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DisableItem' test.out

#- 95 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'urScNiUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetItemDynamicData' test.out

#- 96 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'nJUewUVh' \
    'kGRRTgLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'EnableItem' test.out

#- 97 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'b9evywZy' \
    'wunLImNh' \
    'yZsb7Yhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'FeatureItem' test.out

#- 98 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'QbDxLRKx' \
    'zUtpKDC8' \
    'gl2otjUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DefeatureItem' test.out

#- 99 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'KxgW6n8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetLocaleItem' test.out

#- 100 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'JaeqxTPg' \
    'ZKFi3SBG' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 57, "comparison": "isNot", "name": "4ig5ZRoJ", "predicateType": "EntitlementPredicate", "value": "1as1Wkfh", "values": ["3l8HyGWZ"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateItemPurchaseCondition' test.out

#- 101 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'TdpmTxPU' \
    --body '{"orderNo": "BFjTIIKc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'ReturnItem' test.out

#- 102 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'QueryKeyGroups' test.out

#- 103 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "XlxPfdDy", "name": "jJ0wwrYe", "status": "ACTIVE", "tags": ["jMyoeb3g"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'CreateKeyGroup' test.out

#- 104 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'sMOMdqbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetKeyGroup' test.out

#- 105 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    '4PnuFr18' \
    --body '{"description": "ijp3Cmzr", "name": "fVIa1vi9", "status": "ACTIVE", "tags": ["ky2P7fIg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'UpdateKeyGroup' test.out

#- 106 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'BRSBlxuk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetKeyGroupDynamic' test.out

#- 107 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'oOTCosjA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'ListKeys' test.out

#- 108 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'Xo6ljBVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UploadKeys' test.out

#- 109 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'QueryOrders' test.out

#- 110 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetOrderStatistics' test.out

#- 111 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    '8r7nyNcV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetOrder' test.out

#- 112 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'l6ZB3bGH' \
    --body '{"description": "upBuAL2a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'RefundOrder' test.out

#- 113 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetPaymentCallbackConfig' test.out

#- 114 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "XKOjwGRJ", "privateKey": "bZqXgQ9a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdatePaymentCallbackConfig' test.out

#- 115 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'QueryPaymentNotifications' test.out

#- 116 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'QueryPaymentOrders' test.out

#- 117 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "zOreTsvi", "currencyNamespace": "Zmgm0l8Y", "customParameters": {"r4wmgiwI": {}}, "description": "F5Zx5TII", "extOrderNo": "hBtL3zT6", "extUserId": "xRqyV0tl", "itemType": "APP", "language": "ylPV", "metadata": {"IFEdQ2RK": "eQy2WRzt"}, "notifyUrl": "R5qztuhV", "omitNotification": false, "platform": "JDWx2Odr", "price": 92, "recurringPaymentOrderNo": "V7bhcKGI", "region": "OZcB6NWf", "returnUrl": "fXkYzes2", "sandbox": true, "sku": "Hp1ufZNx", "subscriptionId": "hbsaSFtT", "targetNamespace": "mbIf2hFQ", "targetUserId": "Rmsi02me", "title": "lJQkLtV2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'CreatePaymentOrderByDedicated' test.out

#- 118 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'QnPsmhFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'ListExtOrderNoByExtTxId' test.out

#- 119 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'PtJTGig1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetPaymentOrder' test.out

#- 120 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '2OdDnxXu' \
    --body '{"extTxId": "JoZgOG4t", "paymentMethod": "OeWVMI9K", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'ChargePaymentOrder' test.out

#- 121 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'J6xC2h6U' \
    --body '{"description": "8TgR2k2R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'RefundPaymentOrderByDedicated' test.out

#- 122 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'kEr8XbmQ' \
    --body '{"amount": 78, "currencyCode": "uv80Em9n", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 11, "vat": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'SimulatePaymentOrderNotification' test.out

#- 123 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'GUWnVBQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetPaymentOrderChargeStatus' test.out

#- 124 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetPlatformWalletConfig' test.out

#- 125 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Playstation' \
    --body '{"allowedBalanceOrigins": ["Playstation"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'UpdatePlatformWalletConfig' test.out

#- 126 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'ResetPlatformWalletConfig' test.out

#- 127 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "yfFcSCdk", "eventTopic": "fe5eawFp", "maxAwarded": 7, "maxAwardedPerUser": 66, "namespaceExpression": "eH5p8Zx8", "rewardCode": "jy7nxGzO", "rewardConditions": [{"condition": "TBpmmjuE", "conditionName": "EEyDtwbt", "eventName": "A8xsmmca", "rewardItems": [{"duration": 80, "itemId": "LdFifUk9", "quantity": 30}]}], "userIdExpression": "700jB0p4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'CreateReward' test.out

#- 128 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'QueryRewards' test.out

#- 129 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ExportRewards' test.out

#- 130 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ImportRewards' test.out

#- 131 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'K8pvufSx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetReward' test.out

#- 132 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'YM0VkuqO' \
    --body '{"description": "KrhvMwvD", "eventTopic": "04UY8ghv", "maxAwarded": 37, "maxAwardedPerUser": 25, "namespaceExpression": "SrrJzAi6", "rewardCode": "FOuhQIBA", "rewardConditions": [{"condition": "bup1fpWs", "conditionName": "O6fW468f", "eventName": "WxqRkJDj", "rewardItems": [{"duration": 10, "itemId": "NhYDgVm0", "quantity": 90}]}], "userIdExpression": "Caos4wyj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'UpdateReward' test.out

#- 133 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'aPP6Clek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'DeleteReward' test.out

#- 134 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'QGm25KYm' \
    --body '{"payload": {"FZxQr4xb": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'CheckEventCondition' test.out

#- 135 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'V63gcdU4' \
    --body '{"conditionName": "vyIPJeRj", "userId": "Cj7UK5nE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'DeleteRewardConditionRecord' test.out

#- 136 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'ListStores' test.out

#- 137 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "mwsQtSfD", "defaultRegion": "qA4CysEX", "description": "4VOy0n2E", "supportedLanguages": ["kPBjC4ec"], "supportedRegions": ["HwtSGzay"], "title": "UaDh3m2e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'CreateStore' test.out

#- 138 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'ImportStore' test.out

#- 139 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetPublishedStore' test.out

#- 140 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'DeletePublishedStore' test.out

#- 141 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetPublishedStoreBackup' test.out

#- 142 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RollbackPublishedStore' test.out

#- 143 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'X31qVPH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetStore' test.out

#- 144 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'VHDznf57' \
    --body '{"defaultLanguage": "fQ1PY5uD", "defaultRegion": "kQ8zpNRw", "description": "ycEAShpF", "supportedLanguages": ["LpqAx1N5"], "supportedRegions": ["IGebNuvy"], "title": "rghVdsSw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateStore' test.out

#- 145 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'Dc9NJRX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteStore' test.out

#- 146 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'ZdaC8sja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'QueryChanges' test.out

#- 147 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    '1J7eucGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PublishAll' test.out

#- 148 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'SxZJPto0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PublishSelected' test.out

#- 149 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '4wTEI8is' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'SelectAllRecords' test.out

#- 150 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'XmyAGW2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'GetStatistic' test.out

#- 151 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'Z7bYvVW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UnselectAllRecords' test.out

#- 152 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '6Oaysx72' \
    'rwV3MdXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'SelectRecord' test.out

#- 153 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'VRDzT2sB' \
    'bflg7cD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UnselectRecord' test.out

#- 154 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '47c1XYYJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'CloneStore' test.out

#- 155 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'f18StYu6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'ExportStore' test.out

#- 156 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'QuerySubscriptions' test.out

#- 157 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'wb2We3Q6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'RecurringChargeSubscription' test.out

#- 158 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'Pm7RBkqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetTicketDynamic' test.out

#- 159 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'DPEP4CWn' \
    --body '{"orderNo": "ZJjXdiUv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'DecreaseTicketSale' test.out

#- 160 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '9owF1mQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'GetTicketBoothID' test.out

#- 161 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'c03W7oOd' \
    --body '{"count": 31, "orderNo": "Y5ZJChQt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'IncreaseTicketSale' test.out

#- 162 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'pD2U9IQz' \
    --body '{"achievements": [{"id": "A2eexjq3", "value": 91}], "steamUserId": "fnJ6ryQ4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnlockSteamUserAchievement' test.out

#- 163 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'wCg5Itn9' \
    'TYOR2n8q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'GetXblUserAchievements' test.out

#- 164 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'FjjSZx0F' \
    --body '{"achievements": [{"id": "eRdmgOta", "percentComplete": 31}], "serviceConfigId": "cKzSPfek", "titleId": "369fIM1t", "xboxUserId": "cxwt2XqP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UpdateXblUserAchievement' test.out

#- 165 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'FaIxBgzR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeCampaign' test.out

#- 166 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'O8GKycdc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeEntitlement' test.out

#- 167 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'XuULpvuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeFulfillment' test.out

#- 168 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'NRzUbH0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeIntegration' test.out

#- 169 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'I7yCEyjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AnonymizeOrder' test.out

#- 170 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'XQPnomAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AnonymizePayment' test.out

#- 171 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'HMpmDvt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeSubscription' test.out

#- 172 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'tkWavQ0j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AnonymizeWallet' test.out

#- 173 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'o17Qq6AF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'QueryUserEntitlements' test.out

#- 174 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'dE7URb19' \
    --body '[{"endDate": "1984-01-19T00:00:00Z", "grantedCode": "vWfPxHPQ", "itemId": "aUClyAjf", "itemNamespace": "GkGwDsoo", "language": "DzJn", "quantity": 39, "region": "l8XIGZV3", "source": "REWARD", "startDate": "1984-10-02T00:00:00Z", "storeId": "HxWGX4iw"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GrantUserEntitlement' test.out

#- 175 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'wHLohaKv' \
    'D9nNeLi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetUserAppEntitlementByAppId' test.out

#- 176 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'tRrclM3o' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'QueryUserEntitlementsByAppType' test.out

#- 177 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'mkWcIpWl' \
    'bLNxQciS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementByItemId' test.out

#- 178 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'm2ObiacE' \
    '1VtVP5yW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetUserEntitlementBySku' test.out

#- 179 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'KB3dhO4E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlement' test.out

#- 180 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '5cHbV6Tq' \
    '["3makniWG"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 181 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '9AtaznHr' \
    'mvF1mJZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 182 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'dLFxAkQr' \
    'sQXCUjnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemId' test.out

#- 183 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'NZpacdMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipByItemIds' test.out

#- 184 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'X6X3Zta5' \
    'msSId556' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserEntitlementOwnershipBySku' test.out

#- 185 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'xncCH37z' \
    'oQElCSNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'RevokeUserEntitlements' test.out

#- 186 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'KYpjKmII' \
    'b0iBSA7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlement' test.out

#- 187 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'dLvUFJ7q' \
    'N6ucqfJt' \
    --body '{"endDate": "1974-09-11T00:00:00Z", "nullFieldList": ["D6A3kchL"], "startDate": "1981-07-05T00:00:00Z", "status": "INACTIVE", "useCount": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'UpdateUserEntitlement' test.out

#- 188 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'LxDjXJ9B' \
    'FwEyGUCv' \
    --body '{"options": ["8O9EBlPm"], "useCount": 60}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ConsumeUserEntitlement' test.out

#- 189 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'Nb7inSCG' \
    'zNuHpABt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DisableUserEntitlement' test.out

#- 190 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    't9GgpAZj' \
    'cg8z9cH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'EnableUserEntitlement' test.out

#- 191 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'u6SmVFci' \
    'DGufTZk7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementHistories' test.out

#- 192 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'gk6nZZgU' \
    'CWs5b2fl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'RevokeUserEntitlement' test.out

#- 193 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'AnrsypCR' \
    --body '{"duration": 84, "endDate": "1973-11-25T00:00:00Z", "itemId": "hfO9Eame", "itemSku": "j28Jum6v", "language": "aoBRuMFZ", "order": {"currency": {"currencyCode": "bZvy6mJ2", "currencySymbol": "jHxdpqHu", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "bSpyFVnk"}, "ext": {"ERZ9gwlM": {}}, "free": false}, "orderNo": "F50v8sFH", "origin": "Steam", "quantity": 38, "region": "rW2mRr4X", "source": "DLC", "startDate": "1976-10-05T00:00:00Z", "storeId": "K6APTpbu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'FulfillItem' test.out

#- 194 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'kLGw4HJ5' \
    --body '{"code": "1V5Dd7JZ", "language": "cV_Yg", "region": "bfDbnZRa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'RedeemCode' test.out

#- 195 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'sK3D9LYj' \
    --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "7kb4sU5W", "namespace": "5wrnCC7O"}, "item": {"itemId": "GhuPV98X", "itemSku": "UYE5mm7b", "itemType": "HElXpNGE"}, "quantity": 92, "type": "ITEM"}], "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'FulfillRewards' test.out

#- 196 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Y9Nu31el' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'QueryUserIAPOrders' test.out

#- 197 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'zdmX7gz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryAllUserIAPOrders' test.out

#- 198 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'djDT8HpJ' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "YgdU-wpzS-496", "productId": "HR1S2ZUI", "region": "C8uvkyFC", "type": "TWITCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'MockFulfillIAPItem' test.out

#- 199 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'FVFMD8Rm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'QueryUserOrders' test.out

#- 200 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'FR37lij0' \
    --body '{"currencyCode": "5gCbgx9w", "currencyNamespace": "Kmx7cjHq", "discountedPrice": 51, "ext": {"VYnt0cmk": {}}, "itemId": "vnirigdj", "language": "wdDLkv0p", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 34, "quantity": 18, "region": "Q08MafjV", "returnUrl": "6ihDDPn2", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminCreateUserOrder' test.out

#- 201 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'E5C6wjRy' \
    'wXS6QpnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'CountOfPurchasedItem' test.out

#- 202 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'BEzx6dWq' \
    'AZXp1nDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserOrder' test.out

#- 203 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'pnpvCuDb' \
    'IzKZsyGX' \
    --body '{"status": "REFUNDED", "statusReason": "JkbGq2cf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UpdateUserOrderStatus' test.out

#- 204 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '2RYx5T5v' \
    'YIU38uD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillUserOrder' test.out

#- 205 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'CmguXsTI' \
    'zKibhFZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderGrant' test.out

#- 206 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'PU1Wj69C' \
    '0WjiFzSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserOrderHistories' test.out

#- 207 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'MY3Ws9FI' \
    'SxHT2n4v' \
    --body '{"additionalData": {"cardSummary": "zccwccBE"}, "authorisedTime": "1989-06-28T00:00:00Z", "chargebackReversedTime": "1987-06-23T00:00:00Z", "chargebackTime": "1998-10-29T00:00:00Z", "chargedTime": "1980-07-21T00:00:00Z", "createdTime": "1996-12-17T00:00:00Z", "currency": {"currencyCode": "Oadf8Dmj", "currencySymbol": "QPLvwUrZ", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "eujw5qBk"}, "customParameters": {"dlvUCTav": {}}, "extOrderNo": "aEgxUviP", "extTxId": "TrKQdlaA", "extUserId": "HqUiWYY2", "issuedAt": "1999-08-06T00:00:00Z", "metadata": {"ucG9pj0l": "vAm79Jif"}, "namespace": "AIygeL9j", "nonceStr": "OJQAmjxP", "paymentMethod": "LaTrFO9w", "paymentMethodFee": 19, "paymentOrderNo": "0k9J7zQl", "paymentProvider": "WALLET", "paymentProviderFee": 90, "paymentStationUrl": "M4wAbIaB", "price": 70, "refundedTime": "1986-12-03T00:00:00Z", "salesTax": 10, "sandbox": true, "sku": "9fBFxsEc", "status": "CHARGE_FAILED", "statusReason": "U3hInPH6", "subscriptionId": "WGHoWLtu", "subtotalPrice": 98, "targetNamespace": "x6HZKN3M", "targetUserId": "9BmHlEEb", "tax": 36, "totalPrice": 77, "totalTax": 81, "txEndTime": "1982-06-16T00:00:00Z", "type": "kKm55nGq", "userId": "L82Wnens", "vat": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'ProcessUserOrderNotification' test.out

#- 208 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '4XqDpcNJ' \
    'f1z35hDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'DownloadUserOrderReceipt' test.out

#- 209 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'AI2t0bri' \
    --body '{"currencyCode": "D5LIWthO", "currencyNamespace": "7lSGEhww", "customParameters": {"hO3BEqq6": {}}, "description": "4jTipojG", "extOrderNo": "JpQoqR37", "extUserId": "zyvGfBwI", "itemType": "MEDIA", "language": "BVxo-Ea", "metadata": {"S5oIXUfp": "QwWGai76"}, "notifyUrl": "ytXQXBCH", "omitNotification": false, "platform": "frm4ewy1", "price": 59, "recurringPaymentOrderNo": "qBG8JjZF", "region": "etBdgq9t", "returnUrl": "nIAcoMWK", "sandbox": false, "sku": "9kmxpXX8", "subscriptionId": "J38efuUG", "title": "ZB9jaeWR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'CreateUserPaymentOrder' test.out

#- 210 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'zlsDdiuR' \
    '6RZDT5q7' \
    --body '{"description": "YcCkB6eL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'RefundUserPaymentOrder' test.out

#- 211 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'uzsPaXoh' \
    --body '{"code": "AvroQYbo", "orderNo": "fyTgKruu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'ApplyUserRedemption' test.out

#- 212 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'tbCF9DcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'QueryUserSubscriptions' test.out

#- 213 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'V3SD004R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserSubscriptionActivities' test.out

#- 214 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'RxWaBiyC' \
    --body '{"grantDays": 72, "itemId": "BsxKfO0Q", "language": "MZpBpvQu", "reason": "O9P251BV", "region": "fUn3ZgcT", "source": "hlx4DM5M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'PlatformSubscribeSubscription' test.out

#- 215 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'J2Pc8bul' \
    'wqLyhFMe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 216 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'CxvRHmTK' \
    '6J8Prk4d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetUserSubscription' test.out

#- 217 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'hQH62tYA' \
    'MHu963tu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DeleteUserSubscription' test.out

#- 218 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'VtmjatnR' \
    '06xDNs2S' \
    --body '{"immediate": false, "reason": "I1hXVOD0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'CancelSubscription' test.out

#- 219 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'eAWHAN9P' \
    'fJYqbY1o' \
    --body '{"grantDays": 71, "reason": "TdNileWv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GrantDaysToSubscription' test.out

#- 220 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'sff1vwfz' \
    '6XV95AYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetUserSubscriptionBillingHistories' test.out

#- 221 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'eo0eecB0' \
    'xtL3jFZO' \
    --body '{"additionalData": {"cardSummary": "ELdLmYKs"}, "authorisedTime": "1991-09-14T00:00:00Z", "chargebackReversedTime": "1977-06-11T00:00:00Z", "chargebackTime": "1984-09-27T00:00:00Z", "chargedTime": "1982-10-08T00:00:00Z", "createdTime": "1977-03-14T00:00:00Z", "currency": {"currencyCode": "3UDvN6gG", "currencySymbol": "LoAUPH7S", "currencyType": "REAL", "decimals": 34, "namespace": "EfcuDTSj"}, "customParameters": {"7rQ9btDn": {}}, "extOrderNo": "wEzMsiel", "extTxId": "cjxQjMfc", "extUserId": "lMXOz5zB", "issuedAt": "1989-05-17T00:00:00Z", "metadata": {"t8bOHGp5": "P78hLDgF"}, "namespace": "eSh6EnKH", "nonceStr": "ynFXOH8g", "paymentMethod": "KVlK1fcI", "paymentMethodFee": 22, "paymentOrderNo": "MKOlq53u", "paymentProvider": "PAYPAL", "paymentProviderFee": 69, "paymentStationUrl": "4Hja15XY", "price": 42, "refundedTime": "1973-07-21T00:00:00Z", "salesTax": 4, "sandbox": true, "sku": "d5rD2Wuo", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "rr2NbYUJ", "subscriptionId": "GZiJejef", "subtotalPrice": 63, "targetNamespace": "KsLszYGF", "targetUserId": "lWNm21v9", "tax": 2, "totalPrice": 42, "totalTax": 15, "txEndTime": "1981-07-07T00:00:00Z", "type": "pnWueDoX", "userId": "qziW0pPT", "vat": 72}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'ProcessUserSubscriptionNotification' test.out

#- 222 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'lfM7OLcw' \
    'hNQ0ISPj' \
    --body '{"count": 77, "orderNo": "A5wYj4TN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AcquireUserTicket' test.out

#- 223 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'oMAawH8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'QueryUserCurrencyWallets' test.out

#- 224 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'DHVdTqEM' \
    'lF2AUpoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'ListUserCurrencyTransactions' test.out

#- 225 CheckWallet
eval_tap 0 225 'CheckWallet # SKIP deprecated' test.out

#- 226 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'DiAhJuGj' \
    'wVionKla' \
    --body '{"amount": 56, "expireAt": "1979-11-19T00:00:00Z", "origin": "IOS", "reason": "06kgIwCr", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'CreditUserWallet' test.out

#- 227 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'gelT8zVC' \
    '1YeUyHaX' \
    --body '{"amount": 32, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'PayWithUserWallet' test.out

#- 228 GetUserWallet
eval_tap 0 228 'GetUserWallet # SKIP deprecated' test.out

#- 229 DebitUserWallet
eval_tap 0 229 'DebitUserWallet # SKIP deprecated' test.out

#- 230 DisableUserWallet
eval_tap 0 230 'DisableUserWallet # SKIP deprecated' test.out

#- 231 EnableUserWallet
eval_tap 0 231 'EnableUserWallet # SKIP deprecated' test.out

#- 232 ListUserWalletTransactions
eval_tap 0 232 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 233 QueryWallets
eval_tap 0 233 'QueryWallets # SKIP deprecated' test.out

#- 234 GetWallet
eval_tap 0 234 'GetWallet # SKIP deprecated' test.out

#- 235 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'mhwd575J' \
    'hR80UC9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'SyncOrders' test.out

#- 236 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["FvtxvMfw"], "apiKey": "nQfvyXL0", "authoriseAsCapture": true, "blockedPaymentMethods": ["CE65MfNt"], "clientKey": "8OIy8S0Y", "dropInSettings": "mPqh1yYY", "liveEndpointUrlPrefix": "w5DgqWTz", "merchantAccount": "S93flMEy", "notificationHmacKey": "3MrRfCDt", "notificationPassword": "YmnBmWWs", "notificationUsername": "oEqxMV23", "returnUrl": "JYjtET8O", "settings": "ONm1ccFA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestAdyenConfig' test.out

#- 237 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Qh3NhEAG", "privateKey": "DA9kOIP1", "publicKey": "a4swJXie", "returnUrl": "A6PNyI4Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'TestAliPayConfig' test.out

#- 238 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "D8ZALgmN", "secretKey": "weJppm1W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'TestCheckoutConfig' test.out

#- 239 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'DebugMatchedPaymentMerchantConfig' test.out

#- 240 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "A5zpzKWy", "clientSecret": "KNzBoL7E", "returnUrl": "Q3TeNMSN", "webHookId": "Nex5dlwu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'TestPayPalConfig' test.out

#- 241 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["l2qhfwy7"], "publishableKey": "4gW8E4cH", "secretKey": "gyXCFX94", "webhookSecret": "MtRGGL68"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'TestStripeConfig' test.out

#- 242 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "tek2UNjs", "key": "gQKca6Ow", "mchid": "ZuwyOkSQ", "returnUrl": "htXEMam6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'TestWxPayConfig' test.out

#- 243 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "Ib7k8cIh", "flowCompletionUrl": "leApHrsu", "merchantId": 48, "projectId": 19, "projectSecretKey": "jbdrzATu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'TestXsollaConfig' test.out

#- 244 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'Leuen91R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetPaymentMerchantConfig' test.out

#- 245 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'QMkVpH8A' \
    --body '{"allowedPaymentMethods": ["caclJ9CL"], "apiKey": "naYpzlQ2", "authoriseAsCapture": true, "blockedPaymentMethods": ["3EnMj99g"], "clientKey": "Ey4Sy9nZ", "dropInSettings": "idlJ6t4A", "liveEndpointUrlPrefix": "mHiTuje6", "merchantAccount": "S87DePRQ", "notificationHmacKey": "Bjep2Is3", "notificationPassword": "ANmYmXhU", "notificationUsername": "rICHQ1Tr", "returnUrl": "mIdK8DmY", "settings": "PF6gpPJK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'UpdateAdyenConfig' test.out

#- 246 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '9qL0Emqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestAdyenConfigById' test.out

#- 247 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'zbFm0Y5O' \
    --body '{"appId": "sHaOOyB4", "privateKey": "Kp7hzU9H", "publicKey": "aTyWFQlL", "returnUrl": "w8K5eorx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'UpdateAliPayConfig' test.out

#- 248 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'H1KFuEYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestAliPayConfigById' test.out

#- 249 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'gH2i0Cbn' \
    --body '{"publicKey": "gOhbnr1d", "secretKey": "Awa0f9bD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateCheckoutConfig' test.out

#- 250 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'masQwUIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfigById' test.out

#- 251 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'nIPZ2s9W' \
    --body '{"clientID": "LUOBr8Zs", "clientSecret": "OMLNA3BJ", "returnUrl": "6xnFtsrd", "webHookId": "JPTHSCY5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'UpdatePayPalConfig' test.out

#- 252 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'CUxUobAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfigById' test.out

#- 253 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'EeZgYwX4' \
    --body '{"allowedPaymentMethodTypes": ["AxnhDDe3"], "publishableKey": "6HMeSdRZ", "secretKey": "dfbGUCVi", "webhookSecret": "BiK43SHB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'UpdateStripeConfig' test.out

#- 254 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'qN3FrZ27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestStripeConfigById' test.out

#- 255 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'sTWO1j8C' \
    --body '{"appId": "NGKXB1PH", "key": "d0dAJRMq", "mchid": "4Xl4dhRn", "returnUrl": "jEOdEWLJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfig' test.out

#- 256 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'wo4jNJYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'UpdateWxPayConfigCert' test.out

#- 257 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'gGYPryjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'TestWxPayConfigById' test.out

#- 258 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'sOPgnUW9' \
    --body '{"apiKey": "TYFxn34w", "flowCompletionUrl": "V03oJwyC", "merchantId": 98, "projectId": 7, "projectSecretKey": "XlDay1d5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'UpdateXsollaConfig' test.out

#- 259 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'wzQ8Mi5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'TestXsollaConfigById' test.out

#- 260 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '6YQR2j2N' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'UpdateXsollaUIConfig' test.out

#- 261 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'QueryPaymentProviderConfig' test.out

#- 262 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "kypjj3GN", "region": "Mz7FCius", "sandboxTaxJarApiToken": "iVRT3F9T", "specials": ["PAYPAL"], "taxJarApiToken": "WFoOAWpC", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'CreatePaymentProviderConfig' test.out

#- 263 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'GetAggregatePaymentProviders' test.out

#- 264 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'DebugMatchedPaymentProviderConfig' test.out

#- 265 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetSpecialPaymentProviders' test.out

#- 266 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    '8etpjdAx' \
    --body '{"aggregate": "XSOLLA", "namespace": "zZC3Lj7o", "region": "urPcaznS", "sandboxTaxJarApiToken": "H2Cxs5k0", "specials": ["WXPAY"], "taxJarApiToken": "iVIvGckJ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdatePaymentProviderConfig' test.out

#- 267 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'SmRQBGDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'DeletePaymentProviderConfig' test.out

#- 268 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetPaymentTaxConfig' test.out

#- 269 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "gfJbtT26", "taxJarApiToken": "RB4dllAO", "taxJarEnabled": true, "taxJarProductCodesMapping": {"Alx2pzgH": "47Jmh8F9"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdatePaymentTaxConfig' test.out

#- 270 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'rVlUOhh6' \
    'OgcWFoDk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'SyncPaymentOrders' test.out

#- 271 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetRootCategories' test.out

#- 272 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'DownloadCategories' test.out

#- 273 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'Ywud3hXX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCategory' test.out

#- 274 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'T8cAMMjF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetChildCategories' test.out

#- 275 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'UukAbWMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetDescendantCategories' test.out

#- 276 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicListCurrencies' test.out

#- 277 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'moskPfZl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicGetItemByAppId' test.out

#- 278 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicQueryItems' test.out

#- 279 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'nfHna8np' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetItemBySku' test.out

#- 280 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'NIaZA6bG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicBulkGetItems' test.out

#- 281 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["j3weTlX2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateItemPurchaseCondition' test.out

#- 282 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'frnV4SnI' \
    '56iSamKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchItems' test.out

#- 283 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'voBCNAFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetApp' test.out

#- 284 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'c2UDrxci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItemDynamicData' test.out

#- 285 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'FB3t7Su8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItem' test.out

#- 286 GetPaymentCustomization
eval_tap 0 286 'GetPaymentCustomization # SKIP deprecated' test.out

#- 287 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "87Ey5S3E", "paymentProvider": "STRIPE", "returnUrl": "ksPusIsd", "ui": "tH5nDyVn", "zipCode": "0dADUFds"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentUrl' test.out

#- 288 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'q2oLRcIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPaymentMethods' test.out

#- 289 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'berqiArH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUnpaidPaymentOrder' test.out

#- 290 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'PblrPveO' \
    --body '{"token": "BBV9k49I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'Pay' test.out

#- 291 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'eIHNjkoj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicCheckPaymentOrderPaidStatus' test.out

#- 292 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    'Ady9CDCc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'GetPaymentPublicConfig' test.out

#- 293 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '6KWWGrLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetQRCode' test.out

#- 294 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'j7aNoAWv' \
    '2gXLP7el' \
    'PAYPAL' \
    'z4qzOrsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicNormalizePaymentReturnUrl' test.out

#- 295 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'ps4NnGGx' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetPaymentTaxValue' test.out

#- 296 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'LzGbmQPl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'GetRewardByCode' test.out

#- 297 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'QueryRewards1' test.out

#- 298 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'b8usTL87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'GetReward1' test.out

#- 299 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicListStores' test.out

#- 300 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicExistsAnyMyActiveEntitlement' test.out

#- 301 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'xMPcqN6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 302 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'f3uB7Rko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 303 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'HPclOsJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 304 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetEntitlementOwnershipToken' test.out

#- 305 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'D4RbVS0C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetMyWallet' test.out

#- 306 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'nsf4H98g' \
    --body '{"epicGamesJwtToken": "jXlNYVv6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'SyncEpicGameDLC' test.out

#- 307 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'BjfSEeqt' \
    --body '{"serviceLabel": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicSyncPsnDlcInventory' test.out

#- 308 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'eNJSNg3A' \
    --body '{"appId": "JJU1oQnL", "steamId": "DQsMpjdB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'SyncSteamDLC' test.out

#- 309 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'KWrShZRZ' \
    --body '{"xstsToken": "YP6m3rqG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'SyncXboxDLC' test.out

#- 310 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    '4IPMsbpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicQueryUserEntitlements' test.out

#- 311 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'DZ1nbgtD' \
    '5OViuZaI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserAppEntitlementByAppId' test.out

#- 312 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '7Jv2evnH' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicQueryUserEntitlementsByAppType' test.out

#- 313 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'cDM73Dkq' \
    'ohzhINjw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementByItemId' test.out

#- 314 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'DfIe7xos' \
    'lK0BMQF7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserEntitlementBySku' test.out

#- 315 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'VvTIqMBj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicExistsAnyUserActiveEntitlement' test.out

#- 316 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'CCBKnPi4' \
    'rFNHcvCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'N66VCNAT' \
    'hE5WzjPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 318 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'yLOQJxnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 319 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ExCczwhR' \
    'oWp6lkuH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 320 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'P8buZiH2' \
    'GRmQR4At' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserEntitlement' test.out

#- 321 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'ntPilLE8' \
    'i8KPrA5P' \
    --body '{"options": ["yjRz6eP9"], "useCount": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicConsumeUserEntitlement' test.out

#- 322 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'tqgopWhL' \
    --body '{"code": "j5tZDX9f", "language": "qa_FC", "region": "WdRdhZ5K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicRedeemCode' test.out

#- 323 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'j6MACiuf' \
    --body '{"excludeOldTransactions": false, "language": "QYYQ_OzST-cY", "productId": "6xDIxbzI", "receiptData": "RjsgW7qJ", "region": "KLGYvWQ0", "transactionId": "T9y9ULje"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicFulfillAppleIAPItem' test.out

#- 324 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '9SYEdqFT' \
    --body '{"epicGamesJwtToken": "DjabG5HA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'SyncEpicGamesInventory' test.out

#- 325 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'ufl1c4Sh' \
    --body '{"autoAck": true, "language": "Ck-EWNL", "orderId": "49JNf4B4", "packageName": "LTFAbVqp", "productId": "d5OiYOUC", "purchaseTime": 67, "purchaseToken": "EDiDw1OG", "region": "oQx3PQmY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicFulfillGoogleIAPItem' test.out

#- 326 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'e1qncZKQ' \
    --body '{"currencyCode": "gFGrSQzT", "price": 0.7109629952614805, "productId": "PWqs6TNp", "serviceLabel": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicReconcilePlayStationStore' test.out

#- 327 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    '09JnLu8m' \
    --body '{"appId": "Qz6huRB8", "language": "tdh_622", "region": "CIhkMiso", "stadiaPlayerId": "OPhEeg9R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'SyncStadiaEntitlement' test.out

#- 328 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '71nKBYT1' \
    --body '{"appId": "IjDPnThU", "currencyCode": "OAIPTVYr", "language": "CQw-VHAW_135", "price": 0.3640657019839858, "productId": "YhtVuokj", "region": "xPn7cwvL", "steamId": "E15HSXy5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'SyncSteamInventory' test.out

#- 329 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'CyY5Nfd2' \
    --body '{"gameId": "1S2ZtC4Y", "language": "cO", "region": "XhWin1Nh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'SyncTwitchDropsEntitlement' test.out

#- 330 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '6x6BmifM' \
    --body '{"currencyCode": "Kt10stX6", "price": 0.12468580343037816, "productId": "kmTM6E9J", "xstsToken": "8SdcHhH6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'SyncXboxInventory' test.out

#- 331 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'KJxjLE1q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicQueryUserOrders' test.out

#- 332 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '2WaIU35r' \
    --body '{"currencyCode": "91OzKJ72", "discountedPrice": 53, "ext": {"rVZ9sKYM": {}}, "itemId": "vNcSBzlO", "language": "Zwz-qE", "price": 73, "quantity": 88, "region": "h1pax9HY", "returnUrl": "KxpJKcaT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicCreateUserOrder' test.out

#- 333 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'A7WKun0r' \
    '5L18Eu2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserOrder' test.out

#- 334 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'ZttabV1r' \
    'W55tquIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicCancelUserOrder' test.out

#- 335 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '3h86PKV7' \
    't0XZH4j3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetUserOrderHistories' test.out

#- 336 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'CPiWTJBs' \
    'z9lOZT6f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicDownloadUserOrderReceipt' test.out

#- 337 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'coT420K5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetPaymentAccounts' test.out

#- 338 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'eOIsp2YS' \
    'paypal' \
    'LvRgemaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicDeletePaymentAccount' test.out

#- 339 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'YQzNu1QR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserSubscriptions' test.out

#- 340 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'fRdqsx3t' \
    --body '{"currencyCode": "CuZEy2QF", "itemId": "HaqVkSvz", "language": "FF-qyEZ-590", "region": "PVRKHS2N", "returnUrl": "ibIlEcVV", "source": "gRmbbGV9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicSubscribeSubscription' test.out

#- 341 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'g8IGQzVP' \
    'QjRBbpwO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 342 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'MItC4XPf' \
    'SOqQKWIT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserSubscription' test.out

#- 343 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'KcLjAZM5' \
    'z0I03Uz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicChangeSubscriptionBillingAccount' test.out

#- 344 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'o4UMy3n5' \
    'mQfrJnvz' \
    --body '{"immediate": true, "reason": "yX5g6KmV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicCancelSubscription' test.out

#- 345 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'vOMGdfwN' \
    'tsNU2MJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserSubscriptionBillingHistories' test.out

#- 346 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'YO6kojew' \
    '8LgE0hRy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetWallet' test.out

#- 347 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'w2fyo14f' \
    'SAucPigz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicListUserWalletTransactions' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
