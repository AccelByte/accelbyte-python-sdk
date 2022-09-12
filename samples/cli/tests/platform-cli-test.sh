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
platform-download-invoice-details '1IbuTrrk' 'bmuT1whO' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'qmEnDXIW' 'rBPlSay4' --login_with_auth "Bearer foo"
platform-sync-in-game-item '6mv71BAZ' --body '{"categoryPath": "AOjtFJ2v", "targetItemId": "mTj7tT7T", "targetNamespace": "ZHWDdCkI"}' --login_with_auth "Bearer foo"
platform-create-item 'sZoArWwP' --body '{"appId": "HcyFAdAt", "appType": "DEMO", "baseAppId": "iLIgRwFR", "boothName": "r0gwB9tz", "categoryPath": "3vp99XVl", "clazz": "V8rK3tE6", "displayOrder": 26, "entitlementType": "DURABLE", "ext": {"mip1tw3L": {}}, "features": ["7cUd9pqt"], "images": [{"as": "v6JfPZwc", "caption": "CVOXcVa8", "height": 90, "imageUrl": "mCwtD2lA", "smallImageUrl": "H01o6Ndc", "width": 54}], "itemIds": ["IgzrDyWp"], "itemQty": {"FBYGmmBa": 44}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"oKyNpdAa": {"description": "sm8xwUfz", "localExt": {"OlQiZY4N": {}}, "longDescription": "bOQXJ7uO", "title": "TzNMvuq2"}}, "maxCount": 39, "maxCountPerUser": 79, "name": "l4CX4Iji", "optionBoxConfig": {"boxItems": [{"count": 72, "itemId": "4DEUJRVK", "itemSku": "3l9Eb0R1"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 88, "fixedTrialCycles": 37, "graceDays": 24}, "regionData": {"eOlngrdT": [{"currencyCode": "XCzaPBtk", "currencyNamespace": "ZMio4wcy", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1978-12-18T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1996-05-02T00:00:00Z", "discountedPrice": 84, "expireAt": "1980-01-22T00:00:00Z", "price": 61, "purchaseAt": "1977-08-13T00:00:00Z", "trialPrice": 60}]}, "seasonType": "PASS", "sku": "75UfeypW", "stackable": false, "status": "INACTIVE", "tags": ["NhzCL5sW"], "targetCurrencyCode": "S2qwO763", "targetNamespace": "iEklkzLm", "thumbnailUrl": "88LpLuYR", "useCount": 81}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '3C55yHpw' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'K2JaqenD' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'Gn7a2NUp' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'lWiLjq06' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'n6a0rW8E' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'fkpaXtwY' --body '{"itemIds": ["ZJaQ4Wbw"]}' --login_with_auth "Bearer foo"
platform-search-items 'NmsFYetj' 'EurH8elo' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'JzNKtRUa' --login_with_auth "Bearer foo"
platform-update-item 'Tz1ETdsm' 'wzjkkn9o' --body '{"appId": "iQl05g7c", "appType": "DEMO", "baseAppId": "6Ojlo6DM", "boothName": "NpP2qMrT", "categoryPath": "Q1UpjfU6", "clazz": "wJhy1jOV", "displayOrder": 21, "entitlementType": "CONSUMABLE", "ext": {"UlS79527": {}}, "features": ["EZ25Ia8u"], "images": [{"as": "CeZFlLtE", "caption": "VpDAEbA8", "height": 18, "imageUrl": "y74lq0pD", "smallImageUrl": "E5xRwh5b", "width": 9}], "itemIds": ["bpcM7ScS"], "itemQty": {"s3UOpAwI": 30}, "itemType": "EXTENSION", "listable": true, "localizations": {"n1PcCxdb": {"description": "umeYgOdE", "localExt": {"BWRQiW3K": {}}, "longDescription": "FfU8icH4", "title": "081gRB1G"}}, "maxCount": 48, "maxCountPerUser": 75, "name": "fLg4RYuE", "optionBoxConfig": {"boxItems": [{"count": 2, "itemId": "gUDEcJyI", "itemSku": "vsPwOr0B"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 63, "fixedTrialCycles": 42, "graceDays": 10}, "regionData": {"wFjTSmIE": [{"currencyCode": "qoLyLeUG", "currencyNamespace": "momGX9sX", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1979-10-23T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-12-25T00:00:00Z", "discountedPrice": 44, "expireAt": "1987-04-19T00:00:00Z", "price": 87, "purchaseAt": "1973-10-28T00:00:00Z", "trialPrice": 59}]}, "seasonType": "PASS", "sku": "b5nh68Zn", "stackable": true, "status": "INACTIVE", "tags": ["RvW9hNBS"], "targetCurrencyCode": "FTtFrOmj", "targetNamespace": "kFrFVA8t", "thumbnailUrl": "0xF34Xpt", "useCount": 23}' --login_with_auth "Bearer foo"
platform-delete-item 'TTic0kr2' --login_with_auth "Bearer foo"
platform-acquire-item 'a0nI2oo7' --body '{"count": 92, "orderNo": "HCJK5sp0"}' --login_with_auth "Bearer foo"
platform-get-app 'aCvIq3aH' --login_with_auth "Bearer foo"
platform-update-app 'VYIlewLR' 'uHY83bGj' --body '{"carousel": [{"alt": "0HTeeWXl", "previewUrl": "IcRidqct", "thumbnailUrl": "DpygY0ax", "type": "video", "url": "D4MMO9Tw", "videoSource": "youtube"}], "developer": "H0qhWIwH", "forumUrl": "WTgzJFRY", "genres": ["MassivelyMultiplayer"], "localizations": {"6t1IKZLO": {"announcement": "6V4Ode46", "slogan": "QmCidgdp"}}, "platformRequirements": {"P7RTC587": [{"additionals": "lmUmBziP", "directXVersion": "ZBnpOfkl", "diskSpace": "lxfq0Nsr", "graphics": "Sjw5Hog0", "label": "blM1d5MS", "osVersion": "tYGczLIN", "processor": "lEC0OEsE", "ram": "3yzIsUP0", "soundCard": "NjluOrGZ"}]}, "platforms": ["MacOS"], "players": ["LocalCoop"], "primaryGenre": "Sports", "publisher": "W7Fjfs9n", "releaseDate": "1988-03-20T00:00:00Z", "websiteUrl": "cZ38fUEa"}' --login_with_auth "Bearer foo"
platform-disable-item 'njKHbXfk' '1zxdzxg0' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'UXcRyHi3' --login_with_auth "Bearer foo"
platform-enable-item 'u8BzVWu1' 'tOmhUtCg' --login_with_auth "Bearer foo"
platform-feature-item 'cpvGrEbc' 'ZUDExH1t' 'ayOGXIHz' --login_with_auth "Bearer foo"
platform-defeature-item 'MRjMCtOJ' 'sEijlrbp' 'yyEcQxVg' --login_with_auth "Bearer foo"
platform-get-locale-item 'JIjMZqcW' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'fMl6dqrp' 'D4tnc3ZR' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 68, "comparison": "is", "name": "dtPfAJEo", "predicateType": "EntitlementPredicate", "value": "wenJvQ8g", "values": ["rtQSv6Ec"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'ALcMIPms' --body '{"orderNo": "5bT51M4y"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "ko8S0EnG", "name": "LvGvfuSy", "status": "INACTIVE", "tags": ["Tyjj4mCa"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'iuMGKOF5' --login_with_auth "Bearer foo"
platform-update-key-group 'GJJooSXU' --body '{"description": "l3YU35QH", "name": "GpBABnOl", "status": "INACTIVE", "tags": ["DznICQVy"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'qBg34WTt' --login_with_auth "Bearer foo"
platform-list-keys 'Dkn0rtn6' --login_with_auth "Bearer foo"
platform-upload-keys 't0Yx4z12' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'EaQ1rUQY' --login_with_auth "Bearer foo"
platform-refund-order 'CNTiDX4j' --body '{"description": "E3M2IsTH"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "8QwNyOlX", "privateKey": "fIWd0mcq"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "5T4SUc7c", "currencyNamespace": "WfCKK6Di", "customParameters": {"j1gFcenE": {}}, "description": "MySPfhxB", "extOrderNo": "enDiTiAq", "extUserId": "FYmFKjaE", "itemType": "SUBSCRIPTION", "language": "ML", "metadata": {"exId1OKG": "UN2Uznd7"}, "notifyUrl": "uVa7t14y", "omitNotification": true, "platform": "SYSV52bH", "price": 16, "recurringPaymentOrderNo": "fCIf4tsu", "region": "u6Pkam6t", "returnUrl": "FSYFt4Zx", "sandbox": true, "sku": "2PzZFRkB", "subscriptionId": "Nlg6hn5q", "targetNamespace": "usKyZAuV", "targetUserId": "6uUvqM0l", "title": "V6UZMlEb"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'xHNgJRiQ' --login_with_auth "Bearer foo"
platform-get-payment-order 'ExaunjdA' --login_with_auth "Bearer foo"
platform-charge-payment-order 'qnHUz44t' --body '{"extTxId": "x4O6hamP", "paymentMethod": "wNoi071e", "paymentProvider": "WXPAY"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'DK56JFIG' --body '{"description": "e1IMUCLc"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'N0DsaD5F' --body '{"amount": 48, "currencyCode": "BsFe9OYE", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 10, "vat": 25}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'hyx6J25P' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Epic' --body '{"allowedBalanceOrigins": ["Stadia"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Nintendo' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "17hEeLLg", "eventTopic": "oaYth6zc", "maxAwarded": 11, "maxAwardedPerUser": 9, "namespaceExpression": "A45OMvOb", "rewardCode": "Wejo9LfG", "rewardConditions": [{"condition": "eegJMaBG", "conditionName": "R6D1ZoZE", "eventName": "ZQkJ8DSq", "rewardItems": [{"duration": 62, "itemId": "nhdKvjFC", "quantity": 62}]}], "userIdExpression": "bSFlEWoM"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'False' --login_with_auth "Bearer foo"
platform-get-reward 'gK5zn62m' --login_with_auth "Bearer foo"
platform-update-reward 'hnFSpCTl' --body '{"description": "DNBOcygv", "eventTopic": "v2LAgfBG", "maxAwarded": 94, "maxAwardedPerUser": 50, "namespaceExpression": "anbKYsB0", "rewardCode": "gqJ8VhYS", "rewardConditions": [{"condition": "ikJl2p9r", "conditionName": "Bx8N5ega", "eventName": "pqxDy4cL", "rewardItems": [{"duration": 11, "itemId": "NjzzEZYA", "quantity": 19}]}], "userIdExpression": "IkMJb7cZ"}' --login_with_auth "Bearer foo"
platform-delete-reward '2bPsaLLp' --login_with_auth "Bearer foo"
platform-check-event-condition 'EBVEMk5A' --body '{"payload": {"sKaF2P44": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'lXkI3zdi' --body '{"conditionName": "RiC5IbPi", "userId": "t71JWlYC"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "oi4nDfPu", "defaultRegion": "5V6QSYxE", "description": "VOryVuZY", "supportedLanguages": ["mgUeEPB5"], "supportedRegions": ["AGPgvk0Z"], "title": "thaj0EBA"}' --login_with_auth "Bearer foo"
platform-import-store --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '4azRz0d5' --login_with_auth "Bearer foo"
platform-update-store '6smobor4' --body '{"defaultLanguage": "p1PlgQB9", "defaultRegion": "EcNGOeBR", "description": "Y6G5ae07", "supportedLanguages": ["deDLaZ8J"], "supportedRegions": ["CvbeTfW0"], "title": "hgzrabLJ"}' --login_with_auth "Bearer foo"
platform-delete-store 'xEwJrEBm' --login_with_auth "Bearer foo"
platform-query-changes 'Q64haNOz' --login_with_auth "Bearer foo"
platform-publish-all 'lGu68UYy' --login_with_auth "Bearer foo"
platform-publish-selected 'upjdDetn' --login_with_auth "Bearer foo"
platform-select-all-records 'oT0rfWtV' --login_with_auth "Bearer foo"
platform-get-statistic 'PwQfq6V9' --login_with_auth "Bearer foo"
platform-unselect-all-records '2gbfPouN' --login_with_auth "Bearer foo"
platform-select-record 'dmP7fckV' 'nuDGvYIb' --login_with_auth "Bearer foo"
platform-unselect-record '1p5tcR5z' '8ZJLjSHc' --login_with_auth "Bearer foo"
platform-clone-store 'aR3X4tZm' --login_with_auth "Bearer foo"
platform-export-store 'wr0QmOns' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'Eg49eXp0' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'xQkZ2Jju' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'wWWy0tU1' --body '{"orderNo": "1PCeSrve"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'jUKwVfF3' --login_with_auth "Bearer foo"
platform-increase-ticket-sale '7Vr7mkDz' --body '{"count": 63, "orderNo": "BI1VwhkV"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'SKDlNFOU' --body '{"achievements": [{"id": "HBJsvTsq", "value": 20}], "steamUserId": "9hg4hj6n"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'UdebW6Us' 'kbPkkZAk' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '01f1KxCt' --body '{"achievements": [{"id": "WADU2guN", "percentComplete": 93}], "serviceConfigId": "9w13W1K9", "titleId": "TZQ4qRLE", "xboxUserId": "i5wowE36"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'rfmM0CCs' --login_with_auth "Bearer foo"
platform-anonymize-entitlement '35TPUPLm' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'sY8WgwSx' --login_with_auth "Bearer foo"
platform-anonymize-integration '1DI5GH9b' --login_with_auth "Bearer foo"
platform-anonymize-order 'v9ZTo2Hp' --login_with_auth "Bearer foo"
platform-anonymize-payment 'A6pzjHpZ' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'O0E9iLgR' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'PJK3nBae' --login_with_auth "Bearer foo"
platform-query-user-entitlements '3GOgbQrq' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'ra0Ptkfv' --body '[{"endDate": "1991-04-30T00:00:00Z", "grantedCode": "Y2ramp5l", "itemId": "nBn6xmBk", "itemNamespace": "fMtC66hF", "language": "Kpo", "quantity": 99, "region": "jlNEE5ec", "source": "REDEEM_CODE", "startDate": "1984-04-09T00:00:00Z", "storeId": "i0ySJHfP"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'loP1XkYK' '4MgIsDSF' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'MPyMhyw1' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'wxH4BIDJ' 'uDoShMMf' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'tll8N0Vv' 'ChHz9urm' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 't7QWvE8s' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '6Uz8BRuY' '["WDTtL6MT"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'TRkCbb9S' '5Q1IVHGT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '88prREBg' 'YOWdHJ9J' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'umohtU13' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'gf7TRigN' 'Zj5w5y3H' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'mK8QVOa6' '2eQZtbLL' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'cF671WLt' 'v38Heccz' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'opFmeRwp' 'cJBZyi3m' --body '{"endDate": "1989-08-11T00:00:00Z", "nullFieldList": ["4KzekiSz"], "startDate": "1973-07-12T00:00:00Z", "status": "CONSUMED", "useCount": 23}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'nOQt0joV' 'HgCytC6l' --body '{"options": ["RG98YxnH"], "useCount": 2}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'RdoTKKeu' 'SjfZe9i1' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'osghF1hz' 'i1Nl47sy' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'J5ibzSHZ' 'eCLIvWPV' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'RsdEqA61' 'yTrMgsyc' --login_with_auth "Bearer foo"
platform-fulfill-item 'TgmPzc20' --body '{"duration": 61, "endDate": "1981-11-21T00:00:00Z", "itemId": "5dMqGDlS", "itemSku": "ZPY07rEV", "language": "SjzHjL6Z", "order": {"currency": {"currencyCode": "bXjG6DSm", "currencySymbol": "pp3op8ht", "currencyType": "REAL", "decimals": 86, "namespace": "LxtW4PvF"}, "ext": {"kESTULat": {}}, "free": true}, "orderNo": "1Le7cR7q", "origin": "Xbox", "quantity": 96, "region": "hZmmKz41", "source": "GIFT", "startDate": "1997-12-25T00:00:00Z", "storeId": "p78FipJH"}' --login_with_auth "Bearer foo"
platform-redeem-code 'ahViJvLY' --body '{"code": "W0kdmlk2", "language": "UQ-nBbp-fZ", "region": "PwSMXT53"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'bBuL38be' --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "YDVuHZQ9", "namespace": "LYt6w23W"}, "item": {"itemId": "f8iEQo72", "itemSku": "sH0aRdcD", "itemType": "lDyGcsfI"}, "quantity": 40, "type": "ITEM"}], "source": "PROMOTION"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '5lEJpK1A' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'yRlzsrRX' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'EFZivQOH' --body '{"itemIdentityType": "ITEM_SKU", "language": "ICnR-893", "productId": "IohfNISL", "region": "XMDWDdm5", "type": "XBOX"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'E4lliQMn' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'utJbpEo4' --body '{"currencyCode": "mUNHFtdm", "currencyNamespace": "l2xNviWa", "discountedPrice": 4, "ext": {"Jc3Fm7Z5": {}}, "itemId": "48uuKgoC", "language": "BqS5uIdC", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 56, "quantity": 8, "region": "eq9ouEdD", "returnUrl": "tjOgsypL", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'm2ZYew5H' '7Zm0gnYy' --login_with_auth "Bearer foo"
platform-get-user-order 'j6MXf9G1' 'ntyebvoe' --login_with_auth "Bearer foo"
platform-update-user-order-status 'HenAALKt' '7EfxIH44' --body '{"status": "CLOSED", "statusReason": "UnP2S74u"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'nXwg0JKq' 'VWW1rjK1' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'epwkAvcs' 'YvbgfBVP' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'pTa8Yuq7' 'TKiNXmz7' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'eMrMD5Tb' 'aUxTCTng' --body '{"additionalData": {"cardSummary": "0xjtdBrj"}, "authorisedTime": "1980-10-14T00:00:00Z", "chargebackReversedTime": "1975-07-14T00:00:00Z", "chargebackTime": "1976-06-04T00:00:00Z", "chargedTime": "1998-08-08T00:00:00Z", "createdTime": "1976-02-21T00:00:00Z", "currency": {"currencyCode": "OlSatECZ", "currencySymbol": "2UgwQLqD", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "SxTPuVlB"}, "customParameters": {"qirdp3yx": {}}, "extOrderNo": "nsETl1Sv", "extTxId": "hQudsjIh", "extUserId": "XdxiSoWp", "issuedAt": "1977-04-20T00:00:00Z", "metadata": {"xgX7BCPM": "qzQIxibh"}, "namespace": "pNYsHtdB", "nonceStr": "3IkjuaZq", "paymentMethod": "hJilrZkS", "paymentMethodFee": 89, "paymentOrderNo": "KgP5rxCR", "paymentProvider": "ADYEN", "paymentProviderFee": 57, "paymentStationUrl": "A1GORSbL", "price": 27, "refundedTime": "1997-01-20T00:00:00Z", "salesTax": 2, "sandbox": true, "sku": "EupmdLQz", "status": "REFUNDING", "statusReason": "nNfBAcWA", "subscriptionId": "rbkCfdHI", "subtotalPrice": 2, "targetNamespace": "03otqmBu", "targetUserId": "S9V2pCZ2", "tax": 92, "totalPrice": 66, "totalTax": 24, "txEndTime": "1976-04-05T00:00:00Z", "type": "pJ4JLl01", "userId": "qi7L2oDU", "vat": 28}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'VRUb39j2' '2P4Sp09c' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'KmjRUbZV' --body '{"currencyCode": "BVS7OK2Z", "currencyNamespace": "rdcsckMe", "customParameters": {"kROWZ2KU": {}}, "description": "TqkK2eFa", "extOrderNo": "GLoSmEEP", "extUserId": "bLywJsyU", "itemType": "CODE", "language": "Fz", "metadata": {"lUPsO8lg": "46Si7006"}, "notifyUrl": "vL2w4aaj", "omitNotification": true, "platform": "AOx0iJjY", "price": 23, "recurringPaymentOrderNo": "eaktqv2W", "region": "kljQuD5m", "returnUrl": "nJONqHGq", "sandbox": false, "sku": "B7mF2lMF", "subscriptionId": "caghFXJI", "title": "JflRHFcs"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'IqCy4xDi' 'fSSQ5On2' --body '{"description": "ccEcl3xe"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'iO4bwF5J' --body '{"code": "OjGoGxKM", "orderNo": "3qMce5tf"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'LcpjFZMK' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'Cbp0pEbL' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'CLFpHxMY' --body '{"grantDays": 63, "itemId": "836075xE", "language": "pzdnYtpj", "reason": "a5ig2isQ", "region": "Zga6Vy76", "source": "izPiQRjY"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'a8fv5fIt' '22tIZhjh' --login_with_auth "Bearer foo"
platform-get-user-subscription 'gkigW22z' 'XMWXfbcM' --login_with_auth "Bearer foo"
platform-delete-user-subscription '0GIALIbF' 'CQgBcLNT' --login_with_auth "Bearer foo"
platform-cancel-subscription '6iOQVYx5' 'rW2gMsI1' --body '{"immediate": false, "reason": "YBitSn3U"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'DeKj97I4' 'WYXLqjN7' --body '{"grantDays": 20, "reason": "tOBTraBx"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'WRTVuYEq' 'GlKDwTKX' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'BrXiQcd9' 'IW8kiCKe' --body '{"additionalData": {"cardSummary": "QJWZBvcq"}, "authorisedTime": "1997-08-30T00:00:00Z", "chargebackReversedTime": "1993-06-15T00:00:00Z", "chargebackTime": "1995-08-06T00:00:00Z", "chargedTime": "1982-10-08T00:00:00Z", "createdTime": "1974-08-06T00:00:00Z", "currency": {"currencyCode": "8gbnSu9M", "currencySymbol": "2OxD2uda", "currencyType": "REAL", "decimals": 30, "namespace": "CXYSMiy8"}, "customParameters": {"7CTqEQBg": {}}, "extOrderNo": "36my3sY2", "extTxId": "clrDcain", "extUserId": "0cOVF1zH", "issuedAt": "1982-08-19T00:00:00Z", "metadata": {"TI0sJ1Q0": "kphMTggS"}, "namespace": "P2SLcuAP", "nonceStr": "7vU971Cz", "paymentMethod": "w2nbg8C7", "paymentMethodFee": 77, "paymentOrderNo": "vywhu6Mj", "paymentProvider": "CHECKOUT", "paymentProviderFee": 41, "paymentStationUrl": "Gzo1Fz4t", "price": 93, "refundedTime": "1996-12-28T00:00:00Z", "salesTax": 88, "sandbox": false, "sku": "98N8qOUA", "status": "DELETED", "statusReason": "92RaDe8n", "subscriptionId": "gT8LRQkM", "subtotalPrice": 26, "targetNamespace": "G1LZyF2m", "targetUserId": "dYY6ZMfu", "tax": 90, "totalPrice": 100, "totalTax": 91, "txEndTime": "1989-05-28T00:00:00Z", "type": "ue48qBEB", "userId": "NAV5BTe6", "vat": 9}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'c1zA92UR' 'CLSGPmRB' --body '{"count": 97, "orderNo": "unHW7MYv"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'r6QA7Ppe' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'pc92HA94' 'eACdeyfU' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'pgiPpf8n' 'xKJ3dnmt' --body '{"amount": 82, "expireAt": "1981-12-30T00:00:00Z", "origin": "GooglePlay", "reason": "PEKMhhu9", "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet '6f3xJNtU' 'lKLlIIAe' --body '{"amount": 67, "walletPlatform": "Epic"}' --login_with_auth "Bearer foo"
platform-sync-orders 'm5M6LsY1' 'VMuIEcRl' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["s68M3MPM"], "apiKey": "RPBepyyM", "authoriseAsCapture": true, "blockedPaymentMethods": ["6zfR1pvT"], "clientKey": "YYtDOiEi", "dropInSettings": "4RuEcHCS", "liveEndpointUrlPrefix": "GhpOZQFl", "merchantAccount": "wOiuKGDF", "notificationHmacKey": "gK49YuKn", "notificationPassword": "Xks0m8AN", "notificationUsername": "rcRal7ta", "returnUrl": "3fojA3h4", "settings": "MMW3AJ5z"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "lsFBwjvL", "privateKey": "Yvmg6avu", "publicKey": "dQFF1CPN", "returnUrl": "Y9u2dVYd"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "glOOoCeK", "secretKey": "0kPKmBqV"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "ux3lXcD8", "clientSecret": "aertAVCq", "returnUrl": "s8XT8xy3", "webHookId": "nJ06Kkse"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["A0ARj9ri"], "publishableKey": "cfayvnhi", "secretKey": "8MDdY4WL", "webhookSecret": "HoaUkYnQ"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "p5egdmVE", "key": "8ImivNtQ", "mchid": "xqWRKHoh", "returnUrl": "ODoWOr98"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "kjBUas9j", "flowCompletionUrl": "jz2Frgia", "merchantId": 64, "projectId": 35, "projectSecretKey": "cB7dIOVK"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'IPSJJHo5' --login_with_auth "Bearer foo"
platform-update-adyen-config 'W8tKH8ou' --body '{"allowedPaymentMethods": ["9SdbxSXc"], "apiKey": "rEFCwqeG", "authoriseAsCapture": false, "blockedPaymentMethods": ["IBRdliFQ"], "clientKey": "VMKEzVUW", "dropInSettings": "lUWDs2x1", "liveEndpointUrlPrefix": "EQU0oepE", "merchantAccount": "vcjaSgEh", "notificationHmacKey": "6jJnFxin", "notificationPassword": "IHJ1o7aq", "notificationUsername": "5Zznd5ea", "returnUrl": "cobTsuRl", "settings": "hreQVFID"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '3o8hJWVj' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'KIOAw70D' --body '{"appId": "vAHhSGWU", "privateKey": "vzq1Za3I", "publicKey": "BC4vQFsU", "returnUrl": "JPfiaJp1"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'rt7OBgBC' --login_with_auth "Bearer foo"
platform-update-checkout-config 'e6N0eI65' --body '{"publicKey": "Mn5tngEY", "secretKey": "XgPVT5Cq"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'XDZBVMJy' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'JeKFO92Y' --body '{"clientID": "DtaZvJoK", "clientSecret": "S0OxyipZ", "returnUrl": "uO4N9S2Y", "webHookId": "CgHa6XBc"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'vGRYk5rU' --login_with_auth "Bearer foo"
platform-update-stripe-config 'tWHCnhmz' --body '{"allowedPaymentMethodTypes": ["zppV7tKN"], "publishableKey": "KYUQVBXy", "secretKey": "mWcNlHaF", "webhookSecret": "xYaGHUpm"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'BFyOrFKt' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'xGNAi0fq' --body '{"appId": "4xChPLd2", "key": "lOopc7Xo", "mchid": "Vpdd6rCp", "returnUrl": "yMrnH9YH"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'Xh7KnCVO' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'KY2zsBRG' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'td8QY2OL' --body '{"apiKey": "bijrvfr8", "flowCompletionUrl": "hknjWUWd", "merchantId": 76, "projectId": 92, "projectSecretKey": "XHvw4pNl"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'GLjdBxLM' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '079pDAbT' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "q2GkYK1v", "region": "Ym9flXQ7", "sandboxTaxJarApiToken": "CQoemnQG", "specials": ["ADYEN"], "taxJarApiToken": "H0NVM9VE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'hkcu5vnz' --body '{"aggregate": "ADYEN", "namespace": "NMboBJHm", "region": "l0LJmpPi", "sandboxTaxJarApiToken": "4mqhruiC", "specials": ["CHECKOUT"], "taxJarApiToken": "HNTMapp5", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'nsUJKADr' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "60EkdFrp", "taxJarApiToken": "LsGt9yTX", "taxJarEnabled": true, "taxJarProductCodesMapping": {"QcMsHN7r": "eI22ks7I"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '12tAZc8s' 'xxLx9XQe' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'qNWLm8cN' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'JbYH5J4W' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'iJLv9NvH' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'wtw2Mjcy' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku '9ZL6Zs5B' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'u2XYopLW' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["ZeUKJJNf"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'tRpGgk1i' 'seREzzRG' --login_with_auth "Bearer foo"
platform-public-get-app '6z9wmuHd' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'dyOdibI1' --login_with_auth "Bearer foo"
platform-public-get-item 'LVyqbdY8' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "DGZKAuoI", "paymentProvider": "WXPAY", "returnUrl": "3Pp3zLWU", "ui": "xMzMtSmM", "zipCode": "mZP8nG0F"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'oQP8q7aS' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'sb85gAh9' --login_with_auth "Bearer foo"
platform-pay 'RD3ZzN6N' --body '{"token": "1iJ8ltt9"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'IRqCflgl' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'PAYPAL' '6r5f0s5H' --login_with_auth "Bearer foo"
platform-public-get-qr-code '6lCf3QHa' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '11hLLCgw' '5av4LExd' 'ADYEN' 'bD8g2cvH' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'fMRupDA5' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'bjs3XRdH' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'UJ0GCmfl' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'IXkgJ6zk' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Twoakq7s' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'EejFZ1Nt' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'ONXb9w9h' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'sQHszIsf' --body '{"epicGamesJwtToken": "rlzKpQdd"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '58dZP5Rv' --body '{"serviceLabel": 35}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'inNtvBtq' --body '{"appId": "FSkA68mI", "steamId": "VYJ5pSVx"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'BsLhty3p' --body '{"xstsToken": "ecToXA4M"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '1oUFPhgo' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '7Z6mwNC4' 'FY69mM87' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'joJNOGB8' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id '6Hl5Poab' '6lKoVqNB' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'UzIxOfgl' 'quS2q2Do' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'Wr9zvFtK' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'a2mOAqOo' 'kV1plxQ2' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'YriTPfip' 'D67jI2hi' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'ZkrtLnh2' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'U1RQlMxk' 'fNMPNtqv' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '2TMz1b7S' 'nzkXOek8' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '3Igm1wkS' 'WsYvAsu1' --body '{"options": ["8obUdc8m"], "useCount": 2}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'vXcwcgMq' --body '{"code": "OXMziXrV", "language": "Se_855", "region": "sCBTe4kL"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'cuqL40NY' --body '{"excludeOldTransactions": false, "language": "Kr_bt", "productId": "yCCyN4Fw", "receiptData": "9i6mI2W3", "region": "tjjCqPVy", "transactionId": "Ys01hEYz"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'Ww3qrcxM' --body '{"epicGamesJwtToken": "0DPAXQBN"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'MP7j3xfP' --body '{"autoAck": false, "language": "zA-KuKN", "orderId": "PqD4Agfa", "packageName": "sBfclBhZ", "productId": "jZbLnmgh", "purchaseTime": 72, "purchaseToken": "wPyVIn3q", "region": "aHP7KNul"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'yfrENVQk' --body '{"currencyCode": "pcaWHf6T", "price": 0.8546214577832915, "productId": "OOljn7c6", "serviceLabel": 4}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement '9efJI02T' --body '{"appId": "ZxrgLBFJ", "language": "KPH-wPOv", "region": "Vc2HBBmj", "stadiaPlayerId": "6cEi02hX"}' --login_with_auth "Bearer foo"
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
echo "1..356"

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

#- 80 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'IeqiNHtV' \
    'Snhxby8F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '6xF8MhbJ' \
    'AYEDN1xs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'zppR69ns' \
    --body '{"categoryPath": "KAS5zKsT", "targetItemId": "RXd7b3v2", "targetNamespace": "fkZIkr06"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'ojUtoVJL' \
    --body '{"appId": "GXekomvw", "appType": "SOFTWARE", "baseAppId": "849mo5vI", "boothName": "kDZYrYEf", "categoryPath": "1xYnlxHH", "clazz": "XjFoXtwK", "displayOrder": 97, "entitlementType": "DURABLE", "ext": {"OnqnWCuX": {}}, "features": ["MWqG8fNp"], "images": [{"as": "rJx82nAF", "caption": "exNou1Ai", "height": 5, "imageUrl": "sQjKx5Lj", "smallImageUrl": "etHEw0aC", "width": 85}], "itemIds": ["pU6EGOW0"], "itemQty": {"VAI87DPH": 10}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"Uqzay0gE": {"description": "T8T53yEe", "localExt": {"j7DsqsTv": {}}, "longDescription": "NKAXqfqM", "title": "JHGeHaN2"}}, "maxCount": 20, "maxCountPerUser": 61, "name": "utm9AAWD", "optionBoxConfig": {"boxItems": [{"count": 4, "itemId": "Dv3ISBgZ", "itemSku": "CAf2pWOW"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 80, "fixedTrialCycles": 66, "graceDays": 10}, "regionData": {"iu4HraKY": [{"currencyCode": "MtgBmvCH", "currencyNamespace": "MtF15a7T", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1983-06-25T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1991-08-29T00:00:00Z", "discountedPrice": 97, "expireAt": "1994-12-10T00:00:00Z", "price": 82, "purchaseAt": "1993-09-06T00:00:00Z", "trialPrice": 10}]}, "seasonType": "PASS", "sku": "zfqapbBy", "stackable": false, "status": "INACTIVE", "tags": ["YtTWJA3n"], "targetCurrencyCode": "FCDgWOpz", "targetNamespace": "3yPQfqbe", "thumbnailUrl": "VG7i4VTA", "useCount": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'uFYhEgQB' \
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
    'b9Hni6lD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Mj9gvkBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'QjQ56RuA' \
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
    'vUlMWp8W' \
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
    'GpZxCe0K' \
    --body '{"itemIds": ["smXtGBbK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'rV58TITh' \
    'Q52PYNkn' \
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
    'BCjirw4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'mfMSl2bE' \
    'TuFLFOfd' \
    --body '{"appId": "l0yRndbO", "appType": "SOFTWARE", "baseAppId": "bYsHx3BI", "boothName": "gGuo817l", "categoryPath": "ZA58OI2L", "clazz": "MYRX16nf", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"dpuCxSDF": {}}, "features": ["WMVcsOZl"], "images": [{"as": "S0ulerU6", "caption": "1drwLngb", "height": 46, "imageUrl": "OGxFwnmB", "smallImageUrl": "60ea7XIt", "width": 88}], "itemIds": ["8KIu9T60"], "itemQty": {"4oPajgyS": 15}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"LB7pQLZi": {"description": "WVmc8PVw", "localExt": {"ShVQz7FY": {}}, "longDescription": "3h2oVVSc", "title": "Vv3YTBM4"}}, "maxCount": 39, "maxCountPerUser": 8, "name": "OpqevsWv", "optionBoxConfig": {"boxItems": [{"count": 77, "itemId": "hiheE2KM", "itemSku": "7Ctal5z7"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 81, "fixedTrialCycles": 100, "graceDays": 51}, "regionData": {"1jFfu1y1": [{"currencyCode": "d77D8ZNO", "currencyNamespace": "fHyenhbR", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1975-03-20T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1994-08-31T00:00:00Z", "discountedPrice": 13, "expireAt": "1974-10-26T00:00:00Z", "price": 5, "purchaseAt": "1987-03-03T00:00:00Z", "trialPrice": 61}]}, "seasonType": "TIER", "sku": "ZbDl9ZeZ", "stackable": true, "status": "INACTIVE", "tags": ["hdKDEfXR"], "targetCurrencyCode": "haO0AYSq", "targetNamespace": "vcV2Lqfg", "thumbnailUrl": "CX28Je4k", "useCount": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'PQjgDJNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'EMtdEtN4' \
    --body '{"count": 36, "orderNo": "EebnQucg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'aop5NEdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'urScNiUx' \
    'nJUewUVh' \
    --body '{"carousel": [{"alt": "kGRRTgLC", "previewUrl": "b9evywZy", "thumbnailUrl": "wunLImNh", "type": "video", "url": "Zsb7YhhQ", "videoSource": "generic"}], "developer": "DxLRKxzU", "forumUrl": "tpKDC8gl", "genres": ["FreeToPlay"], "localizations": {"tjUWKxgW": {"announcement": "6n8AJaeq", "slogan": "xTPgZKFi"}}, "platformRequirements": {"3SBGlCD4": [{"additionals": "ig5ZRoJd", "directXVersion": "1as1Wkfh", "diskSpace": "3l8HyGWZ", "graphics": "TdpmTxPU", "label": "BFjTIIKc", "osVersion": "XlxPfdDy", "processor": "jJ0wwrYe", "ram": "ljMyoeb3", "soundCard": "gsMOMdqb"}]}, "platforms": ["Linux"], "players": ["Single"], "primaryGenre": "FreeToPlay", "publisher": "uFr18ijp", "releaseDate": "1998-08-12T00:00:00Z", "websiteUrl": "mzrfVIa1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'vi9oky2P' \
    '7fIgBRSB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'lxukoOTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'osjAXo6l' \
    'jBVW8r7n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'yNcVl6ZB' \
    '3bGHupBu' \
    'AL2avXKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'jwGRJbZq' \
    'XgQ9azOr' \
    'eTsviZmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'm0l8Yr4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'mgiwIF5Z' \
    'x5TIIhBt' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 91, "comparison": "isLessThan", "name": "RqyV0tlL", "predicateType": "EntitlementPredicate", "value": "MYL1p95v", "values": ["9mOiIFEd"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'Q2RKeQy2' \
    --body '{"orderNo": "WRztR5qz"}' \
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
    --body '{"description": "tuhVaJDW", "name": "x2OdrUV7", "status": "ACTIVE", "tags": ["hcKGIOZc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'B6NWffXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroup' test.out

#- 113 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'Yzes2xHp' \
    --body '{"description": "1ufZNxhb", "name": "saSFtTmb", "status": "ACTIVE", "tags": ["2hFQRmsi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'UpdateKeyGroup' test.out

#- 114 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '02melJQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetKeyGroupDynamic' test.out

#- 115 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'LtV2QnPs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ListKeys' test.out

#- 116 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'mhFVPtJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'UploadKeys' test.out

#- 117 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'QueryOrders' test.out

#- 118 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetOrderStatistics' test.out

#- 119 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'Gig12OdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetOrder' test.out

#- 120 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'nxXuJoZg' \
    --body '{"description": "OG4tOeWV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'RefundOrder' test.out

#- 121 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetPaymentCallbackConfig' test.out

#- 122 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "J6xC2h6U", "privateKey": "8TgR2k2R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdatePaymentCallbackConfig' test.out

#- 123 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'QueryPaymentNotifications' test.out

#- 124 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'QueryPaymentOrders' test.out

#- 125 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "kEr8XbmQ", "currencyNamespace": "Nuv80Em9", "customParameters": {"nuffLGUW": {}}, "description": "nVBQPhww", "extOrderNo": "HR0qyfFc", "extUserId": "SCdkfe5e", "itemType": "APP", "language": "fPD", "metadata": {"8Zx8jy7n": "xGzOTBpm"}, "notifyUrl": "mjuEEEyD", "omitNotification": true, "platform": "wbtA8xsm", "price": 24, "recurringPaymentOrderNo": "caOLdFif", "region": "Uk9p700j", "returnUrl": "B0p4HpK8", "sandbox": false, "sku": "vufSxYM0", "subscriptionId": "VkuqOKrh", "targetNamespace": "vMwvD04U", "targetUserId": "Y8ghvsmS", "title": "rrJzAi6F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'CreatePaymentOrderByDedicated' test.out

#- 126 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'OuhQIBAb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'ListExtOrderNoByExtTxId' test.out

#- 127 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'up1fpWsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'GetPaymentOrder' test.out

#- 128 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '6fW468fW' \
    --body '{"extTxId": "xqRkJDjf", "paymentMethod": "NhYDgVm0", "paymentProvider": "XSOLLA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ChargePaymentOrder' test.out

#- 129 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'aos4wyja' \
    --body '{"description": "PP6ClekQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'RefundPaymentOrderByDedicated' test.out

#- 130 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'Gm25KYmF' \
    --body '{"amount": 47, "currencyCode": "Qr4xbV63", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 6, "vat": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'SimulatePaymentOrderNotification' test.out

#- 131 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '4vyIPJeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrderChargeStatus' test.out

#- 132 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPlatformWalletConfig' test.out

#- 133 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Xbox' \
    --body '{"allowedBalanceOrigins": ["IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdatePlatformWalletConfig' test.out

#- 134 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'ResetPlatformWalletConfig' test.out

#- 135 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "EmwsQtSf", "eventTopic": "DqA4CysE", "maxAwarded": 98, "maxAwardedPerUser": 95, "namespaceExpression": "Oy0n2EkP", "rewardCode": "BjC4ecHw", "rewardConditions": [{"condition": "tSGzayUa", "conditionName": "Dh3m2eX3", "eventName": "1qVPH2VH", "rewardItems": [{"duration": 58, "itemId": "znf57fQ1", "quantity": 83}]}], "userIdExpression": "Y5uDkQ8z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'CreateReward' test.out

#- 136 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'QueryRewards' test.out

#- 137 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ExportRewards' test.out

#- 138 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'ImportRewards' test.out

#- 139 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'NRwycEAS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetReward' test.out

#- 140 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'hpFLpqAx' \
    --body '{"description": "1N5IGebN", "eventTopic": "uvyrghVd", "maxAwarded": 37, "maxAwardedPerUser": 89, "namespaceExpression": "wDc9NJRX", "rewardCode": "9ZdaC8sj", "rewardConditions": [{"condition": "a1J7eucG", "conditionName": "SSxZJPto", "eventName": "04wTEI8i", "rewardItems": [{"duration": 36, "itemId": "XmyAGW2r", "quantity": 2}]}], "userIdExpression": "YvVW26Oa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UpdateReward' test.out

#- 141 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'ysx72rwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'DeleteReward' test.out

#- 142 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '3MdXNVRD' \
    --body '{"payload": {"zT2sBbfl": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'CheckEventCondition' test.out

#- 143 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'g7cD247c' \
    --body '{"conditionName": "1XYYJf18", "userId": "StYu6wb2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'DeleteRewardConditionRecord' test.out

#- 144 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'ListStores' test.out

#- 145 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "We3Q6Pm7", "defaultRegion": "RBkqWDPE", "description": "P4CWnZJj", "supportedLanguages": ["XdiUv9ow"], "supportedRegions": ["F1mQrc03"], "title": "W7oOdpY5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'CreateStore' test.out

#- 146 ImportStore
$PYTHON -m $MODULE 'platform-import-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'ImportStore' test.out

#- 147 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetPublishedStore' test.out

#- 148 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeletePublishedStore' test.out

#- 149 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPublishedStoreBackup' test.out

#- 150 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'RollbackPublishedStore' test.out

#- 151 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'ZJChQtpD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetStore' test.out

#- 152 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '2U9IQzA2' \
    --body '{"defaultLanguage": "eexjq3Tf", "defaultRegion": "nJ6ryQ4w", "description": "Cg5Itn9T", "supportedLanguages": ["YOR2n8qF"], "supportedRegions": ["jjSZx0Fe"], "title": "RdmgOta6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateStore' test.out

#- 153 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'pcKzSPfe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'DeleteStore' test.out

#- 154 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'k369fIM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'QueryChanges' test.out

#- 155 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'tcxwt2Xq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'PublishAll' test.out

#- 156 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'PFaIxBgz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishSelected' test.out

#- 157 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'RO8GKycd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'SelectAllRecords' test.out

#- 158 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'cXuULpvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetStatistic' test.out

#- 159 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'BNRzUbH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UnselectAllRecords' test.out

#- 160 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'hI7yCEyj' \
    'KXQPnomA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'SelectRecord' test.out

#- 161 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'sHMpmDvt' \
    '4tkWavQ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'UnselectRecord' test.out

#- 162 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'jo17Qq6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'CloneStore' test.out

#- 163 ExportStore
$PYTHON -m $MODULE 'platform-export-store' \
    'FdE7URb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'ExportStore' test.out

#- 164 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QuerySubscriptions' test.out

#- 165 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    '9BcvWfPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'RecurringChargeSubscription' test.out

#- 166 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'HPQaUCly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'GetTicketDynamic' test.out

#- 167 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'AjfGkGwD' \
    --body '{"orderNo": "soo09NdZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'DecreaseTicketSale' test.out

#- 168 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'jNjjtl8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetTicketBoothID' test.out

#- 169 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'IGZV3GBX' \
    --body '{"count": 69, "orderNo": "HxWGX4iw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'IncreaseTicketSale' test.out

#- 170 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'wHLohaKv' \
    --body '{"achievements": [{"id": "D9nNeLi2", "value": 38}], "steamUserId": "RrclM3o5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UnlockSteamUserAchievement' test.out

#- 171 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'FmkWcIpW' \
    'lbLNxQci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetXblUserAchievements' test.out

#- 172 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'Sm2Obiac' \
    --body '{"achievements": [{"id": "E1VtVP5y", "percentComplete": 97}], "serviceConfigId": "KB3dhO4E", "titleId": "5cHbV6Tq", "xboxUserId": "3makniWG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UpdateXblUserAchievement' test.out

#- 173 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '9AtaznHr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AnonymizeCampaign' test.out

#- 174 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'mvF1mJZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeEntitlement' test.out

#- 175 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'dLFxAkQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeFulfillment' test.out

#- 176 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'sQXCUjnX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeIntegration' test.out

#- 177 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'NZpacdMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeOrder' test.out

#- 178 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'X6X3Zta5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizePayment' test.out

#- 179 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'msSId556' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizeSubscription' test.out

#- 180 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'xncCH37z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeWallet' test.out

#- 181 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'oQElCSNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'QueryUserEntitlements' test.out

#- 182 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'KYpjKmII' \
    --body '[{"endDate": "1971-03-14T00:00:00Z", "grantedCode": "BSA7vdLv", "itemId": "UFJ7qN6u", "itemNamespace": "cqfJth42", "language": "daK", "quantity": 74, "region": "vxRuULxD", "source": "IAP", "startDate": "1995-10-08T00:00:00Z", "storeId": "9BFwEyGU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GrantUserEntitlement' test.out

#- 183 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'Cv8O9EBl' \
    'PmENb7in' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetUserAppEntitlementByAppId' test.out

#- 184 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'SCGzNuHp' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'QueryUserEntitlementsByAppType' test.out

#- 185 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Btt9GgpA' \
    'Zjcg8z9c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserEntitlementByItemId' test.out

#- 186 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'H6u6SmVF' \
    'ciDGufTZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementBySku' test.out

#- 187 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'k7gk6nZZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'ExistsAnyUserActiveEntitlement' test.out

#- 188 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'gUCWs5b2' \
    '["flAnrsyp"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 189 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'CRQfPhfO' \
    '9Eamej28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 190 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'Jum6vaoB' \
    'RuMFZbZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserEntitlementOwnershipByItemId' test.out

#- 191 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'y6mJ2jHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemIds' test.out

#- 192 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'dpqHuBib' \
    'SpyFVnkE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipBySku' test.out

#- 193 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'RZ9gwlM0' \
    'hF50v8sF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'RevokeUserEntitlements' test.out

#- 194 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'HE2trW2m' \
    'Rr4XS8ek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlement' test.out

#- 195 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '4IK6APTp' \
    'bukLGw4H' \
    --body '{"endDate": "1988-08-17T00:00:00Z", "nullFieldList": ["d7JZjCvo"], "startDate": "1985-04-18T00:00:00Z", "status": "ACTIVE", "useCount": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateUserEntitlement' test.out

#- 196 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'y8GbfDbn' \
    'ZRasK3D9' \
    --body '{"options": ["LYj8f7kb"], "useCount": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'ConsumeUserEntitlement' test.out

#- 197 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'U5W5wrnC' \
    'C7OGhuPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'DisableUserEntitlement' test.out

#- 198 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '98XUYE5m' \
    'm7bHElXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'EnableUserEntitlement' test.out

#- 199 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'NGEUuLY9' \
    'Nu31elzd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserEntitlementHistories' test.out

#- 200 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'mX7gz9dj' \
    'DT8HpJ3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'RevokeUserEntitlement' test.out

#- 201 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '7LyGDuYX' \
    --body '{"duration": 94, "endDate": "1981-05-15T00:00:00Z", "itemId": "nW5P0Zs1", "itemSku": "3FtOvKL3", "language": "NS8Iq1rR", "order": {"currency": {"currencyCode": "NyHR1S2Z", "currencySymbol": "UIC8uvky", "currencyType": "VIRTUAL", "decimals": 56, "namespace": "MKBFVFMD"}, "ext": {"8RmFR37l": {}}, "free": false}, "orderNo": "j05gCbgx", "origin": "Playstation", "quantity": 73, "region": "mx7cjHqz", "source": "IAP", "startDate": "1980-01-18T00:00:00Z", "storeId": "mkvnirig"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'FulfillItem' test.out

#- 202 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'djwdDLkv' \
    --body '{"code": "0pxwrYjQ", "language": "AFJv", "region": "DDPn2UOD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'RedeemCode' test.out

#- 203 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'E5C6wjRy' \
    --body '{"origin": "Playstation", "rewards": [{"currency": {"currencyCode": "XS6QpnJB", "namespace": "Ezx6dWqA"}, "item": {"itemId": "ZXp1nDSp", "itemSku": "npvCuDbI", "itemType": "zKZsyGX6"}, "quantity": 71, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'FulfillRewards' test.out

#- 204 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Gq2cf2RY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'QueryUserIAPOrders' test.out

#- 205 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'x5T5vYIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryAllUserIAPOrders' test.out

#- 206 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '38uD0Cmg' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "tiZ", "productId": "hFZHPU1W", "region": "j69C0Wji", "type": "XBOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'MockFulfillIAPItem' test.out

#- 207 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'zSiMY3Ws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserOrders' test.out

#- 208 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    '9FISxHT2' \
    --body '{"currencyCode": "n4vzccwc", "currencyNamespace": "cBELwGw2", "discountedPrice": 76, "ext": {"tzYXVSOa": {}}, "itemId": "df8DmjQP", "language": "LvwUrZEi", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 18, "quantity": 44, "region": "5qBkdlvU", "returnUrl": "CTavaEgx", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminCreateUserOrder' test.out

#- 209 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'iPTrKQdl' \
    'aAHqUiWY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'CountOfPurchasedItem' test.out

#- 210 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'Y25XBucG' \
    '9pj0lvAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetUserOrder' test.out

#- 211 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    '79JifAIy' \
    'geL9jOJQ' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "mjxPLaTr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UpdateUserOrderStatus' test.out

#- 212 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'FO9wj0k9' \
    'J7zQlxTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'FulfillUserOrder' test.out

#- 213 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '4wAbIaBJ' \
    'F8VQfE9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserOrderGrant' test.out

#- 214 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'BFxsEcwU' \
    '3hInPH6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrderHistories' test.out

#- 215 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'GHoWLtuX' \
    'x6HZKN3M' \
    --body '{"additionalData": {"cardSummary": "9BmHlEEb"}, "authorisedTime": "1980-11-04T00:00:00Z", "chargebackReversedTime": "1998-11-18T00:00:00Z", "chargebackTime": "1982-06-16T00:00:00Z", "chargedTime": "1976-10-21T00:00:00Z", "createdTime": "1977-04-19T00:00:00Z", "currency": {"currencyCode": "GqL82Wne", "currencySymbol": "nsZA4XqD", "currencyType": "REAL", "decimals": 4, "namespace": "NJf1z35h"}, "customParameters": {"DEAI2t0b": {}}, "extOrderNo": "riD5LIWt", "extTxId": "hO7lSGEh", "extUserId": "wwhO3BEq", "issuedAt": "1979-03-18T00:00:00Z", "metadata": {"TipojGJp": "QoqR37zy"}, "namespace": "vGfBwIwU", "nonceStr": "b2vXOg1N", "paymentMethod": "yvf3E3eA", "paymentMethodFee": 89, "paymentOrderNo": "5oIXUfpQ", "paymentProvider": "WALLET", "paymentProviderFee": 96, "paymentStationUrl": "Gai76ytX", "price": 85, "refundedTime": "1995-08-05T00:00:00Z", "salesTax": 56, "sandbox": false, "sku": "frm4ewy1", "status": "INIT", "statusReason": "qBG8JjZF", "subscriptionId": "etBdgq9t", "subtotalPrice": 27, "targetNamespace": "IAcoMWKJ", "targetUserId": "ZMKj9kmx", "tax": 31, "totalPrice": 99, "totalTax": 98, "txEndTime": "1988-01-30T00:00:00Z", "type": "fuUGZB9j", "userId": "aeWRzlsD", "vat": 6}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'ProcessUserOrderNotification' test.out

#- 216 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'iuR6RZDT' \
    '5q7YcCkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'DownloadUserOrderReceipt' test.out

#- 217 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '6eLuzsPa' \
    --body '{"currencyCode": "XohAvroQ", "currencyNamespace": "YbofyTgK", "customParameters": {"ruutbCF9": {}}, "description": "DcEV3SD0", "extOrderNo": "04RRxWaB", "extUserId": "iyCKBsxK", "itemType": "BUNDLE", "language": "qmzP_qUop_Ct", "metadata": {"hlx4DM5M": "J2Pc8bul"}, "notifyUrl": "wqLyhFMe", "omitNotification": true, "platform": "xvRHmTK6", "price": 71, "recurringPaymentOrderNo": "8Prk4dhQ", "region": "H62tYAMH", "returnUrl": "u963tuVt", "sandbox": false, "sku": "jatnR06x", "subscriptionId": "DNs2SWbI", "title": "1hXVOD0e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'CreateUserPaymentOrder' test.out

#- 218 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'AWHAN9Pf' \
    'JYqbY1oJ' \
    --body '{"description": "TdNileWv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'RefundUserPaymentOrder' test.out

#- 219 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'sff1vwfz' \
    --body '{"code": "6XV95AYc", "orderNo": "eo0eecB0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'ApplyUserRedemption' test.out

#- 220 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'xtL3jFZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserSubscriptions' test.out

#- 221 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'ELdLmYKs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserSubscriptionActivities' test.out

#- 222 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'PGmuAIxJ' \
    --body '{"grantDays": 24, "itemId": "j3UDvN6g", "language": "GLoAUPH7", "reason": "SjrEfcuD", "region": "TSj7rQ9b", "source": "tDnwEzMs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'PlatformSubscribeSubscription' test.out

#- 223 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'ielcjxQj' \
    'MfclMXOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 224 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '5zBKrt8b' \
    'OHGp5P78' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserSubscription' test.out

#- 225 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'hLDgFeSh' \
    '6EnKHynF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'DeleteUserSubscription' test.out

#- 226 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'XOH8gKVl' \
    'K1fcIlMK' \
    --body '{"immediate": false, "reason": "q53upI4H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'CancelSubscription' test.out

#- 227 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'ja15XYvf' \
    '51zcBd5r' \
    --body '{"grantDays": 59, "reason": "2Wuo6Hrr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GrantDaysToSubscription' test.out

#- 228 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    '2NbYUJGZ' \
    'iJejefFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscriptionBillingHistories' test.out

#- 229 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'sLszYGFl' \
    'WNm21v93' \
    --body '{"additionalData": {"cardSummary": "bvhuxpnW"}, "authorisedTime": "1981-01-31T00:00:00Z", "chargebackReversedTime": "1985-04-21T00:00:00Z", "chargebackTime": "1995-05-10T00:00:00Z", "chargedTime": "1983-03-07T00:00:00Z", "createdTime": "1995-04-26T00:00:00Z", "currency": {"currencyCode": "PTKlfM7O", "currencySymbol": "LcwhNQ0I", "currencyType": "REAL", "decimals": 77, "namespace": "A5wYj4TN"}, "customParameters": {"oMAawH8Q": {}}, "extOrderNo": "DHVdTqEM", "extTxId": "lF2AUpoh", "extUserId": "DiAhJuGj", "issuedAt": "1982-03-10T00:00:00Z", "metadata": {"onKlaCrO": "0i06kgIw"}, "namespace": "CrEgelT8", "nonceStr": "zVC1YeUy", "paymentMethod": "HaXqQxmh", "paymentMethodFee": 44, "paymentOrderNo": "d575JhR8", "paymentProvider": "XSOLLA", "paymentProviderFee": 87, "paymentStationUrl": "FvtxvMfw", "price": 26, "refundedTime": "1992-02-12T00:00:00Z", "salesTax": 42, "sandbox": true, "sku": "XL00wCE6", "status": "REFUNDED", "statusReason": "fNt8OIy8", "subscriptionId": "S0YmPqh1", "subtotalPrice": 48, "targetNamespace": "YYw5DgqW", "targetUserId": "TzS93flM", "tax": 61, "totalPrice": 48, "totalTax": 77, "txEndTime": "1979-12-11T00:00:00Z", "type": "fCDtYmnB", "userId": "mWWsoEqx", "vat": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'ProcessUserSubscriptionNotification' test.out

#- 230 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'V23JYjtE' \
    'T8OONm1c' \
    --body '{"count": 5, "orderNo": "FAQh3NhE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AcquireUserTicket' test.out

#- 231 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'AGDA9kOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'QueryUserCurrencyWallets' test.out

#- 232 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'P1a4swJX' \
    'ieA6PNyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ListUserCurrencyTransactions' test.out

#- 233 CheckWallet
eval_tap 0 233 'CheckWallet # SKIP deprecated' test.out

#- 234 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '4ZD8ZALg' \
    'mNweJppm' \
    --body '{"amount": 96, "expireAt": "1984-07-18T00:00:00Z", "origin": "Nintendo", "reason": "zKWyKNzB", "source": "IAP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'CreditUserWallet' test.out

#- 235 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'L7EQ3TeN' \
    'MSNNex5d' \
    --body '{"amount": 23, "walletPlatform": "Playstation"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PayWithUserWallet' test.out

#- 236 GetUserWallet
eval_tap 0 236 'GetUserWallet # SKIP deprecated' test.out

#- 237 DebitUserWallet
eval_tap 0 237 'DebitUserWallet # SKIP deprecated' test.out

#- 238 DisableUserWallet
eval_tap 0 238 'DisableUserWallet # SKIP deprecated' test.out

#- 239 EnableUserWallet
eval_tap 0 239 'EnableUserWallet # SKIP deprecated' test.out

#- 240 ListUserWalletTransactions
eval_tap 0 240 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 241 QueryWallets
eval_tap 0 241 'QueryWallets # SKIP deprecated' test.out

#- 242 GetWallet
eval_tap 0 242 'GetWallet # SKIP deprecated' test.out

#- 243 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'ul2qhfwy' \
    '74gW8E4c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'SyncOrders' test.out

#- 244 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["HgyXCFX9"], "apiKey": "4MtRGGL6", "authoriseAsCapture": true, "blockedPaymentMethods": ["ek2UNjsg"], "clientKey": "QKca6OwZ", "dropInSettings": "uwyOkSQh", "liveEndpointUrlPrefix": "tXEMam6I", "merchantAccount": "b7k8cIhl", "notificationHmacKey": "eApHrsu9", "notificationPassword": "yZjjbdrz", "notificationUsername": "ATuLeuen", "returnUrl": "91RQMkVp", "settings": "H8AcaclJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'TestAdyenConfig' test.out

#- 245 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "9CLnaYpz", "privateKey": "lQ2x3EnM", "publicKey": "j99gEy4S", "returnUrl": "y9nZidlJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'TestAliPayConfig' test.out

#- 246 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "6t4AmHiT", "secretKey": "uje6S87D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestCheckoutConfig' test.out

#- 247 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'DebugMatchedPaymentMerchantConfig' test.out

#- 248 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "ePRQBjep", "clientSecret": "2Is3ANmY", "returnUrl": "mXhUrICH", "webHookId": "Q1TrmIdK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestPayPalConfig' test.out

#- 249 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["8DmYPF6g"], "publishableKey": "pPJK9qL0", "secretKey": "EmqezbFm", "webhookSecret": "0Y5OsHaO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestStripeConfig' test.out

#- 250 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "OyB4Kp7h", "key": "zU9HaTyW", "mchid": "FQlLw8K5", "returnUrl": "eorxH1KF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestWxPayConfig' test.out

#- 251 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "uEYygH2i", "flowCompletionUrl": "0CbngOhb", "merchantId": 27, "projectId": 35, "projectSecretKey": "1dAwa0f9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestXsollaConfig' test.out

#- 252 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'bDmasQwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetPaymentMerchantConfig' test.out

#- 253 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'ImnIPZ2s' \
    --body '{"allowedPaymentMethods": ["9WLUOBr8"], "apiKey": "ZsOMLNA3", "authoriseAsCapture": true, "blockedPaymentMethods": ["J6xnFtsr"], "clientKey": "dJPTHSCY", "dropInSettings": "5CUxUobA", "liveEndpointUrlPrefix": "tEeZgYwX", "merchantAccount": "4AxnhDDe", "notificationHmacKey": "36HMeSdR", "notificationPassword": "ZdfbGUCV", "notificationUsername": "iBiK43SH", "returnUrl": "BqN3FrZ2", "settings": "7sTWO1j8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'UpdateAdyenConfig' test.out

#- 254 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'CNGKXB1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestAdyenConfigById' test.out

#- 255 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Hd0dAJRM' \
    --body '{"appId": "q4Xl4dhR", "privateKey": "njEOdEWL", "publicKey": "Jwo4jNJY", "returnUrl": "KgGYPryj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateAliPayConfig' test.out

#- 256 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'vsOPgnUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'TestAliPayConfigById' test.out

#- 257 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '9TYFxn34' \
    --body '{"publicKey": "wV03oJwy", "secretKey": "CXdXlDay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateCheckoutConfig' test.out

#- 258 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '1d5wzQ8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestCheckoutConfigById' test.out

#- 259 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'i5e6YQR2' \
    --body '{"clientID": "j2NwEyTQ", "clientSecret": "qkypjj3G", "returnUrl": "NMz7FCiu", "webHookId": "siVRT3F9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdatePayPalConfig' test.out

#- 260 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'T4nWFoOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestPayPalConfigById' test.out

#- 261 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'WpCJKnXY' \
    --body '{"allowedPaymentMethodTypes": ["o8etpjdA"], "publishableKey": "xIszZC3L", "secretKey": "j7ourPca", "webhookSecret": "znSH2Cxs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateStripeConfig' test.out

#- 262 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '5k0AiVIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestStripeConfigById' test.out

#- 263 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'GckJ4UyH' \
    --body '{"appId": "UQuSmRQB", "key": "GDNgfJbt", "mchid": "T26RB4dl", "returnUrl": "lAOyAlx2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdateWxPayConfig' test.out

#- 264 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'pzgH47Jm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'UpdateWxPayConfigCert' test.out

#- 265 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'h8F9rVlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'TestWxPayConfigById' test.out

#- 266 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'Ohh6OgcW' \
    --body '{"apiKey": "FoDkYwud", "flowCompletionUrl": "3hXXT8cA", "merchantId": 76, "projectId": 76, "projectSecretKey": "jFUukAbW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateXsollaConfig' test.out

#- 267 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'MlmoskPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestXsollaConfigById' test.out

#- 268 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'ZlnfHna8' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateXsollaUIConfig' test.out

#- 269 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryPaymentProviderConfig' test.out

#- 270 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "ZA6bGj3w", "region": "eTlX2frn", "sandboxTaxJarApiToken": "V4SnI56i", "specials": ["ADYEN"], "taxJarApiToken": "mKfvoBCN", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'CreatePaymentProviderConfig' test.out

#- 271 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GetAggregatePaymentProviders' test.out

#- 272 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'DebugMatchedPaymentProviderConfig' test.out

#- 273 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetSpecialPaymentProviders' test.out

#- 274 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'lc2UDrxc' \
    --body '{"aggregate": "ADYEN", "namespace": "FB3t7Su8", "region": "87Ey5S3E", "sandboxTaxJarApiToken": "sksPusIs", "specials": ["ADYEN"], "taxJarApiToken": "tH5nDyVn", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'UpdatePaymentProviderConfig' test.out

#- 275 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'DUFdsq2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'DeletePaymentProviderConfig' test.out

#- 276 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GetPaymentTaxConfig' test.out

#- 277 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "LRcIgber", "taxJarApiToken": "qiArHPbl", "taxJarEnabled": true, "taxJarProductCodesMapping": {"PveOBBV9": "k49IeIHN"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdatePaymentTaxConfig' test.out

#- 278 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'jkojdAdy' \
    '9CDCc6KW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'SyncPaymentOrders' test.out

#- 279 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetRootCategories' test.out

#- 280 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DownloadCategories' test.out

#- 281 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'WGrLJj7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetCategory' test.out

#- 282 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'NoAWv2gX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetChildCategories' test.out

#- 283 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'LP7elmz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetDescendantCategories' test.out

#- 284 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicListCurrencies' test.out

#- 285 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'qzOrsRps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetItemByAppId' test.out

#- 286 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicQueryItems' test.out

#- 287 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '4NnGGxfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetItemBySku' test.out

#- 288 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'zGbmQPlb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicBulkGetItems' test.out

#- 289 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["8usTL87x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateItemPurchaseCondition' test.out

#- 290 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'MPcqN6Kf' \
    '3uB7RkoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicSearchItems' test.out

#- 291 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'PclOsJaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetApp' test.out

#- 292 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '4RbVS0Cn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetItemDynamicData' test.out

#- 293 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'sf4H98gj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetItem' test.out

#- 294 GetPaymentCustomization
eval_tap 0 294 'GetPaymentCustomization # SKIP deprecated' test.out

#- 295 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "XlNYVv6B", "paymentProvider": "CHECKOUT", "returnUrl": "fSEeqtMe", "ui": "NJSNg3AJ", "zipCode": "JU1oQnLD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetPaymentUrl' test.out

#- 296 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'QsMpjdBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetPaymentMethods' test.out

#- 297 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'WrShZRZY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUnpaidPaymentOrder' test.out

#- 298 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'P6m3rqG4' \
    --body '{"token": "IPMsbpzD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'Pay' test.out

#- 299 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'Z1nbgtD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicCheckPaymentOrderPaidStatus' test.out

#- 300 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'uZaI7Jv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'GetPaymentPublicConfig' test.out

#- 301 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'evnHbcDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetQRCode' test.out

#- 302 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '73Dkqohz' \
    'hINjwDfI' \
    'ALIPAY' \
    '7xoslK0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicNormalizePaymentReturnUrl' test.out

#- 303 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'MQF7VvTI' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetPaymentTaxValue' test.out

#- 304 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'MBjCCBKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetRewardByCode' test.out

#- 305 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'QueryRewards1' test.out

#- 306 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'Pi4rFNHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetReward1' test.out

#- 307 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicListStores' test.out

#- 308 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicExistsAnyMyActiveEntitlement' test.out

#- 309 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'vCKN66VC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 310 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'NAThE5Wz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 311 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'jPhyLOQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 312 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetEntitlementOwnershipToken' test.out

#- 313 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'xnbExCcz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyWallet' test.out

#- 314 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'whRoWp6l' \
    --body '{"epicGamesJwtToken": "kuHP8buZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'SyncEpicGameDLC' test.out

#- 315 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'iH2GRmQR' \
    --body '{"serviceLabel": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicSyncPsnDlcInventory' test.out

#- 316 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'tntPilLE' \
    --body '{"appId": "8i8KPrA5", "steamId": "PyjRz6eP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'SyncSteamDLC' test.out

#- 317 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '98Itqgop' \
    --body '{"xstsToken": "WhLj5tZD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'SyncXboxDLC' test.out

#- 318 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'X9fbQAYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicQueryUserEntitlements' test.out

#- 319 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'tQpmvfcW' \
    'dRdhZ5Kj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserAppEntitlementByAppId' test.out

#- 320 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '6MACiufn' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicQueryUserEntitlementsByAppType' test.out

#- 321 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'yyq7F9aC' \
    'oZstPAUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserEntitlementByItemId' test.out

#- 322 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'l2eCy6xD' \
    'IxbzIRjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserEntitlementBySku' test.out

#- 323 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'gW7qJKLG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicExistsAnyUserActiveEntitlement' test.out

#- 324 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'YvWQ0T9y' \
    '9ULje9SY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 325 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'EdqFTDja' \
    'bG5HAufl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 326 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '1c4Sh7xc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 327 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'c4KF44Gs' \
    'n5ewnln4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 328 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '9JNf4B4L' \
    'TFAbVqpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlement' test.out

#- 329 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '5OiYOUCH' \
    'EDiDw1OG' \
    --body '{"options": ["oQx3PQmY"], "useCount": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicConsumeUserEntitlement' test.out

#- 330 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '1qncZKQg' \
    --body '{"code": "FGrSQzTT", "language": "wQSt", "region": "09JnLu8m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicRedeemCode' test.out

#- 331 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'Qz6huRB8' \
    --body '{"excludeOldTransactions": true, "language": "dhqI_uOYJ", "productId": "CIhkMiso", "receiptData": "OPhEeg9R", "region": "71nKBYT1", "transactionId": "IjDPnThU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicFulfillAppleIAPItem' test.out

#- 332 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'OAIPTVYr' \
    --body '{"epicGamesJwtToken": "ucqWKPIZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGamesInventory' test.out

#- 333 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    't5yavhaw' \
    --body '{"autoAck": true, "language": "Xy_XXXy", "orderId": "tVuokjxP", "packageName": "n7cwvLE1", "productId": "5HSXy5Cy", "purchaseTime": 78, "purchaseToken": "fd21S2Zt", "region": "C4YkCoad"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicFulfillGoogleIAPItem' test.out

#- 334 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'XhWin1Nh' \
    --body '{"currencyCode": "6x6BmifM", "price": 0.5644157104199067, "productId": "10stX6hq", "serviceLabel": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicReconcilePlayStationStore' test.out

#- 335 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'mTM6E9J8' \
    --body '{"appId": "SdcHhH6K", "language": "XJle_oZkj-906", "region": "zlOZYszW", "stadiaPlayerId": "ZKRbDZAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'SyncStadiaEntitlement' test.out

#- 336 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'a8QeKSh1' \
    --body '{"appId": "pax9HYKx", "currencyCode": "pJKcaTA7", "language": "UNRl-TABv-819", "price": 0.74767577592817, "productId": "t0XZH4j3", "region": "CPiWTJBs", "steamId": "z9lOZT6f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncSteamInventory' test.out

#- 337 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'coT420K5' \
    --body '{"gameId": "eOIsp2YS", "language": "lVr", "region": "mafYQzNu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'SyncTwitchDropsEntitlement' test.out

#- 338 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '1QRfRdqs' \
    --body '{"currencyCode": "x3tCuZEy", "price": 0.9757744062884658, "productId": "QFHaqVkS", "xstsToken": "vz7effH0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'SyncXboxInventory' test.out

#- 339 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'KyszQ0Ye' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserOrders' test.out

#- 340 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'zIEB0YzH' \
    --body '{"currencyCode": "gwKOWVbP", "discountedPrice": 95, "ext": {"RKHS2Nib": {}}, "itemId": "IlEcVVgR", "language": "BB_359", "price": 68, "quantity": 39, "region": "C4XPfSOq", "returnUrl": "QKWITKcL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicCreateUserOrder' test.out

#- 341 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'jAZM5z0I' \
    '03Uz8o4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserOrder' test.out

#- 342 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'My3n5mQf' \
    'rJnvzCyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicCancelUserOrder' test.out

#- 343 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '5g6KmVvO' \
    'MGdfwNts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserOrderHistories' test.out

#- 344 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'NU2MJZYO' \
    '6kojew8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicDownloadUserOrderReceipt' test.out

#- 345 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'gE0hRyw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetPaymentAccounts' test.out

#- 346 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'fyo14fSA' \
    'paypal' \
    'cPigz3r6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicDeletePaymentAccount' test.out

#- 347 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '5YPszkUJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicQueryUserSubscriptions' test.out

#- 348 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'oRc3vM3L' \
    --body '{"currencyCode": "0i4GfRDp", "itemId": "IMIEvYva", "language": "xF-GluI", "region": "EocyK48i", "returnUrl": "V7D3cZPJ", "source": "dtOR25NR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicSubscribeSubscription' test.out

#- 349 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'HvTpYpCV' \
    'Kx7EmUWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 350 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'X8aKQUVH' \
    'rNkvPdMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserSubscription' test.out

#- 351 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'xywmJDXL' \
    '6dcjO0b4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicChangeSubscriptionBillingAccount' test.out

#- 352 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'KSHSRi7M' \
    '9illRmdQ' \
    --body '{"immediate": false, "reason": "HnGq8jdU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicCancelSubscription' test.out

#- 353 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'M3MEJSff' \
    'JHXtJjHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetUserSubscriptionBillingHistories' test.out

#- 354 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'lczd1lXb' \
    'Sd6TYZ8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetWallet' test.out

#- 355 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '9HuJQs1d' \
    'UPVMp7Rh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicListUserWalletTransactions' test.out

#- 356 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'QueryItems1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
