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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "xR9D4t51", "appType": "SOFTWARE", "baseAppId": "ojEU5i9s", "boothName": "EiL8vdbu", "boundItemIds": ["kt4byq3H", "lrGWlIER", "P060Z7sW"], "categoryPath": "dMzIro9j", "clazz": "MjkEMNco", "createdAt": "1987-05-15T00:00:00Z", "description": "QEhyuQjS", "displayOrder": 46, "entitlementType": "CONSUMABLE", "ext": {"ON9yO5zE": {}, "uuS46mWS": {}, "TPbiFSCD": {}}, "features": ["96DrzeYS", "7YKRuJII", "nolA1FfH"], "fresh": false, "images": [{"as": "XAcYCVmb", "caption": "qmI3jSNT", "height": 88, "imageUrl": "WCgA7Wg3", "smallImageUrl": "SdjYvoMd", "width": 73}, {"as": "Z4FGrsij", "caption": "XHzfN7Ww", "height": 54, "imageUrl": "xWAHWQc1", "smallImageUrl": "8EyMswmo", "width": 18}, {"as": "6eFXbXWJ", "caption": "1zqjMmSr", "height": 11, "imageUrl": "TNisreKg", "smallImageUrl": "2gTunH32", "width": 71}], "itemId": "OjedCLMk", "itemIds": ["toogl0Vw", "jBahVTtZ", "HHkvIKxZ"], "itemQty": {"b3Vg3tWY": 77, "KDJpXkcB": 27, "xgt9CFHs": 78}, "itemType": "EXTENSION", "language": "6xhLRlA4", "listable": false, "localExt": {"dkng9Fh6": {}, "jow80gw0": {}, "3hBRJhe8": {}}, "longDescription": "S7IQ8tkI", "lootBoxConfig": {"rewardCount": 50, "rewards": [{"lootBoxItems": [{"count": 56, "itemId": "wBJoOk2x", "itemSku": "hBA0XTr2", "itemType": "99JREjiW"}, {"count": 32, "itemId": "nSeIYUxk", "itemSku": "kOhweqvq", "itemType": "w9JM05iv"}, {"count": 86, "itemId": "F9g8bhEx", "itemSku": "fXa6w2tH", "itemType": "prnzBPjb"}], "name": "KeyrfJsg", "odds": 0.19469517215551668, "type": "REWARD_GROUP", "weight": 1}, {"lootBoxItems": [{"count": 75, "itemId": "6nll6yio", "itemSku": "mEljGG4q", "itemType": "ndAImrcY"}, {"count": 15, "itemId": "wJIyIiM5", "itemSku": "2zO1ekAi", "itemType": "uqoP18sD"}, {"count": 42, "itemId": "VHo2fC3S", "itemSku": "ANk3NeoT", "itemType": "CaZQIo7Q"}], "name": "Yl0y0qJz", "odds": 0.5275055437501206, "type": "REWARD_GROUP", "weight": 32}, {"lootBoxItems": [{"count": 48, "itemId": "TmUuwzRe", "itemSku": "4nlpdrWU", "itemType": "xZlUeLs9"}, {"count": 80, "itemId": "oTXfJCgq", "itemSku": "0lMbcA57", "itemType": "k5eIr2Kz"}, {"count": 67, "itemId": "AkYBv4rQ", "itemSku": "ndI4IjGV", "itemType": "ALPRg51f"}], "name": "QzbPIm0b", "odds": 0.6305687639542713, "type": "PROBABILITY_GROUP", "weight": 51}]}, "maxCount": 36, "maxCountPerUser": 10, "name": "AkScgOJh", "namespace": "1LZjPAyK", "optionBoxConfig": {"boxItems": [{"count": 11, "itemId": "APfnzY2a", "itemSku": "mInSDz5L", "itemType": "8fKJBrLQ"}, {"count": 79, "itemId": "eUw3p30u", "itemSku": "yDlz5r39", "itemType": "8iTrjnBR"}, {"count": 86, "itemId": "GrjRd4ZO", "itemSku": "C0AbQ863", "itemType": "LZEtj3cR"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 76, "comparison": "isNot", "name": "cU6cNlFd", "predicateType": "SeasonTierPredicate", "value": "kLBvqUb6", "values": ["V4rvO3RV", "FQtJ8jy4", "JADU7cEp"]}, {"anyOf": 78, "comparison": "isLessThan", "name": "Gv8uddMs", "predicateType": "SeasonTierPredicate", "value": "ukfweu9K", "values": ["Qf1r0VCY", "4P03ytkO", "hnIljlkg"]}, {"anyOf": 15, "comparison": "isLessThan", "name": "heEp6EjD", "predicateType": "EntitlementPredicate", "value": "hHTplwQx", "values": ["rD8bieRv", "Rc33AmXw", "8c8OLXek"]}]}, {"operator": "or", "predicates": [{"anyOf": 63, "comparison": "isLessThan", "name": "stl4E6CX", "predicateType": "SeasonPassPredicate", "value": "zQPC14Kd", "values": ["i6Bqicnq", "ramDo82Z", "WbimbQoZ"]}, {"anyOf": 98, "comparison": "includes", "name": "IzvFMnn4", "predicateType": "SeasonTierPredicate", "value": "9aAeMOJI", "values": ["HZioRMrW", "esFnlF7f", "Wac1Nyar"]}, {"anyOf": 28, "comparison": "isLessThanOrEqual", "name": "0uTxzEhV", "predicateType": "SeasonPassPredicate", "value": "JgOYRV9b", "values": ["oVoZpr1W", "trmxbJ21", "hSzyRAMK"]}]}, {"operator": "or", "predicates": [{"anyOf": 59, "comparison": "includes", "name": "SQIjOleY", "predicateType": "SeasonTierPredicate", "value": "26veeDPB", "values": ["5juwhMMo", "cIrPEWbw", "XOq4Nvk7"]}, {"anyOf": 66, "comparison": "is", "name": "63r9Yusp", "predicateType": "SeasonPassPredicate", "value": "oq6wqXc0", "values": ["a4nu4GhB", "McIb32f4", "EgOuXmPq"]}, {"anyOf": 44, "comparison": "excludes", "name": "qPuGiw6a", "predicateType": "SeasonPassPredicate", "value": "1MVDiLM9", "values": ["B0tK34O3", "2zdiBTkS", "ClnpJUZr"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 34, "fixedTrialCycles": 55, "graceDays": 73}, "region": "47wa7sxa", "regionData": [{"currencyCode": "sL3S9ehC", "currencyNamespace": "jBKwiryZ", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1998-01-13T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1977-07-25T00:00:00Z", "discountedPrice": 92, "expireAt": "1986-06-24T00:00:00Z", "price": 52, "purchaseAt": "1993-11-25T00:00:00Z", "trialPrice": 100}, {"currencyCode": "NvPjbCFK", "currencyNamespace": "my8a8GTn", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1978-08-16T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1975-03-18T00:00:00Z", "discountedPrice": 96, "expireAt": "1992-01-08T00:00:00Z", "price": 18, "purchaseAt": "1982-08-26T00:00:00Z", "trialPrice": 80}, {"currencyCode": "Pghk7bRS", "currencyNamespace": "sYBxNtpt", "currencyType": "VIRTUAL", "discountAmount": 22, "discountExpireAt": "1991-10-25T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1987-11-18T00:00:00Z", "discountedPrice": 53, "expireAt": "1984-11-24T00:00:00Z", "price": 78, "purchaseAt": "1979-01-14T00:00:00Z", "trialPrice": 34}], "seasonType": "PASS", "sku": "tjrBDMWy", "stackable": false, "status": "INACTIVE", "tags": ["VdeIaBUo", "PyUOk1UJ", "rOqZOeQC"], "targetCurrencyCode": "PS1GRjnm", "targetItemId": "ujVlpchj", "targetNamespace": "qRykjXXC", "thumbnailUrl": "N5yRRioC", "title": "q3VDaefk", "updatedAt": "1993-11-05T00:00:00Z", "useCount": 76}, "namespace": "i1I36Lw2", "order": {"currency": {"currencyCode": "34oNnvRC", "currencySymbol": "AxEsB10Y", "currencyType": "REAL", "decimals": 52, "namespace": "PNN1NLGk"}, "ext": {"ej3ftpE4": {}, "hR00NI7H": {}, "5JrEx6H8": {}}, "free": true}, "source": "REFERRAL_BONUS"}, "script": "jZF1QtVf", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'GBJO2ifJ' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'Yg8zcI1J' --body '{"grantDays": "ezKfF2RD"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'XBW8me7e' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'ol59zM8K' --body '{"grantDays": "Ba2CSQXr"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "QS8r6PWP", "dryRun": true, "fulfillmentUrl": "orK9IYke", "itemType": "CODE", "purchaseConditionUrl": "mviK8MJM"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'INGAMEITEM' --login_with_auth "Bearer foo"
platform-get-item-type-config '8t6GONw4' --login_with_auth "Bearer foo"
platform-update-item-type-config 'LS6pHdcn' --body '{"clazz": "NlGOBYYj", "dryRun": true, "fulfillmentUrl": "UzFOZxGf", "purchaseConditionUrl": "oDfF35Li"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'Gz9TUUXd' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "qiyCg5U2", "items": [{"extraSubscriptionDays": 15, "itemId": "AUIfbyuu", "itemName": "A7mylsc7", "quantity": 70}, {"extraSubscriptionDays": 29, "itemId": "3ggY1f5m", "itemName": "VDw2fan5", "quantity": 65}, {"extraSubscriptionDays": 34, "itemId": "cr8FgwO8", "itemName": "sTuagpvH", "quantity": 56}], "maxRedeemCountPerCampaignPerUser": 89, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 22, "maxSaleCount": 43, "name": "0Hue1haJ", "redeemEnd": "1983-09-29T00:00:00Z", "redeemStart": "1997-04-17T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["8AWY39Dh", "qLseSvCS", "PDRAWktv"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'l5jsHyrf' --login_with_auth "Bearer foo"
platform-update-campaign '5CmWB3kP' --body '{"description": "ofmAoC20", "items": [{"extraSubscriptionDays": 71, "itemId": "frjMciK9", "itemName": "Kn0hHcjF", "quantity": 17}, {"extraSubscriptionDays": 0, "itemId": "b3hzHgIu", "itemName": "7VHOLBhE", "quantity": 98}, {"extraSubscriptionDays": 10, "itemId": "e3jWXEbx", "itemName": "oy9aHtBn", "quantity": 83}], "maxRedeemCountPerCampaignPerUser": 46, "maxRedeemCountPerCode": 19, "maxRedeemCountPerCodePerUser": 35, "maxSaleCount": 0, "name": "4w8Tqw5E", "redeemEnd": "1980-09-15T00:00:00Z", "redeemStart": "1988-06-28T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["uF6Lpg5D", "EbbrofqJ", "8og6b0hL"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic '9ZNrk1lr' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'CAcvYPhz' --body '{"categoryPath": "BpmqDe7K", "localizationDisplayNames": {"ZAbLqkAy": "RFUK1kPi", "LESuAe3U": "rJvsFh2J", "MXMLw9gL": "UMBqH2Qj"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'TsspbMqx' --login_with_auth "Bearer foo"
platform-update-category 'Q4vln89B' 'HCQuYPvE' --body '{"localizationDisplayNames": {"wfzGzyYg": "AyfIpBHr", "caurNevr": "rZAJKgng", "WMYDmTCI": "AF6tpMbf"}}' --login_with_auth "Bearer foo"
platform-delete-category '87ywadbN' 'KuRfanFB' --login_with_auth "Bearer foo"
platform-get-child-categories 'siOn1cNY' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'ADXRgOu7' --login_with_auth "Bearer foo"
platform-query-codes 'dMhxphul' --login_with_auth "Bearer foo"
platform-create-codes 'flWjs3L5' --body '{"quantity": 94}' --login_with_auth "Bearer foo"
platform-download 'L7QjeFgH' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'WfOE9DBK' --login_with_auth "Bearer foo"
platform-bulk-enable-codes '42f0TQDS' --login_with_auth "Bearer foo"
platform-query-redeem-history 'AZaMdzOr' --login_with_auth "Bearer foo"
platform-get-code 'OEWiQKNW' --login_with_auth "Bearer foo"
platform-disable-code 'nkdt7TDp' --login_with_auth "Bearer foo"
platform-enable-code 'qFrrW4Jf' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "PnW5zIFi"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "bcUQWIWf", "currencySymbol": "6bVxX2AE", "currencyType": "VIRTUAL", "decimals": 16, "localizationDescriptions": {"SDK25uOC": "bXW82cZR", "bP1pKH4k": "8VeT5r2q", "31tlO6Oz": "MdqyIAKM"}}' --login_with_auth "Bearer foo"
platform-update-currency 'S0nlv3AY' --body '{"localizationDescriptions": {"puvpGAlK": "2Zcoocum", "4aSfFTcT": "KsQTZ3iX", "BzHL2tan": "JmAfzkJI"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'freGBOgv' --login_with_auth "Bearer foo"
platform-get-currency-config 'alYQL2I1' --login_with_auth "Bearer foo"
platform-get-currency-summary 'f2li41yu' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "AUkg092l", "rewards": [{"currency": {"currencyCode": "cMARBGbd", "namespace": "jmAw2Te1"}, "item": {"itemId": "wXknqQa3", "itemSku": "lH8lBkpl", "itemType": "RtbzOZS4"}, "quantity": 69, "type": "CURRENCY"}, {"currency": {"currencyCode": "QEx460pZ", "namespace": "HiOdvhP4"}, "item": {"itemId": "RDnnkZbL", "itemSku": "pgC9o0G4", "itemType": "HLKqAZpK"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "fiQvcPuw", "namespace": "2Ca4H9B6"}, "item": {"itemId": "FNxI6LXu", "itemSku": "K38oD9ZN", "itemType": "82f8GYOV"}, "quantity": 82, "type": "ITEM"}]}, {"id": "PXJINSfj", "rewards": [{"currency": {"currencyCode": "47nK8V37", "namespace": "1EW34fnH"}, "item": {"itemId": "F4t9VyRk", "itemSku": "Rvs1OPsS", "itemType": "wyXYn1z2"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "4FfQ7NSd", "namespace": "wbHnJx9t"}, "item": {"itemId": "B8Wh8qDv", "itemSku": "c8z1GkBJ", "itemType": "jwEkyPYh"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "CdayqKkK", "namespace": "f24BGlHW"}, "item": {"itemId": "lLySxe1t", "itemSku": "bcKsRKeu", "itemType": "HP85Lz2O"}, "quantity": 65, "type": "ITEM"}]}, {"id": "e4WscLtR", "rewards": [{"currency": {"currencyCode": "qfKukbzF", "namespace": "3Pu007im"}, "item": {"itemId": "oqinpQFh", "itemSku": "ZDYt05Iw", "itemType": "Y6E9I09m"}, "quantity": 6, "type": "ITEM"}, {"currency": {"currencyCode": "9PqH16E9", "namespace": "nQI259CO"}, "item": {"itemId": "WqRlcZQG", "itemSku": "6lqcZipA", "itemType": "w82mBhLI"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "zlxMtl0I", "namespace": "AZIkPY1a"}, "item": {"itemId": "ALQgGYnQ", "itemSku": "dvq7bjkN", "itemType": "eGyP0R9I"}, "quantity": 32, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"KSZq243F": "u6aPsUE4", "ZWVDEvCv": "MlbmVOVt", "yScYqE9o": "jLR8eCXg"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"vhUcWAgP": "KYif9guM", "jp00yG0W": "AcYfsW5h", "6qZ8wqiz": "eRaAS8tI"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"WIW6vQyD": "pcu8kGIy", "i3f8puIT": "LS2GljWL", "voasgmmB": "5zdCuhzW"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'rF9MYlwl' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "SWylWx1t", "password": "uvKQAOiB"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "iCFFJGth"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "hdqPLYoB", "serviceAccountId": "LMux5oY8"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "qpHqH4y3", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"yq82ft0I": "pmvfezQB", "FOCuy4zf": "jSMEemBP", "lmiAJRpA": "XXHi1ltQ"}}, {"itemIdentity": "CDqtm5HD", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"9UV0Haco": "XG93KjiY", "fEAKQJvF": "hcwWj9Rh", "UhXiXWsy": "QMk8gj7v"}}, {"itemIdentity": "3Js9Yn9R", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"nZ8j7zf6": "FKJvCV9G", "PdaHybTv": "mUzUQ6Ac", "4lNMsAsc": "SiTXSCvz"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "K0130Iia"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "m3JghMAc", "publisherAuthenticationKey": "rEkgHo0e"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "Ib5fQuyC", "clientSecret": "t4HXXyKQ", "organizationId": "p8ga7JWf"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "E3ROJQ9F"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'lq7jjTve' '75CHN90J' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'ruWWZfop' '6Ns445Xy' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'w5jfgmqT' --body '{"categoryPath": "mrKAHIPC", "targetItemId": "unOKqBpm", "targetNamespace": "6XEc5z28"}' --login_with_auth "Bearer foo"
platform-create-item 'Eq8dD1Cl' --body '{"appId": "AgZd4iYG", "appType": "GAME", "baseAppId": "h1Sgx8kL", "boothName": "W2uWBiIJ", "categoryPath": "c3Nb1BPl", "clazz": "23wqHFs8", "displayOrder": 38, "entitlementType": "DURABLE", "ext": {"yiNsYmKm": {}, "CfTdKihN": {}, "AsqbeGIL": {}}, "features": ["Gg7HrXnh", "o3cgAaGK", "Do98gPRl"], "images": [{"as": "BjrJDFwu", "caption": "c8vjLuJT", "height": 24, "imageUrl": "fqe4OBzD", "smallImageUrl": "bxVXzvvu", "width": 35}, {"as": "yJLqSoQo", "caption": "yvbfC07Z", "height": 7, "imageUrl": "6G2mnADZ", "smallImageUrl": "gfK6olVe", "width": 73}, {"as": "3CzWt7hv", "caption": "lka8W5Ka", "height": 45, "imageUrl": "hvOpsZ3p", "smallImageUrl": "9XEFyxP9", "width": 14}], "itemIds": ["3NCaHiH3", "vBTy1i6c", "rTojtlHS"], "itemQty": {"4NfQnMZ7": 72, "7wX1Xcz3": 71, "kFib5l8n": 74}, "itemType": "EXTENSION", "listable": false, "localizations": {"jaV2xaH3": {"description": "x40LAzCt", "localExt": {"NywTHePc": {}, "9SWjdC8L": {}, "duKMOpDK": {}}, "longDescription": "0nuOEWNv", "title": "628nwI7X"}, "nHII3C5W": {"description": "Q1u2TIYM", "localExt": {"ehcXnkvM": {}, "kcQwNxxW": {}, "K8uIowVc": {}}, "longDescription": "ygk0jGPK", "title": "9i5nzMiM"}, "XEl8Ip7s": {"description": "kVNkIIac", "localExt": {"HtpM8VB2": {}, "hMO3aTn8": {}, "aofxWVxn": {}}, "longDescription": "IHXObtMM", "title": "mOPYCaiS"}}, "lootBoxConfig": {"rewardCount": 49, "rewards": [{"lootBoxItems": [{"count": 18, "itemId": "q0Kx4FsB", "itemSku": "hzxwKiKA", "itemType": "wtwQUiAp"}, {"count": 26, "itemId": "rrGV3WRW", "itemSku": "zv6ItLhM", "itemType": "dLQnXKYN"}, {"count": 64, "itemId": "wUrGvIdl", "itemSku": "uOY6InAX", "itemType": "fFRhr9iO"}], "name": "NMmRMfDW", "odds": 0.0376359220257132, "type": "REWARD", "weight": 28}, {"lootBoxItems": [{"count": 58, "itemId": "TmZPiTEV", "itemSku": "IQ2Fx5uD", "itemType": "PZoppXHa"}, {"count": 96, "itemId": "KkzAMyLU", "itemSku": "TlUFZLxm", "itemType": "y4h4CRMA"}, {"count": 22, "itemId": "bC2QIAUg", "itemSku": "xSLqJEbz", "itemType": "HwNxoS4q"}], "name": "gp8a0TJA", "odds": 0.3679791319330795, "type": "PROBABILITY_GROUP", "weight": 88}, {"lootBoxItems": [{"count": 32, "itemId": "HTUVANAD", "itemSku": "iysd59Xb", "itemType": "ypwro0Ci"}, {"count": 46, "itemId": "ysNOjhGv", "itemSku": "4IHTkRNT", "itemType": "TqtpLSCL"}, {"count": 51, "itemId": "rSnS8Z5F", "itemSku": "zzxPt5Zp", "itemType": "rr8zIxBu"}], "name": "NQ0FkA3s", "odds": 0.7636068120755491, "type": "REWARD", "weight": 28}]}, "maxCount": 2, "maxCountPerUser": 14, "name": "y56Fjldr", "optionBoxConfig": {"boxItems": [{"count": 8, "itemId": "nWgrBJby", "itemSku": "j7uDm1Xb", "itemType": "EGptiT8X"}, {"count": 12, "itemId": "dVaUXtUf", "itemSku": "B5s9f67J", "itemType": "xKwQA3rx"}, {"count": 32, "itemId": "bcwcBX8Y", "itemSku": "Nvb8u53t", "itemType": "MbbWbRj6"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 77, "fixedTrialCycles": 57, "graceDays": 19}, "regionData": {"4h2rWsHd": [{"currencyCode": "SN77XxRB", "currencyNamespace": "TZEiqj7x", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1984-12-05T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1995-12-20T00:00:00Z", "discountedPrice": 47, "expireAt": "1991-01-11T00:00:00Z", "price": 35, "purchaseAt": "1999-09-17T00:00:00Z", "trialPrice": 2}, {"currencyCode": "qT7MTscS", "currencyNamespace": "GhJ3i69M", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1982-05-30T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1998-06-08T00:00:00Z", "discountedPrice": 16, "expireAt": "1983-08-05T00:00:00Z", "price": 7, "purchaseAt": "1998-12-21T00:00:00Z", "trialPrice": 82}, {"currencyCode": "TjMVdcL4", "currencyNamespace": "rDk9smuk", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1975-05-30T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1989-12-20T00:00:00Z", "discountedPrice": 24, "expireAt": "1987-05-16T00:00:00Z", "price": 3, "purchaseAt": "1987-02-18T00:00:00Z", "trialPrice": 57}], "YLve1oiw": [{"currencyCode": "HeuePa56", "currencyNamespace": "gXLh5ZNU", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1973-05-05T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1980-11-25T00:00:00Z", "discountedPrice": 57, "expireAt": "1980-07-07T00:00:00Z", "price": 85, "purchaseAt": "1999-02-02T00:00:00Z", "trialPrice": 68}, {"currencyCode": "B4shMrAG", "currencyNamespace": "eHiimJl3", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1987-08-06T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1983-02-16T00:00:00Z", "discountedPrice": 88, "expireAt": "1997-04-02T00:00:00Z", "price": 72, "purchaseAt": "1985-09-21T00:00:00Z", "trialPrice": 61}, {"currencyCode": "q6e8WQ2P", "currencyNamespace": "AhbPAVOg", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1973-11-13T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1994-04-12T00:00:00Z", "discountedPrice": 66, "expireAt": "1971-07-04T00:00:00Z", "price": 69, "purchaseAt": "1974-03-18T00:00:00Z", "trialPrice": 53}], "1S9jpd8j": [{"currencyCode": "gzn4zfxt", "currencyNamespace": "FwpjvDgM", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1983-07-16T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1982-07-19T00:00:00Z", "discountedPrice": 57, "expireAt": "1986-05-06T00:00:00Z", "price": 52, "purchaseAt": "1981-01-08T00:00:00Z", "trialPrice": 75}, {"currencyCode": "Fketg3N8", "currencyNamespace": "0TEkbKlC", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1975-05-22T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1978-08-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1996-01-16T00:00:00Z", "price": 49, "purchaseAt": "1971-11-29T00:00:00Z", "trialPrice": 87}, {"currencyCode": "D8CRYlOZ", "currencyNamespace": "JEhy4D84", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1990-08-13T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1972-07-12T00:00:00Z", "discountedPrice": 25, "expireAt": "1976-03-22T00:00:00Z", "price": 55, "purchaseAt": "1974-12-31T00:00:00Z", "trialPrice": 29}]}, "seasonType": "PASS", "sku": "wMfBx43q", "stackable": true, "status": "ACTIVE", "tags": ["C7TPY8Vk", "u3Re4WPc", "qnPLoP7Q"], "targetCurrencyCode": "2Co4Rgrq", "targetNamespace": "VVN8eB3U", "thumbnailUrl": "A8JepB8Y", "useCount": 71}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'ngRpu06n' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku '2g6Vxdv8' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'QKi9RZBB' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'kmZO5wam' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'Yx6Uakj6' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'PHvkcYm6' --body '{"itemIds": ["ffq2gDvP", "NJOOTpqK", "Nw972AVK"]}' --login_with_auth "Bearer foo"
platform-search-items 'YZyrVtG1' '2ZMXAL8E' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'DlRwpQeb' --login_with_auth "Bearer foo"
platform-update-item 'NZeaFOjB' 'M2C2scch' --body '{"appId": "xashmNa3", "appType": "DLC", "baseAppId": "WHJuEPU8", "boothName": "4NNBB6MB", "categoryPath": "LnZCAd0b", "clazz": "GGaPijnv", "displayOrder": 74, "entitlementType": "DURABLE", "ext": {"8ftefTbY": {}, "Wioo2msW": {}, "DrQDnX8O": {}}, "features": ["RAiax5GM", "3uy8ffjx", "rSIRUEEy"], "images": [{"as": "E0ish40O", "caption": "ZJZTBOxF", "height": 8, "imageUrl": "lMnxYRBt", "smallImageUrl": "jIpxT3Rb", "width": 57}, {"as": "vIeuKQuV", "caption": "ie2dSM3M", "height": 48, "imageUrl": "IIaHEOO2", "smallImageUrl": "luX8y9CU", "width": 56}, {"as": "P92n5UTt", "caption": "lyEXGY7r", "height": 59, "imageUrl": "1jFQ0hCS", "smallImageUrl": "rpxr0sVL", "width": 35}], "itemIds": ["sSemUtQj", "kog9Iiha", "IzYhUk7I"], "itemQty": {"zmQlUxhc": 83, "qtfV13E4": 98, "RNeD6Og4": 56}, "itemType": "COINS", "listable": true, "localizations": {"8xFforn9": {"description": "Qxvau9of", "localExt": {"MFdZAFCi": {}, "uEEHkgwA": {}, "HC9vv3tL": {}}, "longDescription": "JReLj0wy", "title": "jAGtuLv9"}, "fAAWOHzg": {"description": "yKq2LSd9", "localExt": {"0TlPhpB6": {}, "4MIBhtIS": {}, "CHTUzd1h": {}}, "longDescription": "AvgJJsVW", "title": "RU2OIPCS"}, "Je7DAvSC": {"description": "1w7V1jed", "localExt": {"XOezjWZ6": {}, "bjEmeRzn": {}, "2UKIXQNK": {}}, "longDescription": "UzllUOY2", "title": "BbnDvaun"}}, "lootBoxConfig": {"rewardCount": 24, "rewards": [{"lootBoxItems": [{"count": 92, "itemId": "FWcqqyBM", "itemSku": "uJ6hIHmC", "itemType": "zMqoFjSo"}, {"count": 65, "itemId": "PqtiDAr3", "itemSku": "RgGCaHTs", "itemType": "6viuwX7i"}, {"count": 19, "itemId": "wbvi1xR8", "itemSku": "22gaGWPV", "itemType": "6kFC2ZlA"}], "name": "b9OpyMti", "odds": 0.7376858772746617, "type": "PROBABILITY_GROUP", "weight": 14}, {"lootBoxItems": [{"count": 58, "itemId": "0EDDCxSk", "itemSku": "sDGnPUeI", "itemType": "NjKPmoNm"}, {"count": 86, "itemId": "zYSwRmnP", "itemSku": "vkz6kH1u", "itemType": "XNwVVPYM"}, {"count": 36, "itemId": "9cdLnhqq", "itemSku": "y3tTPYAK", "itemType": "noalQTzY"}], "name": "KnqHxcSI", "odds": 0.156296213518057, "type": "REWARD_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 23, "itemId": "jVfdR7Bp", "itemSku": "47Q2q19A", "itemType": "uSfXn1Hq"}, {"count": 58, "itemId": "8YnRSc1B", "itemSku": "I4mLzpno", "itemType": "cPmdTtBi"}, {"count": 73, "itemId": "2ZkXZVcb", "itemSku": "6wRKUW0d", "itemType": "QZ40xdct"}], "name": "ITtSovmf", "odds": 0.6230457830887696, "type": "REWARD", "weight": 20}]}, "maxCount": 85, "maxCountPerUser": 98, "name": "PgxaRKBw", "optionBoxConfig": {"boxItems": [{"count": 38, "itemId": "XDiQitrH", "itemSku": "RgY0mBrE", "itemType": "5AsMmB23"}, {"count": 88, "itemId": "X3OGyyjy", "itemSku": "TLWlj5Fr", "itemType": "7eD1NB1W"}, {"count": 34, "itemId": "jhLB4S2A", "itemSku": "BQFzd9Lh", "itemType": "UDN2TFp4"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 81, "fixedTrialCycles": 62, "graceDays": 86}, "regionData": {"hELuuQP4": [{"currencyCode": "pExgWab6", "currencyNamespace": "ODEe8TfH", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1998-05-15T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1973-10-14T00:00:00Z", "discountedPrice": 41, "expireAt": "1974-11-20T00:00:00Z", "price": 99, "purchaseAt": "1999-12-03T00:00:00Z", "trialPrice": 12}, {"currencyCode": "WAGKrgiC", "currencyNamespace": "9ycpex2H", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1993-02-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1973-12-19T00:00:00Z", "discountedPrice": 18, "expireAt": "1992-09-27T00:00:00Z", "price": 13, "purchaseAt": "1992-05-29T00:00:00Z", "trialPrice": 53}, {"currencyCode": "75hFIg10", "currencyNamespace": "r01o9URq", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1979-07-10T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1979-12-24T00:00:00Z", "discountedPrice": 26, "expireAt": "1988-12-04T00:00:00Z", "price": 85, "purchaseAt": "1997-01-04T00:00:00Z", "trialPrice": 50}], "vWgDiSgZ": [{"currencyCode": "Xcm7Hrgl", "currencyNamespace": "PVLkesQu", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1992-09-10T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1988-10-21T00:00:00Z", "discountedPrice": 17, "expireAt": "1985-11-30T00:00:00Z", "price": 64, "purchaseAt": "1976-04-23T00:00:00Z", "trialPrice": 48}, {"currencyCode": "EayUvv1e", "currencyNamespace": "enTqExIF", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1983-08-14T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1975-09-21T00:00:00Z", "discountedPrice": 5, "expireAt": "1971-06-25T00:00:00Z", "price": 70, "purchaseAt": "1971-06-15T00:00:00Z", "trialPrice": 97}, {"currencyCode": "URthqDyg", "currencyNamespace": "n2FAsQL0", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1995-04-20T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1981-09-22T00:00:00Z", "discountedPrice": 26, "expireAt": "1998-06-17T00:00:00Z", "price": 57, "purchaseAt": "1982-05-27T00:00:00Z", "trialPrice": 93}], "79SvXriz": [{"currencyCode": "vL87a8rl", "currencyNamespace": "TtKMkAiV", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1988-08-18T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1993-11-21T00:00:00Z", "discountedPrice": 83, "expireAt": "1981-11-27T00:00:00Z", "price": 77, "purchaseAt": "1991-02-09T00:00:00Z", "trialPrice": 51}, {"currencyCode": "DejMBNHU", "currencyNamespace": "J3I5F58H", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1976-06-30T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1975-03-30T00:00:00Z", "discountedPrice": 5, "expireAt": "1978-02-14T00:00:00Z", "price": 45, "purchaseAt": "1977-09-30T00:00:00Z", "trialPrice": 91}, {"currencyCode": "ZJJp4yJZ", "currencyNamespace": "gFqrN1TB", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1986-12-19T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1977-05-15T00:00:00Z", "discountedPrice": 30, "expireAt": "1999-01-13T00:00:00Z", "price": 69, "purchaseAt": "1992-12-04T00:00:00Z", "trialPrice": 8}]}, "seasonType": "PASS", "sku": "Z9P5GjbX", "stackable": true, "status": "ACTIVE", "tags": ["35wA5pWn", "g6VcduQ8", "e3JFFIr6"], "targetCurrencyCode": "wDAUxgWR", "targetNamespace": "4rdub6Tj", "thumbnailUrl": "MEMjp0KY", "useCount": 73}' --login_with_auth "Bearer foo"
platform-delete-item 'sbpix7wO' --login_with_auth "Bearer foo"
platform-acquire-item 'HITTCngM' --body '{"count": 19, "orderNo": "jUC2QJ4G"}' --login_with_auth "Bearer foo"
platform-get-app 'eZURQtbu' --login_with_auth "Bearer foo"
platform-update-app 'pRTcHIKb' '6g6GWQ9G' --body '{"carousel": [{"alt": "xdWobG2a", "previewUrl": "jOCTWWTI", "thumbnailUrl": "5hQKdDSs", "type": "image", "url": "VU223GvO", "videoSource": "youtube"}, {"alt": "aLQKbbG6", "previewUrl": "hl6PjuuT", "thumbnailUrl": "a9N4qlaa", "type": "video", "url": "7eUcY6AP", "videoSource": "youtube"}, {"alt": "TXUsMWdG", "previewUrl": "YCZnOw4H", "thumbnailUrl": "iwnNqLaF", "type": "video", "url": "oDLyxc6t", "videoSource": "generic"}], "developer": "m0FJ7gtE", "forumUrl": "dCT5IJ86", "genres": ["MassivelyMultiplayer", "Sports", "MassivelyMultiplayer"], "localizations": {"WBicq1qW": {"announcement": "x2z9vvPb", "slogan": "Nj7o8cYs"}, "03Z62IjU": {"announcement": "gfwysTDn", "slogan": "QH2Jqoaf"}, "olLqJiOs": {"announcement": "myIKAmnL", "slogan": "O40YtTXZ"}}, "platformRequirements": {"dH2C3Cw2": [{"additionals": "GHXKbaBt", "directXVersion": "10lWAN2h", "diskSpace": "Roysd9Lq", "graphics": "onqcD4qZ", "label": "M9ho724Q", "osVersion": "qJIx2E4p", "processor": "ZRDYS7WL", "ram": "zXvkakL0", "soundCard": "aJniZgWq"}, {"additionals": "Otgn9k1R", "directXVersion": "1lXJBvJL", "diskSpace": "pTTNifnE", "graphics": "sMVzUZeF", "label": "vXKpddLr", "osVersion": "OiHLtoaP", "processor": "yPuvzXll", "ram": "rfxjNxGO", "soundCard": "oC1RpUl5"}, {"additionals": "i7ccrqGV", "directXVersion": "pnvlh38C", "diskSpace": "HTm5FDt4", "graphics": "TitucpHt", "label": "noFL9Tsc", "osVersion": "2WI3iblG", "processor": "EoDhSryU", "ram": "kU8zFpwu", "soundCard": "JDx36obm"}], "sE7hIngB": [{"additionals": "yEjLCt4y", "directXVersion": "EvcakwCM", "diskSpace": "ETm4UkeY", "graphics": "Abju9QWE", "label": "rYG6Yl2c", "osVersion": "0W7iS9by", "processor": "3CceW4zy", "ram": "Ugk63qRf", "soundCard": "8m1mPDqt"}, {"additionals": "zrdSaxwm", "directXVersion": "R3H44OST", "diskSpace": "7K2vZhT5", "graphics": "aAy9HELD", "label": "7AbvToR3", "osVersion": "jgN2Cc1d", "processor": "3UgVZKrf", "ram": "oIHnS7VK", "soundCard": "ExemALzM"}, {"additionals": "Y4S8lLE9", "directXVersion": "kUI6D6nz", "diskSpace": "UMfSBKzz", "graphics": "n7lJNKht", "label": "vNjGcXXX", "osVersion": "2fAn5jiC", "processor": "nGdp81a2", "ram": "xjKoRhvl", "soundCard": "5rIktmUe"}], "KZuNZpph": [{"additionals": "gFF893UU", "directXVersion": "MAGNZLPx", "diskSpace": "lFjnKRo6", "graphics": "055CUl2c", "label": "sHwIBbCa", "osVersion": "MTd7pwhH", "processor": "cwhKuUwP", "ram": "yLtmKlvm", "soundCard": "yDCAfor1"}, {"additionals": "hRJajBUU", "directXVersion": "hsbH6sia", "diskSpace": "M3rGX1Rc", "graphics": "5WEPzFU5", "label": "XcksEp8R", "osVersion": "v6EJvRbg", "processor": "r1nvrppr", "ram": "2Qafdech", "soundCard": "D3ycFkYK"}, {"additionals": "2zsqdCaB", "directXVersion": "W6d5qlIy", "diskSpace": "WRm17EnX", "graphics": "om631s28", "label": "kJwBHLFN", "osVersion": "KRF1EVFo", "processor": "qPctxlsl", "ram": "yVKva7F8", "soundCard": "MS3V6ky3"}]}, "platforms": ["Linux", "IOS", "Android"], "players": ["MMO", "Multi", "MMO"], "primaryGenre": "Racing", "publisher": "hJhs7yK5", "releaseDate": "1979-12-10T00:00:00Z", "websiteUrl": "LNdRTfkB"}' --login_with_auth "Bearer foo"
platform-disable-item 'YWN8s7CN' 'SEwyONLv' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'V0W9eJXk' --login_with_auth "Bearer foo"
platform-enable-item 'yJxDaA3d' 'sfYko0EI' --login_with_auth "Bearer foo"
platform-feature-item 'ZAu7ZMLw' 'Ud7PyfB7' '6763ZdbG' --login_with_auth "Bearer foo"
platform-defeature-item '3kPLbDTq' 'H6AQyEup' 'sqHNqINL' --login_with_auth "Bearer foo"
platform-get-locale-item 'TjR1bmwi' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'RL7AYoYG' 'yi2i1c7s' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 53, "comparison": "excludes", "name": "szN2XgZD", "predicateType": "SeasonPassPredicate", "value": "oVAEIUdB", "values": ["De5nPHhD", "WHnvteYh", "uRT4IW6P"]}, {"anyOf": 98, "comparison": "isNot", "name": "WqBcXJoJ", "predicateType": "SeasonPassPredicate", "value": "f6YmceDO", "values": ["qOtmC116", "i8zk06gO", "42NvfNa7"]}, {"anyOf": 96, "comparison": "isLessThan", "name": "hjX65vUF", "predicateType": "SeasonTierPredicate", "value": "qd5xmnpr", "values": ["QdKIJgis", "AH7usZpY", "MOQ6Im99"]}]}, {"operator": "or", "predicates": [{"anyOf": 50, "comparison": "isNot", "name": "UHsrT14t", "predicateType": "SeasonTierPredicate", "value": "Q0RRLXHv", "values": ["TwexYGqr", "NlYx9d7W", "mvMMvt8M"]}, {"anyOf": 37, "comparison": "isGreaterThan", "name": "8h9WclDq", "predicateType": "SeasonPassPredicate", "value": "mK79kkiG", "values": ["7CpVLRSH", "PO21BV1x", "Jx3ziUP3"]}, {"anyOf": 58, "comparison": "isLessThanOrEqual", "name": "XTP3jTUy", "predicateType": "EntitlementPredicate", "value": "Tphnq1O2", "values": ["lgWhYWes", "e8MafPCr", "gUL25UuM"]}]}, {"operator": "or", "predicates": [{"anyOf": 22, "comparison": "is", "name": "ghMvnFYg", "predicateType": "SeasonTierPredicate", "value": "SJIRGJN7", "values": ["aT18vQXh", "pSTC4Bi4", "0AocefYF"]}, {"anyOf": 48, "comparison": "isLessThan", "name": "Yb9cAFXD", "predicateType": "SeasonTierPredicate", "value": "Hk3NiLZY", "values": ["oVLA6OB6", "RU4OfuvE", "IsHeqeeU"]}, {"anyOf": 11, "comparison": "isGreaterThan", "name": "HCEMtxAz", "predicateType": "SeasonTierPredicate", "value": "pETrB5BD", "values": ["en3sSVrZ", "XnF8bhdb", "tijA5xdD"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'AyRFwAPC' --body '{"orderNo": "ilYijW0S"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "qfDNKZRJ", "name": "P0yeJdI7", "status": "INACTIVE", "tags": ["jQLFX92f", "q0j0vsd6", "rIrXDswJ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'hTm9FMma' --login_with_auth "Bearer foo"
platform-update-key-group 'VQR8V8GU' --body '{"description": "0rAjRVxH", "name": "UjZh32Nw", "status": "INACTIVE", "tags": ["fnevm1Xe", "VRshcFWd", "CNVwq6LN"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'V5iXiatu' --login_with_auth "Bearer foo"
platform-list-keys 'pPn7ow6E' --login_with_auth "Bearer foo"
platform-upload-keys 'qAL4rIcM' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'AZ8DtpUm' --login_with_auth "Bearer foo"
platform-refund-order 'TW3QpPa7' --body '{"description": "hwGlqFtE"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "9OtuuLyB", "privateKey": "HrskmebF"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "72FqNh9x", "currencyNamespace": "TFmXorq2", "customParameters": {"vc9iR3Nu": {}, "r1N5zcuS": {}, "5ggbB177": {}}, "description": "RrsQKYwK", "extOrderNo": "pmSUwNf3", "extUserId": "nTDHg6Yn", "itemType": "BUNDLE", "language": "xd", "metadata": {"SJTX29IG": "bfynleun", "chR4wGlq": "jd9DlsTi", "fJAeic8K": "3EIxRboj"}, "notifyUrl": "moQs9pWT", "omitNotification": false, "platform": "dhZwZbTf", "price": 7, "recurringPaymentOrderNo": "03v3N4bR", "region": "3zJcmSs5", "returnUrl": "nO99aOAw", "sandbox": false, "sku": "9MBsNpPt", "subscriptionId": "fUR9FFBE", "targetNamespace": "GRZehfjY", "targetUserId": "9kII3vps", "title": "da3GofUy"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'O3uR516Q' --login_with_auth "Bearer foo"
platform-get-payment-order 'ZsqEyPW3' --login_with_auth "Bearer foo"
platform-charge-payment-order 'kiT2xY7w' --body '{"extTxId": "C17LVhSg", "paymentMethod": "pApYTyVd", "paymentProvider": "CHECKOUT"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'rUXUhmXK' --body '{"description": "5EJ84QRE"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'jmowuqTl' --body '{"amount": 59, "currencyCode": "zxCKEbnk", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 58, "vat": 56}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'L7Hli4PW' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'GooglePlay' --body '{"allowedBalanceOrigins": ["Stadia", "Other", "IOS"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Other' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "wmLeLhoK", "eventTopic": "S30GT2dr", "maxAwarded": 59, "maxAwardedPerUser": 21, "namespaceExpression": "PwxBcR1j", "rewardCode": "C1y5CXOK", "rewardConditions": [{"condition": "msj3U4wx", "conditionName": "zWpypCnO", "eventName": "HJJ6jNhD", "rewardItems": [{"duration": 8, "itemId": "bsEzmlwz", "quantity": 20}, {"duration": 85, "itemId": "o5VKsRQu", "quantity": 62}, {"duration": 21, "itemId": "XTIVJHbq", "quantity": 84}]}, {"condition": "HzJoj8J5", "conditionName": "jBmJMPou", "eventName": "MuQ4aUEV", "rewardItems": [{"duration": 95, "itemId": "uvYgOrnY", "quantity": 52}, {"duration": 91, "itemId": "u7up3pR8", "quantity": 66}, {"duration": 70, "itemId": "Wxd6lQNa", "quantity": 32}]}, {"condition": "lqlsJRq7", "conditionName": "231F9iGb", "eventName": "x35vO5FH", "rewardItems": [{"duration": 20, "itemId": "1apszRXl", "quantity": 70}, {"duration": 94, "itemId": "FeoKt5xz", "quantity": 20}, {"duration": 85, "itemId": "VajbfYIp", "quantity": 44}]}], "userIdExpression": "ZzdWjGyQ"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 's9MENVog' --login_with_auth "Bearer foo"
platform-update-reward 'vUYCFZru' --body '{"description": "7HEJn8Sf", "eventTopic": "fojSKIzF", "maxAwarded": 50, "maxAwardedPerUser": 50, "namespaceExpression": "ADERRzPh", "rewardCode": "l96MR7DH", "rewardConditions": [{"condition": "pBXJU09Y", "conditionName": "HlDbrpFG", "eventName": "kfmGAb5M", "rewardItems": [{"duration": 63, "itemId": "Q8P9iEgx", "quantity": 85}, {"duration": 35, "itemId": "hb9fb6zu", "quantity": 11}, {"duration": 72, "itemId": "hHgQXTIv", "quantity": 46}]}, {"condition": "m6Qp2MCE", "conditionName": "SX0AQYbW", "eventName": "bj1vO0Am", "rewardItems": [{"duration": 58, "itemId": "jQq7ifGv", "quantity": 11}, {"duration": 6, "itemId": "C76zkxNR", "quantity": 64}, {"duration": 6, "itemId": "P9R5kMMx", "quantity": 54}]}, {"condition": "L6GI8jLx", "conditionName": "zPxGKHaX", "eventName": "WQlbdUkq", "rewardItems": [{"duration": 69, "itemId": "8GtRwumf", "quantity": 6}, {"duration": 96, "itemId": "cW8rDa3w", "quantity": 25}, {"duration": 11, "itemId": "YXP5GuJN", "quantity": 59}]}], "userIdExpression": "dq6Ktemz"}' --login_with_auth "Bearer foo"
platform-delete-reward 'W9IfZp11' --login_with_auth "Bearer foo"
platform-check-event-condition 'oHlEx4oG' --body '{"payload": {"VTv10KRU": {}, "TsdlSOXx": {}, "s6nmjeiZ": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'q2FnBvb3' --body '{"conditionName": "K2K5t6Ly", "userId": "xfw89DjD"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'OcZJzowp' --body '{"active": false, "displayOrder": 70, "endDate": "1973-06-05T00:00:00Z", "ext": {"6omlkM3U": {}, "wrxwWSk9": {}, "tv5TTDmT": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 90, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "jQuKSC7F", "sku": "YdnsoJ8O"}, {"id": "AuIZfaCX", "sku": "VMl1LUTM"}, {"id": "av0kWIxC", "sku": "WvF8vfPy"}], "localizations": {"YN33H2WW": {"description": "IYkpeTgs", "localExt": {"Uz9CCEqI": {}, "huc45VyG": {}, "pEjvc7xL": {}}, "longDescription": "wkynqZl3", "title": "pSpAQsDn"}, "1RxBaqHk": {"description": "kTFtj5S5", "localExt": {"AoIdWLkN": {}, "6HoBkIHa": {}, "yoHSPVPS": {}}, "longDescription": "iyqTATZ2", "title": "r9FcdOg8"}, "l9m7jRdn": {"description": "lciKZi90", "localExt": {"yakSEVGF": {}, "ExPJ3zlg": {}, "32vsUUD3": {}}, "longDescription": "3zuY6dcN", "title": "0K4iDZGV"}}, "name": "KhnYK85h", "rotationType": "NONE", "startDate": "1986-07-17T00:00:00Z", "viewId": "uBwgKYXS"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'XGbLj2XC' --login_with_auth "Bearer foo"
platform-get-section 'Oo7eJf7d' --login_with_auth "Bearer foo"
platform-update-section 'lejIRzJz' 'ANTJCIfL' --body '{"active": false, "displayOrder": 97, "endDate": "1983-05-11T00:00:00Z", "ext": {"4f6TArlO": {}, "ABa4XCgO": {}, "r4EmE2fj": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 98, "itemCount": 88, "rule": "SEQUENCE"}, "items": [{"id": "8UdjRYdE", "sku": "7wlJEaOY"}, {"id": "ZqSUru70", "sku": "TqgpZ5PZ"}, {"id": "XTFmu7lJ", "sku": "i7rc1roN"}], "localizations": {"ELFu9Kan": {"description": "HucE2WwJ", "localExt": {"mi8QKQ3Z": {}, "5afuxFKG": {}, "l3aOlRJD": {}}, "longDescription": "0xgrkFou", "title": "8koVlB0i"}, "Ar4Yd3x6": {"description": "PU1eRFzG", "localExt": {"UiVY1XB0": {}, "kMWFu298": {}, "jEF7vfbM": {}}, "longDescription": "fOdugQSs", "title": "N5X7lxjM"}, "CiURwjf2": {"description": "GOzW5AIo", "localExt": {"zESJZJUY": {}, "dOWUXOB5": {}, "BNNMhZLV": {}}, "longDescription": "viFU0F8S", "title": "LtqzCd2d"}}, "name": "TnA0EZKJ", "rotationType": "NONE", "startDate": "1972-10-19T00:00:00Z", "viewId": "OFNEvi53"}' --login_with_auth "Bearer foo"
platform-delete-section 'EYkqcVmY' 'mWnGFhQa' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "kcTGqEVm", "defaultRegion": "HgnkssFk", "description": "ivXWd1vm", "supportedLanguages": ["CVBP4JoH", "nSvPo1eY", "7wAfWDDD"], "supportedRegions": ["diHTDQFB", "JF38AczW", "FRUQT6X4"], "title": "p4SnWEL1"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store '63Peab0K' --login_with_auth "Bearer foo"
platform-update-store 'ePzlouBi' --body '{"defaultLanguage": "a123heKh", "defaultRegion": "PY1v5rWR", "description": "2dYOLWy6", "supportedLanguages": ["75vVQHDk", "W5f2ywV6", "iiUVDcIS"], "supportedRegions": ["Lv4mXLf1", "YyUzWmry", "YrnDkF7l"], "title": "9JGyqEDZ"}' --login_with_auth "Bearer foo"
platform-delete-store 'QfFzs8DZ' --login_with_auth "Bearer foo"
platform-query-changes '6nuVbCOP' --login_with_auth "Bearer foo"
platform-publish-all 'dQaHrpRb' --login_with_auth "Bearer foo"
platform-publish-selected 'dateRmxk' --login_with_auth "Bearer foo"
platform-select-all-records 'TnVxfsGt' --login_with_auth "Bearer foo"
platform-get-statistic 'LR7G4KFJ' --login_with_auth "Bearer foo"
platform-unselect-all-records 'K1PkSq7M' --login_with_auth "Bearer foo"
platform-select-record 'YjMPZQVf' 'H7gWyXHQ' --login_with_auth "Bearer foo"
platform-unselect-record 'LPXD2P60' 'AECNtfi6' --login_with_auth "Bearer foo"
platform-clone-store 'brXyidB9' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'rYhwKdzb' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '2Ec3qivO' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'TfYxSOSf' --body '{"orderNo": "fwt8EVoy"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'ZIZt7FXc' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'ncci2qAn' --body '{"count": 30, "orderNo": "8vZ1qNFh"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '5sNijzB9' --body '{"achievements": [{"id": "cOB6IleS", "value": 97}, {"id": "q7oY4bnq", "value": 96}, {"id": "GY6YwsAx", "value": 86}], "steamUserId": "qdDqaK0E"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '9q2LXNvM' 'dbxgj85q' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '4xsMyxYR' --body '{"achievements": [{"id": "epaJOijS", "percentComplete": 61}, {"id": "2M86bXJc", "percentComplete": 20}, {"id": "4WebkTGB", "percentComplete": 0}], "serviceConfigId": "jbmezaNp", "titleId": "DEfzs0x8", "xboxUserId": "i7nmvSCp"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'L61WGJUW' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'I7nyobKZ' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'eHSgc63p' --login_with_auth "Bearer foo"
platform-anonymize-integration 'IZzM9zz8' --login_with_auth "Bearer foo"
platform-anonymize-order '1mPxU0i3' --login_with_auth "Bearer foo"
platform-anonymize-payment 'S5iGT3fv' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'bh6vFy9k' --login_with_auth "Bearer foo"
platform-anonymize-wallet '44g7wL9C' --login_with_auth "Bearer foo"
platform-get-user-dlc 'RjY2FbtV' 'PSN' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'xpidGu1P' --login_with_auth "Bearer foo"
platform-grant-user-entitlement '8VccvbMv' --body '[{"endDate": "1980-08-30T00:00:00Z", "grantedCode": "Ld8IVQJH", "itemId": "yBqpAk5E", "itemNamespace": "D24QtWhw", "language": "wy-jWpF", "quantity": 95, "region": "IM9yljRO", "source": "PURCHASE", "startDate": "1974-03-02T00:00:00Z", "storeId": "wi5tQ0VQ"}, {"endDate": "1983-08-05T00:00:00Z", "grantedCode": "q2a9FVV6", "itemId": "lsXBRLnT", "itemNamespace": "L0E9vIaF", "language": "jbMU-gIWL", "quantity": 7, "region": "cZVEhr18", "source": "REFERRAL_BONUS", "startDate": "1977-10-12T00:00:00Z", "storeId": "disyBZsf"}, {"endDate": "1999-03-09T00:00:00Z", "grantedCode": "NXrXfvp0", "itemId": "mb0B0JPM", "itemNamespace": "BFUpoF7f", "language": "Pis_Oh", "quantity": 57, "region": "4aANoDW1", "source": "REWARD", "startDate": "1976-06-09T00:00:00Z", "storeId": "TXxGX7xJ"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'szP0cPfs' 'Fjq13hdw' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'EsYoTUrn' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'iDReHZsq' 'EM9Kd2GE' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'YA1MckOR' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'NmNw9Izr' '31wBsSu4' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement '0g3RsKuu' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'xdcyLMmc' '["RAiNGLGq", "mXK83Wtg", "77yRqQQ7"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'Xxon5uLk' 'TOWUYbj2' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'bQMPcqZe' 'kXKxsGWk' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'wBuHh0vD' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'P9aVpS4K' 'VUpyFttt' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'ibOMXGoZ' 'iY7hvFql' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'UxJlWFz9' 'iJKV3rPQ' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'X9RPqd2o' 'L9tkb2jt' --body '{"endDate": "1999-05-15T00:00:00Z", "nullFieldList": ["opAuwzVK", "Y3jJigF5", "TvLn8cUI"], "startDate": "1984-11-14T00:00:00Z", "status": "ACTIVE", "useCount": 31}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'd8xNIqnc' 'AS7HWCOV' --body '{"options": ["ju7L8NOY", "4iMfiThz", "rPLCe6ID"], "requestId": "Ym2JnymK", "useCount": 40}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'Hz30qwaF' 'gtuafq2W' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'h6iYV6I0' 'xnX0q7rh' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'tDy4sJCF' 'f2jxQF0y' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'pNEpW3eM' 'AHcSpo4z' --login_with_auth "Bearer foo"
platform-fulfill-item 'NM7BXXpj' --body '{"duration": 4, "endDate": "1999-07-11T00:00:00Z", "itemId": "S5IMHreb", "itemSku": "Q3Pqhd5y", "language": "Os6l2lcG", "order": {"currency": {"currencyCode": "uP3LoCm9", "currencySymbol": "3SBYQnZq", "currencyType": "REAL", "decimals": 55, "namespace": "5sf5FnfO"}, "ext": {"6xvJpiwM": {}, "kGfRfy3h": {}, "iAOfhzsA": {}}, "free": false}, "orderNo": "ZGXiG9Sx", "origin": "Xbox", "quantity": 18, "region": "26v6dpGs", "source": "ACHIEVEMENT", "startDate": "1979-04-12T00:00:00Z", "storeId": "RgBBZGPO"}' --login_with_auth "Bearer foo"
platform-redeem-code 'YNAEJcvH' --body '{"code": "FFlEZvxS", "language": "DlJ", "region": "V8W0pKNt"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'FdwW9WL1' --body '{"origin": "Epic", "rewards": [{"currency": {"currencyCode": "Y3f9njsS", "namespace": "AS69iZMr"}, "item": {"itemId": "bZu9g9tB", "itemSku": "49TptML5", "itemType": "9PFtOPuI"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "rdIpO5gS", "namespace": "RKRvM9tL"}, "item": {"itemId": "WgRgvO3s", "itemSku": "FDcfR2le", "itemType": "BFMr9VRc"}, "quantity": 95, "type": "CURRENCY"}, {"currency": {"currencyCode": "jQVEA2yC", "namespace": "UcQc37wC"}, "item": {"itemId": "lJSCGrAX", "itemSku": "96HQIHJR", "itemType": "NQFy0BTX"}, "quantity": 55, "type": "CURRENCY"}], "source": "REWARD"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'wZ4vzvo4' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'K7uBpBjn' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'oaKnkncz' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'yO383Mi3' --body '{"itemIdentityType": "ITEM_ID", "language": "ch", "productId": "WGn5KeFo", "region": "5XA7xB8y", "type": "STADIA"}' --login_with_auth "Bearer foo"
platform-query-user-orders '6Dh9frRp' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'knsnwc2d' --body '{"currencyCode": "CGimHA0U", "currencyNamespace": "1Wfx3h6f", "discountedPrice": 46, "ext": {"aaBKdYBA": {}, "eX9azUiC": {}, "KjvHwKRC": {}}, "itemId": "QxSfdYXy", "language": "KOl4vPYm", "options": {"skipPriceValidation": true}, "platform": "Playstation", "price": 52, "quantity": 68, "region": "ZbXJf3lM", "returnUrl": "Iuu4za3L", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'dFoQC9A8' 'YST5aplR' --login_with_auth "Bearer foo"
platform-get-user-order 'Swb5pTtz' 'vuW1FEFh' --login_with_auth "Bearer foo"
platform-update-user-order-status 'ugLG6eyc' 'XtzU5fGe' --body '{"status": "FULFILL_FAILED", "statusReason": "1oVDNE8d"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'Ci2wlXXN' 'xKfyRdSv' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'xN4iWaSf' 'GWHo7jDT' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'f4c5g42h' 'iEih51QC' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'P6LuYIuz' 'qUVB4CGb' --body '{"additionalData": {"cardSummary": "wXICT5oW"}, "authorisedTime": "1995-11-03T00:00:00Z", "chargebackReversedTime": "1985-12-16T00:00:00Z", "chargebackTime": "1999-02-25T00:00:00Z", "chargedTime": "1989-04-28T00:00:00Z", "createdTime": "1998-11-07T00:00:00Z", "currency": {"currencyCode": "k9j3yRYt", "currencySymbol": "h3oyhk6o", "currencyType": "VIRTUAL", "decimals": 42, "namespace": "gLIpjuCg"}, "customParameters": {"NwZsi0jH": {}, "gNHCyKtp": {}, "6jd9puUv": {}}, "extOrderNo": "mIUMV24I", "extTxId": "AouTnHMa", "extUserId": "5BMPRR97", "issuedAt": "1992-12-07T00:00:00Z", "metadata": {"W9h3Qawb": "a0TqMmmZ", "yEavLE6a": "LIZIskrn", "J9vXrqn5": "x8c7hfgu"}, "namespace": "SqVp9kE4", "nonceStr": "QOTxibQE", "paymentMethod": "JuSuJtaQ", "paymentMethodFee": 79, "paymentOrderNo": "qmKA6Vya", "paymentProvider": "ALIPAY", "paymentProviderFee": 88, "paymentStationUrl": "3cjsPA7G", "price": 5, "refundedTime": "1976-07-18T00:00:00Z", "salesTax": 16, "sandbox": true, "sku": "plIj2hzH", "status": "CHARGED", "statusReason": "i15tcywD", "subscriptionId": "3X5Rcf8p", "subtotalPrice": 42, "targetNamespace": "IKK2lPTF", "targetUserId": "wiragOAE", "tax": 71, "totalPrice": 30, "totalTax": 82, "txEndTime": "1977-02-27T00:00:00Z", "type": "96ku0QiQ", "userId": "F9EiIM02", "vat": 48}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'UwoNy9Nb' 'GzU7mOqg' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'ExMyt0R8' --body '{"currencyCode": "zwdXuR0g", "currencyNamespace": "L7cSjRRh", "customParameters": {"tUV6NrTu": {}, "HVEyDhYv": {}, "CzYq5KzB": {}}, "description": "Splb5OOt", "extOrderNo": "qeIR89lN", "extUserId": "Sy5yEO79", "itemType": "MEDIA", "language": "RDY_iIfa-Dk", "metadata": {"NUVPrMgs": "0dJa9rq0", "7MDSRVMW": "bJTyZXcs", "Ou2E5Yho": "aZk2Qjgt"}, "notifyUrl": "QmYqvQIS", "omitNotification": true, "platform": "iJ6M9wjn", "price": 48, "recurringPaymentOrderNo": "JSssvXpi", "region": "6K4JnXI9", "returnUrl": "Q89Jto0Y", "sandbox": false, "sku": "7NhhimzQ", "subscriptionId": "IYiw7Pdl", "title": "XKxEmzG0"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'pBgc2wci' 'hmowWoZC' --body '{"description": "lxRSdYJ1"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'Yt3ioJlj' --body '{"code": "hTR3FTgi", "orderNo": "7KOTT2F9"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'I83Gu1Du' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities '79TT8J7K' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '6QBe4DyB' --body '{"grantDays": 29, "itemId": "sg4RZzQ8", "language": "HSpdei0c", "reason": "wZyi9FK8", "region": "nMRpotcm", "source": "T6nbeUiO"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'gwWH2WlU' '23mCQeui' --login_with_auth "Bearer foo"
platform-get-user-subscription 'pJeVB2ly' 'uubZIdX3' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'qYguraR2' 'YqFuyk7H' --login_with_auth "Bearer foo"
platform-cancel-subscription 'g4CH1HYT' '5ukdbdHI' --body '{"immediate": false, "reason": "fBQKf8nU"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'pCgedP7M' 'jP4WpWRQ' --body '{"grantDays": 22, "reason": "i7NkgiIV"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'BwnHeb68' 'IWVxPDWb' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'mOEWt3rV' 'lYLO4xNZ' --body '{"additionalData": {"cardSummary": "0mL4axG7"}, "authorisedTime": "1991-11-01T00:00:00Z", "chargebackReversedTime": "1994-03-19T00:00:00Z", "chargebackTime": "1991-08-30T00:00:00Z", "chargedTime": "1985-05-18T00:00:00Z", "createdTime": "1975-03-17T00:00:00Z", "currency": {"currencyCode": "4uVP9ocQ", "currencySymbol": "5fnLk4VT", "currencyType": "VIRTUAL", "decimals": 50, "namespace": "aEorwqK2"}, "customParameters": {"ROnEl3sB": {}, "HvRvoDrx": {}, "5C1657ki": {}}, "extOrderNo": "ypg4M8Jn", "extTxId": "Kn2mB6HE", "extUserId": "CrnaPG7r", "issuedAt": "1981-11-01T00:00:00Z", "metadata": {"mjynModr": "6b55okKp", "9sYIPCBq": "UoWWkDrW", "tc9xKZFh": "gRef93ny"}, "namespace": "RHNCH0Jl", "nonceStr": "8QAfIoOA", "paymentMethod": "ccBUb7L5", "paymentMethodFee": 19, "paymentOrderNo": "ATS11J53", "paymentProvider": "ADYEN", "paymentProviderFee": 67, "paymentStationUrl": "6TFyAxxk", "price": 49, "refundedTime": "1989-01-16T00:00:00Z", "salesTax": 0, "sandbox": true, "sku": "HWVUMYn9", "status": "REFUNDING", "statusReason": "cdXBgOtj", "subscriptionId": "iF0rSIFT", "subtotalPrice": 9, "targetNamespace": "yCYz1237", "targetUserId": "2SJFyJ1y", "tax": 68, "totalPrice": 74, "totalTax": 95, "txEndTime": "1979-11-17T00:00:00Z", "type": "AS5Tyv4B", "userId": "fT5iGn4E", "vat": 91}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'hPI5FuMe' 'RcrlGQXm' --body '{"count": 79, "orderNo": "h1zy1anW"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'x1QFhNal' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'FpOZcZUu' 'CyTcNgGw' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'mwwaxgKV' 'gQv3kcnK' --body '{"amount": 25, "expireAt": "1982-03-08T00:00:00Z", "origin": "Epic", "reason": "8x6AGzPO", "source": "ACHIEVEMENT"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'E8y6oP6j' 'YkAZou7v' --body '{"amount": 42, "walletPlatform": "Xbox"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '9d9Ct0Ql' --body '{"displayOrder": 94, "localizations": {"G4OoMiYV": {"description": "8EHsNbO1", "localExt": {"yrkSuxro": {}, "OHH1xIzM": {}, "3avHx4FF": {}}, "longDescription": "lRjPEOHq", "title": "PfKRzabN"}, "B7T80YuR": {"description": "CsfmEq5t", "localExt": {"r5VA20Z0": {}, "eKYSoXQu": {}, "XvrTDmtZ": {}}, "longDescription": "S3R56IEf", "title": "4GjczXgg"}, "8OLoZjtq": {"description": "L4pI2D5D", "localExt": {"uuXqBtVs": {}, "84CJjLUf": {}, "kqGCXM2s": {}}, "longDescription": "IdiTsYFQ", "title": "QhMNLU3m"}}, "name": "SZ4ttGG2"}' --login_with_auth "Bearer foo"
platform-get-view 'ZrkPg4zX' --login_with_auth "Bearer foo"
platform-update-view 'jPCrmrAw' 'QuOl7w6k' --body '{"displayOrder": 76, "localizations": {"PEnJHPHB": {"description": "arhRpmrh", "localExt": {"3Q3e29DB": {}, "Cl8SbxQV": {}, "ajI6xhB8": {}}, "longDescription": "GVUP287D", "title": "XnHxYe32"}, "4cYgPE5n": {"description": "L4qVYsVP", "localExt": {"e9yAKMId": {}, "Lw1UAtlZ": {}, "MUwWYBST": {}}, "longDescription": "l9ifmDlJ", "title": "8MUE4VQY"}, "9GHNtZOa": {"description": "tfys06bF", "localExt": {"5Z26BeOS": {}, "8f9HjlHi": {}, "8LvG3cCF": {}}, "longDescription": "eLujcKDR", "title": "3F325HVo"}}, "name": "6mkXHHOH"}' --login_with_auth "Bearer foo"
platform-delete-view 'd9cNso02' 'MnOwfAjt' --login_with_auth "Bearer foo"
platform-sync-orders '1yo67r17' 'LXwojFA3' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["uIe5Q4Z9", "TRyKF2Et", "DL3NyWeX"], "apiKey": "nZmmHDEV", "authoriseAsCapture": false, "blockedPaymentMethods": ["5DM0uMe4", "d1gUWTZa", "GVZmM34f"], "clientKey": "P8YDwmB0", "dropInSettings": "FxNyvan7", "liveEndpointUrlPrefix": "dc5ivC1t", "merchantAccount": "yKufwOZI", "notificationHmacKey": "ZR9h0OXV", "notificationPassword": "EUKCc0Mp", "notificationUsername": "X4W6VOUs", "returnUrl": "anlXSAlM", "settings": "yQuyWmUQ"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "lbzD2IEu", "privateKey": "JGLb6NYo", "publicKey": "urMBcebY", "returnUrl": "UeyCZv42"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "TkfTL6z2", "secretKey": "8OD4N7Lz"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "e476CQ1k", "clientSecret": "N67Rs8Gk", "returnUrl": "6TJfWMPc", "webHookId": "2zMvv3FA"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["LjsIj7Ar", "I6r9lYrv", "yrIk13XS"], "publishableKey": "GhaO8eEM", "secretKey": "3ZCzoh94", "webhookSecret": "bzQsDuRl"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "n1J48BhC", "key": "e37fv6Ie", "mchid": "1g2A3Hlt", "returnUrl": "MeN4Iore"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "6e8cOpgS", "flowCompletionUrl": "PFMgMZrJ", "merchantId": 32, "projectId": 45, "projectSecretKey": "ZN5Nlowp"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '57okMbYm' --login_with_auth "Bearer foo"
platform-update-adyen-config '5G4P4CEM' --body '{"allowedPaymentMethods": ["Nf5ivaXU", "lxdESOnl", "vZAFBCMt"], "apiKey": "8M93zt8W", "authoriseAsCapture": false, "blockedPaymentMethods": ["YuYD7F9k", "Pu8UOANA", "iXNDGdL3"], "clientKey": "nRTvwVG8", "dropInSettings": "qdNS1mYl", "liveEndpointUrlPrefix": "Jg4RSvjn", "merchantAccount": "RJJlIoAK", "notificationHmacKey": "BnkHoO5G", "notificationPassword": "Vdwkhfaz", "notificationUsername": "rrnO9BxG", "returnUrl": "t698Jcm2", "settings": "YlWUqEt1"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'ECeruxJ4' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'EWpy5OHy' --body '{"appId": "TiED9JV1", "privateKey": "aBbKMDps", "publicKey": "SHciVQka", "returnUrl": "aeSJ16Nh"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'V1kozLjZ' --login_with_auth "Bearer foo"
platform-update-checkout-config 'XadaACjp' --body '{"publicKey": "TKSL9tQj", "secretKey": "KY0u4QUC"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'VZaJd1K0' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'EiM3ESFi' --body '{"clientID": "BeCYUHnM", "clientSecret": "jmiRiCTH", "returnUrl": "wxHS6xgK", "webHookId": "CoB20BcE"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'tr7oyYlj' --login_with_auth "Bearer foo"
platform-update-stripe-config 'GCE1ijwy' --body '{"allowedPaymentMethodTypes": ["ppgvzkr6", "0vEgOOqx", "ZuGAm6Gj"], "publishableKey": "7xUSVRo5", "secretKey": "R1JpdxGt", "webhookSecret": "qjx7siAB"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'sBYEcpto' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'qxWFPIwW' --body '{"appId": "VwZ9U2jH", "key": "aZGXLe0x", "mchid": "dNyCuPP8", "returnUrl": "zEoC62uf"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'LyGtiiHI' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'jqYaADt4' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'yts521XI' --body '{"apiKey": "CFoTWAIr", "flowCompletionUrl": "5hoAv464", "merchantId": 22, "projectId": 11, "projectSecretKey": "EoMKQrSq"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'pdlNF9fX' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'xFMD8h0e' --body '{"device": "MOBILE", "showCloseButton": true, "size": "LARGE", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "irQg1bPr", "region": "P1hDbItx", "sandboxTaxJarApiToken": "W0P6YOlb", "specials": ["XSOLLA", "PAYPAL", "WXPAY"], "taxJarApiToken": "9fw1ouyJ", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'zMAWFarZ' --body '{"aggregate": "ADYEN", "namespace": "1MCtbYm3", "region": "NBOLKOot", "sandboxTaxJarApiToken": "5J6YKgVI", "specials": ["ALIPAY", "WXPAY", "WALLET"], "taxJarApiToken": "oLyHwXQg", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'L2GOPAFp' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "9Iy704Sc", "taxJarApiToken": "IwcNmPDZ", "taxJarEnabled": true, "taxJarProductCodesMapping": {"LSi1r3Cj": "v0I5vGCQ", "CDj1HEgz": "0j2W1FHr", "uEQvqexc": "I9KFwhCM"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'qnJh5XPj' 'AEGBCUM9' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'HbAvOCFt' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'pfdAwwVy' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'NYr5qr6f' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'K1uERJFs' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'gDxYIXr7' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'Ber0aRDs' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["kWkqfQcZ", "N9HlsNE7", "1rUQnsgm"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'inWFmvub' 'nv65Hx0T' --login_with_auth "Bearer foo"
platform-public-get-app 'AgUvDOoC' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'ffxRJX1q' --login_with_auth "Bearer foo"
platform-public-get-item 'GBatY2Y4' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "wER8y4Gd", "paymentProvider": "WXPAY", "returnUrl": "d2Nih1Yv", "ui": "Si8NZ7o5", "zipCode": "4PANZPwj"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'UYpY8dRv' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'b5Alfo4u' --login_with_auth "Bearer foo"
platform-pay 'GXrH05wd' --body '{"token": "I0g8fRXE"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '7OU2r3xt' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' 'Qr0bx5JA' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'nRm6Xm6B' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'hfvqvSHD' '82Wl2zRa' 'CHECKOUT' 'lNGmRWp9' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '2rWPKdP2' 'WXPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'jKgguxZa' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '9BV6RVoB' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'vB99vQx4' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'dXMUAsfr' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'lGrmKRnw' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'Dzcd0R2F' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'ojUAhrCA' --body '{"epicGamesJwtToken": "i44mtRXV"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Br88BWwy' --body '{"serviceLabel": 67}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'ofJTpG4S' --body '{"serviceLabels": [8, 10, 78]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'OfK7r8XA' --body '{"appId": "OVDvP9Wd", "steamId": "dsulCKnW"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'WvBkzTbb' --body '{"xstsToken": "6oYEDnUt"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'fDpRZ3cO' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'HpAKxPAb' 'J9Y6KdGt' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'EezEd2VW' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'a038U29P' 'zrkxrXEh' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'bViIzqJi' 'SkGnP246' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'HoSchp1w' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'KflbljsL' 'YeW2NOI1' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'XQPiucJ6' 'p7yYlZgR' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'ZtxQhfqo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'cWSOjwRd' 'UikBBE6E' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'v486JMMr' 'uQcakUOa' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement '94Bw0jO1' 'hjyVVkeO' --body '{"options": ["16zL4eSs", "EGlNS5yu", "pnm8OaZb"], "requestId": "JiBtaKuI", "useCount": 71}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'gMx5FYVe' --body '{"code": "y1YJD4Nk", "language": "Mbv-HVoW", "region": "wKL67v8e"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'kb2RTI8i' --body '{"excludeOldTransactions": true, "language": "Wv-eusT-iF", "productId": "cc8dSEf0", "receiptData": "Q6fhmdr9", "region": "jfSwdKhl", "transactionId": "Z41jAAnD"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'WYTm04GP' --body '{"epicGamesJwtToken": "pEHHMr1Y"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'UH3S12gM' --body '{"autoAck": true, "language": "WJ", "orderId": "Ft9ifuDe", "packageName": "XEl9gtO7", "productId": "0y7KS6j7", "purchaseTime": 91, "purchaseToken": "EqPlBbaY", "region": "pilmuBYS"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Nil19ZsN' --body '{"currencyCode": "pct0iyo8", "price": 0.9023756605185684, "productId": "FAyqZYBt", "serviceLabel": 11}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '8P5EQgWY' --body '{"currencyCode": "b23p8A4K", "price": 0.15988622778040773, "productId": "WmrV8Hn6", "serviceLabels": [3, 21, 79]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement '7DPyFErl' --body '{"appId": "12AL6yfL", "language": "RP-969", "region": "1EyJcnen", "stadiaPlayerId": "aY5HM1SK"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'eoGH5Qke' --body '{"appId": "OfXB8a5w", "currencyCode": "DspHuHTo", "language": "tad_xW", "price": 0.7596805872453035, "productId": "M9gRCg8B", "region": "EpZ2X2Gm", "steamId": "2dS0IwDa"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'ExlBKrue' --body '{"gameId": "ICiOfaJV", "language": "VH-PDUv", "region": "MX8MT0W2"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '1YDxb4ih' --body '{"currencyCode": "BNKBxV9B", "price": 0.6003566529282175, "productId": "YWt1EJSr", "xstsToken": "8YopmBj9"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'gNpChnZ7' --login_with_auth "Bearer foo"
platform-public-create-user-order '7oHXrkXk' --body '{"currencyCode": "N9CcSZQY", "discountedPrice": 44, "ext": {"Fi96498L": {}, "nKYtw3D0": {}, "OAV7QrSd": {}}, "itemId": "Yox3NEfk", "language": "NsLJ_hMbz-359", "price": 88, "quantity": 22, "region": "HH2ultSv", "returnUrl": "zCxFSoOb"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'GN4HUFp7' 'FvHT3ozN' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'xtJvbxsv' 'pv3RVi22' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'ElSUmUeJ' 'XIiNsBfT' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '2txLGQCd' 'v9TfCo9W' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'jFcbdSMa' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'yPctikUW' 'card' 'GINI4vGp' --login_with_auth "Bearer foo"
platform-public-list-active-sections '0UCVZ3sY' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'MPVelSZ1' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'ajnnyWQt' --body '{"currencyCode": "XjByvu7K", "itemId": "vbSoQZIh", "language": "Tr_VXXc_ML", "region": "wCTpNNin", "returnUrl": "8Q2REiwq", "source": "UrZcPwnb"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'Y79bkvi9' 'tQZjqE0U' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'pbXgZRXg' 'aD3OYYqq' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'XlhHV2xL' 'sUIgas8H' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '1MQtAuyJ' 'co4Uy78b' --body '{"immediate": true, "reason": "iOB06dGu"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'xFow4q6X' '0pFBzXTc' --login_with_auth "Bearer foo"
platform-public-list-views '8MvlVGai' --login_with_auth "Bearer foo"
platform-public-get-wallet 'cc2b2fgr' 'huTiM6nJ' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'I05GdPII' 'ZaOiQnwJ' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'o2Oo8b9t' --body '{"itemIds": ["u1a3U5Zx", "sgSLPBxu", "BdvZLaex"]}' --login_with_auth "Bearer foo"
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
echo "1..380"

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
    --body '{"context": {"item": {"appId": "nQksa5vS", "appType": "DEMO", "baseAppId": "zpkBLdsZ", "boothName": "BacFSTUZ", "boundItemIds": ["bE0WevYt", "1tXbYVFy", "D170ZSbj"], "categoryPath": "vMV5KUyY", "clazz": "O8AyDyIV", "createdAt": "1984-03-17T00:00:00Z", "description": "PwcqesXL", "displayOrder": 36, "entitlementType": "CONSUMABLE", "ext": {"t6HCpONF": {}, "x3QSOS71": {}, "L3Qjn9cW": {}}, "features": ["g2pQveqN", "iUf4D7MD", "Jr2751G7"], "fresh": false, "images": [{"as": "mnt4MiyU", "caption": "jsNfR9wV", "height": 42, "imageUrl": "nBln6wFv", "smallImageUrl": "KHFLFY0Y", "width": 49}, {"as": "9INZlica", "caption": "Srd2MTJN", "height": 92, "imageUrl": "DSahjk17", "smallImageUrl": "AuOASBFu", "width": 48}, {"as": "IhH2UMhl", "caption": "oIPEHEby", "height": 18, "imageUrl": "yBCPBoLj", "smallImageUrl": "0uQ5c6VP", "width": 18}], "itemId": "lAB9qIoY", "itemIds": ["uarenPOA", "uLxLO9MH", "WzPAjbI8"], "itemQty": {"TB8Akmzu": 39, "n4q2vCkM": 62, "2KhrMIGl": 70}, "itemType": "BUNDLE", "language": "MwAvwxvR", "listable": false, "localExt": {"Mdu9hL6U": {}, "WbT8JTJc": {}, "r6Mm848l": {}}, "longDescription": "hH87ORxr", "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 36, "itemId": "Fi8PWsuD", "itemSku": "Tk0zRSHv", "itemType": "RojwLzQQ"}, {"count": 38, "itemId": "Ts10rlU5", "itemSku": "1vPC7423", "itemType": "Qr0CFgww"}, {"count": 80, "itemId": "rIqX09kM", "itemSku": "PgzhHePQ", "itemType": "a0eF0MZv"}], "name": "lv3kRyiy", "odds": 0.17813500325053522, "type": "PROBABILITY_GROUP", "weight": 40}, {"lootBoxItems": [{"count": 33, "itemId": "mizL1ywK", "itemSku": "5eDSEj3q", "itemType": "nl7n1Jap"}, {"count": 82, "itemId": "moK2n3pu", "itemSku": "Jrz8Ppgg", "itemType": "ht5Cjh1s"}, {"count": 9, "itemId": "mvh5Caxp", "itemSku": "EtWAkebM", "itemType": "zLXWkcgl"}], "name": "fChIjKb2", "odds": 0.5096995757988396, "type": "PROBABILITY_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 90, "itemId": "Ie2fiZEX", "itemSku": "wyVp8FZn", "itemType": "7NOBQDq6"}, {"count": 99, "itemId": "v9qlNUZb", "itemSku": "OBpO9agM", "itemType": "VO14Gzrw"}, {"count": 30, "itemId": "XP7Fog0j", "itemSku": "UbPazXVg", "itemType": "cH9TzGt7"}], "name": "Ypw6iede", "odds": 0.5564666932956828, "type": "REWARD", "weight": 95}]}, "maxCount": 69, "maxCountPerUser": 46, "name": "CXSmT2dN", "namespace": "9Qu7X5sR", "optionBoxConfig": {"boxItems": [{"count": 7, "itemId": "dGIUoSzw", "itemSku": "wf6yv70w", "itemType": "HVFND7y0"}, {"count": 58, "itemId": "swFCReQD", "itemSku": "jqKzl1g8", "itemType": "MVCq5eAk"}, {"count": 71, "itemId": "dAgf7sDG", "itemSku": "g44BxlHx", "itemType": "hTi9KuTw"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "GHixdqsf", "predicateType": "SeasonTierPredicate", "value": "iHhbg1it", "values": ["k9WpxYQQ", "2N4wmzYp", "yuK0a57F"]}, {"anyOf": 86, "comparison": "isGreaterThanOrEqual", "name": "DJglDdBr", "predicateType": "SeasonPassPredicate", "value": "9MApW8fW", "values": ["s9spowdO", "qX7XYvVs", "RFjZNorD"]}, {"anyOf": 39, "comparison": "excludes", "name": "g0pahBSD", "predicateType": "EntitlementPredicate", "value": "Bmw5V7yX", "values": ["wuSwLUpe", "dXSUUGaL", "WjflVCxK"]}]}, {"operator": "and", "predicates": [{"anyOf": 94, "comparison": "isGreaterThanOrEqual", "name": "WzHjEwH1", "predicateType": "SeasonPassPredicate", "value": "w8jtIaT9", "values": ["CzrcuHwd", "KLFnyJKx", "zq2JDLEA"]}, {"anyOf": 99, "comparison": "isGreaterThan", "name": "Bf3Tzhi7", "predicateType": "SeasonTierPredicate", "value": "1GzEWA4M", "values": ["y5LpYNqf", "EbxaoHXs", "egYnDEpL"]}, {"anyOf": 33, "comparison": "includes", "name": "2U2PBqwA", "predicateType": "EntitlementPredicate", "value": "ZZ0aMHhZ", "values": ["SdvOYPzf", "ypkkhIn5", "sukU2BSt"]}]}, {"operator": "and", "predicates": [{"anyOf": 4, "comparison": "excludes", "name": "37eHXftD", "predicateType": "SeasonTierPredicate", "value": "9cQnnPfW", "values": ["vK5EEuWk", "MZaNqI0k", "m4biRuNO"]}, {"anyOf": 81, "comparison": "isGreaterThan", "name": "73qSxK6s", "predicateType": "SeasonTierPredicate", "value": "I10u44f2", "values": ["1MdNvjg8", "R5CmXBaU", "ZYNYnVAi"]}, {"anyOf": 32, "comparison": "isLessThan", "name": "89QhZGUX", "predicateType": "SeasonTierPredicate", "value": "3aevmvvN", "values": ["38CUsDRk", "vU1mOuwG", "63IPihZG"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 59, "fixedTrialCycles": 38, "graceDays": 28}, "region": "sIN9Y2zY", "regionData": [{"currencyCode": "m1mvvWDj", "currencyNamespace": "LnJ2YnD9", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1989-03-14T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-09-27T00:00:00Z", "discountedPrice": 5, "expireAt": "1993-02-13T00:00:00Z", "price": 71, "purchaseAt": "1975-09-16T00:00:00Z", "trialPrice": 92}, {"currencyCode": "dlwpZmGS", "currencyNamespace": "HGZek8pX", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1986-10-06T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1997-06-06T00:00:00Z", "discountedPrice": 46, "expireAt": "1982-12-08T00:00:00Z", "price": 40, "purchaseAt": "1975-01-04T00:00:00Z", "trialPrice": 72}, {"currencyCode": "28z22Nkr", "currencyNamespace": "5HXajlyB", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1971-11-19T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-01-30T00:00:00Z", "discountedPrice": 55, "expireAt": "1997-06-11T00:00:00Z", "price": 15, "purchaseAt": "1996-12-14T00:00:00Z", "trialPrice": 13}], "seasonType": "TIER", "sku": "S0MCLHQn", "stackable": false, "status": "INACTIVE", "tags": ["L6jW1GbR", "Rr93bMZW", "KgTgByYm"], "targetCurrencyCode": "YzZHNOTn", "targetItemId": "JR3tFWcL", "targetNamespace": "SBfC3GL7", "thumbnailUrl": "MoiWndV1", "title": "tQLRwKvA", "updatedAt": "1975-06-17T00:00:00Z", "useCount": 2}, "namespace": "PTUNbhNQ", "order": {"currency": {"currencyCode": "8ym512sE", "currencySymbol": "YhsU89Tf", "currencyType": "VIRTUAL", "decimals": 37, "namespace": "dpea0RtH"}, "ext": {"UkEZk9cL": {}, "3FQYdt4G": {}, "2GqWbcQG": {}}, "free": false}, "source": "GIFT"}, "script": "88DZ3hHO", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'FWhTTBVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'hT14qfxt' \
    --body '{"grantDays": "S4zV7K2W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'XqrACHz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    '4FlnaZMS' \
    --body '{"grantDays": "n244O7lp"}' \
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
    --body '{"clazz": "aUnt3LhT", "dryRun": false, "fulfillmentUrl": "brAXZ783", "itemType": "BUNDLE", "purchaseConditionUrl": "sYn2iUzK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'BUNDLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'JhZSzZP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'JfbYmZmc' \
    --body '{"clazz": "DHsSUOib", "dryRun": false, "fulfillmentUrl": "KVrLLLFn", "purchaseConditionUrl": "ziW2BaYP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'zk0pSypG' \
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
    --body '{"description": "ADRitaRE", "items": [{"extraSubscriptionDays": 68, "itemId": "AdVhr3Cq", "itemName": "jC9y1m2Q", "quantity": 80}, {"extraSubscriptionDays": 39, "itemId": "oznBvm3e", "itemName": "aKGk1hrj", "quantity": 11}, {"extraSubscriptionDays": 25, "itemId": "zAiLP0ME", "itemName": "vp18aEUH", "quantity": 11}], "maxRedeemCountPerCampaignPerUser": 23, "maxRedeemCountPerCode": 22, "maxRedeemCountPerCodePerUser": 24, "maxSaleCount": 89, "name": "ZySVeO9k", "redeemEnd": "1972-12-19T00:00:00Z", "redeemStart": "1982-07-07T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["rEXJ23ZF", "iYsiV01k", "fH6j9xQL"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '0I2ttcp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '60Ai0QRr' \
    --body '{"description": "mNEJUrNT", "items": [{"extraSubscriptionDays": 26, "itemId": "7jEem5wN", "itemName": "vmWrQ8zD", "quantity": 16}, {"extraSubscriptionDays": 88, "itemId": "aNTJ7mgS", "itemName": "0aXNiHxf", "quantity": 16}, {"extraSubscriptionDays": 68, "itemId": "se3a8JF3", "itemName": "xSahDXK5", "quantity": 57}], "maxRedeemCountPerCampaignPerUser": 52, "maxRedeemCountPerCode": 38, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 66, "name": "i2Ru483y", "redeemEnd": "1981-09-26T00:00:00Z", "redeemStart": "1992-06-09T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["plXA8AFo", "OCCgjj4W", "dFyboctR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'iycTsVIf' \
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
    'MesfL6Ie' \
    --body '{"categoryPath": "02EqRobK", "localizationDisplayNames": {"B7vrkWR4": "ImilMqgm", "whd7RRHS": "iLBWf6X4", "f5ApyeNH": "3WziuFkb"}}' \
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
    'E2AJKJSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'Iy4KjtHA' \
    'O7cUouCB' \
    --body '{"localizationDisplayNames": {"Wrdz8pKJ": "CC0tvwE3", "JiE50AQe": "4IpqR6hM", "p0TfUiRj": "BOTzuAJO"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'BOBZ6uwN' \
    'CNQU8627' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'BhiKvNYv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '7UiRcbvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'bZGzYOPg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'BIrhBVTg' \
    --body '{"quantity": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    '5eaGQmYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'RZydsUhB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'eu00t7Tk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'ZFd1UWG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'G552jVo3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'VlP0dMzA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'oUmIByec' \
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
    --body '{"grpcServerAddress": "8oKNxeZR"}' \
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
    --body '{"currencyCode": "YJFoYFNQ", "currencySymbol": "VXxIDtTT", "currencyType": "VIRTUAL", "decimals": 46, "localizationDescriptions": {"tO1xMzDe": "pzrwVrN5", "bqVAzIq2": "VREAy7dB", "GG8zR9Ik": "5NXRfLeu"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'fkmCgQAi' \
    --body '{"localizationDescriptions": {"HJKTtNro": "LDFYriD4", "MWPjcdDq": "XdenHtXJ", "VMJImXpc": "at2F2Vm9"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'UWkJaWvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'voZVpSZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'uFltxCdR' \
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
    --body '{"data": [{"id": "fbVMr502", "rewards": [{"currency": {"currencyCode": "6NPjqX1y", "namespace": "VZJWFueu"}, "item": {"itemId": "c5MSgxBz", "itemSku": "mvN9kbSl", "itemType": "FE9p0lLC"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "dYVk8Ou6", "namespace": "Bk8IqauI"}, "item": {"itemId": "w4ou2Yn5", "itemSku": "sPmrZuLW", "itemType": "UlIkvJxa"}, "quantity": 31, "type": "CURRENCY"}, {"currency": {"currencyCode": "CLfF9ZYg", "namespace": "0SH7yqVf"}, "item": {"itemId": "PNWvjDdg", "itemSku": "tnVqJyT4", "itemType": "ktGgnyk9"}, "quantity": 21, "type": "ITEM"}]}, {"id": "NGyaEJMu", "rewards": [{"currency": {"currencyCode": "Q7vu8KNn", "namespace": "Ce430mPL"}, "item": {"itemId": "Ac1JXXVF", "itemSku": "Jx9oQJ5n", "itemType": "jXq2lCXQ"}, "quantity": 61, "type": "ITEM"}, {"currency": {"currencyCode": "GeHKmU4T", "namespace": "Vkv3eJ02"}, "item": {"itemId": "zjJuzMpn", "itemSku": "QdzfC4vG", "itemType": "2PBvXksc"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "5CCNhcpq", "namespace": "U9Id7yjR"}, "item": {"itemId": "R9MluvX6", "itemSku": "7YJhOGWp", "itemType": "1kFVtizK"}, "quantity": 47, "type": "CURRENCY"}]}, {"id": "A7nJNbdE", "rewards": [{"currency": {"currencyCode": "CAxaBaLc", "namespace": "Fiht6hGo"}, "item": {"itemId": "7q74LDGH", "itemSku": "ESSsAAql", "itemType": "kneqK047"}, "quantity": 9, "type": "CURRENCY"}, {"currency": {"currencyCode": "ik0QeoXF", "namespace": "cCwfsdd7"}, "item": {"itemId": "oGdFNxk6", "itemSku": "Q2r5qYPZ", "itemType": "l6NaQx3a"}, "quantity": 69, "type": "ITEM"}, {"currency": {"currencyCode": "Y2Gm1LAE", "namespace": "ywAFSHYi"}, "item": {"itemId": "UQ6TA18t", "itemSku": "Nzt64q60", "itemType": "0wFmkFch"}, "quantity": 7, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"wwRwwgOo": "NTE6yXTP", "ONdpBjsa": "PZUXu37C", "awB0z6aW": "gbNPqQE4"}}, {"platform": "XBOX", "platformDlcIdMap": {"1DeZT5T8": "Yufm7RKz", "0vMbrx0w": "3CtE5xxu", "h76BVcAC": "RXLf4yxh"}}, {"platform": "STEAM", "platformDlcIdMap": {"92wBK29W": "8CWJldOe", "6SWj5T5G": "HRYSrj06", "gkJJzvy7": "Wj42Bul4"}}]}' \
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
    'WzInJwRS' \
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
    --body '{"bundleId": "MjxET3lY", "password": "cWWxe3IV"}' \
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
    --body '{"sandboxId": "vjD4VBkY"}' \
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
    --body '{"applicationName": "tlAzJcxm", "serviceAccountId": "r3KLjmis"}' \
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
    --body '{"data": [{"itemIdentity": "0b9Gop31", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"igmUU9eg": "kwSifPGG", "ZJImnQBM": "MgZr09xp", "4II9XKAl": "rKvrDCQU"}}, {"itemIdentity": "E0EWljKj", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"EsQUzskM": "TrFKDNGG", "t4NAyErN": "YvsF19mg", "QgRnY8AD": "zz6mxsIm"}}, {"itemIdentity": "FRql8la9", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"eOwSb0fr": "8eJEl8KK", "v9kRhCqk": "ds3YJv0P", "8hPCresp": "HkJCUNwE"}}]}' \
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
    --body '{"environment": "t7hOUP2D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdatePlaystationIAPConfig' test.out

#- 69 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeletePlaystationIAPConfig' test.out

#- 70 GetStadiaIAPConfig
$PYTHON -m $MODULE 'platform-get-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetStadiaIAPConfig' test.out

#- 71 DeleteStadiaIAPConfig
$PYTHON -m $MODULE 'platform-delete-stadia-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteStadiaIAPConfig' test.out

#- 72 UpdateStadiaJsonConfigFile
$PYTHON -m $MODULE 'platform-update-stadia-json-config-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateStadiaJsonConfigFile' test.out

#- 73 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetSteamIAPConfig' test.out

#- 74 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "W8YnKpXR", "publisherAuthenticationKey": "bnMHfXca"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateSteamIAPConfig' test.out

#- 75 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteSteamIAPConfig' test.out

#- 76 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetTwitchIAPConfig' test.out

#- 77 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "PSuvkIpp", "clientSecret": "BRe1g9oe", "organizationId": "IWscliKU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateTwitchIAPConfig' test.out

#- 78 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteTwitchIAPConfig' test.out

#- 79 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetXblIAPConfig' test.out

#- 80 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "zIA9LYoW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateXblIAPConfig' test.out

#- 81 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteXblAPConfig' test.out

#- 82 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateXblBPCertFile' test.out

#- 83 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'doZ4Nxkj' \
    'CSQhriR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '9NAO7Vxc' \
    'NH6wzXgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'GNmRNIBE' \
    --body '{"categoryPath": "Z0MaXsZo", "targetItemId": "iOUkqTSG", "targetNamespace": "5bFwjJcC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '1qxYN4xh' \
    --body '{"appId": "zJhzeOHV", "appType": "DEMO", "baseAppId": "xdtjoXG6", "boothName": "hEXbKnTC", "categoryPath": "mwXmiL59", "clazz": "UMxKT7F1", "displayOrder": 83, "entitlementType": "DURABLE", "ext": {"Uhq8Ne2d": {}, "Y790jETq": {}, "UT4KwCA0": {}}, "features": ["wEfBnC87", "UdNzKEBD", "Vc1OB3kG"], "images": [{"as": "eYq1dGbv", "caption": "OleMqjmN", "height": 84, "imageUrl": "SaR6dfDC", "smallImageUrl": "g9IPEGWe", "width": 54}, {"as": "TKI6Axxe", "caption": "PYDu168g", "height": 73, "imageUrl": "aMJ6njXN", "smallImageUrl": "LyNLj9AY", "width": 66}, {"as": "5034GvVT", "caption": "PPtLAVBH", "height": 70, "imageUrl": "xpYMli1c", "smallImageUrl": "i9INuDL4", "width": 46}], "itemIds": ["2vy8Lgn8", "9sD5MPBG", "12YY7zeT"], "itemQty": {"nQAuxtCv": 90, "PO1CWtnC": 39, "v6a9GhVI": 20}, "itemType": "COINS", "listable": false, "localizations": {"LzcLX5UN": {"description": "T18Agz4R", "localExt": {"ANMYICTK": {}, "n5ad6Srj": {}, "nG8oob9k": {}}, "longDescription": "7FPvsc8F", "title": "h0bwRR83"}, "KgEPWnzf": {"description": "yhVcfm6I", "localExt": {"4r2OCLiV": {}, "FDA62Q5A": {}, "zZFaM8Jz": {}}, "longDescription": "x2ulFeXF", "title": "VVB0TJh2"}, "1htGw0xl": {"description": "SUqzgK76", "localExt": {"3bVMgvbc": {}, "Dv7e87Ke": {}, "AZ3MCtFj": {}}, "longDescription": "4FH9505F", "title": "Vj2NnxDy"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 45, "itemId": "E9ryUATg", "itemSku": "Nj7tEH0U", "itemType": "mYX461BA"}, {"count": 98, "itemId": "T1DZPGXU", "itemSku": "Cgvu4OK2", "itemType": "xWHnN3LE"}, {"count": 88, "itemId": "F36Jtx6L", "itemSku": "GZHxkjvK", "itemType": "zo9bAKGN"}], "name": "5eqMb3kj", "odds": 0.9689229533996995, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 13, "itemId": "GTxOVV7L", "itemSku": "VTEObt5t", "itemType": "itZs7Azh"}, {"count": 64, "itemId": "6xpJX3W7", "itemSku": "KRsoXUNH", "itemType": "8ltD3qRE"}, {"count": 35, "itemId": "boHIr4Id", "itemSku": "CaDJZDbN", "itemType": "iTw8ubuc"}], "name": "Cloh2Zzl", "odds": 0.1769582734311832, "type": "PROBABILITY_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 84, "itemId": "UG983ony", "itemSku": "UggJXjlL", "itemType": "rXR46jDv"}, {"count": 52, "itemId": "1aP25uZG", "itemSku": "9vmVL0DY", "itemType": "BFk5rf3A"}, {"count": 24, "itemId": "IC4bqmX8", "itemSku": "oHx3qHAc", "itemType": "3O0y0jGo"}], "name": "nQs0RWBd", "odds": 0.24126860586127707, "type": "PROBABILITY_GROUP", "weight": 65}]}, "maxCount": 28, "maxCountPerUser": 40, "name": "MyA6PTzu", "optionBoxConfig": {"boxItems": [{"count": 73, "itemId": "pxoelVRy", "itemSku": "g4qKC3oI", "itemType": "8vbEuPd2"}, {"count": 8, "itemId": "W9exd8ZW", "itemSku": "SFByrX5O", "itemType": "xqRkfGMg"}, {"count": 14, "itemId": "6068tstB", "itemSku": "qmyIlMGy", "itemType": "uAPiSlzb"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 23, "fixedTrialCycles": 89, "graceDays": 82}, "regionData": {"u2kH9e5r": [{"currencyCode": "Pfm1hxJw", "currencyNamespace": "B6djh31v", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1981-06-10T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1980-08-28T00:00:00Z", "discountedPrice": 10, "expireAt": "1988-11-09T00:00:00Z", "price": 67, "purchaseAt": "1999-04-29T00:00:00Z", "trialPrice": 18}, {"currencyCode": "4R0Femwn", "currencyNamespace": "4oqxIRCF", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1989-04-12T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1990-06-11T00:00:00Z", "discountedPrice": 92, "expireAt": "1996-11-16T00:00:00Z", "price": 11, "purchaseAt": "1978-02-23T00:00:00Z", "trialPrice": 44}, {"currencyCode": "PTx6PDRx", "currencyNamespace": "760z4mIF", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1979-07-06T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1993-10-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1975-04-29T00:00:00Z", "price": 85, "purchaseAt": "1982-04-14T00:00:00Z", "trialPrice": 26}], "R0IQnWTI": [{"currencyCode": "9UP0KhS6", "currencyNamespace": "kLdtpot8", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1973-01-31T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1987-03-27T00:00:00Z", "discountedPrice": 88, "expireAt": "1987-12-23T00:00:00Z", "price": 41, "purchaseAt": "1998-05-05T00:00:00Z", "trialPrice": 62}, {"currencyCode": "vB4OmQNL", "currencyNamespace": "x7Y5Iugp", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-07-20T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1995-06-17T00:00:00Z", "discountedPrice": 1, "expireAt": "1983-04-23T00:00:00Z", "price": 39, "purchaseAt": "1974-09-15T00:00:00Z", "trialPrice": 93}, {"currencyCode": "6kK5oQ7U", "currencyNamespace": "ITavnFk4", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1981-11-26T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1981-06-07T00:00:00Z", "discountedPrice": 49, "expireAt": "1990-06-24T00:00:00Z", "price": 72, "purchaseAt": "1985-09-17T00:00:00Z", "trialPrice": 35}], "HiMKv6Ya": [{"currencyCode": "X5WdnsmG", "currencyNamespace": "3uT6QRnB", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1991-02-23T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1973-04-15T00:00:00Z", "discountedPrice": 14, "expireAt": "1991-10-31T00:00:00Z", "price": 37, "purchaseAt": "1974-09-01T00:00:00Z", "trialPrice": 15}, {"currencyCode": "K2qVrrGO", "currencyNamespace": "EZozBp7J", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1985-08-26T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1998-06-19T00:00:00Z", "discountedPrice": 80, "expireAt": "1998-10-04T00:00:00Z", "price": 66, "purchaseAt": "1974-11-01T00:00:00Z", "trialPrice": 90}, {"currencyCode": "ZwSgCj1d", "currencyNamespace": "rIuetjnc", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1983-01-22T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1987-03-18T00:00:00Z", "discountedPrice": 68, "expireAt": "1972-03-28T00:00:00Z", "price": 49, "purchaseAt": "1997-07-05T00:00:00Z", "trialPrice": 46}]}, "seasonType": "PASS", "sku": "9ql8OwFT", "stackable": false, "status": "ACTIVE", "tags": ["PYIM6RHs", "5LkEnsRu", "Pp4gmHTo"], "targetCurrencyCode": "o5CbbgZY", "targetNamespace": "aVokncLq", "thumbnailUrl": "d3nKHQM9", "useCount": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '1XkNN0hC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemByAppId' test.out

#- 88 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'QueryItems' test.out

#- 89 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'ListBasicItemsByFeatures' test.out

#- 90 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'hpU4fuvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'GNYPSExs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'hPsp7jiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetItemIdBySku' test.out

#- 93 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetBulkItemIdBySkus' test.out

#- 94 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'DtRXUulB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkGetLocaleItems' test.out

#- 95 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetAvailablePredicateTypes' test.out

#- 96 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'ysZfTQuU' \
    --body '{"itemIds": ["eljwRMxD", "0LJi7IAU", "AIcxnCQC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'ctk3JuE0' \
    'N6b2QqBu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'SearchItems' test.out

#- 98 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'QueryUncategorizedItems' test.out

#- 99 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'pC8U2XXo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetItem' test.out

#- 100 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'GPNP89kg' \
    '6xDSozXN' \
    --body '{"appId": "n0YqoWzM", "appType": "DEMO", "baseAppId": "Dx6FnG7v", "boothName": "PadZGdGb", "categoryPath": "EAF72GnA", "clazz": "KHTle1ux", "displayOrder": 21, "entitlementType": "CONSUMABLE", "ext": {"cxQKCtWA": {}, "5r1LznYg": {}, "MRGh66mf": {}}, "features": ["UepyL8Xj", "2X3TCRqe", "mVX4LlVN"], "images": [{"as": "Z2Ce3r7y", "caption": "MtR4Nh4S", "height": 65, "imageUrl": "BBiVcZDw", "smallImageUrl": "aJnIuSMY", "width": 77}, {"as": "sbLenPMV", "caption": "sEhyBEgY", "height": 40, "imageUrl": "GvGuEi6y", "smallImageUrl": "V61UqCVK", "width": 70}, {"as": "VmWwHhKw", "caption": "PbuOlgf8", "height": 51, "imageUrl": "hOW18LzN", "smallImageUrl": "u0pwBS0O", "width": 26}], "itemIds": ["kSgot9Bu", "sbMkyZyM", "ggEPL3hv"], "itemQty": {"T35U8gBA": 42, "5VT46ZXx": 47, "KPo8cmY8": 22}, "itemType": "SUBSCRIPTION", "listable": true, "localizations": {"N2iPvZem": {"description": "MQizeawJ", "localExt": {"awjH0W2n": {}, "orumzIeG": {}, "cwF7KKqR": {}}, "longDescription": "9m4Kj8aG", "title": "Zn7LZGmd"}, "FfwhfdwY": {"description": "HvVMEkWP", "localExt": {"ZllFnWl2": {}, "BnZDbzoB": {}, "yJwkD9Ox": {}}, "longDescription": "a3jVZDEj", "title": "mJjE1wTP"}, "yGeav0th": {"description": "7BEmGELB", "localExt": {"YcReQdjP": {}, "1Flhwk0S": {}, "z2cswUgW": {}}, "longDescription": "KCFLf4lu", "title": "eVE38UIp"}}, "lootBoxConfig": {"rewardCount": 92, "rewards": [{"lootBoxItems": [{"count": 25, "itemId": "AZKbbLld", "itemSku": "nt9KmLQK", "itemType": "CrMZRaAX"}, {"count": 96, "itemId": "A3ijIA9T", "itemSku": "3wn1EyXe", "itemType": "GiiCm5bH"}, {"count": 41, "itemId": "qydLpZDe", "itemSku": "2ffqKWUN", "itemType": "tcblYsAA"}], "name": "ABa0hJMZ", "odds": 0.7666712662560244, "type": "REWARD", "weight": 70}, {"lootBoxItems": [{"count": 24, "itemId": "aszZ4ipE", "itemSku": "hpAdpae8", "itemType": "YmPLGpxf"}, {"count": 7, "itemId": "Y3z1Z9jn", "itemSku": "FWCdLMWA", "itemType": "ZVXg4Kyr"}, {"count": 25, "itemId": "BjNdkXk2", "itemSku": "OwOlkagZ", "itemType": "wmz6gbq1"}], "name": "JTUXXDpo", "odds": 0.8232839476593279, "type": "PROBABILITY_GROUP", "weight": 58}, {"lootBoxItems": [{"count": 39, "itemId": "FTqFMhhI", "itemSku": "5xFhg3c9", "itemType": "vaVLziZQ"}, {"count": 95, "itemId": "pCPrv4Bb", "itemSku": "NIB60SVV", "itemType": "x0In8ksz"}, {"count": 31, "itemId": "uV3BzoAn", "itemSku": "vT0XDaeL", "itemType": "njWLYnic"}], "name": "9HAHWXEa", "odds": 0.11678085667939153, "type": "REWARD", "weight": 43}]}, "maxCount": 40, "maxCountPerUser": 52, "name": "7QobcCCY", "optionBoxConfig": {"boxItems": [{"count": 34, "itemId": "KzU51uSt", "itemSku": "8leacdA5", "itemType": "BGkUAu6f"}, {"count": 31, "itemId": "vDaa18qM", "itemSku": "lyfSMaEL", "itemType": "DVwXHp9P"}, {"count": 29, "itemId": "1bpIEbsR", "itemSku": "h36CZPvE", "itemType": "XgntTZmj"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 56, "fixedTrialCycles": 49, "graceDays": 68}, "regionData": {"PbP71w92": [{"currencyCode": "h9kMbD6z", "currencyNamespace": "f7iuRbjA", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1973-11-09T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1990-12-17T00:00:00Z", "discountedPrice": 20, "expireAt": "1971-02-20T00:00:00Z", "price": 88, "purchaseAt": "1991-07-08T00:00:00Z", "trialPrice": 71}, {"currencyCode": "14nhoHWu", "currencyNamespace": "MMh67eHc", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1977-05-18T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1984-02-19T00:00:00Z", "discountedPrice": 20, "expireAt": "1998-07-01T00:00:00Z", "price": 71, "purchaseAt": "1977-03-31T00:00:00Z", "trialPrice": 11}, {"currencyCode": "5vRsmuEY", "currencyNamespace": "E9y58q9B", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1993-03-25T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1979-04-19T00:00:00Z", "discountedPrice": 8, "expireAt": "1993-02-22T00:00:00Z", "price": 68, "purchaseAt": "1975-06-15T00:00:00Z", "trialPrice": 13}], "d9f5uFVU": [{"currencyCode": "k0vkZwcM", "currencyNamespace": "KodFabLC", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1982-10-15T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1991-02-13T00:00:00Z", "discountedPrice": 27, "expireAt": "1996-05-06T00:00:00Z", "price": 0, "purchaseAt": "1976-08-11T00:00:00Z", "trialPrice": 20}, {"currencyCode": "lfUQ5yZy", "currencyNamespace": "RQma0cQO", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1991-06-02T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1985-04-27T00:00:00Z", "discountedPrice": 14, "expireAt": "1976-11-23T00:00:00Z", "price": 42, "purchaseAt": "1980-08-26T00:00:00Z", "trialPrice": 97}, {"currencyCode": "WNvoe38k", "currencyNamespace": "Mvn0Ije4", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1974-08-24T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1994-03-18T00:00:00Z", "discountedPrice": 87, "expireAt": "1986-10-08T00:00:00Z", "price": 79, "purchaseAt": "1990-06-18T00:00:00Z", "trialPrice": 97}], "RD1nBFVq": [{"currencyCode": "Xy64EcW1", "currencyNamespace": "rwvubTvd", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1985-06-13T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1982-02-10T00:00:00Z", "discountedPrice": 72, "expireAt": "1994-11-24T00:00:00Z", "price": 91, "purchaseAt": "1998-06-23T00:00:00Z", "trialPrice": 10}, {"currencyCode": "PlU9Y8Hj", "currencyNamespace": "0p6xNaw8", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1992-05-28T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1985-05-28T00:00:00Z", "discountedPrice": 91, "expireAt": "1990-01-07T00:00:00Z", "price": 34, "purchaseAt": "1988-08-10T00:00:00Z", "trialPrice": 6}, {"currencyCode": "Lma8nEc3", "currencyNamespace": "tqBUM6jX", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1992-11-29T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1984-06-25T00:00:00Z", "discountedPrice": 26, "expireAt": "1982-03-23T00:00:00Z", "price": 29, "purchaseAt": "1976-07-03T00:00:00Z", "trialPrice": 25}]}, "seasonType": "TIER", "sku": "ty3uX68i", "stackable": true, "status": "ACTIVE", "tags": ["WG26HmHS", "WH7S8vs2", "FcLvFQw8"], "targetCurrencyCode": "5iEeMAlN", "targetNamespace": "VHw4rRdo", "thumbnailUrl": "aubqpUML", "useCount": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateItem' test.out

#- 101 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'i2YBXanR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteItem' test.out

#- 102 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'c1yElfGh' \
    --body '{"count": 29, "orderNo": "wHKzhFbG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AcquireItem' test.out

#- 103 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'GUcB36C0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetApp' test.out

#- 104 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'hg58NMBA' \
    'MEVExm4S' \
    --body '{"carousel": [{"alt": "rexmjItF", "previewUrl": "Iu6dVMbn", "thumbnailUrl": "FIERMCKy", "type": "video", "url": "yvPNSeG8", "videoSource": "vimeo"}, {"alt": "3M3cNonX", "previewUrl": "kPiGrsaO", "thumbnailUrl": "wxXwwRLp", "type": "image", "url": "VUSOYRqP", "videoSource": "generic"}, {"alt": "0gThmabF", "previewUrl": "2xYzW9vQ", "thumbnailUrl": "g1SxrjAL", "type": "video", "url": "eelASEJr", "videoSource": "generic"}], "developer": "nXROMaxy", "forumUrl": "f58KeOUl", "genres": ["MassivelyMultiplayer", "RPG", "MassivelyMultiplayer"], "localizations": {"y6Va53cC": {"announcement": "vpmsHgS5", "slogan": "syzGkBrJ"}, "dMXqF1rZ": {"announcement": "kgyfSg5d", "slogan": "RlhQ3Emg"}, "p12IV3cf": {"announcement": "KdOBftSA", "slogan": "9rMzSBuG"}}, "platformRequirements": {"DLDjYGLi": [{"additionals": "wNvnnYuK", "directXVersion": "CGf0e1eO", "diskSpace": "JamVGmaW", "graphics": "ZwxEWlNO", "label": "3DA8Awcw", "osVersion": "E82DIzPw", "processor": "2Lrxoscp", "ram": "ElIFub3o", "soundCard": "rfMxfmZR"}, {"additionals": "OIRIKbvp", "directXVersion": "BVGvN8vk", "diskSpace": "tsHpLcOY", "graphics": "KD2JOdeZ", "label": "IaAZ0wVM", "osVersion": "2RPK02kB", "processor": "X3JHkNxm", "ram": "EwYe1n9I", "soundCard": "hNpdqgsB"}, {"additionals": "Cpnwo25f", "directXVersion": "R9tOB1Ti", "diskSpace": "PdIpiDQI", "graphics": "6NGGHI40", "label": "mM8KY910", "osVersion": "bK96Iovx", "processor": "xn1MF3jU", "ram": "fafWefgg", "soundCard": "V7MdWK0P"}], "rjWsVjTj": [{"additionals": "y78KmS9t", "directXVersion": "oXllkR3i", "diskSpace": "ePKKSrFG", "graphics": "6tYFe5NG", "label": "RpEJSmjI", "osVersion": "qfRHDkmV", "processor": "vn013aSS", "ram": "ZJbCBGY4", "soundCard": "n5rXHecH"}, {"additionals": "oDD737lU", "directXVersion": "gdG6sOLW", "diskSpace": "fVpHW4Gv", "graphics": "2SOm6ecT", "label": "8cQqfpDO", "osVersion": "xqjER4Jk", "processor": "xyAjmfZH", "ram": "hGj8zOJd", "soundCard": "EWERZiJE"}, {"additionals": "MxCowFrC", "directXVersion": "WZc0tb2R", "diskSpace": "UXFkGgZd", "graphics": "PF7CsvJ0", "label": "nAh6BaTW", "osVersion": "mMyxxgK0", "processor": "Bh975E9N", "ram": "aRf2NT8O", "soundCard": "iWuH9GGf"}], "IfJ6yxm8": [{"additionals": "rkaJhsXd", "directXVersion": "BYmavDBC", "diskSpace": "tQ0CoeBT", "graphics": "TwYllNHv", "label": "CNCjGaRB", "osVersion": "L41SVTtG", "processor": "yxsmuUWK", "ram": "x9oXALGY", "soundCard": "NyIpuGVm"}, {"additionals": "h3q8OtLQ", "directXVersion": "3jboY5dJ", "diskSpace": "lY4UmttC", "graphics": "ECBNIYLT", "label": "X1vDvQ08", "osVersion": "O0fHAqhF", "processor": "4Qep6OiT", "ram": "vONpz00v", "soundCard": "dSeb8yjd"}, {"additionals": "zqYwyWrs", "directXVersion": "OhkiY0sK", "diskSpace": "kcFOGbvP", "graphics": "Y8cmWvT8", "label": "k10Jgmmq", "osVersion": "f2FWNh0A", "processor": "WCZ8UGzD", "ram": "KlTww4rD", "soundCard": "uaosTP2H"}]}, "platforms": ["MacOS", "Android", "MacOS"], "players": ["Coop", "CrossPlatformMulti", "Single"], "primaryGenre": "Strategy", "publisher": "9c2TWNIE", "releaseDate": "1990-11-18T00:00:00Z", "websiteUrl": "o46G4qbF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'UpdateApp' test.out

#- 105 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    '2jIcF78R' \
    'bJMK62Tb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'DisableItem' test.out

#- 106 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'eUabPe0P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemDynamicData' test.out

#- 107 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '9dpx3r3P' \
    'fZaeCa8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'EnableItem' test.out

#- 108 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'rq1nXis1' \
    '7tCM9FzG' \
    'enagG7H7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'FeatureItem' test.out

#- 109 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'wx87sX0E' \
    'zu9enUAi' \
    'fMGPczoR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DefeatureItem' test.out

#- 110 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    '9wrq4qQT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetLocaleItem' test.out

#- 111 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'Up0e76eW' \
    'o4fk7j7v' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 51, "comparison": "isGreaterThanOrEqual", "name": "aWSppJRC", "predicateType": "SeasonPassPredicate", "value": "9hcNcfdJ", "values": ["LPHAKOKw", "41oAhtCk", "2qC2y7sQ"]}, {"anyOf": 59, "comparison": "isLessThan", "name": "uhSZl90T", "predicateType": "SeasonTierPredicate", "value": "6TGjG1WE", "values": ["ttrpKxW1", "dOvshmN3", "72uqs2hF"]}, {"anyOf": 3, "comparison": "isNot", "name": "74h5wmi7", "predicateType": "SeasonPassPredicate", "value": "6EnSmLQ5", "values": ["PhIjEYoh", "jetdZlNV", "jGVIlfko"]}]}, {"operator": "or", "predicates": [{"anyOf": 68, "comparison": "includes", "name": "66relhcF", "predicateType": "SeasonTierPredicate", "value": "sKcVZB8U", "values": ["bYYjYPxI", "gQl4tEQS", "JYw6TV2a"]}, {"anyOf": 34, "comparison": "excludes", "name": "KNVzmC8B", "predicateType": "SeasonTierPredicate", "value": "d8N0aZ3I", "values": ["3lph2mH3", "kQfNW0wG", "RcDG0AHc"]}, {"anyOf": 42, "comparison": "isNot", "name": "3hrIaUot", "predicateType": "SeasonPassPredicate", "value": "PjVVGY3a", "values": ["5qKkXiJl", "o1NZjKh0", "XhnTFrZr"]}]}, {"operator": "or", "predicates": [{"anyOf": 60, "comparison": "isNot", "name": "tf3Skv81", "predicateType": "SeasonTierPredicate", "value": "YTtTcC9h", "values": ["as3YUYez", "AIZo2oUf", "4YPxZEtI"]}, {"anyOf": 6, "comparison": "isNot", "name": "gKLNE2cy", "predicateType": "SeasonPassPredicate", "value": "qOavXvGj", "values": ["U5K08fHR", "qwu9q3N0", "GszKzvDC"]}, {"anyOf": 29, "comparison": "is", "name": "mYbelq09", "predicateType": "SeasonPassPredicate", "value": "BZnQhx7k", "values": ["hZWQP2Z2", "6oByr9rT", "wHTVgoVP"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'UpdateItemPurchaseCondition' test.out

#- 112 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'pj9dv0h1' \
    --body '{"orderNo": "5aYVyM1l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'ReturnItem' test.out

#- 113 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'QueryKeyGroups' test.out

#- 114 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "h7AFxoNF", "name": "jgKlqga8", "status": "INACTIVE", "tags": ["cThA6Dnr", "tDT3uc1S", "jJHAPkcn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'CreateKeyGroup' test.out

#- 115 GetKeyGroupByBoothName
eval_tap 0 115 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 116 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'eUZDfPD4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroup' test.out

#- 117 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'Ouz54E3w' \
    --body '{"description": "N7iSF3Yz", "name": "okpUYJBM", "status": "ACTIVE", "tags": ["fU7jQsdO", "VOGqaYt3", "Inj64UJ6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UpdateKeyGroup' test.out

#- 118 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'rHIypFXh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetKeyGroupDynamic' test.out

#- 119 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '6GjPwIqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'ListKeys' test.out

#- 120 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '4NnTvYog' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UploadKeys' test.out

#- 121 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'QueryOrders' test.out

#- 122 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'GetOrderStatistics' test.out

#- 123 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'HOnraRXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetOrder' test.out

#- 124 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'MhCyT2SR' \
    --body '{"description": "hzI9Btc5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'RefundOrder' test.out

#- 125 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'GetPaymentCallbackConfig' test.out

#- 126 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "qembCdtW", "privateKey": "TrQUWpo8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'UpdatePaymentCallbackConfig' test.out

#- 127 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'QueryPaymentNotifications' test.out

#- 128 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'QueryPaymentOrders' test.out

#- 129 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "SQl9fpRk", "currencyNamespace": "OM0VdCvc", "customParameters": {"wwASnbYE": {}, "KMj5261f": {}, "v8s5bG7i": {}}, "description": "Sr8JHdZv", "extOrderNo": "8tT3ZtEV", "extUserId": "PW2JNk57", "itemType": "MEDIA", "language": "nX", "metadata": {"IkZ18b3V": "fZz5rMGd", "RmF69Iqa": "scKTrQP1", "xLHzoYle": "NO4vstG9"}, "notifyUrl": "OJmjKOyB", "omitNotification": false, "platform": "rKaluAYX", "price": 85, "recurringPaymentOrderNo": "nxArCzov", "region": "LvLZMgS0", "returnUrl": "wM3yJsqu", "sandbox": true, "sku": "3QBM3fwT", "subscriptionId": "wROUv8Om", "targetNamespace": "1p2Gb3sj", "targetUserId": "poItd9tM", "title": "hYJGD8AT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'CreatePaymentOrderByDedicated' test.out

#- 130 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'MZ4C5Szp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ListExtOrderNoByExtTxId' test.out

#- 131 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'tj9hlgSk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrder' test.out

#- 132 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'IfMUWD6T' \
    --body '{"extTxId": "4vRqdqDN", "paymentMethod": "o39R14yJ", "paymentProvider": "ADYEN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ChargePaymentOrder' test.out

#- 133 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'BJwffD3A' \
    --body '{"description": "cQmy3Rum"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'RefundPaymentOrderByDedicated' test.out

#- 134 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '7IwtI9mt' \
    --body '{"amount": 29, "currencyCode": "ZGPfbq4z", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 73, "vat": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'SimulatePaymentOrderNotification' test.out

#- 135 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'JY1ph4bS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentOrderChargeStatus' test.out

#- 136 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Other' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPlatformWalletConfig' test.out

#- 137 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Playstation' \
    --body '{"allowedBalanceOrigins": ["Epic", "Xbox", "Nintendo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdatePlatformWalletConfig' test.out

#- 138 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'ResetPlatformWalletConfig' test.out

#- 139 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "iUVv6myp", "eventTopic": "UjXKNPS0", "maxAwarded": 70, "maxAwardedPerUser": 55, "namespaceExpression": "rgBWGJR1", "rewardCode": "qvtLnZ5g", "rewardConditions": [{"condition": "GBBo6yFb", "conditionName": "Ti2xM84F", "eventName": "Zk09fECM", "rewardItems": [{"duration": 37, "itemId": "5uFtaXlC", "quantity": 15}, {"duration": 62, "itemId": "dppROsoV", "quantity": 4}, {"duration": 68, "itemId": "meU8YMYv", "quantity": 75}]}, {"condition": "vjRazuNM", "conditionName": "OPyRn6eH", "eventName": "jKx8dQkr", "rewardItems": [{"duration": 14, "itemId": "i7fa81xq", "quantity": 26}, {"duration": 9, "itemId": "2dPIzNTM", "quantity": 86}, {"duration": 6, "itemId": "RnbOzAXz", "quantity": 87}]}, {"condition": "gut0gk9R", "conditionName": "CgCvhQEW", "eventName": "vMrFVmGc", "rewardItems": [{"duration": 49, "itemId": "Ma0mIZ9r", "quantity": 30}, {"duration": 22, "itemId": "CICAUVwn", "quantity": 47}, {"duration": 12, "itemId": "s1rfcbAB", "quantity": 100}]}], "userIdExpression": "asTsBCOC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'CreateReward' test.out

#- 140 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'QueryRewards' test.out

#- 141 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'ExportRewards' test.out

#- 142 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'ImportRewards' test.out

#- 143 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'GKg13qfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetReward' test.out

#- 144 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'Peb4ipR5' \
    --body '{"description": "gjIRuKEq", "eventTopic": "586v6voQ", "maxAwarded": 90, "maxAwardedPerUser": 32, "namespaceExpression": "X0hVuq0q", "rewardCode": "ci0IoDUr", "rewardConditions": [{"condition": "NJFxjvAf", "conditionName": "BBwUt4gB", "eventName": "ALFoLgHA", "rewardItems": [{"duration": 65, "itemId": "m9NWwNjU", "quantity": 36}, {"duration": 21, "itemId": "1h7NLJBY", "quantity": 86}, {"duration": 86, "itemId": "atJwTYl7", "quantity": 29}]}, {"condition": "Skcs6QYO", "conditionName": "BhCEEHNR", "eventName": "YEKk1LOj", "rewardItems": [{"duration": 76, "itemId": "zERi1F35", "quantity": 1}, {"duration": 73, "itemId": "3fBI1iB4", "quantity": 12}, {"duration": 74, "itemId": "BffDw9SL", "quantity": 13}]}, {"condition": "sH4e6Clj", "conditionName": "OHlE9fR0", "eventName": "79WJbIUP", "rewardItems": [{"duration": 18, "itemId": "RlxW1zp0", "quantity": 49}, {"duration": 23, "itemId": "sHtLZxBi", "quantity": 14}, {"duration": 18, "itemId": "1lD0TuNG", "quantity": 54}]}], "userIdExpression": "nXY1wf3A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateReward' test.out

#- 145 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'Qc2ne0Pp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteReward' test.out

#- 146 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'LRt5OPpO' \
    --body '{"payload": {"E7CLLYDC": {}, "XpUKDstt": {}, "jEFKitUN": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'CheckEventCondition' test.out

#- 147 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'pnG6mwj3' \
    --body '{"conditionName": "DOUXwM1x", "userId": "MfWMYf3k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteRewardConditionRecord' test.out

#- 148 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QuerySections' test.out

#- 149 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'grqqL6Mt' \
    --body '{"active": false, "displayOrder": 56, "endDate": "1990-01-11T00:00:00Z", "ext": {"ZnE4GvG5": {}, "b72YdBxh": {}, "OFbKrIQV": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 22, "itemCount": 97, "rule": "SEQUENCE"}, "items": [{"id": "TjhSqzUA", "sku": "d6HHVSJW"}, {"id": "MBROjwKH", "sku": "6L1GCkes"}, {"id": "t9k8raX2", "sku": "IVaAugib"}], "localizations": {"ogvU3PRa": {"description": "MwAIyu5r", "localExt": {"Al7dbMbb": {}, "SH72r8nS": {}, "5h6Uz65l": {}}, "longDescription": "ek0AFURf", "title": "i2zeQTnQ"}, "kGGLcUgG": {"description": "8N1mOVOB", "localExt": {"GPRRUU6u": {}, "BYzHxfd3": {}, "KrFabrjX": {}}, "longDescription": "oUGseOsD", "title": "PByoS8A0"}, "Zmg5H2DW": {"description": "pfYGDXNp", "localExt": {"qCRIdk3j": {}, "3zH1X8PY": {}, "WuwArrnN": {}}, "longDescription": "n7ilpn7g", "title": "hSgX525j"}}, "name": "9CSw6kMh", "rotationType": "CUSTOM", "startDate": "1978-06-25T00:00:00Z", "viewId": "0yznFlIc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreateSection' test.out

#- 150 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'gulZyHv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'PurgeExpiredSection' test.out

#- 151 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'TRnDiApI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetSection' test.out

#- 152 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    '1cIZS8T7' \
    'eAhP8UgC' \
    --body '{"active": false, "displayOrder": 30, "endDate": "1989-09-28T00:00:00Z", "ext": {"OKDv7O2e": {}, "L9Y9Yxwc": {}, "OYVyZdrT": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 34, "itemCount": 46, "rule": "SEQUENCE"}, "items": [{"id": "5zzVOzNX", "sku": "MBiH9DNZ"}, {"id": "ms2I2jV3", "sku": "4hZV2460"}, {"id": "5m60vcg0", "sku": "H20SiAn8"}], "localizations": {"rPkvOrBr": {"description": "1lepcvAj", "localExt": {"NmGIc0eD": {}, "N8OqLsjk": {}, "U7ltGBUF": {}}, "longDescription": "LZwGbcz3", "title": "frOCcT9A"}, "ddlaFLoF": {"description": "ArOCLDDm", "localExt": {"TF3txet9": {}, "kedPqJ4b": {}, "RlwfinBE": {}}, "longDescription": "MC4qs7WE", "title": "l9sNem4G"}, "fwKmdu8Q": {"description": "3O8yhPeI", "localExt": {"KrLZ8Qrn": {}, "b5PFwsLv": {}, "q5Y6lV2b": {}}, "longDescription": "mUOWWgeo", "title": "mrlandX4"}}, "name": "KIr62bzI", "rotationType": "FIXED_PERIOD", "startDate": "1974-03-26T00:00:00Z", "viewId": "5kAwm3RL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSection' test.out

#- 153 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'zncDJF1G' \
    'QlesABee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'DeleteSection' test.out

#- 154 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ListStores' test.out

#- 155 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "LQFbqUzg", "defaultRegion": "97liSHQF", "description": "CVVf0IEh", "supportedLanguages": ["rgBrNPMC", "xIxpuUF6", "x4IArRHK"], "supportedRegions": ["5HJEZjY0", "kf2CzalQ", "r4TwVq5o"], "title": "2UMGAMk7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'CreateStore' test.out

#- 156 ImportStore
eval_tap 0 156 'ImportStore # SKIP deprecated' test.out

#- 157 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetPublishedStore' test.out

#- 158 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'DeletePublishedStore' test.out

#- 159 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetPublishedStoreBackup' test.out

#- 160 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'RollbackPublishedStore' test.out

#- 161 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'IvFFQc2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetStore' test.out

#- 162 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'anUEJnIF' \
    --body '{"defaultLanguage": "TGbe10PM", "defaultRegion": "FNcNzSeq", "description": "Hyj5Rzgp", "supportedLanguages": ["dF66laVf", "srVUFmhE", "pM3O6qIn"], "supportedRegions": ["GNXGki0B", "1eVK7YdI", "xefAbIcu"], "title": "jKF0u25c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateStore' test.out

#- 163 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'cF3zk1rS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteStore' test.out

#- 164 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'vZPpKOaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryChanges' test.out

#- 165 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'zlI86f9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'PublishAll' test.out

#- 166 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'N3MS6vRg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishSelected' test.out

#- 167 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'K9iSshLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'SelectAllRecords' test.out

#- 168 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '8Dq60CS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetStatistic' test.out

#- 169 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'vbxpyeG1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'UnselectAllRecords' test.out

#- 170 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '0Kmo4LvY' \
    'm6bFP4Vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'SelectRecord' test.out

#- 171 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'XanNhfke' \
    '9VhDMrSL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnselectRecord' test.out

#- 172 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'qfVo3kVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'CloneStore' test.out

#- 173 ExportStore
eval_tap 0 173 'ExportStore # SKIP deprecated' test.out

#- 174 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'QuerySubscriptions' test.out

#- 175 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'p4YaCbwW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'RecurringChargeSubscription' test.out

#- 176 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'D49hgmFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetTicketDynamic' test.out

#- 177 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'eCRm591y' \
    --body '{"orderNo": "i75D0Fve"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'DecreaseTicketSale' test.out

#- 178 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    '1n7tZqHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetTicketBoothID' test.out

#- 179 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'YEnnDH8t' \
    --body '{"count": 71, "orderNo": "SvzOMMjf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'IncreaseTicketSale' test.out

#- 180 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'Pp3G8cVF' \
    --body '{"achievements": [{"id": "sLW3uZLg", "value": 75}, {"id": "ZGEtrNFk", "value": 31}, {"id": "NzrWVyAR", "value": 7}], "steamUserId": "ZnBeMipF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UnlockSteamUserAchievement' test.out

#- 181 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'x2HZW21G' \
    'j4s5sU5K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetXblUserAchievements' test.out

#- 182 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'cwebsUa6' \
    --body '{"achievements": [{"id": "MaE9x8BB", "percentComplete": 1}, {"id": "SIt55AyY", "percentComplete": 79}, {"id": "mOZEYVll", "percentComplete": 17}], "serviceConfigId": "SVcoOGMU", "titleId": "sYIiz6EN", "xboxUserId": "UQdQGvKI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateXblUserAchievement' test.out

#- 183 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'jHgWSssP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeCampaign' test.out

#- 184 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'tUdERvNs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeEntitlement' test.out

#- 185 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '1hGbwdva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeFulfillment' test.out

#- 186 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    '7sgz4Pjq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeIntegration' test.out

#- 187 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'qoFM3oAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeOrder' test.out

#- 188 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'YxYNqDEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizePayment' test.out

#- 189 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'R5bmgcQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeSubscription' test.out

#- 190 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'tL4LbB0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeWallet' test.out

#- 191 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '0IV4AvcK' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserDLC' test.out

#- 192 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'UmWrzoAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlements' test.out

#- 193 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '9BvPniRr' \
    --body '[{"endDate": "1978-05-21T00:00:00Z", "grantedCode": "TqdGTvnk", "itemId": "pqCHzhTP", "itemNamespace": "kyFeLsIu", "language": "dH_ynzp_lD", "quantity": 95, "region": "8xGpzcDa", "source": "IAP", "startDate": "1971-01-21T00:00:00Z", "storeId": "hY1Ei9NC"}, {"endDate": "1982-11-19T00:00:00Z", "grantedCode": "DfI3bXFW", "itemId": "mHaQxPD7", "itemNamespace": "WtONEaVx", "language": "jO-lrRV_po", "quantity": 68, "region": "aQh9cHHj", "source": "PURCHASE", "startDate": "1995-04-26T00:00:00Z", "storeId": "VqhhByxC"}, {"endDate": "1982-04-24T00:00:00Z", "grantedCode": "6lXHUYfa", "itemId": "Nx63naHU", "itemNamespace": "6NPqCtSW", "language": "aFjU", "quantity": 45, "region": "nDoB642p", "source": "REWARD", "startDate": "1995-04-25T00:00:00Z", "storeId": "rNeJRTfn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GrantUserEntitlement' test.out

#- 194 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'BtYROCkc' \
    'BDQUz6OF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserAppEntitlementByAppId' test.out

#- 195 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '888XPwdz' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlementsByAppType' test.out

#- 196 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'mTRgiLlZ' \
    'G7xnZLFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserEntitlementByItemId' test.out

#- 197 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'gUhgGFPn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserActiveEntitlementsByItemIds' test.out

#- 198 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'yOzxhIqe' \
    'gymwyT9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementBySku' test.out

#- 199 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'jVmmnrik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ExistsAnyUserActiveEntitlement' test.out

#- 200 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'g5qfpmKF' \
    '["4uCC8jIz", "WwtEAPzs", "mdoPdTNH"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 201 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'uu3jxu5F' \
    'scAGHnDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 202 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'JJAoIJsO' \
    'fLlmFscH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementOwnershipByItemId' test.out

#- 203 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'nAESi4FT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementOwnershipByItemIds' test.out

#- 204 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'cLYlNadp' \
    'pTSfZhOw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipBySku' test.out

#- 205 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'BPyECQ2W' \
    'UF0C0ffv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RevokeUserEntitlements' test.out

#- 206 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'mCPyltcf' \
    'QQ55E3DR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlement' test.out

#- 207 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    '5Gi5tyQh' \
    'EdFlTD2v' \
    --body '{"endDate": "1996-07-22T00:00:00Z", "nullFieldList": ["WmL5O89B", "NNBotVsf", "asTxVY9E"], "startDate": "1980-07-07T00:00:00Z", "status": "ACTIVE", "useCount": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'UpdateUserEntitlement' test.out

#- 208 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'zogQJ2ho' \
    'r9jJdZks' \
    --body '{"options": ["sRafZuHk", "mNnwaHm7", "TezjcQ8Y"], "requestId": "fwWMCoIs", "useCount": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'ConsumeUserEntitlement' test.out

#- 209 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'B8iPxcqn' \
    'PF8IbhGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'DisableUserEntitlement' test.out

#- 210 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'DryPrTqu' \
    'Vf8DNpwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'EnableUserEntitlement' test.out

#- 211 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'KsYIyO0l' \
    '22Cm4TyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementHistories' test.out

#- 212 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'TH96keZE' \
    'dGW3fl7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserEntitlement' test.out

#- 213 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'v3djz8p3' \
    --body '{"duration": 58, "endDate": "1975-03-10T00:00:00Z", "itemId": "MOH49gip", "itemSku": "3fOPi8Wa", "language": "SMqaU8Xi", "order": {"currency": {"currencyCode": "2PTpIck4", "currencySymbol": "mRBEOZp8", "currencyType": "VIRTUAL", "decimals": 96, "namespace": "qZRvYbJ0"}, "ext": {"B1IUBk0x": {}, "q4clFwAA": {}, "yTX673xM": {}}, "free": true}, "orderNo": "7FjGIQKf", "origin": "Xbox", "quantity": 89, "region": "yv6lkQkl", "source": "ACHIEVEMENT", "startDate": "1971-10-01T00:00:00Z", "storeId": "WdBHK4j2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'FulfillItem' test.out

#- 214 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'ckkYMVm4' \
    --body '{"code": "KGx6uGhE", "language": "tI", "region": "8DT5kETD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RedeemCode' test.out

#- 215 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'mUVypHKI' \
    --body '{"origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "gQUEjKHO", "namespace": "3u5wh5Py"}, "item": {"itemId": "cRYUeRTj", "itemSku": "aiexFxKN", "itemType": "zt9dI2Ga"}, "quantity": 13, "type": "ITEM"}, {"currency": {"currencyCode": "GenaGyHz", "namespace": "QNmzv2uX"}, "item": {"itemId": "hQxDO269", "itemSku": "mErcPvd9", "itemType": "odcntSbE"}, "quantity": 53, "type": "ITEM"}, {"currency": {"currencyCode": "iBxbavLU", "namespace": "cShX0KS6"}, "item": {"itemId": "5G6pcCJA", "itemSku": "nryDbLl7", "itemType": "bl3UdO83"}, "quantity": 45, "type": "CURRENCY"}], "source": "PURCHASE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillRewards' test.out

#- 216 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'KV716t1p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QueryUserIAPOrders' test.out

#- 217 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'orev4Yu1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'QueryAllUserIAPOrders' test.out

#- 218 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'XCjR6vXx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPConsumeHistory' test.out

#- 219 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'u3pKAIAt' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "eBc_UEzE", "productId": "WFYf5O1h", "region": "n6UnFXMM", "type": "PLAYSTATION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'MockFulfillIAPItem' test.out

#- 220 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'QzT8DwjJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserOrders' test.out

#- 221 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'JHqMmoET' \
    --body '{"currencyCode": "6xscLOrW", "currencyNamespace": "iSLPBGQc", "discountedPrice": 77, "ext": {"8jjpDBqx": {}, "9Ocl1UgI": {}, "NIPOD9Ql": {}}, "itemId": "C6yNHasG", "language": "qJND93R2", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 19, "quantity": 37, "region": "Nlts2Oo0", "returnUrl": "3xCkQxsY", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminCreateUserOrder' test.out

#- 222 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'IeHKYeXH' \
    '11d9CS6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'CountOfPurchasedItem' test.out

#- 223 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'vzm69yc2' \
    'kTBH9Uwb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrder' test.out

#- 224 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'OaLZ1moA' \
    '5pFWSqxO' \
    --body '{"status": "CHARGEBACK_REVERSED", "statusReason": "zAPMpZAz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UpdateUserOrderStatus' test.out

#- 225 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'flYVHkO7' \
    'ZP22n9Dq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'FulfillUserOrder' test.out

#- 226 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'WDSJ4g1m' \
    'gHxV9SAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserOrderGrant' test.out

#- 227 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'vFhE7WA6' \
    'iUnpjbwp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrderHistories' test.out

#- 228 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'QdzsJRwg' \
    'MjEpixjc' \
    --body '{"additionalData": {"cardSummary": "Xx1DKqLT"}, "authorisedTime": "1986-11-06T00:00:00Z", "chargebackReversedTime": "1987-02-08T00:00:00Z", "chargebackTime": "1996-06-30T00:00:00Z", "chargedTime": "1991-03-21T00:00:00Z", "createdTime": "1982-04-23T00:00:00Z", "currency": {"currencyCode": "UqAD3UaE", "currencySymbol": "iGr38e40", "currencyType": "VIRTUAL", "decimals": 50, "namespace": "s08ojfRw"}, "customParameters": {"NlBGxZMr": {}, "I9eLwow9": {}, "JoyASOhD": {}}, "extOrderNo": "aViRLlDl", "extTxId": "U9Ko1UQI", "extUserId": "4fR7BEUd", "issuedAt": "1987-05-24T00:00:00Z", "metadata": {"NYyLXUoe": "BqicIqfC", "HhvVcU4E": "SfGgqkVo", "kPonCqCj": "GOs4MnT0"}, "namespace": "ZnCJvUIi", "nonceStr": "ipZgYOeB", "paymentMethod": "yQ0x3KnC", "paymentMethodFee": 100, "paymentOrderNo": "yLV221IF", "paymentProvider": "PAYPAL", "paymentProviderFee": 37, "paymentStationUrl": "MKNjiKFr", "price": 25, "refundedTime": "1999-10-17T00:00:00Z", "salesTax": 88, "sandbox": true, "sku": "Y84Kfizk", "status": "REFUND_FAILED", "statusReason": "KvTYw6MM", "subscriptionId": "Bf9BoYva", "subtotalPrice": 86, "targetNamespace": "8DPlBDp3", "targetUserId": "G7qQAHAT", "tax": 26, "totalPrice": 70, "totalTax": 14, "txEndTime": "1981-06-08T00:00:00Z", "type": "w0w8kGmP", "userId": "gcj3QFRQ", "vat": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'ProcessUserOrderNotification' test.out

#- 229 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'dHVez8ct' \
    'n7SN2UpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'DownloadUserOrderReceipt' test.out

#- 230 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'MPzUou6E' \
    --body '{"currencyCode": "lK4z78Np", "currencyNamespace": "rOjHMsO7", "customParameters": {"bkvVPkKT": {}, "yp3zRjPH": {}, "WLZxsLFE": {}}, "description": "ojeloZkh", "extOrderNo": "bsPEg9K3", "extUserId": "ZSFDIj52", "itemType": "LOOTBOX", "language": "fJU", "metadata": {"PGzXlUnX": "bSwnfrV2", "sUJI7qZQ": "27UsIu0S", "zihK9jvv": "cfn3Y5Rt"}, "notifyUrl": "4k6zdTih", "omitNotification": true, "platform": "ExQbFnTX", "price": 87, "recurringPaymentOrderNo": "Q1rxLmBG", "region": "aZePSkWN", "returnUrl": "OjBbqpWj", "sandbox": false, "sku": "XOaypOZX", "subscriptionId": "pUN3utiA", "title": "7Ow5JYCe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CreateUserPaymentOrder' test.out

#- 231 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'sPaUsOle' \
    'UYlKKweb' \
    --body '{"description": "6bxx7NFL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RefundUserPaymentOrder' test.out

#- 232 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'eiV23kkA' \
    --body '{"code": "Is8wiBRt", "orderNo": "vAzKGpZj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ApplyUserRedemption' test.out

#- 233 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    't8MGrBzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserSubscriptions' test.out

#- 234 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'BEi0rfSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscriptionActivities' test.out

#- 235 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '2ovH68Qu' \
    --body '{"grantDays": 96, "itemId": "TZosSsjo", "language": "iI0L1P23", "reason": "VjWex9XN", "region": "iDoqq8FK", "source": "KPEhjT9p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PlatformSubscribeSubscription' test.out

#- 236 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'ETXx7nj7' \
    'ulliz3NV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 237 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '3R9CwYdY' \
    'i6iBKO4J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscription' test.out

#- 238 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'GRdd0Jme' \
    'HIlRMeQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'DeleteUserSubscription' test.out

#- 239 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'L9LJxsnQ' \
    'LNN2zzzB' \
    --body '{"immediate": true, "reason": "5neg2mkr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CancelSubscription' test.out

#- 240 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'g5f0MfsC' \
    'yy1bKsUo' \
    --body '{"grantDays": 36, "reason": "EziLksu0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GrantDaysToSubscription' test.out

#- 241 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'tnU89lND' \
    '98q79iLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionBillingHistories' test.out

#- 242 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    '94eCnfSa' \
    'imtCO8fT' \
    --body '{"additionalData": {"cardSummary": "wcuO6XM4"}, "authorisedTime": "1996-12-16T00:00:00Z", "chargebackReversedTime": "1987-08-05T00:00:00Z", "chargebackTime": "1981-06-30T00:00:00Z", "chargedTime": "1986-09-12T00:00:00Z", "createdTime": "1985-07-28T00:00:00Z", "currency": {"currencyCode": "deJpEuT0", "currencySymbol": "u5Aqb919", "currencyType": "VIRTUAL", "decimals": 51, "namespace": "qNRDxLjW"}, "customParameters": {"g7dvOXfx": {}, "foqNbB37": {}, "Z79fGMv5": {}}, "extOrderNo": "laiMXADN", "extTxId": "sy9Nh1cZ", "extUserId": "cITO3GoA", "issuedAt": "1973-07-03T00:00:00Z", "metadata": {"AH2XwSXo": "OY3r0IBA", "SGd9dses": "85JYuo89", "YFNWZhlG": "hNhOBWyP"}, "namespace": "K0xmW9Gn", "nonceStr": "eTBoS4b8", "paymentMethod": "YaaQF0Bj", "paymentMethodFee": 65, "paymentOrderNo": "Qchydh3Y", "paymentProvider": "XSOLLA", "paymentProviderFee": 40, "paymentStationUrl": "7ZFvBpDA", "price": 99, "refundedTime": "1999-06-26T00:00:00Z", "salesTax": 32, "sandbox": true, "sku": "tGYTwF1z", "status": "REFUNDED", "statusReason": "AcgzcXOs", "subscriptionId": "Bt7mNjun", "subtotalPrice": 93, "targetNamespace": "IEsmYKT9", "targetUserId": "VP76O6Gz", "tax": 14, "totalPrice": 41, "totalTax": 19, "txEndTime": "1975-07-09T00:00:00Z", "type": "oWv5xttu", "userId": "McKGsTZ8", "vat": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ProcessUserSubscriptionNotification' test.out

#- 243 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'XeSrgwz1' \
    'krfqAyfx' \
    --body '{"count": 88, "orderNo": "RHupKAbA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AcquireUserTicket' test.out

#- 244 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'eSVhLYIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserCurrencyWallets' test.out

#- 245 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'gG8SGa0p' \
    'LmC15okj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ListUserCurrencyTransactions' test.out

#- 246 CheckWallet
eval_tap 0 246 'CheckWallet # SKIP deprecated' test.out

#- 247 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '0Z09uCph' \
    '4ufJVWKy' \
    --body '{"amount": 22, "expireAt": "1971-08-22T00:00:00Z", "origin": "System", "reason": "KyFZOTAj", "source": "PROMOTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CreditUserWallet' test.out

#- 248 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'TeG6rAU8' \
    'NiXh0MTv' \
    --body '{"amount": 1, "walletPlatform": "GooglePlay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'PayWithUserWallet' test.out

#- 249 GetUserWallet
eval_tap 0 249 'GetUserWallet # SKIP deprecated' test.out

#- 250 DebitUserWallet
eval_tap 0 250 'DebitUserWallet # SKIP deprecated' test.out

#- 251 DisableUserWallet
eval_tap 0 251 'DisableUserWallet # SKIP deprecated' test.out

#- 252 EnableUserWallet
eval_tap 0 252 'EnableUserWallet # SKIP deprecated' test.out

#- 253 ListUserWalletTransactions
eval_tap 0 253 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 254 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'ListViews' test.out

#- 255 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    '8v7ZN4J5' \
    --body '{"displayOrder": 50, "localizations": {"QFdk2qb8": {"description": "Fw4588OF", "localExt": {"xjiznMXZ": {}, "4WyLDb9s": {}, "kDrjovZK": {}}, "longDescription": "oOgAuLYN", "title": "KO7arHmR"}, "TtSCF11o": {"description": "EsTSWULZ", "localExt": {"2VckJ3pr": {}, "zUq42BX3": {}, "y90X3rnY": {}}, "longDescription": "mOYrdA3V", "title": "sRJ0Wp4p"}, "STqDB5uz": {"description": "rPFQ4bm8", "localExt": {"sVVf1K9f": {}, "KWga9x5b": {}, "M8UBAtzJ": {}}, "longDescription": "la88FKbG", "title": "uXLhLQ9W"}}, "name": "iNoLgGgc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CreateView' test.out

#- 256 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'pT0gbWDd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetView' test.out

#- 257 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'aqk6MNBU' \
    '2oSLLMKN' \
    --body '{"displayOrder": 71, "localizations": {"gfzYjZZM": {"description": "uBnAAmje", "localExt": {"wOxZnXhC": {}, "mx7ACGuW": {}, "IScT8mW6": {}}, "longDescription": "DsuviU5d", "title": "x2SqhsaZ"}, "1HQnTAZO": {"description": "o2MwmJxD", "localExt": {"jQIaXVsq": {}, "bYpBU1oy": {}, "3xyhIrfa": {}}, "longDescription": "UQltNXQF", "title": "0Ot1yJ2x"}, "HkrgbxK4": {"description": "dnem6T8z", "localExt": {"QdzHVdVX": {}, "KbzRfKDD": {}, "M2FTGfPX": {}}, "longDescription": "QGxgGcIA", "title": "bPclxx5M"}}, "name": "a1BFJ4av"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateView' test.out

#- 258 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'wQZH4jX6' \
    '3jFYXkEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'DeleteView' test.out

#- 259 QueryWallets
eval_tap 0 259 'QueryWallets # SKIP deprecated' test.out

#- 260 GetWallet
eval_tap 0 260 'GetWallet # SKIP deprecated' test.out

#- 261 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'd1P4f47M' \
    'MUZzLWAs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'SyncOrders' test.out

#- 262 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["e99679Dm", "ojmsgWoV", "5iz3ftvZ"], "apiKey": "QIDmX3Jb", "authoriseAsCapture": false, "blockedPaymentMethods": ["F8zkofzU", "PLHH4gvV", "AnJoneAp"], "clientKey": "EaWs2PyW", "dropInSettings": "YmSO7AE5", "liveEndpointUrlPrefix": "AHOQyG3f", "merchantAccount": "kehg0RFw", "notificationHmacKey": "8fhbN0Vc", "notificationPassword": "qbaarO68", "notificationUsername": "IBlKKR0V", "returnUrl": "RzvoD2zB", "settings": "QPZZgvCY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestAdyenConfig' test.out

#- 263 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "NsYitjIn", "privateKey": "ZCcz1XxS", "publicKey": "TtvzcF3i", "returnUrl": "drPwq0cP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'TestAliPayConfig' test.out

#- 264 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "ADdtSvt5", "secretKey": "FH17jtyP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestCheckoutConfig' test.out

#- 265 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'DebugMatchedPaymentMerchantConfig' test.out

#- 266 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "UPb553NK", "clientSecret": "AhXQh0hQ", "returnUrl": "K9mIiW0I", "webHookId": "khxfO6vL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestPayPalConfig' test.out

#- 267 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["hOMFNlUq", "m1DmKeHM", "VEjy3cg7"], "publishableKey": "dBzTfiGa", "secretKey": "490HYrRk", "webhookSecret": "PppInx75"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestStripeConfig' test.out

#- 268 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "uYAUivX5", "key": "SV9rAaIs", "mchid": "kXmYP2DY", "returnUrl": "JEmlZbS4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'TestWxPayConfig' test.out

#- 269 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "ovhXRwri", "flowCompletionUrl": "eoKZKeTu", "merchantId": 40, "projectId": 65, "projectSecretKey": "8RmAPzeB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfig' test.out

#- 270 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'vRTcegbu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentMerchantConfig' test.out

#- 271 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '5SDmR3t5' \
    --body '{"allowedPaymentMethods": ["TPx54SqH", "O0tmztq0", "7m9qpVPk"], "apiKey": "oMhspjux", "authoriseAsCapture": true, "blockedPaymentMethods": ["iZ3foNXD", "13wT846f", "Saz3RLe7"], "clientKey": "ceHi0TW4", "dropInSettings": "l6JIHcxu", "liveEndpointUrlPrefix": "BDBCiZFN", "merchantAccount": "t7jQMbF4", "notificationHmacKey": "2HUaO4NE", "notificationPassword": "mGMmKvRk", "notificationUsername": "NrZTKRp4", "returnUrl": "vU7bX44k", "settings": "61IMoq7G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateAdyenConfig' test.out

#- 272 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '1TAGenHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestAdyenConfigById' test.out

#- 273 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'atnkMs8v' \
    --body '{"appId": "UxNeApJS", "privateKey": "dcWzrYnG", "publicKey": "H62H970b", "returnUrl": "Rbznncwp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'UpdateAliPayConfig' test.out

#- 274 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'yQQxh1Vw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'TestAliPayConfigById' test.out

#- 275 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'ixdk5sGg' \
    --body '{"publicKey": "sR4SG2L6", "secretKey": "OOQ5xYam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdateCheckoutConfig' test.out

#- 276 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'DwlD2IcG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestCheckoutConfigById' test.out

#- 277 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'M8skdCHt' \
    --body '{"clientID": "X7Qq3AaU", "clientSecret": "kkwV21t3", "returnUrl": "g525Y22f", "webHookId": "5uWK3ST8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdatePayPalConfig' test.out

#- 278 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'hv1M9mJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestPayPalConfigById' test.out

#- 279 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'ZM62Pr1H' \
    --body '{"allowedPaymentMethodTypes": ["SFe6v9gx", "Bx6wd7eQ", "q73gRuiJ"], "publishableKey": "WX5AqfOX", "secretKey": "3A2UzNap", "webhookSecret": "fAhpdZA0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateStripeConfig' test.out

#- 280 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '3nEcjq1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestStripeConfigById' test.out

#- 281 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'N20q12cg' \
    --body '{"appId": "H1soZ3uX", "key": "Vc5GMT8V", "mchid": "Aj23oPeR", "returnUrl": "ctO1intF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdateWxPayConfig' test.out

#- 282 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'APYfKqcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'UpdateWxPayConfigCert' test.out

#- 283 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'zTjPaewx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfigById' test.out

#- 284 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'oJRBh02j' \
    --body '{"apiKey": "0qrpm7LC", "flowCompletionUrl": "r7mt3eSb", "merchantId": 84, "projectId": 89, "projectSecretKey": "gQDcuRoo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'UpdateXsollaConfig' test.out

#- 285 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '7R4PLrqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'TestXsollaConfigById' test.out

#- 286 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'eA5dm3vd' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateXsollaUIConfig' test.out

#- 287 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'QueryPaymentProviderConfig' test.out

#- 288 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "xaVZOF5d", "region": "6jOxJN8p", "sandboxTaxJarApiToken": "we6eS2CF", "specials": ["WALLET", "CHECKOUT", "ADYEN"], "taxJarApiToken": "7VRkhDrP", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'CreatePaymentProviderConfig' test.out

#- 289 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GetAggregatePaymentProviders' test.out

#- 290 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'DebugMatchedPaymentProviderConfig' test.out

#- 291 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'GetSpecialPaymentProviders' test.out

#- 292 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'HNZLtURF' \
    --body '{"aggregate": "ADYEN", "namespace": "RwIGtEQF", "region": "vyBCtXWq", "sandboxTaxJarApiToken": "NbSWlutk", "specials": ["PAYPAL", "WALLET", "CHECKOUT"], "taxJarApiToken": "6pNdp5ML", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentProviderConfig' test.out

#- 293 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'cGDYPaQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'DeletePaymentProviderConfig' test.out

#- 294 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetPaymentTaxConfig' test.out

#- 295 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "3yNNy2QO", "taxJarApiToken": "P8dyBlED", "taxJarEnabled": false, "taxJarProductCodesMapping": {"8CL1VqdJ": "23bHBzMX", "GEjl0jH5": "BXkaf6l1", "Oc044RTX": "lD7qsmsq"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'UpdatePaymentTaxConfig' test.out

#- 296 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'QsfRxDCe' \
    'T0R1oetB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'SyncPaymentOrders' test.out

#- 297 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRootCategories' test.out

#- 298 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'DownloadCategories' test.out

#- 299 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'qYwezJuK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetCategory' test.out

#- 300 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'IKxY5rQb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetChildCategories' test.out

#- 301 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    's1tZRI9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetDescendantCategories' test.out

#- 302 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicListCurrencies' test.out

#- 303 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'dZrLVLSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetItemByAppId' test.out

#- 304 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicQueryItems' test.out

#- 305 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'sTxvJg11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetItemBySku' test.out

#- 306 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'oFjEorm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicBulkGetItems' test.out

#- 307 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["QhrB4tQ7", "3wVOWVhD", "wE55FOES"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicValidateItemPurchaseCondition' test.out

#- 308 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'zefzJ6Fo' \
    'aBb5xRTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicSearchItems' test.out

#- 309 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'upU2nyNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetApp' test.out

#- 310 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'UIp4Wj0f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemDynamicData' test.out

#- 311 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '7PUh7Xct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetItem' test.out

#- 312 GetPaymentCustomization
eval_tap 0 312 'GetPaymentCustomization # SKIP deprecated' test.out

#- 313 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "t3kmYEXk", "paymentProvider": "CHECKOUT", "returnUrl": "BigGZ0KE", "ui": "OIIBrUys", "zipCode": "4FOStGO4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentUrl' test.out

#- 314 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'QGNae247' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetPaymentMethods' test.out

#- 315 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'XFd7TWYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUnpaidPaymentOrder' test.out

#- 316 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '0NkYeY5h' \
    --body '{"token": "1pzjy4ZI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'Pay' test.out

#- 317 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'FnXe4zoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckPaymentOrderPaidStatus' test.out

#- 318 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    'rlzBC84m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentPublicConfig' test.out

#- 319 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'A5BO4jyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetQRCode' test.out

#- 320 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'OPVthVCP' \
    'CZxZjpkb' \
    'CHECKOUT' \
    'pIfErngA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicNormalizePaymentReturnUrl' test.out

#- 321 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '7pIOII7o' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetPaymentTaxValue' test.out

#- 322 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '03FHD5Ou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'GetRewardByCode' test.out

#- 323 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'QueryRewards1' test.out

#- 324 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'ANixEzs5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GetReward1' test.out

#- 325 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicListStores' test.out

#- 326 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicExistsAnyMyActiveEntitlement' test.out

#- 327 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'klnlc8Oa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '4mkhGRnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 329 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'MYLTua0t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 330 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetEntitlementOwnershipToken' test.out

#- 331 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'ptYgW1N2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyWallet' test.out

#- 332 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'Ykca2usX' \
    --body '{"epicGamesJwtToken": "jzbQcL6L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGameDLC' test.out

#- 333 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'WzPCLnpQ' \
    --body '{"serviceLabel": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicSyncPsnDlcInventory' test.out

#- 334 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'UOiIBjoX' \
    --body '{"serviceLabels": [97, 35, 60]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 335 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'vkSqwX1O' \
    --body '{"appId": "i8Kj7CKQ", "steamId": "kg6ao6gu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'SyncSteamDLC' test.out

#- 336 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'K3Hm3lcv' \
    --body '{"xstsToken": "tqPfnL5A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxDLC' test.out

#- 337 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'EJOBk9tG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserEntitlements' test.out

#- 338 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'oN5xdnrL' \
    'pDOGNYT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserAppEntitlementByAppId' test.out

#- 339 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'mLlxhadD' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserEntitlementsByAppType' test.out

#- 340 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'dnE6F4j7' \
    'B2v6PxFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserEntitlementByItemId' test.out

#- 341 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'EfzV7JJS' \
    'Qg2sk1KD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementBySku' test.out

#- 342 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'DaXRzz5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyUserActiveEntitlement' test.out

#- 343 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '40qH7Q3W' \
    'e8O9TZ9f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'llX0AXHl' \
    'SNJtqRZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 345 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'eE81dOUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 346 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '3ezPoUt7' \
    'Sz3ud4Zp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 347 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'LgA8AR7I' \
    '7HYvKJfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlement' test.out

#- 348 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'VTkComRk' \
    'AuHm3WPN' \
    --body '{"options": ["kMANcteY", "Gvvs2kjq", "S9RM2MwY"], "requestId": "YrSun0Qs", "useCount": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicConsumeUserEntitlement' test.out

#- 349 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'ZpximubC' \
    --body '{"code": "GbZcvMl0", "language": "tVBo_MT", "region": "HqGW83Cz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicRedeemCode' test.out

#- 350 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '7xOZB72I' \
    --body '{"excludeOldTransactions": false, "language": "mQ_TbCH_Cz", "productId": "oCWIAkyr", "receiptData": "bk7qJKAa", "region": "nnXDbYae", "transactionId": "5QQHdYjy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicFulfillAppleIAPItem' test.out

#- 351 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    '3odemX1w' \
    --body '{"epicGamesJwtToken": "e5zTo5Ne"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'SyncEpicGamesInventory' test.out

#- 352 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '4Ftf7Xbc' \
    --body '{"autoAck": false, "language": "zzPP_wrkk_qF", "orderId": "wMPtrMrP", "packageName": "GLzaYsqR", "productId": "Jjgmo9vE", "purchaseTime": 81, "purchaseToken": "d5sXN5Vz", "region": "VMJduAHq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicFulfillGoogleIAPItem' test.out

#- 353 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'doZQjzd3' \
    --body '{"currencyCode": "Nt2koI6g", "price": 0.546695305190137, "productId": "BK9ocoek", "serviceLabel": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicReconcilePlayStationStore' test.out

#- 354 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'G8e49716' \
    --body '{"currencyCode": "IxAcXMNP", "price": 0.04756342861999319, "productId": "R4D1LchP", "serviceLabels": [37, 54, 23]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 355 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'mHMSrrTt' \
    --body '{"appId": "6ezOCk9Z", "language": "pTv-bzpa_268", "region": "iheMMV3p", "stadiaPlayerId": "AgpecLad"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncStadiaEntitlement' test.out

#- 356 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'SeBFSyIR' \
    --body '{"appId": "yhUiG4QB", "currencyCode": "fd7v4Adl", "language": "GYE", "price": 0.3355466153976293, "productId": "SxoEuT0Y", "region": "nEd6l0fd", "steamId": "7eM1YMJW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'SyncSteamInventory' test.out

#- 357 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'NxXutc40' \
    --body '{"gameId": "EVQCdChi", "language": "BVi-734", "region": "DCQNu938"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'SyncTwitchDropsEntitlement' test.out

#- 358 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    '7Cnk4Bda' \
    --body '{"currencyCode": "cNbrT72S", "price": 0.355513326364154, "productId": "Pk8cc1Qv", "xstsToken": "7pe7F2f2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'SyncXboxInventory' test.out

#- 359 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'MEk3h6bP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicQueryUserOrders' test.out

#- 360 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'zwi9ppYH' \
    --body '{"currencyCode": "0wui2Eqw", "discountedPrice": 73, "ext": {"FnXiz4pE": {}, "K0ZRdk87": {}, "ByECAKtp": {}}, "itemId": "Hr3J3yAO", "language": "OS", "price": 11, "quantity": 56, "region": "vrUOmGJ9", "returnUrl": "MqhG5EpR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicCreateUserOrder' test.out

#- 361 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'KodVTZWJ' \
    'F2ngveW3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserOrder' test.out

#- 362 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'Z8lCrmkc' \
    'Ru9kEjk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicCancelUserOrder' test.out

#- 363 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'oZ2wzUeX' \
    'NA6MWIwY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserOrderHistories' test.out

#- 364 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'OQuiqAQS' \
    'lTfeIQtU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicDownloadUserOrderReceipt' test.out

#- 365 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'vao7uLWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentAccounts' test.out

#- 366 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'DXai7zwm' \
    'paypal' \
    'Qtsx9ydd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicDeletePaymentAccount' test.out

#- 367 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'ohxhRhgE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicListActiveSections' test.out

#- 368 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'lp7Ol6VL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicQueryUserSubscriptions' test.out

#- 369 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'zoYghlQX' \
    --body '{"currencyCode": "xi8TiADx", "itemId": "2jNKNv1s", "language": "FX", "region": "fXJtYF53", "returnUrl": "ABtzrcE1", "source": "7ygm2SCV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicSubscribeSubscription' test.out

#- 370 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'Qw5UjrRR' \
    'UWtl8UvJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 371 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'SD4CmdWc' \
    'P1jgThl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscription' test.out

#- 372 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'fClKuK4p' \
    'AiF0c4zQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicChangeSubscriptionBillingAccount' test.out

#- 373 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'WnkFtsDF' \
    'kXdUvet4' \
    --body '{"immediate": true, "reason": "rNskYLDS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicCancelSubscription' test.out

#- 374 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'XbZEMU29' \
    'XpG9RuFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscriptionBillingHistories' test.out

#- 375 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'JBvh0i8f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicListViews' test.out

#- 376 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'OoDnoYLG' \
    'MCqwBjl6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetWallet' test.out

#- 377 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'uLgOmsPK' \
    'qnd4Wfjx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicListUserWalletTransactions' test.out

#- 378 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'QueryItems1' test.out

#- 379 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'ImportStore1' test.out

#- 380 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    't8zlHcFD' \
    --body '{"itemIds": ["yjO9dtL3", "roHBq5Nv", "UMAPd756"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
