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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "K2TIXQcX", "appType": "SOFTWARE", "baseAppId": "BGRHUIJG", "boothName": "4h1k597Y", "boundItemIds": ["PGGQEalC", "IU9Cdueu", "FnlhEgRW"], "categoryPath": "6LCGt1kX", "clazz": "3eq8ejkf", "createdAt": "1982-12-02T00:00:00Z", "description": "k4jyLxpk", "displayOrder": 8, "entitlementType": "CONSUMABLE", "ext": {"nXE3mBYh": {}, "4cSsU6Og": {}, "uijzD3E7": {}}, "features": ["swZTtHVw", "f9kTxxVQ", "468GwsUr"], "fresh": false, "images": [{"as": "cinSqScj", "caption": "X9n706pu", "height": 51, "imageUrl": "vUCd3bPl", "smallImageUrl": "SjZAPc0U", "width": 81}, {"as": "XZoZttbV", "caption": "RMOEocRd", "height": 14, "imageUrl": "Ryyckcht", "smallImageUrl": "tLOImX70", "width": 78}, {"as": "XBdQfTC3", "caption": "EqMLgoCi", "height": 98, "imageUrl": "ZGDuMQ1X", "smallImageUrl": "FHLZzNQ4", "width": 94}], "itemId": "sVaVWb7U", "itemIds": ["V3WumNC2", "G5fCtmFc", "EH1aIRgv"], "itemQty": {"AlSudziE": 98, "szrKNxhD": 70, "QJ1UNriz": 44}, "itemType": "SUBSCRIPTION", "language": "b2idfLT8", "listable": false, "localExt": {"wRJYAGXO": {}, "PfBUYbS9": {}, "uq4akVL8": {}}, "longDescription": "ugBPGrGP", "lootBoxConfig": {"rewardCount": 36, "rewards": [{"lootBoxItems": [{"count": 46, "itemId": "JNaqM9vp", "itemSku": "0KvRM1Ju", "itemType": "QrVG7qxQ"}, {"count": 30, "itemId": "siHXX6al", "itemSku": "YIRPVoiH", "itemType": "JDwKcm3T"}, {"count": 71, "itemId": "6RAOLqA1", "itemSku": "ltVAPRfo", "itemType": "3MCZKkKo"}], "name": "TPGRZWHG", "odds": 0.321398982273861, "type": "REWARD_GROUP", "weight": 87}, {"lootBoxItems": [{"count": 58, "itemId": "0auPEfEA", "itemSku": "yoUg5xCi", "itemType": "yXYJpaWl"}, {"count": 80, "itemId": "34zgM5ys", "itemSku": "ejXxwIVy", "itemType": "KsPEmcwU"}, {"count": 12, "itemId": "VFxmHPOo", "itemSku": "h8srk8tC", "itemType": "gbmwQnNf"}], "name": "UJbWrAjs", "odds": 0.4914982240044805, "type": "REWARD", "weight": 7}, {"lootBoxItems": [{"count": 70, "itemId": "lKqB2o72", "itemSku": "OT1sXsXz", "itemType": "feSMNxCD"}, {"count": 70, "itemId": "ebcgdHTB", "itemSku": "918gqH1N", "itemType": "eReNfoo7"}, {"count": 46, "itemId": "ZtJcZzE3", "itemSku": "0RdipZCm", "itemType": "OhkzTTgG"}], "name": "4eTQuXW6", "odds": 0.8197767551635394, "type": "REWARD_GROUP", "weight": 25}], "rollFunction": "DEFAULT"}, "maxCount": 41, "maxCountPerUser": 55, "name": "rSm465kv", "namespace": "eBYnFRBd", "optionBoxConfig": {"boxItems": [{"count": 32, "itemId": "DUTb53K8", "itemSku": "rDhevsEp", "itemType": "JQXWCVfj"}, {"count": 58, "itemId": "1NygqKZe", "itemSku": "stVtlzqq", "itemType": "HbWPtzoF"}, {"count": 69, "itemId": "pjcINGO3", "itemSku": "xpSQh4MM", "itemType": "EtuxBdAb"}]}, "purchasable": false, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 61, "comparison": "isLessThanOrEqual", "name": "De7WrcZr", "predicateType": "SeasonPassPredicate", "value": "vksNvTEO", "values": ["HkFIAGrp", "NWZcpHci", "bDOdhnoW"]}, {"anyOf": 56, "comparison": "isLessThanOrEqual", "name": "xr15T1Uh", "predicateType": "EntitlementPredicate", "value": "7JvYsa3h", "values": ["IJveCD8i", "sTKeCnmN", "4PQzukSp"]}, {"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "JuX3TIld", "predicateType": "SeasonPassPredicate", "value": "A5Ge6CHu", "values": ["hBA9tkqO", "51QaBIJD", "xGZ4TAuc"]}]}, {"operator": "and", "predicates": [{"anyOf": 77, "comparison": "isGreaterThan", "name": "Ff5oxlvh", "predicateType": "EntitlementPredicate", "value": "pSkVrTSf", "values": ["yL6lxflz", "bChPzLbq", "uqgbb30o"]}, {"anyOf": 85, "comparison": "excludes", "name": "X95pETWZ", "predicateType": "EntitlementPredicate", "value": "9n3IWx28", "values": ["Kmkn4H1V", "f0xd1Hg2", "kajPnV3K"]}, {"anyOf": 30, "comparison": "is", "name": "0D0Y30Li", "predicateType": "SeasonTierPredicate", "value": "HTqx0jVq", "values": ["opi57jC0", "SmIjuxSZ", "jutpZgUh"]}]}, {"operator": "and", "predicates": [{"anyOf": 48, "comparison": "isLessThanOrEqual", "name": "XUrVwSao", "predicateType": "SeasonPassPredicate", "value": "7YWq2Jo9", "values": ["8wk3FHXq", "n5VmxS4N", "XgnIQFWF"]}, {"anyOf": 22, "comparison": "includes", "name": "I8gGAdr9", "predicateType": "EntitlementPredicate", "value": "afPvtjqJ", "values": ["7daL7O3n", "vUBYQ4oD", "XjmZS9rX"]}, {"anyOf": 21, "comparison": "isLessThan", "name": "FwZZ5R29", "predicateType": "SeasonTierPredicate", "value": "zIYLI98e", "values": ["EfnbhZHV", "MwLHQUuw", "oAMfLENU"]}]}]}, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 46, "fixedTrialCycles": 32, "graceDays": 32}, "region": "g2GcR9Mt", "regionData": [{"currencyCode": "lyBveVZP", "currencyNamespace": "MkipHyqI", "currencyType": "REAL", "discountAmount": 32, "discountExpireAt": "1991-11-05T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1973-11-28T00:00:00Z", "discountedPrice": 48, "expireAt": "1995-08-08T00:00:00Z", "price": 50, "purchaseAt": "1976-04-22T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Y2xjQELm", "currencyNamespace": "AHtrYBpS", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1996-10-31T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1988-06-21T00:00:00Z", "discountedPrice": 91, "expireAt": "1977-10-08T00:00:00Z", "price": 26, "purchaseAt": "1977-03-16T00:00:00Z", "trialPrice": 75}, {"currencyCode": "s0EpeUCM", "currencyNamespace": "yrs7iJLf", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1971-01-03T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1971-04-09T00:00:00Z", "discountedPrice": 98, "expireAt": "1994-07-20T00:00:00Z", "price": 66, "purchaseAt": "1988-01-29T00:00:00Z", "trialPrice": 28}], "seasonType": "TIER", "sku": "DV7KKSts", "stackable": true, "status": "INACTIVE", "tags": ["7oQNPTKE", "mxst7bhp", "lnO1N6P7"], "targetCurrencyCode": "E3huDLjO", "targetItemId": "uFYBAILn", "targetNamespace": "W9wqAF6M", "thumbnailUrl": "zLygyStt", "title": "gU9TXLod", "updatedAt": "1995-07-29T00:00:00Z", "useCount": 2}, "namespace": "eWwnanE2", "order": {"currency": {"currencyCode": "WBjuvuYE", "currencySymbol": "kbu8XTP5", "currencyType": "REAL", "decimals": 18, "namespace": "iPqiuUer"}, "ext": {"QFqyZWM7": {}, "s2O5luwz": {}, "HLLH6qBA": {}}, "free": true}, "source": "PROMOTION"}, "script": "HwoO0F5d", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'wqevxfSh' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'HxhKi4qb' --body '{"grantDays": "LpOPYgvP"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'bHt8tvqm' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'X2E8CPGn' --body '{"grantDays": "3q7GQ9go"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "lVJEMzMo", "dryRun": true, "fulfillmentUrl": "BMmsvjyM", "itemType": "SEASON", "purchaseConditionUrl": "dZvti4hy"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'OPTIONBOX' --login_with_auth "Bearer foo"
platform-get-item-type-config 'i3MhV2Jq' --login_with_auth "Bearer foo"
platform-update-item-type-config 'uOOw4yP9' --body '{"clazz": "Po1sWUVO", "dryRun": true, "fulfillmentUrl": "nGN9xngr", "purchaseConditionUrl": "XOActuOQ"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'X188Ynm5' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "A2QnCBVf", "items": [{"extraSubscriptionDays": 68, "itemId": "E883sVef", "itemName": "YLve1poc", "quantity": 80}, {"extraSubscriptionDays": 82, "itemId": "AxCw8zv1", "itemName": "hwenli41", "quantity": 74}, {"extraSubscriptionDays": 22, "itemId": "El4KNucV", "itemName": "v02pKsHm", "quantity": 10}], "maxRedeemCountPerCampaignPerUser": 34, "maxRedeemCountPerCode": 71, "maxRedeemCountPerCodePerUser": 59, "maxSaleCount": 8, "name": "57952NNl", "redeemEnd": "1985-08-13T00:00:00Z", "redeemStart": "1976-09-04T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["3vRXuvWs", "DCzIQgyz", "E66VxK8J"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'EhHQWG9d' --login_with_auth "Bearer foo"
platform-update-campaign '02f1g8pH' --body '{"description": "GnvfEuIc", "items": [{"extraSubscriptionDays": 7, "itemId": "5sCWx3Go", "itemName": "op8weEFf", "quantity": 98}, {"extraSubscriptionDays": 49, "itemId": "HDbXyTQf", "itemName": "ltXMqj1S", "quantity": 58}, {"extraSubscriptionDays": 25, "itemId": "PKRa1bOW", "itemName": "Jj2BUtSJ", "quantity": 31}], "maxRedeemCountPerCampaignPerUser": 0, "maxRedeemCountPerCode": 4, "maxRedeemCountPerCodePerUser": 57, "maxSaleCount": 49, "name": "73m1bcWb", "redeemEnd": "1995-08-11T00:00:00Z", "redeemStart": "1996-10-05T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["6yKGJE3A", "xi20VDQI", "M0LoDYE5"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'jfPmJUfs' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category 'AztmoS9n' --body '{"categoryPath": "K8mpiK99", "localizationDisplayNames": {"dBwsSBhu": "TsmssXyP", "ZGgipmxU": "06U90uiC", "wIwZLO2x": "BGcQZZXM"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'iP5YC3N9' --login_with_auth "Bearer foo"
platform-update-category 'eLoq8N6F' 'VxR9dwQY' --body '{"localizationDisplayNames": {"GWwMCoOC": "ZoGn9Bn2", "JZkRvsU8": "Nct2YAkP", "3SmuMrfy": "Kxz1BHjf"}}' --login_with_auth "Bearer foo"
platform-delete-category 'DhHa5TCZ' 'ycFXCgrR' --login_with_auth "Bearer foo"
platform-get-child-categories 'PT6djeML' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'vwqasYkP' --login_with_auth "Bearer foo"
platform-query-codes '32FFgr0q' --login_with_auth "Bearer foo"
platform-create-codes 'wMwWsDLc' --body '{"quantity": 41}' --login_with_auth "Bearer foo"
platform-download 'JaB3uFsC' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'kvj6fqI0' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'HRIb1Cq2' --login_with_auth "Bearer foo"
platform-query-redeem-history 'mByLVLtp' --login_with_auth "Bearer foo"
platform-get-code 'uXr5hrws' --login_with_auth "Bearer foo"
platform-disable-code '2wv8JiSA' --login_with_auth "Bearer foo"
platform-enable-code '9WeAWibS' --login_with_auth "Bearer foo"
platform-get-service-plugin-config --login_with_auth "Bearer foo"
platform-update-service-plugin-config --body '{"grpcServerAddress": "u5dfYjwn"}' --login_with_auth "Bearer foo"
platform-delete-service-plugin-config --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "rj33T1NA", "currencySymbol": "Fkbnu9Dr", "currencyType": "REAL", "decimals": 65, "localizationDescriptions": {"5UbvjdI1": "w3haYcZH", "NUy5ppt0": "Tdt5uyHd", "mC4EvIrE": "O6MnaEq5"}}' --login_with_auth "Bearer foo"
platform-update-currency 'cfvamTyA' --body '{"localizationDescriptions": {"mBkenhwj": "DYJCkQxE", "z08uPsN4": "VqwwknPk", "uWt9qg34": "Kns8jbhX"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'telMUQxp' --login_with_auth "Bearer foo"
platform-get-currency-config 'HRJkmpCi' --login_with_auth "Bearer foo"
platform-get-currency-summary 'nFTxCwPs' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "fr5bsuhr", "rewards": [{"currency": {"currencyCode": "bTiVloQm", "namespace": "bVaMEQXz"}, "item": {"itemId": "CM3ZH17W", "itemSku": "hLmp1yoc", "itemType": "KOR7nF1B"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "0OqMVi5r", "namespace": "47SNx5Ft"}, "item": {"itemId": "poYrZNoX", "itemSku": "zzDBxXAp", "itemType": "YtrJLkoe"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "BIpyXkH4", "namespace": "t4XVtwqz"}, "item": {"itemId": "gscpa93l", "itemSku": "sA2AJwHK", "itemType": "2ZsptGHn"}, "quantity": 2, "type": "CURRENCY"}]}, {"id": "yGpoFpQJ", "rewards": [{"currency": {"currencyCode": "hFibLDo6", "namespace": "9XPOHVVu"}, "item": {"itemId": "ClRflXHA", "itemSku": "2A73gTC7", "itemType": "cb4CD9VH"}, "quantity": 43, "type": "CURRENCY"}, {"currency": {"currencyCode": "P0bGowfa", "namespace": "XAn6uhtV"}, "item": {"itemId": "JtFHRxS6", "itemSku": "n5pEQUgz", "itemType": "VwJjrvZa"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "ODFR1FTP", "namespace": "Q4czY71O"}, "item": {"itemId": "B7QB0OL3", "itemSku": "v6JfNxTB", "itemType": "hVMpoStW"}, "quantity": 10, "type": "CURRENCY"}]}, {"id": "HAXdOupy", "rewards": [{"currency": {"currencyCode": "HGeK256e", "namespace": "AlPEmrzQ"}, "item": {"itemId": "zfW1790t", "itemSku": "vix1ldGF", "itemType": "Mmgu7Plr"}, "quantity": 37, "type": "ITEM"}, {"currency": {"currencyCode": "syjaVzI7", "namespace": "F9xlwWZw"}, "item": {"itemId": "RRD2fezB", "itemSku": "W9Bb7kNC", "itemType": "s12AV9VA"}, "quantity": 48, "type": "ITEM"}, {"currency": {"currencyCode": "j2NWybnc", "namespace": "lx1cKhv1"}, "item": {"itemId": "TcsOXgQj", "itemSku": "KIgR0J5Y", "itemType": "hHl5dL7m"}, "quantity": 85, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"VLoDlTLh": "uq78XgOG", "G6MVJyz2": "PRsmfOIs", "JQfDlXF8": "WFbvdTot"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"Fpdavtpl": "S9I28ksO", "1euWI770": "4dEMF8nj", "rNuFVKwC": "KVCfXD4o"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"5udB2JDE": "q3cvfcXx", "Kzifjf4x": "wGQQLLyN", "PvxQbUDa": "9nNkHMey"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'cs1EWcXG' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "j8xfZEbA", "password": "SAWxUbIe"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "d2EktM6R"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "4gpCqcwx", "serviceAccountId": "zUbOypjF"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "8wX0WMP5", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"UA74Zyft": "4j5ntAFl", "g9YtcPPB": "NXf1vybe", "BcpDMzre": "HMBWeQ0H"}}, {"itemIdentity": "FyXG7QvN", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"E5Y22XH8": "srqCpFwK", "Y00ryc7n": "KB0dI17P", "vgOLylRW": "cOtPKzjm"}}, {"itemIdentity": "pYHtqUIW", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"pPN0MlHq": "3bzbn3H2", "EF74v9yh": "vs11yhkC", "Sba3rnNE": "EEIHyALH"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "IeAM2Pf6"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "48QD7ysx", "publisherAuthenticationKey": "zL0L2VhP"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "VkTNJAb9", "clientSecret": "bnxmcy9h", "organizationId": "6Xz4Lbyl"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "nkoMWXjb"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'RJci4Nrh' 'v2L7M5zi' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'DE3AfYrM' 'V89wrCtE' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'maUPcLr8' --body '{"categoryPath": "6rrAHz9w", "targetItemId": "OIyu5ARz", "targetNamespace": "LDBhYD0a"}' --login_with_auth "Bearer foo"
platform-create-item 'kHWe74hM' --body '{"appId": "ePInyiSO", "appType": "DEMO", "baseAppId": "0feIGjCi", "boothName": "VmXJhaBR", "categoryPath": "LCis7TyR", "clazz": "ILz24DB0", "displayOrder": 27, "entitlementType": "CONSUMABLE", "ext": {"ed8CkrMW": {}, "ezaeUJSS": {}, "c3VwjQYG": {}}, "features": ["XPfkDldc", "BfZLgTjc", "U2MIpnmd"], "images": [{"as": "57JFx3ec", "caption": "wWXCF8MZ", "height": 7, "imageUrl": "jjLE960I", "smallImageUrl": "3zSw3H4O", "width": 53}, {"as": "9Ss6Pzg1", "caption": "9BhYPYfy", "height": 62, "imageUrl": "e7Ub5bVn", "smallImageUrl": "Goosdlqy", "width": 71}, {"as": "c7hWRZlG", "caption": "aeZuvt0B", "height": 92, "imageUrl": "zhGFzO3u", "smallImageUrl": "ndfj3imZ", "width": 75}], "itemIds": ["bD4yOMNk", "Saiu8Aiy", "1skTY1MV"], "itemQty": {"ErOwGXM9": 77, "aF93eyuW": 72, "4gw0WE7F": 13}, "itemType": "BUNDLE", "listable": true, "localizations": {"N3HGe6lW": {"description": "Wfv6wiLW", "localExt": {"4FXm9RSm": {}, "Dlj6ODwl": {}, "5GwEX7z5": {}}, "longDescription": "SYIExz5V", "title": "JfpUUWln"}, "pttknAoF": {"description": "1her4tYv", "localExt": {"zK0nW4NZ": {}, "bmoQiREw": {}, "BWCwFKeL": {}}, "longDescription": "RugaLPK3", "title": "1XEy585t"}, "AA53nxii": {"description": "gAqnZI3S", "localExt": {"3KELehc4": {}, "2qS07mFT": {}, "xHg9UNEm": {}}, "longDescription": "ZUsLzfpb", "title": "IsPyj35c"}}, "lootBoxConfig": {"rewardCount": 14, "rewards": [{"lootBoxItems": [{"count": 100, "itemId": "0isipP9N", "itemSku": "ZmczsFBH", "itemType": "PneNL9ZB"}, {"count": 63, "itemId": "VpydRa7r", "itemSku": "gPcLR9fa", "itemType": "gx1je6wV"}, {"count": 83, "itemId": "GnAfLZ1K", "itemSku": "A5MP2zeF", "itemType": "TgIpd9DG"}], "name": "PZaR4UU3", "odds": 0.6189040249238912, "type": "PROBABILITY_GROUP", "weight": 69}, {"lootBoxItems": [{"count": 98, "itemId": "6WmT8eIN", "itemSku": "WI8GlfGX", "itemType": "1OQSS980"}, {"count": 11, "itemId": "W726ZvjA", "itemSku": "do212ylx", "itemType": "m2bFUf0G"}, {"count": 98, "itemId": "S19XnskA", "itemSku": "6svFiCiM", "itemType": "dCoRRFo4"}], "name": "YGqshMgb", "odds": 0.629767014640711, "type": "PROBABILITY_GROUP", "weight": 51}, {"lootBoxItems": [{"count": 55, "itemId": "nKnerbK7", "itemSku": "YQ4gU5gx", "itemType": "MGMXTYl0"}, {"count": 72, "itemId": "SLeAe9DD", "itemSku": "fTXZQsHQ", "itemType": "VEBnBAc6"}, {"count": 98, "itemId": "YVam8MHC", "itemSku": "y6r3Oqm4", "itemType": "WpIbz5M4"}], "name": "LxGUP8Sk", "odds": 0.34207323219237984, "type": "REWARD", "weight": 64}], "rollFunction": "CUSTOM"}, "maxCount": 80, "maxCountPerUser": 40, "name": "uZGaetiM", "optionBoxConfig": {"boxItems": [{"count": 45, "itemId": "ahP8Rzni", "itemSku": "hXikuQop", "itemType": "yyjJDgwr"}, {"count": 89, "itemId": "SMIq0YnO", "itemSku": "REzvSNo4", "itemType": "IpTmuP5u"}, {"count": 8, "itemId": "VzquwmRo", "itemSku": "TxRoYpUf", "itemType": "9HPcvPF7"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 15, "fixedTrialCycles": 75, "graceDays": 94}, "regionData": {"XBMTUf0k": [{"currencyCode": "WDOdpjJI", "currencyNamespace": "NHOTITfa", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1977-06-22T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1986-07-15T00:00:00Z", "discountedPrice": 77, "expireAt": "1986-01-13T00:00:00Z", "price": 25, "purchaseAt": "1982-08-26T00:00:00Z", "trialPrice": 50}, {"currencyCode": "Kptd0s2h", "currencyNamespace": "UoRW1Neu", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1986-11-01T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1998-05-04T00:00:00Z", "discountedPrice": 30, "expireAt": "1994-10-03T00:00:00Z", "price": 89, "purchaseAt": "1992-08-01T00:00:00Z", "trialPrice": 14}, {"currencyCode": "OvsOR6Mh", "currencyNamespace": "Yl20D6Qu", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1987-11-24T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1972-03-19T00:00:00Z", "discountedPrice": 96, "expireAt": "1994-02-13T00:00:00Z", "price": 19, "purchaseAt": "1974-01-04T00:00:00Z", "trialPrice": 45}], "zQMxyoAR": [{"currencyCode": "3WPOT2nw", "currencyNamespace": "bwuQcHLb", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1973-09-26T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1996-04-11T00:00:00Z", "discountedPrice": 55, "expireAt": "1992-10-22T00:00:00Z", "price": 44, "purchaseAt": "1981-03-31T00:00:00Z", "trialPrice": 30}, {"currencyCode": "kopt2LAt", "currencyNamespace": "rd6pzZEt", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1989-03-29T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1979-11-05T00:00:00Z", "discountedPrice": 28, "expireAt": "1974-07-13T00:00:00Z", "price": 49, "purchaseAt": "1971-02-11T00:00:00Z", "trialPrice": 43}, {"currencyCode": "hfAmfh3j", "currencyNamespace": "Ty34O99G", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1981-04-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1975-08-22T00:00:00Z", "discountedPrice": 16, "expireAt": "1990-12-18T00:00:00Z", "price": 53, "purchaseAt": "1982-03-06T00:00:00Z", "trialPrice": 17}], "r8Kc0ktq": [{"currencyCode": "5mKFGXvb", "currencyNamespace": "FryLF2zv", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-10-28T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1993-05-26T00:00:00Z", "discountedPrice": 3, "expireAt": "1985-08-31T00:00:00Z", "price": 75, "purchaseAt": "1982-02-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "hx2Eqpz9", "currencyNamespace": "gF6yigMZ", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1981-10-31T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1981-12-20T00:00:00Z", "discountedPrice": 97, "expireAt": "1973-03-19T00:00:00Z", "price": 37, "purchaseAt": "1972-11-20T00:00:00Z", "trialPrice": 78}, {"currencyCode": "dWwZLu6E", "currencyNamespace": "f80igMGu", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1993-10-26T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1976-12-02T00:00:00Z", "discountedPrice": 56, "expireAt": "1986-09-03T00:00:00Z", "price": 87, "purchaseAt": "1988-06-23T00:00:00Z", "trialPrice": 49}]}, "seasonType": "TIER", "sku": "2MYLT166", "stackable": false, "status": "ACTIVE", "tags": ["8v8MWMFg", "UMgxx13P", "W5idnXDg"], "targetCurrencyCode": "eWgnCCAX", "targetNamespace": "vTJ0mzAb", "thumbnailUrl": "ELPD5FMh", "useCount": 56}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id '3R48P71H' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'HWcuwVjV' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'jxyylmP7' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'uiSPI8Yq' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'DVnwUzW1' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'WYf8nFxM' --body '{"itemIds": ["h18iVNLS", "W2iWUARU", "bLkllq7k"]}' --login_with_auth "Bearer foo"
platform-search-items 'EZIIUfAK' 'dFeVzH7f' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '0FxA5TJW' --login_with_auth "Bearer foo"
platform-update-item 'Bjps7xK5' 'Bln4dAdG' --body '{"appId": "dUOMrEq2", "appType": "SOFTWARE", "baseAppId": "VjJkOfR3", "boothName": "tQKhvdQv", "categoryPath": "BpimMNcf", "clazz": "rkc6fOVP", "displayOrder": 40, "entitlementType": "DURABLE", "ext": {"gXMLJ5PE": {}, "KcQRQBSp": {}, "jtdiyeLX": {}}, "features": ["ISj6RWru", "e0VyMUVu", "NywuF1Gq"], "images": [{"as": "qz7655Az", "caption": "fZFtZV4X", "height": 62, "imageUrl": "Uvv2x0Hx", "smallImageUrl": "UZGMI1md", "width": 91}, {"as": "AVDDMLdd", "caption": "q4JmCbp5", "height": 10, "imageUrl": "gLMh3odA", "smallImageUrl": "YecCF9Pd", "width": 57}, {"as": "k9oDE8sV", "caption": "EgS9Bb8C", "height": 92, "imageUrl": "2AilscgC", "smallImageUrl": "4MgsPtEa", "width": 82}], "itemIds": ["eWp03dCn", "USOBLz3n", "Lilrvih9"], "itemQty": {"gNsfmv8N": 32, "R2jwnEqv": 40, "H97FUChw": 98}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"HBLn76it": {"description": "jOqp7Njz", "localExt": {"BpOcc0E6": {}, "eh6NvNsH": {}, "nKZ7LNnl": {}}, "longDescription": "UlmVKDnQ", "title": "OrA5KZVi"}, "9ewpZuxc": {"description": "Csi6VxGA", "localExt": {"114flE3T": {}, "q2jwY6n3": {}, "K03Trbth": {}}, "longDescription": "P3Vx1VkQ", "title": "ZgllhIfT"}, "67CDSlVY": {"description": "MllcwDcP", "localExt": {"NpABd4bn": {}, "RVDZagmP": {}, "DiDGE9Zx": {}}, "longDescription": "gKBwgguP", "title": "kiU2ijTC"}}, "lootBoxConfig": {"rewardCount": 70, "rewards": [{"lootBoxItems": [{"count": 25, "itemId": "ixxpM3Hc", "itemSku": "yfMEwH2J", "itemType": "x7NtARAj"}, {"count": 97, "itemId": "JJ8iDL0i", "itemSku": "9JVhQGm2", "itemType": "uWLbeivi"}, {"count": 40, "itemId": "H482I3no", "itemSku": "Fz8iECNv", "itemType": "yt3atEnb"}], "name": "k0LSBThn", "odds": 0.0655696167334926, "type": "PROBABILITY_GROUP", "weight": 38}, {"lootBoxItems": [{"count": 4, "itemId": "wIcBKstu", "itemSku": "RKKwseKa", "itemType": "NRYjHBpw"}, {"count": 22, "itemId": "LKgBT33m", "itemSku": "obzLpI0m", "itemType": "XjbIcg1S"}, {"count": 77, "itemId": "ojhLLnkh", "itemSku": "iJvDS7gG", "itemType": "cSzZZzLu"}], "name": "RcVQtzwQ", "odds": 0.4752038074168262, "type": "REWARD", "weight": 15}, {"lootBoxItems": [{"count": 22, "itemId": "Bju0aqCs", "itemSku": "6DBCXrtz", "itemType": "CYejn1ya"}, {"count": 51, "itemId": "7iE3pmE0", "itemSku": "nAsJOHbi", "itemType": "bQv1nHSf"}, {"count": 49, "itemId": "FEAjho9K", "itemSku": "RRIoDPlp", "itemType": "ErrdIng5"}], "name": "X6M6WHjS", "odds": 0.07691846204433506, "type": "REWARD", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 65, "maxCountPerUser": 71, "name": "f4au7LB8", "optionBoxConfig": {"boxItems": [{"count": 14, "itemId": "FPx9WIDx", "itemSku": "ZRMcNPLa", "itemType": "qt86hMlg"}, {"count": 88, "itemId": "wez8ljKB", "itemSku": "XFKYEXbX", "itemType": "GIlQoGPu"}, {"count": 2, "itemId": "SFU3M7Cc", "itemSku": "a57LSP5a", "itemType": "RfKf9EqC"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 79, "fixedTrialCycles": 5, "graceDays": 14}, "regionData": {"Nf6moXsN": [{"currencyCode": "p5DSSP8D", "currencyNamespace": "W5lq6SeJ", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1990-04-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1995-11-12T00:00:00Z", "discountedPrice": 27, "expireAt": "1984-11-05T00:00:00Z", "price": 6, "purchaseAt": "1996-09-27T00:00:00Z", "trialPrice": 3}, {"currencyCode": "8tWMxcQ9", "currencyNamespace": "PMca2YCd", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1982-07-29T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1981-07-07T00:00:00Z", "discountedPrice": 54, "expireAt": "1997-10-18T00:00:00Z", "price": 61, "purchaseAt": "1978-11-11T00:00:00Z", "trialPrice": 64}, {"currencyCode": "TXi7EMvx", "currencyNamespace": "Mqnnl4VC", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-10-01T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1985-06-03T00:00:00Z", "discountedPrice": 28, "expireAt": "1992-07-25T00:00:00Z", "price": 22, "purchaseAt": "1983-04-23T00:00:00Z", "trialPrice": 1}], "iW3y9xm8": [{"currencyCode": "9Odnslic", "currencyNamespace": "mTzfZUjN", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1987-05-02T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1997-11-18T00:00:00Z", "discountedPrice": 85, "expireAt": "1971-03-08T00:00:00Z", "price": 50, "purchaseAt": "1997-07-30T00:00:00Z", "trialPrice": 83}, {"currencyCode": "fugl5bZ6", "currencyNamespace": "1MyWJPdG", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1997-04-07T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1992-01-29T00:00:00Z", "discountedPrice": 51, "expireAt": "1971-04-24T00:00:00Z", "price": 90, "purchaseAt": "1998-12-15T00:00:00Z", "trialPrice": 13}, {"currencyCode": "Red2fwNR", "currencyNamespace": "3HlHVPRq", "currencyType": "VIRTUAL", "discountAmount": 80, "discountExpireAt": "1997-11-12T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1990-05-12T00:00:00Z", "discountedPrice": 41, "expireAt": "1996-10-01T00:00:00Z", "price": 55, "purchaseAt": "1989-05-12T00:00:00Z", "trialPrice": 65}], "4ukPp0sl": [{"currencyCode": "C69CoOr6", "currencyNamespace": "9gBEsPtZ", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1974-05-30T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1990-05-14T00:00:00Z", "discountedPrice": 75, "expireAt": "1986-09-15T00:00:00Z", "price": 82, "purchaseAt": "1994-01-28T00:00:00Z", "trialPrice": 33}, {"currencyCode": "HPzKBp7o", "currencyNamespace": "RKBP8mAk", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1973-10-17T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1991-09-05T00:00:00Z", "discountedPrice": 70, "expireAt": "1998-09-02T00:00:00Z", "price": 42, "purchaseAt": "1972-03-29T00:00:00Z", "trialPrice": 71}, {"currencyCode": "7fs6dvtY", "currencyNamespace": "M55xvnRl", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1996-08-31T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1992-06-09T00:00:00Z", "discountedPrice": 95, "expireAt": "1979-01-11T00:00:00Z", "price": 77, "purchaseAt": "1997-03-11T00:00:00Z", "trialPrice": 69}]}, "seasonType": "TIER", "sku": "DgILOsKr", "stackable": true, "status": "INACTIVE", "tags": ["FY0txwBY", "iIpoo3y7", "YUaiRixZ"], "targetCurrencyCode": "XdRfol14", "targetNamespace": "ufyURCXQ", "thumbnailUrl": "4atgEt7o", "useCount": 99}' --login_with_auth "Bearer foo"
platform-delete-item 'rZQXOI3q' --login_with_auth "Bearer foo"
platform-acquire-item '0PMdC03J' --body '{"count": 89, "orderNo": "T4ExlUo2"}' --login_with_auth "Bearer foo"
platform-get-app 'Nfe55rgc' --login_with_auth "Bearer foo"
platform-update-app 'vHxZ9fCx' 'tDdxMfqh' --body '{"carousel": [{"alt": "bUeXToEN", "previewUrl": "Be8rvy9n", "thumbnailUrl": "lMltPlSI", "type": "video", "url": "aXXjjv0Q", "videoSource": "generic"}, {"alt": "GLT0RCVY", "previewUrl": "9dr11Msi", "thumbnailUrl": "rBgavaHP", "type": "video", "url": "L3WWWCrD", "videoSource": "youtube"}, {"alt": "Oe8CkKAR", "previewUrl": "LFv3hzya", "thumbnailUrl": "uKRQlk0D", "type": "video", "url": "WorVLH7i", "videoSource": "youtube"}], "developer": "XKqqcsjC", "forumUrl": "svObZSnC", "genres": ["RPG", "Indie", "Casual"], "localizations": {"v9XhaoL8": {"announcement": "zIgtiG1r", "slogan": "ZuTXaGNp"}, "izmx4PIS": {"announcement": "lfobv23M", "slogan": "wdL88apC"}, "2BeIXIug": {"announcement": "7Q684SJS", "slogan": "IEL6KNrK"}}, "platformRequirements": {"gewWX0rj": [{"additionals": "79mWhUEv", "directXVersion": "EqDW7Wqb", "diskSpace": "Hb4I6Cu0", "graphics": "8NtYRGb6", "label": "bKFyn52p", "osVersion": "GZoXP9kO", "processor": "I0xwWOuF", "ram": "WGgtTUCr", "soundCard": "7AiNAECg"}, {"additionals": "Zw8wNvJ0", "directXVersion": "0O5DAfdG", "diskSpace": "rWBzR5cT", "graphics": "mMdVDzB7", "label": "nGJ2T3ze", "osVersion": "D8Mdq830", "processor": "Jk5VrU9S", "ram": "eVEbVxpP", "soundCard": "omuUI2Ci"}, {"additionals": "000sKQRW", "directXVersion": "mkipk4Tq", "diskSpace": "hF03HXxM", "graphics": "oNwNC6Jm", "label": "i5VnrhhZ", "osVersion": "euNCDoyH", "processor": "qhl0ntqz", "ram": "xp8ML5Xq", "soundCard": "MNuHwGdR"}], "waZMPfgi": [{"additionals": "bJanuOQO", "directXVersion": "oKtpgMRo", "diskSpace": "1E4OYp9v", "graphics": "vc7r9GsI", "label": "DISioOqk", "osVersion": "Ez2NTzTJ", "processor": "lfNWxUUT", "ram": "rgLH19WZ", "soundCard": "E1W7hbDG"}, {"additionals": "NvwmkAiG", "directXVersion": "ykhDTPSF", "diskSpace": "5aHuDrPD", "graphics": "OjGTQUdh", "label": "e9etcyBo", "osVersion": "5OVskdq0", "processor": "4hoWIjXo", "ram": "iTyFhmoG", "soundCard": "1JGlnBYz"}, {"additionals": "qS5GigVu", "directXVersion": "vSpqWBP6", "diskSpace": "SNYHW9OP", "graphics": "NIqrrJt5", "label": "l5yVHZO4", "osVersion": "OgzGt5KO", "processor": "REB32J7g", "ram": "pU9KF5N1", "soundCard": "uKa8TIwg"}], "2nk6RSm4": [{"additionals": "0YIrBNrg", "directXVersion": "54vBdZl6", "diskSpace": "e7IzvHiG", "graphics": "DasDiROC", "label": "DhHIxQQJ", "osVersion": "2VDtKqKm", "processor": "JpjWXN7U", "ram": "xOTGZIX0", "soundCard": "XxzCpA6I"}, {"additionals": "uQyQbMMG", "directXVersion": "Hj541nQQ", "diskSpace": "RO6PCmnM", "graphics": "YP5y8Gkx", "label": "EmtcMxQW", "osVersion": "cUrCRATs", "processor": "ED08XA46", "ram": "goJjgdZz", "soundCard": "g9nBaacq"}, {"additionals": "dYUm5fUW", "directXVersion": "68tsLycR", "diskSpace": "NgCUeJmb", "graphics": "Ou6dzVm1", "label": "8J9z7HOw", "osVersion": "0A2TUpDB", "processor": "YmBAAbyn", "ram": "Zijtg91t", "soundCard": "x084cbvR"}]}, "platforms": ["Linux", "Windows", "Linux"], "players": ["Single", "Multi", "MMO"], "primaryGenre": "Sports", "publisher": "MHKohLCJ", "releaseDate": "1982-10-23T00:00:00Z", "websiteUrl": "QLSA7M4g"}' --login_with_auth "Bearer foo"
platform-disable-item 'OxTOscUl' 'jW3BUgzU' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'WgGC4Sy8' --login_with_auth "Bearer foo"
platform-enable-item 'wRV6uFA1' 'r5bPc0Rm' --login_with_auth "Bearer foo"
platform-feature-item 'qqdDTb68' 'hd6xn3PM' 'pM6cCB9A' --login_with_auth "Bearer foo"
platform-defeature-item 'JV9r6YJ2' '6dC5FXGk' 'L2aNVk14' --login_with_auth "Bearer foo"
platform-get-locale-item 'BjRuSOe6' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'MaVj4NyZ' 'YptVeraM' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 84, "comparison": "includes", "name": "2dUDOm4O", "predicateType": "SeasonPassPredicate", "value": "OdnzOSo0", "values": ["VXHauvMy", "Mmo2G7k2", "H5FoAjdH"]}, {"anyOf": 46, "comparison": "includes", "name": "0vptbeTe", "predicateType": "SeasonTierPredicate", "value": "QkJ8PjUo", "values": ["tpvrbx9X", "xGEczOyg", "dptfUt7a"]}, {"anyOf": 37, "comparison": "includes", "name": "3U9ov6gK", "predicateType": "SeasonPassPredicate", "value": "A6tua8l9", "values": ["lgtsZDaf", "Y3efiVPP", "3GidPZ3x"]}]}, {"operator": "and", "predicates": [{"anyOf": 22, "comparison": "isLessThan", "name": "3ujLHR0A", "predicateType": "EntitlementPredicate", "value": "CqpmCwNL", "values": ["mn0mJqQF", "UM4t7tyZ", "E7U3Y7k5"]}, {"anyOf": 30, "comparison": "isGreaterThanOrEqual", "name": "cnOATcxT", "predicateType": "SeasonTierPredicate", "value": "0Qa2i1VP", "values": ["IVwJK2qV", "MeCyNWRU", "seir9Mg5"]}, {"anyOf": 14, "comparison": "includes", "name": "dCESltUi", "predicateType": "EntitlementPredicate", "value": "PbrBGFH2", "values": ["hTRGwCZY", "1JHiG75z", "v1NATldH"]}]}, {"operator": "or", "predicates": [{"anyOf": 58, "comparison": "is", "name": "SknUs7zB", "predicateType": "SeasonTierPredicate", "value": "m00L9YYg", "values": ["9V6d3Jsi", "OsDypNZQ", "DPO7ev3s"]}, {"anyOf": 36, "comparison": "is", "name": "bb6hzkHY", "predicateType": "EntitlementPredicate", "value": "sx2j3gUa", "values": ["PLbAqK59", "3y5pPOoe", "HJz9myND"]}, {"anyOf": 33, "comparison": "isNot", "name": "mIfvnVsr", "predicateType": "SeasonTierPredicate", "value": "Z7PsEy0g", "values": ["d0hAiTbv", "tVShK7tU", "LAIjhPMV"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'XjAZynif' --body '{"orderNo": "l9LupTKH"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "fCOKVh1O", "name": "NlCFDxU2", "status": "INACTIVE", "tags": ["xbz3HcGR", "BXlDF1Jm", "jby3KVOZ"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'qCfZYnwn' --login_with_auth "Bearer foo"
platform-update-key-group 'XQRTTL90' --body '{"description": "oEJCaflO", "name": "Pb9BnBq8", "status": "INACTIVE", "tags": ["8itRI6x6", "7ddXxpl7", "4jlMgCEd"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'dCJIR6ec' --login_with_auth "Bearer foo"
platform-list-keys 'RQTRtyC3' --login_with_auth "Bearer foo"
platform-upload-keys '3oYZPwvH' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order '1zev3lA4' --login_with_auth "Bearer foo"
platform-refund-order 'tKKm4unC' --body '{"description": "Dy1ZPKlA"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "qgPz2ndp", "privateKey": "Vy0EHIzH"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "1zko5PKA", "currencyNamespace": "S6htGHFK", "customParameters": {"aZn1FvXW": {}, "i65uX7os": {}, "2eWcLj6y": {}}, "description": "6pXtLYs7", "extOrderNo": "UZrMHI2J", "extUserId": "OT6PY6DM", "itemType": "COINS", "language": "nku-Zkkc", "metadata": {"KfgkiJdJ": "ixc8x0pr", "LvgsfkE9": "0aCLBb22", "Zm6dnmoZ": "ftWWXVeX"}, "notifyUrl": "zMH6eGIY", "omitNotification": true, "platform": "2JyPYNKs", "price": 94, "recurringPaymentOrderNo": "g4bApZPn", "region": "guvGbcr6", "returnUrl": "Budeov8E", "sandbox": false, "sku": "ZhvwexP1", "subscriptionId": "MsxIxSpX", "targetNamespace": "Tonxd6I4", "targetUserId": "FCcwQ6n1", "title": "jP3EsN1M"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'sJWNWkE6' --login_with_auth "Bearer foo"
platform-get-payment-order 'tAwvFn9E' --login_with_auth "Bearer foo"
platform-charge-payment-order 'BeMvUMgs' --body '{"extTxId": "2tqdqv0Q", "paymentMethod": "PHNht2cJ", "paymentProvider": "WXPAY"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'pK6o85de' --body '{"description": "RfiewZKy"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '8NTD1u5y' --body '{"amount": 1, "currencyCode": "WMSEFTsi", "notifyType": "CHARGE", "paymentProvider": "WALLET", "salesTax": 10, "vat": 19}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'ThDsE6yl' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'GooglePlay' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["Nintendo", "IOS", "IOS"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "in3mUHrP", "eventTopic": "Ay5VELNb", "maxAwarded": 48, "maxAwardedPerUser": 20, "namespaceExpression": "MuvMOtBR", "rewardCode": "n7O84sor", "rewardConditions": [{"condition": "pESZ8LhH", "conditionName": "eV9BBTrq", "eventName": "6Ot5GM3Q", "rewardItems": [{"duration": 76, "itemId": "QuhOUBf5", "quantity": 19}, {"duration": 85, "itemId": "RV9MRkvY", "quantity": 95}, {"duration": 99, "itemId": "gIVeuFSE", "quantity": 21}]}, {"condition": "x3DOTSbf", "conditionName": "I50yWYJL", "eventName": "4fkwyurz", "rewardItems": [{"duration": 27, "itemId": "LWayySP0", "quantity": 87}, {"duration": 48, "itemId": "vW0Fn6KK", "quantity": 74}, {"duration": 50, "itemId": "bW2A6xsL", "quantity": 78}]}, {"condition": "71bv9FNh", "conditionName": "rqEQsxxP", "eventName": "6IShXuL8", "rewardItems": [{"duration": 61, "itemId": "FI2Pk5zb", "quantity": 6}, {"duration": 54, "itemId": "tqcwqCkO", "quantity": 0}, {"duration": 6, "itemId": "VdVqJ6G9", "quantity": 94}]}], "userIdExpression": "4Xl8GE2T"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'GToo95Cw' --login_with_auth "Bearer foo"
platform-update-reward 'IT3aPCbW' --body '{"description": "wF0r15CX", "eventTopic": "0bOOt5N7", "maxAwarded": 86, "maxAwardedPerUser": 15, "namespaceExpression": "pU0EGDs2", "rewardCode": "ApGt4eHD", "rewardConditions": [{"condition": "5Yq4mbfE", "conditionName": "mcBHnvjp", "eventName": "tvyvRZ1w", "rewardItems": [{"duration": 11, "itemId": "KyrsB68p", "quantity": 73}, {"duration": 0, "itemId": "NFXOuWWT", "quantity": 2}, {"duration": 53, "itemId": "G9gBAbng", "quantity": 88}]}, {"condition": "IwhhdFRu", "conditionName": "9OcthNi6", "eventName": "c2w9JCgI", "rewardItems": [{"duration": 87, "itemId": "DhHS9ez5", "quantity": 32}, {"duration": 41, "itemId": "Psu4Fpvk", "quantity": 70}, {"duration": 74, "itemId": "kXLI7DOT", "quantity": 97}]}, {"condition": "MNMVlpe0", "conditionName": "bB8RdLBl", "eventName": "xZURCrNq", "rewardItems": [{"duration": 89, "itemId": "jxRdQm2R", "quantity": 43}, {"duration": 10, "itemId": "NCt7oEra", "quantity": 84}, {"duration": 49, "itemId": "dfh5Ikd5", "quantity": 17}]}], "userIdExpression": "bJEkb22X"}' --login_with_auth "Bearer foo"
platform-delete-reward 'hhek4yKO' --login_with_auth "Bearer foo"
platform-check-event-condition '5odN4UKk' --body '{"payload": {"QGNcr5V5": {}, "5W8tr3BY": {}, "W4VhjmTK": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'iYBFLLhH' --body '{"conditionName": "MRJPufCF", "userId": "iS1y7d9b"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'EZR8xkEI' --body '{"active": false, "displayOrder": 84, "endDate": "1979-10-31T00:00:00Z", "ext": {"55pZV9YT": {}, "KwbHAEsn": {}, "GXySJMZ0": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 57, "itemCount": 97, "rule": "SEQUENCE"}, "items": [{"id": "99G1GtBQ", "sku": "ExmX7rqm"}, {"id": "xQINNB3s", "sku": "svDISivC"}, {"id": "yCF6HIbr", "sku": "n0UkaAvX"}], "localizations": {"e9DLi3TK": {"description": "PRCIgDeQ", "localExt": {"eLIqUbGf": {}, "7oGsZsmb": {}, "zAEkHZrZ": {}}, "longDescription": "rzvCmbmD", "title": "dbKOW7a7"}, "5tYdV9Dy": {"description": "eCGdI3Cg", "localExt": {"Fm2zxw5R": {}, "iOAfE8Ul": {}, "3LhPnMjI": {}}, "longDescription": "i2HgodW7", "title": "ynb6Uvom"}, "mUJdJEyj": {"description": "Au2rGsA1", "localExt": {"NRIlC26n": {}, "ELW96CeH": {}, "QGRSfjqZ": {}}, "longDescription": "WKEJOnCY", "title": "KrFqKqhi"}}, "name": "cUWST31i", "rotationType": "NONE", "startDate": "1984-10-03T00:00:00Z", "viewId": "83txbr48"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'q9RNyxwI' --login_with_auth "Bearer foo"
platform-get-section 'P0LVJGl4' --login_with_auth "Bearer foo"
platform-update-section 'Kk0njq8B' 'E3Al7KHQ' --body '{"active": false, "displayOrder": 36, "endDate": "1978-12-18T00:00:00Z", "ext": {"9HjeL2S2": {}, "lID9hWPW": {}, "NwId0nHG": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 42, "itemCount": 67, "rule": "SEQUENCE"}, "items": [{"id": "J20GtJHf", "sku": "bLMzJm3b"}, {"id": "YmCwwLj0", "sku": "JpC4gdIS"}, {"id": "fj4scuYj", "sku": "bS7AQJsC"}], "localizations": {"nCgGbUxn": {"description": "a93w4hHH", "localExt": {"9uiglYxj": {}, "Vlj6KMNH": {}, "SXnJMEo8": {}}, "longDescription": "UWJsK4vV", "title": "1dSQkvdT"}, "4CHrboNn": {"description": "EoSSsiB0", "localExt": {"Dw4yuRVE": {}, "7Oe67zlA": {}, "Fi6UqvyZ": {}}, "longDescription": "u0tsnu3m", "title": "Bq9wWzv8"}, "B9PmWIOY": {"description": "lFkpl397", "localExt": {"4sT70rKq": {}, "sEJsE8Hf": {}, "b1yf4zQq": {}}, "longDescription": "Ugcdx5Zt", "title": "WGPZu2sj"}}, "name": "xUWxyOSy", "rotationType": "FIXED_PERIOD", "startDate": "1985-05-19T00:00:00Z", "viewId": "1NONxnQw"}' --login_with_auth "Bearer foo"
platform-delete-section 'Fjqwh2Hu' 'QFZfsmAu' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "WJplSSdL", "defaultRegion": "BNlmraea", "description": "EjbTGBO8", "supportedLanguages": ["v1zkOlUd", "WbsMItr6", "tlfOQrCq"], "supportedRegions": ["iWFHUMkV", "0hmhpzTr", "jeCuLb4i"], "title": "SnZshtfD"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'H30ugvPU' --login_with_auth "Bearer foo"
platform-update-store 'weiBZ5W6' --body '{"defaultLanguage": "32kvBoaF", "defaultRegion": "Wp6Ocjsm", "description": "2WVwlvHf", "supportedLanguages": ["9QAS8AVE", "qE0BrY4G", "3p2ZjGTs"], "supportedRegions": ["Cjto8ZRT", "rtmy5d7o", "HfZcw1iC"], "title": "rLM5wWhW"}' --login_with_auth "Bearer foo"
platform-delete-store 'OGc90HY4' --login_with_auth "Bearer foo"
platform-query-changes 'OET8YLlo' --login_with_auth "Bearer foo"
platform-publish-all 'nHQB5ZVj' --login_with_auth "Bearer foo"
platform-publish-selected 'v0Wwv2KW' --login_with_auth "Bearer foo"
platform-select-all-records 'AxmPsQg5' --login_with_auth "Bearer foo"
platform-get-statistic 'Y264IU1x' --login_with_auth "Bearer foo"
platform-unselect-all-records 'OKMOiZED' --login_with_auth "Bearer foo"
platform-select-record 'NkOypumh' 'gx7WdVU7' --login_with_auth "Bearer foo"
platform-unselect-record '7EUqnOya' 'C4RIw1rJ' --login_with_auth "Bearer foo"
platform-clone-store 'FXZItYa0' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'rE3jzZPU' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '1Xa27M6N' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '9AEoIgxN' --body '{"orderNo": "Enxi7KyC"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'VIB0fAH6' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'pv1ird6T' --body '{"count": 84, "orderNo": "uXWGWbOi"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'EkPVHDIX' --body '{"achievements": [{"id": "ior4rRpB", "value": 75}, {"id": "oc7cUN3C", "value": 85}, {"id": "J8q7ElUn", "value": 97}], "steamUserId": "0BjHNbO7"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '1nyFduMV' 'M1WlLYPX' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'dHmzLf9E' --body '{"achievements": [{"id": "cSPtQW3R", "percentComplete": 54}, {"id": "nlUItgrs", "percentComplete": 94}, {"id": "bbmjWTQy", "percentComplete": 94}], "serviceConfigId": "veGe5ESg", "titleId": "beDnJRPK", "xboxUserId": "IBPq90J9"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'Ii6Mti0d' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'IEV2vyGR' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'glMw9YIJ' --login_with_auth "Bearer foo"
platform-anonymize-integration 'JTUEmSpY' --login_with_auth "Bearer foo"
platform-anonymize-order 'a724gvhi' --login_with_auth "Bearer foo"
platform-anonymize-payment 'tH5K7pOQ' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'Zp6Z4vSM' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'MkHEtKD1' --login_with_auth "Bearer foo"
platform-get-user-dlc 'PJ2gwPxs' 'XBOX' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'sqvl1acb' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'QrJJNOxW' --body '[{"endDate": "1976-02-28T00:00:00Z", "grantedCode": "1aK13LcS", "itemId": "Gb0aWF13", "itemNamespace": "JjtS6Yjt", "language": "vQRZ", "quantity": 22, "region": "dfgcxawF", "source": "REDEEM_CODE", "startDate": "1996-02-19T00:00:00Z", "storeId": "2HuzNeu2"}, {"endDate": "1989-10-10T00:00:00Z", "grantedCode": "I6YPUtnk", "itemId": "0XFL5Mia", "itemNamespace": "1m3X8rlG", "language": "uxx_NtRu", "quantity": 17, "region": "9WwVlncA", "source": "GIFT", "startDate": "1996-11-09T00:00:00Z", "storeId": "Q4Rn1rIZ"}, {"endDate": "1981-12-31T00:00:00Z", "grantedCode": "ukWKpK3r", "itemId": "LjmZaPE1", "itemNamespace": "6tRZsx1Z", "language": "iY_Da", "quantity": 7, "region": "SKdf7cph", "source": "REWARD", "startDate": "1986-02-24T00:00:00Z", "storeId": "TvbgpON6"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'GGyx2q79' 'c9tsvapv' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'vkkKKmdZ' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'YskZNyQP' 'nqhSWtLF' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '3DSyACM8' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'QtOsyESm' 'ZSuVujoJ' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'VCeIIRk4' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '1nXeGgyQ' '["8O5JCbFA", "mP9j6oKD", "CH1tC04j"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'lJQT48SJ' 'tcouFxYP' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'ITnWd3YK' 'd1GuPDtT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'xP6JnkKS' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'E61VyjNF' 'FFnEcHxV' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements '6KGph31X' 'PMNLSuxs' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'ySok9WUW' 'jIOQNVRd' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'KHT8okJP' 'SnNQ4BBr' --body '{"endDate": "1995-03-06T00:00:00Z", "nullFieldList": ["LG6yLMhJ", "gC5qCF2C", "3DM6mUoP"], "startDate": "1973-01-06T00:00:00Z", "status": "ACTIVE", "useCount": 91}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'xFKm61K0' 'iOD4pW3u' --body '{"options": ["ZJgehvv0", "5nfF7vNI", "4Ec6PV22"], "requestId": "1RDLTlaf", "useCount": 55}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'ZTmk5jlN' 'gACPgA9X' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'gAghAOc2' 'U0Y3iDtP' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'sGXUha9T' 'je7kbLn3' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'e5jrBUkc' 'baQRyR9H' --login_with_auth "Bearer foo"
platform-fulfill-item 'DGIAotWB' --body '{"duration": 22, "endDate": "1979-01-12T00:00:00Z", "itemId": "vVaUS2WI", "itemSku": "Lm8weLff", "language": "7qyy1NGi", "order": {"currency": {"currencyCode": "htQHMXGN", "currencySymbol": "zBFtrNSU", "currencyType": "REAL", "decimals": 87, "namespace": "solvKs9v"}, "ext": {"yStblV7t": {}, "qkG7QoeY": {}, "mN5wMIee": {}}, "free": true}, "orderNo": "wxhh9oqF", "origin": "Xbox", "quantity": 20, "region": "aDNBagwf", "source": "GIFT", "startDate": "1981-05-02T00:00:00Z", "storeId": "RT2k7cgP"}' --login_with_auth "Bearer foo"
platform-redeem-code '5ONL77FR' --body '{"code": "LbonzkSM", "language": "XS_embi_cu", "region": "769J9KCi"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'N5FlodbT' --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "1CcawlMK", "namespace": "TOCPKgNv"}, "item": {"itemId": "gG9kDAC6", "itemSku": "djoQOunQ", "itemType": "OWl6hb9C"}, "quantity": 4, "type": "ITEM"}, {"currency": {"currencyCode": "19oCRIG2", "namespace": "6xpwy2FP"}, "item": {"itemId": "lxLdqMyH", "itemSku": "j8qSmjjI", "itemType": "sX5ztm1m"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "pVc4s7Bf", "namespace": "M3mvXZdT"}, "item": {"itemId": "Dx7nL0oW", "itemSku": "zzt0aiDD", "itemType": "cL49j5mg"}, "quantity": 38, "type": "ITEM"}], "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'zNweWyZc' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'wFDU3fV5' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '98EdH4Ae' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'uucLTyPf' --body '{"itemIdentityType": "ITEM_ID", "language": "oJF-Mh", "productId": "z9QmmFp0", "region": "65qrXXmI", "type": "TWITCH"}' --login_with_auth "Bearer foo"
platform-query-user-orders '00BLg5o3' --login_with_auth "Bearer foo"
platform-admin-create-user-order '7sHApUbm' --body '{"currencyCode": "qEkjs2h6", "currencyNamespace": "mE4PVVKs", "discountedPrice": 2, "ext": {"Z9Xic0Y9": {}, "o9BMW1mj": {}, "ILvhj5UF": {}}, "itemId": "EJxGMG9q", "language": "QeVyG74o", "options": {"skipPriceValidation": true}, "platform": "Epic", "price": 65, "quantity": 99, "region": "bDDFtDVb", "returnUrl": "OnRmAmAn", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'Zo3wDkFC' 'go8FiV7l' --login_with_auth "Bearer foo"
platform-get-user-order 'm0X9GZgn' '8VFopKvr' --login_with_auth "Bearer foo"
platform-update-user-order-status '7EeeDVpu' 'ICs0FVn3' --body '{"status": "CHARGED", "statusReason": "N02yYXw0"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order '0EtSjCaQ' 'AbQw8QwJ' --login_with_auth "Bearer foo"
platform-get-user-order-grant '1VcakeWc' 'lWNkGQQU' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'NdiQ6xzO' 'zfNZ9JrP' --login_with_auth "Bearer foo"
platform-process-user-order-notification '1hxJx5Ny' 'bfI36yzB' --body '{"additionalData": {"cardSummary": "DKUkfIcf"}, "authorisedTime": "1980-06-11T00:00:00Z", "chargebackReversedTime": "1979-06-19T00:00:00Z", "chargebackTime": "1995-05-01T00:00:00Z", "chargedTime": "1989-05-15T00:00:00Z", "createdTime": "1982-12-09T00:00:00Z", "currency": {"currencyCode": "UWM9XIuH", "currencySymbol": "xBdGDgZ1", "currencyType": "REAL", "decimals": 94, "namespace": "TIVfWzg3"}, "customParameters": {"2h1UHnPP": {}, "3xCWJxGg": {}, "HkbYj1Qj": {}}, "extOrderNo": "7FfnuGpM", "extTxId": "9DW5Ni8T", "extUserId": "AtxyMbZv", "issuedAt": "1973-06-26T00:00:00Z", "metadata": {"eNsVZRm1": "6wKiq9NG", "bAhATE5N": "nmXjtMZ6", "hoBNoWVr": "rGlP31Cm"}, "namespace": "w8QK5aEK", "nonceStr": "1REjdufW", "paymentMethod": "v1ZsfKiL", "paymentMethodFee": 25, "paymentOrderNo": "XW0osyVZ", "paymentProvider": "WXPAY", "paymentProviderFee": 2, "paymentStationUrl": "8WHToDaS", "price": 73, "refundedTime": "1979-01-05T00:00:00Z", "salesTax": 5, "sandbox": true, "sku": "I2lJ6E5m", "status": "CHARGE_FAILED", "statusReason": "qooxZKPa", "subscriptionId": "QGuDyOZF", "subtotalPrice": 77, "targetNamespace": "MlYg4Iot", "targetUserId": "oKYXoau6", "tax": 73, "totalPrice": 99, "totalTax": 12, "txEndTime": "1996-01-15T00:00:00Z", "type": "g1Ded9EQ", "userId": "y6tGcyDQ", "vat": 85}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'uzuX1gGE' '1X9tcH34' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'pnOWzJBO' --body '{"currencyCode": "5jSfMDiR", "currencyNamespace": "zVGDpgsg", "customParameters": {"iXK4LEMo": {}, "Fov7xpct": {}, "tqu8snQd": {}}, "description": "2ps4FRv3", "extOrderNo": "yG8TA8fM", "extUserId": "W5ikAaKy", "itemType": "MEDIA", "language": "MGHg-mpvq", "metadata": {"G4sk8Fp6": "9MlJVc9L", "coKrIg3T": "izeh370j", "dd7tBJVX": "Pq7JX4mH"}, "notifyUrl": "RQe2TO8S", "omitNotification": true, "platform": "4xLnzFAQ", "price": 28, "recurringPaymentOrderNo": "W0vp18ip", "region": "ISjer9xJ", "returnUrl": "C2zOQ9Bc", "sandbox": true, "sku": "47FBr769", "subscriptionId": "0xLzgvk3", "title": "XNE2HhhM"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '1HiYNO85' 'KHT6fgdP' --body '{"description": "a9Xl5M44"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'fDpzU6JX' --body '{"code": "wj3YpNm7", "orderNo": "wVdcZApJ"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'krI7rFkF' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'noDSH8Xd' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'BSshOenJ' --body '{"grantDays": 44, "itemId": "gyVyx8Jf", "language": "BC2culJE", "reason": "zNv1hb8Q", "region": "sia4i5nC", "source": "piWafRDf"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'mxPvmbnU' 'nNiyCTlU' --login_with_auth "Bearer foo"
platform-get-user-subscription 'fTa2yir3' 'hDDG5GLy' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'ayR3f3bu' 'snWnVODq' --login_with_auth "Bearer foo"
platform-cancel-subscription '5T8933F6' '8vwvjffk' --body '{"immediate": true, "reason": "QbHok033"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '6j4XPujG' 'PpglYMaa' --body '{"grantDays": 92, "reason": "8Fh70Ia7"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'e9o2mxnK' 'nGeyyLx1' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '8Kti8Itj' 'fXA5Y1iQ' --body '{"additionalData": {"cardSummary": "ikc58PQb"}, "authorisedTime": "1982-09-25T00:00:00Z", "chargebackReversedTime": "1980-05-23T00:00:00Z", "chargebackTime": "1975-05-07T00:00:00Z", "chargedTime": "1971-01-16T00:00:00Z", "createdTime": "1975-04-10T00:00:00Z", "currency": {"currencyCode": "vbOdTCoW", "currencySymbol": "rSgp8dKM", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "DvICD2JB"}, "customParameters": {"QfcC6X8S": {}, "yhWWp8bc": {}, "qOaP2yXv": {}}, "extOrderNo": "MJYyDmyt", "extTxId": "pp2vEuto", "extUserId": "4CViJXeK", "issuedAt": "1994-07-04T00:00:00Z", "metadata": {"eKiG0MgI": "0y4O3wNT", "YVgzw4B1": "kqtKb5kN", "wZM0Rj7x": "IVT1iwOC"}, "namespace": "cpXhvcVj", "nonceStr": "iO7lWg07", "paymentMethod": "ZrDxYicG", "paymentMethodFee": 13, "paymentOrderNo": "lFe8C8Nu", "paymentProvider": "STRIPE", "paymentProviderFee": 5, "paymentStationUrl": "aKra9kn2", "price": 2, "refundedTime": "1975-09-22T00:00:00Z", "salesTax": 72, "sandbox": false, "sku": "EA6N6LCE", "status": "REFUNDED", "statusReason": "hFpGTqpo", "subscriptionId": "uOMIb6iP", "subtotalPrice": 1, "targetNamespace": "uCp2Dtjq", "targetUserId": "xz3cwSEx", "tax": 2, "totalPrice": 50, "totalTax": 31, "txEndTime": "1990-11-25T00:00:00Z", "type": "hew3ufxB", "userId": "sMrxZxBR", "vat": 5}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'Fi8c3FPI' 'KLVjZEmb' --body '{"count": 67, "orderNo": "UqyTImMI"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'roSWtBBo' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '0zWKtEl0' '3KrsNsoG' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'hF5642KK' '4BSmblMV' --body '{"amount": 67, "expireAt": "1994-01-30T00:00:00Z", "origin": "Stadia", "reason": "Abw0EkR4", "source": "PURCHASE"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'heTDz5oY' 'Gv9LYiCi' --body '{"amount": 79, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view '7YtLfPYO' --body '{"displayOrder": 91, "localizations": {"rpGzUKHY": {"description": "OTmAEFoS", "localExt": {"8OcSlL3A": {}, "5oEDaNNr": {}, "rh2f6xjP": {}}, "longDescription": "LPyKkSaH", "title": "4BiUUTfF"}, "2odL84db": {"description": "Np5to3GU", "localExt": {"0ddnJwJY": {}, "Hfz4WFvD": {}, "Wjn1Uuyz": {}}, "longDescription": "b0vvPtWi", "title": "c4tktJEw"}, "t7AGoQY0": {"description": "Q3zMqML9", "localExt": {"1Qg3rvq9": {}, "Pgzor4K4": {}, "WkT5sVP4": {}}, "longDescription": "so4s9uSv", "title": "C1gAtUOW"}}, "name": "RbZv1PBk"}' --login_with_auth "Bearer foo"
platform-get-view 'ML35KIpJ' --login_with_auth "Bearer foo"
platform-update-view 'MnrHnHNo' 'as7Lvjfy' --body '{"displayOrder": 80, "localizations": {"yKoN8WnS": {"description": "yey4Tiok", "localExt": {"eTxMpbxC": {}, "YSSsCPtA": {}, "64XjqJt0": {}}, "longDescription": "3hkqcgfR", "title": "rTm8Nhiw"}, "dVBuxxwB": {"description": "OG6ku9UD", "localExt": {"sHf2JI4T": {}, "JlmQeJO2": {}, "CXPefJ09": {}}, "longDescription": "nytMiigo", "title": "yXALBChY"}, "qIZsLzBh": {"description": "wFruR7lP", "localExt": {"hGxvcqqY": {}, "krF2Qcn0": {}, "1QV2gTe8": {}}, "longDescription": "lOTe3kVb", "title": "6s4MG3gi"}}, "name": "My7R4Jfn"}' --login_with_auth "Bearer foo"
platform-delete-view 'w6FqmZaw' '22FrJcCG' --login_with_auth "Bearer foo"
platform-sync-orders 'obdefahw' 'SxlKswph' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["eJIFguDg", "Mu0WYuz4", "kkzkI4jm"], "apiKey": "mjcwWErP", "authoriseAsCapture": false, "blockedPaymentMethods": ["pSUYQqng", "rPu4pVY7", "S6fWhdrE"], "clientKey": "XH3BSqbt", "dropInSettings": "EyGWfGRG", "liveEndpointUrlPrefix": "is5d9U1U", "merchantAccount": "Sc6W2feN", "notificationHmacKey": "DQ2y8jXj", "notificationPassword": "xxkmmAP6", "notificationUsername": "d7NvjL9K", "returnUrl": "fl49CTc5", "settings": "UGItiJ0F"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "lNJciw77", "privateKey": "vr4a0dgj", "publicKey": "MVCd5omD", "returnUrl": "T43MzffG"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "BJwlIOfz", "secretKey": "CvHJNAao"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "O9TQLP8Z", "clientSecret": "blBghIqk", "returnUrl": "uWiQMjs0", "webHookId": "B0dZmODC"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["xYHul6mp", "qjOLxx81", "XIdiRmjI"], "publishableKey": "f1vCqBhr", "secretKey": "36VYmZig", "webhookSecret": "udavv4Vb"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "QSapvUKm", "key": "BlwirmZi", "mchid": "51i1D4FF", "returnUrl": "202ClnsK"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "inR9Jz3v", "flowCompletionUrl": "AZGMImpl", "merchantId": 0, "projectId": 78, "projectSecretKey": "NBnRCmRY"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'Uw7HfWMA' --login_with_auth "Bearer foo"
platform-update-adyen-config 'OXHwFTTM' --body '{"allowedPaymentMethods": ["DbawSR3b", "7CkgM3Ja", "d6T2gNIq"], "apiKey": "TxxI5D9k", "authoriseAsCapture": true, "blockedPaymentMethods": ["4e7UfDBt", "FTFG6lpS", "qhVdv5GR"], "clientKey": "TK0gd1dV", "dropInSettings": "jykC7OQp", "liveEndpointUrlPrefix": "adXj84jl", "merchantAccount": "mjT83E8m", "notificationHmacKey": "4iRcMW8P", "notificationPassword": "C4y1j3rx", "notificationUsername": "IMSRfKKB", "returnUrl": "5WkKz1Ej", "settings": "dth86S2K"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id '5YMSmrnz' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'T01ET44f' --body '{"appId": "vwKUEuY6", "privateKey": "zjqjKEiN", "publicKey": "03BnxJbv", "returnUrl": "I1Gcexas"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'ULbUtQb4' --login_with_auth "Bearer foo"
platform-update-checkout-config '4Qtrj55t' --body '{"publicKey": "IyObKiga", "secretKey": "PGSNccIH"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'njIxg8Nv' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'o506d3aD' --body '{"clientID": "lO0MyTbe", "clientSecret": "Al5NNfG5", "returnUrl": "7gaVwtww", "webHookId": "t6XdCa3T"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'CgKl6pFj' --login_with_auth "Bearer foo"
platform-update-stripe-config 'JSuvJ2WC' --body '{"allowedPaymentMethodTypes": ["bDD4zMuR", "fWIsUaTR", "oJ6AVgxC"], "publishableKey": "AIgGuQjn", "secretKey": "7FoaCDpg", "webhookSecret": "db3xbH3U"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'GEHqB3w3' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'QEOauGKQ' --body '{"appId": "PhtPT1WC", "key": "dZydomzh", "mchid": "Ig20chyS", "returnUrl": "V9lIY5ig"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'S33xcdTh' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'V1fSxWJf' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'Fcn5HfKR' --body '{"apiKey": "75x84AjR", "flowCompletionUrl": "bB74hWor", "merchantId": 53, "projectId": 2, "projectSecretKey": "sdKlWGeX"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'Fp43R1M0' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'XYysTp8G' --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "GjLQoaRK", "region": "7grk1gPa", "sandboxTaxJarApiToken": "gIZqeFpB", "specials": ["WALLET", "WXPAY", "XSOLLA"], "taxJarApiToken": "q8lvXzEe", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '4mwv7VrX' --body '{"aggregate": "XSOLLA", "namespace": "c2b4hKIU", "region": "GQ4ndMab", "sandboxTaxJarApiToken": "1tlptGUX", "specials": ["PAYPAL", "PAYPAL", "WALLET"], "taxJarApiToken": "VvInaaqO", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '9YevpCms' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "oz3qPBCE", "taxJarApiToken": "wKssmjR3", "taxJarEnabled": true, "taxJarProductCodesMapping": {"APsiV0j7": "zfoK5vFk", "1mpn3MKR": "clslXq4T", "qzzEVBSm": "KIJs6tSe"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'EeDNKDq7' 'HKs7BjpR' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'dRbmbDgm' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'a67RfoRu' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'WVzLlk5l' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'xdV51Lu0' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'cYBcMIAu' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'ZTdkNXG8' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["vBRCq0qi", "fMxSTB4c", "xg4YQgpd"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'X7HHfVWc' 'AXfKtC9S' --login_with_auth "Bearer foo"
platform-public-get-app '6CERzWH9' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '4aiJamrQ' --login_with_auth "Bearer foo"
platform-public-get-item 'VRm2mnrK' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "22lk5f0t", "paymentProvider": "XSOLLA", "returnUrl": "9zuq2qJX", "ui": "sxHqrb1I", "zipCode": "KsnRH1jV"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'nIYGsci3' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'CgvfDYRD' --login_with_auth "Bearer foo"
platform-pay 'egvIeFaZ' --body '{"token": "QOkUlUpI"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'VRl7z2J9' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' '8eqSE8RU' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'ow5ppa6S' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'xkBIyxBj' 'P8fSLDXz' 'ADYEN' 'RHDEcO8E' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'nRksuWi7' 'CHECKOUT' --login_with_auth "Bearer foo"
platform-get-reward-by-code '1xWMkWxm' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'tCNlkxrh' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'qIYUccRV' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'j3ubZGcQ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'LmWdD18n' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'a0jDaC3i' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'Gh1mgvq4' --body '{"epicGamesJwtToken": "k6ddyj2u"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '6lOjxk86' --body '{"serviceLabel": 95}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'HEpmNEeG' --body '{"serviceLabels": [56, 74, 34]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'un5HWZc5' --body '{"appId": "gb6yCnwa", "steamId": "AcZxju7y"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'hs0YeJ02' --body '{"xstsToken": "N7e51vMr"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements '4E9RKFJs' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id '4xwCz3Kg' 'lAsQsSaN' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'ABz4fQdW' 'DEMO' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'GMYZluNN' 'wiuuXpWo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'JAzn9Sej' 'NNJhcMDI' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'oRfckOQd' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'GgxYt5a6' 'CLpZIPWT' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'AQPkPgDA' 'CePmWE1l' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'atPVf9d7' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '0fYHj4QC' 'K3RzOBwv' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'Gg9s8oTj' 'fZ8Nyym1' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'hHGuXMAV' 'EpxfYlP1' --body '{"options": ["VEb6XrqN", "OFFK7kF6", "uXfq64rr"], "requestId": "5aN6Fz4G", "useCount": 80}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'iLAO5HJX' --body '{"code": "bqjmA3Y2", "language": "OPjM-lKuN", "region": "GVSiRXG8"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'C9xqr6GZ' --body '{"excludeOldTransactions": true, "language": "ymkP-eF", "productId": "lUsvGGpf", "receiptData": "xihe9Mi5", "region": "sACd5fRW", "transactionId": "oQZ9e2aM"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'NGUVZQBh' --body '{"epicGamesJwtToken": "RXxG84NK"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'l5VcJOaT' --body '{"autoAck": true, "language": "XX_eizF", "orderId": "gs3SRlz1", "packageName": "Zkl352jh", "productId": "D9TIcz8G", "purchaseTime": 63, "purchaseToken": "ggwaCCEw", "region": "E6wV3IBD"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'AVkbl0Ak' --body '{"currencyCode": "RmsyYRfm", "price": 0.7388573543570166, "productId": "tqIYnEn6", "serviceLabel": 16}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'vPvBTo4G' --body '{"currencyCode": "0VmHuedA", "price": 0.6436279006896667, "productId": "4qhWdEDR", "serviceLabels": [24, 81, 82]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'SS0L0FwJ' --body '{"appId": "DKA2KMkx", "language": "ojH", "region": "Cdta9Ep1", "stadiaPlayerId": "HRQ40LYU"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'DhjvjJVM' --body '{"appId": "yIm49RdR", "currencyCode": "yjAGeCCN", "language": "co-MSDH-481", "price": 0.47677686516922635, "productId": "HLgRcv0K", "region": "m06UlgXV", "steamId": "bVaEelOM"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'K54c6lcR' --body '{"gameId": "SJ93B8el", "language": "Tf-poUq-740", "region": "XJXAQddK"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'IQfR8c2n' --body '{"currencyCode": "k9tsIEX8", "price": 0.5897087050153951, "productId": "EUhAsTOP", "xstsToken": "F509nFyr"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders '3kOOzVs2' --login_with_auth "Bearer foo"
platform-public-create-user-order 'Z2H9RM8R' --body '{"currencyCode": "J6mYbgU6", "discountedPrice": 2, "ext": {"Igzo5IIB": {}, "ZIMoYMYe": {}, "hYl9viZz": {}}, "itemId": "CQgS4AxH", "language": "FyrS_Ao", "price": 95, "quantity": 47, "region": "LIXx1Oan", "returnUrl": "ooEbTPvh"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'OLo4w2Lf' 'sbdjE9Gy' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'ZtE6m8ZB' 'vgRoN5oK' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'I7mro4eM' 'Tyk2l71J' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'YYY5TNIP' 'OEtBtfPO' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'u5Q48spX' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'gf4azMqw' 'paypal' 'uS7nX3L8' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'jMN1W3xw' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '6YTU6wvY' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'ZUZIiNUb' --body '{"currencyCode": "r9zW5ykI", "itemId": "aM3zTn6Z", "language": "ef", "region": "AlGQirKB", "returnUrl": "ifw5R3bW", "source": "KxRckBDo"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'GkdOuvfl' 'SM65YDvx' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'Bu5eFtYn' 'WeLVbDT2' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'I9eRreA9' 'hy4amPXp' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'om3D07c2' 'lS6I0V2c' --body '{"immediate": false, "reason": "kKgOCjCn"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'aOck63Qs' 'sLbuXx9v' --login_with_auth "Bearer foo"
platform-public-list-views 'ccnI8VqL' --login_with_auth "Bearer foo"
platform-public-get-wallet 'M7FPw4Bh' 'OlOGcuVg' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'Cs9FO9SK' 'P7iYT9Eh' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'UIZfp5R5' --body '{"itemIds": ["AhMOpI4f", "7yInDSUY", "mG6o47ue"]}' --login_with_auth "Bearer foo"
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
    --body '{"context": {"item": {"appId": "17pwIvbh", "appType": "DLC", "baseAppId": "TE20nFXr", "boothName": "kwYIFF9B", "boundItemIds": ["ZBMUtWwm", "QBzzZY8o", "jTCfpOq7"], "categoryPath": "CldkgBmK", "clazz": "FIPKkodj", "createdAt": "1988-12-23T00:00:00Z", "description": "Hu3x3YyI", "displayOrder": 87, "entitlementType": "DURABLE", "ext": {"X3kQTzJ5": {}, "2dqXiPAY": {}, "OTd5DI3q": {}}, "features": ["5ZfZd4N4", "FZur7XmC", "pop1v3Sz"], "fresh": true, "images": [{"as": "ENdMKzAS", "caption": "HCMVVCh3", "height": 12, "imageUrl": "Cfv3CdSx", "smallImageUrl": "0lJa6UX4", "width": 46}, {"as": "EqCxKCLn", "caption": "rmEh6lGf", "height": 52, "imageUrl": "BfpzReAW", "smallImageUrl": "noSrGCmU", "width": 75}, {"as": "IL9G8kw3", "caption": "iAR8UQDM", "height": 17, "imageUrl": "UulRa4EG", "smallImageUrl": "KhYItz88", "width": 56}], "itemId": "Z53vPM5W", "itemIds": ["fMEeeTPd", "maG6A4Yx", "caEoxLsZ"], "itemQty": {"8SPONxm7": 30, "qbxAXFZE": 75, "WtbViwBf": 74}, "itemType": "SUBSCRIPTION", "language": "5km3DdXV", "listable": false, "localExt": {"IIbDS6SR": {}, "cl6que6b": {}, "pL42MWe6": {}}, "longDescription": "y1Q34Zkr", "lootBoxConfig": {"rewardCount": 4, "rewards": [{"lootBoxItems": [{"count": 22, "itemId": "7Plyt3JR", "itemSku": "rEFeXis3", "itemType": "nOfezCkB"}, {"count": 81, "itemId": "sjW95l7Z", "itemSku": "kZcrWEGr", "itemType": "ZfKB2QOu"}, {"count": 59, "itemId": "3G0THs8k", "itemSku": "0LHyql8R", "itemType": "tKNL6mq5"}], "name": "x9ML3rw3", "odds": 0.9061582467763223, "type": "PROBABILITY_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 11, "itemId": "FWUmdKh3", "itemSku": "mNxRzzEU", "itemType": "i6itvImP"}, {"count": 19, "itemId": "8oCtI6BP", "itemSku": "tCiPXzJD", "itemType": "8Sd43Yej"}, {"count": 37, "itemId": "G8HKNft8", "itemSku": "ENy4AZnq", "itemType": "QvzBOzFB"}], "name": "WSlVBrV5", "odds": 0.5398207516628296, "type": "REWARD", "weight": 7}, {"lootBoxItems": [{"count": 2, "itemId": "eFPGfsb6", "itemSku": "jHUl6edJ", "itemType": "3qVyUp8f"}, {"count": 42, "itemId": "GZUZ1hzk", "itemSku": "CMRRS7Bs", "itemType": "L0AGWoc3"}, {"count": 58, "itemId": "PKMe7lbo", "itemSku": "jP43g5us", "itemType": "BiIbZgUC"}], "name": "wVBaKpxC", "odds": 0.35733813238720213, "type": "REWARD", "weight": 97}], "rollFunction": "DEFAULT"}, "maxCount": 14, "maxCountPerUser": 54, "name": "qRu7AFFN", "namespace": "jIb3LtUk", "optionBoxConfig": {"boxItems": [{"count": 88, "itemId": "T3D5CAdZ", "itemSku": "kpU4zzeI", "itemType": "r70QdFFZ"}, {"count": 9, "itemId": "SGUOuD1L", "itemSku": "b9VBCIfu", "itemType": "gQ2GfxvE"}, {"count": 86, "itemId": "ZNkiOL6L", "itemSku": "Bp9wAKsn", "itemType": "PROIzDek"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 59, "comparison": "isLessThan", "name": "gnwMonUs", "predicateType": "SeasonTierPredicate", "value": "hjdwuz1K", "values": ["esTQ8qm7", "rOpQ2iNj", "IFj050JN"]}, {"anyOf": 78, "comparison": "isLessThanOrEqual", "name": "mtvNYLGE", "predicateType": "EntitlementPredicate", "value": "NeC6aPnT", "values": ["XRjbzNtT", "M30mVUSS", "QoLNTaA8"]}, {"anyOf": 48, "comparison": "isLessThan", "name": "VhpWO17N", "predicateType": "SeasonTierPredicate", "value": "tbAB5j8H", "values": ["KYVnM2km", "kJvNK5Xg", "6RAtDTqt"]}]}, {"operator": "or", "predicates": [{"anyOf": 46, "comparison": "isLessThanOrEqual", "name": "RKLCWHJd", "predicateType": "SeasonTierPredicate", "value": "YhZTOiGl", "values": ["wEqMO5bb", "NfCvhMTs", "xDh8Hk1e"]}, {"anyOf": 34, "comparison": "isGreaterThan", "name": "f46vhHrg", "predicateType": "EntitlementPredicate", "value": "qZ7SLbvF", "values": ["XuLFGzCA", "9DBoP0R8", "IcTHPJ1j"]}, {"anyOf": 77, "comparison": "isLessThan", "name": "9mVLo5lG", "predicateType": "SeasonTierPredicate", "value": "PHahlBVa", "values": ["yo5Ad9Jn", "PuSJekqy", "0F45VWzS"]}]}, {"operator": "or", "predicates": [{"anyOf": 50, "comparison": "isLessThanOrEqual", "name": "5xLObWjo", "predicateType": "EntitlementPredicate", "value": "MfMsWWQE", "values": ["CRWwaY9A", "0HXJlLXB", "I1KmRbUw"]}, {"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "a3aWNZCQ", "predicateType": "EntitlementPredicate", "value": "SIMjCDnX", "values": ["axp7wVHr", "niLxZXJO", "XiFRh0rj"]}, {"anyOf": 6, "comparison": "isGreaterThanOrEqual", "name": "wIawMTpl", "predicateType": "EntitlementPredicate", "value": "w7lwWsKE", "values": ["oqelICLn", "VDG0kAuB", "5mBS5E68"]}]}]}, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 53, "fixedTrialCycles": 24, "graceDays": 82}, "region": "gsBrl0Ab", "regionData": [{"currencyCode": "J4IHerLv", "currencyNamespace": "3vmkY4Kg", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1986-12-09T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1994-02-06T00:00:00Z", "discountedPrice": 91, "expireAt": "1992-08-06T00:00:00Z", "price": 22, "purchaseAt": "1983-05-31T00:00:00Z", "trialPrice": 92}, {"currencyCode": "MrcJ5ETk", "currencyNamespace": "BAqPTBB3", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1977-06-29T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1980-12-09T00:00:00Z", "discountedPrice": 24, "expireAt": "1999-03-03T00:00:00Z", "price": 58, "purchaseAt": "1980-10-01T00:00:00Z", "trialPrice": 50}, {"currencyCode": "088HJYtI", "currencyNamespace": "e2BqATPh", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1979-08-16T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1973-02-20T00:00:00Z", "discountedPrice": 0, "expireAt": "1981-07-13T00:00:00Z", "price": 63, "purchaseAt": "1995-10-16T00:00:00Z", "trialPrice": 21}], "seasonType": "TIER", "sku": "L9bSDWuH", "stackable": false, "status": "INACTIVE", "tags": ["qwyqpxQF", "C79XC0LD", "bcgDX0sj"], "targetCurrencyCode": "XygMxcUb", "targetItemId": "12EWdTMs", "targetNamespace": "l0tgMdPP", "thumbnailUrl": "OP53K9sJ", "title": "qkutTb1p", "updatedAt": "1995-02-24T00:00:00Z", "useCount": 73}, "namespace": "lmL5UYzO", "order": {"currency": {"currencyCode": "VzxeysLX", "currencySymbol": "fGzicfuF", "currencyType": "VIRTUAL", "decimals": 92, "namespace": "T2lM6CnS"}, "ext": {"k2XWmVxv": {}, "Pupgv2vc": {}, "pRLEoEpO": {}}, "free": false}, "source": "REDEEM_CODE"}, "script": "7XoCPr5J", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'pRXTwfbO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    '9ySGTDvW' \
    --body '{"grantDays": "AyVEAdtg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'v57bHTfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'L0YfYcFX' \
    --body '{"grantDays": "vQaFA8oj"}' \
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
    --body '{"clazz": "1RYisCJ2", "dryRun": true, "fulfillmentUrl": "R8xMwGUR", "itemType": "INGAMEITEM", "purchaseConditionUrl": "sJUo0sUH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SUBSCRIPTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'KioV0j4g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'RBdni9Tz' \
    --body '{"clazz": "icvGaeXY", "dryRun": true, "fulfillmentUrl": "uXrNFeIB", "purchaseConditionUrl": "Jj3YhwgU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '5f36SvV5' \
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
    --body '{"description": "d3q2XjUI", "items": [{"extraSubscriptionDays": 6, "itemId": "kvzj3DjD", "itemName": "jYD4INGo", "quantity": 51}, {"extraSubscriptionDays": 22, "itemId": "EEDURb5K", "itemName": "53Y6cW0R", "quantity": 61}, {"extraSubscriptionDays": 42, "itemId": "Zu2mofSA", "itemName": "te4fzUU8", "quantity": 58}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 85, "name": "AV8wAmhl", "redeemEnd": "1975-03-24T00:00:00Z", "redeemStart": "1982-07-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["mcjnWhvB", "VTEtzp8p", "joyNvMvF"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    '4HatUErI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    '8SVRqf4p' \
    --body '{"description": "SRz8qUAh", "items": [{"extraSubscriptionDays": 0, "itemId": "124MhTWe", "itemName": "D0juLm5o", "quantity": 86}, {"extraSubscriptionDays": 16, "itemId": "yBsyzQO5", "itemName": "KaI4UXTQ", "quantity": 13}, {"extraSubscriptionDays": 83, "itemId": "FV9SElOz", "itemName": "Sh6yCToZ", "quantity": 96}], "maxRedeemCountPerCampaignPerUser": 60, "maxRedeemCountPerCode": 97, "maxRedeemCountPerCodePerUser": 0, "maxSaleCount": 0, "name": "UWFj21L9", "redeemEnd": "1986-03-06T00:00:00Z", "redeemStart": "1999-10-27T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["nlhXAGwx", "tT5m1VQp", "2lh0GpHB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '5qSYP4UQ' \
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
    '8V25uw6B' \
    --body '{"categoryPath": "6MOR2JSG", "localizationDisplayNames": {"uYUqmRes": "dsVA1DMs", "8iCIMZKZ": "XEF3OfK5", "FRrsK9OF": "E7HK5uOj"}}' \
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
    'bhQGkefh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'R34nIE2z' \
    'cRGFdHfu' \
    --body '{"localizationDisplayNames": {"X8zp6NOC": "uSg5l2jC", "YLlg2OnY": "Ov6I9Z0U", "GNDFeg4R": "DPkC5Fyo"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'PoBaIeKI' \
    'E9UyGUr4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'LCPiy9dX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '2TA0xfs5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'mHeOygkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'a4fimS3J' \
    --body '{"quantity": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'HDhCa4Mk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'GK5NNZQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'MVjkB5ed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'UBetnkhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'NvGKWAMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'bMllqBn1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'EuO9QfrD' \
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
    --body '{"grpcServerAddress": "ly89YdCR"}' \
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
    --body '{"currencyCode": "HEn9keiq", "currencySymbol": "nGYyFYDc", "currencyType": "VIRTUAL", "decimals": 76, "localizationDescriptions": {"vbFZwYtp": "RruV3vLz", "vi0cN30m": "mKu6U8kE", "12Odoyie": "KSgzr3wB"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateCurrency' test.out

#- 41 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'q18Ph2kj' \
    --body '{"localizationDescriptions": {"beV1Ysu4": "RSdBrzNk", "Tm4iwgJI": "llY5ktAx", "7GUxIr79": "CIfKPMtb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateCurrency' test.out

#- 42 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'A1jHYlLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteCurrency' test.out

#- 43 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'fywu3gIQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetCurrencyConfig' test.out

#- 44 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'LEEaj9o7' \
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
    --body '{"data": [{"id": "sIkWb2jM", "rewards": [{"currency": {"currencyCode": "Q0Gj6aDz", "namespace": "lQoiH9gq"}, "item": {"itemId": "3MG01Gaf", "itemSku": "8Ex6me4h", "itemType": "ul35yBvD"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"currencyCode": "MOb2E54T", "namespace": "kvzhNKK3"}, "item": {"itemId": "58V6FMm3", "itemSku": "6X7rr3dv", "itemType": "5h6hX1K4"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "jHY7aDXn", "namespace": "JpswvOD0"}, "item": {"itemId": "3wrWTD7Y", "itemSku": "zoUaNfQZ", "itemType": "HFlawQvb"}, "quantity": 91, "type": "ITEM"}]}, {"id": "2EVnnHCq", "rewards": [{"currency": {"currencyCode": "g8r1MuF0", "namespace": "TPSSEGcW"}, "item": {"itemId": "xdGcg158", "itemSku": "d2YwKyVt", "itemType": "qhXxxt8n"}, "quantity": 88, "type": "CURRENCY"}, {"currency": {"currencyCode": "HqpyckZ1", "namespace": "MNFjf6Oh"}, "item": {"itemId": "1mwxDYg3", "itemSku": "nF85k0A1", "itemType": "a2zlg1WF"}, "quantity": 63, "type": "ITEM"}, {"currency": {"currencyCode": "cwVlbnAv", "namespace": "HrOhFeph"}, "item": {"itemId": "V90sFKHs", "itemSku": "wnKHkq8H", "itemType": "VWDyOeeN"}, "quantity": 77, "type": "ITEM"}]}, {"id": "wYxAiHPg", "rewards": [{"currency": {"currencyCode": "yGmiGUQx", "namespace": "YN04rFTx"}, "item": {"itemId": "Qn9lDzuP", "itemSku": "noLqBS8k", "itemType": "GuAWHEdx"}, "quantity": 83, "type": "ITEM"}, {"currency": {"currencyCode": "Ffia6SuM", "namespace": "FITL3FWV"}, "item": {"itemId": "7kmB2brS", "itemSku": "ghjeuDDS", "itemType": "RufrSLOg"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "40cv0ZMI", "namespace": "c9f81cwq"}, "item": {"itemId": "cfTnRRDO", "itemSku": "sMVnKsgb", "itemType": "1vHc2QmD"}, "quantity": 1, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "XBOX", "platformDlcIdMap": {"nT3uvchF": "RxLEdspb", "pDpr5uma": "6Go0kaUE", "eKiiAHD7": "suhHJd6M"}}, {"platform": "STEAM", "platformDlcIdMap": {"2YNagoVF": "ZA8sD8SS", "AumIndX7": "pvKcHetV", "Qu7OUa30": "VG975L1D"}}, {"platform": "PSN", "platformDlcIdMap": {"eNrOvkxm": "ui7Q06V7", "zaV53tKE": "GeI8eHeF", "Qnqlv9fu": "EDma3ogF"}}]}' \
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
    'j6fVKUjn' \
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
    --body '{"bundleId": "jb0XwySU", "password": "V8JRSBTb"}' \
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
    --body '{"sandboxId": "Hf2PEYRz"}' \
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
    --body '{"applicationName": "iHaFJjbo", "serviceAccountId": "8TJw3tOt"}' \
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
    --body '{"data": [{"itemIdentity": "KcXbn04J", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"uYoReTT8": "OJyAtEga", "xjpncxcj": "K6KaAMEu", "o0l2yf1K": "jdnDwzL6"}}, {"itemIdentity": "56XmdOdQ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0funTncG": "p7a3lcBE", "SRWyhflV": "1lOEu01s", "YdnTpnJe": "8nR4L72O"}}, {"itemIdentity": "wDvwtsYK", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Y9CjakWB": "madKPsld", "H96R5IoV": "svbOI6FS", "uOCocIyy": "LBlI7xBC"}}]}' \
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
    --body '{"environment": "LncVJsWs"}' \
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
    --body '{"appId": "JKr30a5w", "publisherAuthenticationKey": "uR8Tlenn"}' \
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
    --body '{"clientId": "i2K6dFgx", "clientSecret": "2VvKjvg5", "organizationId": "lAJQ4cEh"}' \
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
    --body '{"relyingPartyCert": "w0pOv5Me"}' \
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
    'NJDEMXA0' \
    'SGMzLqsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DownloadInvoiceDetails' test.out

#- 84 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'uzCvDHq3' \
    'VaR2zu89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GenerateInvoiceSummary' test.out

#- 85 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'z2vjxm3U' \
    --body '{"categoryPath": "y3Omtrx6", "targetItemId": "apYo31gV", "targetNamespace": "NQEOzSfi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'SyncInGameItem' test.out

#- 86 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'Tsw92FLo' \
    --body '{"appId": "5M4YZtoH", "appType": "DLC", "baseAppId": "gJgkecfQ", "boothName": "On9pJTyR", "categoryPath": "g7hDyMGr", "clazz": "vFcOFXER", "displayOrder": 9, "entitlementType": "CONSUMABLE", "ext": {"oFcCC6Oe": {}, "damSwc8I": {}, "gaJHpfdJ": {}}, "features": ["UxVyiMal", "MuBnAh4A", "26PzLHkP"], "images": [{"as": "AVrOolEH", "caption": "1n7S3pGM", "height": 79, "imageUrl": "z3LjWotx", "smallImageUrl": "3TqC1NvU", "width": 59}, {"as": "y0jqJbTg", "caption": "1jGRFESX", "height": 8, "imageUrl": "F6K700Su", "smallImageUrl": "uEZ4v2W8", "width": 76}, {"as": "YEVybS2W", "caption": "j20IhDw3", "height": 32, "imageUrl": "jggfSOvt", "smallImageUrl": "qqgZwm0K", "width": 25}], "itemIds": ["DCmd6Hvk", "U1J5xhln", "gFy7CvQH"], "itemQty": {"LrwVEaWm": 91, "JFxUnu9C": 30, "2PkLEDzy": 0}, "itemType": "CODE", "listable": true, "localizations": {"X8NMFv5G": {"description": "jUnb6A4F", "localExt": {"fmW8HIj7": {}, "4OxbCg9Q": {}, "yMCRGM6C": {}}, "longDescription": "yfvuYx67", "title": "YxNpM7nV"}, "2M0kDf7a": {"description": "iLYO7bKv", "localExt": {"XUf92Sb3": {}, "pNJTEa5X": {}, "OflKBxh8": {}}, "longDescription": "M5t4ZqHl", "title": "ZlMq59n5"}, "OIzu0rTF": {"description": "hlK3Jbgq", "localExt": {"bBIqTV6v": {}, "gSWcPFL8": {}, "Fhrt5eDP": {}}, "longDescription": "1pVW1pPL", "title": "glykuAB9"}}, "lootBoxConfig": {"rewardCount": 11, "rewards": [{"lootBoxItems": [{"count": 44, "itemId": "FuZAwVgR", "itemSku": "SajtRxcj", "itemType": "MyZmeovR"}, {"count": 80, "itemId": "hxCoqWiw", "itemSku": "3IXmvceV", "itemType": "nhF6Marr"}, {"count": 81, "itemId": "8WMmcVLj", "itemSku": "V8gU6sax", "itemType": "5zEgoa5j"}], "name": "6UKN8ekB", "odds": 0.8343287918606953, "type": "REWARD_GROUP", "weight": 2}, {"lootBoxItems": [{"count": 7, "itemId": "UlolsKBj", "itemSku": "mEI9l0eP", "itemType": "5BioHv8J"}, {"count": 11, "itemId": "VBNhbOo1", "itemSku": "qWAWscmY", "itemType": "bt9azG7Z"}, {"count": 72, "itemId": "hioAtPJP", "itemSku": "tTcBvywc", "itemType": "otfQiQuU"}], "name": "GgkaEXP2", "odds": 0.603676413026154, "type": "REWARD", "weight": 39}, {"lootBoxItems": [{"count": 49, "itemId": "zykufkLk", "itemSku": "9EUy1caj", "itemType": "tZ5VR9z2"}, {"count": 76, "itemId": "DxRpdrzN", "itemSku": "0QB2EDg7", "itemType": "5Gmmulnl"}, {"count": 47, "itemId": "FJdgo7Rd", "itemSku": "Cr8HRdgg", "itemType": "fQLOPHqZ"}], "name": "sEvGREu3", "odds": 0.8829570844567927, "type": "REWARD_GROUP", "weight": 70}], "rollFunction": "CUSTOM"}, "maxCount": 51, "maxCountPerUser": 86, "name": "fwbdzhrV", "optionBoxConfig": {"boxItems": [{"count": 32, "itemId": "7p3WVcCr", "itemSku": "LvJ3Ca7k", "itemType": "ox2Urovn"}, {"count": 60, "itemId": "A7FhVK8Z", "itemSku": "ELPor37B", "itemType": "UjcUFBqg"}, {"count": 55, "itemId": "v1thjzOk", "itemSku": "xHKNLMLq", "itemType": "Xhb7BXeO"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 26, "fixedTrialCycles": 18, "graceDays": 77}, "regionData": {"yqVHWXCv": [{"currencyCode": "iz27gfCx", "currencyNamespace": "30ZKXNoI", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1992-01-31T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1998-01-06T00:00:00Z", "discountedPrice": 13, "expireAt": "1983-01-25T00:00:00Z", "price": 96, "purchaseAt": "1985-04-14T00:00:00Z", "trialPrice": 45}, {"currencyCode": "ViSaS7Sc", "currencyNamespace": "szga9Fen", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1977-10-23T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1978-03-11T00:00:00Z", "discountedPrice": 23, "expireAt": "1979-10-23T00:00:00Z", "price": 37, "purchaseAt": "1986-09-27T00:00:00Z", "trialPrice": 40}, {"currencyCode": "XT6WkPNx", "currencyNamespace": "mFDKPatb", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1973-04-10T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1978-08-02T00:00:00Z", "discountedPrice": 7, "expireAt": "1971-05-23T00:00:00Z", "price": 41, "purchaseAt": "1993-05-29T00:00:00Z", "trialPrice": 15}], "se3aBAJf": [{"currencyCode": "bprRcB82", "currencyNamespace": "II0ZulOi", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1993-04-22T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1986-06-01T00:00:00Z", "discountedPrice": 91, "expireAt": "1977-05-08T00:00:00Z", "price": 12, "purchaseAt": "1999-11-07T00:00:00Z", "trialPrice": 76}, {"currencyCode": "bvFNWA6U", "currencyNamespace": "IR8DhIml", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1973-09-08T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1974-02-13T00:00:00Z", "discountedPrice": 61, "expireAt": "1982-09-08T00:00:00Z", "price": 22, "purchaseAt": "1981-10-27T00:00:00Z", "trialPrice": 45}, {"currencyCode": "7QXUYOnV", "currencyNamespace": "W7xXGxma", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1987-07-10T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1979-03-14T00:00:00Z", "discountedPrice": 11, "expireAt": "1992-07-01T00:00:00Z", "price": 86, "purchaseAt": "1987-10-30T00:00:00Z", "trialPrice": 9}], "kVd0iiu1": [{"currencyCode": "eKdSmjqr", "currencyNamespace": "4pmxrgcv", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1988-08-01T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1984-10-14T00:00:00Z", "discountedPrice": 8, "expireAt": "1974-06-05T00:00:00Z", "price": 90, "purchaseAt": "1978-03-10T00:00:00Z", "trialPrice": 91}, {"currencyCode": "CWuu4SPc", "currencyNamespace": "HO7snrRh", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1983-04-03T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1986-10-11T00:00:00Z", "discountedPrice": 50, "expireAt": "1997-09-23T00:00:00Z", "price": 35, "purchaseAt": "1993-11-25T00:00:00Z", "trialPrice": 72}, {"currencyCode": "r3JyTyyM", "currencyNamespace": "KChajyQA", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1972-10-10T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1991-07-30T00:00:00Z", "discountedPrice": 61, "expireAt": "1974-06-28T00:00:00Z", "price": 17, "purchaseAt": "1987-04-24T00:00:00Z", "trialPrice": 50}]}, "seasonType": "PASS", "sku": "TwiBWSnQ", "stackable": true, "status": "ACTIVE", "tags": ["UtXlGl4k", "L3R31mqU", "LN0J4AfX"], "targetCurrencyCode": "bdUR1ia8", "targetNamespace": "8IYaKuUZ", "thumbnailUrl": "rrqJBbOS", "useCount": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateItem' test.out

#- 87 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'axWGvZGP' \
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
    'GE9zaM4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetItemBySku' test.out

#- 91 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'oj4uko3S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetLocaleItemBySku' test.out

#- 92 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'x682CcRa' \
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
    'Erx240v9' \
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
    '4xXavtjB' \
    --body '{"itemIds": ["bTG5o5sF", "jbGxMgH6", "No34AIfy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'ValidateItemPurchaseCondition' test.out

#- 97 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'DCCAFCI2' \
    'dyJUiVnH' \
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
    'AAWzUvTq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetItem' test.out

#- 100 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'QX5ZwcHy' \
    'EErre4Sm' \
    --body '{"appId": "bganxps4", "appType": "DEMO", "baseAppId": "MNVPkboc", "boothName": "b4jAyS45", "categoryPath": "XV8fYvYh", "clazz": "jZACDXsk", "displayOrder": 56, "entitlementType": "CONSUMABLE", "ext": {"RQKmVgVz": {}, "lIwR6fFd": {}, "JDN26cVg": {}}, "features": ["mhFktn7v", "eelllMsM", "VI9FZYjH"], "images": [{"as": "0vKvvpaC", "caption": "wSY8lWy4", "height": 63, "imageUrl": "3dWmZt0X", "smallImageUrl": "mjIq34kH", "width": 39}, {"as": "78V8XvSk", "caption": "nqSSCcPM", "height": 5, "imageUrl": "W7zn8dIZ", "smallImageUrl": "duhMnr0q", "width": 39}, {"as": "OBTJzg3L", "caption": "p6Qzvmjg", "height": 46, "imageUrl": "pKH7XHUD", "smallImageUrl": "GnxARrwq", "width": 72}], "itemIds": ["mNrNyIo1", "KgdEYJRY", "VSd8mURK"], "itemQty": {"LWrfPJYa": 93, "dOoDYV66": 23, "3Wo5a2lx": 66}, "itemType": "OPTIONBOX", "listable": false, "localizations": {"eOEKkMM2": {"description": "W5yGV01U", "localExt": {"5tfKLVsn": {}, "MnfUypJK": {}, "YCZ6JPST": {}}, "longDescription": "9a25xOzP", "title": "N1uVAQTu"}, "wc71pRRk": {"description": "XCeWlk1e", "localExt": {"32jjIvss": {}, "lDAAphEo": {}, "AKNf7jlt": {}}, "longDescription": "GJssomRD", "title": "wkSFY5E2"}, "jH9FO67D": {"description": "9PuVo9DC", "localExt": {"86xLk8xb": {}, "WEiGFvHm": {}, "K4uFgEHu": {}}, "longDescription": "Dv43x6TJ", "title": "BpiCMVjD"}}, "lootBoxConfig": {"rewardCount": 82, "rewards": [{"lootBoxItems": [{"count": 69, "itemId": "WRuUCjH7", "itemSku": "xUPCtEVW", "itemType": "061LBLjV"}, {"count": 8, "itemId": "3ttGiZ31", "itemSku": "bq4OVM3y", "itemType": "ubM0D3bl"}, {"count": 30, "itemId": "rNel79CC", "itemSku": "5NOmVv7G", "itemType": "vwwI8qpL"}], "name": "N5XEfKvc", "odds": 0.38848194995680774, "type": "REWARD_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 35, "itemId": "qHt8Oj0C", "itemSku": "6k4IiaO9", "itemType": "EQQolGZv"}, {"count": 5, "itemId": "TuACDfmp", "itemSku": "yNVxHTTI", "itemType": "y7cxBfSt"}, {"count": 38, "itemId": "8rlX9hCD", "itemSku": "l9q8EMfj", "itemType": "RxALTOwX"}], "name": "56qfzNxt", "odds": 0.5916574857320562, "type": "REWARD", "weight": 83}, {"lootBoxItems": [{"count": 12, "itemId": "7LUWstAL", "itemSku": "jJw8M0KM", "itemType": "D7vDKpQJ"}, {"count": 28, "itemId": "caVavDrN", "itemSku": "DbxW8e7S", "itemType": "lrWnZlf1"}, {"count": 61, "itemId": "FXZYSHoE", "itemSku": "kQNyPA4L", "itemType": "5765D9PC"}], "name": "jxGcluMK", "odds": 0.037052321356974116, "type": "REWARD", "weight": 29}], "rollFunction": "DEFAULT"}, "maxCount": 97, "maxCountPerUser": 74, "name": "8w0Sxr3L", "optionBoxConfig": {"boxItems": [{"count": 79, "itemId": "iwJRyFnj", "itemSku": "qvimTKln", "itemType": "Z0Iz7Gi3"}, {"count": 58, "itemId": "wcD0GMkr", "itemSku": "D5e4VNi0", "itemType": "yzx0zfaa"}, {"count": 62, "itemId": "uS0cAh8s", "itemSku": "7Y90NtfZ", "itemType": "8tq6cLIO"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 40, "fixedTrialCycles": 19, "graceDays": 55}, "regionData": {"moMyHRGV": [{"currencyCode": "tIxhywbg", "currencyNamespace": "86P4wRdw", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1986-03-29T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1980-11-25T00:00:00Z", "discountedPrice": 17, "expireAt": "1976-12-14T00:00:00Z", "price": 95, "purchaseAt": "1998-12-23T00:00:00Z", "trialPrice": 87}, {"currencyCode": "hU4lhoIZ", "currencyNamespace": "IyhssR4B", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1983-07-20T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1988-03-13T00:00:00Z", "discountedPrice": 30, "expireAt": "1988-03-10T00:00:00Z", "price": 63, "purchaseAt": "1990-09-26T00:00:00Z", "trialPrice": 48}, {"currencyCode": "HkUBt9mu", "currencyNamespace": "oWUOqaM8", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1982-11-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1995-02-14T00:00:00Z", "discountedPrice": 91, "expireAt": "1994-05-13T00:00:00Z", "price": 69, "purchaseAt": "1983-03-04T00:00:00Z", "trialPrice": 65}], "plau2YU9": [{"currencyCode": "RtYS7EeM", "currencyNamespace": "FegnQ7FZ", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1988-01-06T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1988-12-30T00:00:00Z", "discountedPrice": 12, "expireAt": "1980-04-17T00:00:00Z", "price": 63, "purchaseAt": "1996-05-25T00:00:00Z", "trialPrice": 99}, {"currencyCode": "pyyPgwWj", "currencyNamespace": "BrslhbSo", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1977-08-06T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1996-06-27T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-06-27T00:00:00Z", "price": 77, "purchaseAt": "1978-08-04T00:00:00Z", "trialPrice": 80}, {"currencyCode": "VNBgICcZ", "currencyNamespace": "tkehEv0O", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1988-02-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-11-02T00:00:00Z", "discountedPrice": 45, "expireAt": "1999-01-19T00:00:00Z", "price": 21, "purchaseAt": "1994-04-13T00:00:00Z", "trialPrice": 86}], "PXnTpHNK": [{"currencyCode": "j2iCiNPt", "currencyNamespace": "lXINrAdn", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1982-08-16T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1989-06-07T00:00:00Z", "discountedPrice": 84, "expireAt": "1990-08-30T00:00:00Z", "price": 6, "purchaseAt": "1972-01-29T00:00:00Z", "trialPrice": 68}, {"currencyCode": "xwQLZ1yM", "currencyNamespace": "pX2FCHPN", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1973-09-28T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1973-11-29T00:00:00Z", "discountedPrice": 76, "expireAt": "1974-05-14T00:00:00Z", "price": 42, "purchaseAt": "1981-10-07T00:00:00Z", "trialPrice": 95}, {"currencyCode": "ZXjXxbb2", "currencyNamespace": "mqenvchE", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1971-12-15T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1973-07-11T00:00:00Z", "discountedPrice": 40, "expireAt": "1975-12-06T00:00:00Z", "price": 70, "purchaseAt": "1987-01-03T00:00:00Z", "trialPrice": 45}]}, "seasonType": "TIER", "sku": "4JvYWxfk", "stackable": false, "status": "INACTIVE", "tags": ["q5ewp6M7", "azc2EHBh", "U27J7Xqh"], "targetCurrencyCode": "3YtMnBWn", "targetNamespace": "BiT4Fdpf", "thumbnailUrl": "4JDm3kdG", "useCount": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateItem' test.out

#- 101 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'PuOMffmA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeleteItem' test.out

#- 102 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'AiElmIUR' \
    --body '{"count": 39, "orderNo": "hnKugAyp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'AcquireItem' test.out

#- 103 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'SJGsfxCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetApp' test.out

#- 104 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'elkUeHGm' \
    'irWLfPmM' \
    --body '{"carousel": [{"alt": "0QwMpB1M", "previewUrl": "Xfh1yd5q", "thumbnailUrl": "zlpEMLzW", "type": "video", "url": "8iBxiUaS", "videoSource": "youtube"}, {"alt": "EixEnnbK", "previewUrl": "a82rAvgj", "thumbnailUrl": "j6zQdjqZ", "type": "image", "url": "m8gZWMmP", "videoSource": "youtube"}, {"alt": "a3eH94s0", "previewUrl": "T9mJysnE", "thumbnailUrl": "SAz3Z9a5", "type": "image", "url": "XiAKM3RY", "videoSource": "generic"}], "developer": "ybxo8Kkn", "forumUrl": "X8SbFcWj", "genres": ["Simulation", "Simulation", "FreeToPlay"], "localizations": {"a9qXN968": {"announcement": "sgrep0Ys", "slogan": "sLkW4vGy"}, "mPW05uyT": {"announcement": "PNPHKomU", "slogan": "fWGcG8Da"}, "YBrIGtSw": {"announcement": "61VVSNND", "slogan": "JAaFhaOg"}}, "platformRequirements": {"kthAAls6": [{"additionals": "iCehEHko", "directXVersion": "8VVfWNUX", "diskSpace": "KoaYiQTE", "graphics": "t6YIMo0d", "label": "iM1vyWNO", "osVersion": "w6HdfpW9", "processor": "XUVu6b3I", "ram": "Ng0p8Jxk", "soundCard": "F8LCzQLn"}, {"additionals": "kw8lkPON", "directXVersion": "aEmPLhWp", "diskSpace": "oHqGsOSs", "graphics": "clK8kcx9", "label": "sMeUoanA", "osVersion": "ETAsuGyG", "processor": "UqqvMe9G", "ram": "poL8hLJv", "soundCard": "HVUSWn3b"}, {"additionals": "A4ymxCA2", "directXVersion": "iHsOX2na", "diskSpace": "X0cqrAmq", "graphics": "hhAbJNSy", "label": "NySOF4aI", "osVersion": "RAQHuHiV", "processor": "OjZgYt13", "ram": "B0ujqH0K", "soundCard": "hxNHaaDM"}], "CMCtDals": [{"additionals": "KJgxK7bJ", "directXVersion": "Sy9aG1Uz", "diskSpace": "X8b1S2f1", "graphics": "wepkiaE8", "label": "ThBoXjV8", "osVersion": "o04gJo4D", "processor": "3zrhoI6D", "ram": "fxeQfHpd", "soundCard": "AQOYZiFV"}, {"additionals": "BPF1moIu", "directXVersion": "cnVCkNs4", "diskSpace": "SZdOG5xI", "graphics": "6MIzLzmJ", "label": "8qWN11z2", "osVersion": "FQxzEy3C", "processor": "tbgOktcR", "ram": "CCVBPp5y", "soundCard": "GA9uAPJ6"}, {"additionals": "oISpXFqh", "directXVersion": "7oHrZco7", "diskSpace": "GCwQrl2d", "graphics": "T6Xic3zt", "label": "25hjzKU5", "osVersion": "7I0qJkMu", "processor": "7I0jAkDj", "ram": "tYLyOjdA", "soundCard": "MuqTEdq3"}], "3f3dXupr": [{"additionals": "uXGwrxYv", "directXVersion": "asViligG", "diskSpace": "20YRPpE7", "graphics": "y00GjSXM", "label": "1kA5oeMA", "osVersion": "CjbILR3l", "processor": "JEZUEHJj", "ram": "GpZ0qtjL", "soundCard": "L69wfkSi"}, {"additionals": "1kbh0pNV", "directXVersion": "ln4Y4ATG", "diskSpace": "TdjDQj8a", "graphics": "4t15Nv3N", "label": "htrk9Ycp", "osVersion": "sPmcfuGv", "processor": "WglaMKVV", "ram": "gtgn4Kgw", "soundCard": "TfOvTo7y"}, {"additionals": "k6DBf17T", "directXVersion": "1XXCuKXH", "diskSpace": "DaYoop5g", "graphics": "yJXSXqsC", "label": "w5Kkb0LK", "osVersion": "pfN3FNYq", "processor": "y3haSddl", "ram": "zPvwqdbl", "soundCard": "UR88nbT9"}]}, "platforms": ["Linux", "Android", "Linux"], "players": ["MMO", "CrossPlatformMulti", "Coop"], "primaryGenre": "Action", "publisher": "icqP4Poz", "releaseDate": "1994-04-11T00:00:00Z", "websiteUrl": "uMk6zr8R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'UpdateApp' test.out

#- 105 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'XSpvCsIn' \
    'Znut6j06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'DisableItem' test.out

#- 106 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'yUkp7uy3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemDynamicData' test.out

#- 107 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'UCmJLf28' \
    'snR2rXbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'EnableItem' test.out

#- 108 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'D2W0jrnV' \
    'Mmp9bcLH' \
    'WWlodfjB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'FeatureItem' test.out

#- 109 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'uWAZ0fDV' \
    'ShlNxcUG' \
    'POq35uCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'DefeatureItem' test.out

#- 110 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'gZXANz1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetLocaleItem' test.out

#- 111 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'xWbXnsSF' \
    'Jc3VGo42' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 46, "comparison": "isNot", "name": "S6vw6UXa", "predicateType": "EntitlementPredicate", "value": "NbP5saMh", "values": ["ic8x54MB", "DdWvTxLQ", "kk3jPOri"]}, {"anyOf": 54, "comparison": "includes", "name": "kslDA0Yf", "predicateType": "SeasonTierPredicate", "value": "JIT56u8D", "values": ["CYooqa7E", "42c3O5W1", "C76y0eZt"]}, {"anyOf": 46, "comparison": "isLessThan", "name": "21QdbcIt", "predicateType": "EntitlementPredicate", "value": "S1XwzEbS", "values": ["iq0664xl", "uxeTjGDj", "odnfp9oN"]}]}, {"operator": "or", "predicates": [{"anyOf": 97, "comparison": "includes", "name": "TJrjtvKg", "predicateType": "SeasonPassPredicate", "value": "rBbU3g07", "values": ["hm2CGD0p", "R1C5Tsol", "iUQpfuG5"]}, {"anyOf": 25, "comparison": "isGreaterThanOrEqual", "name": "KZE7I92i", "predicateType": "SeasonTierPredicate", "value": "DKehey7Z", "values": ["sLRtZrT0", "DkxUlfSl", "HttrtLLl"]}, {"anyOf": 85, "comparison": "isLessThan", "name": "wExpYu51", "predicateType": "EntitlementPredicate", "value": "cAnQfMjX", "values": ["CNRiZlf3", "1ce2QsXx", "xBs56jY8"]}]}, {"operator": "or", "predicates": [{"anyOf": 90, "comparison": "isLessThan", "name": "nQHcJRLY", "predicateType": "SeasonPassPredicate", "value": "obQVVeTw", "values": ["qiblIoYD", "KdzdhOtl", "aEKIxn8b"]}, {"anyOf": 19, "comparison": "excludes", "name": "cjcuHgJn", "predicateType": "EntitlementPredicate", "value": "PujYfYbf", "values": ["WtZejat3", "zGPp3oQq", "JOB7nAyS"]}, {"anyOf": 8, "comparison": "isNot", "name": "eOx44lCo", "predicateType": "SeasonPassPredicate", "value": "RVDzT9n8", "values": ["kYgPJMoB", "NQeaJ6AS", "pBIH3E9j"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'UpdateItemPurchaseCondition' test.out

#- 112 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'eZ6Qz2kV' \
    --body '{"orderNo": "aLRgLOxJ"}' \
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
    --body '{"description": "2jH16zM6", "name": "VFVxTJ3a", "status": "ACTIVE", "tags": ["OSERTPij", "p6wJ6dBY", "gSoUqbcG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'CreateKeyGroup' test.out

#- 115 GetKeyGroupByBoothName
eval_tap 0 115 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 116 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'veXMredg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'GetKeyGroup' test.out

#- 117 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'brWAnAgn' \
    --body '{"description": "iBgM16Gr", "name": "wXTSvaAs", "status": "INACTIVE", "tags": ["5qMXNRgC", "bNdgcoZ8", "sPQy3yoE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'UpdateKeyGroup' test.out

#- 118 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'OMJ6ENGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'GetKeyGroupDynamic' test.out

#- 119 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'U908Lz4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'ListKeys' test.out

#- 120 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'yPtGnyQu' \
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
    'ha66Q3AS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetOrder' test.out

#- 124 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'tv8kbfJ6' \
    --body '{"description": "jEQBp7im"}' \
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
    --body '{"dryRun": false, "notifyUrl": "lonpQ5IH", "privateKey": "i3GP3ONP"}' \
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
    --body '{"currencyCode": "33tPXpkz", "currencyNamespace": "MizIuF51", "customParameters": {"rJ60K5Up": {}, "b9AXjVSY": {}, "WFB4KZWE": {}}, "description": "EVEV0bXj", "extOrderNo": "R51xjkrl", "extUserId": "ak4eSIds", "itemType": "LOOTBOX", "language": "zo_qGFL_037", "metadata": {"bHVQqQRH": "q1Q0rNHA", "AX6Ou4mr": "DXbzPFWQ", "E8LIJz7P": "6K2BaSVU"}, "notifyUrl": "oD60CQhe", "omitNotification": true, "platform": "YHS0WbNP", "price": 35, "recurringPaymentOrderNo": "mk376evc", "region": "GdlDaiAP", "returnUrl": "EAdgmb6i", "sandbox": true, "sku": "m3tDrcqc", "subscriptionId": "Em3ZUA29", "targetNamespace": "kUB1pvFw", "targetUserId": "oANNERdt", "title": "MHRB441q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'CreatePaymentOrderByDedicated' test.out

#- 130 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'I384y14i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ListExtOrderNoByExtTxId' test.out

#- 131 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '8rekUw4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'GetPaymentOrder' test.out

#- 132 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'F2QEO8Od' \
    --body '{"extTxId": "YTOn68Ed", "paymentMethod": "viZ5QSZo", "paymentProvider": "ALIPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ChargePaymentOrder' test.out

#- 133 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '0yz5VKjR' \
    --body '{"description": "FGyEw2pQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'RefundPaymentOrderByDedicated' test.out

#- 134 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'rhTeQSDG' \
    --body '{"amount": 3, "currencyCode": "FIH0w1oc", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 56, "vat": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'SimulatePaymentOrderNotification' test.out

#- 135 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'svTzZgxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'GetPaymentOrderChargeStatus' test.out

#- 136 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetPlatformWalletConfig' test.out

#- 137 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["System", "Twitch", "Stadia"]}' \
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
    --body '{"description": "wMLViasW", "eventTopic": "iqHI9Avu", "maxAwarded": 8, "maxAwardedPerUser": 26, "namespaceExpression": "sMkLTpJE", "rewardCode": "Qa5n9Lqk", "rewardConditions": [{"condition": "tncfRbrz", "conditionName": "zoYISTOG", "eventName": "QUqLa3BT", "rewardItems": [{"duration": 1, "itemId": "ZsEHXyL2", "quantity": 51}, {"duration": 49, "itemId": "RqgJAlAD", "quantity": 70}, {"duration": 72, "itemId": "oAxpI3IG", "quantity": 38}]}, {"condition": "xHz1GSVI", "conditionName": "0ofUpFyg", "eventName": "ytfb1FiD", "rewardItems": [{"duration": 76, "itemId": "6FGwEMZc", "quantity": 70}, {"duration": 7, "itemId": "TYjc8Aob", "quantity": 31}, {"duration": 16, "itemId": "zJiLABM0", "quantity": 38}]}, {"condition": "nc40K95J", "conditionName": "377GqxCN", "eventName": "K34rMmd5", "rewardItems": [{"duration": 19, "itemId": "XUcScmod", "quantity": 5}, {"duration": 16, "itemId": "DS5zpUFp", "quantity": 26}, {"duration": 1, "itemId": "O7hrc64m", "quantity": 8}]}], "userIdExpression": "oTxMGkIR"}' \
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
    'j6USl5dr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetReward' test.out

#- 144 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'z0OgFpGw' \
    --body '{"description": "JnWzuIPW", "eventTopic": "5S8b212S", "maxAwarded": 80, "maxAwardedPerUser": 90, "namespaceExpression": "3OTSueuK", "rewardCode": "RpDxfLfb", "rewardConditions": [{"condition": "wOwcdgQD", "conditionName": "BnxHLhz7", "eventName": "iWVEh6Tl", "rewardItems": [{"duration": 3, "itemId": "IrOZ7qk5", "quantity": 81}, {"duration": 40, "itemId": "X6dlHJhi", "quantity": 32}, {"duration": 81, "itemId": "ODvhb1JW", "quantity": 76}]}, {"condition": "uBRzEF9B", "conditionName": "jTaHlWup", "eventName": "evFvUiCf", "rewardItems": [{"duration": 58, "itemId": "72eK1dd3", "quantity": 84}, {"duration": 47, "itemId": "B8X4Uigf", "quantity": 6}, {"duration": 2, "itemId": "mnlPAloI", "quantity": 85}]}, {"condition": "MVOwsBA0", "conditionName": "HsuZUGr4", "eventName": "IIHHVX0a", "rewardItems": [{"duration": 47, "itemId": "PbSU9WOj", "quantity": 46}, {"duration": 48, "itemId": "4CcmSFMP", "quantity": 88}, {"duration": 95, "itemId": "SShDpUxZ", "quantity": 52}]}], "userIdExpression": "fR3TtcxW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateReward' test.out

#- 145 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'vFBhWVvT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteReward' test.out

#- 146 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'stoP6FyP' \
    --body '{"payload": {"UMTWGyMR": {}, "QbR2mzBg": {}, "pflk5QDQ": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'CheckEventCondition' test.out

#- 147 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'ukledkia' \
    --body '{"conditionName": "lyCzSZo5", "userId": "BClQXZEP"}' \
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
    'mILjFetv' \
    --body '{"active": false, "displayOrder": 30, "endDate": "1992-12-19T00:00:00Z", "ext": {"kncCTFaY": {}, "GPapgK4k": {}, "6vusFPv7": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 72, "itemCount": 18, "rule": "SEQUENCE"}, "items": [{"id": "MSPRQvCp", "sku": "9MnIiXqV"}, {"id": "r9dOCh7j", "sku": "79GvE8mk"}, {"id": "8WZ7P15c", "sku": "RPWvHqlX"}], "localizations": {"Tm3Dk64t": {"description": "unVhsJrF", "localExt": {"lyZAVJ1P": {}, "ji6yEQra": {}, "KbPK6FwS": {}}, "longDescription": "GH6rW7TH", "title": "mUZt2RaG"}, "Z6iH8y2U": {"description": "BOCY9lst", "localExt": {"ox8if0Ds": {}, "I4ICThus": {}, "CJ0hU5Zu": {}}, "longDescription": "2aSke5Vd", "title": "8Oyi23z7"}, "76bq1JGH": {"description": "SeSQeZBu", "localExt": {"8n1Slqna": {}, "XYQyJ7wF": {}, "YRBd5wet": {}}, "longDescription": "CBZgN40K", "title": "jn2TbQTT"}}, "name": "mQkRf5OV", "rotationType": "CUSTOM", "startDate": "1979-07-15T00:00:00Z", "viewId": "OOuNZpWH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreateSection' test.out

#- 150 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'X3Z7ZYVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'PurgeExpiredSection' test.out

#- 151 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'dpBH8X3c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetSection' test.out

#- 152 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'KlFNflF8' \
    'mkChz41D' \
    --body '{"active": false, "displayOrder": 28, "endDate": "1997-10-18T00:00:00Z", "ext": {"GOdpwOsV": {}, "aPy1GrrU": {}, "XDOTZzUH": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 43, "itemCount": 17, "rule": "SEQUENCE"}, "items": [{"id": "XPJcLlXY", "sku": "cK5Tqn7q"}, {"id": "93u1I8yS", "sku": "eHKdOl1S"}, {"id": "9jYPtcsq", "sku": "t5VnJ2e4"}], "localizations": {"0Kn2JtFH": {"description": "fudnjkiG", "localExt": {"i1wbjqhs": {}, "2CxGhQnK": {}, "IXcQmf7A": {}}, "longDescription": "Sd0JdBPP", "title": "bQorceh2"}, "ECDkOmNk": {"description": "d7JUt0rn", "localExt": {"7kJoRzXB": {}, "DbyeYjuV": {}, "gevrDYWl": {}}, "longDescription": "Mv45sooN", "title": "hi6aQWBy"}, "VPxpDh19": {"description": "PIXdD2yx", "localExt": {"fL1Fnf1k": {}, "LKnisKsq": {}, "CXazVfGv": {}}, "longDescription": "eipXkCDm", "title": "LLeuSJNS"}}, "name": "ZtO6R4xP", "rotationType": "FIXED_PERIOD", "startDate": "1999-06-13T00:00:00Z", "viewId": "3ocScIIE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSection' test.out

#- 153 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'UpTgwzAY' \
    'KUIFNT9n' \
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
    --body '{"defaultLanguage": "tJw3u6L0", "defaultRegion": "wcSGlTyr", "description": "OJKT0IpV", "supportedLanguages": ["Qt0IHZAG", "HV61wXvC", "Mt0WZtrI"], "supportedRegions": ["mx1UKHqH", "RLiKMUg4", "BLHTN5SN"], "title": "zlnfKZqP"}' \
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
    '5eIgsjs8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetStore' test.out

#- 162 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'LNCk6B01' \
    --body '{"defaultLanguage": "uVlkAKZv", "defaultRegion": "KgOv5Vpx", "description": "iOtpEGWY", "supportedLanguages": ["FMAoUBFh", "oDK2Bs5l", "MTuj0uPB"], "supportedRegions": ["raYnTNRF", "wuEOe8kB", "SR1fZsWG"], "title": "7R7L6Z0m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateStore' test.out

#- 163 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '20sgXYQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteStore' test.out

#- 164 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'JwxW7c8E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryChanges' test.out

#- 165 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'Xl5acpWA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'PublishAll' test.out

#- 166 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'c9RtQ5xj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'PublishSelected' test.out

#- 167 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'nZnL4OQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'SelectAllRecords' test.out

#- 168 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '1kKqhWbf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'GetStatistic' test.out

#- 169 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '0dcwOCVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'UnselectAllRecords' test.out

#- 170 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'n99O43OE' \
    'uvN2Hxuk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'SelectRecord' test.out

#- 171 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'NozZgE8F' \
    '19Gp6GkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnselectRecord' test.out

#- 172 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '9adEfab2' \
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
    'VXiaQShb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'RecurringChargeSubscription' test.out

#- 176 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'xLYT8rf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'GetTicketDynamic' test.out

#- 177 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'aPuXuDs3' \
    --body '{"orderNo": "2ySBTwsW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'DecreaseTicketSale' test.out

#- 178 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'UaavEwcw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'GetTicketBoothID' test.out

#- 179 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'DWo5Q0d3' \
    --body '{"count": 38, "orderNo": "BNIfvjk4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'IncreaseTicketSale' test.out

#- 180 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    '0kjPZLpH' \
    --body '{"achievements": [{"id": "SQC3AY2B", "value": 12}, {"id": "T3Z1tPD0", "value": 62}, {"id": "qUxfLDpW", "value": 49}], "steamUserId": "JNfspQJ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'UnlockSteamUserAchievement' test.out

#- 181 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'FgNDBGHA' \
    '3D7qQFdT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetXblUserAchievements' test.out

#- 182 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'au49YSxR' \
    --body '{"achievements": [{"id": "nCAJF8lu", "percentComplete": 7}, {"id": "CPSn5dvE", "percentComplete": 37}, {"id": "z0YOvXkM", "percentComplete": 19}], "serviceConfigId": "N9ebDMIS", "titleId": "aNzfLuqm", "xboxUserId": "ZQa23xQQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateXblUserAchievement' test.out

#- 183 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'f3ccJWLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AnonymizeCampaign' test.out

#- 184 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'N46AYbH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AnonymizeEntitlement' test.out

#- 185 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'G49GLUXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AnonymizeFulfillment' test.out

#- 186 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'Ehv9gNGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AnonymizeIntegration' test.out

#- 187 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'DSsRAwpv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AnonymizeOrder' test.out

#- 188 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'yu1Cu7HZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AnonymizePayment' test.out

#- 189 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'wFGLesoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AnonymizeSubscription' test.out

#- 190 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'bAydyIXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AnonymizeWallet' test.out

#- 191 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '9Pnfl4Yo' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserDLC' test.out

#- 192 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'L0WdrlKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'QueryUserEntitlements' test.out

#- 193 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'lSvjwdA4' \
    --body '[{"endDate": "1990-04-03T00:00:00Z", "grantedCode": "uD6lqzDR", "itemId": "lOJwIat8", "itemNamespace": "WXVkWrFp", "language": "ImY_rmZs", "quantity": 25, "region": "VZYzXtUR", "source": "PROMOTION", "startDate": "1974-11-13T00:00:00Z", "storeId": "gUBLSWHX"}, {"endDate": "1979-08-18T00:00:00Z", "grantedCode": "hiKWPMsV", "itemId": "t4GceYyH", "itemNamespace": "IEhwdulp", "language": "ImHs-nvqo-630", "quantity": 90, "region": "FfkUex9d", "source": "ACHIEVEMENT", "startDate": "1986-04-28T00:00:00Z", "storeId": "j0S4Mjve"}, {"endDate": "1987-01-01T00:00:00Z", "grantedCode": "6L0VMcQL", "itemId": "DDO5GuOc", "itemNamespace": "s6rjtfV6", "language": "eOhl", "quantity": 77, "region": "wJSWvz55", "source": "PROMOTION", "startDate": "1992-07-16T00:00:00Z", "storeId": "Hu3Q9gj0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GrantUserEntitlement' test.out

#- 194 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '03RRYTz1' \
    'qEds4Lro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserAppEntitlementByAppId' test.out

#- 195 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'vW5159O6' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'QueryUserEntitlementsByAppType' test.out

#- 196 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'XoWNuigS' \
    'WO047C8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'GetUserEntitlementByItemId' test.out

#- 197 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'gtQbMa2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserActiveEntitlementsByItemIds' test.out

#- 198 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'E3LQoiDC' \
    '1UKLv59T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'GetUserEntitlementBySku' test.out

#- 199 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'Og7EKKfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ExistsAnyUserActiveEntitlement' test.out

#- 200 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'YEjDBFdZ' \
    '["kJlfYAxl", "yFNctHtH", "LjWCeJHf"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 201 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'r06ANdye' \
    'mkbjWqCt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 202 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '3iIXc0JV' \
    '4AfeuAfm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementOwnershipByItemId' test.out

#- 203 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'ku1IsWAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'GetUserEntitlementOwnershipByItemIds' test.out

#- 204 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'h4D0VMoM' \
    'S6hGZbf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetUserEntitlementOwnershipBySku' test.out

#- 205 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'Mfyexkbi' \
    'oqEz11IC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RevokeUserEntitlements' test.out

#- 206 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '6Tz1x4J9' \
    'hONqSYcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'GetUserEntitlement' test.out

#- 207 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'I4tu4OeR' \
    'pt0Xkizx' \
    --body '{"endDate": "1998-08-13T00:00:00Z", "nullFieldList": ["LQ8EMdYC", "2eE8MqmH", "6CJCE55d"], "startDate": "1995-12-15T00:00:00Z", "status": "ACTIVE", "useCount": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'UpdateUserEntitlement' test.out

#- 208 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'SZpdK1xn' \
    'T1TCRqXO' \
    --body '{"options": ["WxxS4QBq", "0dHKOK8a", "pHIRIrX1"], "requestId": "EZNcRhqN", "useCount": 86}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'ConsumeUserEntitlement' test.out

#- 209 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '1CHS6ooS' \
    'nOsrFRO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'DisableUserEntitlement' test.out

#- 210 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'vhKooeuy' \
    'iluL9q1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'EnableUserEntitlement' test.out

#- 211 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'q186ldUh' \
    'M8Q6FGq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'GetUserEntitlementHistories' test.out

#- 212 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'lt8Razhx' \
    'tRGjWHc6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserEntitlement' test.out

#- 213 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'C3RA1hgn' \
    --body '{"duration": 25, "endDate": "1996-08-19T00:00:00Z", "itemId": "ic2XpQhR", "itemSku": "UZOgOwpl", "language": "kwMSzlvS", "order": {"currency": {"currencyCode": "454coEGK", "currencySymbol": "pbt1icei", "currencyType": "REAL", "decimals": 88, "namespace": "yx9mfEIt"}, "ext": {"ALkAmhEC": {}, "YVxK2LMj": {}, "6CTWcYYc": {}}, "free": true}, "orderNo": "164bljlV", "origin": "GooglePlay", "quantity": 60, "region": "us32J3V4", "source": "DLC", "startDate": "1995-05-26T00:00:00Z", "storeId": "6gweeeFh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'FulfillItem' test.out

#- 214 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'A47CCGIH' \
    --body '{"code": "y8QvMKXR", "language": "Ut-207", "region": "twWEyaf0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'RedeemCode' test.out

#- 215 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'aRz0TK5F' \
    --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "YQ5EKKda", "namespace": "HN4cd65l"}, "item": {"itemId": "1CAP1b95", "itemSku": "iAZyrxS3", "itemType": "HVjgb3eN"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "DmJPoEmd", "namespace": "dEGFA2ix"}, "item": {"itemId": "099ZlnhK", "itemSku": "bfay6P9y", "itemType": "fpVsRE4N"}, "quantity": 42, "type": "ITEM"}, {"currency": {"currencyCode": "JNcSR2fc", "namespace": "tLhMQA5L"}, "item": {"itemId": "VEBCeSo9", "itemSku": "o5UJdMaF", "itemType": "J6Tp0tgc"}, "quantity": 0, "type": "ITEM"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'FulfillRewards' test.out

#- 216 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'F0taWWAk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'QueryUserIAPOrders' test.out

#- 217 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'YXx4WT3o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'QueryAllUserIAPOrders' test.out

#- 218 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'luPCS31J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserIAPConsumeHistory' test.out

#- 219 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'ZUj7E54g' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "CYl_ajKb", "productId": "GlJBwGPa", "region": "ZvCxH7Ak", "type": "EPICGAMES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'MockFulfillIAPItem' test.out

#- 220 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'TegA120x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserOrders' test.out

#- 221 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'SKaMnyEl' \
    --body '{"currencyCode": "UfQ6B8D5", "currencyNamespace": "eDw5UdBu", "discountedPrice": 96, "ext": {"nyDHLV5P": {}, "Jtypd1qn": {}, "5nVli1pD": {}}, "itemId": "bml0Orxk", "language": "oPc6Clho", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 32, "quantity": 11, "region": "iIf8X02A", "returnUrl": "uOHxcFED", "sandbox": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminCreateUserOrder' test.out

#- 222 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'qpnA3Ncd' \
    'ObbEHZYf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'CountOfPurchasedItem' test.out

#- 223 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'uroa7zBS' \
    'js24m9ub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserOrder' test.out

#- 224 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'qRiN9aKf' \
    'v9hal1OA' \
    --body '{"status": "CHARGED", "statusReason": "wYox5fBW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'UpdateUserOrderStatus' test.out

#- 225 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'OVdOjk0T' \
    'xuy8OXOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'FulfillUserOrder' test.out

#- 226 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'Hvmg4Hel' \
    'W4ciG9Wz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserOrderGrant' test.out

#- 227 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'whE8SIiw' \
    'FYVfKQA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserOrderHistories' test.out

#- 228 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'eZ0sz1IY' \
    'RP6eV68G' \
    --body '{"additionalData": {"cardSummary": "CErSvOZM"}, "authorisedTime": "1990-05-13T00:00:00Z", "chargebackReversedTime": "1985-12-20T00:00:00Z", "chargebackTime": "1993-04-03T00:00:00Z", "chargedTime": "1988-09-10T00:00:00Z", "createdTime": "1994-04-13T00:00:00Z", "currency": {"currencyCode": "nrlf5XBh", "currencySymbol": "y2QLQEj6", "currencyType": "VIRTUAL", "decimals": 71, "namespace": "VFUTbwIV"}, "customParameters": {"IBVDscfl": {}, "pfZynLTm": {}, "dENL7rj8": {}}, "extOrderNo": "l7cRSt3M", "extTxId": "gCfm64jC", "extUserId": "eF2uoH9L", "issuedAt": "1993-02-18T00:00:00Z", "metadata": {"YSDRZ7Ui": "Gn2wRer9", "Y3KTnoCN": "ayKjCwpn", "ZOQtZrka": "VBQlVghR"}, "namespace": "pOvKTl7Q", "nonceStr": "jBI5JiHZ", "paymentMethod": "TMABSLFd", "paymentMethodFee": 25, "paymentOrderNo": "8yc7lXJV", "paymentProvider": "WALLET", "paymentProviderFee": 69, "paymentStationUrl": "PC46rUAr", "price": 51, "refundedTime": "1997-05-13T00:00:00Z", "salesTax": 46, "sandbox": true, "sku": "OrPYndTI", "status": "REFUNDED", "statusReason": "eqzW3utP", "subscriptionId": "jNLZc2a1", "subtotalPrice": 59, "targetNamespace": "3wKrULiu", "targetUserId": "tqQc1117", "tax": 83, "totalPrice": 78, "totalTax": 82, "txEndTime": "1993-08-09T00:00:00Z", "type": "zcf9nCCE", "userId": "IIqZPHsR", "vat": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'ProcessUserOrderNotification' test.out

#- 229 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'nKKV3AZ7' \
    'JUeI9a23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'DownloadUserOrderReceipt' test.out

#- 230 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'MHdAVdO1' \
    --body '{"currencyCode": "Wtsde1UP", "currencyNamespace": "dJeWDXjM", "customParameters": {"1DRnauGr": {}, "lVY4pPQ4": {}, "u4Cihv8i": {}}, "description": "4U3kUJZM", "extOrderNo": "IHOipa3l", "extUserId": "sgWvanER", "itemType": "COINS", "language": "MMPv_wVFH", "metadata": {"GBLbPI6M": "51DKO4Ex", "wnWquGBv": "SBfST6sZ", "LP46GVjB": "ujZUsiH1"}, "notifyUrl": "yxEgwM44", "omitNotification": true, "platform": "nxSB6MoM", "price": 86, "recurringPaymentOrderNo": "sGcF2dMe", "region": "VWJaMRaL", "returnUrl": "eQshbReP", "sandbox": false, "sku": "1fDAr9rr", "subscriptionId": "D0BAOmKt", "title": "EchIBeCa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CreateUserPaymentOrder' test.out

#- 231 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'ReN3RluM' \
    'jDIqGeg4' \
    --body '{"description": "4w1SGijN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RefundUserPaymentOrder' test.out

#- 232 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '9ilnx0G1' \
    --body '{"code": "oVI8lXaW", "orderNo": "xYrR4EJc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'ApplyUserRedemption' test.out

#- 233 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'tISrKMgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserSubscriptions' test.out

#- 234 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Rcmpw8A8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserSubscriptionActivities' test.out

#- 235 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'owoZuOXu' \
    --body '{"grantDays": 15, "itemId": "xHQDQJbX", "language": "0OsW1wBG", "reason": "tuijIyy9", "region": "NnVaN4hH", "source": "V4AthkCh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'PlatformSubscribeSubscription' test.out

#- 236 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'oR8tFmzN' \
    'ieaJcbHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 237 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'bKiP0nQb' \
    'FfwZYwU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserSubscription' test.out

#- 238 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '3AIaRRbF' \
    'xAG54e1p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'DeleteUserSubscription' test.out

#- 239 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'S62JJMXf' \
    'iw5PADHT' \
    --body '{"immediate": false, "reason": "vdNDfMb7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'CancelSubscription' test.out

#- 240 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'KN7PSALh' \
    'wQh18DBx' \
    --body '{"grantDays": 62, "reason": "WHi0BTM0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GrantDaysToSubscription' test.out

#- 241 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'xS9jUok4' \
    'Pc4nJqQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetUserSubscriptionBillingHistories' test.out

#- 242 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'uylq3Uw6' \
    'sHUxZdR6' \
    --body '{"additionalData": {"cardSummary": "vhjK7a4Z"}, "authorisedTime": "1989-02-17T00:00:00Z", "chargebackReversedTime": "1989-08-03T00:00:00Z", "chargebackTime": "1976-02-26T00:00:00Z", "chargedTime": "1983-01-11T00:00:00Z", "createdTime": "1972-05-13T00:00:00Z", "currency": {"currencyCode": "gjXCxPRH", "currencySymbol": "qI2ExHco", "currencyType": "VIRTUAL", "decimals": 42, "namespace": "aKoIl0i3"}, "customParameters": {"fJ2JvZsN": {}, "iJo3Ahce": {}, "kMm5PShS": {}}, "extOrderNo": "2TrEyp3c", "extTxId": "R7C8jDts", "extUserId": "adJvEgKU", "issuedAt": "1989-06-11T00:00:00Z", "metadata": {"dSNlxPLb": "KBcZrX8I", "lF3zwKvG": "PAPe9TZd", "DoUXTlVv": "J2UKsdLL"}, "namespace": "N4vbC0w0", "nonceStr": "X6uMhuac", "paymentMethod": "dEhgl0sv", "paymentMethodFee": 4, "paymentOrderNo": "HEfZF4Y6", "paymentProvider": "WXPAY", "paymentProviderFee": 57, "paymentStationUrl": "OjRgFzv5", "price": 32, "refundedTime": "1975-03-30T00:00:00Z", "salesTax": 66, "sandbox": false, "sku": "UZweyKSp", "status": "CHARGEBACK", "statusReason": "29eED7Xt", "subscriptionId": "lBZJOSZo", "subtotalPrice": 13, "targetNamespace": "uUbc7Z9U", "targetUserId": "wMGvM4St", "tax": 64, "totalPrice": 21, "totalTax": 58, "txEndTime": "1998-09-02T00:00:00Z", "type": "WZMQ6hLB", "userId": "8XKePcPj", "vat": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'ProcessUserSubscriptionNotification' test.out

#- 243 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '1YN9n65M' \
    'e7uJs9yb' \
    --body '{"count": 66, "orderNo": "NYqsYHVR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AcquireUserTicket' test.out

#- 244 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'JyqVw4qg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'QueryUserCurrencyWallets' test.out

#- 245 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'kWns32AV' \
    'yeWt2vzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ListUserCurrencyTransactions' test.out

#- 246 CheckWallet
eval_tap 0 246 'CheckWallet # SKIP deprecated' test.out

#- 247 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'WrgdNga4' \
    'XE5EdoE6' \
    --body '{"amount": 42, "expireAt": "1985-06-09T00:00:00Z", "origin": "Xbox", "reason": "DH7P2Iyy", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'CreditUserWallet' test.out

#- 248 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '1SK4r1QD' \
    '9TIIGZYE' \
    --body '{"amount": 12, "walletPlatform": "Other"}' \
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
    'fd62gisL' \
    --body '{"displayOrder": 47, "localizations": {"sJHE8fAm": {"description": "RMCA9uT1", "localExt": {"pLD43q2H": {}, "ThP9ULJL": {}, "tOLtXFFw": {}}, "longDescription": "rQR2M7kJ", "title": "VsPJScBb"}, "qlFqjwyg": {"description": "TJTaXfhV", "localExt": {"OWZcdtJH": {}, "Z1rzh89k": {}, "6Yj4GHMn": {}}, "longDescription": "yFl8ecun", "title": "HcGXNb9E"}, "dopTCKd3": {"description": "sQXe5bdf", "localExt": {"jV7KoKE7": {}, "vwuwm0PX": {}, "BIeTii2f": {}}, "longDescription": "kpCUYs0z", "title": "T9U5lmUS"}}, "name": "v9i051uI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'CreateView' test.out

#- 256 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'xcn5XHQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetView' test.out

#- 257 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'P5E7kkA3' \
    'wXXA6Uwl' \
    --body '{"displayOrder": 35, "localizations": {"BdUjjNJF": {"description": "win4hBoW", "localExt": {"9w5JI5Bj": {}, "ZGSdleqI": {}, "wuUUs09d": {}}, "longDescription": "y470YYyF", "title": "36cEWE14"}, "oG0r7Scd": {"description": "UwfL49YX", "localExt": {"ymFwlqoX": {}, "vW0DrvLy": {}, "7hHsrLoG": {}}, "longDescription": "IHhpYVeY", "title": "H3uGDxQi"}, "FGzDx1Rf": {"description": "OnTxvoEp", "localExt": {"kvJSzNJe": {}, "FnOkuBLC": {}, "nN9X1cTt": {}}, "longDescription": "UCQ7achF", "title": "y6whakQV"}}, "name": "ynU91itZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateView' test.out

#- 258 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'MRkhnUNi' \
    'cpoMH4wM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'DeleteView' test.out

#- 259 QueryWallets
eval_tap 0 259 'QueryWallets # SKIP deprecated' test.out

#- 260 GetWallet
eval_tap 0 260 'GetWallet # SKIP deprecated' test.out

#- 261 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'EUy0BpmE' \
    'zAnIKx4Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'SyncOrders' test.out

#- 262 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["oxGymHqR", "tNyTipkd", "b7ixxwhY"], "apiKey": "6K3FTrhL", "authoriseAsCapture": false, "blockedPaymentMethods": ["g2VrHONS", "b9tUupOy", "ktrvNoi8"], "clientKey": "do02UHU1", "dropInSettings": "5k1OG0bn", "liveEndpointUrlPrefix": "XQSK4EVM", "merchantAccount": "Wv9ijaGT", "notificationHmacKey": "r1HN7hHd", "notificationPassword": "HyidWdmG", "notificationUsername": "PNHY2lQT", "returnUrl": "MjPOWSfm", "settings": "qz1LmMvd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestAdyenConfig' test.out

#- 263 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "whVkGcwH", "privateKey": "BVzqsnze", "publicKey": "M3pwPGFb", "returnUrl": "wgYUiR0X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'TestAliPayConfig' test.out

#- 264 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "aqWpUpDh", "secretKey": "JkAtU58S"}' \
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
    --body '{"clientID": "BEtyRTxN", "clientSecret": "LSeZjZnC", "returnUrl": "ObK0brFS", "webHookId": "p6iaDvfv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestPayPalConfig' test.out

#- 267 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["Pneh6A2O", "mgjZ9F3m", "3NfhRw54"], "publishableKey": "mPTNcOJR", "secretKey": "YOHXZrcV", "webhookSecret": "um4rqqYd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'TestStripeConfig' test.out

#- 268 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "5nNkfu7I", "key": "9GRbBGM4", "mchid": "87zBq01q", "returnUrl": "ovqDVe5m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'TestWxPayConfig' test.out

#- 269 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "yrmMMz5m", "flowCompletionUrl": "xLGPduHY", "merchantId": 26, "projectId": 77, "projectSecretKey": "sFvjuMeY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestXsollaConfig' test.out

#- 270 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'g92JnwWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetPaymentMerchantConfig' test.out

#- 271 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'f9ZkdmQM' \
    --body '{"allowedPaymentMethods": ["0IF22JCU", "sKUTL2jU", "69pwq9G6"], "apiKey": "VvrH3nJV", "authoriseAsCapture": true, "blockedPaymentMethods": ["Tkj3wk9D", "ssj8hbfA", "ybt3ju4y"], "clientKey": "LNE3IMeW", "dropInSettings": "8qPD5kcv", "liveEndpointUrlPrefix": "Mt4OjvDk", "merchantAccount": "zVvcnaWd", "notificationHmacKey": "su79mzgJ", "notificationPassword": "ihzv46LI", "notificationUsername": "e7nhYoXg", "returnUrl": "JZaXUBBs", "settings": "HtKZVqsh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateAdyenConfig' test.out

#- 272 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '0WLoa4S1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'TestAdyenConfigById' test.out

#- 273 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Aa25kKkp' \
    --body '{"appId": "X66keLJl", "privateKey": "BVSA8ISX", "publicKey": "DcmWBUm9", "returnUrl": "uT88ZinS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'UpdateAliPayConfig' test.out

#- 274 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'BZMiwUl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'TestAliPayConfigById' test.out

#- 275 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'wjpeQjhS' \
    --body '{"publicKey": "DNO5RGdV", "secretKey": "9ZXLWecN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'UpdateCheckoutConfig' test.out

#- 276 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'jBpa3lKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'TestCheckoutConfigById' test.out

#- 277 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'MpXQGSY3' \
    --body '{"clientID": "rhIwoMpy", "clientSecret": "idjihl44", "returnUrl": "CnE9oA67", "webHookId": "gv1OrE6a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'UpdatePayPalConfig' test.out

#- 278 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'r8Qno6SL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'TestPayPalConfigById' test.out

#- 279 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'VFzkvUOB' \
    --body '{"allowedPaymentMethodTypes": ["37T0kBKZ", "oaIhKY4D", "8uIHiu4g"], "publishableKey": "XCaOpQDp", "secretKey": "U3ObQrEf", "webhookSecret": "vwJz2Xdz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'UpdateStripeConfig' test.out

#- 280 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    '061EBXyk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'TestStripeConfigById' test.out

#- 281 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'e7lsExfU' \
    --body '{"appId": "efdPKWyn", "key": "6kFMEznr", "mchid": "Obz34Y2d", "returnUrl": "CfSc6fNK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdateWxPayConfig' test.out

#- 282 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '1tHITDFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'UpdateWxPayConfigCert' test.out

#- 283 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'Du6qqnoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'TestWxPayConfigById' test.out

#- 284 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '4qDNYece' \
    --body '{"apiKey": "DYQRlx4Y", "flowCompletionUrl": "mZ0qwCYj", "merchantId": 98, "projectId": 97, "projectSecretKey": "YITCUR3a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'UpdateXsollaConfig' test.out

#- 285 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'EMIpDmOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'TestXsollaConfigById' test.out

#- 286 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'n6NWQHp3' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' \
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
    --body '{"aggregate": "XSOLLA", "namespace": "CocceLOh", "region": "pNe5AXNK", "sandboxTaxJarApiToken": "jpVtsAzS", "specials": ["WXPAY", "PAYPAL", "WALLET"], "taxJarApiToken": "S9lll5CR", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
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
    'vUFMFenT' \
    --body '{"aggregate": "ADYEN", "namespace": "TsVDJ0CU", "region": "RfTFkIkg", "sandboxTaxJarApiToken": "IwbfCm8Y", "specials": ["CHECKOUT", "STRIPE", "STRIPE"], "taxJarApiToken": "zC8GJsaA", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdatePaymentProviderConfig' test.out

#- 293 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'KmFWncOa' \
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
    --body '{"sandboxTaxJarApiToken": "2a5Q6aoE", "taxJarApiToken": "6Z4B8Tax", "taxJarEnabled": false, "taxJarProductCodesMapping": {"LTH2hhfZ": "Sq5Uis69", "6JqIqdLt": "s3IkMiC8", "yueEkfeU": "MEGDu4e3"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'UpdatePaymentTaxConfig' test.out

#- 296 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'DEMz26nD' \
    'CRqs123w' \
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
    'uvmsfM5O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetCategory' test.out

#- 300 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '3gDF18ZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetChildCategories' test.out

#- 301 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'aZtEs8D9' \
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
    '0hprxzVY' \
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
    'jsiIP9B0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetItemBySku' test.out

#- 306 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'EgQZcyCB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicBulkGetItems' test.out

#- 307 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["wUC2fzc4", "nMoJFYic", "pq7rlovv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicValidateItemPurchaseCondition' test.out

#- 308 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'VYol0C9F' \
    'dP6JJBSZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicSearchItems' test.out

#- 309 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'O62oRZMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicGetApp' test.out

#- 310 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'jDuv5nJ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetItemDynamicData' test.out

#- 311 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '6QoHX6zV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetItem' test.out

#- 312 GetPaymentCustomization
eval_tap 0 312 'GetPaymentCustomization # SKIP deprecated' test.out

#- 313 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "kUgXRaTr", "paymentProvider": "WXPAY", "returnUrl": "jGnJz9JW", "ui": "IW01Nq12", "zipCode": "zA7Xbdxt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetPaymentUrl' test.out

#- 314 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'xpejKwZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetPaymentMethods' test.out

#- 315 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'OHeP9p3x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetUnpaidPaymentOrder' test.out

#- 316 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '72PoBmsa' \
    --body '{"token": "g38Wntyw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'Pay' test.out

#- 317 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'sBtBEMT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicCheckPaymentOrderPaidStatus' test.out

#- 318 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    '2DOh2Ygp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'GetPaymentPublicConfig' test.out

#- 319 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'bW0ClM0I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetQRCode' test.out

#- 320 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'fU8N036G' \
    'SnIMfNKk' \
    'CHECKOUT' \
    '5POWu9wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicNormalizePaymentReturnUrl' test.out

#- 321 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'CNjeugDz' \
    'ALIPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'GetPaymentTaxValue' test.out

#- 322 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'JBVOd2vf' \
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
    '4bY6Q2I2' \
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
    'DErv8Xf0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 328 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'vi4Db0k8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 329 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '3gkOu3WF' \
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
    'GapoGz1F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyWallet' test.out

#- 332 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    '49yUjjcB' \
    --body '{"epicGamesJwtToken": "ibhwds5G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'SyncEpicGameDLC' test.out

#- 333 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'mrpOIH0c' \
    --body '{"serviceLabel": 74}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicSyncPsnDlcInventory' test.out

#- 334 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'hKh8MIgL' \
    --body '{"serviceLabels": [65, 71, 95]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 335 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'ctoBcX3L' \
    --body '{"appId": "6ju9eibc", "steamId": "c7fxCtDd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'SyncSteamDLC' test.out

#- 336 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'hZulY2Wc' \
    --body '{"xstsToken": "m07NkjBN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncXboxDLC' test.out

#- 337 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'V55lEZc0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicQueryUserEntitlements' test.out

#- 338 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'Pmc8OU8J' \
    'n0aNssbD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetUserAppEntitlementByAppId' test.out

#- 339 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'wFxf0gOU' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryUserEntitlementsByAppType' test.out

#- 340 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'dqinrl2d' \
    'zocnWDvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetUserEntitlementByItemId' test.out

#- 341 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'GylrN3km' \
    'WvDXM1Q0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetUserEntitlementBySku' test.out

#- 342 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    's2GMa8s2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicExistsAnyUserActiveEntitlement' test.out

#- 343 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'bKRXeDyD' \
    'CfyJr8JA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 344 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'i409P0BS' \
    'w778F8ys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 345 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '8DguImlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 346 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'srX3u5rX' \
    'H7JAQ5g4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 347 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'x6Qsh5fi' \
    'R52aqihl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserEntitlement' test.out

#- 348 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '5Fi3LRdy' \
    'Ba8e1qCB' \
    --body '{"options": ["HwGTb2Bo", "1LUAQsEC", "DfKiLSSv"], "requestId": "jql3Ju8W", "useCount": 46}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicConsumeUserEntitlement' test.out

#- 349 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'RPpEXzHJ' \
    --body '{"code": "hQXWRYLu", "language": "LbW-873", "region": "JNzRYX70"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicRedeemCode' test.out

#- 350 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'LZ0kdiYy' \
    --body '{"excludeOldTransactions": true, "language": "MzA_KlLe", "productId": "A1fCmXoz", "receiptData": "3Nuw7nhb", "region": "7fYUTLiC", "transactionId": "5RFpH3Ze"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicFulfillAppleIAPItem' test.out

#- 351 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'a6NdJBaQ' \
    --body '{"epicGamesJwtToken": "GHWPbKtT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'SyncEpicGamesInventory' test.out

#- 352 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'A6R8Y8WL' \
    --body '{"autoAck": false, "language": "kGm", "orderId": "SAccmpI6", "packageName": "q4gMjxYY", "productId": "AGtGSrQq", "purchaseTime": 10, "purchaseToken": "JxC09SJp", "region": "fJa10Mxe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicFulfillGoogleIAPItem' test.out

#- 353 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'aFrctdF2' \
    --body '{"currencyCode": "jpa75DoE", "price": 0.2509147771962458, "productId": "EfWrtW1E", "serviceLabel": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicReconcilePlayStationStore' test.out

#- 354 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '3gQzgj3q' \
    --body '{"currencyCode": "RBgNr7Be", "price": 0.13744210337187912, "productId": "MjSwcZtf", "serviceLabels": [16, 51, 86]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 355 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    'l5oFXhNW' \
    --body '{"appId": "53qtiiYF", "language": "YNh-ZHgC_856", "region": "cK3n6KVm", "stadiaPlayerId": "EUZQTyhF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'SyncStadiaEntitlement' test.out

#- 356 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    '9YZBebAO' \
    --body '{"appId": "u6Whdmv1", "currencyCode": "Z94vAUIJ", "language": "clX_etAv", "price": 0.21197364953214715, "productId": "gPTKQneV", "region": "hNcc6l4k", "steamId": "ETjAAWGS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'SyncSteamInventory' test.out

#- 357 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'XDBmtkx8' \
    --body '{"gameId": "wdN1jOf1", "language": "lvuE_tQXb", "region": "xtlImGhO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'SyncTwitchDropsEntitlement' test.out

#- 358 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'VRgmvjQW' \
    --body '{"currencyCode": "QNCLh2NR", "price": 0.2571453094679428, "productId": "4RCga0Pc", "xstsToken": "fXHxLCZ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'SyncXboxInventory' test.out

#- 359 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    '560Fljuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicQueryUserOrders' test.out

#- 360 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'icBuUnI4' \
    --body '{"currencyCode": "FWrPEOHD", "discountedPrice": 26, "ext": {"aFkd9HtF": {}, "G4KOxHN6": {}, "p3gvPb1u": {}}, "itemId": "0K14Kqwi", "language": "MlUe-VAQz_143", "price": 79, "quantity": 37, "region": "ckuUPmo8", "returnUrl": "FYuMpU0h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicCreateUserOrder' test.out

#- 361 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'hIfWtEPi' \
    'wcnbTaiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetUserOrder' test.out

#- 362 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'DRcqfaAd' \
    '1sewPSZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicCancelUserOrder' test.out

#- 363 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '4L4CyoVf' \
    'YblfSvLe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetUserOrderHistories' test.out

#- 364 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'ze39gOsu' \
    '8RbDKAis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicDownloadUserOrderReceipt' test.out

#- 365 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'YCNFRrbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentAccounts' test.out

#- 366 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'c1KMqn9s' \
    'card' \
    'eFMNYcly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicDeletePaymentAccount' test.out

#- 367 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'eapDFzPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicListActiveSections' test.out

#- 368 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'xRfYUa7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicQueryUserSubscriptions' test.out

#- 369 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'SEAAzfEr' \
    --body '{"currencyCode": "XuDChx31", "itemId": "Fka4Qa8c", "language": "lfn_rd", "region": "IGZXUkec", "returnUrl": "AyvxSAMt", "source": "WZ7EcSzO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicSubscribeSubscription' test.out

#- 370 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'hd4IblNd' \
    'w448v8zw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 371 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'BLL7Lpzo' \
    'CtlqqL39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetUserSubscription' test.out

#- 372 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'FisW4zy2' \
    'mqL0YsVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicChangeSubscriptionBillingAccount' test.out

#- 373 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'Qvoqr6sP' \
    'M7UnEyuO' \
    --body '{"immediate": false, "reason": "1u5OyMxT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicCancelSubscription' test.out

#- 374 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'EFrYv9RV' \
    'phL3jTfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicGetUserSubscriptionBillingHistories' test.out

#- 375 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'llxcvrBT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicListViews' test.out

#- 376 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'Kx8rregy' \
    'bNY9WSh2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetWallet' test.out

#- 377 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '8v7ChqV5' \
    'I5liOSym' \
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
    '7ESFV6RF' \
    --body '{"itemIds": ["KIHQuVLx", "XB7to3Vw", "75M5uipi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
