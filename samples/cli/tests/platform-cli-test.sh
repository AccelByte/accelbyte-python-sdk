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
platform-get-key-group-by-booth-name 'iuMGKOF5' --login_with_auth "Bearer foo"
platform-get-key-group 'GJJooSXU' --login_with_auth "Bearer foo"
platform-update-key-group 'l3YU35QH' --body '{"description": "GpBABnOl", "name": "xDznICQV", "status": "INACTIVE", "tags": ["qBg34WTt"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'Dkn0rtn6' --login_with_auth "Bearer foo"
platform-list-keys 't0Yx4z12' --login_with_auth "Bearer foo"
platform-upload-keys 'EaQ1rUQY' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'CNTiDX4j' --login_with_auth "Bearer foo"
platform-refund-order 'E3M2IsTH' --body '{"description": "u8QwNyOl"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "IWd0mcq5", "privateKey": "T4SUc7cW"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "fCKK6Dij", "currencyNamespace": "1gFcenEM", "customParameters": {"ySPfhxBe": {}}, "description": "nDiTiAqF", "extOrderNo": "YmFKjaEL", "extUserId": "mmll6oex", "itemType": "SEASON", "language": "ok_UvAT-Fc", "metadata": {"If4tsuu6": "Pkam6tFS"}, "notifyUrl": "YFt4ZxA2", "omitNotification": true, "platform": "ZFRkBNlg", "price": 14, "recurringPaymentOrderNo": "n5qusKyZ", "region": "AuV6uUvq", "returnUrl": "M0lV6UZM", "sandbox": false, "sku": "EbxHNgJR", "subscriptionId": "iQExaunj", "targetNamespace": "dAqnHUz4", "targetUserId": "4tx4O6ha", "title": "mPwNoi07"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '1ezDK56J' --login_with_auth "Bearer foo"
platform-get-payment-order 'FIGe1IMU' --login_with_auth "Bearer foo"
platform-charge-payment-order 'CLcN0Dsa' --body '{"extTxId": "D5FyBsFe", "paymentMethod": "9OYEJVsY", "paymentProvider": "ALIPAY"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'fmhyx6J2' --body '{"description": "5PrM4S3c"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'B8m17hEe' --body '{"amount": 74, "currencyCode": "LgoaYth6", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 11, "vat": 9}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'A45OMvOb' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'IOS' --body '{"allowedBalanceOrigins": ["Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "GeegJMaB", "eventTopic": "GR6D1ZoZ", "maxAwarded": 60, "maxAwardedPerUser": 85, "namespaceExpression": "kJ8DSqFn", "rewardCode": "hdKvjFCF", "rewardConditions": [{"condition": "bSFlEWoM", "conditionName": "PdgK5zn6", "eventName": "2mhnFSpC", "rewardItems": [{"duration": 90, "itemId": "lDNBOcyg", "quantity": 43}]}], "userIdExpression": "v2LAgfBG"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'True' --login_with_auth "Bearer foo"
platform-get-reward 'anbKYsB0' --login_with_auth "Bearer foo"
platform-update-reward 'gqJ8VhYS' --body '{"description": "ikJl2p9r", "eventTopic": "Bx8N5ega", "maxAwarded": 31, "maxAwardedPerUser": 33, "namespaceExpression": "xDy4cLfN", "rewardCode": "jzzEZYA8", "rewardConditions": [{"condition": "jIkMJb7c", "conditionName": "Z2bPsaLL", "eventName": "pEBVEMk5", "rewardItems": [{"duration": 52, "itemId": "sKaF2P44", "quantity": 22}]}], "userIdExpression": "XkI3zdiR"}' --login_with_auth "Bearer foo"
platform-delete-reward 'iC5IbPit' --login_with_auth "Bearer foo"
platform-check-event-condition '71JWlYCo' --body '{"payload": {"i4nDfPu5": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'V6QSYxEV' --body '{"conditionName": "OryVuZYm", "userId": "gUeEPB5A"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "GPgvk0Zt", "defaultRegion": "haj0EBA4", "description": "azRz0d56", "supportedLanguages": ["smobor4p"], "supportedRegions": ["1PlgQB9E"], "title": "cNGOeBRY"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '6G5ae07d' --login_with_auth "Bearer foo"
platform-update-store 'eDLaZ8JC' --body '{"defaultLanguage": "vbeTfW0h", "defaultRegion": "gzrabLJx", "description": "EwJrEBmQ", "supportedLanguages": ["64haNOzl"], "supportedRegions": ["Gu68UYyu"], "title": "pjdDetno"}' --login_with_auth "Bearer foo"
platform-delete-store 'T0rfWtVP' --login_with_auth "Bearer foo"
platform-query-changes 'wQfq6V92' --login_with_auth "Bearer foo"
platform-publish-all 'gbfPouNd' --login_with_auth "Bearer foo"
platform-publish-selected 'mP7fckVn' --login_with_auth "Bearer foo"
platform-select-all-records 'uDGvYIb1' --login_with_auth "Bearer foo"
platform-get-statistic 'p5tcR5z8' --login_with_auth "Bearer foo"
platform-unselect-all-records 'ZJLjSHca' --login_with_auth "Bearer foo"
platform-select-record 'R3X4tZmw' 'r0QmOnsE' --login_with_auth "Bearer foo"
platform-unselect-record 'g49eXp0x' 'QkZ2Jjuw' --login_with_auth "Bearer foo"
platform-clone-store 'WWy0tU11' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'PCeSrvej' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'UKwVfF37' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'Vr7mkDzF' --body '{"orderNo": "BI1VwhkV"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'SKDlNFOU' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'HBJsvTsq' --body '{"count": 20, "orderNo": "9hg4hj6n"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'UdebW6Us' --body '{"achievements": [{"id": "kbPkkZAk", "value": 10}], "steamUserId": "1KxCtWAD"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'U2guN6U9' 'w13W1K9T' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'ZQ4qRLEi' --body '{"achievements": [{"id": "5wowE36r", "percentComplete": 11}], "serviceConfigId": "mM0CCs35", "titleId": "TPUPLmsY", "xboxUserId": "8WgwSx1D"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'I5GH9bv9' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'ZTo2HpA6' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'pzjHpZO0' --login_with_auth "Bearer foo"
platform-anonymize-integration 'E9iLgRPJ' --login_with_auth "Bearer foo"
platform-anonymize-order 'K3nBae3G' --login_with_auth "Bearer foo"
platform-anonymize-payment 'OgbQrqra' --login_with_auth "Bearer foo"
platform-anonymize-subscription '0PtkfvOp' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'Y2ramp5l' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'nBn6xmBk' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'fMtC66hF' --body '[{"endDate": "1979-03-24T00:00:00Z", "grantedCode": "POkORm2X", "itemId": "jlNEE5ec", "itemNamespace": "PzAmi0yS", "language": "hFpL", "quantity": 100, "region": "K4MgIsDS", "source": "REFERRAL_BONUS", "startDate": "1990-11-28T00:00:00Z", "storeId": "yMhyw1OL"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'ZPVwwxH4' 'BIDJuDoS' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'hMMftll8' 'GAME' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'ChHz9urm' 't7QWvE8s' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku '6Uz8BRuY' 'WDTtL6MT' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'TRkCbb9S' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '5Q1IVHGT' '["88prREBg"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'YOWdHJ9J' 'umohtU13' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'gf7TRigN' 'Zj5w5y3H' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'mK8QVOa6' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku '2eQZtbLL' 'cF671WLt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'v38Heccz' 'opFmeRwp' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'cJBZyi3m' 'LC4Kzeki' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'SzeyolnO' 'Qt0joVHg' --body '{"endDate": "1985-07-09T00:00:00Z", "nullFieldList": ["tC6lRG98"], "startDate": "1996-07-03T00:00:00Z", "status": "CONSUMED", "useCount": 66}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'bRdoTKKe' 'uSjfZe9i' --body '{"options": ["1osghF1h"], "requestId": "zi1Nl47s", "useCount": 48}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'J5ibzSHZ' 'eCLIvWPV' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'RsdEqA61' 'yTrMgsyc' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'TgmPzc20' 'EuO5dMqG' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'DlSZPY07' 'rEVSjzHj' --login_with_auth "Bearer foo"
platform-fulfill-item 'L6ZbXjG6' --body '{"duration": 58, "endDate": "1993-04-06T00:00:00Z", "itemId": "pp3op8ht", "itemSku": "aRLxtW4P", "language": "vFkESTUL", "order": {"currency": {"currencyCode": "at5F1Le7", "currencySymbol": "cR7q6PWh", "currencyType": "REAL", "decimals": 25, "namespace": "Kz41i1Tp"}, "ext": {"78FipJHa": {}}, "free": false}, "orderNo": "ViJvLYW0", "origin": "IOS", "quantity": 6, "region": "mlk2luqS", "source": "PURCHASE", "startDate": "1998-11-14T00:00:00Z", "storeId": "ZBoNbB98"}' --login_with_auth "Bearer foo"
platform-redeem-code 'PuSGykqF' --body '{"code": "zPwSMXT5", "language": "bU", "region": "OYDVuHZQ"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards '9LYt6w23' --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "8iEQo72s", "namespace": "H0aRdcDl"}, "item": {"itemId": "DyGcsfIu", "itemSku": "I4Dv5lEJ", "itemType": "pK1AyRlz"}, "quantity": 37, "type": "ITEM"}], "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'FZivQOHG' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '6wVicNra' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'tsvvHLmI' --body '{"itemIdentityType": "ITEM_ID", "language": "Fn-MfeL", "productId": "iQMnutJb", "region": "pEo4mUNH", "type": "XBOX"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'tdml2xNv' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'iWacJc3F' --body '{"currencyCode": "m7Z548uu", "currencyNamespace": "KgoCBqS5", "discountedPrice": 40, "ext": {"IdCbwCee": {}}, "itemId": "q9ouEdDt", "language": "jOgsypLk", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 44, "quantity": 67, "region": "7Zm0gnYy", "returnUrl": "j6MXf9G1", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'tyebvoeH' 'enAALKt7' --login_with_auth "Bearer foo"
platform-get-user-order 'EfxIH446' 'oUnP2S74' --login_with_auth "Bearer foo"
platform-update-user-order-status 'unXwg0JK' 'qVWW1rjK' --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "pwkAvcsY"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'vbgfBVPp' 'Ta8Yuq7T' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'KiNXmz7e' 'MrMD5Tba' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'UxTCTng0' 'xjtdBrjs' --login_with_auth "Bearer foo"
platform-process-user-order-notification '3Kiykt2C' 'k2gOlSat' --body '{"additionalData": {"cardSummary": "ECZ2UgwQ"}, "authorisedTime": "1989-05-09T00:00:00Z", "chargebackReversedTime": "1985-05-13T00:00:00Z", "chargebackTime": "1996-12-19T00:00:00Z", "chargedTime": "1982-12-26T00:00:00Z", "createdTime": "1991-06-11T00:00:00Z", "currency": {"currencyCode": "VlBqirdp", "currencySymbol": "3yxnsETl", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "QudsjIhX"}, "customParameters": {"dxiSoWpn": {}}, "extOrderNo": "nxgX7BCP", "extTxId": "MqzQIxib", "extUserId": "hpNYsHtd", "issuedAt": "1984-10-02T00:00:00Z", "metadata": {"kjuaZqhJ": "ilrZkSSK"}, "namespace": "gP5rxCR7", "nonceStr": "7G9d5CA1", "paymentMethod": "GORSbL9n", "paymentMethodFee": 6, "paymentOrderNo": "bWDEupmd", "paymentProvider": "WXPAY", "paymentProviderFee": 82, "paymentStationUrl": "nNfBAcWA", "price": 35, "refundedTime": "1971-03-24T00:00:00Z", "salesTax": 57, "sandbox": false, "sku": "dHIZb03o", "status": "CHARGED", "statusReason": "qmBuS9V2", "subscriptionId": "pCZ23UHm", "subtotalPrice": 20, "targetNamespace": "0lpJ4JLl", "targetUserId": "01qi7L2o", "tax": 59, "totalPrice": 93, "totalTax": 28, "txEndTime": "1994-12-07T00:00:00Z", "type": "Ub39j22P", "userId": "4Sp09cKm", "vat": 19}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'RUbZVBVS' '7OK2Zrdc' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'sckMekRO' --body '{"currencyCode": "WZ2KUTqk", "currencyNamespace": "K2eFaGLo", "customParameters": {"SmEEPbLy": {}}, "description": "wJsyUie6", "extOrderNo": "fZgLllUP", "extUserId": "sO8lg46S", "itemType": "CODE", "language": "lWA", "metadata": {"DAOx0iJj": "Yleaktqv"}, "notifyUrl": "2WkljQuD", "omitNotification": false, "platform": "nJONqHGq", "price": 24, "recurringPaymentOrderNo": "B7mF2lMF", "region": "caghFXJI", "returnUrl": "JflRHFcs", "sandbox": true, "sku": "Cy4xDifS", "subscriptionId": "SQ5On2cc", "title": "Ecl3xeiO"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '4bwF5JOj' 'GoGxKM3q' --body '{"description": "Mce5tfLc"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'pjFZMKCb' --body '{"code": "p0pEbLCL", "orderNo": "FpHxMYF8"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '36075xEp' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'zdnYtpja' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '5ig2isQZ' --body '{"grantDays": 12, "itemId": "a6Vy76iz", "language": "PiQRjYa8", "reason": "fv5fIt22", "region": "tIZhjhgk", "source": "igW22zXM"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'WXfbcM0G' 'IALIbFCQ' --login_with_auth "Bearer foo"
platform-get-user-subscription 'gBcLNT6i' 'OQVYx5rW' --login_with_auth "Bearer foo"
platform-delete-user-subscription '2gMsI1aY' 'BitSn3UD' --login_with_auth "Bearer foo"
platform-cancel-subscription 'eKj97I4W' 'YXLqjN7k' --body '{"immediate": true, "reason": "OBTraBxW"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'RTVuYEqG' 'lKDwTKXB' --body '{"grantDays": 34, "reason": "XiQcd9IW"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '8kiCKeQJ' 'WZBvcq1E' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'TvWBxYZJ' 'h7B8gbnS' --body '{"additionalData": {"cardSummary": "u9M2OxD2"}, "authorisedTime": "1981-01-27T00:00:00Z", "chargebackReversedTime": "1971-02-04T00:00:00Z", "chargebackTime": "1996-04-26T00:00:00Z", "chargedTime": "1985-12-17T00:00:00Z", "createdTime": "1990-03-07T00:00:00Z", "currency": {"currencyCode": "y87CTqEQ", "currencySymbol": "Bg36my3s", "currencyType": "REAL", "decimals": 22, "namespace": "rDcain0c"}, "customParameters": {"OVF1zHwD": {}}, "extOrderNo": "TI0sJ1Q0", "extTxId": "kphMTggS", "extUserId": "P2SLcuAP", "issuedAt": "1981-08-11T00:00:00Z", "metadata": {"zw2nbg8C": "7Mvywhu6"}, "namespace": "MjOjuGzo", "nonceStr": "1Fz4tU0a", "paymentMethod": "Sn98N8qO", "paymentMethodFee": 92, "paymentOrderNo": "A0z92RaD", "paymentProvider": "ALIPAY", "paymentProviderFee": 27, "paymentStationUrl": "gT8LRQkM", "price": 26, "refundedTime": "1987-10-25T00:00:00Z", "salesTax": 49, "sandbox": true, "sku": "2mdYY6ZM", "status": "AUTHORISE_FAILED", "statusReason": "uTYTKsue", "subscriptionId": "48qBEBNA", "subtotalPrice": 95, "targetNamespace": "5BTe6ec1", "targetUserId": "zA92URCL", "tax": 89, "totalPrice": 64, "totalTax": 82, "txEndTime": "1977-12-12T00:00:00Z", "type": "BZWunHW7", "userId": "MYvr6QA7", "vat": 82}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'pepc92HA' '94eACdey' --body '{"count": 10, "orderNo": "UpgiPpf8"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'nxKJ3dnm' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'tPwa64Y4' 'gPEKMhhu' --login_with_auth "Bearer foo"
platform-credit-user-wallet '9a6f3xJN' 'tUlKLlII' --body '{"amount": 52, "expireAt": "1973-09-26T00:00:00Z", "origin": "Epic", "reason": "m5M6LsY1", "source": "REFUND"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'uIEcRls6' '8M3MPMRP' --body '{"amount": 54, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-sync-orders 'pyyMz6zf' 'R1pvTYYt' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["DOiEi4Ru"], "apiKey": "EcHCSGhp", "authoriseAsCapture": true, "blockedPaymentMethods": ["lwOiuKGD"], "clientKey": "FgK49YuK", "dropInSettings": "nXks0m8A", "liveEndpointUrlPrefix": "NrcRal7t", "merchantAccount": "a3fojA3h", "notificationHmacKey": "4MMW3AJ5", "notificationPassword": "zlsFBwjv", "notificationUsername": "LYvmg6av", "returnUrl": "udQFF1CP", "settings": "NY9u2dVY"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "dglOOoCe", "privateKey": "K0kPKmBq", "publicKey": "Vux3lXcD", "returnUrl": "8aertAVC"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "qs8XT8xy", "secretKey": "3nJ06Kks"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "eA0ARj9r", "clientSecret": "icfayvnh", "returnUrl": "i8MDdY4W", "webHookId": "LHoaUkYn"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["Qp5egdmV"], "publishableKey": "E8ImivNt", "secretKey": "QxqWRKHo", "webhookSecret": "hODoWOr9"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "8kjBUas9", "key": "jjz2Frgi", "mchid": "aGrcB7dI", "returnUrl": "OVKIPSJJ"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "Ho5W8tKH", "flowCompletionUrl": "8ou9Sdbx", "merchantId": 89, "projectId": 98, "projectSecretKey": "crEFCwqe"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'GNLdIBRd' --login_with_auth "Bearer foo"
platform-update-adyen-config 'liFQVMKE' --body '{"allowedPaymentMethods": ["zVUWlUWD"], "apiKey": "s2x1EQU0", "authoriseAsCapture": false, "blockedPaymentMethods": ["epEvcjaS"], "clientKey": "gEh6jJnF", "dropInSettings": "xinIHJ1o", "liveEndpointUrlPrefix": "7aq5Zznd", "merchantAccount": "5eacobTs", "notificationHmacKey": "uRlhreQV", "notificationPassword": "FID3o8hJ", "notificationUsername": "WVjKIOAw", "returnUrl": "70DvAHhS", "settings": "GWUvzq1Z"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'a3IBC4vQ' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'FsUJPfia' --body '{"appId": "Jp1rt7OB", "privateKey": "gBCe6N0e", "publicKey": "I65Mn5tn", "returnUrl": "gEYXgPVT"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id '5CqXDZBV' --login_with_auth "Bearer foo"
platform-update-checkout-config 'MJyJeKFO' --body '{"publicKey": "92YDtaZv", "secretKey": "JoKS0Oxy"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'ipZuO4N9' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'S2YCgHa6' --body '{"clientID": "XBcvGRYk", "clientSecret": "5rUtWHCn", "returnUrl": "hmzzppV7", "webHookId": "tKNKYUQV"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'BXymWcNl' --login_with_auth "Bearer foo"
platform-update-stripe-config 'HaFxYaGH' --body '{"allowedPaymentMethodTypes": ["UpmBFyOr"], "publishableKey": "FKtxGNAi", "secretKey": "0fq4xChP", "webhookSecret": "Ld2lOopc"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id '7XoVpdd6' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'rCpyMrnH' --body '{"appId": "9YHXh7Kn", "key": "CVOKY2zs", "mchid": "BRGtd8QY", "returnUrl": "2OLbijrv"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'fr8hknjW' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'UWdMUXHv' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'w4pNlGLj' --body '{"apiKey": "dBxLM079", "flowCompletionUrl": "pDAbTgms", "merchantId": 61, "projectId": 100, "projectSecretKey": "Eq2GkYK1"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'vYm9flXQ' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '7CQoemnQ' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "Dhkcu5vn", "region": "z6GiNMbo", "sandboxTaxJarApiToken": "BJHml0LJ", "specials": ["PAYPAL"], "taxJarApiToken": "pPi4mqhr", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'CZLGGP5U' --body '{"aggregate": "ADYEN", "namespace": "HNTMapp5", "region": "SbonsUJK", "sandboxTaxJarApiToken": "ADr60Ekd", "specials": ["XSOLLA"], "taxJarApiToken": "rpLsGt9y", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'MsHN7reI' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "22ks7I12", "taxJarApiToken": "tAZc8sxx", "taxJarEnabled": true, "taxJarProductCodesMapping": {"9XQeqNWL": "m8cNJbYH"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders '5J4WiJLv' '9NvHwtw2' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'Mjcy9ZL6' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'Zs5Bu2XY' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'opLWZeUK' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'JJNftRpG' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'gk1iseRE' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'zzRG6z9w' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["muHddyOd"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'ibI1LVyq' 'bdY8DGZK' --login_with_auth "Bearer foo"
platform-public-get-app 'AuoIKz3P' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'p3zLWUxM' --login_with_auth "Bearer foo"
platform-public-get-item 'zMtSmMmZ' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "P8nG0FoQ", "paymentProvider": "STRIPE", "returnUrl": "7aSsb85g", "ui": "Ah9RD3Zz", "zipCode": "N6N1iJ8l"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'tt9IRqCf' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'lgln6r5f' --login_with_auth "Bearer foo"
platform-pay '0s5H6lCf' --body '{"token": "3QHa11hL"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'LCgw5av4' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'XSOLLA' 'xdabD8g2' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'cvHfMRup' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'DA5xbjs3' 'XRdHUJ0G' 'XSOLLA' 'mflIXkgJ' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '6zkTwoak' 'STRIPE' --login_with_auth "Bearer foo"
platform-get-reward-by-code '7sEejFZ1' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'NtONXb9w' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id '9hsQHszI' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'sfrlzKpQ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'dd58dZP5' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'RvrinNtv' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'BtqFSkA6' --body '{"epicGamesJwtToken": "8mIVYJ5p"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'SVxBsLht' --body '{"serviceLabel": 48}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '3pecToXA' --body '{"appId": "4M1oUFPh", "steamId": "go7Z6mwN"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'C4FY69mM' --body '{"xstsToken": "87joJNOG"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'B83Ns6Hl' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '5Poab6lK' 'oVqNBUzI' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'xOfglquS' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id '2DoWr9zv' 'FtKa2mOA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'qOokV1pl' 'xQ2YriTP' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'fipD67jI' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '2hiZkrtL' 'nh2U1RQl' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'MxkfNMPN' 'tqv2TMz1' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'b7SnzkXO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'ek83Igm1' 'wkSWsYvA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'su18obUd' 'c8mbvXcw' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'cgMqOXMz' 'iXrVdsEc' --body '{"options": ["3ClFP3mJ"], "requestId": "wusCBTe4", "useCount": 20}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'LcuqL40N' --body '{"code": "YgekRavp", "language": "gt-ccYn-iw", "region": "3tjjCqPV"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'yYs01hEY' --body '{"excludeOldTransactions": true, "language": "QRC-xqbn", "productId": "3xfPaoZa", "receiptData": "WFspkU5k", "region": "n6PlPqD4", "transactionId": "AgfasBfc"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'lBhZjZbL' --body '{"epicGamesJwtToken": "nmghKwPy"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'VIn3qaHP' --body '{"autoAck": true, "language": "YF-PCAw", "orderId": "6T2xOOlj", "packageName": "n7c6c9ef", "productId": "JI02TZxr", "purchaseTime": 12, "purchaseToken": "LBFJEkph", "region": "Fz0h6Wpo"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'VpVc2HBB' --body '{"currencyCode": "mj6cEi02", "price": 0.11510456182876072, "productId": "l42ubCRf", "serviceLabel": 48}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement '4GjKn5It' --body '{"appId": "HXLDZqpR", "language": "QN", "region": "LuQOGMOE", "stadiaPlayerId": "zmdjNhT0"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'S46kqyfM' --body '{"appId": "BSaZc4SA", "currencyCode": "16M8gQCD", "language": "bh_nKFC_456", "price": 0.7699225056894315, "productId": "iTfjorLF", "region": "qTmIUFUo", "steamId": "onHBI13S"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'ZFHfm0F8' --body '{"gameId": "vS2BrZ3n", "language": "yss-fVvu", "region": "RXBGPXId"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'ft1biZHu' --body '{"currencyCode": "hWyFPHdX", "price": 0.03366542150694796, "productId": "vZEhYeUS", "xstsToken": "y5Ukc65n"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'aP11R8Xw' --login_with_auth "Bearer foo"
platform-public-create-user-order 'w9vq9nMa' --body '{"currencyCode": "2Btgwyuf", "discountedPrice": 11, "ext": {"jV30SLxi": {}}, "itemId": "7uyhaeFt", "language": "ox-Kted_189", "price": 17, "quantity": 60, "region": "6tHCr0GP", "returnUrl": "FvT0SAK9"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '1y5vCeBI' 'Jq0B9UcI' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '6c5cre9e' 'alHOZphc' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'Lncnjnmy' 'U8FSxXdC' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'rskoFqno' 'wq9Laz1G' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'Lt5Mhf8Z' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '7ahmbVPm' 'card' '7xAFfRRL' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'UjfWS9sf' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'tIfHGe5b' --body '{"currencyCode": "UTSXOv12", "itemId": "PMcRO6E2", "language": "KREQ-acPH", "region": "0fzjkPNN", "returnUrl": "S0BfgF6i", "source": "nIRsZ5hr"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'qNzVszGV' 'P5P1iwhc' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'f30C1KHR' 'ZHMGy5vb' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'fZvYIFFc' 'tEKOLxSR' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'xe0wmWBM' 'cNiWoobB' --body '{"immediate": false, "reason": "6alTQcP0"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'EpE9wGNV' 'wkgfJJ2H' --login_with_auth "Bearer foo"
platform-public-get-wallet 'IalfzgRp' 'Tf9lxF1J' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'PBizXZtr' 'Ge8LyOH2' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '4nneZHFe' --body '{"itemIds": ["Rld0bGA7"]}' --login_with_auth "Bearer foo"
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
echo "1..359"

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
    --body '{"context": {"item": {"appId": "JxWYzaEa", "appType": "DLC", "baseAppId": "mvokcWX5", "boothName": "9kwiYHgH", "boundItemIds": ["T6Ivd0fG"], "categoryPath": "pU209nVR", "clazz": "clumQTFv", "createdAt": "1979-05-19T00:00:00Z", "description": "RyYzaNmz", "displayOrder": 82, "entitlementType": "CONSUMABLE", "ext": {"Mx2T89NT": {}}, "features": ["rFRUCXFk"], "fresh": true, "images": [{"as": "uxegpkcX", "caption": "Cfzgcvv0", "height": 96, "imageUrl": "E5EQhcom", "smallImageUrl": "PS1E7cps", "width": 75}], "itemId": "gr2zEnjy", "itemIds": ["RNjEC3FM"], "itemQty": {"DcZvwwf8": 0}, "itemType": "SEASON", "language": "n31mF4jl", "listable": true, "localExt": {"KyGxTF1l": {}}, "longDescription": "5q1Np0sT", "maxCount": 99, "maxCountPerUser": 71, "name": "2eAWOzjm", "namespace": "h9UzIfnh", "optionBoxConfig": {"boxItems": [{"count": 29, "itemId": "o6xUmTle", "itemSku": "UnJFM7Xh"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 47, "comparison": "is", "name": "k2JSfZ64", "predicateType": "SeasonPassPredicate", "value": "WePq6103", "values": ["PONKIS7F"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 24, "fixedTrialCycles": 96, "graceDays": 87}, "region": "15tAsiG3", "regionData": [{"currencyCode": "1CEyUOuO", "currencyNamespace": "ZhmnHkve", "currencyType": "REAL", "discountAmount": 52, "discountExpireAt": "1971-03-26T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1977-04-25T00:00:00Z", "discountedPrice": 4, "expireAt": "1976-07-04T00:00:00Z", "price": 36, "purchaseAt": "1976-07-03T00:00:00Z", "trialPrice": 5}], "seasonType": "TIER", "sku": "IpV7mCYf", "stackable": false, "status": "INACTIVE", "tags": ["sQYsGyhE"], "targetCurrencyCode": "OntEkedM", "targetItemId": "1A0bFqvj", "targetNamespace": "xbT3YuVd", "thumbnailUrl": "aBN5RSjh", "title": "cjuDvNrX", "updatedAt": "1989-03-13T00:00:00Z", "useCount": 10}, "namespace": "h5tZ0hqJ", "order": {"currency": {"currencyCode": "LjQUmoYU", "currencySymbol": "nC849OBN", "currencyType": "VIRTUAL", "decimals": 75, "namespace": "ZtofGAAa"}, "ext": {"MpBQArU4": {}}, "free": true}, "source": "PURCHASE"}, "script": "5Qz5Vcyf", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'pHjtvFwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'SJyZeqvp' \
    --body '{"grantDays": "evcVXTxs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '9LTorIyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '23LhLy7d' \
    --body '{"grantDays": "s3g3BuHT"}' \
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
    --body '{"clazz": "PF19dBYF", "dryRun": true, "fulfillmentUrl": "s5Ya4eOw", "itemType": "EXTENSION", "purchaseConditionUrl": "W8HiLpTi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SEASON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'ccgM5kYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    '36JpTL55' \
    --body '{"clazz": "W4ws3KCy", "dryRun": false, "fulfillmentUrl": "lY1ocKDC", "purchaseConditionUrl": "VaqrVeeg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'T3uGDIIc' \
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
    --body '{"description": "vuuokt8T", "items": [{"extraSubscriptionDays": 57, "itemId": "38mYoUan", "itemName": "QT4Mmznv", "quantity": 34}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 38, "maxRedeemCountPerCodePerUser": 14, "maxSaleCount": 16, "name": "bgeCLX41", "redeemEnd": "1979-07-14T00:00:00Z", "redeemStart": "1991-03-05T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["8Wy739QH"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'w0TEzpd7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'TV5vhMM2' \
    --body '{"description": "i3DM6etf", "items": [{"extraSubscriptionDays": 69, "itemId": "7TzC3sKm", "itemName": "tsyEKdO6", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 78, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 50, "maxSaleCount": 65, "name": "u71qTSSJ", "redeemEnd": "1986-01-11T00:00:00Z", "redeemStart": "1995-03-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["9XOCA1X3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'HHMTlakA' \
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
    'WQfBuBAO' \
    --body '{"categoryPath": "CjBfYCcp", "localizationDisplayNames": {"lye2GaPN": "zkrgBH4i"}}' \
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
    'cml6L36V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'g2F2Q9aZ' \
    'DJg1OT81' \
    --body '{"localizationDisplayNames": {"09ot70Te": "vJgsb2Py"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'FfJ6qcHA' \
    'BdGtV9jA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'Pqon7UmL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'Ny9PkF9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'nlbWNcAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'v8uHDqJt' \
    --body '{"quantity": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'C7rznwNd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'LhqXvXVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'jvc0BMeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'JpW1Zeuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'pLX1BHZ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'hnOmmyXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    '6XtjNCqY' \
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
    --body '{"currencyCode": "k9TPUKcD", "currencySymbol": "TfR7dpUE", "currencyType": "REAL", "decimals": 80, "localizationDescriptions": {"e08HpeJB": "fG0nGZHe"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    '5lw2TlkP' \
    --body '{"localizationDescriptions": {"IxL9v4fp": "Cd0Uk5h1"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'kP1pkkT0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '8Cs6DdXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'WowBgZiz' \
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
    --body '{"data": [{"id": "MvwHszf8", "rewards": [{"currency": {"currencyCode": "4MAmayJJ", "namespace": "6vzDTXxs"}, "item": {"itemId": "yIaTgp0p", "itemSku": "wnEJL15k", "itemType": "xO4oVUPn"}, "quantity": 13, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"kI47jO1w": "uAFuZcUw"}}]}' \
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
    'PteKdQgU' \
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
    --body '{"bundleId": "TF33fYWZ", "password": "fQMAnziT"}' \
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
    --body '{"sandboxId": "haE2btn0"}' \
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
    --body '{"applicationName": "up9GeTQ7", "serviceAccountId": "XymDSQNY"}' \
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
    --body '{"data": [{"itemIdentity": "XNEpZyFh", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"qiNHtVSn": "hxby8F6x"}}]}' \
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
    --body '{"environment": "F8MhbJAY"}' \
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
    --body '{"appId": "EDN1xszp", "publisherAuthenticationKey": "pR69nsKA"}' \
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
    --body '{"clientId": "S5zKsTRX", "clientSecret": "d7b3v2fk", "organizationId": "ZIkr06oj"}' \
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
    --body '{"relyingPartyCert": "UtoVJLGX"}' \
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
    'ekomvwD8' \
    '49mo5vIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'DZYrYEf1' \
    'xYnlxHHX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'jFoXtwKW' \
    --body '{"categoryPath": "6AOnqnWC", "targetItemId": "uXMWqG8f", "targetNamespace": "NprJx82n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'AFexNou1' \
    --body '{"appId": "AicsQjKx", "appType": "DLC", "baseAppId": "etHEw0aC", "boothName": "QpU6EGOW", "categoryPath": "0VAI87DP", "clazz": "H0fLLiUq", "displayOrder": 51, "entitlementType": "CONSUMABLE", "ext": {"y0gET8T5": {}}, "features": ["3yEej7Ds"], "images": [{"as": "qsTvNKAX", "caption": "qfqMJHGe", "height": 67, "imageUrl": "aN2k1Eut", "smallImageUrl": "m9AAWDcD", "width": 42}], "itemIds": ["3ISBgZCA"], "itemQty": {"f2pWOWs4": 68}, "itemType": "CODE", "listable": false, "localizations": {"iu4HraKY": {"description": "MtgBmvCH", "localExt": {"MtF15a7T": {}}, "longDescription": "0IheywiP", "title": "E1WUR1PT"}}, "maxCount": 63, "maxCountPerUser": 10, "name": "JJ46kzfq", "optionBoxConfig": {"boxItems": [{"count": 0, "itemId": "pbByIKoY", "itemSku": "zYtTWJA3"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 57, "fixedTrialCycles": 59, "graceDays": 12}, "regionData": {"WOpz3yPQ": [{"currencyCode": "fqbeVG7i", "currencyNamespace": "4VTAhuFY", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1974-12-06T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1971-09-23T00:00:00Z", "discountedPrice": 27, "expireAt": "1975-03-30T00:00:00Z", "price": 59, "purchaseAt": "1990-03-15T00:00:00Z", "trialPrice": 13}]}, "seasonType": "TIER", "sku": "kBcQjQ56", "stackable": true, "status": "INACTIVE", "tags": ["vUlMWp8W"], "targetCurrencyCode": "GpZxCe0K", "targetNamespace": "smXtGBbK", "thumbnailUrl": "rV58TITh", "useCount": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '52PYNknB' \
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
    'Cjirw4hm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'fMSl2bET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'uFLFOfdl' \
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
    '0yRndbO7' \
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
    '8R8ybYsH' \
    --body '{"itemIds": ["x3BIgGuo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '817lZA58' \
    'OI2LMYRX' \
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
    '16nfCJ83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    '3JKRNcdp' \
    'uCxSDFWM' \
    --body '{"appId": "VcsOZlS0", "appType": "GAME", "baseAppId": "lerU61dr", "boothName": "wLngbZxO", "categoryPath": "GxFwnmB6", "clazz": "0ea7XItZ", "displayOrder": 88, "entitlementType": "DURABLE", "ext": {"9T604oPa": {}}, "features": ["jgyShKuL"], "images": [{"as": "B7pQLZiW", "caption": "Vmc8PVwS", "height": 14, "imageUrl": "VQz7FY3h", "smallImageUrl": "2oVVScVv", "width": 100}], "itemIds": ["TBM4teOp"], "itemQty": {"qevsWvMh": 17}, "itemType": "BUNDLE", "listable": false, "localizations": {"E2KM7Cta": {"description": "l5z7hLiO", "localExt": {"Yz1jFfu1": {}}, "longDescription": "y1d77D8Z", "title": "NOfHyenh"}}, "maxCount": 3, "maxCountPerUser": 87, "name": "Z4a9Ujjj", "optionBoxConfig": {"boxItems": [{"count": 93, "itemId": "0EggYLcG", "itemSku": "iEDZbDl9"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 62, "fixedTrialCycles": 14, "graceDays": 6}, "regionData": {"KDEfXRha": [{"currencyCode": "O0AYSqvc", "currencyNamespace": "V2LqfgCX", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1983-11-25T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-02-18T00:00:00Z", "discountedPrice": 58, "expireAt": "1988-11-09T00:00:00Z", "price": 80, "purchaseAt": "1986-11-01T00:00:00Z", "trialPrice": 39}]}, "seasonType": "PASS", "sku": "EtN4sEeb", "stackable": false, "status": "INACTIVE", "tags": ["cgaop5NE"], "targetCurrencyCode": "dhurScNi", "targetNamespace": "UxnJUewU", "thumbnailUrl": "VhkGRRTg", "useCount": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'Cb9evywZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'ywunLImN' \
    --body '{"count": 15, "orderNo": "yZsb7Yhh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'QbDxLRKx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'zUtpKDC8' \
    'gl2otjUW' \
    --body '{"carousel": [{"alt": "KxgW6n8A", "previewUrl": "JaeqxTPg", "thumbnailUrl": "ZKFi3SBG", "type": "image", "url": "CD4ig5ZR", "videoSource": "generic"}], "developer": "Jd1as1Wk", "forumUrl": "fh3l8HyG", "genres": ["Action"], "localizations": {"pmTxPUBF": {"announcement": "jTIIKcXl", "slogan": "xPfdDyjJ"}}, "platformRequirements": {"0wwrYelj": [{"additionals": "Myoeb3gs", "directXVersion": "MOMdqbt4", "diskSpace": "PnuFr18i", "graphics": "jp3Cmzrf", "label": "VIa1vi9o", "osVersion": "ky2P7fIg", "processor": "BRSBlxuk", "ram": "oOTCosjA", "soundCard": "Xo6ljBVW"}]}, "platforms": ["Linux"], "players": ["CrossPlatformMulti"], "primaryGenre": "RPG", "publisher": "NcVl6ZB3", "releaseDate": "1971-09-17T00:00:00Z", "websiteUrl": "HupBuAL2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'avXKOjwG' \
    'RJbZqXgQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    '9azOreTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'viZmgm0l' \
    '8Yr4wmgi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'wIF5Zx5T' \
    'IIhBtL3z' \
    'T6xRqyV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'tlLaMYL1' \
    'p95v9mOi' \
    'IFEdQ2RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'eQy2WRzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'R5qztuhV' \
    'aJDWx2Od' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 92, "comparison": "excludes", "name": "hcKGIOZc", "predicateType": "SeasonPassPredicate", "value": "6NWffXkY", "values": ["zes2xHp1"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'ufZNxhbs' \
    --body '{"orderNo": "aSFtTmbI"}' \
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
    --body '{"description": "f2hFQRms", "name": "i02melJQ", "status": "ACTIVE", "tags": ["LtV2QnPs"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
$PYTHON -m $MODULE 'platform-get-key-group-by-booth-name' \
    'mhFVPtJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetKeyGroupByBoothName' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'Gig12OdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'nxXuJoZg' \
    --body '{"description": "OG4tOeWV", "name": "MI9K1eJ6", "status": "INACTIVE", "tags": ["C2h6U8Tg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'R2k2RkEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '8XbmQNuv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '80Em9nuf' \
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
    'fLGUWnVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'QPhwwHR0' \
    --body '{"description": "qyfFcSCd"}' \
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
    --body '{"dryRun": false, "notifyUrl": "fe5eawFp", "privateKey": "dHeH5p8Z"}' \
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
    --body '{"currencyCode": "x8jy7nxG", "currencyNamespace": "zOTBpmmj", "customParameters": {"uEEEyDtw": {}}, "description": "btA8xsmm", "extOrderNo": "caOLdFif", "extUserId": "Uk9p700j", "itemType": "MEDIA", "language": "hP-ym", "metadata": {"0VkuqOKr": "hvMwvD04"}, "notifyUrl": "UY8ghvsm", "omitNotification": true, "platform": "rJzAi6FO", "price": 40, "recurringPaymentOrderNo": "hQIBAbup", "region": "1fpWsO6f", "returnUrl": "W468fWxq", "sandbox": false, "sku": "JDjfNhYD", "subscriptionId": "gVm0TCao", "targetNamespace": "s4wyjaPP", "targetUserId": "6ClekQGm", "title": "25KYmFZx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'Qr4xbV63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'gcdU4vyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'PJeRjCj7' \
    --body '{"extTxId": "UK5nEmws", "paymentMethod": "QtSfDqA4", "paymentProvider": "XSOLLA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'ysEX4VOy' \
    --body '{"description": "0n2EkPBj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'C4ecHwtS' \
    --body '{"amount": 64, "currencyCode": "zayUaDh3", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 99, "vat": 32}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'VPH2VHDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetPaymentOrderChargeStatus' test.out

#- 133 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'GetPlatformWalletConfig' test.out

#- 134 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["GooglePlay"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "DkQ8zpNR", "eventTopic": "wycEAShp", "maxAwarded": 63, "maxAwardedPerUser": 74, "namespaceExpression": "pqAx1N5I", "rewardCode": "GebNuvyr", "rewardConditions": [{"condition": "ghVdsSwD", "conditionName": "c9NJRX9Z", "eventName": "daC8sja1", "rewardItems": [{"duration": 70, "itemId": "7eucGSSx", "quantity": 71}]}], "userIdExpression": "Pto04wTE"}' \
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
    'False' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'sXmyAGW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'rZ7bYvVW' \
    --body '{"description": "26Oaysx7", "eventTopic": "2rwV3MdX", "maxAwarded": 78, "maxAwardedPerUser": 95, "namespaceExpression": "RDzT2sBb", "rewardCode": "flg7cD24", "rewardConditions": [{"condition": "7c1XYYJf", "conditionName": "18StYu6w", "eventName": "b2We3Q6P", "rewardItems": [{"duration": 24, "itemId": "7RBkqWDP", "quantity": 61}]}], "userIdExpression": "P4CWnZJj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'XdiUv9ow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'F1mQrc03' \
    --body '{"payload": {"W7oOdpY5": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'ZJChQtpD' \
    --body '{"conditionName": "2U9IQzA2", "userId": "eexjq3Tf"}' \
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
    --body '{"defaultLanguage": "nJ6ryQ4w", "defaultRegion": "Cg5Itn9T", "description": "YOR2n8qF", "supportedLanguages": ["jjSZx0Fe"], "supportedRegions": ["RdmgOta6"], "title": "pcKzSPfe"}' \
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
    'k369fIM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'tcxwt2Xq' \
    --body '{"defaultLanguage": "PFaIxBgz", "defaultRegion": "RO8GKycd", "description": "cXuULpvu", "supportedLanguages": ["BNRzUbH0"], "supportedRegions": ["hI7yCEyj"], "title": "KXQPnomA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'sHMpmDvt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '4tkWavQ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'jo17Qq6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'FdE7URb1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    '9BcvWfPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'HPQaUCly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'AjfGkGwD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'soo09NdZ' \
    'jNjjtl8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'IGZV3GBX' \
    'IHxWGX4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'wwHLohaK' \
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
    'vD9nNeLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '2tRrclM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'o5FmkWcI' \
    --body '{"orderNo": "pWlbLNxQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'ciSm2Obi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'acE1VtVP' \
    --body '{"count": 49, "orderNo": "WKB3dhO4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'E5cHbV6T' \
    --body '{"achievements": [{"id": "q3makniW", "value": 65}], "steamUserId": "9AtaznHr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'mvF1mJZ3' \
    'dLFxAkQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'sQXCUjnX' \
    --body '{"achievements": [{"id": "NZpacdMf", "percentComplete": 98}], "serviceConfigId": "6X3Zta5m", "titleId": "sSId556x", "xboxUserId": "ncCH37zo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'QElCSNpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'YpjKmIIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '0iBSA7vd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'LvUFJ7qN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '6ucqfJth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    '42FD6A3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'chLvxRuU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'LxDjXJ9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'FwEyGUCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'QueryUserEntitlements' test.out

#- 183 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '8O9EBlPm' \
    --body '[{"endDate": "1986-11-12T00:00:00Z", "grantedCode": "b7inSCGz", "itemId": "NuHpABtt", "itemNamespace": "9GgpAZjc", "language": "ZC_CIdg_KN", "quantity": 12, "region": "UCWs5b2f", "source": "IAP", "startDate": "1984-04-18T00:00:00Z", "storeId": "rsypCRQf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GrantUserEntitlement' test.out

#- 184 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'PhfO9Eam' \
    'ej28Jum6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GetUserAppEntitlementByAppId' test.out

#- 185 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'vaoBRuMF' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'QueryUserEntitlementsByAppType' test.out

#- 186 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Zvy6mJ2j' \
    'HxdpqHuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserEntitlementByItemId' test.out

#- 187 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'ibSpyFVn' \
    'kERZ9gwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementBySku' test.out

#- 188 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'M0hF50v8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ExistsAnyUserActiveEntitlement' test.out

#- 189 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'sFHE2trW' \
    '["2mRr4XS8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 190 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'ek4IK6AP' \
    'TpbukLGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 191 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '4HJ51V5D' \
    'd7JZjCvo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserEntitlementOwnershipByItemId' test.out

#- 192 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'Cnb0By8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserEntitlementOwnershipByItemIds' test.out

#- 193 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'bfDbnZRa' \
    'sK3D9LYj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipBySku' test.out

#- 194 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    '8f7kb4sU' \
    '5W5wrnCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'RevokeUserEntitlements' test.out

#- 195 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '7OGhuPV9' \
    '8XUYE5mm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlement' test.out

#- 196 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '7bHElXpN' \
    'GEUuLY9N' \
    --body '{"endDate": "1981-02-02T00:00:00Z", "nullFieldList": ["lzdmX7gz"], "startDate": "1972-03-16T00:00:00Z", "status": "REVOKED", "useCount": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'UpdateUserEntitlement' test.out

#- 197 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '8HpJ3j7L' \
    'yGDuYXVu' \
    --body '{"options": ["rnW5P0Zs"], "requestId": "13FtOvKL", "useCount": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'ConsumeUserEntitlement' test.out

#- 198 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'S8Iq1rRN' \
    'yHR1S2ZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'DisableUserEntitlement' test.out

#- 199 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'IC8uvkyF' \
    'CMKBFVFM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'EnableUserEntitlement' test.out

#- 200 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'D8RmFR37' \
    'lij05gCb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementHistories' test.out

#- 201 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'gx9wKmx7' \
    'cjHqzVYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RevokeUserEntitlement' test.out

#- 202 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    't0cmkvni' \
    --body '{"duration": 35, "endDate": "1975-02-22T00:00:00Z", "itemId": "djwdDLkv", "itemSku": "0pxwrYjQ", "language": "08MafjV6", "order": {"currency": {"currencyCode": "ihDDPn2U", "currencySymbol": "ODE5C6wj", "currencyType": "VIRTUAL", "decimals": 45, "namespace": "XS6QpnJB"}, "ext": {"Ezx6dWqA": {}}, "free": false}, "orderNo": "1nDSpnpv", "origin": "Steam", "quantity": 40, "region": "DbIzKZsy", "source": "REFERRAL_BONUS", "startDate": "1995-10-10T00:00:00Z", "storeId": "JkbGq2cf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'FulfillItem' test.out

#- 203 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '2RYx5T5v' \
    --body '{"code": "YIU38uD0", "language": "MGU-BHfz", "region": "69C0WjiF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RedeemCode' test.out

#- 204 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'zSiMY3Ws' \
    --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "ISxHT2n4", "namespace": "vzccwccB"}, "item": {"itemId": "ELwGw2Mt", "itemSku": "zYXVSOad", "itemType": "f8DmjQPL"}, "quantity": 42, "type": "ITEM"}], "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillRewards' test.out

#- 205 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'ZEieujw5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QueryUserIAPOrders' test.out

#- 206 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'qBkdlvUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'QueryAllUserIAPOrders' test.out

#- 207 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'TavaEgxU' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "pt_AahQ", "productId": "WYY25XBu", "region": "cG9pj0lv", "type": "TWITCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'MockFulfillIAPItem' test.out

#- 208 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'm79JifAI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryUserOrders' test.out

#- 209 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'ygeL9jOJ' \
    --body '{"currencyCode": "QAmjxPLa", "currencyNamespace": "TrFO9wj0", "discountedPrice": 20, "ext": {"9J7zQlxT": {}}, "itemId": "M4wAbIaB", "language": "JF8VQfE9", "options": {"skipPriceValidation": false}, "platform": "Steam", "price": 62, "quantity": 46, "region": "sEcwU3hI", "returnUrl": "nPH6WGHo", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminCreateUserOrder' test.out

#- 210 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'uXx6HZKN' \
    '3M9BmHlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'CountOfPurchasedItem' test.out

#- 211 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'EbsM2Oxv' \
    'kKm55nGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserOrder' test.out

#- 212 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'L82Wnens' \
    'ZA4XqDpc' \
    --body '{"status": "REFUNDING", "statusReason": "Jf1z35hD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'UpdateUserOrderStatus' test.out

#- 213 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'EAI2t0br' \
    'iD5LIWth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'FulfillUserOrder' test.out

#- 214 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'O7lSGEhw' \
    'whO3BEqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrderGrant' test.out

#- 215 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '64jTipoj' \
    'GJpQoqR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetUserOrderHistories' test.out

#- 216 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '7zyvGfBw' \
    'IwUb2vXO' \
    --body '{"additionalData": {"cardSummary": "g1Nyvf3E"}, "authorisedTime": "1998-01-28T00:00:00Z", "chargebackReversedTime": "1984-12-22T00:00:00Z", "chargebackTime": "1999-04-18T00:00:00Z", "chargedTime": "1988-02-12T00:00:00Z", "createdTime": "1978-12-05T00:00:00Z", "currency": {"currencyCode": "wWGai76y", "currencySymbol": "tXQXBCHd", "currencyType": "REAL", "decimals": 34, "namespace": "m4ewy1Dq"}, "customParameters": {"BG8JjZFe": {}}, "extOrderNo": "tBdgq9tn", "extTxId": "IAcoMWKJ", "extUserId": "ZMKj9kmx", "issuedAt": "1978-10-13T00:00:00Z", "metadata": {"38efuUGZ": "B9jaeWRz"}, "namespace": "lsDdiuR6", "nonceStr": "RZDT5q7Y", "paymentMethod": "cCkB6eLu", "paymentMethodFee": 50, "paymentOrderNo": "sPaXohAv", "paymentProvider": "STRIPE", "paymentProviderFee": 28, "paymentStationUrl": "QYbofyTg", "price": 72, "refundedTime": "1979-06-09T00:00:00Z", "salesTax": 41, "sandbox": true, "sku": "bCF9DcEV", "status": "REFUND_FAILED", "statusReason": "D004RRxW", "subscriptionId": "aBiyCKBs", "subtotalPrice": 47, "targetNamespace": "KfO0QMZp", "targetUserId": "BpvQuO9P", "tax": 54, "totalPrice": 95, "totalTax": 10, "txEndTime": "1994-04-10T00:00:00Z", "type": "3ZgcThlx", "userId": "4DM5MJ2P", "vat": 5}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'ProcessUserOrderNotification' test.out

#- 217 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '8bulwqLy' \
    'hFMeCxvR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'DownloadUserOrderReceipt' test.out

#- 218 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'HmTK6J8P' \
    --body '{"currencyCode": "rk4dhQH6", "currencyNamespace": "2tYAMHu9", "customParameters": {"63tuVtmj": {}}, "description": "atnR06xD", "extOrderNo": "Ns2SWbI1", "extUserId": "hXVOD0eA", "itemType": "SEASON", "language": "npF_jtDn", "metadata": {"leWvsff1": "vwfz6XV9"}, "notifyUrl": "5AYceo0e", "omitNotification": false, "platform": "cB0xtL3j", "price": 62, "recurringPaymentOrderNo": "ZOELdLmY", "region": "KsPGmuAI", "returnUrl": "xJmj3UDv", "sandbox": false, "sku": "GLoAUPH7", "subscriptionId": "SjrEfcuD", "title": "TSj7rQ9b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'CreateUserPaymentOrder' test.out

#- 219 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'tDnwEzMs' \
    'ielcjxQj' \
    --body '{"description": "MfclMXOz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'RefundUserPaymentOrder' test.out

#- 220 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '5zBKrt8b' \
    --body '{"code": "OHGp5P78", "orderNo": "hLDgFeSh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'ApplyUserRedemption' test.out

#- 221 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '6EnKHynF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QueryUserSubscriptions' test.out

#- 222 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'XOH8gKVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserSubscriptionActivities' test.out

#- 223 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'K1fcIlMK' \
    --body '{"grantDays": 80, "itemId": "lq53upI4", "language": "Hja15XYv", "reason": "f51zcBd5", "region": "rD2Wuo6H", "source": "rr2NbYUJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'PlatformSubscribeSubscription' test.out

#- 224 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'GZiJejef' \
    'FKsLszYG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 225 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'FlWNm21v' \
    '93bvhuxp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscription' test.out

#- 226 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'nWueDoXq' \
    'ziW0pPTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'DeleteUserSubscription' test.out

#- 227 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'lfM7OLcw' \
    'hNQ0ISPj' \
    --body '{"immediate": true, "reason": "5wYj4TNo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CancelSubscription' test.out

#- 228 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'MAawH8QD' \
    'HVdTqEMl' \
    --body '{"grantDays": 62, "reason": "2AUpohDi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GrantDaysToSubscription' test.out

#- 229 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'AhJuGjwV' \
    'ionKlaCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserSubscriptionBillingHistories' test.out

#- 230 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'O0i06kgI' \
    'wCrEgelT' \
    --body '{"additionalData": {"cardSummary": "8zVC1YeU"}, "authorisedTime": "1983-09-25T00:00:00Z", "chargebackReversedTime": "1971-05-11T00:00:00Z", "chargebackTime": "1992-07-02T00:00:00Z", "chargedTime": "1977-03-01T00:00:00Z", "createdTime": "1982-01-25T00:00:00Z", "currency": {"currencyCode": "575JhR80", "currencySymbol": "UC9RFvtx", "currencyType": "VIRTUAL", "decimals": 77, "namespace": "fwnQfvyX"}, "customParameters": {"L00wCE65": {}}, "extOrderNo": "MfNt8OIy", "extTxId": "8S0YmPqh", "extUserId": "1yYYw5Dg", "issuedAt": "1979-12-30T00:00:00Z", "metadata": {"zS93flME": "y3MrRfCD"}, "namespace": "tYmnBmWW", "nonceStr": "soEqxMV2", "paymentMethod": "3JYjtET8", "paymentMethodFee": 81, "paymentOrderNo": "ONm1ccFA", "paymentProvider": "ALIPAY", "paymentProviderFee": 78, "paymentStationUrl": "hEAGDA9k", "price": 80, "refundedTime": "1988-11-22T00:00:00Z", "salesTax": 1, "sandbox": true, "sku": "wJXieA6P", "status": "REFUNDED", "statusReason": "yI4ZD8ZA", "subscriptionId": "LgmNweJp", "subtotalPrice": 30, "targetNamespace": "m1WA5zpz", "targetUserId": "KWyKNzBo", "tax": 74, "totalPrice": 60, "totalTax": 85, "txEndTime": "1998-12-23T00:00:00Z", "type": "eNMSNNex", "userId": "5dlwul2q", "vat": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserSubscriptionNotification' test.out

#- 231 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'fwy74gW8' \
    'E4cHgyXC' \
    --body '{"count": 62, "orderNo": "X94MtRGG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AcquireUserTicket' test.out

#- 232 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'L68tek2U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'QueryUserCurrencyWallets' test.out

#- 233 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'NjsgQKca' \
    '6OwZuwyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'ListUserCurrencyTransactions' test.out

#- 234 CheckWallet
eval_tap 0 234 'CheckWallet # SKIP deprecated' test.out

#- 235 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'kSQhtXEM' \
    'am6Ib7k8' \
    --body '{"amount": 4, "expireAt": "1988-02-24T00:00:00Z", "origin": "IOS", "reason": "eApHrsu9", "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'CreditUserWallet' test.out

#- 236 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'ZjjbdrzA' \
    'TuLeuen9' \
    --body '{"amount": 86, "walletPlatform": "IOS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'PayWithUserWallet' test.out

#- 237 GetUserWallet
eval_tap 0 237 'GetUserWallet # SKIP deprecated' test.out

#- 238 DebitUserWallet
eval_tap 0 238 'DebitUserWallet # SKIP deprecated' test.out

#- 239 DisableUserWallet
eval_tap 0 239 'DisableUserWallet # SKIP deprecated' test.out

#- 240 EnableUserWallet
eval_tap 0 240 'EnableUserWallet # SKIP deprecated' test.out

#- 241 ListUserWalletTransactions
eval_tap 0 241 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 242 QueryWallets
eval_tap 0 242 'QueryWallets # SKIP deprecated' test.out

#- 243 GetWallet
eval_tap 0 243 'GetWallet # SKIP deprecated' test.out

#- 244 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'VpH8Acac' \
    'lJ9CLnaY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'SyncOrders' test.out

#- 245 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["pzlQ2x3E"], "apiKey": "nMj99gEy", "authoriseAsCapture": true, "blockedPaymentMethods": ["9nZidlJ6"], "clientKey": "t4AmHiTu", "dropInSettings": "je6S87De", "liveEndpointUrlPrefix": "PRQBjep2", "merchantAccount": "Is3ANmYm", "notificationHmacKey": "XhUrICHQ", "notificationPassword": "1TrmIdK8", "notificationUsername": "DmYPF6gp", "returnUrl": "PJK9qL0E", "settings": "mqezbFm0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'TestAdyenConfig' test.out

#- 246 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "Y5OsHaOO", "privateKey": "yB4Kp7hz", "publicKey": "U9HaTyWF", "returnUrl": "QlLw8K5e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'TestAliPayConfig' test.out

#- 247 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "orxH1KFu", "secretKey": "EYygH2i0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'TestCheckoutConfig' test.out

#- 248 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'DebugMatchedPaymentMerchantConfig' test.out

#- 249 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "CbngOhbn", "clientSecret": "r1dAwa0f", "returnUrl": "9bDmasQw", "webHookId": "UImnIPZ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestPayPalConfig' test.out

#- 250 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["s9WLUOBr"], "publishableKey": "8ZsOMLNA", "secretKey": "3BJ6xnFt", "webhookSecret": "srdJPTHS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestStripeConfig' test.out

#- 251 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "CY5CUxUo", "key": "bAtEeZgY", "mchid": "wX4AxnhD", "returnUrl": "De36HMeS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'TestWxPayConfig' test.out

#- 252 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "dRZdfbGU", "flowCompletionUrl": "CViBiK43", "merchantId": 89, "projectId": 67, "projectSecretKey": "BqN3FrZ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestXsollaConfig' test.out

#- 253 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    '7sTWO1j8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetPaymentMerchantConfig' test.out

#- 254 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'CNGKXB1P' \
    --body '{"allowedPaymentMethods": ["Hd0dAJRM"], "apiKey": "q4Xl4dhR", "authoriseAsCapture": false, "blockedPaymentMethods": ["jEOdEWLJ"], "clientKey": "wo4jNJYK", "dropInSettings": "gGYPryjv", "liveEndpointUrlPrefix": "sOPgnUW9", "merchantAccount": "TYFxn34w", "notificationHmacKey": "V03oJwyC", "notificationPassword": "XdXlDay1", "notificationUsername": "d5wzQ8Mi", "returnUrl": "5e6YQR2j", "settings": "2NwEyTQq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'UpdateAdyenConfig' test.out

#- 255 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'kypjj3GN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'TestAdyenConfigById' test.out

#- 256 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Mz7FCius' \
    --body '{"appId": "iVRT3F9T", "privateKey": "4nWFoOAW", "publicKey": "pCJKnXYo", "returnUrl": "8etpjdAx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'UpdateAliPayConfig' test.out

#- 257 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'IszZC3Lj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'TestAliPayConfigById' test.out

#- 258 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '7ourPcaz' \
    --body '{"publicKey": "nSH2Cxs5", "secretKey": "k0AiVIvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'UpdateCheckoutConfig' test.out

#- 259 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'ckJ4UyHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'TestCheckoutConfigById' test.out

#- 260 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'QuSmRQBG' \
    --body '{"clientID": "DNgfJbtT", "clientSecret": "26RB4dll", "returnUrl": "AOyAlx2p", "webHookId": "zgH47Jmh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'UpdatePayPalConfig' test.out

#- 261 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '8F9rVlUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'TestPayPalConfigById' test.out

#- 262 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'hh6OgcWF' \
    --body '{"allowedPaymentMethodTypes": ["oDkYwud3"], "publishableKey": "hXXT8cAM", "secretKey": "MjFUukAb", "webhookSecret": "WMlmoskP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'UpdateStripeConfig' test.out

#- 263 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'fZlnfHna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'TestStripeConfigById' test.out

#- 264 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '8npNIaZA' \
    --body '{"appId": "6bGj3weT", "key": "lX2frnV4", "mchid": "SnI56iSa", "returnUrl": "mKfvoBCN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'UpdateWxPayConfig' test.out

#- 265 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'AFlc2UDr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateWxPayConfigCert' test.out

#- 266 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'xciFB3t7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestWxPayConfigById' test.out

#- 267 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'Su887Ey5' \
    --body '{"apiKey": "S3EsksPu", "flowCompletionUrl": "sIsdtH5n", "merchantId": 58, "projectId": 48, "projectSecretKey": "Vn0dADUF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'UpdateXsollaConfig' test.out

#- 268 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'dsq2oLRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'TestXsollaConfigById' test.out

#- 269 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'IgberqiA' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdateXsollaUIConfig' test.out

#- 270 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'QueryPaymentProviderConfig' test.out

#- 271 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "eOBBV9k4", "region": "9IeIHNjk", "sandboxTaxJarApiToken": "ojdAdy9C", "specials": ["XSOLLA"], "taxJarApiToken": "Cc6KWWGr", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'CreatePaymentProviderConfig' test.out

#- 272 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetAggregatePaymentProviders' test.out

#- 273 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'DebugMatchedPaymentProviderConfig' test.out

#- 274 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetSpecialPaymentProviders' test.out

#- 275 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'NoAWv2gX' \
    --body '{"aggregate": "ADYEN", "namespace": "lmz4qzOr", "region": "sRps4NnG", "sandboxTaxJarApiToken": "GxfLzGbm", "specials": ["CHECKOUT"], "taxJarApiToken": "b8usTL87", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdatePaymentProviderConfig' test.out

#- 276 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'qN6Kf3uB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DeletePaymentProviderConfig' test.out

#- 277 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetPaymentTaxConfig' test.out

#- 278 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "7RkoHPcl", "taxJarApiToken": "OsJaD4Rb", "taxJarEnabled": true, "taxJarProductCodesMapping": {"nsf4H98g": "jXlNYVv6"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentTaxConfig' test.out

#- 279 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'BjfSEeqt' \
    'MeNJSNg3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'SyncPaymentOrders' test.out

#- 280 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetRootCategories' test.out

#- 281 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'DownloadCategories' test.out

#- 282 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'AJJU1oQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCategory' test.out

#- 283 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'LDQsMpjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetChildCategories' test.out

#- 284 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'BKWrShZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetDescendantCategories' test.out

#- 285 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicListCurrencies' test.out

#- 286 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'ZYP6m3rq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetItemByAppId' test.out

#- 287 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicQueryItems' test.out

#- 288 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'G4IPMsbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicGetItemBySku' test.out

#- 289 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'zDZ1nbgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicBulkGetItems' test.out

#- 290 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["D5OViuZa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicValidateItemPurchaseCondition' test.out

#- 291 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'I7Jv2evn' \
    'HbcDM73D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchItems' test.out

#- 292 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'kqohzhIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetApp' test.out

#- 293 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'jwDfIe7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetItemDynamicData' test.out

#- 294 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'oslK0BMQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetItem' test.out

#- 295 GetPaymentCustomization
eval_tap 0 295 'GetPaymentCustomization # SKIP deprecated' test.out

#- 296 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "F7VvTIqM", "paymentProvider": "WXPAY", "returnUrl": "jCCBKnPi", "ui": "4rFNHcvC", "zipCode": "KN66VCNA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetPaymentUrl' test.out

#- 297 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'ThE5WzjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetPaymentMethods' test.out

#- 298 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'hyLOQJxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetUnpaidPaymentOrder' test.out

#- 299 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'bExCczwh' \
    --body '{"token": "RoWp6lku"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'Pay' test.out

#- 300 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'HP8buZiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicCheckPaymentOrderPaidStatus' test.out

#- 301 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'PAYPAL' \
    'QR4AtntP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'GetPaymentPublicConfig' test.out

#- 302 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'ilLE8i8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetQRCode' test.out

#- 303 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'PrA5PyjR' \
    'z6eP98It' \
    'STRIPE' \
    'gopWhLj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicNormalizePaymentReturnUrl' test.out

#- 304 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'tZDX9fbQ' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentTaxValue' test.out

#- 305 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'YktQpmvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'GetRewardByCode' test.out

#- 306 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'QueryRewards1' test.out

#- 307 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'cWdRdhZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetReward1' test.out

#- 308 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicListStores' test.out

#- 309 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicExistsAnyMyActiveEntitlement' test.out

#- 310 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'Kj6MACiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 311 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'fnGqyyq7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 312 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'F9aCoZst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 313 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetEntitlementOwnershipToken' test.out

#- 314 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'PAUCl2eC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyWallet' test.out

#- 315 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'y6xDIxbz' \
    --body '{"epicGamesJwtToken": "IRjsgW7q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'SyncEpicGameDLC' test.out

#- 316 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'JKLGYvWQ' \
    --body '{"serviceLabel": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicSyncPsnDlcInventory' test.out

#- 317 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    '9y9ULje9' \
    --body '{"appId": "SYEdqFTD", "steamId": "jabG5HAu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'SyncSteamDLC' test.out

#- 318 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'fl1c4Sh7' \
    --body '{"xstsToken": "xcc4KF44"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncXboxDLC' test.out

#- 319 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'Gsn5ewnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicQueryUserEntitlements' test.out

#- 320 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'n49JNf4B' \
    '4LTFAbVq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetUserAppEntitlementByAppId' test.out

#- 321 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'pd5OiYOU' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicQueryUserEntitlementsByAppType' test.out

#- 322 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'HEDiDw1O' \
    'GoQx3PQm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserEntitlementByItemId' test.out

#- 323 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'Ye1qncZK' \
    'QgFGrSQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserEntitlementBySku' test.out

#- 324 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'TT6PWqs6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicExistsAnyUserActiveEntitlement' test.out

#- 325 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'TNpk09Jn' \
    'Lu8mQz6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 326 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'uRB8ETD3' \
    'HQirZLaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 327 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'MQtU4oyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 328 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'kCIhkMis' \
    'oOPhEeg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 329 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'R71nKBYT' \
    '1IjDPnTh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserEntitlement' test.out

#- 330 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'UOAIPTVY' \
    'rucqWKPI' \
    --body '{"options": ["Zt5yavha"], "requestId": "wVxoxYEg", "useCount": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicConsumeUserEntitlement' test.out

#- 331 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'xxxYhtVu' \
    --body '{"code": "okjxPn7c", "language": "Vle-ynFD-OA", "region": "dXhWin1N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicRedeemCode' test.out

#- 332 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'h6x6Bmif' \
    --body '{"excludeOldTransactions": true, "language": "TxH_tmej", "productId": "cHhH6KJx", "receiptData": "jLE1q2Wa", "region": "IU35r91O", "transactionId": "zKJ72ArV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicFulfillAppleIAPItem' test.out

#- 333 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Z9sKYMvN' \
    --body '{"epicGamesJwtToken": "cSBzlOZY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'SyncEpicGamesInventory' test.out

#- 334 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'szWZKRbD' \
    --body '{"autoAck": true, "language": "Aq", "orderId": "1pax9HYK", "packageName": "xpJKcaTA", "productId": "7WKun0r5", "purchaseTime": 75, "purchaseToken": "18Eu2XZt", "region": "tabV1rW5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicFulfillGoogleIAPItem' test.out

#- 335 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '5tquIV3h' \
    --body '{"currencyCode": "86PKV7t0", "price": 0.7677810042688081, "productId": "ZH4j3CPi", "serviceLabel": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicReconcilePlayStationStore' test.out

#- 336 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'TJBsz9lO' \
    --body '{"appId": "ZT6fcoT4", "language": "EoiS-MA", "region": "fYQzNu1Q", "stadiaPlayerId": "RfRdqsx3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncStadiaEntitlement' test.out

#- 337 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'tCuZEy2Q' \
    --body '{"appId": "FHaqVkSv", "currencyCode": "z7effH0K", "language": "SZq-815", "price": 0.568736282194978, "productId": "WVbPVRKH", "region": "S2NibIlE", "steamId": "cVVgRmbb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'SyncSteamInventory' test.out

#- 338 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'GV9g8IGQ' \
    --body '{"gameId": "zVPQjRBb", "language": "Wo-soQq", "region": "LjAZM5z0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'SyncTwitchDropsEntitlement' test.out

#- 339 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'I03Uz8o4' \
    --body '{"currencyCode": "UMy3n5mQ", "price": 0.09230669050466944, "productId": "JnvzCyX5", "xstsToken": "g6KmVvOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncXboxInventory' test.out

#- 340 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'GdfwNtsN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicQueryUserOrders' test.out

#- 341 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'U2MJZYO6' \
    --body '{"currencyCode": "kojew8Lg", "discountedPrice": 61, "ext": {"0hRyw2fy": {}}, "itemId": "o14fSAuc", "language": "IGZR-ujOr", "price": 42, "quantity": 76, "region": "3L0i4GfR", "returnUrl": "DpIMIEvY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicCreateUserOrder' test.out

#- 342 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'vanXfPq6' \
    'rigLUigE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserOrder' test.out

#- 343 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'ocyK48iV' \
    '7D3cZPJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicCancelUserOrder' test.out

#- 344 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'tOR25NRH' \
    'vTpYpCVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserOrderHistories' test.out

#- 345 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'x7EmUWLX' \
    '8aKQUVHr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicDownloadUserOrderReceipt' test.out

#- 346 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'NkvPdMcx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetPaymentAccounts' test.out

#- 347 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'ywmJDXL6' \
    'card' \
    'cjO0b4KS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicDeletePaymentAccount' test.out

#- 348 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'HSRi7M9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicQueryUserSubscriptions' test.out

#- 349 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'llRmdQjH' \
    --body '{"currencyCode": "nGq8jdUM", "itemId": "3MEJSffJ", "language": "xTjJ", "region": "zd1lXbSd", "returnUrl": "6TYZ8V9H", "source": "uJQs1dUP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicSubscribeSubscription' test.out

#- 350 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'VMp7RhqK' \
    '5QyrjUrB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 351 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'Fjlhwrwa' \
    'EUhIxf23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserSubscription' test.out

#- 352 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'aBgO9VlK' \
    'TX0Fk2Ii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicChangeSubscriptionBillingAccount' test.out

#- 353 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '9qZml7HJ' \
    'PveMDr8z' \
    --body '{"immediate": false, "reason": "tFxZErVw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicCancelSubscription' test.out

#- 354 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '9VpY6Enj' \
    '6VY2DHG2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUserSubscriptionBillingHistories' test.out

#- 355 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'kFEX3jBX' \
    'K1MxD3xV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetWallet' test.out

#- 356 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'spAMcu1Q' \
    'yavkIRTO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicListUserWalletTransactions' test.out

#- 357 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'QueryItems1' test.out

#- 358 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'ImportStore1' test.out

#- 359 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'g3ENQpLP' \
    --body '{"itemIds": ["tc3kSpWG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
