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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "GOud50JG", "appType": "SOFTWARE", "baseAppId": "WleCiDcB", "boothName": "VLnZhXxo", "boundItemIds": ["WwLurCdo", "Op6wZO8g", "2tAE4UD3"], "categoryPath": "XEemirEy", "clazz": "r2EpxYl9", "createdAt": "1980-12-09T00:00:00Z", "description": "oL05z2XK", "displayOrder": 31, "entitlementType": "DURABLE", "ext": {"oVf7SIDE": {}, "37mo2JRr": {}, "em5Eaeqv": {}}, "features": ["hfaHWZZL", "O6xF5OCY", "MxF2J0M7"], "fresh": false, "images": [{"as": "MebwfJMe", "caption": "lheLY573", "height": 87, "imageUrl": "PWlCw4Tz", "smallImageUrl": "hnq2dCrQ", "width": 88}, {"as": "5Bwwvui0", "caption": "REimZr6d", "height": 40, "imageUrl": "yacEJ8yw", "smallImageUrl": "FazmvASB", "width": 18}, {"as": "AdJ7Ueiq", "caption": "5K70tCxw", "height": 13, "imageUrl": "XKCTPWbh", "smallImageUrl": "aEqt3Zzo", "width": 42}], "itemId": "ogup8XLG", "itemIds": ["O6GeKtMW", "qzvAdcDh", "oZGDb8oX"], "itemQty": {"Uw2vFyhu": 42, "gEIbdzmD": 6, "fR1ySynE": 8}, "itemType": "APP", "language": "OzBKM2Xa", "listable": false, "localExt": {"0wSyWEf9": {}, "Qg1CKvl2": {}, "MulelIfO": {}}, "longDescription": "YC7Jjp9Y", "lootBoxConfig": {"rewardCount": 55, "rewards": [{"lootBoxItems": [{"count": 35, "itemId": "6BpgR9ql", "itemSku": "kZnDmOoW", "itemType": "0mAq7Mmb"}, {"count": 57, "itemId": "WixkSCtI", "itemSku": "ZCso3iUT", "itemType": "NITn7L93"}, {"count": 67, "itemId": "yfQFcght", "itemSku": "PTPePnpk", "itemType": "gpagu9Vw"}], "name": "Sa8TuEEI", "odds": 0.962984744342435, "type": "REWARD", "weight": 32}, {"lootBoxItems": [{"count": 48, "itemId": "HY5eTscp", "itemSku": "TWl6H1EI", "itemType": "uqAfJFLd"}, {"count": 47, "itemId": "XyBheI5R", "itemSku": "BKNzfSkF", "itemType": "1Ki8QDA4"}, {"count": 50, "itemId": "O2DwZSPp", "itemSku": "TjBcLMc5", "itemType": "kU9G0xt5"}], "name": "73jQ2oXD", "odds": 0.017221184865056083, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 94, "itemId": "LYSNX7hA", "itemSku": "WiduWbYc", "itemType": "xlLTa644"}, {"count": 46, "itemId": "rdtXSJWE", "itemSku": "0eW7Yae9", "itemType": "plHu1KP8"}, {"count": 44, "itemId": "1xmLSiAJ", "itemSku": "EU12UBvG", "itemType": "bLNrkugp"}], "name": "Hka2NDzB", "odds": 0.22668364973000743, "type": "PROBABILITY_GROUP", "weight": 76}], "rollFunction": "CUSTOM"}, "maxCount": 48, "maxCountPerUser": 14, "name": "dbizPGVw", "namespace": "fubMmfBz", "optionBoxConfig": {"boxItems": [{"count": 48, "itemId": "wkDmj7Ln", "itemSku": "8qLLW8iA", "itemType": "F8p2ZEtM"}, {"count": 31, "itemId": "uxTThPHV", "itemSku": "Bbtu3zss", "itemType": "Ly8adjDP"}, {"count": 63, "itemId": "Ey4nKhOJ", "itemSku": "1yicRT2C", "itemType": "nZFQ8Wgz"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "isNot", "name": "wkbeYq1q", "predicateType": "SeasonPassPredicate", "value": "pP370Kln", "values": ["aAPgPQl0", "CCqdm36k", "jaEXUJg6"]}, {"anyOf": 21, "comparison": "isNot", "name": "yn7rUyiK", "predicateType": "SeasonPassPredicate", "value": "RjXLZjAP", "values": ["Bz1bvOMf", "7opW6YsW", "6DQPGx0j"]}, {"anyOf": 46, "comparison": "isGreaterThan", "name": "7Lez2Lyn", "predicateType": "SeasonPassPredicate", "value": "RLNJv88c", "values": ["VD3lidjM", "uIMMmKIU", "bP6jHfqT"]}]}, {"operator": "and", "predicates": [{"anyOf": 41, "comparison": "isGreaterThanOrEqual", "name": "lldWkxo4", "predicateType": "EntitlementPredicate", "value": "y9QUPFN5", "values": ["gcfdtIQ7", "WdlmrG03", "NGGm6Q6j"]}, {"anyOf": 50, "comparison": "is", "name": "QbFiwnTO", "predicateType": "SeasonTierPredicate", "value": "SxoH6stx", "values": ["7vnbHu3k", "Zqor59MP", "bAGIw0zn"]}, {"anyOf": 93, "comparison": "isLessThan", "name": "vGVVOdml", "predicateType": "SeasonPassPredicate", "value": "8FQWIlYO", "values": ["PBxhRcDA", "2ii12dO2", "25smoVd4"]}]}, {"operator": "and", "predicates": [{"anyOf": 94, "comparison": "isNot", "name": "2zgdVeOT", "predicateType": "SeasonPassPredicate", "value": "y0dbdStO", "values": ["NwO2JmEQ", "aJ97P80r", "4bHgNa7N"]}, {"anyOf": 76, "comparison": "isNot", "name": "CSpWiFkC", "predicateType": "SeasonTierPredicate", "value": "nw21JuDr", "values": ["8sorQoZ8", "YvGcfqqi", "MbNxCZBK"]}, {"anyOf": 57, "comparison": "isLessThanOrEqual", "name": "ZtFiNFCq", "predicateType": "EntitlementPredicate", "value": "mk7oV04q", "values": ["X4ZoKbfq", "SifQSCR2", "8moZWIMA"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 9, "fixedTrialCycles": 88, "graceDays": 100}, "region": "a22lWnK1", "regionData": [{"currencyCode": "UF3QpfBC", "currencyNamespace": "Mi9DwmGE", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1984-10-21T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1980-10-09T00:00:00Z", "discountedPrice": 68, "expireAt": "1985-02-11T00:00:00Z", "price": 94, "purchaseAt": "1984-03-20T00:00:00Z", "trialPrice": 81}, {"currencyCode": "x8EIsKM6", "currencyNamespace": "OzR1uVBN", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1996-08-03T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1971-07-25T00:00:00Z", "discountedPrice": 15, "expireAt": "1997-04-25T00:00:00Z", "price": 27, "purchaseAt": "1978-10-09T00:00:00Z", "trialPrice": 14}, {"currencyCode": "j0KsoqWH", "currencyNamespace": "VSP4wYYt", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1973-11-20T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1992-02-16T00:00:00Z", "discountedPrice": 70, "expireAt": "1984-10-01T00:00:00Z", "price": 88, "purchaseAt": "1973-08-20T00:00:00Z", "trialPrice": 58}], "seasonType": "TIER", "sku": "lRFzAu3b", "stackable": true, "status": "INACTIVE", "tags": ["kR4vbGqu", "ZdpfSBOP", "9iW1ABLr"], "targetCurrencyCode": "hIXp8mBZ", "targetItemId": "t9w45hF2", "targetNamespace": "UUWvbpmf", "thumbnailUrl": "j33h8Eza", "title": "DtwD859B", "updatedAt": "1971-07-13T00:00:00Z", "useCount": 76}, "namespace": "Z1y1zfq6", "order": {"currency": {"currencyCode": "bOzieWUP", "currencySymbol": "u6klNywU", "currencyType": "VIRTUAL", "decimals": 29, "namespace": "brwrcdrq"}, "ext": {"jXVDiWhv": {}, "uunMAteS": {}, "LhGB6D8u": {}}, "free": true}, "source": "DLC"}, "script": "eFjblbVm", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'ZllpGyhk' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'MrtJfzPq' --body '{"grantDays": "tv0SEhJa"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'ieGKfaiX' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'tWjJTTeL' --body '{"grantDays": "n4p8egfW"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "Jbk4CDXt", "dryRun": true, "fulfillmentUrl": "tNv1vIzR", "itemType": "SEASON", "purchaseConditionUrl": "edQDYNtx"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'OPTIONBOX' --login_with_auth "Bearer foo"
platform-get-item-type-config 'gsf21v8n' --login_with_auth "Bearer foo"
platform-update-item-type-config '38EvTExc' --body '{"clazz": "gU15vEPy", "dryRun": true, "fulfillmentUrl": "8j9Nf6cX", "purchaseConditionUrl": "R9L41y01"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config '4MJYeGcx' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "e0qED5Eh", "items": [{"extraSubscriptionDays": 30, "itemId": "tpsb18gK", "itemName": "PyqjlpNV", "quantity": 72}, {"extraSubscriptionDays": 67, "itemId": "cbbbg7na", "itemName": "IYqDGwJk", "quantity": 55}, {"extraSubscriptionDays": 38, "itemId": "nUArqc28", "itemName": "YDJIDbaK", "quantity": 54}], "maxRedeemCountPerCampaignPerUser": 68, "maxRedeemCountPerCode": 92, "maxRedeemCountPerCodePerUser": 59, "maxSaleCount": 71, "name": "6dEUofCT", "redeemEnd": "1977-01-28T00:00:00Z", "redeemStart": "1971-09-14T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["j94cv8nF", "9YedvLbw", "9jRfwnYc"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'K27pawRT' --login_with_auth "Bearer foo"
platform-update-campaign 'nJhuJ44m' --body '{"description": "1sLtsGUx", "items": [{"extraSubscriptionDays": 46, "itemId": "BU438iIo", "itemName": "DzGqqVVb", "quantity": 30}, {"extraSubscriptionDays": 86, "itemId": "7i9ovbrR", "itemName": "485EYfmv", "quantity": 57}, {"extraSubscriptionDays": 66, "itemId": "K1rF1EyH", "itemName": "rHBUwYaU", "quantity": 33}], "maxRedeemCountPerCampaignPerUser": 4, "maxRedeemCountPerCode": 23, "maxRedeemCountPerCodePerUser": 40, "maxSaleCount": 13, "name": "rSUgvm5z", "redeemEnd": "1972-02-27T00:00:00Z", "redeemStart": "1972-05-16T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["SmECSXQP", "CBK0LPoC", "iOh7hn4V"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic '2YLEz5SK' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'ReY0FtlZ' --body '{"categoryPath": "7q7Ukh4u", "localizationDisplayNames": {"gbIJIYtR": "AqG8556m", "td32dwAp": "4Jtuq4qS", "YbUYNnW6": "fg98jz3p"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'tL4Qdokh' --login_with_auth "Bearer foo"
platform-update-category 'LN7DyLzX' 'oearFqgH' --body '{"localizationDisplayNames": {"INoNkK4S": "eFgVQN62", "bSDtVYOc": "U5TW32sn", "IpgL2DJR": "U3dyigkm"}}' --login_with_auth "Bearer foo"
platform-delete-category '1CjlXKoA' 'dgoGgVMh' --login_with_auth "Bearer foo"
platform-get-child-categories 'EJ83ckD4' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'WFNHVNpM' --login_with_auth "Bearer foo"
platform-query-codes 'ZBCVXrEL' --login_with_auth "Bearer foo"
platform-create-codes 'MAh50Yd4' --body '{"quantity": 17}' --login_with_auth "Bearer foo"
platform-download 'JUpvDfPt' --login_with_auth "Bearer foo"
platform-bulk-disable-codes '4cfmqoix' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'oe1A97Xd' --login_with_auth "Bearer foo"
platform-query-redeem-history '0LT8xMPR' --login_with_auth "Bearer foo"
platform-get-code 'j0k1ZgKd' --login_with_auth "Bearer foo"
platform-disable-code 'n8olclXV' --login_with_auth "Bearer foo"
platform-enable-code '1LMVZejk' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "6DmKjJib"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "pQpgWKC4", "currencySymbol": "edGW436h", "currencyType": "VIRTUAL", "decimals": 35, "localizationDescriptions": {"HJwMX2ea": "s3uwQdrp", "eXBBBCC1": "na1cuJL0", "1jJkc4mN": "e9lt4pvW"}}' --login_with_auth "Bearer foo"
platform-update-currency 'SaGfrYyv' --body '{"localizationDescriptions": {"eBif0bYi": "m49v5EJp", "tbcCqdAb": "iQS7Lp4J", "mkicQRsh": "fL2PskT5"}}' --login_with_auth "Bearer foo"
platform-delete-currency '5KSat7cY' --login_with_auth "Bearer foo"
platform-get-currency-config 'c7KLwuvI' --login_with_auth "Bearer foo"
platform-get-currency-summary 'GNxwoFv9' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "BLsFln2N", "rewards": [{"currency": {"currencyCode": "iJTzc6cu", "namespace": "onIgh0qk"}, "item": {"itemId": "FTyVtpGr", "itemSku": "KHj4yBSZ", "itemType": "57s4k14e"}, "quantity": 32, "type": "ITEM"}, {"currency": {"currencyCode": "zeJV6jZM", "namespace": "ENmbSdVD"}, "item": {"itemId": "GpBCHB77", "itemSku": "KtKIlr5H", "itemType": "msFQ51Gb"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "TZS1hpLw", "namespace": "M1YoZ8vG"}, "item": {"itemId": "jeUqRLW8", "itemSku": "Fc0VY8Us", "itemType": "x84rAjm2"}, "quantity": 20, "type": "ITEM"}]}, {"id": "UjShNZcV", "rewards": [{"currency": {"currencyCode": "jteDZ3bt", "namespace": "lHPhUQeJ"}, "item": {"itemId": "levVpW8R", "itemSku": "bLWqUErQ", "itemType": "BQJWWntZ"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "SQlGZ9kM", "namespace": "BBitBlK0"}, "item": {"itemId": "Y0EZoYkB", "itemSku": "UxU9ytVx", "itemType": "Z0hhhPsR"}, "quantity": 98, "type": "CURRENCY"}, {"currency": {"currencyCode": "zBAAISgM", "namespace": "WhWGOEkE"}, "item": {"itemId": "7dVamrmD", "itemSku": "QkYpzvcM", "itemType": "OH76nz5u"}, "quantity": 30, "type": "ITEM"}]}, {"id": "JPykVpdK", "rewards": [{"currency": {"currencyCode": "8KHjlxyK", "namespace": "VVQuxb8H"}, "item": {"itemId": "hmmchN87", "itemSku": "fuVQtsvf", "itemType": "lXKdkQw4"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"currencyCode": "JA8TbVwI", "namespace": "2aERlwYd"}, "item": {"itemId": "Gpiz0IgH", "itemSku": "yy1eWhlg", "itemType": "KRMj2lhS"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "TT9Nhvz8", "namespace": "XnFMPMc9"}, "item": {"itemId": "aNiIMitO", "itemSku": "GiR796qD", "itemType": "UFQw7ijy"}, "quantity": 91, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"wyjoFDkF": "oND1p4Nc", "wTB86jd4": "1wyhgAES", "qIsOqFBd": "8BJop95Z"}}, {"platform": "STEAM", "platformDlcIdMap": {"yJafSXcU": "Pmje63cb", "pqIXREgt": "K75Kuo8P", "CPptjHTv": "7XHfh2VG"}}, {"platform": "STEAM", "platformDlcIdMap": {"WMoD74gr": "IdSF0o70", "ETXM5jJl": "iWlSDw3V", "XbQQkKY7": "tfVDVhPO"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'wEMjT5Eh' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "uEY6aHZ7", "password": "6HtJ7NFY"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "cWhfTQON"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "fqFocreZ", "serviceAccountId": "GfhB0fbb"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "i2gCqBg5", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"PPq7IMiY": "HYeUK7R2", "l76k0tv4": "rTLeZVBJ", "wmdGsYpl": "JDrKFIo6"}}, {"itemIdentity": "c1VkllJL", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"pPudlaYK": "W78cv0bh", "Y7PnliQe": "Q4zZY5nG", "f5JuT2qG": "7s8PqPeO"}}, {"itemIdentity": "2diWclzY", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0RCRrPcA": "GAOkPbqP", "kWSlGH8b": "1PwGMnIY", "tP2Vq2X5": "1w57L1Xy"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "TL0Oh23B"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "oOuE85pA", "publisherAuthenticationKey": "jcgnDYfp"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "DqqDySTk", "clientSecret": "zvtARaJW", "organizationId": "hiPic6qV"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "Zqqh4acU"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'Mf6VNal8' 'eKhRjlSq' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '9XufnEE9' 'kPlpXSdv' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'h7jv812U' --body '{"categoryPath": "Wp7s1jrX", "targetItemId": "9FrWT1YH", "targetNamespace": "JY7TJ3KL"}' --login_with_auth "Bearer foo"
platform-create-item 'I8q2BBT6' --body '{"appId": "tca0XJDU", "appType": "DLC", "baseAppId": "49UhwK6O", "boothName": "6r2jZMc9", "categoryPath": "biM5uIDt", "clazz": "wRUZHTL2", "displayOrder": 96, "entitlementType": "DURABLE", "ext": {"6wAhDNGO": {}, "vWknAeQh": {}, "q7xuxLDm": {}}, "features": ["WWZ92fHs", "XH2kaEPZ", "669XpIys"], "images": [{"as": "MQrdUojV", "caption": "gQGFWj5Z", "height": 33, "imageUrl": "c7mm9ftW", "smallImageUrl": "j8F8NKOc", "width": 76}, {"as": "UZUdfmil", "caption": "ChzRbLHM", "height": 84, "imageUrl": "9IQke07Q", "smallImageUrl": "DYsRwwWf", "width": 91}, {"as": "e2CXzEf5", "caption": "MSmaPvaX", "height": 54, "imageUrl": "tUxTRqO4", "smallImageUrl": "ffNnWHue", "width": 91}], "itemIds": ["rC2OviYI", "jiVJbjMA", "HBMe4e1y"], "itemQty": {"YjPWqsYH": 97, "x5UNNFPs": 99, "NF5cWUc6": 82}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"63RxfKWm": {"description": "rBIdyUuM", "localExt": {"OlqjEh8V": {}, "AZcJGLtB": {}, "zPoxMCsO": {}}, "longDescription": "a0Uwhb3m", "title": "cSwTVgnu"}, "jEMRa7oC": {"description": "OKRE1xd7", "localExt": {"smL0e7rp": {}, "WWdIc65I": {}, "rJE2Poz7": {}}, "longDescription": "2bsG3L7c", "title": "PSUCP3Ec"}, "1NkVjvMs": {"description": "NkI2w6xY", "localExt": {"LC7XSNvP": {}, "FuSIvByG": {}, "KjgZsUw9": {}}, "longDescription": "o6yY7PkR", "title": "YMmrzM7D"}}, "lootBoxConfig": {"rewardCount": 40, "rewards": [{"lootBoxItems": [{"count": 97, "itemId": "8FvpUoGG", "itemSku": "jNKaHrvz", "itemType": "wkje8rq9"}, {"count": 20, "itemId": "2YVH9Ehz", "itemSku": "bkZZcUcN", "itemType": "JKIsgmtA"}, {"count": 81, "itemId": "IdrN5RlJ", "itemSku": "K5lBjfEw", "itemType": "DeSg8lpK"}], "name": "y9kghyA9", "odds": 0.10831536751355653, "type": "PROBABILITY_GROUP", "weight": 18}, {"lootBoxItems": [{"count": 60, "itemId": "JYlN2wnI", "itemSku": "FCVhhTse", "itemType": "Hz5Ch6Ip"}, {"count": 41, "itemId": "DnYBXf4b", "itemSku": "pXZhmhiQ", "itemType": "NvLwIxRB"}, {"count": 75, "itemId": "GCn8n6bz", "itemSku": "nVY5cNYf", "itemType": "TLyFyEwL"}], "name": "hvLAHad0", "odds": 0.24410723563517356, "type": "REWARD", "weight": 30}, {"lootBoxItems": [{"count": 94, "itemId": "UuqixgZQ", "itemSku": "mA6NmJOv", "itemType": "soQZg7ZK"}, {"count": 100, "itemId": "rOC9Jh69", "itemSku": "COTL5bRz", "itemType": "9ufrcekj"}, {"count": 92, "itemId": "fQOYYprc", "itemSku": "awJZvLkl", "itemType": "vL8WsuMR"}], "name": "TmqeeMrL", "odds": 0.6807611356030355, "type": "REWARD", "weight": 20}], "rollFunction": "DEFAULT"}, "maxCount": 71, "maxCountPerUser": 94, "name": "a1krvqYP", "optionBoxConfig": {"boxItems": [{"count": 39, "itemId": "pERAuka9", "itemSku": "rNJ3kAmn", "itemType": "JphOBpff"}, {"count": 80, "itemId": "XrbsifiH", "itemSku": "pugLwrOi", "itemType": "Suhp1KmX"}, {"count": 35, "itemId": "anxFnpR4", "itemSku": "WX7RVU0v", "itemType": "cQK9pdwz"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 57, "fixedTrialCycles": 26, "graceDays": 88}, "regionData": {"m3bnwPvc": [{"currencyCode": "V99QBWr4", "currencyNamespace": "BAB7VWsn", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1985-03-13T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-11-11T00:00:00Z", "discountedPrice": 37, "expireAt": "1987-01-27T00:00:00Z", "price": 54, "purchaseAt": "1974-09-08T00:00:00Z", "trialPrice": 58}, {"currencyCode": "yUtZPeyu", "currencyNamespace": "QImSHe1j", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1980-05-13T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1973-06-05T00:00:00Z", "discountedPrice": 31, "expireAt": "1992-08-28T00:00:00Z", "price": 75, "purchaseAt": "1988-12-22T00:00:00Z", "trialPrice": 80}, {"currencyCode": "vfw3s5Cw", "currencyNamespace": "A6yQLLkp", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1990-08-17T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1973-01-27T00:00:00Z", "discountedPrice": 17, "expireAt": "1995-02-10T00:00:00Z", "price": 9, "purchaseAt": "1990-01-02T00:00:00Z", "trialPrice": 83}], "A5leK3dZ": [{"currencyCode": "7f9jtTua", "currencyNamespace": "qGNScJJ4", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1975-02-09T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1975-12-01T00:00:00Z", "discountedPrice": 49, "expireAt": "1981-04-25T00:00:00Z", "price": 69, "purchaseAt": "1984-06-20T00:00:00Z", "trialPrice": 28}, {"currencyCode": "35OTvWYs", "currencyNamespace": "WOVztoHP", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1984-12-01T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1993-03-24T00:00:00Z", "discountedPrice": 75, "expireAt": "1978-09-11T00:00:00Z", "price": 44, "purchaseAt": "1993-11-19T00:00:00Z", "trialPrice": 9}, {"currencyCode": "ZQyLGZ62", "currencyNamespace": "exMvviwn", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1998-04-24T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1987-05-26T00:00:00Z", "discountedPrice": 72, "expireAt": "1973-08-15T00:00:00Z", "price": 31, "purchaseAt": "1999-09-28T00:00:00Z", "trialPrice": 37}], "HYQE9eD5": [{"currencyCode": "qUFlRldT", "currencyNamespace": "WUABN98V", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1985-05-20T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1996-11-20T00:00:00Z", "discountedPrice": 71, "expireAt": "1972-07-31T00:00:00Z", "price": 45, "purchaseAt": "1987-04-08T00:00:00Z", "trialPrice": 48}, {"currencyCode": "ZO0EUO9j", "currencyNamespace": "GODM01Cb", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1999-08-30T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1982-06-06T00:00:00Z", "discountedPrice": 95, "expireAt": "1992-07-03T00:00:00Z", "price": 36, "purchaseAt": "1996-07-10T00:00:00Z", "trialPrice": 94}, {"currencyCode": "AzVgil3E", "currencyNamespace": "LG5QhoGR", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1978-08-31T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1978-10-25T00:00:00Z", "discountedPrice": 85, "expireAt": "1998-11-22T00:00:00Z", "price": 36, "purchaseAt": "1995-11-12T00:00:00Z", "trialPrice": 98}]}, "seasonType": "TIER", "sku": "13HOErmu", "stackable": false, "status": "ACTIVE", "tags": ["3aCNB1LN", "XvUo5Zzi", "S9FBoK6A"], "targetCurrencyCode": "JMUZNbRB", "targetNamespace": "g4NdiG1l", "thumbnailUrl": "18RrOpqo", "useCount": 98}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '9SfXq56Y' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'AkzIVok7' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'CwhzEmfK' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'm64AgCbH' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'Tg1UHbwv' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'ww1y4KM0' --body '{"itemIds": ["ecIgtXyk", "m4byPuTh", "Vm5k6V4A"]}' --login_with_auth "Bearer foo"
platform-search-items 'LuevLt9k' 'kPrdY0Sl' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'MqQg1ucQ' --login_with_auth "Bearer foo"
platform-update-item 'wZ9JQxSi' 'BIp3jHIc' --body '{"appId": "LEJJNOP8", "appType": "DLC", "baseAppId": "3NgevkdA", "boothName": "eKE27MKB", "categoryPath": "UTKYBy09", "clazz": "ONC9fuFQ", "displayOrder": 99, "entitlementType": "DURABLE", "ext": {"rh6rVOtc": {}, "4xiEfkys": {}, "jADa8wIC": {}}, "features": ["KcvtiKfC", "2BdGJYst", "ybk0VNLr"], "images": [{"as": "AMjUbBif", "caption": "WvAgFMk1", "height": 36, "imageUrl": "CQcykSci", "smallImageUrl": "q6NBlahL", "width": 96}, {"as": "QQ1XkSk1", "caption": "NxLmQ5H5", "height": 15, "imageUrl": "VmIwTFBQ", "smallImageUrl": "9T0fQUXp", "width": 24}, {"as": "zrNCoX1m", "caption": "9LGxArXS", "height": 27, "imageUrl": "2HV37DuM", "smallImageUrl": "Nc7tkkRO", "width": 11}], "itemIds": ["Uy4BLccG", "vmGQuPlq", "A91ER4yF"], "itemQty": {"E97ENXsu": 53, "JA4KlH2v": 4, "7UlKWxKI": 9}, "itemType": "LOOTBOX", "listable": true, "localizations": {"ndthnOd5": {"description": "Yq84VCtv", "localExt": {"GPaCoDSl": {}, "HDCDYwHC": {}, "Uvx6c9Cr": {}}, "longDescription": "LIyC8Drn", "title": "WGXtoeZL"}, "E9h6dbb4": {"description": "lxV6AjGa", "localExt": {"7ES16Kk0": {}, "rZwZMA0K": {}, "33v9Ecdw": {}}, "longDescription": "9en2uS6a", "title": "lJ2rYZVk"}, "cAzppjTW": {"description": "87YMWA4a", "localExt": {"mzsIswEM": {}, "DkRiwRQg": {}, "6y9LgTKD": {}}, "longDescription": "YUAJUa49", "title": "VofeXeYl"}}, "lootBoxConfig": {"rewardCount": 9, "rewards": [{"lootBoxItems": [{"count": 86, "itemId": "FyckAloD", "itemSku": "wzVDv3ZF", "itemType": "Ws62d633"}, {"count": 43, "itemId": "kIuGmh0b", "itemSku": "JBbt6XI9", "itemType": "UCMM8eBj"}, {"count": 83, "itemId": "3I71kpnn", "itemSku": "QhUIRKxx", "itemType": "kHBnopGX"}], "name": "1lAMUwA7", "odds": 0.3815931900766656, "type": "REWARD", "weight": 86}, {"lootBoxItems": [{"count": 96, "itemId": "SAAAABdF", "itemSku": "NK7sj7Ja", "itemType": "dj3bk0gE"}, {"count": 97, "itemId": "pwqE7X0c", "itemSku": "i9jD4pcO", "itemType": "vcoIk7oI"}, {"count": 5, "itemId": "or3OGFIe", "itemSku": "WPhV8iDG", "itemType": "Or3U4gCr"}], "name": "2Zb8l8Oy", "odds": 0.22864428023730077, "type": "PROBABILITY_GROUP", "weight": 33}, {"lootBoxItems": [{"count": 36, "itemId": "9BxElVOx", "itemSku": "H92EpdcI", "itemType": "SO3DpoHw"}, {"count": 14, "itemId": "WoRpeqH3", "itemSku": "IMu9pGoI", "itemType": "rgrBzVpc"}, {"count": 7, "itemId": "ZT2jZAEs", "itemSku": "okmh3FsW", "itemType": "Ffx8pHrV"}], "name": "Q9Sub4TU", "odds": 0.13390155469200138, "type": "PROBABILITY_GROUP", "weight": 66}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 45, "name": "7Mj2yhd2", "optionBoxConfig": {"boxItems": [{"count": 7, "itemId": "kN4TaU5i", "itemSku": "pjcIAJ9b", "itemType": "Y1Onel5u"}, {"count": 2, "itemId": "yvjiMzb5", "itemSku": "ra17offY", "itemType": "NYngzyBF"}, {"count": 92, "itemId": "KZQnwWix", "itemSku": "Pr3Fcfld", "itemType": "ZFXGLtdC"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 99, "fixedTrialCycles": 67, "graceDays": 21}, "regionData": {"8CfifObi": [{"currencyCode": "ba4Ba3LK", "currencyNamespace": "rRM68DQQ", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1978-11-15T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1991-06-20T00:00:00Z", "discountedPrice": 34, "expireAt": "1980-07-09T00:00:00Z", "price": 81, "purchaseAt": "1971-01-22T00:00:00Z", "trialPrice": 10}, {"currencyCode": "MBCd9QKa", "currencyNamespace": "Oo1NC3iJ", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1998-09-22T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1984-08-19T00:00:00Z", "discountedPrice": 20, "expireAt": "1998-05-18T00:00:00Z", "price": 69, "purchaseAt": "1993-09-27T00:00:00Z", "trialPrice": 21}, {"currencyCode": "wT6eKaxp", "currencyNamespace": "iuEU8Jqs", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1994-04-06T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1978-05-16T00:00:00Z", "discountedPrice": 19, "expireAt": "1992-10-02T00:00:00Z", "price": 27, "purchaseAt": "1990-03-27T00:00:00Z", "trialPrice": 24}], "mV5ja6WK": [{"currencyCode": "UzrKnKrE", "currencyNamespace": "UeS7UQrS", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1993-02-12T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1975-07-29T00:00:00Z", "discountedPrice": 61, "expireAt": "1981-10-19T00:00:00Z", "price": 5, "purchaseAt": "1994-09-20T00:00:00Z", "trialPrice": 75}, {"currencyCode": "tuUjIyov", "currencyNamespace": "RyGtvgUR", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1998-01-13T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1983-12-01T00:00:00Z", "discountedPrice": 88, "expireAt": "1973-09-26T00:00:00Z", "price": 6, "purchaseAt": "1979-07-10T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Dq7Tb7eS", "currencyNamespace": "OIDYvhuC", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1976-12-24T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1988-08-16T00:00:00Z", "discountedPrice": 36, "expireAt": "1977-05-26T00:00:00Z", "price": 91, "purchaseAt": "1975-03-29T00:00:00Z", "trialPrice": 98}], "Ml6Jxrpe": [{"currencyCode": "Xs0cMIPF", "currencyNamespace": "8OxLwbl2", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1994-08-20T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1992-10-31T00:00:00Z", "discountedPrice": 45, "expireAt": "1996-01-27T00:00:00Z", "price": 94, "purchaseAt": "1989-03-08T00:00:00Z", "trialPrice": 19}, {"currencyCode": "05BIFDdb", "currencyNamespace": "7vIhoSb6", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1995-10-08T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1982-05-25T00:00:00Z", "discountedPrice": 64, "expireAt": "1999-12-19T00:00:00Z", "price": 11, "purchaseAt": "1998-12-25T00:00:00Z", "trialPrice": 100}, {"currencyCode": "vjc9zpQE", "currencyNamespace": "jAwfg4LA", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1988-03-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1976-07-14T00:00:00Z", "discountedPrice": 2, "expireAt": "1997-10-20T00:00:00Z", "price": 14, "purchaseAt": "1999-01-29T00:00:00Z", "trialPrice": 64}]}, "seasonType": "PASS", "sku": "isN51liE", "stackable": true, "status": "INACTIVE", "tags": ["6JGZhEcr", "AObDAjV4", "lxiWResX"], "targetCurrencyCode": "FYxWU76y", "targetNamespace": "PFMg4AKd", "thumbnailUrl": "bGtciyjr", "useCount": 7}' --login_with_auth "Bearer foo"
platform-delete-item 'HFLh7gvy' --login_with_auth "Bearer foo"
platform-acquire-item 'JmECUnta' --body '{"count": 30, "orderNo": "onvO1fxH"}' --login_with_auth "Bearer foo"
platform-get-app 'J9PSKx2i' --login_with_auth "Bearer foo"
platform-update-app 'ox9l6mNS' 'zp0gA1e4' --body '{"carousel": [{"alt": "99GKXJbf", "previewUrl": "EPJCakTw", "thumbnailUrl": "2Tp2eN3P", "type": "image", "url": "TL9NDRby", "videoSource": "vimeo"}, {"alt": "9fTkzmlZ", "previewUrl": "v4GMLXrH", "thumbnailUrl": "M2BXeqo5", "type": "video", "url": "OSEcYMQn", "videoSource": "vimeo"}, {"alt": "31ojFigr", "previewUrl": "T2NvmHRw", "thumbnailUrl": "mW2bEjVe", "type": "video", "url": "BMQj1SDf", "videoSource": "vimeo"}], "developer": "u1fXN1zo", "forumUrl": "bKOLzrK6", "genres": ["Indie", "Simulation", "Simulation"], "localizations": {"OKkz1BbM": {"announcement": "baWZuvFp", "slogan": "YyiDqjZN"}, "w1syTT4C": {"announcement": "sJtbshm5", "slogan": "jxpQ3Hri"}, "lrB4zPw3": {"announcement": "LH0XUW72", "slogan": "UM1012Ab"}}, "platformRequirements": {"35Kb50Ic": [{"additionals": "xw4rx4OD", "directXVersion": "3WMxOPcj", "diskSpace": "otMl4CuW", "graphics": "4gFEXOQa", "label": "x0tOQucr", "osVersion": "cJoCIz52", "processor": "uJBpwnxY", "ram": "qzSV6pEw", "soundCard": "1bPB3Waq"}, {"additionals": "BakzrlRB", "directXVersion": "a1BIC0ev", "diskSpace": "IzZHKXqw", "graphics": "yFQWisps", "label": "5j5hkOzC", "osVersion": "knJoOxAc", "processor": "4udXIs3J", "ram": "icRkdVpU", "soundCard": "SbM93Yar"}, {"additionals": "am2RIp3e", "directXVersion": "UBBSeXK3", "diskSpace": "Mi3ZxglU", "graphics": "LZ87SHu9", "label": "GjwgdDnJ", "osVersion": "KvvRarEV", "processor": "h9p1M8eF", "ram": "BHWom21a", "soundCard": "808C5pMn"}], "E1KfwFZZ": [{"additionals": "LHWuHyew", "directXVersion": "Ga7PERUc", "diskSpace": "HUQz4Aeu", "graphics": "fSF87UzX", "label": "QRH5dsM0", "osVersion": "Bhe3CEMV", "processor": "eIGawcMk", "ram": "cXYJsi8E", "soundCard": "hLD5C9d4"}, {"additionals": "jKrU2Noa", "directXVersion": "jneHRRQX", "diskSpace": "qyprLoRw", "graphics": "NiHCItyx", "label": "Wl5y22qy", "osVersion": "SG71fDC3", "processor": "l8ta86a2", "ram": "DKpZZRu1", "soundCard": "COreNo7I"}, {"additionals": "cP2WjS4I", "directXVersion": "JykzmcJZ", "diskSpace": "w1550nhC", "graphics": "ouMB6KC8", "label": "zVKT8KY1", "osVersion": "a54ms8ts", "processor": "4ZF6STQw", "ram": "zJGu8MrD", "soundCard": "UsivJcLA"}], "ZIBQmPtt": [{"additionals": "uQF1w8oD", "directXVersion": "qSCN8lBO", "diskSpace": "Yh76B4jG", "graphics": "v2l2Ask1", "label": "fJ9IXsR5", "osVersion": "pa1FFrPe", "processor": "GmAhjx4M", "ram": "hb1stqV2", "soundCard": "PHadT4We"}, {"additionals": "aQc3tTCa", "directXVersion": "9kB7fpo2", "diskSpace": "BtYSTpMq", "graphics": "jedClACF", "label": "dISqSDbD", "osVersion": "HEVCXWyY", "processor": "mT3wlS8S", "ram": "zq1le0TH", "soundCard": "gRdBGh7c"}, {"additionals": "tZbQJDnw", "directXVersion": "QIH9DZg8", "diskSpace": "nL5SyB5G", "graphics": "Dc8RwoTX", "label": "Lg6rqRg6", "osVersion": "WEGjpGV3", "processor": "L8SuTylz", "ram": "gW7opclO", "soundCard": "AJoQx975"}]}, "platforms": ["Android", "IOS", "Android"], "players": ["Multi", "LocalCoop", "Single"], "primaryGenre": "FreeToPlay", "publisher": "avf1AwEL", "releaseDate": "1987-05-26T00:00:00Z", "websiteUrl": "VlJjjA1p"}' --login_with_auth "Bearer foo"
platform-disable-item 'jSSNDKbQ' 'FpjRZRqW' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '2Uv46nDL' --login_with_auth "Bearer foo"
platform-enable-item '07ALaBLG' '4hH0V58o' --login_with_auth "Bearer foo"
platform-feature-item 'pfndX56O' '2IAErTc2' 'rb6cx7f6' --login_with_auth "Bearer foo"
platform-defeature-item 'yPOUWBCp' 'kLATR6pG' '802P8VTL' --login_with_auth "Bearer foo"
platform-get-locale-item 'kgILvB15' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'KVBIOTNd' 'lZExyHoS' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 99, "comparison": "includes", "name": "CRVZNZIv", "predicateType": "SeasonPassPredicate", "value": "69svni7x", "values": ["MRKMDTC3", "p7w7G7tT", "jA3AfgXd"]}, {"anyOf": 17, "comparison": "isGreaterThanOrEqual", "name": "u6zVHXXy", "predicateType": "EntitlementPredicate", "value": "w7Ts9E45", "values": ["sHDyA5Bl", "6Z6gNIh2", "YRllC9uq"]}, {"anyOf": 40, "comparison": "includes", "name": "YefrIEFG", "predicateType": "SeasonTierPredicate", "value": "n9SKdqrF", "values": ["AxhYYFJA", "CLH9YvOM", "uTWKzkJH"]}]}, {"operator": "and", "predicates": [{"anyOf": 46, "comparison": "isLessThan", "name": "gQiRGfro", "predicateType": "SeasonPassPredicate", "value": "6T2kl5xi", "values": ["nYtMpMO1", "uX0cS9MT", "37t4bpqj"]}, {"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "T2dFtyb5", "predicateType": "SeasonTierPredicate", "value": "Gsw9W9Yq", "values": ["mv6wy0wk", "M5lABJki", "WFjoUEAM"]}, {"anyOf": 81, "comparison": "isNot", "name": "C9naQFWk", "predicateType": "EntitlementPredicate", "value": "pm54oGeH", "values": ["synyFOmH", "hcyA5q5P", "r8ftRUHx"]}]}, {"operator": "and", "predicates": [{"anyOf": 99, "comparison": "is", "name": "ptTONdFp", "predicateType": "SeasonTierPredicate", "value": "auOnh9AE", "values": ["aBxwcwQA", "6Xcg0bwk", "7GFRhyyb"]}, {"anyOf": 4, "comparison": "isNot", "name": "T3HCo4Zn", "predicateType": "SeasonPassPredicate", "value": "jxCYFAtj", "values": ["CBqnHMc7", "165o2i1v", "ESmOi9us"]}, {"anyOf": 3, "comparison": "is", "name": "sWe2uNsC", "predicateType": "SeasonPassPredicate", "value": "0w7tnJSB", "values": ["00MDmanU", "vBQtP8wf", "ki4Tw3LF"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'MLou65X1' --body '{"orderNo": "UiCkjDMx"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "6MS0PtAS", "name": "qwz9VvVZ", "status": "ACTIVE", "tags": ["xo6meHbG", "4tBi5d2V", "KOQuPmHQ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'DrRI5Zgj' --login_with_auth "Bearer foo"
platform-update-key-group '7HlguKyC' --body '{"description": "6S90k6fE", "name": "1CZV5Lcm", "status": "ACTIVE", "tags": ["QnQXUcLx", "hB9ipdfN", "q9fMaMyy"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'ZWcP9T8B' --login_with_auth "Bearer foo"
platform-list-keys 'YXYnktDL' --login_with_auth "Bearer foo"
platform-upload-keys 'yTpruyuT' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'FDDGhuQG' --login_with_auth "Bearer foo"
platform-refund-order '8IidZk32' --body '{"description": "uERMCz48"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "LGBkuG65", "privateKey": "5yY5OBH9"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "jqubDYQe", "currencyNamespace": "LfaetbrU", "customParameters": {"3NRTtC0e": {}, "KySxuUtZ": {}, "k1daRQLX": {}}, "description": "oeWrNdki", "extOrderNo": "pXzvwhSY", "extUserId": "ucxLt4Xj", "itemType": "MEDIA", "language": "RVY", "metadata": {"A4Oh6Lzv": "2TZqRziI", "SpRyXqb7": "4LiC79re", "DJl5zzJD": "92Uo6vkX"}, "notifyUrl": "JqPCOBv9", "omitNotification": true, "platform": "yv4XRKub", "price": 72, "recurringPaymentOrderNo": "qlcDvmjX", "region": "SBZp39gu", "returnUrl": "pXALJwJQ", "sandbox": false, "sku": "nT4bglq3", "subscriptionId": "rDBb41mo", "targetNamespace": "cLmAoLeo", "targetUserId": "zZTKW88g", "title": "aW7bkicJ"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'lDrf74dE' --login_with_auth "Bearer foo"
platform-get-payment-order '3UpQzxpg' --login_with_auth "Bearer foo"
platform-charge-payment-order '0Se2UYfs' --body '{"extTxId": "hHQ7MX4Z", "paymentMethod": "d7g2EVKL", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '3Qpv9Xg6' --body '{"description": "fneNxqhN"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'K3itx9e8' --body '{"amount": 52, "currencyCode": "7Q2RlZ84", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 31, "vat": 63}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status '2U1xnrQ6' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Steam' --body '{"allowedBalanceOrigins": ["Other", "Xbox", "Other"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Steam' --login_with_auth "Bearer foo"
platform-get-payment-callback-config-1 --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "esUVaFz2", "eventTopic": "A2j7XSpD", "maxAwarded": 86, "maxAwardedPerUser": 16, "namespaceExpression": "0fvWKLWG", "rewardCode": "hORPrTjy", "rewardConditions": [{"condition": "qoC7CnOv", "conditionName": "4qsN0Z2v", "eventName": "pervNoDn", "rewardItems": [{"duration": 81, "itemId": "Gyv3RLRS", "quantity": 59}, {"duration": 27, "itemId": "eByD8vjU", "quantity": 87}, {"duration": 58, "itemId": "MdHdns4P", "quantity": 80}]}, {"condition": "9aJ4Jxok", "conditionName": "ZCS3KAE2", "eventName": "yunbbeVM", "rewardItems": [{"duration": 16, "itemId": "ZD4DZmd5", "quantity": 48}, {"duration": 46, "itemId": "FITr124z", "quantity": 46}, {"duration": 16, "itemId": "2mJKtXFl", "quantity": 95}]}, {"condition": "SCqNy7Tk", "conditionName": "Uh35l9Jl", "eventName": "Mrveb1lK", "rewardItems": [{"duration": 17, "itemId": "f33ABd21", "quantity": 89}, {"duration": 78, "itemId": "xNi7dRfu", "quantity": 97}, {"duration": 24, "itemId": "Od2hwwf9", "quantity": 93}]}], "userIdExpression": "fItFsv3R"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'ZwqcCWWq' --login_with_auth "Bearer foo"
platform-update-reward 'GWUWNIRI' --body '{"description": "OY7bPTP9", "eventTopic": "BHLsCb5d", "maxAwarded": 6, "maxAwardedPerUser": 53, "namespaceExpression": "npEGtDzZ", "rewardCode": "08kQNfPx", "rewardConditions": [{"condition": "w0lo7hwa", "conditionName": "8VfohnIG", "eventName": "MjFps7dJ", "rewardItems": [{"duration": 39, "itemId": "vkd16ufZ", "quantity": 99}, {"duration": 12, "itemId": "D4AAlHsi", "quantity": 37}, {"duration": 80, "itemId": "B6M04xFU", "quantity": 72}]}, {"condition": "xq8sPQJe", "conditionName": "DU88tFVg", "eventName": "RqtPRHvp", "rewardItems": [{"duration": 65, "itemId": "hpga3uIp", "quantity": 83}, {"duration": 27, "itemId": "3p2AlSPH", "quantity": 67}, {"duration": 95, "itemId": "kJReQhIl", "quantity": 91}]}, {"condition": "zfA1tLrK", "conditionName": "mF3R252R", "eventName": "6fhjB7G4", "rewardItems": [{"duration": 59, "itemId": "AxkKlCZB", "quantity": 17}, {"duration": 77, "itemId": "JT6qXOKG", "quantity": 26}, {"duration": 67, "itemId": "n013WQX4", "quantity": 93}]}], "userIdExpression": "WKvJ5pAU"}' --login_with_auth "Bearer foo"
platform-delete-reward '22BmojYq' --login_with_auth "Bearer foo"
platform-check-event-condition 'NUtJUCqO' --body '{"payload": {"w41BuK6M": {}, "AbUtXlMl": {}, "FqyNaP1m": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'TcS2sqR3' --body '{"conditionName": "deaAUGg8", "userId": "BJje9MRD"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'X5ltCfqI' --body '{"active": false, "displayOrder": 54, "endDate": "1972-05-23T00:00:00Z", "ext": {"cSRGOZQr": {}, "BNOD03Em": {}, "LaubtRgF": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 39, "itemCount": 56, "rule": "SEQUENCE"}, "items": [{"id": "mLZL16ZX", "sku": "Bm7k8c0Q"}, {"id": "pO4YQSql", "sku": "KZmXpeYG"}, {"id": "q1xpML0l", "sku": "fudrWsaV"}], "localizations": {"OhGNcdvV": {"description": "BXK1nQQv", "localExt": {"8pLga3F5": {}, "DZOiDVvN": {}, "utTY4eAS": {}}, "longDescription": "cffxs8fJ", "title": "Kq6N8ow5"}, "zXivfe1n": {"description": "xyWGgwDO", "localExt": {"qjrb7MUT": {}, "VaM55pwp": {}, "E0on82Fi": {}}, "longDescription": "3b8ejy85", "title": "rjLFRd42"}, "C3oeE0HA": {"description": "19BtVuCc", "localExt": {"ttoZHFJu": {}, "oEJujn5F": {}, "t2gXlD2f": {}}, "longDescription": "Ed7FbPjJ", "title": "PTSjuZpS"}}, "name": "JU7VcXzf", "rotationType": "CUSTOM", "startDate": "1989-02-27T00:00:00Z", "viewId": "EQMPw1B8"}' --login_with_auth "Bearer foo"
platform-purge-expired-section '6bC9sW5C' --login_with_auth "Bearer foo"
platform-get-section 'Ag4PAvdI' --login_with_auth "Bearer foo"
platform-update-section 'XYLstAZG' 'UmOkwewf' --body '{"active": false, "displayOrder": 4, "endDate": "1972-10-16T00:00:00Z", "ext": {"bewRKM8W": {}, "0lnRxbNV": {}, "mGNEJJpb": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 50, "itemCount": 85, "rule": "SEQUENCE"}, "items": [{"id": "ByM75lZz", "sku": "mXPoMweg"}, {"id": "Ak8ppFdX", "sku": "V2RoQaW4"}, {"id": "vFLMPm8g", "sku": "fQOQt3Qv"}], "localizations": {"0qmWLmCp": {"description": "PEzm8dW7", "localExt": {"pGv7BzUx": {}, "do1w50YG": {}, "jWYQLCbR": {}}, "longDescription": "kwY89nKf", "title": "q0HDrF0Y"}, "ky8d6c8d": {"description": "XOswJOvO", "localExt": {"fScUOgXv": {}, "dxkgcpiR": {}, "BxzIBBUw": {}}, "longDescription": "t5ieIabC", "title": "DlHPfJ19"}, "9UgCLSdk": {"description": "whFZZB14", "localExt": {"KAkaLXa0": {}, "F8WtnLtL": {}, "sECGV1eT": {}}, "longDescription": "avEbvtkV", "title": "KlDInnyt"}}, "name": "XHLDHxEZ", "rotationType": "NONE", "startDate": "1975-02-08T00:00:00Z", "viewId": "sLozUvLD"}' --login_with_auth "Bearer foo"
platform-delete-section '1AUMw18T' 'azy0Yqdr' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "boO39Bpj", "defaultRegion": "n8SYUtDS", "description": "0NrcDuvr", "supportedLanguages": ["iA0Ya16X", "1XQAza6R", "CSpbnC0J"], "supportedRegions": ["qUgASPqY", "Tau18s5l", "Ujbgbo2y"], "title": "rHKw06lM"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'pC2epYik' --login_with_auth "Bearer foo"
platform-update-store 'At60GgLO' --body '{"defaultLanguage": "WPl5czmm", "defaultRegion": "tWh8ibIe", "description": "NWtTonqv", "supportedLanguages": ["m3cvU0Ou", "7do3LlzI", "Roc7poW3"], "supportedRegions": ["veyHZzSZ", "VsRKjyfB", "QsPxO761"], "title": "NQReemiK"}' --login_with_auth "Bearer foo"
platform-delete-store 'mNmHACSI' --login_with_auth "Bearer foo"
platform-query-changes 'Or3jHC1e' --login_with_auth "Bearer foo"
platform-publish-all '1ItVhzGe' --login_with_auth "Bearer foo"
platform-publish-selected '0H1sdMw6' --login_with_auth "Bearer foo"
platform-select-all-records 'i3Ub6Hj6' --login_with_auth "Bearer foo"
platform-get-statistic 'yBVug2uw' --login_with_auth "Bearer foo"
platform-unselect-all-records '4hCr9sbx' --login_with_auth "Bearer foo"
platform-select-record 'QZkPQJDN' 'wzb07Kzt' --login_with_auth "Bearer foo"
platform-unselect-record '7RjypdaC' 'WNAOebpe' --login_with_auth "Bearer foo"
platform-clone-store 'xFlyhZ8M' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'RIsHYTAX' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'WA3mmeTL' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '1AAjYBsm' --body '{"orderNo": "yBC5vOZ0"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'lVwjszO0' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'mcAXn57H' --body '{"count": 28, "orderNo": "10ZsZ7Zn"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'tMRRmMMR' --body '{"achievements": [{"id": "TRyooOOU", "value": 59}, {"id": "psurzgku", "value": 61}, {"id": "9YDdIZJh", "value": 46}], "steamUserId": "toW69xc5"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'fiO4ftLr' 'IpagzTpG' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '8zpoorkU' --body '{"achievements": [{"id": "omqi3DeQ", "value": 72}, {"id": "ebGxu2F5", "value": 13}, {"id": "Cah8QMxi", "value": 40}], "serviceConfigId": "HFydiLaK", "titleId": "SL89aU0L", "xboxUserId": "bH02ImCX"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'k8knYOeI' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'sWT1DFb1' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'MmxaTXsI' --login_with_auth "Bearer foo"
platform-anonymize-integration 'CURnae5j' --login_with_auth "Bearer foo"
platform-anonymize-order 'vE6vjwgi' --login_with_auth "Bearer foo"
platform-anonymize-payment 'qRani042' --login_with_auth "Bearer foo"
platform-anonymize-revocation '00szbgV2' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'vKkUKZmw' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'Xblwp7KN' --login_with_auth "Bearer foo"
platform-get-user-dlc 'vanpJ547' 'XBOX' --login_with_auth "Bearer foo"
platform-query-user-entitlements '90BN2nIP' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '7suO6gAD' --body '[{"endDate": "1981-09-07T00:00:00Z", "grantedCode": "84wZXRjx", "itemId": "yRgoIjJ1", "itemNamespace": "glu0DKH5", "language": "jm_784", "quantity": 11, "region": "9kubqZwB", "source": "PROMOTION", "startDate": "1979-11-02T00:00:00Z", "storeId": "rqSUZcwI"}, {"endDate": "1996-03-21T00:00:00Z", "grantedCode": "wcMGibmO", "itemId": "IgbBXYI5", "itemNamespace": "x2gGflHL", "language": "edp-wo", "quantity": 31, "region": "OIsowxDW", "source": "PROMOTION", "startDate": "1997-08-21T00:00:00Z", "storeId": "qoWsyYs7"}, {"endDate": "1988-11-09T00:00:00Z", "grantedCode": "CiJks0cR", "itemId": "DWFJcEQG", "itemNamespace": "olwyZg2Y", "language": "xwk-251", "quantity": 41, "region": "eL2bUJ85", "source": "GIFT", "startDate": "1995-08-24T00:00:00Z", "storeId": "yciloaiA"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'z9cg9fwI' '9Tg2dko0' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '3pWqxqGH' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'muEvbluw' 'wzWSRRmf' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'eMmklNXV' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'tFaQ9vgV' 'R1AiVQR7' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'Gxd8ath4' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'qLvwIGV6' '["mAOI5Jd6", "Xb5LFHXZ", "Q4qizgFX"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'qsFWzhYN' 'daBfk31X' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'KPqleU8q' '7UBTe9s2' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'SVJE64Mw' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'EXdZbPk9' 'Smb4eNPt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'GsYoGSG0' 'b07OwPvm' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'K9TIRDKC' '6OvBgtbf' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'lUYZ7urr' 'zh65k0XE' --body '{"endDate": "1984-01-18T00:00:00Z", "nullFieldList": ["OmeOQHxJ", "mlG2gZjs", "rzVkhIkL"], "startDate": "1988-07-05T00:00:00Z", "status": "ACTIVE", "useCount": 72}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '4FRfK9q2' 'f3cBsRJB' --body '{"options": ["l8VBjH8L", "4yZHosnb", "e8oE22Yu"], "requestId": "eYinnrxc", "useCount": 14}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '9zykYtzW' 'oWU9dV69' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'tw0Gay4i' '72mwLKSO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'U6CH0cVn' 'jcZ7B9xL' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'JF1GlBx3' '1egRGAuR' --login_with_auth "Bearer foo"
platform-fulfill-item 'uCG6iQej' --body '{"duration": 60, "endDate": "1978-10-30T00:00:00Z", "itemId": "gEI2vhM2", "itemSku": "SwvysRob", "language": "SJQKBp54", "order": {"currency": {"currencyCode": "GQ257EC5", "currencySymbol": "iy2jv95V", "currencyType": "VIRTUAL", "decimals": 25, "namespace": "MBIBvAMr"}, "ext": {"PF7CJBJm": {}, "wdcNECqI": {}, "CieSHluX": {}}, "free": true}, "orderNo": "ZH1WUg8R", "origin": "Epic", "quantity": 78, "region": "sAupXnCU", "source": "DLC", "startDate": "1993-09-17T00:00:00Z", "storeId": "K7wlY6uL"}' --login_with_auth "Bearer foo"
platform-redeem-code 'RfRAl8Hg' --body '{"code": "L4vv42yM", "language": "sQ", "region": "wrsJPLWI"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'IEZ9fYR6' --body '{"origin": "Steam", "rewards": [{"currency": {"currencyCode": "LlHIg8uf", "namespace": "2SxSWZ2V"}, "item": {"itemId": "9ubYsVSx", "itemSku": "WDIBjewX", "itemType": "0r4ZsQll"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "U2ZHb2eK", "namespace": "3vVr3EaQ"}, "item": {"itemId": "KTwyoIAj", "itemSku": "LOjR62oQ", "itemType": "5keJZRmV"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "jpcOEDFo", "namespace": "DCX0YkrC"}, "item": {"itemId": "brgdqDMz", "itemSku": "vXAhq1D8", "itemType": "NV3PINvF"}, "quantity": 84, "type": "CURRENCY"}], "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '17BxC6iw' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'gykv67NT' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'FSjGkSy9' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'CESAWg80' --body '{"itemIdentityType": "ITEM_ID", "language": "espt-hfWK", "productId": "e4wdP0qy", "region": "eS6d6zNZ", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'y6SQugae' --login_with_auth "Bearer foo"
platform-admin-create-user-order '3wO7Yipp' --body '{"currencyCode": "8pYX4Sx0", "currencyNamespace": "17cnPkJE", "discountedPrice": 24, "ext": {"rQudJEYp": {}, "MbsT1gnd": {}, "Sz6aavow": {}}, "itemId": "yQZT1pF2", "language": "6XkayiK9", "options": {"skipPriceValidation": true}, "platform": "GooglePlay", "price": 36, "quantity": 20, "region": "rGpRGuic", "returnUrl": "wcKEVRzf", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'jZCKzqgE' 'JlVEgcHz' --login_with_auth "Bearer foo"
platform-get-user-order 'qq29cGsF' 'UUrKxvss' --login_with_auth "Bearer foo"
platform-update-user-order-status 'ROMFaaWX' 'mb2ACoOn' --body '{"status": "INIT", "statusReason": "UrZ7cRpi"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order '1rnTMIi7' 'UKvw9udn' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'yf08p307' 'gOhPiZqk' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'y42ITrkn' 'qeo1EIci' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'fsZ5DZx7' 'KFQamQuz' --body '{"additionalData": {"cardSummary": "eHi5kpwj"}, "authorisedTime": "1978-10-02T00:00:00Z", "chargebackReversedTime": "1987-01-02T00:00:00Z", "chargebackTime": "1976-08-30T00:00:00Z", "chargedTime": "1982-09-08T00:00:00Z", "createdTime": "1987-11-27T00:00:00Z", "currency": {"currencyCode": "efJYJgnB", "currencySymbol": "IirWOiLQ", "currencyType": "REAL", "decimals": 18, "namespace": "L24bF5xH"}, "customParameters": {"5587Z57d": {}, "BQ5nE1H5": {}, "6RpUNG51": {}}, "extOrderNo": "8w4bnFA7", "extTxId": "ZvH77ZtX", "extUserId": "6tIkGekK", "issuedAt": "1978-12-19T00:00:00Z", "metadata": {"rzlvN4Ke": "lMymKmm2", "0W5c7xuZ": "2MwqsB7w", "mBOZC8dT": "mz2JiF8O"}, "namespace": "2veJmkCb", "nonceStr": "QGPKevqR", "paymentMethod": "GOYkvqt1", "paymentMethodFee": 9, "paymentOrderNo": "kbvkfxML", "paymentProvider": "WALLET", "paymentProviderFee": 81, "paymentStationUrl": "oUaFnLuL", "price": 7, "refundedTime": "1987-07-01T00:00:00Z", "salesTax": 21, "sandbox": true, "sku": "fGAzhpYE", "status": "REFUND_FAILED", "statusReason": "Bysqv7eR", "subscriptionId": "BQmtcZ6v", "subtotalPrice": 65, "targetNamespace": "onAhPMcS", "targetUserId": "PxDlK20l", "tax": 71, "totalPrice": 15, "totalTax": 83, "txEndTime": "1992-12-11T00:00:00Z", "type": "h2tBOme0", "userId": "nwU7qWxb", "vat": 98}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'q7fjVX5d' 'o2PasJP2' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'bSmebFTW' --body '{"currencyCode": "LknOiO9X", "currencyNamespace": "yfDUCzVS", "customParameters": {"hIaghY3g": {}, "opsohhyN": {}, "pCeraeg8": {}}, "description": "ueCqM2cu", "extOrderNo": "MmYQvJtd", "extUserId": "h9XLb1Uf", "itemType": "MEDIA", "language": "Zua_rngm_882", "metadata": {"kqn5Uuss": "zgXS8peY", "DdjZUnYr": "ERl6eL3L", "AdbWGe6C": "AMX4KuCe"}, "notifyUrl": "hTgRldaf", "omitNotification": true, "platform": "OVos0f7E", "price": 16, "recurringPaymentOrderNo": "EgKbTa7I", "region": "wmzkRwz4", "returnUrl": "BkQe9sDd", "sandbox": false, "sku": "XgdkzsDZ", "subscriptionId": "5WU0z6mT", "title": "pgFJ5LyZ"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'Kze22f9y' 'pz0geRxT' --body '{"description": "Zcnjyntd"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'QOwMMUhl' --body '{"code": "BIo1kuLN", "orderNo": "hcSCqKPj"}' --login_with_auth "Bearer foo"
platform-do-revocation '1O4skKqE' --body '{"meta": {"PPeRGM8E": {}, "xFerkBnc": {}, "DCwakEO9": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Steam", "currencyCode": "nZ4JGn5P", "namespace": "KGqxraKW"}, "entitlement": {"clazz": "SUBSCRIPTION", "entitlementId": "sBAoL2X1", "type": "CONSUMABLE"}, "item": {"itemIdentity": "lPSdVhOR", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "VCQy4IQJ", "namespace": "JLocOavd"}, "entitlement": {"clazz": "APP", "entitlementId": "Ow3UUAHu", "type": "CONSUMABLE"}, "item": {"itemIdentity": "6IcRGFUg", "itemIdentityType": "ITEM_SKU", "origin": "Twitch"}, "quantity": 6, "type": "ITEM"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "HOVNPias", "namespace": "faYieYaJ"}, "entitlement": {"clazz": "ENTITLEMENT", "entitlementId": "pPLsHhMu", "type": "CONSUMABLE"}, "item": {"itemIdentity": "GCTtUa54", "itemIdentityType": "ITEM_ID", "origin": "Other"}, "quantity": 44, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "oNUuv34u"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'TvKzNOLn' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'gvAoNwO8' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'FDQ5O0tB' --body '{"grantDays": 25, "itemId": "FOS5TLG9", "language": "6QfYXljy", "reason": "XzvzOfUL", "region": "naVCYSXN", "source": "ljTzwJMp"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'vly0RaMB' 'CcULr0b1' --login_with_auth "Bearer foo"
platform-get-user-subscription '6gJW8wSh' '55mxEf2i' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'j1oJDDQC' 'V8suGJIL' --login_with_auth "Bearer foo"
platform-cancel-subscription 'OkXcPGMg' 'U3AYY4nS' --body '{"immediate": false, "reason": "PbpUf9KF"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'D0LZmTsT' 'AfzE43MW' --body '{"grantDays": 16, "reason": "CNNnBkBQ"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'iqCfKcJ8' 'DB4faLua' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '4LvFvBr1' 'aiD1Sn8n' --body '{"additionalData": {"cardSummary": "ldEQUZwa"}, "authorisedTime": "1975-10-29T00:00:00Z", "chargebackReversedTime": "1973-12-11T00:00:00Z", "chargebackTime": "1999-06-03T00:00:00Z", "chargedTime": "1994-03-13T00:00:00Z", "createdTime": "1998-04-28T00:00:00Z", "currency": {"currencyCode": "2ypy5wFu", "currencySymbol": "bjGmoglj", "currencyType": "REAL", "decimals": 36, "namespace": "YyXFHgP4"}, "customParameters": {"vr2dGbYx": {}, "bGCj3ZFW": {}, "RRZrp94E": {}}, "extOrderNo": "zDy2C9lg", "extTxId": "CagpKWaE", "extUserId": "UUSivAFb", "issuedAt": "1990-03-23T00:00:00Z", "metadata": {"wHehR67d": "LQd2Rm68", "bGsxthTd": "iypc575v", "H7OWczIJ": "iXWOllRX"}, "namespace": "Vl7tlQxl", "nonceStr": "AGWE7PmY", "paymentMethod": "7Cw6UqcB", "paymentMethodFee": 95, "paymentOrderNo": "SXcGcUv3", "paymentProvider": "STRIPE", "paymentProviderFee": 29, "paymentStationUrl": "boQ44Ya7", "price": 30, "refundedTime": "1977-06-04T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "ks9I0deQ", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "MWMZLkb9", "subscriptionId": "48qv08N9", "subtotalPrice": 51, "targetNamespace": "X3PRa8zy", "targetUserId": "grfWtFV3", "tax": 78, "totalPrice": 94, "totalTax": 32, "txEndTime": "1985-06-01T00:00:00Z", "type": "hAPmtGas", "userId": "weSmhZxZ", "vat": 96}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'J6WiXhCR' 'hnuTiUd6' --body '{"count": 100, "orderNo": "NnygCTcJ"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'lZgonwWG' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'TpfctkR9' '2SFzaFdr' --body '{"allowOverdraft": false, "amount": 89, "balanceOrigin": "Xbox", "reason": "Y8cJnKYW"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '7bBj51ZB' 'BxmL00x4' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'mktyOsRy' 'C4tnRBhK' --body '{"amount": 79, "expireAt": "1997-04-04T00:00:00Z", "origin": "IOS", "reason": "OrxbdlSI", "source": "PROMOTION"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'iKSjqTZZ' 'gPb6pCYy' --body '{"amount": 64, "walletPlatform": "Other"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'fFQzMVJX' --body '{"displayOrder": 76, "localizations": {"Ufg1mbmK": {"description": "klxVCNtO", "localExt": {"O5q0bLt1": {}, "L2e8gmfK": {}, "PEVQ7fZc": {}}, "longDescription": "6mL0xb0j", "title": "2NiqnjQx"}, "5OpgotHY": {"description": "AwqvdESD", "localExt": {"hKR05nWS": {}, "n2wQIuRK": {}, "bRFEM9Hf": {}}, "longDescription": "E11PMkBB", "title": "95a6uzG5"}, "LBl7fwxw": {"description": "ZzJ1LNLq", "localExt": {"BjSqvPKz": {}, "KDnwnLSa": {}, "ZiYRIUkO": {}}, "longDescription": "gkUNqePl", "title": "zPr9UunX"}}, "name": "uyIYt3up"}' --login_with_auth "Bearer foo"
platform-get-view 'A8HyDEdO' --login_with_auth "Bearer foo"
platform-update-view 'XXIDF2MS' '9YeXWM2o' --body '{"displayOrder": 28, "localizations": {"UPZsEacD": {"description": "8NmjPkWp", "localExt": {"Dl8wuQvK": {}, "cBBzAln0": {}, "C8daWC50": {}}, "longDescription": "WvSdoJsF", "title": "uZxF0fO0"}, "8xL35tw9": {"description": "bH6LRn6f", "localExt": {"clbQGQNq": {}, "2MKs3HRr": {}, "1EEynKMS": {}}, "longDescription": "OpjVi0Wc", "title": "ugqS2Sim"}, "o1ITT4YY": {"description": "gYkdfcCf", "localExt": {"t3dOuaA9": {}, "DoNJ0EkC": {}, "fxLlssyU": {}}, "longDescription": "SW1koZ9K", "title": "wOv1uK5A"}}, "name": "6aPxwrMx"}' --login_with_auth "Bearer foo"
platform-delete-view 'IXIcZLUz' '55eHPPak' --login_with_auth "Bearer foo"
platform-sync-orders 'TEBQzHEI' '0CzCNyhD' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["Ltl7hWv1", "yXox0MuH", "hCtWPwOd"], "apiKey": "ZBCsclKO", "authoriseAsCapture": false, "blockedPaymentMethods": ["kpgZkZ6B", "2wgP06hQ", "50Uztve6"], "clientKey": "OZ45YfPL", "dropInSettings": "h1N6nzYi", "liveEndpointUrlPrefix": "yt51bzIZ", "merchantAccount": "Cu9jJ4a5", "notificationHmacKey": "tocbm0X4", "notificationPassword": "9X8O5qWo", "notificationUsername": "8Q23oDcj", "returnUrl": "An1A25GG", "settings": "2TcRr6YM"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "efXYmcah", "privateKey": "dG5dwxwE", "publicKey": "Me3UH3JV", "returnUrl": "mk54W3ys"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "WLrrhRMG", "secretKey": "CoumGKWX"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "Xtn8jqzS", "clientSecret": "OXIot67q", "returnUrl": "cDEOMusc", "webHookId": "qMffZqMo"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["eKR0S6gx", "aLKZmMww", "1mdhKaUb"], "publishableKey": "Fy1WsH6T", "secretKey": "zPW324TG", "webhookSecret": "3bXkmXBg"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "J901SLtJ", "key": "4gbJTE0L", "mchid": "fMjpjnKc", "returnUrl": "GrTpRh6b"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "lzNJmWaP", "flowCompletionUrl": "fybVPoc2", "merchantId": 48, "projectId": 16, "projectSecretKey": "PYI1OazE"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'ua3IJ3Ky' --login_with_auth "Bearer foo"
platform-update-adyen-config '3xMFMaAh' --body '{"allowedPaymentMethods": ["IIrvbtik", "yL6u2Oh1", "iu03f9aZ"], "apiKey": "q50EZmgH", "authoriseAsCapture": false, "blockedPaymentMethods": ["DfpsOdsI", "d1uuMppg", "JJbch9Xy"], "clientKey": "uFKHTPsX", "dropInSettings": "MpLJkqAC", "liveEndpointUrlPrefix": "pMWFVswK", "merchantAccount": "ntkHr2gu", "notificationHmacKey": "Sd6ZWb16", "notificationPassword": "DDaIOVpJ", "notificationUsername": "ocusDH3R", "returnUrl": "AbV5SRM0", "settings": "WW4lajhb"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'zWbt6h1z' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '3lRD1m63' --body '{"appId": "4by99XtF", "privateKey": "vtwYyOdx", "publicKey": "YrHyTo4z", "returnUrl": "RIDWs7R7"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'a4encFpa' --login_with_auth "Bearer foo"
platform-update-checkout-config 'F0mKZ981' --body '{"publicKey": "KN6UyPgh", "secretKey": "ooO2qxZI"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'F4hCnOeg' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'ZWHckB8W' --body '{"clientID": "hCgJudOU", "clientSecret": "93CKv6Vk", "returnUrl": "scNOseeo", "webHookId": "m6xrtQRG"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'BM3bfene' --login_with_auth "Bearer foo"
platform-update-stripe-config '8QXldUjk' --body '{"allowedPaymentMethodTypes": ["i0rMbpsH", "203Ho4xd", "Eiaz53EA"], "publishableKey": "6R9RjTQN", "secretKey": "TrTzh6xU", "webhookSecret": "Nm8fOiPb"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'ZIYOqlLz' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'asm64Jnh' --body '{"appId": "3TUmADUm", "key": "VznSkRM9", "mchid": "SWGsqklq", "returnUrl": "zGugFj9F"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'NE5kQvA5' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'iTmDKWP4' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'AkizMayu' --body '{"apiKey": "fCyw8xn2", "flowCompletionUrl": "FAhr4NQG", "merchantId": 95, "projectId": 45, "projectSecretKey": "iOvpgCnx"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'ziIaHnM2' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'y4MAgFRq' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "CkdDY9uy", "region": "ndx4XhgZ", "sandboxTaxJarApiToken": "rTVjmCtI", "specials": ["CHECKOUT", "CHECKOUT", "WALLET"], "taxJarApiToken": "TcoWTrHE", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'nzQJlCmr' --body '{"aggregate": "XSOLLA", "namespace": "RtXTGcEr", "region": "jDXte6eQ", "sandboxTaxJarApiToken": "lv4JMFhS", "specials": ["ADYEN", "WALLET", "ADYEN"], "taxJarApiToken": "0Jk3QB6l", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'MFinTMV6' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "ArenKyfk", "taxJarApiToken": "FgudolaM", "taxJarEnabled": true, "taxJarProductCodesMapping": {"aHAnStAj": "OCJa886h", "2KxB21Yr": "d2ac6YTh", "bb8e0tWk": "J1L4g7uH"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'LODVFic7' 'QmirpaEh' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'Psj9QKn3' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'm8wLFH9G' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'a0hQiSuq' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'HQ3jMwtp' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'QIzrlpiX' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '9o2gZUxE' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["t6pbW69E", "cFZarCLy", "0k53pln3"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'UbnAZKyx' 'OXzBoo0W' --login_with_auth "Bearer foo"
platform-public-get-app 'PpkE6kcN' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '1hv3RjJ7' --login_with_auth "Bearer foo"
platform-public-get-item 'FoDLzeml' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "JsckUqKh", "paymentProvider": "PAYPAL", "returnUrl": "k3sACbM5", "ui": "l8a4jEWq", "zipCode": "DW3CYuH6"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'eaSgKQQ1' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'VaaHIAj0' --login_with_auth "Bearer foo"
platform-pay 'KUsHEh2h' --body '{"token": "sHf9S24r"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '1jmusXf4' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'LMS13OT7' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'dRHl02lE' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'mHVxtBK2' 'OWvum2pQ' 'CHECKOUT' 'l6Mg4W2z' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'Tad6IQqi' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'h3Cwyin1' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'AI4uPjtC' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'BXn943so' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'WG2kmc3q' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'Skytbq8X' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'FejhUZxs' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'iOhtc0zv' --body '{"epicGamesJwtToken": "SYZv7fP9"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'jzTgfSc6' --body '{"serviceLabel": 91}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'jOMGe3qt' --body '{"serviceLabels": [97, 10, 70]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'iHwPaoGn' --body '{"appId": "nnK1ZdNV", "steamId": "6R8071EW"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'kwwP2WGQ' --body '{"xstsToken": "csVWqCr4"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'uln4sZ27' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'tMAiVRV0' 'QGRCI2BO' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'eABFDLGD' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Wb9nXqUi' 'Zv0crhwL' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku '2bD3ahyL' 'S0eRgnaA' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'im6HBFkK' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'AtQFlRQ5' 'WKBYEBK5' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id '6kMmawPl' 'pOMXe3mu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'DzIdtU1j' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'JO7eFnnZ' 'pA4j4aXD' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'zqGkfUqn' 'E3BLBYwb' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '8I1yGa5x' 'gatlme7S' --body '{"options": ["OqHklEFK", "pKLKrag0", "5865f2uJ"], "requestId": "wMgeIjBU", "useCount": 60}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'bGTWKeNS' --body '{"code": "XizuwkFZ", "language": "uMg", "region": "jO1Ik2bv"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 't5rWaoL9' --body '{"excludeOldTransactions": false, "language": "rr-qshL", "productId": "LmzEmc6t", "receiptData": "1gopww0G", "region": "U9xiczm4", "transactionId": "1fsxWAYD"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 's4HQXGa8' --body '{"epicGamesJwtToken": "ZSgWC0hR"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'ehlK6qCa' --body '{"autoAck": true, "language": "ffm_RnMk", "orderId": "EnsirSS9", "packageName": "uDzGwbhM", "productId": "up20pVBz", "purchaseTime": 21, "purchaseToken": "0JwlvqC9", "region": "2wslx7bo"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store '3LBjvjTk' --body '{"currencyCode": "EATP3HFX", "price": 0.6522003016126324, "productId": "FM3LgpWj", "serviceLabel": 54}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'B6tk3yEt' --body '{"currencyCode": "9Z1A6sLb", "price": 0.21329546802449462, "productId": "WHtD9WiG", "serviceLabels": [40, 26, 68]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'Nxr8wilP' --body '{"appId": "3UEQ2if2", "currencyCode": "YWiRathW", "language": "xQmw", "price": 0.7365073267377057, "productId": "OaqcycLZ", "region": "ptGawtjq", "steamId": "JunLHqeG"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'nBmudt2u' --body '{"gameId": "yO5JW2YZ", "language": "VGeL-uh", "region": "Bf8qKzbH"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '1UH9WDoS' --body '{"currencyCode": "Y9mSJJm2", "price": 0.5699497502295184, "productId": "MHSRpxsJ", "xstsToken": "ymCDpH0q"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'ND6ZzqT3' --login_with_auth "Bearer foo"
platform-public-create-user-order 'YfUwZ3pb' --body '{"currencyCode": "OG35aAkW", "discountedPrice": 44, "ext": {"Qr3ewczP": {}, "IRCbvOfa": {}, "d69HLimA": {}}, "itemId": "bpzRvQeM", "language": "xd-VWzH", "price": 38, "quantity": 85, "region": "GoSo9hkT", "returnUrl": "HZstJbi8"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '9q2LHxBb' 'lDpGIumz' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'NcYzIXmD' '6Dfjy4ya' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '28KQk2g1' '6esX47VW' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '7yyrcq7i' 'Fljlnl1l' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'DWy1ap1V' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'K2Dr3xa7' 'paypal' 'yOl8WKZE' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'OeRttBja' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'MA6MdrwD' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'iRFJU4hx' --body '{"currencyCode": "nybSa8MA", "itemId": "OQuU4Agu", "language": "XF_ywaJ", "region": "PUIAqoHM", "returnUrl": "JGZwnJW7", "source": "2eZAjDqw"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'cI6bemjb' 'WxZTy6F8' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'jAdtA5O0' '2Y9eCcVq' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'bv87TxTn' 'E6DiTXDo' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '3hUzay5j' 'kMWxCnOa' --body '{"immediate": true, "reason": "oWOJuiI4"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'H1rHVs5X' '4rs06GIL' --login_with_auth "Bearer foo"
platform-public-list-views 'O0bTp6H8' --login_with_auth "Bearer foo"
platform-public-get-wallet 'PKixlmat' 'xdSXkpRM' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'u9O91q0R' '193SjUwD' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'KTjpFApz' --body '{"itemIds": ["c6LcTXsk", "ebF95CJQ", "IJBbwEpv"]}' --login_with_auth "Bearer foo"
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
    --body '{"context": {"item": {"appId": "zKkpuPSk", "appType": "SOFTWARE", "baseAppId": "aD56fOdt", "boothName": "YMVtdDGI", "boundItemIds": ["wPPZYNXB", "EbIfWXO4", "JqGjULat"], "categoryPath": "gxDRsvqn", "clazz": "DUdieQQf", "createdAt": "1988-01-02T00:00:00Z", "description": "DiVFwlk4", "displayOrder": 8, "entitlementType": "DURABLE", "ext": {"QuTnD2eo": {}, "x2XGsJsy": {}, "jm2A5luK": {}}, "features": ["w5dKqm2x", "Z2WDQO4g", "l76R89Yi"], "fresh": true, "images": [{"as": "RvmSOHxO", "caption": "mJfwXx4w", "height": 70, "imageUrl": "VCWbL9wx", "smallImageUrl": "gl9lNqVR", "width": 70}, {"as": "yhtnz4un", "caption": "E8h68Yft", "height": 13, "imageUrl": "g9hODbKh", "smallImageUrl": "lQCgjuex", "width": 48}, {"as": "C1sc0WP3", "caption": "TSd9V7bO", "height": 42, "imageUrl": "7iljHL1h", "smallImageUrl": "xcf5HItc", "width": 16}], "itemId": "Q86czNc0", "itemIds": ["6Uyv41Vr", "NXUPuFj9", "SWY94jYs"], "itemQty": {"PXt4bxWw": 5, "Byhxg0wb": 3, "APZyr67L": 3}, "itemType": "LOOTBOX", "language": "eYG3wXbF", "listable": false, "localExt": {"FqG739KB": {}, "W737RADf": {}, "tbAocQM4": {}}, "longDescription": "V6klhqs8", "lootBoxConfig": {"rewardCount": 85, "rewards": [{"lootBoxItems": [{"count": 84, "itemId": "UXJChdlz", "itemSku": "hf99w7VB", "itemType": "a5TQ0jPp"}, {"count": 77, "itemId": "6f4w8GAy", "itemSku": "QvK9B8TV", "itemType": "Z9OymUMm"}, {"count": 9, "itemId": "rcKcFwtG", "itemSku": "16ZZMRmN", "itemType": "nc60qBuS"}], "name": "ZJZnJk67", "odds": 0.4926562543186832, "type": "REWARD", "weight": 64}, {"lootBoxItems": [{"count": 90, "itemId": "mAT3DL4Z", "itemSku": "PK0D707Z", "itemType": "PzTxm5py"}, {"count": 12, "itemId": "zBHYXRgQ", "itemSku": "MC1cGAQI", "itemType": "YP2os2SF"}, {"count": 80, "itemId": "WyqVbTmN", "itemSku": "AsLH1sk1", "itemType": "GGFcrn6z"}], "name": "xuydnDXQ", "odds": 0.523149331634306, "type": "REWARD_GROUP", "weight": 15}, {"lootBoxItems": [{"count": 10, "itemId": "Z1ungTSH", "itemSku": "P11vLlIV", "itemType": "sGOJkZet"}, {"count": 77, "itemId": "0qkFh9Io", "itemSku": "LLGSmHOm", "itemType": "96IKv0NT"}, {"count": 74, "itemId": "ihXKkRft", "itemSku": "yEkIRWa1", "itemType": "m4n6AZBJ"}], "name": "QiCpVOgY", "odds": 0.6387171793087313, "type": "REWARD", "weight": 13}], "rollFunction": "CUSTOM"}, "maxCount": 12, "maxCountPerUser": 62, "name": "I4PZVi7y", "namespace": "5eCUhzxU", "optionBoxConfig": {"boxItems": [{"count": 35, "itemId": "GywkK56y", "itemSku": "KakAGusB", "itemType": "GwlS2eMI"}, {"count": 27, "itemId": "UYe3hcx0", "itemSku": "YTTFmZNH", "itemType": "3Ukqz0qV"}, {"count": 84, "itemId": "6jsdMF6u", "itemSku": "nkeCq510", "itemType": "W7e9yRcg"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 32, "comparison": "isLessThanOrEqual", "name": "YteH1iVq", "predicateType": "SeasonTierPredicate", "value": "Qxm5vXbL", "values": ["yULO7pEk", "RlyYG7uu", "5tsmBgpZ"]}, {"anyOf": 76, "comparison": "isLessThan", "name": "x4Sy3ei3", "predicateType": "EntitlementPredicate", "value": "1MQ1cJSD", "values": ["qAGLMncT", "lPZ7a1rg", "vSs892JZ"]}, {"anyOf": 53, "comparison": "isLessThanOrEqual", "name": "xw2QieQg", "predicateType": "EntitlementPredicate", "value": "eBic7Ua8", "values": ["2QbhKN5h", "ky3Xr3DI", "GuH3vDBw"]}]}, {"operator": "or", "predicates": [{"anyOf": 77, "comparison": "excludes", "name": "lvCuisKf", "predicateType": "EntitlementPredicate", "value": "5OV4ieY4", "values": ["p9gkqHRE", "emUMbpmM", "bBAMn8Is"]}, {"anyOf": 2, "comparison": "isNot", "name": "L5bBVc4Z", "predicateType": "SeasonPassPredicate", "value": "mDDE2joL", "values": ["4KpOIvit", "izPSeG4y", "riSNsRIg"]}, {"anyOf": 97, "comparison": "includes", "name": "kfLxxShl", "predicateType": "SeasonPassPredicate", "value": "JACt7QWS", "values": ["tmzQLriZ", "QSz24nqD", "uSvwrFzc"]}]}, {"operator": "or", "predicates": [{"anyOf": 55, "comparison": "isGreaterThan", "name": "P84Iw4RE", "predicateType": "EntitlementPredicate", "value": "wV2VNSDm", "values": ["fLawv4pW", "YLmFX07g", "BtqwY8hY"]}, {"anyOf": 58, "comparison": "excludes", "name": "2cQTAKSi", "predicateType": "SeasonPassPredicate", "value": "JNSOVJLD", "values": ["soPwz4kq", "O0juosYd", "l2rxDSy0"]}, {"anyOf": 29, "comparison": "isGreaterThan", "name": "ViL3nz53", "predicateType": "SeasonPassPredicate", "value": "Eopf4zsr", "values": ["DeksmAAt", "kHjfhqNL", "zdHBEAI0"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 85, "fixedTrialCycles": 26, "graceDays": 48}, "region": "oDWyTb6A", "regionData": [{"currencyCode": "igpC42N6", "currencyNamespace": "A3phSvOW", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1989-12-09T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1994-09-06T00:00:00Z", "discountedPrice": 76, "expireAt": "1989-05-15T00:00:00Z", "price": 47, "purchaseAt": "1986-10-11T00:00:00Z", "trialPrice": 60}, {"currencyCode": "LJ5cVRbh", "currencyNamespace": "mlVUUrTW", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1994-02-04T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1972-02-07T00:00:00Z", "discountedPrice": 27, "expireAt": "1992-06-16T00:00:00Z", "price": 90, "purchaseAt": "1985-08-14T00:00:00Z", "trialPrice": 86}, {"currencyCode": "RIr1T7lp", "currencyNamespace": "P7ZgKKLq", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1982-05-05T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1986-12-07T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-12-25T00:00:00Z", "price": 43, "purchaseAt": "1985-09-27T00:00:00Z", "trialPrice": 97}], "seasonType": "TIER", "sku": "9TqxLFIv", "stackable": false, "status": "ACTIVE", "tags": ["O5ZDjfBk", "5PrZJLSR", "t89BR0Pd"], "targetCurrencyCode": "1ebAjBKp", "targetItemId": "oJcrVCYZ", "targetNamespace": "DGSF7VrX", "thumbnailUrl": "EU1Wmv8F", "title": "jmZX70Gx", "updatedAt": "1996-12-08T00:00:00Z", "useCount": 15}, "namespace": "yRXjQjtt", "order": {"currency": {"currencyCode": "fLtpHcwn", "currencySymbol": "uCmSwXwn", "currencyType": "VIRTUAL", "decimals": 91, "namespace": "H0pCt01R"}, "ext": {"8ivxr4tI": {}, "CBPHClhs": {}, "XUsLRMWi": {}}, "free": false}, "source": "ACHIEVEMENT"}, "script": "GhqxjPZK", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'fwbyArtQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'UcdbRh2F' \
    --body '{"grantDays": "X9a3H79t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'IwBZKNLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'g2t3JVBc' \
    --body '{"grantDays": "5Ig2hKM8"}' \
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
    --body '{"clazz": "0Fs5dsyN", "dryRun": false, "fulfillmentUrl": "FqzONDD2", "itemType": "MEDIA", "purchaseConditionUrl": "jTI5JR9N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'LOOTBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'NQQcbHH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'qTthZbyH' \
    --body '{"clazz": "DbJ2jtyI", "dryRun": true, "fulfillmentUrl": "Iz1rLXXk", "purchaseConditionUrl": "aTMzbKsb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'VaXwieu1' \
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
    --body '{"description": "2VimiHCY", "items": [{"extraSubscriptionDays": 55, "itemId": "8cy0oJAQ", "itemName": "OIBuhmpF", "quantity": 87}, {"extraSubscriptionDays": 1, "itemId": "jVyAg7me", "itemName": "hAQcT95H", "quantity": 57}, {"extraSubscriptionDays": 79, "itemId": "yklg90tt", "itemName": "QXBRLAwG", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 31, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 55, "maxSaleCount": 35, "name": "fhTlz7GT", "redeemEnd": "1986-11-09T00:00:00Z", "redeemStart": "1983-06-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Xps1bvHj", "71cEfXZk", "rMQpr4kj"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'RhoHRObY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'Q9V1cwi3' \
    --body '{"description": "4j4fNZbQ", "items": [{"extraSubscriptionDays": 82, "itemId": "2y6oL9Xj", "itemName": "jyTY78zG", "quantity": 58}, {"extraSubscriptionDays": 70, "itemId": "pP2bsxrW", "itemName": "bSMa7vMI", "quantity": 94}, {"extraSubscriptionDays": 99, "itemId": "mN7674lF", "itemName": "ITbfdwe3", "quantity": 0}], "maxRedeemCountPerCampaignPerUser": 57, "maxRedeemCountPerCode": 5, "maxRedeemCountPerCodePerUser": 33, "maxSaleCount": 16, "name": "fmFp2vut", "redeemEnd": "1986-10-01T00:00:00Z", "redeemStart": "1995-09-09T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["5Q12HonP", "iuVkJDcr", "iRGYtJwj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'JD9de7Zc' \
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
    'y3pkVFvI' \
    --body '{"categoryPath": "TnWGjmOu", "localizationDisplayNames": {"uvbISJBZ": "1EOuz0lh", "TW6DKjfx": "bNZU4hQD", "y48aCdZl": "gpQ9vTf6"}}' \
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
    'XpeLkurv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'BP3crTTH' \
    'JFklwu18' \
    --body '{"localizationDisplayNames": {"PsqdVe1x": "qRZwfhHq", "rDudCj5w": "ykAt3l1a", "HDNh4qJU": "RhtyMoFS"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'hclvRB4L' \
    'x5sZulAI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '09jmXxab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'EuqLLCsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'Br2p5rhZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'dV669Oid' \
    --body '{"quantity": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    '3dRIV4Dg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'YrBoOL0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'GHS2O5PV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '7el4Pm47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'nTxE9MFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'E96PHwqd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'RoWRa9sA' \
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
    --body '{"grpcServerAddress": "BalqZyGT"}' \
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
    --body '{"currencyCode": "kad1tHf4", "currencySymbol": "bO5mm9iy", "currencyType": "VIRTUAL", "decimals": 3, "localizationDescriptions": {"yDerm5eV": "bmaTAMcQ", "k6zgLdz9": "rBhzMSuU", "E0LjRXcj": "utA4J0Cy"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'vLIP7u4w' \
    --body '{"localizationDescriptions": {"3UdjQGjJ": "DDpThaLK", "ASaev9F0": "oHkR4m0L", "cV11yLtJ": "yJOOLRB5"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'eiFIeK5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '84LNraNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'LuNSQAri' \
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
    --body '{"data": [{"id": "wrGRbpUz", "rewards": [{"currency": {"currencyCode": "lhU9xiSD", "namespace": "VPsPjYn4"}, "item": {"itemId": "OVKFZQBJ", "itemSku": "4mUuy9OD", "itemType": "pMUuIhb5"}, "quantity": 35, "type": "CURRENCY"}, {"currency": {"currencyCode": "Q2ebSFEG", "namespace": "rvZCuq6R"}, "item": {"itemId": "yTGfxaZq", "itemSku": "I1Os4Spw", "itemType": "iKi60TxO"}, "quantity": 81, "type": "ITEM"}, {"currency": {"currencyCode": "hEfKhjTD", "namespace": "3xyGE6K1"}, "item": {"itemId": "dU3onjcb", "itemSku": "PgMJbmLY", "itemType": "aWw81Grg"}, "quantity": 10, "type": "CURRENCY"}]}, {"id": "jzTVicqO", "rewards": [{"currency": {"currencyCode": "m7Db2mDg", "namespace": "RD9ooEKa"}, "item": {"itemId": "Vl0b9wIE", "itemSku": "Z3y58Z1L", "itemType": "YVEL6pUG"}, "quantity": 4, "type": "CURRENCY"}, {"currency": {"currencyCode": "MUfLoRWv", "namespace": "aUiwimkg"}, "item": {"itemId": "7ikocvUB", "itemSku": "HcXHPBdu", "itemType": "osVsC7Fd"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "sprOKYg8", "namespace": "FAkf6YZ4"}, "item": {"itemId": "Hjx4yKEM", "itemSku": "7ShTdoCA", "itemType": "xpjlAcr3"}, "quantity": 90, "type": "ITEM"}]}, {"id": "Jvx7KwFu", "rewards": [{"currency": {"currencyCode": "SmotpqLn", "namespace": "lcVdDenB"}, "item": {"itemId": "YNkAihug", "itemSku": "nk1yaF16", "itemType": "O5lOoh9d"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "OWzBf7Ic", "namespace": "kaHG7dXH"}, "item": {"itemId": "xeQNAsnc", "itemSku": "fuwnXsxU", "itemType": "tljpB4fr"}, "quantity": 14, "type": "CURRENCY"}, {"currency": {"currencyCode": "RyoWhvC6", "namespace": "eGwdyIaw"}, "item": {"itemId": "kxQMsW0j", "itemSku": "VsLnWRNW", "itemType": "QoIrpmsO"}, "quantity": 61, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"yeUvQ64f": "ZkQK717y", "zqlbyOrV": "K0MC8vrq", "UjkQmGUa": "InX9j623"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"RXjrToo9": "fw6fGIN7", "9pNscOZK": "HW6yj7JP", "gPnajIyd": "y79NPT0A"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"lWY7PWa7": "LfZ3ezwE", "dlxEdW9e": "6NPw6Gff", "pfagAW04": "S7axao35"}}]}' \
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
    'QQxADZa5' \
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
    --body '{"bundleId": "gliABsHm", "password": "L8VbIMWM"}' \
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
    --body '{"sandboxId": "eALpUhGM"}' \
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
    --body '{"applicationName": "xIDCx8Wl", "serviceAccountId": "Na92jJLL"}' \
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
    --body '{"data": [{"itemIdentity": "OngXYNMr", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"Jfchcf3x": "XMp2tdlR", "2KNJatI7": "qFGV6v5w", "kU8Rr5zs": "IZpLAkcs"}}, {"itemIdentity": "07KqS6pm", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"iUdUZidj": "gqzFEPDj", "iTFKII3Y": "qvrUo9SH", "uFAeooiR": "FZkTKUOL"}}, {"itemIdentity": "Bc6TmBoR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"fTVc90kY": "emQNcYMb", "fCOBcgPM": "noppJHVN", "NbOn1FNe": "BpF7m8K2"}}]}' \
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
    --body '{"environment": "krpACBpm"}' \
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
    --body '{"appId": "NuXEwgJf", "publisherAuthenticationKey": "WOXS82Tb"}' \
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
    --body '{"clientId": "oeejtLlc", "clientSecret": "EIVP4Ktn", "organizationId": "u9agL8qm"}' \
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
    --body '{"relyingPartyCert": "1rMn6iZE"}' \
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
    'M7bkyI9c' \
    'bgZ59L3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'NaRKKRoo' \
    'Z2zGGyeW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'aURpZTgx' \
    --body '{"categoryPath": "Ybfi2FnH", "targetItemId": "gSCqhY8B", "targetNamespace": "YsaSvxXZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'XF6xfS8z' \
    --body '{"appId": "QeapQWji", "appType": "GAME", "baseAppId": "XlW4H3RA", "boothName": "RDLCJJkB", "categoryPath": "OaFbwywc", "clazz": "xvFYzb69", "displayOrder": 17, "entitlementType": "CONSUMABLE", "ext": {"zPS7bifz": {}, "eBlLRN3i": {}, "bQAwBqsn": {}}, "features": ["3ADuIxQS", "KRtsDIIP", "FQrCNYFc"], "images": [{"as": "zEmGk9ii", "caption": "n4odjcYK", "height": 66, "imageUrl": "Filk0Hj4", "smallImageUrl": "MlWBFwDI", "width": 68}, {"as": "5lMBFgjw", "caption": "gsqKSnPz", "height": 12, "imageUrl": "KEyxV7PI", "smallImageUrl": "hUJECGRo", "width": 92}, {"as": "Jfgmia9F", "caption": "n4CBQmaI", "height": 44, "imageUrl": "kfo4eq8E", "smallImageUrl": "s9npSkva", "width": 4}], "itemIds": ["srUYcWO3", "W7fdHFBy", "JY5VvjWl"], "itemQty": {"11Nf6YVe": 95, "vWbTPkte": 70, "WF28Mzmw": 12}, "itemType": "BUNDLE", "listable": true, "localizations": {"vXYYbv4H": {"description": "1avV6xem", "localExt": {"yNmLHYRt": {}, "PVnbTYT6": {}, "lwutxCKK": {}}, "longDescription": "KAbzqhzN", "title": "WZrcrD4m"}, "ohpLLpS3": {"description": "W64S3492", "localExt": {"EQqScvGa": {}, "66t8bxsL": {}, "TXlyi6wL": {}}, "longDescription": "3wbNizSc", "title": "svaVgOdw"}, "DgTRsFpG": {"description": "JWZlopkX", "localExt": {"2lldzRtg": {}, "hEnodpWR": {}, "bl7cbbFD": {}}, "longDescription": "3rNyJt9O", "title": "PMKlTV0i"}}, "lootBoxConfig": {"rewardCount": 18, "rewards": [{"lootBoxItems": [{"count": 31, "itemId": "jt6gTDf7", "itemSku": "ffZefbAB", "itemType": "xlj0yRM5"}, {"count": 9, "itemId": "LrqKau2a", "itemSku": "wNfWR1rQ", "itemType": "D2ScrZzS"}, {"count": 68, "itemId": "vIWFzwQm", "itemSku": "aYoMvmVP", "itemType": "x405AgW8"}], "name": "Ytqzoimd", "odds": 0.3872369519937875, "type": "PROBABILITY_GROUP", "weight": 5}, {"lootBoxItems": [{"count": 13, "itemId": "QkkV6oAh", "itemSku": "MWQKkUeC", "itemType": "JLKEI7Lv"}, {"count": 98, "itemId": "OSgDy2at", "itemSku": "8mBj3ev3", "itemType": "RpVL8TRp"}, {"count": 17, "itemId": "wGvGat5v", "itemSku": "jFtKi7Cc", "itemType": "wvtXV992"}], "name": "BrIhAlkZ", "odds": 0.7843143627224134, "type": "PROBABILITY_GROUP", "weight": 48}, {"lootBoxItems": [{"count": 76, "itemId": "jIF6Ifkg", "itemSku": "nAwnvVRJ", "itemType": "tqnoPvFQ"}, {"count": 23, "itemId": "Smnwbb7p", "itemSku": "VVhql5Rd", "itemType": "J9j3iT3Z"}, {"count": 59, "itemId": "dGDqblXf", "itemSku": "C4c5dKtF", "itemType": "e6TUE1d4"}], "name": "xVWTtvDi", "odds": 0.36723949225147734, "type": "PROBABILITY_GROUP", "weight": 92}], "rollFunction": "DEFAULT"}, "maxCount": 5, "maxCountPerUser": 87, "name": "9VHKgRI5", "optionBoxConfig": {"boxItems": [{"count": 51, "itemId": "KJGrSLzx", "itemSku": "jEULfIfc", "itemType": "y3OEhbUE"}, {"count": 67, "itemId": "oxf5sFM3", "itemSku": "7oeD77Vw", "itemType": "myIpEnTc"}, {"count": 48, "itemId": "MgWZS1Xl", "itemSku": "AnKCrbmV", "itemType": "Hlzj1pKA"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 22, "fixedTrialCycles": 8, "graceDays": 91}, "regionData": {"KljNAeQX": [{"currencyCode": "znahEV5z", "currencyNamespace": "Tn2Hgz6r", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1983-08-17T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1980-05-05T00:00:00Z", "discountedPrice": 51, "expireAt": "1981-04-17T00:00:00Z", "price": 49, "purchaseAt": "1974-01-03T00:00:00Z", "trialPrice": 81}, {"currencyCode": "8KbX8zld", "currencyNamespace": "6wwRc5TA", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1987-01-25T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1973-08-31T00:00:00Z", "discountedPrice": 96, "expireAt": "1992-02-19T00:00:00Z", "price": 1, "purchaseAt": "1996-05-31T00:00:00Z", "trialPrice": 72}, {"currencyCode": "b8HR4gRf", "currencyNamespace": "KmXnM5O7", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1992-04-11T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1974-10-10T00:00:00Z", "discountedPrice": 12, "expireAt": "1998-12-26T00:00:00Z", "price": 22, "purchaseAt": "1989-10-18T00:00:00Z", "trialPrice": 28}], "suYMxGxr": [{"currencyCode": "26SW5ID9", "currencyNamespace": "VF8RX9ZT", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1976-09-03T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1980-09-03T00:00:00Z", "discountedPrice": 94, "expireAt": "1996-08-28T00:00:00Z", "price": 11, "purchaseAt": "1983-08-17T00:00:00Z", "trialPrice": 19}, {"currencyCode": "g74qyNki", "currencyNamespace": "81ugE52j", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1996-04-09T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-10-16T00:00:00Z", "discountedPrice": 5, "expireAt": "1979-12-07T00:00:00Z", "price": 71, "purchaseAt": "1989-11-21T00:00:00Z", "trialPrice": 67}, {"currencyCode": "bjnJ4rTI", "currencyNamespace": "WfNW6NAD", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1976-11-30T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1986-06-14T00:00:00Z", "discountedPrice": 32, "expireAt": "1998-12-14T00:00:00Z", "price": 69, "purchaseAt": "1997-01-20T00:00:00Z", "trialPrice": 91}], "QAEYHZl3": [{"currencyCode": "K3Jq9IVs", "currencyNamespace": "z7BOmKPA", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1981-04-01T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1991-04-12T00:00:00Z", "discountedPrice": 92, "expireAt": "1981-12-16T00:00:00Z", "price": 38, "purchaseAt": "1982-12-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "QcKEm7bV", "currencyNamespace": "M0IZUwHX", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1990-09-26T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1999-10-16T00:00:00Z", "discountedPrice": 35, "expireAt": "1997-03-18T00:00:00Z", "price": 53, "purchaseAt": "1972-01-05T00:00:00Z", "trialPrice": 47}, {"currencyCode": "6PhroW4k", "currencyNamespace": "vlZGFz7m", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1998-03-05T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-03-02T00:00:00Z", "discountedPrice": 15, "expireAt": "1978-02-11T00:00:00Z", "price": 40, "purchaseAt": "1974-05-10T00:00:00Z", "trialPrice": 61}]}, "seasonType": "PASS", "sku": "N4NHxFxf", "stackable": false, "status": "INACTIVE", "tags": ["UnO1MbD0", "DISpQJiM", "0LF8e0ry"], "targetCurrencyCode": "pz86JMt5", "targetNamespace": "R8wTASx4", "thumbnailUrl": "WWf6pZOD", "useCount": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'VE3eMp78' \
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
    'XHm8Xh19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'aKpy6ml5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '8FdcqH3R' \
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
    'dUZryLM6' \
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
    'OmoRfrRO' \
    --body '{"itemIds": ["Ibvzm2cJ", "ecSURf8P", "VzRfM4ym"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'P47KGXtC' \
    'A3msEkvm' \
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
    'UwZr6Vuj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'oEcvtQtW' \
    '5fWt7O2b' \
    --body '{"appId": "Mm0EUzLY", "appType": "DLC", "baseAppId": "Aqml26kl", "boothName": "q2PSbiOY", "categoryPath": "XNrpQYjl", "clazz": "bLJdBHz3", "displayOrder": 73, "entitlementType": "CONSUMABLE", "ext": {"6sRCJ8g4": {}, "6SpxSLR1": {}, "9C8oICId": {}}, "features": ["tBC5xIxj", "WxiHVvhP", "1qJlFRQX"], "images": [{"as": "gh20HpZF", "caption": "H0tuwdwf", "height": 8, "imageUrl": "nShW4Akz", "smallImageUrl": "zpGiidGc", "width": 46}, {"as": "4Ey1QeOX", "caption": "9KVwXkQN", "height": 58, "imageUrl": "CptKfWcz", "smallImageUrl": "4igRsQD7", "width": 69}, {"as": "T1KARDh0", "caption": "ExCOfnyD", "height": 88, "imageUrl": "pc32zxnA", "smallImageUrl": "fCXBMujc", "width": 86}], "itemIds": ["KkMrcHHr", "BSnLQS34", "pC0qW7Hx"], "itemQty": {"LAFJdb8D": 69, "sDF9l8ED": 41, "naUtTWoE": 11}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"G1rEZ8BH": {"description": "zFF2UNxr", "localExt": {"JSQTA4zQ": {}, "BTsr9OPn": {}, "Fsr8mCGy": {}}, "longDescription": "McRKBEQ3", "title": "gGuxR8uo"}, "TD7Rq8xd": {"description": "3zWcIGpU", "localExt": {"3oyKdcCb": {}, "VPrkPIcU": {}, "GHeD1SRf": {}}, "longDescription": "RLalC12W", "title": "bRG4TNh4"}, "t8mvhJ73": {"description": "HeOwjxsX", "localExt": {"El3Ba83L": {}, "f6tjSREL": {}, "cmAKF6n7": {}}, "longDescription": "diFGUi3M", "title": "MohjfJlt"}}, "lootBoxConfig": {"rewardCount": 30, "rewards": [{"lootBoxItems": [{"count": 37, "itemId": "YIkfe0He", "itemSku": "DoKQrBvN", "itemType": "hh4BL4wu"}, {"count": 36, "itemId": "o2bZ7D64", "itemSku": "tLF9ldNc", "itemType": "669C7nmb"}, {"count": 73, "itemId": "tqaHxAHm", "itemSku": "nH6hdVEc", "itemType": "ng2wrNwx"}], "name": "Hqil5TPV", "odds": 0.99914737942853, "type": "PROBABILITY_GROUP", "weight": 44}, {"lootBoxItems": [{"count": 72, "itemId": "9SUBKFab", "itemSku": "ZtYLihxu", "itemType": "GRgMXC9L"}, {"count": 39, "itemId": "VSm4jn4B", "itemSku": "4J30bEx4", "itemType": "t5lmwLJP"}, {"count": 51, "itemId": "wIQWIjgz", "itemSku": "p2oECKe9", "itemType": "NGHdK52i"}], "name": "xBgAbRhZ", "odds": 0.9452553685400042, "type": "PROBABILITY_GROUP", "weight": 25}, {"lootBoxItems": [{"count": 83, "itemId": "taJsk0pV", "itemSku": "PqtuoLJJ", "itemType": "i5NYqOwg"}, {"count": 66, "itemId": "EN76ZrGz", "itemSku": "dXfthpaH", "itemType": "CJJ8QZFI"}, {"count": 38, "itemId": "ZC57vaD2", "itemSku": "Sn57n0WF", "itemType": "ssbSFVNo"}], "name": "PMkS1Jy3", "odds": 0.31019872032654516, "type": "REWARD", "weight": 50}], "rollFunction": "DEFAULT"}, "maxCount": 57, "maxCountPerUser": 82, "name": "ulRfYy0Q", "optionBoxConfig": {"boxItems": [{"count": 3, "itemId": "FnG4Vn1l", "itemSku": "nth2MVBK", "itemType": "GPVeLDzh"}, {"count": 4, "itemId": "xuQ7QEwe", "itemSku": "8aAUCNpz", "itemType": "vRIwr3wZ"}, {"count": 51, "itemId": "eptVl1rm", "itemSku": "A931spMM", "itemType": "pqx2yvQc"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 46, "fixedTrialCycles": 18, "graceDays": 55}, "regionData": {"WKzbyssA": [{"currencyCode": "E4sxD9TD", "currencyNamespace": "NY21J483", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1997-02-14T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1996-10-17T00:00:00Z", "discountedPrice": 98, "expireAt": "1993-05-26T00:00:00Z", "price": 13, "purchaseAt": "1999-02-01T00:00:00Z", "trialPrice": 69}, {"currencyCode": "zMoO9mQh", "currencyNamespace": "72CrVagz", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1996-12-08T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1971-03-17T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-10T00:00:00Z", "price": 52, "purchaseAt": "1994-12-19T00:00:00Z", "trialPrice": 51}, {"currencyCode": "vs44lpzi", "currencyNamespace": "SJ0qzuCj", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1974-04-03T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1992-01-05T00:00:00Z", "discountedPrice": 75, "expireAt": "1975-12-23T00:00:00Z", "price": 74, "purchaseAt": "1986-08-29T00:00:00Z", "trialPrice": 26}], "MV1d1lqk": [{"currencyCode": "inGTog6T", "currencyNamespace": "iXEqxJK1", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1994-04-26T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1991-04-24T00:00:00Z", "discountedPrice": 25, "expireAt": "1995-04-09T00:00:00Z", "price": 93, "purchaseAt": "1990-03-12T00:00:00Z", "trialPrice": 17}, {"currencyCode": "qWaZcUaQ", "currencyNamespace": "YdezypE3", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1993-12-10T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1980-01-06T00:00:00Z", "discountedPrice": 55, "expireAt": "1976-02-04T00:00:00Z", "price": 42, "purchaseAt": "1991-08-11T00:00:00Z", "trialPrice": 68}, {"currencyCode": "UXpbvWOA", "currencyNamespace": "EhGWrbXy", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1995-11-25T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1999-07-24T00:00:00Z", "discountedPrice": 96, "expireAt": "1988-02-10T00:00:00Z", "price": 78, "purchaseAt": "1989-11-13T00:00:00Z", "trialPrice": 95}], "vTl9l9TA": [{"currencyCode": "uqoyOqGX", "currencyNamespace": "gRlyrjjl", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1983-01-06T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1971-10-31T00:00:00Z", "discountedPrice": 38, "expireAt": "1997-07-01T00:00:00Z", "price": 65, "purchaseAt": "1983-10-07T00:00:00Z", "trialPrice": 61}, {"currencyCode": "KyfAXALU", "currencyNamespace": "RA4Egj8z", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1984-03-31T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1995-05-10T00:00:00Z", "discountedPrice": 26, "expireAt": "1981-01-06T00:00:00Z", "price": 58, "purchaseAt": "1974-01-28T00:00:00Z", "trialPrice": 80}, {"currencyCode": "3fSjw3I3", "currencyNamespace": "vTXLuepG", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1999-06-23T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1992-09-05T00:00:00Z", "discountedPrice": 80, "expireAt": "1975-05-20T00:00:00Z", "price": 36, "purchaseAt": "1990-08-01T00:00:00Z", "trialPrice": 71}]}, "seasonType": "TIER", "sku": "SmzsPUMd", "stackable": false, "status": "ACTIVE", "tags": ["xqnD0Y1f", "QVfn1ZlC", "so9aqCpZ"], "targetCurrencyCode": "fdamkW9a", "targetNamespace": "dSLzS2Ev", "thumbnailUrl": "qcj6E7sk", "useCount": 60}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'CbdsQgAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'VQIEA554' \
    --body '{"count": 72, "orderNo": "vKX7rpkp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'HtrFwGwt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'xKv5CwI4' \
    'zNbkrbRT' \
    --body '{"carousel": [{"alt": "hOhwW4d7", "previewUrl": "QHYte0pk", "thumbnailUrl": "yWsENAss", "type": "video", "url": "UPJEyoAJ", "videoSource": "vimeo"}, {"alt": "gjVpvDZX", "previewUrl": "cSFMEJaV", "thumbnailUrl": "GnQuHXx3", "type": "video", "url": "i61UVmdD", "videoSource": "youtube"}, {"alt": "gH6dYjG0", "previewUrl": "4TTV1yaW", "thumbnailUrl": "3TisoxFk", "type": "video", "url": "BTEuq4z1", "videoSource": "generic"}], "developer": "BcnXdW0l", "forumUrl": "MjLdO1oF", "genres": ["Action", "RPG", "Racing"], "localizations": {"eUoGBPpL": {"announcement": "Cay3OHxQ", "slogan": "dUFChNoI"}, "iwIqzDvw": {"announcement": "G69oQpBl", "slogan": "iAwFIFb2"}, "n38gpEOL": {"announcement": "7EljYXlj", "slogan": "qH3QKrlE"}}, "platformRequirements": {"8gTrnrfb": [{"additionals": "1wzM0g8b", "directXVersion": "pqmAKDbv", "diskSpace": "lidQxV88", "graphics": "HnIPzryO", "label": "O9JebExY", "osVersion": "0Fh2bqtT", "processor": "X2dfL0El", "ram": "HngvAhQF", "soundCard": "lTlYyGg3"}, {"additionals": "EnOiBEuL", "directXVersion": "tRs6jpCJ", "diskSpace": "HSuAEdw1", "graphics": "ZSZ48GGD", "label": "bSMXCz75", "osVersion": "91z3wPQO", "processor": "yeKwE4r9", "ram": "aGLWyA22", "soundCard": "x7wltdOX"}, {"additionals": "X05fc5t1", "directXVersion": "fJyl8gZf", "diskSpace": "73YDjCfg", "graphics": "kAIMXBrU", "label": "5dK0bHdm", "osVersion": "bi4IqDLh", "processor": "zEoHe6s4", "ram": "e9NvjkTR", "soundCard": "I2C8hEH8"}], "Nt0Tix5q": [{"additionals": "0crp3C3P", "directXVersion": "D225h9ac", "diskSpace": "Tu1BuRAD", "graphics": "IOTlkXIU", "label": "Uy0gwhwB", "osVersion": "6c3BWawX", "processor": "UsBUfOwm", "ram": "VtCxUqtb", "soundCard": "AUBZtbky"}, {"additionals": "u7xKG0fv", "directXVersion": "HHZjl9i8", "diskSpace": "ecKoidgw", "graphics": "RACRfUOe", "label": "KlupqD5U", "osVersion": "Q91bjZO6", "processor": "zU4kqSYW", "ram": "r8vzxu8t", "soundCard": "EtSrtUVR"}, {"additionals": "XZ6pmjr4", "directXVersion": "1bK8sB5m", "diskSpace": "twOrGnId", "graphics": "eSEVLOxW", "label": "50731UdU", "osVersion": "iNEcoRfn", "processor": "b5XvFTVL", "ram": "iFOQPwWn", "soundCard": "Tjfbadm3"}], "Mtsmownv": [{"additionals": "CqEmcu2N", "directXVersion": "vnfYMVgv", "diskSpace": "RxSNVHo8", "graphics": "kC5xLwwD", "label": "lfQYxnMl", "osVersion": "jYyStjCG", "processor": "f03dhSXl", "ram": "RyXF35ru", "soundCard": "Z7uZWqWL"}, {"additionals": "ASyitLkY", "directXVersion": "RuUKnN0u", "diskSpace": "f7iPCdBl", "graphics": "r4cgIadV", "label": "UP6Fumqq", "osVersion": "FwoavKY5", "processor": "dWHnW1Jh", "ram": "DVqUcqtz", "soundCard": "l9pEcB4d"}, {"additionals": "3gaZS04l", "directXVersion": "o6HwpgDw", "diskSpace": "cAI2HNV1", "graphics": "0GQCTpSO", "label": "oRy6Ceif", "osVersion": "a8iHPQdm", "processor": "UMnx8Zmd", "ram": "SHS3TK0A", "soundCard": "W4qStQSc"}]}, "platforms": ["Android", "MacOS", "Windows"], "players": ["LocalCoop", "LocalCoop", "Multi"], "primaryGenre": "Racing", "publisher": "YaQ8kMcK", "releaseDate": "1996-10-22T00:00:00Z", "websiteUrl": "18tHZa8F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '1rNGhFg7' \
    'ETBZemfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'Xn9Z2Lln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'XmmQi9nY' \
    'TNYgMf5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'wDyuWeO9' \
    '7cBht59s' \
    'fjqf6kxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'Hxjx75BN' \
    'HHY3nIQH' \
    'dqGgK5vc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'MO5EYs1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '2EajMjfg' \
    'nBRa82mv' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 94, "comparison": "excludes", "name": "GCZ8k5M3", "predicateType": "SeasonPassPredicate", "value": "rVOlAD3l", "values": ["KgCgoLC0", "c7Aa7918", "C47Zksog"]}, {"anyOf": 84, "comparison": "isGreaterThan", "name": "54dJjvPR", "predicateType": "SeasonTierPredicate", "value": "qWBZvb8y", "values": ["LNortLXq", "Z1530wtP", "d8PxSm65"]}, {"anyOf": 84, "comparison": "isGreaterThanOrEqual", "name": "j89WKOf1", "predicateType": "EntitlementPredicate", "value": "T3gUBYYd", "values": ["rsHCScSX", "hoWq2hzn", "cpN0fhMb"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "excludes", "name": "mcVW7BA1", "predicateType": "SeasonTierPredicate", "value": "4ZauPooP", "values": ["2admgmlt", "UyAbMEM5", "KJEiNsHa"]}, {"anyOf": 22, "comparison": "isLessThanOrEqual", "name": "ntv4JYt3", "predicateType": "SeasonPassPredicate", "value": "MdSEfQS4", "values": ["BPb9MgjS", "BAFL1hhy", "I264DzYm"]}, {"anyOf": 33, "comparison": "isLessThan", "name": "Umk9MRm0", "predicateType": "SeasonPassPredicate", "value": "iTlAXlyi", "values": ["H96BHRKU", "4ZudIlvR", "FRArYEF6"]}]}, {"operator": "or", "predicates": [{"anyOf": 81, "comparison": "isLessThan", "name": "uQ0QlU45", "predicateType": "SeasonPassPredicate", "value": "q5W9TOZ3", "values": ["iMbvndx4", "oRwvMl37", "LUqRgkgb"]}, {"anyOf": 4, "comparison": "excludes", "name": "r2ngVczQ", "predicateType": "SeasonPassPredicate", "value": "w2Ry5B4S", "values": ["TmhlCu2J", "qvoStzzZ", "x1tcM7zt"]}, {"anyOf": 9, "comparison": "is", "name": "vaaDWjCJ", "predicateType": "SeasonPassPredicate", "value": "FLXq3CVY", "values": ["ZSOsCkbi", "ASs2YES1", "zmILd7PR"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'fEkeLxkp' \
    --body '{"orderNo": "yw7Zr9NB"}' \
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
    --body '{"description": "r5K5VEfU", "name": "TVLG4khN", "status": "ACTIVE", "tags": ["KbMX4m5N", "T4G5Xr9X", "pQaUuzCz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'Toitq2m4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'rvbu1uQs' \
    --body '{"description": "BQ4wuFft", "name": "5NTR8Gz4", "status": "ACTIVE", "tags": ["4zJL1RL5", "fSPKlp7F", "gVF5InlX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'XUmiwTCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'm2MqCiRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'pnHreFUj' \
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
    'NQ5TociU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'QpRIzAN8' \
    --body '{"description": "BbW3wJ97"}' \
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
    --body '{"dryRun": false, "notifyUrl": "WLPI4Lg9", "privateKey": "O6X7fdqj"}' \
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
    --body '{"currencyCode": "bm6IKsEQ", "currencyNamespace": "kqfBDsKa", "customParameters": {"GEik35jJ": {}, "sV5ITrMG": {}, "yTxZrTtb": {}}, "description": "PvVnQszD", "extOrderNo": "rrxeufck", "extUserId": "OiCX44Mm", "itemType": "SUBSCRIPTION", "language": "dS", "metadata": {"CNrSefQe": "hHE1SXxC", "ITFv0MUt": "ZQE62fLP", "SounS4Ij": "tA7IPDlg"}, "notifyUrl": "mmpr9s8Y", "omitNotification": false, "platform": "cn1c8cem", "price": 20, "recurringPaymentOrderNo": "h7Q4lhiq", "region": "ea7u0Kvd", "returnUrl": "sJ3HdUh1", "sandbox": false, "sku": "98mjrgck", "subscriptionId": "kbPX4Lnh", "targetNamespace": "Uh6at3Hv", "targetUserId": "Bl82KNp1", "title": "leoiCY6K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'KxLsaLrN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'mingyWsF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'LezaJlwU' \
    --body '{"extTxId": "Ys1kXWFf", "paymentMethod": "9qUow9o5", "paymentProvider": "CHECKOUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'Ik1fXtqD' \
    --body '{"description": "mdNffHEm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'XtZ62azv' \
    --body '{"amount": 52, "currencyCode": "7F3Mnvlu", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 62, "vat": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'vT0GeCFc' \
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
    'Epic' \
    --body '{"allowedBalanceOrigins": ["Other", "Epic", "GooglePlay"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Nintendo' \
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
    --body '{"entitlement": {"durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' \
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
    --body '{"description": "TACDgOln", "eventTopic": "V6oAf5u0", "maxAwarded": 7, "maxAwardedPerUser": 64, "namespaceExpression": "MGr08uHO", "rewardCode": "NCrPxuAv", "rewardConditions": [{"condition": "u04hmF4S", "conditionName": "VeMGUIwl", "eventName": "pBNLsjU9", "rewardItems": [{"duration": 87, "itemId": "E9s6LNiL", "quantity": 91}, {"duration": 49, "itemId": "Oq0c3spi", "quantity": 48}, {"duration": 74, "itemId": "qNcOrlxd", "quantity": 62}]}, {"condition": "CZpNVwRe", "conditionName": "mwBX6oS9", "eventName": "fhtYfn6F", "rewardItems": [{"duration": 6, "itemId": "m2eIgYhD", "quantity": 58}, {"duration": 14, "itemId": "fHZqP8FM", "quantity": 49}, {"duration": 16, "itemId": "2Rpmh6TR", "quantity": 75}]}, {"condition": "TiZTY1b7", "conditionName": "XtF9KYSE", "eventName": "RfGo6epO", "rewardItems": [{"duration": 8, "itemId": "pAhSgJeN", "quantity": 51}, {"duration": 78, "itemId": "HPZSHKOB", "quantity": 14}, {"duration": 80, "itemId": "jspl67HK", "quantity": 45}]}], "userIdExpression": "Vh3NlyrH"}' \
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
    'CJ22lUS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'GetReward' test.out

#- 145 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'onlOT5CQ' \
    --body '{"description": "WOVzM3uz", "eventTopic": "fFfMp1pz", "maxAwarded": 14, "maxAwardedPerUser": 36, "namespaceExpression": "ow275SpB", "rewardCode": "sIrkacY0", "rewardConditions": [{"condition": "jSooQ386", "conditionName": "x24E3wdx", "eventName": "1T7E8oR7", "rewardItems": [{"duration": 72, "itemId": "uTwAI6xC", "quantity": 54}, {"duration": 10, "itemId": "eOtASozb", "quantity": 45}, {"duration": 45, "itemId": "5rmcHnQa", "quantity": 17}]}, {"condition": "pMWF8bD3", "conditionName": "l7sQXySb", "eventName": "1dx3APzz", "rewardItems": [{"duration": 70, "itemId": "sTAphvVo", "quantity": 16}, {"duration": 87, "itemId": "2r1XZYaa", "quantity": 43}, {"duration": 50, "itemId": "5Qr02QGs", "quantity": 79}]}, {"condition": "MdNE1xVh", "conditionName": "RQhlTt2Y", "eventName": "jewU4YYe", "rewardItems": [{"duration": 53, "itemId": "2jYZVL3X", "quantity": 12}, {"duration": 69, "itemId": "XJO40DfA", "quantity": 74}, {"duration": 63, "itemId": "c8qDKAKb", "quantity": 65}]}], "userIdExpression": "CxzUUC0d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateReward' test.out

#- 146 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Vyx27OaN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'DeleteReward' test.out

#- 147 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'HvKkvThL' \
    --body '{"payload": {"EDwwb9BK": {}, "clJDiIrc": {}, "5HjWAeNX": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CheckEventCondition' test.out

#- 148 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'auR0ZILa' \
    --body '{"conditionName": "eCezfyl5", "userId": "pqCW7sVZ"}' \
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
    '7H3kvCDk' \
    --body '{"active": false, "displayOrder": 97, "endDate": "1997-06-29T00:00:00Z", "ext": {"ahJWmmsw": {}, "QMLJjU3w": {}, "GQFfGF36": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 23, "itemCount": 30, "rule": "SEQUENCE"}, "items": [{"id": "3B4litUY", "sku": "1DLNZPxe"}, {"id": "taZe5ObC", "sku": "fEOYja6C"}, {"id": "31laJPfX", "sku": "beCu87Xd"}], "localizations": {"j3OieOa4": {"description": "opiUxbAO", "localExt": {"MjwiIS2m": {}, "ojjZRLQy": {}, "pSSq6htk": {}}, "longDescription": "NI8h7dD7", "title": "87hT7k6o"}, "rquLJXlb": {"description": "gA4mwy2v", "localExt": {"pvZEVAvc": {}, "Ot1cndas": {}, "wt93hceA": {}}, "longDescription": "jnTRDgoY", "title": "eLiHpkj8"}, "91FhQYWp": {"description": "fMYbpuGc", "localExt": {"YaUvqgnX": {}, "plWvQluB": {}, "6XSCpJYy": {}}, "longDescription": "K494alPt", "title": "jZuO9vlm"}}, "name": "PEMv3zdJ", "rotationType": "CUSTOM", "startDate": "1989-07-01T00:00:00Z", "viewId": "o24sGPKp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'CreateSection' test.out

#- 151 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'lPyBsLa0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'PurgeExpiredSection' test.out

#- 152 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'hYZGtbbo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetSection' test.out

#- 153 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'SNiCFzCR' \
    '7myESMkC' \
    --body '{"active": false, "displayOrder": 57, "endDate": "1995-02-25T00:00:00Z", "ext": {"ReuMECgs": {}, "gkh9WUIt": {}, "eYf6wwj1": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 52, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "RmZtcjtn", "sku": "IPtg50Ye"}, {"id": "FAgHa8GN", "sku": "Csva4v3o"}, {"id": "oodcj5MM", "sku": "D4udl8dl"}], "localizations": {"ye1FejvI": {"description": "C5DUjRt1", "localExt": {"a5NJxaH7": {}, "lqTH53Vp": {}, "Ty91qUQi": {}}, "longDescription": "pQOaOyR9", "title": "gPsD1ocd"}, "uouy4amu": {"description": "wcEgBzJe", "localExt": {"zAIaLqTJ": {}, "4QkjiEjK": {}, "caDX2a0H": {}}, "longDescription": "GkQmZoVz", "title": "IyGnssGP"}, "9JLqlmXo": {"description": "wWPbfBkV", "localExt": {"K1oaETsZ": {}, "QFv0HdBH": {}, "hsJKn3v0": {}}, "longDescription": "9jFTdTul", "title": "b0sU3UZH"}}, "name": "QIpjMWlp", "rotationType": "NONE", "startDate": "1974-04-08T00:00:00Z", "viewId": "aY9zC4sD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateSection' test.out

#- 154 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'F8hgikfu' \
    '0LoqaW3l' \
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
    --body '{"defaultLanguage": "xexonu9g", "defaultRegion": "2R7wu3ZQ", "description": "ycSWfFs5", "supportedLanguages": ["5uUvGAGb", "TnV9MjFT", "cDqbqxW3"], "supportedRegions": ["l4Eowtne", "ljBO1SH1", "47DDBVz5"], "title": "ADmM7Be3"}' \
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
    '0tSaEh5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetStore' test.out

#- 163 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'xVBoQalL' \
    --body '{"defaultLanguage": "cNX29OXr", "defaultRegion": "H9tCnyVX", "description": "R1pkU6XM", "supportedLanguages": ["NBZBj0sS", "BfNCK8di", "jeVOMDKN"], "supportedRegions": ["CWMbMOed", "eEBMtrJI", "08AMzZjC"], "title": "4dmeijMn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'UpdateStore' test.out

#- 164 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '2Z4nF12T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'DeleteStore' test.out

#- 165 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '4UT7LO1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'QueryChanges' test.out

#- 166 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'Fgj634xk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishAll' test.out

#- 167 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'aFKZqSTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'PublishSelected' test.out

#- 168 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'ekrkohz1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'SelectAllRecords' test.out

#- 169 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'hM5sKugm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetStatistic' test.out

#- 170 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'zeWxgKhO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UnselectAllRecords' test.out

#- 171 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'AQCwCpTW' \
    'AKxm5XTq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'SelectRecord' test.out

#- 172 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '3TyzJdk3' \
    'uzOyfMI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'UnselectRecord' test.out

#- 173 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'KUViShQy' \
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
    'GqTR3HPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'RecurringChargeSubscription' test.out

#- 177 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'neE6gqjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetTicketDynamic' test.out

#- 178 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'NIQbgA3i' \
    --body '{"orderNo": "Giz0YIkh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'DecreaseTicketSale' test.out

#- 179 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '9dvY6Yvb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'GetTicketBoothID' test.out

#- 180 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'HzbTH6eU' \
    --body '{"count": 61, "orderNo": "HNFttuTZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'IncreaseTicketSale' test.out

#- 181 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'LfWpNhIX' \
    --body '{"achievements": [{"id": "aZFG3EWD", "value": 88}, {"id": "cg0QfNZN", "value": 58}, {"id": "lqOjLKjY", "value": 45}], "steamUserId": "qE9KmY8f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'UnlockSteamUserAchievement' test.out

#- 182 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '2bgJqJHC' \
    'K9Y2Z0Wz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetXblUserAchievements' test.out

#- 183 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '2F6SBmX4' \
    --body '{"achievements": [{"id": "g8EshAs4", "value": 98}, {"id": "x1WAOLG2", "value": 4}, {"id": "gYcE7qdv", "value": 14}], "serviceConfigId": "3LDW9n9C", "titleId": "zPz4zGVS", "xboxUserId": "rGXFtMsw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'UpdateXblUserAchievement' test.out

#- 184 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'GxTFVAEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeCampaign' test.out

#- 185 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'TcHLtSNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeEntitlement' test.out

#- 186 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'mcRA1btD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeFulfillment' test.out

#- 187 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    '9zDvhQF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeIntegration' test.out

#- 188 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '3WSHDYNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizeOrder' test.out

#- 189 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'nEAz0d25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizePayment' test.out

#- 190 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'bmvMBKdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeRevocation' test.out

#- 191 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'kdDt05IN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AnonymizeSubscription' test.out

#- 192 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '6akq8MXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AnonymizeWallet' test.out

#- 193 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'CxEZ8wOu' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserDLC' test.out

#- 194 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'tOUSPs8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryUserEntitlements' test.out

#- 195 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'cfw2FQRQ' \
    --body '[{"endDate": "1996-01-13T00:00:00Z", "grantedCode": "AKbBqq7K", "itemId": "GqEkKjiG", "itemNamespace": "JtHIaem7", "language": "Qo-jtIf_839", "quantity": 88, "region": "nVsQuVoA", "source": "OTHER", "startDate": "1994-10-08T00:00:00Z", "storeId": "W8oL0HDj"}, {"endDate": "1977-10-13T00:00:00Z", "grantedCode": "dI5CtGEg", "itemId": "HiG9sWdZ", "itemNamespace": "cgc15rqW", "language": "KHP-Kkoe", "quantity": 37, "region": "QQmc5MVa", "source": "REDEEM_CODE", "startDate": "1972-02-23T00:00:00Z", "storeId": "DbUuGD9W"}, {"endDate": "1975-10-04T00:00:00Z", "grantedCode": "dakfE5XA", "itemId": "xH9sBII7", "itemNamespace": "ZFPKl0eN", "language": "lw", "quantity": 98, "region": "bMqFpZpM", "source": "GIFT", "startDate": "1986-09-08T00:00:00Z", "storeId": "UhHpa34p"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GrantUserEntitlement' test.out

#- 196 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '6P9KycII' \
    '7YxPGB1d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserAppEntitlementByAppId' test.out

#- 197 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'h0u9BHrK' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryUserEntitlementsByAppType' test.out

#- 198 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    '1KUbOupJ' \
    'dOdpjd0M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementByItemId' test.out

#- 199 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '0mMhDXQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetUserActiveEntitlementsByItemIds' test.out

#- 200 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'xroftj20' \
    'CaCpsQZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetUserEntitlementBySku' test.out

#- 201 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'QrxdSzn1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'ExistsAnyUserActiveEntitlement' test.out

#- 202 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'BI1GaNyl' \
    '["Ghgh7Kzw", "WfTmNgrf", "62o3IqoB"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 203 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'ArUxNaMD' \
    'PfbGPyot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 204 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'r9DKlisz' \
    'RFUA4H5E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipByItemId' test.out

#- 205 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'yFl3Tuhm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetUserEntitlementOwnershipByItemIds' test.out

#- 206 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'ecXnSsno' \
    'Jj1G74fY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlementOwnershipBySku' test.out

#- 207 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'tagcji5b' \
    '30OWVdFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserEntitlements' test.out

#- 208 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'zHebFnkx' \
    'SYOZKZvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetUserEntitlement' test.out

#- 209 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'l0GP9aiL' \
    '4idRmvLe' \
    --body '{"endDate": "1975-06-26T00:00:00Z", "nullFieldList": ["3L25LPnr", "bFwpOr7l", "BhFBx5Bv"], "startDate": "1990-10-18T00:00:00Z", "status": "REVOKED", "useCount": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UpdateUserEntitlement' test.out

#- 210 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'RSmwQi5s' \
    '3Q7UZasG' \
    --body '{"options": ["VshkxL3I", "jEsdJUX9", "KcPtzsBM"], "requestId": "XmfppDwv", "useCount": 13}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'ConsumeUserEntitlement' test.out

#- 211 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'PBE5Xt9R' \
    'huAN3cBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'DisableUserEntitlement' test.out

#- 212 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'BSvUJMxD' \
    'rEOTpDtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'EnableUserEntitlement' test.out

#- 213 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'kf20M9Sg' \
    'Gd2ZMggZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetUserEntitlementHistories' test.out

#- 214 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'owpuZ6Lj' \
    '2xAkWCB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RevokeUserEntitlement' test.out

#- 215 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'FNMxtLBp' \
    --body '{"duration": 11, "endDate": "1971-10-08T00:00:00Z", "itemId": "oPlG3BbK", "itemSku": "CMj2Gnyh", "language": "Pfxivi6q", "order": {"currency": {"currencyCode": "Lyvi16Es", "currencySymbol": "c0DylqwE", "currencyType": "VIRTUAL", "decimals": 46, "namespace": "7fppkVFi"}, "ext": {"Ok26Wpua": {}, "vwikdLkm": {}, "m6cPgceT": {}}, "free": true}, "orderNo": "AqUCYTDc", "origin": "System", "quantity": 75, "region": "vjAMMlMi", "source": "REWARD", "startDate": "1991-07-07T00:00:00Z", "storeId": "VBqdsbAQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillItem' test.out

#- 216 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'y1ULY4Vw' \
    --body '{"code": "Hu9YxX3x", "language": "bud_Uj", "region": "Ghms7O2h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'RedeemCode' test.out

#- 217 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'e26gCWV4' \
    --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "fFi5suKs", "namespace": "sDIUrt4C"}, "item": {"itemId": "TcrlCL4u", "itemSku": "Yt1txPge", "itemType": "DUA4bvO6"}, "quantity": 11, "type": "ITEM"}, {"currency": {"currencyCode": "gyKJGo79", "namespace": "1ITF4ALG"}, "item": {"itemId": "Ddsb26tD", "itemSku": "WcUkWimG", "itemType": "LO7ujwUQ"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "5vwTvxTh", "namespace": "MuVzZBok"}, "item": {"itemId": "t8PvgjvL", "itemSku": "Ua4ipfUB", "itemType": "JCdfQmCa"}, "quantity": 64, "type": "ITEM"}], "source": "REWARD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'FulfillRewards' test.out

#- 218 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'z1nRTI2A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPOrders' test.out

#- 219 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'AOLGNPjL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'QueryAllUserIAPOrders' test.out

#- 220 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'TTXtiC4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserIAPConsumeHistory' test.out

#- 221 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'rDlz9arE' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "QQT-fIiF", "productId": "ZdrutBRf", "region": "kEC7vEHd", "type": "PLAYSTATION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'MockFulfillIAPItem' test.out

#- 222 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'F8uJdfo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'QueryUserOrders' test.out

#- 223 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'GcJ1M61L' \
    --body '{"currencyCode": "5NQ1OM0A", "currencyNamespace": "PwhIAxGF", "discountedPrice": 42, "ext": {"013bKN2J": {}, "zYKAgyGJ": {}, "P86NZVHl": {}}, "itemId": "uK8Bv4Mt", "language": "Fgxzt671", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 50, "quantity": 17, "region": "2SOtb8et", "returnUrl": "U9UGViBg", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateUserOrder' test.out

#- 224 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'PbQfkBXI' \
    'KFpLS8Vn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'CountOfPurchasedItem' test.out

#- 225 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'dtyTgEtc' \
    '6dKLHBXb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserOrder' test.out

#- 226 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'K1WueoOz' \
    'cIOnxQSX' \
    --body '{"status": "FULFILLED", "statusReason": "Sely4BTn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'UpdateUserOrderStatus' test.out

#- 227 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'Enz4Fe1J' \
    '1FKXKtix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'FulfillUserOrder' test.out

#- 228 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'fHrXq5Uq' \
    '1OEUew5o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserOrderGrant' test.out

#- 229 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'M4y90jqF' \
    'z2HpHmcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserOrderHistories' test.out

#- 230 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '5VH7DMBQ' \
    'U9OkVxIv' \
    --body '{"additionalData": {"cardSummary": "9ljziuHg"}, "authorisedTime": "1972-08-19T00:00:00Z", "chargebackReversedTime": "1997-08-03T00:00:00Z", "chargebackTime": "1972-07-29T00:00:00Z", "chargedTime": "1997-05-14T00:00:00Z", "createdTime": "1984-06-06T00:00:00Z", "currency": {"currencyCode": "bWgMoly1", "currencySymbol": "fhXGlcdA", "currencyType": "REAL", "decimals": 99, "namespace": "bgtQjy2F"}, "customParameters": {"irmHI4zr": {}, "qf6JfaJm": {}, "lXFi4Kmr": {}}, "extOrderNo": "ELcnsEM9", "extTxId": "djrSSGn1", "extUserId": "gMCulcyX", "issuedAt": "1986-06-01T00:00:00Z", "metadata": {"jFNMtjZI": "HekeEmvo", "qIfoS3wK": "Hn0sGOKG", "gxPaFubj": "06f9LS6g"}, "namespace": "Zlak2Gjt", "nonceStr": "Q61Hfbtp", "paymentMethod": "eVDMu3MP", "paymentMethodFee": 48, "paymentOrderNo": "eQHxq0Un", "paymentProvider": "WXPAY", "paymentProviderFee": 91, "paymentStationUrl": "DNPd51zL", "price": 46, "refundedTime": "1992-03-17T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "aBqJk8AL", "status": "CHARGE_FAILED", "statusReason": "X1u6e8xu", "subscriptionId": "1Pv7xcjD", "subtotalPrice": 64, "targetNamespace": "tDz9z6gF", "targetUserId": "8vCV98Bb", "tax": 44, "totalPrice": 33, "totalTax": 22, "txEndTime": "1987-05-02T00:00:00Z", "type": "WFl9d6or", "userId": "GvMxE1QG", "vat": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ProcessUserOrderNotification' test.out

#- 231 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'U8UrLqKR' \
    'K1Zbb2qH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'DownloadUserOrderReceipt' test.out

#- 232 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'XJ6yvveB' \
    --body '{"currencyCode": "CgG5vggG", "currencyNamespace": "UKzevj3l", "customParameters": {"OTC1RTar": {}, "5L7VxUGc": {}, "Qq9PjzPk": {}}, "description": "CVsXPi1Z", "extOrderNo": "OMXj6EWk", "extUserId": "qQvX5cOp", "itemType": "LOOTBOX", "language": "SzK-kTNY", "metadata": {"PVj4NoRa": "72qhBybB", "jRSqvJbk": "0vWMs6sO", "T4Cuvkhq": "uqSieo1o"}, "notifyUrl": "5X0voLuR", "omitNotification": true, "platform": "TGXakyjl", "price": 12, "recurringPaymentOrderNo": "vssPw3Al", "region": "KKx9EiVa", "returnUrl": "DhGCmr5c", "sandbox": true, "sku": "5SB3jECE", "subscriptionId": "duPPA8mU", "title": "jvjGyawp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'CreateUserPaymentOrder' test.out

#- 233 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'X3DK5Z3W' \
    'U046jEd2' \
    --body '{"description": "K3Uu3krs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RefundUserPaymentOrder' test.out

#- 234 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '5CsJ6y2m' \
    --body '{"code": "f4GStCzx", "orderNo": "xon9T6rx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'ApplyUserRedemption' test.out

#- 235 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    '7rLEiV8w' \
    --body '{"meta": {"F8zdkeSU": {}, "Rerzk1hU": {}, "DFAwllpb": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "XEkwVxHY", "namespace": "sriA4qgu"}, "entitlement": {"clazz": "APP", "entitlementId": "8E9dgrmT", "type": "CONSUMABLE"}, "item": {"itemIdentity": "mO9Xt8TE", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "evvYLRuU", "namespace": "ey0wcB9B"}, "entitlement": {"clazz": "SUBSCRIPTION", "entitlementId": "47IRntcj", "type": "CONSUMABLE"}, "item": {"itemIdentity": "uLHGBfDc", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 2, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "TgnCyfVF", "namespace": "6xuNQtTP"}, "entitlement": {"clazz": "APP", "entitlementId": "PnOduEWa", "type": "DURABLE"}, "item": {"itemIdentity": "driUk1b5", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 13, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "qqLRPhkj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'DoRevocation' test.out

#- 236 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'MSk58CD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserSubscriptions' test.out

#- 237 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'hXbKkQDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscriptionActivities' test.out

#- 238 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'zZJ6RC7j' \
    --body '{"grantDays": 24, "itemId": "z0lt8Vih", "language": "qULa7zaj", "reason": "TJHcudpY", "region": "J3Ed2Foo", "source": "h1l7r4yH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'PlatformSubscribeSubscription' test.out

#- 239 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '8ewPswHU' \
    '8BLqCUK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 240 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '7jG7trHp' \
    'NKqO1XQI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserSubscription' test.out

#- 241 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '0KbKDh2E' \
    'SQw5ATQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DeleteUserSubscription' test.out

#- 242 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'nKdz7Lzi' \
    'iJI22weL' \
    --body '{"immediate": true, "reason": "WBFI6GvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'CancelSubscription' test.out

#- 243 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'ETBlBW3O' \
    'LmE4cWPS' \
    --body '{"grantDays": 89, "reason": "FyuKpW6S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GrantDaysToSubscription' test.out

#- 244 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'I5eDOvLo' \
    'GHOgTSc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserSubscriptionBillingHistories' test.out

#- 245 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'UtoYCciX' \
    'KaYQIOmF' \
    --body '{"additionalData": {"cardSummary": "1j8p3yhj"}, "authorisedTime": "1985-12-15T00:00:00Z", "chargebackReversedTime": "1997-05-07T00:00:00Z", "chargebackTime": "1989-05-10T00:00:00Z", "chargedTime": "1979-09-28T00:00:00Z", "createdTime": "1989-01-21T00:00:00Z", "currency": {"currencyCode": "hwnVh6Ob", "currencySymbol": "epwNvXwi", "currencyType": "REAL", "decimals": 81, "namespace": "iAq5jhP4"}, "customParameters": {"1SrMqNaE": {}, "nVbx0h7G": {}, "eORYRSVA": {}}, "extOrderNo": "LA4gsADk", "extTxId": "QiF0ZbLT", "extUserId": "juTj1jCf", "issuedAt": "1991-05-15T00:00:00Z", "metadata": {"cshxKRia": "RntKlslL", "lME8BzMz": "TWdSEcnN", "AIYH1FVD": "1EQS7Mny"}, "namespace": "u5hjrQ1C", "nonceStr": "CEsux8sj", "paymentMethod": "NDUNc3mG", "paymentMethodFee": 5, "paymentOrderNo": "jTDQHr8f", "paymentProvider": "ADYEN", "paymentProviderFee": 34, "paymentStationUrl": "OCckiK1N", "price": 67, "refundedTime": "1993-11-01T00:00:00Z", "salesTax": 21, "sandbox": true, "sku": "ejliwu8s", "status": "REQUEST_FOR_INFORMATION", "statusReason": "c6ofamDM", "subscriptionId": "DbbW4hHK", "subtotalPrice": 44, "targetNamespace": "i0UcKoKF", "targetUserId": "RjRYi6v9", "tax": 41, "totalPrice": 50, "totalTax": 98, "txEndTime": "1972-03-09T00:00:00Z", "type": "SgrVpXLB", "userId": "DkxKfsJz", "vat": 18}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ProcessUserSubscriptionNotification' test.out

#- 246 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'sd3LagU6' \
    'Jp4gdxyC' \
    --body '{"count": 76, "orderNo": "8tH8G3uX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AcquireUserTicket' test.out

#- 247 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'DgkS5I15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserCurrencyWallets' test.out

#- 248 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'w7oggxJF' \
    'Pq3KD3sH' \
    --body '{"allowOverdraft": true, "amount": 22, "balanceOrigin": "IOS", "reason": "U1aEyxNm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'DebitUserWalletByCurrencyCode' test.out

#- 249 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '6RXs2i53' \
    'L4h9N2Li' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'ListUserCurrencyTransactions' test.out

#- 250 CheckWallet
eval_tap 0 250 'CheckWallet # SKIP deprecated' test.out

#- 251 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'wLpXN0dD' \
    '6suNQVez' \
    --body '{"amount": 14, "expireAt": "1976-02-20T00:00:00Z", "origin": "Playstation", "reason": "9xbBqbCr", "source": "REDEEM_CODE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CreditUserWallet' test.out

#- 252 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'aLtQu6VO' \
    'hQEa70Cv' \
    --body '{"amount": 51, "walletPlatform": "IOS"}' \
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
    'QRbvP1zZ' \
    --body '{"displayOrder": 6, "localizations": {"gjrl99ub": {"description": "rTK7pgCj", "localExt": {"cWw6iZ7I": {}, "8JtgyvVs": {}, "0lY8GnUd": {}}, "longDescription": "vDwAeS95", "title": "CY5vWvac"}, "a7tWwhkV": {"description": "GZgvFMfZ", "localExt": {"KMJlqo6F": {}, "W6xvubtm": {}, "BsAGfk5l": {}}, "longDescription": "DCtbXzcr", "title": "2mWTY3rv"}, "PogGz2eW": {"description": "e1siZqCs", "localExt": {"XYKGwg2R": {}, "KoiSBxcY": {}, "tnUBAo0s": {}}, "longDescription": "UaTyhHGc", "title": "vFrQt0Pg"}}, "name": "QwjRRTWy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreateView' test.out

#- 260 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'a7EZBxkF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetView' test.out

#- 261 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'PH8EaBtu' \
    'ZvHVv8PC' \
    --body '{"displayOrder": 34, "localizations": {"s0AoQNJg": {"description": "LU1RlWxr", "localExt": {"KAq9LVcH": {}, "oxDJpCtQ": {}, "4trHDUAm": {}}, "longDescription": "g0IQQSjp", "title": "jbHRXeFF"}, "WAtmnAS7": {"description": "ay22Ip4s", "localExt": {"MNSQMSDn": {}, "8MCeY81O": {}, "Vc75MWlt": {}}, "longDescription": "vnE3aTg7", "title": "s9ScEHLn"}, "m03TfbU9": {"description": "XvAAItKN", "localExt": {"ELcmfPdf": {}, "QhG9lnhz": {}, "f5MxK2Qa": {}}, "longDescription": "kpmXPiBG", "title": "sgWOZPsH"}}, "name": "v62QcGJS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateView' test.out

#- 262 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'OXLrcqUc' \
    'cFWox8P1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DeleteView' test.out

#- 263 QueryWallets
eval_tap 0 263 'QueryWallets # SKIP deprecated' test.out

#- 264 GetWallet
eval_tap 0 264 'GetWallet # SKIP deprecated' test.out

#- 265 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'zGtqOom7' \
    '1loC3Q5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'SyncOrders' test.out

#- 266 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["luUlwyY9", "pCrT29hp", "9W5lgcbZ"], "apiKey": "KkjDdiP7", "authoriseAsCapture": false, "blockedPaymentMethods": ["SAwJignN", "nM8uni5p", "mrLcd8Qu"], "clientKey": "dizT2qz6", "dropInSettings": "3OE86W7J", "liveEndpointUrlPrefix": "ujBuX1o4", "merchantAccount": "ywOHytQt", "notificationHmacKey": "pHCEYuev", "notificationPassword": "cQ5T7Fuq", "notificationUsername": "WX6SpkgR", "returnUrl": "DGQu5r7A", "settings": "KGW3FQNB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestAdyenConfig' test.out

#- 267 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "RtRgkB9J", "privateKey": "HuBUWMFi", "publicKey": "EVzn8xR0", "returnUrl": "4l8yzv1X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestAliPayConfig' test.out

#- 268 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "QqL1zJM6", "secretKey": "tBpRenY2"}' \
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
    --body '{"clientID": "ZULR21y1", "clientSecret": "E2ujpuKP", "returnUrl": "GDy9z6Vr", "webHookId": "bup9Ovz2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'TestPayPalConfig' test.out

#- 271 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["l0ChFCLe", "i0huDx4B", "nDMvPf1D"], "publishableKey": "8Bcfo6Bo", "secretKey": "u1HSPi6l", "webhookSecret": "RFWbd4KO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestStripeConfig' test.out

#- 272 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "vGLrOTp2", "key": "XOr8Xedx", "mchid": "IViOIZo6", "returnUrl": "Cc2knVEP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestWxPayConfig' test.out

#- 273 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "G6SMbrEw", "flowCompletionUrl": "BJ42oEnH", "merchantId": 84, "projectId": 0, "projectSecretKey": "80MF6bEW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'TestXsollaConfig' test.out

#- 274 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'ns6GsbOW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetPaymentMerchantConfig' test.out

#- 275 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'xu7Rg1jm' \
    --body '{"allowedPaymentMethods": ["OhI4ORSf", "FAisRzVd", "v8aPgzDB"], "apiKey": "NRH3eWTe", "authoriseAsCapture": false, "blockedPaymentMethods": ["lZwevrWf", "0aP1d3ke", "aEmq28xj"], "clientKey": "gEqwo6sf", "dropInSettings": "zP99Ujk4", "liveEndpointUrlPrefix": "lSc9IZvs", "merchantAccount": "7r2qmEhi", "notificationHmacKey": "b7CkKYMj", "notificationPassword": "6qqpNX0z", "notificationUsername": "AjyLACAS", "returnUrl": "CxVKEFGM", "settings": "9thCPmGr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdateAdyenConfig' test.out

#- 276 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'm0yF5ukt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestAdyenConfigById' test.out

#- 277 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'EshJ5dyH' \
    --body '{"appId": "kFjIZTtc", "privateKey": "V0D8uAnC", "publicKey": "EtXbIFXN", "returnUrl": "M70nsSdZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdateAliPayConfig' test.out

#- 278 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'kxFsPFsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestAliPayConfigById' test.out

#- 279 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'n8ac6FjZ' \
    --body '{"publicKey": "2RKmyJlC", "secretKey": "KZuZpI2L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateCheckoutConfig' test.out

#- 280 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'oGqwdmY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestCheckoutConfigById' test.out

#- 281 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'b4w6Xa2U' \
    --body '{"clientID": "a6PgVfzm", "clientSecret": "90QOZiar", "returnUrl": "iGdel6sJ", "webHookId": "lOF4rSyn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdatePayPalConfig' test.out

#- 282 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'OKm0Hskn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'TestPayPalConfigById' test.out

#- 283 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '8dnk8Tqf' \
    --body '{"allowedPaymentMethodTypes": ["meJ4oDl7", "Re8YmmTT", "cGfiQr2F"], "publishableKey": "keBjiRby", "secretKey": "5a6Hz9xB", "webhookSecret": "axu7WK4C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'UpdateStripeConfig' test.out

#- 284 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'VSzuiFhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'TestStripeConfigById' test.out

#- 285 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'zfO9fijg' \
    --body '{"appId": "3ecw5yIg", "key": "VCGiGT1a", "mchid": "2MdPD8mG", "returnUrl": "PvfLoHhx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'UpdateWxPayConfig' test.out

#- 286 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    's9CW3Xzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateWxPayConfigCert' test.out

#- 287 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'QkfL4C1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'TestWxPayConfigById' test.out

#- 288 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '4Nf5SVUR' \
    --body '{"apiKey": "BIUEQ77X", "flowCompletionUrl": "iUa8AQyq", "merchantId": 36, "projectId": 14, "projectSecretKey": "sf7m30Jw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'UpdateXsollaConfig' test.out

#- 289 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Y8xptHCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'TestXsollaConfigById' test.out

#- 290 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '4RIIXw3Z' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
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
    --body '{"aggregate": "ADYEN", "namespace": "lFEAo38f", "region": "I6FVV81H", "sandboxTaxJarApiToken": "wdb2m9TL", "specials": ["XSOLLA", "WXPAY", "ADYEN"], "taxJarApiToken": "HUdYgKbf", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
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
    'FDY1jF8F' \
    --body '{"aggregate": "XSOLLA", "namespace": "JmoQq5nP", "region": "0UdLMOrN", "sandboxTaxJarApiToken": "dKjXJrbw", "specials": ["WXPAY", "ADYEN", "PAYPAL"], "taxJarApiToken": "LetrWnnE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'UpdatePaymentProviderConfig' test.out

#- 297 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'LFKbPqYe' \
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
    --body '{"sandboxTaxJarApiToken": "02WlzX4i", "taxJarApiToken": "GF4bl2IV", "taxJarEnabled": true, "taxJarProductCodesMapping": {"LgXMoBHU": "AYQzsnZd", "Vkz0hNo6": "1LZRS7z7", "NfNobrPm": "E6EhQOod"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'UpdatePaymentTaxConfig' test.out

#- 300 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'eWoC8vvA' \
    'VtwETjFf' \
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
    'MmCVs0F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetCategory' test.out

#- 304 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'KTaVowto' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetChildCategories' test.out

#- 305 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'jz9aEtqt' \
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
    'DLf7kpod' \
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
    'muWD0f1U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetItemBySku' test.out

#- 310 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'o4HdIKgx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicBulkGetItems' test.out

#- 311 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["Fkxx9OHd", "FFxBDLh6", "dJ2WEdeB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateItemPurchaseCondition' test.out

#- 312 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '2oncZ9sz' \
    'U7RtlMyY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicSearchItems' test.out

#- 313 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'FlJj5vhD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetApp' test.out

#- 314 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'oXByXRJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetItemDynamicData' test.out

#- 315 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'yGKs5Vo2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetItem' test.out

#- 316 GetPaymentCustomization
eval_tap 0 316 'GetPaymentCustomization # SKIP deprecated' test.out

#- 317 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "IgDz9hI1", "paymentProvider": "STRIPE", "returnUrl": "Dnl6ocIM", "ui": "05e18KMy", "zipCode": "oc1SX9di"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetPaymentUrl' test.out

#- 318 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'ajV9bPol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPaymentMethods' test.out

#- 319 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'FyLqYlAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUnpaidPaymentOrder' test.out

#- 320 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'p3Bcm71a' \
    --body '{"token": "oe76GcJV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'Pay' test.out

#- 321 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'tjVaZnob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicCheckPaymentOrderPaidStatus' test.out

#- 322 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    'AYXZ6NVH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetPaymentPublicConfig' test.out

#- 323 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '67u48Urb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetQRCode' test.out

#- 324 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'p8xl85T2' \
    'vq3WRyQI' \
    'XSOLLA' \
    'fqD02FU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicNormalizePaymentReturnUrl' test.out

#- 325 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'gzW0zs4e' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetPaymentTaxValue' test.out

#- 326 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '0FEKvJJP' \
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
    'ClFbWOQ8' \
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
    'bUmMuDno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 332 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'Y3nqCBUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 333 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'GxXrGOyM' \
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
    'ohqdWFxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyWallet' test.out

#- 336 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'rUsu6ZnA' \
    --body '{"epicGamesJwtToken": "BBPUaepm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncEpicGameDLC' test.out

#- 337 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'KoRw7XUM' \
    --body '{"serviceLabel": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicSyncPsnDlcInventory' test.out

#- 338 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'ypbwWOq2' \
    --body '{"serviceLabels": [88, 32, 12]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 339 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'oTSv4DZO' \
    --body '{"appId": "rRu4qunM", "steamId": "oVqKO57h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'SyncSteamDLC' test.out

#- 340 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'Um4h8VGm' \
    --body '{"xstsToken": "f4BPQNk7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'SyncXboxDLC' test.out

#- 341 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'huRYFi7R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicQueryUserEntitlements' test.out

#- 342 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '7yfZlE48' \
    'kH4MbZm3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetUserAppEntitlementByAppId' test.out

#- 343 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    '6Lq3igNL' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicQueryUserEntitlementsByAppType' test.out

#- 344 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'A5duF1NN' \
    '9IaGXTJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementByItemId' test.out

#- 345 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    '0TtcCJ1u' \
    'YFDS0KUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementBySku' test.out

#- 346 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'DRxdUKs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicExistsAnyUserActiveEntitlement' test.out

#- 347 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'Fnrh8kVP' \
    'mqJ0WpWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 348 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'WR4T9aHt' \
    '9KeVfLaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 349 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'OpG17p1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 350 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'cxY2AVWQ' \
    'Uo79t3Pq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 351 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'IsBdni4F' \
    'QYDSjULE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetUserEntitlement' test.out

#- 352 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'l5Ex9P8D' \
    'tLyKA3WE' \
    --body '{"options": ["q3C9vbcI", "3mrKJNiT", "APxCLPqf"], "requestId": "kxTYXnJI", "useCount": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicConsumeUserEntitlement' test.out

#- 353 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'rKQvhldr' \
    --body '{"code": "Ewme3Gwt", "language": "nigo", "region": "SqEN4qX5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicRedeemCode' test.out

#- 354 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'sHPYPsfh' \
    --body '{"excludeOldTransactions": true, "language": "Kgu_LXmn", "productId": "2YJTS9zo", "receiptData": "C7WUpWbf", "region": "76DIo1av", "transactionId": "A6qFtGRA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicFulfillAppleIAPItem' test.out

#- 355 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Br6tCMY9' \
    --body '{"epicGamesJwtToken": "yMqGChPR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncEpicGamesInventory' test.out

#- 356 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'DwNjfRqa' \
    --body '{"autoAck": false, "language": "XDOI-RPAU-246", "orderId": "p01uSQ1s", "packageName": "HlRcXx0J", "productId": "1Vrpu8mj", "purchaseTime": 27, "purchaseToken": "7SZuocIU", "region": "ZqEW885D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicFulfillGoogleIAPItem' test.out

#- 357 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '1dq9UcZw' \
    --body '{"currencyCode": "us2EDBKB", "price": 0.9128516311404973, "productId": "E0yCZ0Vw", "serviceLabel": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicReconcilePlayStationStore' test.out

#- 358 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'iP4gZjyR' \
    --body '{"currencyCode": "HmgXsMSz", "price": 0.30715283638357416, "productId": "Hp715Ri6", "serviceLabels": [16, 1, 13]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 359 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'dHLMNCLh' \
    --body '{"appId": "tcpBcngf", "currencyCode": "vQ5WAeQJ", "language": "Xefc", "price": 0.5973730447186588, "productId": "FtcdrldS", "region": "1gHb1myL", "steamId": "Idysxm3u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'SyncSteamInventory' test.out

#- 360 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    '8T5JeB54' \
    --body '{"gameId": "Ktbwq2VB", "language": "HbQ-eH", "region": "ttukQauF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'SyncTwitchDropsEntitlement' test.out

#- 361 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'dxsc6ApO' \
    --body '{"currencyCode": "0AWbn6S1", "price": 0.41669370164592445, "productId": "OakrlPBY", "xstsToken": "QqWu3tqb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'SyncXboxInventory' test.out

#- 362 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'fzoMrqQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicQueryUserOrders' test.out

#- 363 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'Lx5Gz69K' \
    --body '{"currencyCode": "mfw9J2kp", "discountedPrice": 80, "ext": {"3RA83uCb": {}, "Cxa56jXb": {}, "bNkV9Abd": {}}, "itemId": "svrLAqgq", "language": "FmV-595", "price": 16, "quantity": 23, "region": "5QshRLoz", "returnUrl": "0iILzjMf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicCreateUserOrder' test.out

#- 364 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'F9QjvcCO' \
    'YKosJEBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetUserOrder' test.out

#- 365 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'GsZRxghv' \
    '4GxR3C4q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicCancelUserOrder' test.out

#- 366 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'osrRihMw' \
    'FRp5Tdai' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetUserOrderHistories' test.out

#- 367 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'yzPgROZU' \
    '5aAPiWDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicDownloadUserOrderReceipt' test.out

#- 368 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'yYhCO6NG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetPaymentAccounts' test.out

#- 369 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'TYjDaaic' \
    'card' \
    'xMfAD0XC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicDeletePaymentAccount' test.out

#- 370 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'dp2PTDIb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicListActiveSections' test.out

#- 371 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'gPKQlGWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicQueryUserSubscriptions' test.out

#- 372 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    '0ipIA9SX' \
    --body '{"currencyCode": "SdumumER", "itemId": "aB5xQwvE", "language": "qhzw_pDBq_481", "region": "TWhQv8CI", "returnUrl": "C0y3ZvJa", "source": "diObkm2s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicSubscribeSubscription' test.out

#- 373 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'wVxInNNm' \
    'GrfXGtGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 374 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'VR8Tv3pK' \
    'CJuFECcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscription' test.out

#- 375 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'oIKMz6qj' \
    '9lGBZeI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicChangeSubscriptionBillingAccount' test.out

#- 376 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'UHQyp1Xe' \
    'LsFuBEtE' \
    --body '{"immediate": true, "reason": "vnLjXmsJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicCancelSubscription' test.out

#- 377 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '1fjJctHl' \
    'ho8etQ7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserSubscriptionBillingHistories' test.out

#- 378 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'azost60H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicListViews' test.out

#- 379 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    '9Jtnag9v' \
    'kk13kDMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetWallet' test.out

#- 380 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '8GY3wxLN' \
    'ZAD5llhU' \
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
    'BNthKB0i' \
    --body '{"itemIds": ["6ovhUIfz", "1pAwVe9J", "TQqpo1IR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
