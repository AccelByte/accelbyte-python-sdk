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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "FtBxyZcD", "appType": "SOFTWARE", "baseAppId": "pGlsQuJu", "boothName": "8vMf0IsJ", "boundItemIds": ["kTrd8IDc"], "categoryPath": "V2zXnTKj", "clazz": "XY1bPqam", "createdAt": "1975-08-05T00:00:00Z", "description": "xx9Cs18E", "displayOrder": 100, "entitlementType": "CONSUMABLE", "ext": {"kItqRzHU": {}}, "features": ["1oh570KQ"], "images": [{"as": "BVaewc72", "caption": "krSha68n", "height": 100, "imageUrl": "nozp1C2K", "smallImageUrl": "mIQTuBdN", "width": 61}], "itemId": "UsxFb8CJ", "itemIds": ["17M7DJZa"], "itemQty": {"MSxECbZb": 49}, "itemType": "BUNDLE", "language": "yoarORoe", "listable": false, "localExt": {"8Rh3kgs9": {}}, "longDescription": "qqJbnQso", "maxCount": 54, "maxCountPerUser": 12, "name": "iVpP8Cm3", "namespace": "yvASUoxd", "optionBoxConfig": {"boxItems": [{"count": 46, "itemId": "xFqmAGTJ", "itemSku": "8IEdagEt"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 73, "comparison": "isLessThan", "name": "9c19R6XD", "predicateType": "SeasonPassPredicate", "value": "WHkkP8np", "values": ["LEKMfjiX"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 31, "fixedTrialCycles": 21, "graceDays": 95}, "region": "Zk3IaQYE", "regionData": [{"currencyCode": "mqGodOEG", "currencyNamespace": "t9gPOj0c", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1976-06-17T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1971-05-31T00:00:00Z", "discountedPrice": 40, "expireAt": "1972-04-21T00:00:00Z", "price": 63, "purchaseAt": "1984-10-12T00:00:00Z", "trialPrice": 59}], "seasonType": "TIER", "sku": "ogg0Y39U", "stackable": false, "status": "ACTIVE", "tags": ["pv5bVAgt"], "targetCurrencyCode": "sDhUTDUs", "targetItemId": "cbQDjbTQ", "targetNamespace": "uPMz2PTR", "thumbnailUrl": "lkyU89ZP", "title": "Ow6zPFJ4", "updatedAt": "1998-01-16T00:00:00Z", "useCount": 45}, "namespace": "mzBBSMNc", "order": {"currency": {"currencyCode": "oAAOjKNj", "currencySymbol": "fcYHm093", "currencyType": "REAL", "decimals": 100, "namespace": "gBU1sqjy"}, "ext": {"K0XH45Pa": {}}, "free": true}, "source": "PURCHASE"}, "script": "tu23REZ8", "type": "grantDays"}' --login_with_auth "Bearer foo"
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
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "SpCTlDNB", "defaultRegion": "Ocygvv2L", "description": "AgfBGVza", "supportedLanguages": ["nbKYsB0g"], "supportedRegions": ["qJ8VhYSi"], "title": "kJl2p9rB"}' --login_with_auth "Bearer foo"
platform-import-store --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'x8N5egap' --login_with_auth "Bearer foo"
platform-update-store 'qxDy4cLf' --body '{"defaultLanguage": "NjzzEZYA", "defaultRegion": "8jIkMJb7", "description": "cZ2bPsaL", "supportedLanguages": ["LpEBVEMk"], "supportedRegions": ["5AsKaF2P"], "title": "44lXkI3z"}' --login_with_auth "Bearer foo"
platform-delete-store 'diRiC5Ib' --login_with_auth "Bearer foo"
platform-query-changes 'Pit71JWl' --login_with_auth "Bearer foo"
platform-publish-all 'YCoi4nDf' --login_with_auth "Bearer foo"
platform-publish-selected 'Pu5V6QSY' --login_with_auth "Bearer foo"
platform-select-all-records 'xEVOryVu' --login_with_auth "Bearer foo"
platform-get-statistic 'ZYmgUeEP' --login_with_auth "Bearer foo"
platform-unselect-all-records 'B5AGPgvk' --login_with_auth "Bearer foo"
platform-select-record '0Zthaj0E' 'BA4azRz0' --login_with_auth "Bearer foo"
platform-unselect-record 'd56smobo' 'r4p1PlgQ' --login_with_auth "Bearer foo"
platform-clone-store 'B9EcNGOe' --login_with_auth "Bearer foo"
platform-export-store 'BRY6G5ae' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '07deDLaZ' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '8JCvbeTf' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'W0hgzrab' --body '{"orderNo": "LJxEwJrE"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'BmQ64haN' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'OzlGu68U' --body '{"count": 100, "orderNo": "yupjdDet"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'noT0rfWt' --body '{"achievements": [{"id": "VPwQfq6V", "value": 13}], "steamUserId": "bfPouNdm"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'P7fckVnu' 'DGvYIb1p' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '5tcR5z8Z' --body '{"achievements": [{"id": "JLjSHcaR", "percentComplete": 99}], "serviceConfigId": "4tZmwr0Q", "titleId": "mOnsEg49", "xboxUserId": "eXp0xQkZ"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign '2JjuwWWy' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '0tU11PCe' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'SrvejUKw' --login_with_auth "Bearer foo"
platform-anonymize-integration 'VfF37Vr7' --login_with_auth "Bearer foo"
platform-anonymize-order 'mkDzFBI1' --login_with_auth "Bearer foo"
platform-anonymize-payment 'VwhkVSKD' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'lNFOUHBJ' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'svTsqk9h' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'g4hj6nUd' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'ebW6Uskb' --body '[{"endDate": "1991-03-24T00:00:00Z", "grantedCode": "kZAk01f1", "itemId": "KxCtWADU", "itemNamespace": "2guN6U9w", "language": "tzqQ_OWeR", "quantity": 24, "region": "M0CCs35T", "source": "OTHER", "startDate": "1980-02-24T00:00:00Z", "storeId": "wSx1DI5G"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'H9bv9ZTo' '2HpA6pzj' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'HpZO0E9i' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'RPJK3nBa' 'e3GOgbQr' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'qra0Ptkf' 'vOpY2ram' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'p5lnBn6x' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'mBkfMtC6' '["6hFq0kPO"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'kORm2Xjl' 'NEE5ecPz' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'Ami0ySJH' 'fPloP1Xk' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'YK4MgIsD' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'SFMPyMhy' 'w1OLZPVw' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'wxH4BIDJ' 'uDoShMMf' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'tll8N0Vv' 'ChHz9urm' --login_with_auth "Bearer foo"
platform-update-user-entitlement 't7QWvE8s' '6Uz8BRuY' --body '{"endDate": "1995-08-18T00:00:00Z", "nullFieldList": ["TtL6MTTR"], "startDate": "1976-08-12T00:00:00Z", "status": "ACTIVE", "useCount": 2}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '9S5Q1IVH' 'GT88prRE' --body '{"options": ["BgYOWdHJ"], "useCount": 70}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'umohtU13' 'gf7TRigN' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'Zj5w5y3H' 'mK8QVOa6' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '2eQZtbLL' 'cF671WLt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'v38Heccz' 'opFmeRwp' --login_with_auth "Bearer foo"
platform-fulfill-item 'cJBZyi3m' --body '{"duration": 74, "endDate": "1985-10-14T00:00:00Z", "itemId": "zekiSzey", "itemSku": "olnOQt0j", "language": "oVHgCytC", "order": {"currency": {"currencyCode": "6lRG98Yx", "currencySymbol": "nHbRdoTK", "currencyType": "REAL", "decimals": 40, "namespace": "SjfZe9i1"}, "ext": {"osghF1hz": {}}, "free": false}, "orderNo": "1Nl47syJ", "origin": "IOS", "quantity": 3, "region": "zSHZeCLI", "source": "PROMOTION", "startDate": "1995-11-25T00:00:00Z", "storeId": "VRsdEqA6"}' --login_with_auth "Bearer foo"
platform-redeem-code '1yTrMgsy' --body '{"code": "cTgmPzc2", "language": "UoD-szpy-hJ", "region": "L6ZbXjG6"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'DSmpp3op' --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "taRLxtW4", "namespace": "PvFkESTU"}, "item": {"itemId": "Lat5F1Le", "itemSku": "7cR7q6PW", "itemType": "hZmmKz41"}, "quantity": 17, "type": "CURRENCY"}], "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'ipJHahVi' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'JvLYW0kd' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'mlk2luqS' --body '{"itemIdentityType": "ITEM_SKU", "language": "ozbO-476", "productId": "PwSMXT53", "region": "bBuL38be", "type": "XBOX"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'VuHZQ9LY' --login_with_auth "Bearer foo"
platform-admin-create-user-order 't6w23Wf8' --body '{"currencyCode": "iEQo72sH", "currencyNamespace": "0aRdcDlD", "discountedPrice": 49, "ext": {"GcsfIuI4": {}}, "itemId": "Dv5lEJpK", "language": "1AyRlzsr", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 16, "quantity": 42, "region": "QOHG6wVi", "returnUrl": "cNratsvv", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'IohfNISL' 'XMDWDdm5' --login_with_auth "Bearer foo"
platform-get-user-order 'FE4lliQM' 'nutJbpEo' --login_with_auth "Bearer foo"
platform-update-user-order-status '4mUNHFtd' 'ml2xNviW' --body '{"status": "CHARGEBACK", "statusReason": "cJc3Fm7Z"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order '548uuKgo' 'CBqS5uId' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'CbwCeeq9' 'ouEdDtjO' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'gsypLkm2' 'ZYew5H7Z' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'm0gnYyj6' 'MXf9G1nt' --body '{"additionalData": {"cardSummary": "yebvoeHe"}, "authorisedTime": "1977-07-30T00:00:00Z", "chargebackReversedTime": "1984-10-27T00:00:00Z", "chargebackTime": "1989-05-31T00:00:00Z", "chargedTime": "1986-02-12T00:00:00Z", "createdTime": "1982-09-30T00:00:00Z", "currency": {"currencyCode": "H446oUnP", "currencySymbol": "2S74unXw", "currencyType": "REAL", "decimals": 70, "namespace": "KqVWW1rj"}, "customParameters": {"K1epwkAv": {}}, "extOrderNo": "csYvbgfB", "extTxId": "VPpTa8Yu", "extUserId": "q7TKiNXm", "issuedAt": "1983-02-02T00:00:00Z", "metadata": {"MrMD5Tba": "UxTCTng0"}, "namespace": "xjtdBrjs", "nonceStr": "3Kiykt2C", "paymentMethod": "k2gOlSat", "paymentMethodFee": 60, "paymentOrderNo": "CZ2UgwQL", "paymentProvider": "STRIPE", "paymentProviderFee": 59, "paymentStationUrl": "qYSxTPuV", "price": 23, "refundedTime": "1984-05-09T00:00:00Z", "salesTax": 16, "sandbox": true, "sku": "dp3yxnsE", "status": "REFUND_FAILED", "statusReason": "l1SvhQud", "subscriptionId": "sjIhXdxi", "subtotalPrice": 89, "targetNamespace": "oWpnnxgX", "targetUserId": "7BCPMqzQ", "tax": 68, "totalPrice": 46, "totalTax": 17, "txEndTime": "1971-03-05T00:00:00Z", "type": "pNYsHtdB", "userId": "3IkjuaZq", "vat": 14}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'JilrZkSS' 'KgP5rxCR' --login_with_auth "Bearer foo"
platform-create-user-payment-order '77G9d5CA' --body '{"currencyCode": "1GORSbL9", "currencyNamespace": "n0dbWDEu", "customParameters": {"pmdLQzPn": {}}, "description": "NfBAcWAr", "extOrderNo": "bkCfdHIZ", "extUserId": "b03otqmB", "itemType": "MEDIA", "language": "vPcz", "metadata": {"0lpJ4JLl": "01qi7L2o"}, "notifyUrl": "DUoVRUb3", "omitNotification": false, "platform": "22P4Sp09", "price": 5, "recurringPaymentOrderNo": "KmjRUbZV", "region": "BVS7OK2Z", "returnUrl": "rdcsckMe", "sandbox": false, "sku": "ROWZ2KUT", "subscriptionId": "qkK2eFaG", "title": "LoSmEEPb"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'LywJsyUi' 'e6fZgLll' --body '{"description": "UPsO8lg4"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption '6Si7006v' --body '{"code": "L2w4aajD", "orderNo": "AOx0iJjY"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'leaktqv2' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'WkljQuD5' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'mnJONqHG' --body '{"grantDays": 33, "itemId": "8mB7mF2l", "language": "MFcaghFX", "reason": "JIJflRHF", "region": "csIqCy4x", "source": "DifSSQ5O"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'n2ccEcl3' 'xeiO4bwF' --login_with_auth "Bearer foo"
platform-get-user-subscription '5JOjGoGx' 'KM3qMce5' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'tfLcpjFZ' 'MKCbp0pE' --login_with_auth "Bearer foo"
platform-cancel-subscription 'bLCLFpHx' 'MYF83607' --body '{"immediate": true, "reason": "EpzdnYtp"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'ja5ig2is' 'QZga6Vy7' --body '{"grantDays": 16, "reason": "zPiQRjYa"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '8fv5fIt2' '2tIZhjhg' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'kigW22zX' 'MWXfbcM0' --body '{"additionalData": {"cardSummary": "GIALIbFC"}, "authorisedTime": "1992-02-14T00:00:00Z", "chargebackReversedTime": "1984-01-17T00:00:00Z", "chargebackTime": "1989-11-06T00:00:00Z", "chargedTime": "1993-03-07T00:00:00Z", "createdTime": "1991-12-05T00:00:00Z", "currency": {"currencyCode": "VYx5rW2g", "currencySymbol": "MsI1aYBi", "currencyType": "VIRTUAL", "decimals": 89, "namespace": "n3UDeKj9"}, "customParameters": {"7I4WYXLq": {}}, "extOrderNo": "jN7ktOBT", "extTxId": "raBxWRTV", "extUserId": "uYEqGlKD", "issuedAt": "1982-10-15T00:00:00Z", "metadata": {"XBrXiQcd": "9IW8kiCK"}, "namespace": "eQJWZBvc", "nonceStr": "q1ETvWBx", "paymentMethod": "YZJh7B8g", "paymentMethodFee": 2, "paymentOrderNo": "nSu9M2Ox", "paymentProvider": "XSOLLA", "paymentProviderFee": 41, "paymentStationUrl": "daeYpCXY", "price": 88, "refundedTime": "1990-03-07T00:00:00Z", "salesTax": 48, "sandbox": true, "sku": "TqEQBg36", "status": "CHARGEBACK_REVERSED", "statusReason": "y3sY2clr", "subscriptionId": "Dcain0cO", "subtotalPrice": 95, "targetNamespace": "F1zHwDTI", "targetUserId": "0sJ1Q0kp", "tax": 15, "totalPrice": 76, "totalTax": 91, "txEndTime": "1974-02-19T00:00:00Z", "type": "SP2SLcuA", "userId": "P7vU971C", "vat": 50}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'w2nbg8C7' 'Mvywhu6M' --body '{"count": 18, "orderNo": "OjuGzo1F"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'z4tU0aSn' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '98N8qOUA' '0z92RaDe' --login_with_auth "Bearer foo"
platform-credit-user-wallet '8ngT8LRQ' 'kMnG1LZy' --body '{"amount": 63, "expireAt": "1998-04-03T00:00:00Z", "origin": "Epic", "reason": "YY6ZMfuT", "source": "REFUND"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'sue48qBE' 'BNAV5BTe' --body '{"amount": 9, "walletPlatform": "Epic"}' --login_with_auth "Bearer foo"
platform-sync-orders '1zA92URC' 'LSGPmRBZ' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["WunHW7MY"], "apiKey": "vr6QA7Pp", "authoriseAsCapture": false, "blockedPaymentMethods": ["pc92HA94"], "clientKey": "eACdeyfU", "dropInSettings": "pgiPpf8n", "liveEndpointUrlPrefix": "xKJ3dnmt", "merchantAccount": "Pwa64Y4g", "notificationHmacKey": "PEKMhhu9", "notificationPassword": "a6f3xJNt", "notificationUsername": "UlKLlIIA", "returnUrl": "eHbm5M6L", "settings": "sY1VMuIE"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "cRls68M3", "privateKey": "MPMRPBep", "publicKey": "yyMz6zfR", "returnUrl": "1pvTYYtD"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "OiEi4RuE", "secretKey": "cHCSGhpO"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "ZQFlwOiu", "clientSecret": "KGDFgK49", "returnUrl": "YuKnXks0", "webHookId": "m8ANrcRa"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["l7ta3foj"], "publishableKey": "A3h4MMW3", "secretKey": "AJ5zlsFB", "webhookSecret": "wjvLYvmg"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "6avudQFF", "key": "1CPNY9u2", "mchid": "dVYdglOO", "returnUrl": "oCeK0kPK"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "mBqVux3l", "flowCompletionUrl": "XcD8aert", "merchantId": 52, "projectId": 95, "projectSecretKey": "Cqs8XT8x"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'y3nJ06Kk' --login_with_auth "Bearer foo"
platform-update-adyen-config 'seA0ARj9' --body '{"allowedPaymentMethods": ["ricfayvn"], "apiKey": "hi8MDdY4", "authoriseAsCapture": false, "blockedPaymentMethods": ["aUkYnQp5"], "clientKey": "egdmVE8I", "dropInSettings": "mivNtQxq", "liveEndpointUrlPrefix": "WRKHohOD", "merchantAccount": "oWOr98kj", "notificationHmacKey": "BUas9jjz", "notificationPassword": "2FrgiaGr", "notificationUsername": "cB7dIOVK", "returnUrl": "IPSJJHo5", "settings": "W8tKH8ou"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '9SdbxSXc' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'rEFCwqeG' --body '{"appId": "NLdIBRdl", "privateKey": "iFQVMKEz", "publicKey": "VUWlUWDs", "returnUrl": "2x1EQU0o"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'epEvcjaS' --login_with_auth "Bearer foo"
platform-update-checkout-config 'gEh6jJnF' --body '{"publicKey": "xinIHJ1o", "secretKey": "7aq5Zznd"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id '5eacobTs' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'uRlhreQV' --body '{"clientID": "FID3o8hJ", "clientSecret": "WVjKIOAw", "returnUrl": "70DvAHhS", "webHookId": "GWUvzq1Z"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'a3IBC4vQ' --login_with_auth "Bearer foo"
platform-update-stripe-config 'FsUJPfia' --body '{"allowedPaymentMethodTypes": ["Jp1rt7OB"], "publishableKey": "gBCe6N0e", "secretKey": "I65Mn5tn", "webhookSecret": "gEYXgPVT"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '5CqXDZBV' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'MJyJeKFO' --body '{"appId": "92YDtaZv", "key": "JoKS0Oxy", "mchid": "ipZuO4N9", "returnUrl": "S2YCgHa6"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'XBcvGRYk' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id '5rUtWHCn' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'hmzzppV7' --body '{"apiKey": "tKNKYUQV", "flowCompletionUrl": "BXymWcNl", "merchantId": 66, "projectId": 1, "projectSecretKey": "FxYaGHUp"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'mBFyOrFK' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'txGNAi0f' --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "2lOopc7X", "region": "oVpdd6rC", "sandboxTaxJarApiToken": "pyMrnH9Y", "specials": ["ALIPAY"], "taxJarApiToken": "7KnCVOKY", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'BRGtd8QY' --body '{"aggregate": "ADYEN", "namespace": "ijrvfr8h", "region": "knjWUWdM", "sandboxTaxJarApiToken": "UXHvw4pN", "specials": ["CHECKOUT"], "taxJarApiToken": "GLjdBxLM", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'AbTgmsEY' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "Eq2GkYK1", "taxJarApiToken": "vYm9flXQ", "taxJarEnabled": true, "taxJarProductCodesMapping": {"QoemnQG0": "dH0NVM9V"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'EHTPqDhk' 'cu5vnz6G' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'iNMboBJH' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'ml0LJmpP' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'i4mqhrui' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'CZLGGP5U' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'XkHNTMap' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'p5SbonsU' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["JKADr60E"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'kdFrpLsG' 't9yTXWUS' --login_with_auth "Bearer foo"
platform-public-get-app 'CQcMsHN7' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'reI22ks7' --login_with_auth "Bearer foo"
platform-public-get-item 'I12tAZc8' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "sxxLx9XQ", "paymentProvider": "ALIPAY", "returnUrl": "qNWLm8cN", "ui": "JbYH5J4W", "zipCode": "iJLv9NvH"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'wtw2Mjcy' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '9ZL6Zs5B' --login_with_auth "Bearer foo"
platform-pay 'u2XYopLW' --body '{"token": "ZeUKJJNf"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'tRpGgk1i' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'eREzzRG6' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'z9wmuHdd' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'yOdibI1L' 'VyqbdY8D' 'WXPAY' 'uoIKz3Pp' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '3zLWUxMz' 'STRIPE' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'SmMmZP8n' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'G0FoQP8q' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '7aSsb85g' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Ah9RD3Zz' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'N6N1iJ8l' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'tt9IRqCf' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'lgln6r5f' --body '{"epicGamesJwtToken": "0s5H6lCf"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '3QHa11hL' --body '{"serviceLabel": 74}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'Cgw5av4L' --body '{"appId": "ExdabD8g", "steamId": "2cvHfMRu"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'pDA5xbjs' --body '{"xstsToken": "3XRdHUJ0"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'GCmflIXk' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'gJ6zkTwo' 'akq7sEej' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'FZ1NtONX' 'DEMO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id '9w9hsQHs' 'zIsfrlzK' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'pQdd58dZ' 'P5RvrinN' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'tvBtqFSk' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'A68mIVYJ' '5pSVxBsL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'hty3pecT' 'oXA4M1oU' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'FPhgo7Z6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'mwNC4FY6' '9mM87joJ' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'NOGB83Ns' '6Hl5Poab' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '6lKoVqNB' 'UzIxOfgl' --body '{"options": ["quS2q2Do"], "useCount": 97}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'r9zvFtKa' --body '{"code": "2mOAqOok", "language": "PLXq_IPdJ", "region": "iZkrtLnh"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '2U1RQlMx' --body '{"excludeOldTransactions": false, "language": "nm-tmZB", "productId": "zkXOek83", "receiptData": "Igm1wkSW", "region": "sYvAsu18", "transactionId": "obUdc8mb"}' --login_with_auth "Bearer foo"
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
echo "1..346"

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
    --body '{"context": {"item": {"appId": "ACp6he0f", "appType": "SOFTWARE", "baseAppId": "jkPNNS0B", "boothName": "fgF6inIR", "boundItemIds": ["sZ5hrqNz"], "categoryPath": "VszGVP5P", "clazz": "1iwhcf30", "createdAt": "1985-10-20T00:00:00Z", "description": "HRZHMGy5", "displayOrder": 43, "entitlementType": "CONSUMABLE", "ext": {"fZvYIFFc": {}}, "features": ["tEKOLxSR"], "images": [{"as": "xe0wmWBM", "caption": "cNiWoobB", "height": 28, "imageUrl": "6alTQcP0", "smallImageUrl": "EpE9wGNV", "width": 44}], "itemId": "kgfJJ2HI", "itemIds": ["alfzgRpT"], "itemQty": {"f9lxF1JP": 55}, "itemType": "CODE", "language": "zXZtrGe8", "listable": true, "localExt": {"OH24nneZ": {}}, "longDescription": "HFeRld0b", "maxCount": 65, "maxCountPerUser": 52, "name": "7JxWYzaE", "namespace": "aimvokcW", "optionBoxConfig": {"boxItems": [{"count": 98, "itemId": "59kwiYHg", "itemSku": "HT6Ivd0f"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 95, "comparison": "excludes", "name": "lumQTFvr", "predicateType": "SeasonPassPredicate", "value": "RyYzaNmz", "values": ["3PjMx2T8"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 62, "fixedTrialCycles": 87, "graceDays": 93}, "region": "CXFkruxe", "regionData": [{"currencyCode": "gpkcXCfz", "currencyNamespace": "gcvv0WE5", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1974-01-17T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-11-27T00:00:00Z", "discountedPrice": 89, "expireAt": "1997-08-28T00:00:00Z", "price": 5, "purchaseAt": "1978-05-24T00:00:00Z", "trialPrice": 75}], "seasonType": "PASS", "sku": "r2zEnjyR", "stackable": false, "status": "INACTIVE", "tags": ["C3FMDcZv"], "targetCurrencyCode": "wwf8aU98", "targetItemId": "In31mF4j", "targetNamespace": "lwKyGxTF", "thumbnailUrl": "1l5q1Np0", "title": "sT1X8J2e", "updatedAt": "1984-11-16T00:00:00Z", "useCount": 51}, "namespace": "jmh9UzIf", "order": {"currency": {"currencyCode": "nhoo6xUm", "currencySymbol": "TleUnJFM", "currencyType": "REAL", "decimals": 29, "namespace": "DxGik2JS"}, "ext": {"fZ64wWeP": {}}, "free": true}, "source": "REWARD"}, "script": "KIS7F9em", "type": "grantDays"}' \
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

#- 135 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ListStores' test.out

#- 136 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "V63gcdU4", "defaultRegion": "vyIPJeRj", "description": "Cj7UK5nE", "supportedLanguages": ["mwsQtSfD"], "supportedRegions": ["qA4CysEX"], "title": "4VOy0n2E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'CreateStore' test.out

#- 137 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ImportStore' test.out

#- 138 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetPublishedStore' test.out

#- 139 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'DeletePublishedStore' test.out

#- 140 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetPublishedStoreBackup' test.out

#- 141 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'RollbackPublishedStore' test.out

#- 142 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'kPBjC4ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetStore' test.out

#- 143 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'HwtSGzay' \
    --body '{"defaultLanguage": "UaDh3m2e", "defaultRegion": "X31qVPH2", "description": "VHDznf57", "supportedLanguages": ["fQ1PY5uD"], "supportedRegions": ["kQ8zpNRw"], "title": "ycEAShpF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateStore' test.out

#- 144 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'LpqAx1N5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteStore' test.out

#- 145 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'IGebNuvy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryChanges' test.out

#- 146 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'rghVdsSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'PublishAll' test.out

#- 147 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'Dc9NJRX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'PublishSelected' test.out

#- 148 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'ZdaC8sja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'SelectAllRecords' test.out

#- 149 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '1J7eucGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetStatistic' test.out

#- 150 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'SxZJPto0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UnselectAllRecords' test.out

#- 151 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '4wTEI8is' \
    'XmyAGW2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'SelectRecord' test.out

#- 152 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'Z7bYvVW2' \
    '6Oaysx72' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UnselectRecord' test.out

#- 153 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'rwV3MdXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'CloneStore' test.out

#- 154 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'VRDzT2sB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ExportStore' test.out

#- 155 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QuerySubscriptions' test.out

#- 156 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'bflg7cD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'RecurringChargeSubscription' test.out

#- 157 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '47c1XYYJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetTicketDynamic' test.out

#- 158 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'f18StYu6' \
    --body '{"orderNo": "wb2We3Q6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DecreaseTicketSale' test.out

#- 159 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'Pm7RBkqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetTicketBoothID' test.out

#- 160 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'DPEP4CWn' \
    --body '{"count": 71, "orderNo": "jXdiUv9o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'IncreaseTicketSale' test.out

#- 161 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'wF1mQrc0' \
    --body '{"achievements": [{"id": "3W7oOdpY", "value": 71}], "steamUserId": "ChQtpD2U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'UnlockSteamUserAchievement' test.out

#- 162 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '9IQzA2ee' \
    'xjq3TfnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetXblUserAchievements' test.out

#- 163 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '6ryQ4wCg' \
    --body '{"achievements": [{"id": "5Itn9TYO", "percentComplete": 87}], "serviceConfigId": "2n8qFjjS", "titleId": "Zx0FeRdm", "xboxUserId": "gOta6pcK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdateXblUserAchievement' test.out

#- 164 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'zSPfek36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AnonymizeCampaign' test.out

#- 165 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '9fIM1tcx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AnonymizeEntitlement' test.out

#- 166 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'wt2XqPFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AnonymizeFulfillment' test.out

#- 167 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'IxBgzRO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AnonymizeIntegration' test.out

#- 168 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'GKycdcXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AnonymizeOrder' test.out

#- 169 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'ULpvuBNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AnonymizePayment' test.out

#- 170 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'zUbH0hI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AnonymizeSubscription' test.out

#- 171 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'yCEyjKXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AnonymizeWallet' test.out

#- 172 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'PnomAsHM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QueryUserEntitlements' test.out

#- 173 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'pmDvt4tk' \
    --body '[{"endDate": "1994-12-30T00:00:00Z", "grantedCode": "vQ0jo17Q", "itemId": "q6AFdE7U", "itemNamespace": "Rb19BcvW", "language": "pX_218", "quantity": 20, "region": "GwDsoo09", "source": "ACHIEVEMENT", "startDate": "1996-03-11T00:00:00Z", "storeId": "Njjtl8XI"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GrantUserEntitlement' test.out

#- 174 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'GZV3GBXI' \
    'HxWGX4iw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'GetUserAppEntitlementByAppId' test.out

#- 175 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'wHLohaKv' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'QueryUserEntitlementsByAppType' test.out

#- 176 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '9nNeLi2t' \
    'RrclM3o5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetUserEntitlementByItemId' test.out

#- 177 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'FmkWcIpW' \
    'lbLNxQci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetUserEntitlementBySku' test.out

#- 178 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'Sm2Obiac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'ExistsAnyUserActiveEntitlement' test.out

#- 179 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'E1VtVP5y' \
    '["WKB3dhO4"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 180 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'E5cHbV6T' \
    'q3makniW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 181 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'G9AtaznH' \
    'rmvF1mJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserEntitlementOwnershipByItemId' test.out

#- 182 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '3dLFxAkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetUserEntitlementOwnershipByItemIds' test.out

#- 183 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'rsQXCUjn' \
    'XNZpacdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetUserEntitlementOwnershipBySku' test.out

#- 184 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'fX6X3Zta' \
    '5msSId55' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'RevokeUserEntitlements' test.out

#- 185 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '6xncCH37' \
    'zoQElCSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlement' test.out

#- 186 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'pKYpjKmI' \
    'Ib0iBSA7' \
    --body '{"endDate": "1981-01-26T00:00:00Z", "nullFieldList": ["LvUFJ7qN"], "startDate": "1981-01-20T00:00:00Z", "status": "INACTIVE", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'UpdateUserEntitlement' test.out

#- 187 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'Jth42FD6' \
    'A3kchLvx' \
    --body '{"options": ["RuULxDjX"], "useCount": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'ConsumeUserEntitlement' test.out

#- 188 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '9BFwEyGU' \
    'Cv8O9EBl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DisableUserEntitlement' test.out

#- 189 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'PmENb7in' \
    'SCGzNuHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'EnableUserEntitlement' test.out

#- 190 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'ABtt9Ggp' \
    'AZjcg8z9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementHistories' test.out

#- 191 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'cH6u6SmV' \
    'FciDGufT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'RevokeUserEntitlement' test.out

#- 192 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'Zk7gk6nZ' \
    --body '{"duration": 12, "endDate": "1994-08-09T00:00:00Z", "itemId": "Ws5b2flA", "itemSku": "nrsypCRQ", "language": "fPhfO9Ea", "order": {"currency": {"currencyCode": "mej28Jum", "currencySymbol": "6vaoBRuM", "currencyType": "VIRTUAL", "decimals": 2, "namespace": "Zvy6mJ2j"}, "ext": {"HxdpqHuB": {}}, "free": false}, "orderNo": "bSpyFVnk", "origin": "Steam", "quantity": 87, "region": "Z9gwlM0h", "source": "REDEEM_CODE", "startDate": "1999-06-14T00:00:00Z", "storeId": "8sFHE2tr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'FulfillItem' test.out

#- 193 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'W2mRr4XS' \
    --body '{"code": "8ek4IK6A", "language": "tPBU-cV", "region": "oCnb0By8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'RedeemCode' test.out

#- 194 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'GbfDbnZR' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "sK3D9LYj", "namespace": "8f7kb4sU"}, "item": {"itemId": "5W5wrnCC", "itemSku": "7OGhuPV9", "itemType": "8XUYE5mm"}, "quantity": 3, "type": "ITEM"}], "source": "GIFT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'FulfillRewards' test.out

#- 195 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'XpNGEUuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QueryUserIAPOrders' test.out

#- 196 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'Y9Nu31el' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'QueryAllUserIAPOrders' test.out

#- 197 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'zdmX7gz9' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "dt", "productId": "7LyGDuYX", "region": "VurnW5P0", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'MockFulfillIAPItem' test.out

#- 198 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    '13FtOvKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QueryUserOrders' test.out

#- 199 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '3NS8Iq1r' \
    --body '{"currencyCode": "RNyHR1S2", "currencyNamespace": "ZUIC8uvk", "discountedPrice": 49, "ext": {"FCMKBFVF": {}}, "itemId": "MD8RmFR3", "language": "7lij05gC", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 46, "quantity": 45, "region": "Kmx7cjHq", "returnUrl": "zVYnt0cm", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminCreateUserOrder' test.out

#- 200 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'vnirigdj' \
    'wdDLkv0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'CountOfPurchasedItem' test.out

#- 201 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'xwrYjQ08' \
    'MafjV6ih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserOrder' test.out

#- 202 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'DDPn2UOD' \
    'E5C6wjRy' \
    --body '{"status": "FULFILLED", "statusReason": "XS6QpnJB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UpdateUserOrderStatus' test.out

#- 203 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'Ezx6dWqA' \
    'ZXp1nDSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'FulfillUserOrder' test.out

#- 204 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'npvCuDbI' \
    'zKZsyGX6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserOrderGrant' test.out

#- 205 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'JJkbGq2c' \
    'f2RYx5T5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserOrderHistories' test.out

#- 206 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'vYIU38uD' \
    '0CmguXsT' \
    --body '{"additionalData": {"cardSummary": "IzKibhFZ"}, "authorisedTime": "1987-11-23T00:00:00Z", "chargebackReversedTime": "1994-03-11T00:00:00Z", "chargebackTime": "1985-03-13T00:00:00Z", "chargedTime": "1975-09-06T00:00:00Z", "createdTime": "1983-12-21T00:00:00Z", "currency": {"currencyCode": "iMY3Ws9F", "currencySymbol": "ISxHT2n4", "currencyType": "VIRTUAL", "decimals": 51, "namespace": "ccwccBEL"}, "customParameters": {"wGw2MtzY": {}}, "extOrderNo": "XVSOadf8", "extTxId": "DmjQPLvw", "extUserId": "UrZEieuj", "issuedAt": "1982-05-13T00:00:00Z", "metadata": {"BkdlvUCT": "avaEgxUv"}, "namespace": "iPTrKQdl", "nonceStr": "aAHqUiWY", "paymentMethod": "Y25XBucG", "paymentMethodFee": 31, "paymentOrderNo": "j0lvAm79", "paymentProvider": "CHECKOUT", "paymentProviderFee": 11, "paymentStationUrl": "AIygeL9j", "price": 81, "refundedTime": "1988-12-06T00:00:00Z", "salesTax": 52, "sandbox": false, "sku": "jxPLaTrF", "status": "REFUNDING", "statusReason": "9wj0k9J7", "subscriptionId": "zQlxTM4w", "subtotalPrice": 52, "targetNamespace": "bIaBJF8V", "targetUserId": "QfE9fBFx", "tax": 37, "totalPrice": 61, "totalTax": 5, "txEndTime": "1982-02-27T00:00:00Z", "type": "InPH6WGH", "userId": "oWLtuXx6", "vat": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'ProcessUserOrderNotification' test.out

#- 207 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ZKN3M9Bm' \
    'HlEEbsM2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'DownloadUserOrderReceipt' test.out

#- 208 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'OxvkKm55' \
    --body '{"currencyCode": "nGqL82Wn", "currencyNamespace": "ensZA4Xq", "customParameters": {"DpcNJf1z": {}}, "description": "35hDEAI2", "extOrderNo": "t0briD5L", "extUserId": "IWthO7lS", "itemType": "SUBSCRIPTION", "language": "HWW-223", "metadata": {"ojGJpQoq": "R37zyvGf"}, "notifyUrl": "BwIwUb2v", "omitNotification": false, "platform": "1Nyvf3E3", "price": 8, "recurringPaymentOrderNo": "AS5oIXUf", "region": "pQwWGai7", "returnUrl": "6ytXQXBC", "sandbox": false, "sku": "frm4ewy1", "subscriptionId": "DqBG8JjZ", "title": "FetBdgq9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'CreateUserPaymentOrder' test.out

#- 209 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'tnIAcoMW' \
    'KJZMKj9k' \
    --body '{"description": "mxpXX8J3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'RefundUserPaymentOrder' test.out

#- 210 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '8efuUGZB' \
    --body '{"code": "9jaeWRzl", "orderNo": "sDdiuR6R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ApplyUserRedemption' test.out

#- 211 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'ZDT5q7Yc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'QueryUserSubscriptions' test.out

#- 212 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'CkB6eLuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetUserSubscriptionActivities' test.out

#- 213 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'sPaXohAv' \
    --body '{"grantDays": 34, "itemId": "oQYbofyT", "language": "gKruutbC", "reason": "F9DcEV3S", "region": "D004RRxW", "source": "aBiyCKBs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'PlatformSubscribeSubscription' test.out

#- 214 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'xKfO0QMZ' \
    'pBpvQuO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 215 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'P251BVfU' \
    'n3ZgcThl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserSubscription' test.out

#- 216 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'x4DM5MJ2' \
    'Pc8bulwq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'DeleteUserSubscription' test.out

#- 217 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'LyhFMeCx' \
    'vRHmTK6J' \
    --body '{"immediate": true, "reason": "k4dhQH62"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'CancelSubscription' test.out

#- 218 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'tYAMHu96' \
    '3tuVtmja' \
    --body '{"grantDays": 38, "reason": "nR06xDNs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GrantDaysToSubscription' test.out

#- 219 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '2SWbI1hX' \
    'VOD0eAWH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserSubscriptionBillingHistories' test.out

#- 220 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'AN9PfJYq' \
    'bY1oJTdN' \
    --body '{"additionalData": {"cardSummary": "ileWvsff"}, "authorisedTime": "1997-06-14T00:00:00Z", "chargebackReversedTime": "1982-02-10T00:00:00Z", "chargebackTime": "1983-08-01T00:00:00Z", "chargedTime": "1996-01-16T00:00:00Z", "createdTime": "1973-04-27T00:00:00Z", "currency": {"currencyCode": "0eecB0xt", "currencySymbol": "L3jFZOEL", "currencyType": "REAL", "decimals": 75, "namespace": "mYKsPGmu"}, "customParameters": {"AIxJmj3U": {}}, "extOrderNo": "DvN6gGLo", "extTxId": "AUPH7Sjr", "extUserId": "EfcuDTSj", "issuedAt": "1979-12-09T00:00:00Z", "metadata": {"9btDnwEz": "Msielcjx"}, "namespace": "QjMfclMX", "nonceStr": "Oz5zBKrt", "paymentMethod": "8bOHGp5P", "paymentMethodFee": 15, "paymentOrderNo": "LDgFeSh6", "paymentProvider": "XSOLLA", "paymentProviderFee": 27, "paymentStationUrl": "KHynFXOH", "price": 13, "refundedTime": "1989-04-02T00:00:00Z", "salesTax": 72, "sandbox": false, "sku": "cIlMKOlq", "status": "CHARGE_FAILED", "statusReason": "pI4Hja15", "subscriptionId": "XYvf51zc", "subtotalPrice": 55, "targetNamespace": "d5rD2Wuo", "targetUserId": "6Hrr2NbY", "tax": 93, "totalPrice": 70, "totalTax": 65, "txEndTime": "1996-03-04T00:00:00Z", "type": "JejefFKs", "userId": "LszYGFlW", "vat": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'ProcessUserSubscriptionNotification' test.out

#- 221 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'm21v93bv' \
    'huxpnWue' \
    --body '{"count": 58, "orderNo": "oXqziW0p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AcquireUserTicket' test.out

#- 222 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'PTKlfM7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserCurrencyWallets' test.out

#- 223 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'LcwhNQ0I' \
    'SPjMA5wY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'ListUserCurrencyTransactions' test.out

#- 224 CheckWallet
eval_tap 0 224 'CheckWallet # SKIP deprecated' test.out

#- 225 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'j4TNoMAa' \
    'wH8QDHVd' \
    --body '{"amount": 90, "expireAt": "1979-08-29T00:00:00Z", "origin": "Twitch", "reason": "lF2AUpoh", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'CreditUserWallet' test.out

#- 226 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'iAhJuGjw' \
    'VionKlaC' \
    --body '{"amount": 35, "walletPlatform": "IOS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PayWithUserWallet' test.out

#- 227 GetUserWallet
eval_tap 0 227 'GetUserWallet # SKIP deprecated' test.out

#- 228 DebitUserWallet
eval_tap 0 228 'DebitUserWallet # SKIP deprecated' test.out

#- 229 DisableUserWallet
eval_tap 0 229 'DisableUserWallet # SKIP deprecated' test.out

#- 230 EnableUserWallet
eval_tap 0 230 'EnableUserWallet # SKIP deprecated' test.out

#- 231 ListUserWalletTransactions
eval_tap 0 231 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 232 QueryWallets
eval_tap 0 232 'QueryWallets # SKIP deprecated' test.out

#- 233 GetWallet
eval_tap 0 233 'GetWallet # SKIP deprecated' test.out

#- 234 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '06kgIwCr' \
    'EgelT8zV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'SyncOrders' test.out

#- 235 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["C1YeUyHa"], "apiKey": "XqQxmhwd", "authoriseAsCapture": false, "blockedPaymentMethods": ["R80UC9RF"], "clientKey": "vtxvMfwn", "dropInSettings": "QfvyXL00", "liveEndpointUrlPrefix": "wCE65MfN", "merchantAccount": "t8OIy8S0", "notificationHmacKey": "YmPqh1yY", "notificationPassword": "Yw5DgqWT", "notificationUsername": "zS93flME", "returnUrl": "y3MrRfCD", "settings": "tYmnBmWW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'TestAdyenConfig' test.out

#- 236 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "soEqxMV2", "privateKey": "3JYjtET8", "publicKey": "OONm1ccF", "returnUrl": "AQh3NhEA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'TestAliPayConfig' test.out

#- 237 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "GDA9kOIP", "secretKey": "1a4swJXi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'TestCheckoutConfig' test.out

#- 238 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'DebugMatchedPaymentMerchantConfig' test.out

#- 239 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "eA6PNyI4", "clientSecret": "ZD8ZALgm", "returnUrl": "NweJppm1", "webHookId": "WA5zpzKW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'TestPayPalConfig' test.out

#- 240 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["yKNzBoL7"], "publishableKey": "EQ3TeNMS", "secretKey": "NNex5dlw", "webhookSecret": "ul2qhfwy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'TestStripeConfig' test.out

#- 241 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "74gW8E4c", "key": "HgyXCFX9", "mchid": "4MtRGGL6", "returnUrl": "8tek2UNj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'TestWxPayConfig' test.out

#- 242 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "sgQKca6O", "flowCompletionUrl": "wZuwyOkS", "merchantId": 84, "projectId": 15, "projectSecretKey": "tXEMam6I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'TestXsollaConfig' test.out

#- 243 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'b7k8cIhl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetPaymentMerchantConfig' test.out

#- 244 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'eApHrsu9' \
    --body '{"allowedPaymentMethods": ["yZjjbdrz"], "apiKey": "ATuLeuen", "authoriseAsCapture": false, "blockedPaymentMethods": ["VpH8Acac"], "clientKey": "lJ9CLnaY", "dropInSettings": "pzlQ2x3E", "liveEndpointUrlPrefix": "nMj99gEy", "merchantAccount": "4Sy9nZid", "notificationHmacKey": "lJ6t4AmH", "notificationPassword": "iTuje6S8", "notificationUsername": "7DePRQBj", "returnUrl": "ep2Is3AN", "settings": "mYmXhUrI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateAdyenConfig' test.out

#- 245 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'CHQ1TrmI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'TestAdyenConfigById' test.out

#- 246 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'dK8DmYPF' \
    --body '{"appId": "6gpPJK9q", "privateKey": "L0Emqezb", "publicKey": "Fm0Y5OsH", "returnUrl": "aOOyB4Kp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'UpdateAliPayConfig' test.out

#- 247 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '7hzU9HaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestAliPayConfigById' test.out

#- 248 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'yWFQlLw8' \
    --body '{"publicKey": "K5eorxH1", "secretKey": "KFuEYygH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'UpdateCheckoutConfig' test.out

#- 249 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '2i0CbngO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestCheckoutConfigById' test.out

#- 250 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'hbnr1dAw' \
    --body '{"clientID": "a0f9bDma", "clientSecret": "sQwUImnI", "returnUrl": "PZ2s9WLU", "webHookId": "OBr8ZsOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'UpdatePayPalConfig' test.out

#- 251 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'LNA3BJ6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestPayPalConfigById' test.out

#- 252 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'nFtsrdJP' \
    --body '{"allowedPaymentMethodTypes": ["THSCY5CU"], "publishableKey": "xUobAtEe", "secretKey": "ZgYwX4Ax", "webhookSecret": "nhDDe36H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'UpdateStripeConfig' test.out

#- 253 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'MeSdRZdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfigById' test.out

#- 254 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'bGUCViBi' \
    --body '{"appId": "K43SHBqN", "key": "3FrZ27sT", "mchid": "WO1j8CNG", "returnUrl": "KXB1PHd0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateWxPayConfig' test.out

#- 255 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'dAJRMq4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateWxPayConfigCert' test.out

#- 256 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'l4dhRnjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'TestWxPayConfigById' test.out

#- 257 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'OdEWLJwo' \
    --body '{"apiKey": "4jNJYKgG", "flowCompletionUrl": "YPryjvsO", "merchantId": 83, "projectId": 12, "projectSecretKey": "nUW9TYFx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateXsollaConfig' test.out

#- 258 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'n34wV03o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestXsollaConfigById' test.out

#- 259 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'JwyCXdXl' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateXsollaUIConfig' test.out

#- 260 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'QueryPaymentProviderConfig' test.out

#- 261 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "zQ8Mi5e6", "region": "YQR2j2Nw", "sandboxTaxJarApiToken": "EyTQqkyp", "specials": ["CHECKOUT"], "taxJarApiToken": "j3GNMz7F", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CreatePaymentProviderConfig' test.out

#- 262 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetAggregatePaymentProviders' test.out

#- 263 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'DebugMatchedPaymentProviderConfig' test.out

#- 264 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'GetSpecialPaymentProviders' test.out

#- 265 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'usiVRT3F' \
    --body '{"aggregate": "ADYEN", "namespace": "WFoOAWpC", "region": "JKnXYo8e", "sandboxTaxJarApiToken": "tpjdAxIs", "specials": ["WXPAY"], "taxJarApiToken": "ZC3Lj7ou", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdatePaymentProviderConfig' test.out

#- 266 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'aznSH2Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'DeletePaymentProviderConfig' test.out

#- 267 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetPaymentTaxConfig' test.out

#- 268 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "s5k0AiVI", "taxJarApiToken": "vGckJ4Uy", "taxJarEnabled": true, "taxJarProductCodesMapping": {"SmRQBGDN": "gfJbtT26"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdatePaymentTaxConfig' test.out

#- 269 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'RB4dllAO' \
    'yAlx2pzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'SyncPaymentOrders' test.out

#- 270 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRootCategories' test.out

#- 271 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DownloadCategories' test.out

#- 272 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'H47Jmh8F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetCategory' test.out

#- 273 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '9rVlUOhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetChildCategories' test.out

#- 274 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    '6OgcWFoD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetDescendantCategories' test.out

#- 275 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicListCurrencies' test.out

#- 276 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'kYwud3hX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicGetItemByAppId' test.out

#- 277 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicQueryItems' test.out

#- 278 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'XT8cAMMj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetItemBySku' test.out

#- 279 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'FUukAbWM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicBulkGetItems' test.out

#- 280 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["lmoskPfZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicValidateItemPurchaseCondition' test.out

#- 281 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'lnfHna8n' \
    'pNIaZA6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicSearchItems' test.out

#- 282 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'Gj3weTlX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetApp' test.out

#- 283 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '2frnV4Sn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetItemDynamicData' test.out

#- 284 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'I56iSamK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetItem' test.out

#- 285 GetPaymentCustomization
eval_tap 0 285 'GetPaymentCustomization # SKIP deprecated' test.out

#- 286 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "fvoBCNAF", "paymentProvider": "CHECKOUT", "returnUrl": "c2UDrxci", "ui": "FB3t7Su8", "zipCode": "87Ey5S3E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetPaymentUrl' test.out

#- 287 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'sksPusIs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetPaymentMethods' test.out

#- 288 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'dtH5nDyV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetUnpaidPaymentOrder' test.out

#- 289 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'n0dADUFd' \
    --body '{"token": "sq2oLRcI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'Pay' test.out

#- 290 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'gberqiAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicCheckPaymentOrderPaidStatus' test.out

#- 291 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    'lrPveOBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GetPaymentPublicConfig' test.out

#- 292 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'V9k49IeI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetQRCode' test.out

#- 293 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'HNjkojdA' \
    'dy9CDCc6' \
    'STRIPE' \
    'LJj7aNoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicNormalizePaymentReturnUrl' test.out

#- 294 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Wv2gXLP7' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxValue' test.out

#- 295 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'lmz4qzOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'GetRewardByCode' test.out

#- 296 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'QueryRewards1' test.out

#- 297 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'sRps4NnG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'GetReward1' test.out

#- 298 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicListStores' test.out

#- 299 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicExistsAnyMyActiveEntitlement' test.out

#- 300 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'GxfLzGbm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 301 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'QPlb8usT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 302 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'L87xMPcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 303 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetEntitlementOwnershipToken' test.out

#- 304 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'N6Kf3uB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetMyWallet' test.out

#- 305 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'RkoHPclO' \
    --body '{"epicGamesJwtToken": "sJaD4RbV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'SyncEpicGameDLC' test.out

#- 306 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'S0Cnsf4H' \
    --body '{"serviceLabel": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicSyncPsnDlcInventory' test.out

#- 307 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'jXlNYVv6' \
    --body '{"appId": "BjfSEeqt", "steamId": "MeNJSNg3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'SyncSteamDLC' test.out

#- 308 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'AJJU1oQn' \
    --body '{"xstsToken": "LDQsMpjd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'SyncXboxDLC' test.out

#- 309 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'BKWrShZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicQueryUserEntitlements' test.out

#- 310 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'ZYP6m3rq' \
    'G4IPMsbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserAppEntitlementByAppId' test.out

#- 311 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'zDZ1nbgt' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicQueryUserEntitlementsByAppType' test.out

#- 312 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    '5OViuZaI' \
    '7Jv2evnH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserEntitlementByItemId' test.out

#- 313 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'bcDM73Dk' \
    'qohzhINj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserEntitlementBySku' test.out

#- 314 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'wDfIe7xo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicExistsAnyUserActiveEntitlement' test.out

#- 315 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'slK0BMQF' \
    '7VvTIqMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 316 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'jCCBKnPi' \
    '4rFNHcvC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 317 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'KN66VCNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 318 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ThE5WzjP' \
    'hyLOQJxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 319 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'bExCczwh' \
    'RoWp6lku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserEntitlement' test.out

#- 320 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'HP8buZiH' \
    '2GRmQR4A' \
    --body '{"options": ["tntPilLE"], "useCount": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicConsumeUserEntitlement' test.out

#- 321 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '8KPrA5Py' \
    --body '{"code": "jRz6eP98", "language": "TQGO", "region": "Lj5tZDX9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicRedeemCode' test.out

#- 322 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'fbQAYktQ' \
    --body '{"excludeOldTransactions": false, "language": "VF", "productId": "RdhZ5Kj6", "receiptData": "MACiufnG", "region": "qyyq7F9a", "transactionId": "CoZstPAU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicFulfillAppleIAPItem' test.out

#- 323 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Cl2eCy6x' \
    --body '{"epicGamesJwtToken": "DIxbzIRj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'SyncEpicGamesInventory' test.out

#- 324 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'sgW7qJKL' \
    --body '{"autoAck": true, "language": "tYul", "orderId": "9SYEdqFT", "packageName": "DjabG5HA", "productId": "ufl1c4Sh", "purchaseTime": 47, "purchaseToken": "cc4KF44G", "region": "sn5ewnln"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicFulfillGoogleIAPItem' test.out

#- 325 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '49JNf4B4' \
    --body '{"currencyCode": "LTFAbVqp", "price": 0.04831045050001437, "productId": "OiYOUCHE", "serviceLabel": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicReconcilePlayStationStore' test.out

#- 326 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'iDw1OGoQ' \
    --body '{"appId": "x3PQmYe1", "language": "NCz-493", "region": "k09JnLu8", "stadiaPlayerId": "mQz6huRB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'SyncStadiaEntitlement' test.out

#- 327 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '8ETD3HQi' \
    --body '{"appId": "rZLaWMQt", "currencyCode": "U4oyjkCI", "language": "Km_EG", "price": 0.9597131064658917, "productId": "71nKBYT1", "region": "IjDPnThU", "steamId": "OAIPTVYr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'SyncSteamInventory' test.out

#- 328 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'ucqWKPIZ' \
    --body '{"gameId": "t5yavhaw", "language": "XOXy_XXXy", "region": "tVuokjxP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'SyncTwitchDropsEntitlement' test.out

#- 329 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'n7cwvLE1' \
    --body '{"currencyCode": "5HSXy5Cy", "price": 0.7924043379834449, "productId": "Nfd21S2Z", "xstsToken": "tC4YkCoa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'SyncXboxInventory' test.out

#- 330 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'dXhWin1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicQueryUserOrders' test.out

#- 331 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'h6x6Bmif' \
    --body '{"currencyCode": "MKt10stX", "discountedPrice": 15, "ext": {"qkmTM6E9": {}}, "itemId": "J8SdcHhH", "language": "jXJl-iuRo-995", "price": 79, "quantity": 4, "region": "SBzlOZYs", "returnUrl": "zWZKRbDZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicCreateUserOrder' test.out

#- 332 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'Aia8QeKS' \
    'h1pax9HY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserOrder' test.out

#- 333 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'KxpJKcaT' \
    'A7WKun0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicCancelUserOrder' test.out

#- 334 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '5L18Eu2X' \
    'ZttabV1r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetUserOrderHistories' test.out

#- 335 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'W55tquIV' \
    '3h86PKV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicDownloadUserOrderReceipt' test.out

#- 336 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    't0XZH4j3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetPaymentAccounts' test.out

#- 337 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'CPiWTJBs' \
    'paypal' \
    '9lOZT6fc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicDeletePaymentAccount' test.out

#- 338 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'oT420K5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicQueryUserSubscriptions' test.out

#- 339 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'OIsp2YSD' \
    --body '{"currencyCode": "LvRgemaf", "itemId": "YQzNu1QR", "language": "rD-TcUz-425", "region": "z7effH0K", "returnUrl": "yszQ0Yez", "source": "IEB0YzHg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicSubscribeSubscription' test.out

#- 340 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'wKOWVbPV' \
    'RKHS2Nib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 341 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'IlEcVVgR' \
    'mbbGV9g8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserSubscription' test.out

#- 342 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'IGQzVPQj' \
    'RBbpwOMI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicChangeSubscriptionBillingAccount' test.out

#- 343 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'tC4XPfSO' \
    'qQKWITKc' \
    --body '{"immediate": false, "reason": "AZM5z0I0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicCancelSubscription' test.out

#- 344 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '3Uz8o4UM' \
    'y3n5mQfr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserSubscriptionBillingHistories' test.out

#- 345 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'JnvzCyX5' \
    'g6KmVvOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetWallet' test.out

#- 346 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'GdfwNtsN' \
    'U2MJZYO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicListUserWalletTransactions' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
