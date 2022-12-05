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
platform-test-fulfillment-script-eval --body '{"context": {"item": {"appId": "qPBMTX5U", "appType": "GAME", "baseAppId": "1KWo0KWM", "boothName": "DvCz71BF", "boundItemIds": ["EO5yrXJ8", "cEUZJcFC", "Gwsn0YI6"], "categoryPath": "d7lYcIBJ", "clazz": "0LU27E6r", "createdAt": "1982-05-02T00:00:00Z", "description": "4SIxeg2L", "displayOrder": 84, "entitlementType": "CONSUMABLE", "ext": {"zYoUUHG6": {}, "iw8VzDhc": {}, "RFXs2jkb": {}}, "features": ["xLRbYBHw", "Le75DpE6", "sRksVgnO"], "fresh": true, "images": [{"as": "8ohVmyMV", "caption": "vXYz5WL6", "height": 74, "imageUrl": "0s0T40Cc", "smallImageUrl": "nMPurUIU", "width": 88}, {"as": "3Ej2xnpA", "caption": "coNxNKoh", "height": 77, "imageUrl": "MnZcyFjG", "smallImageUrl": "Nr0KsgQn", "width": 27}, {"as": "1zclxVCE", "caption": "wa1kqrmw", "height": 57, "imageUrl": "6Fu22tZx", "smallImageUrl": "ZWcvT8dn", "width": 13}], "itemId": "803frcJa", "itemIds": ["XIvPfW6a", "yz4MRWOo", "7D45IxfO"], "itemQty": {"hkXuACNV": 31, "QdzPX4Np": 35, "81PM0Swq": 79}, "itemType": "OPTIONBOX", "language": "pxIj1oc7", "listable": false, "localExt": {"iqvIeS7H": {}, "XE3Vs58K": {}, "4QENvg8e": {}}, "longDescription": "MQlKm3hF", "lootBoxConfig": {"rewardCount": 75, "rewards": [{"lootBoxItems": [{"count": 76, "itemId": "j0uNqZ4P", "itemSku": "6T7GkvpZ", "itemType": "ZkX6n58n"}, {"count": 100, "itemId": "ASUb3LdY", "itemSku": "Aj6qTUTE", "itemType": "cOG3LpeH"}, {"count": 48, "itemId": "2wCN14Xk", "itemSku": "zrWDysgH", "itemType": "42a52MWK"}], "name": "1iJ01x0f", "odds": 0.3390028000225611, "type": "PROBABILITY_GROUP", "weight": 99}, {"lootBoxItems": [{"count": 61, "itemId": "M1MEcI9w", "itemSku": "r7u1aVBE", "itemType": "eBuwGp6h"}, {"count": 92, "itemId": "9ohN7CXg", "itemSku": "3gVfW5u8", "itemType": "otxb6czJ"}, {"count": 30, "itemId": "XH4oEAtP", "itemSku": "8NtykZpX", "itemType": "9tgSWYNk"}], "name": "VzPX6oHM", "odds": 0.1457342692043453, "type": "PROBABILITY_GROUP", "weight": 16}, {"lootBoxItems": [{"count": 100, "itemId": "vWkcrPNr", "itemSku": "u9ebDCGk", "itemType": "SuC5gkhM"}, {"count": 26, "itemId": "CI2kRsNK", "itemSku": "K8eXtsxv", "itemType": "0XbDkmTK"}, {"count": 2, "itemId": "WStxRDCg", "itemSku": "pjgEKzwo", "itemType": "Zd9hh8hw"}], "name": "TqPZbFDC", "odds": 0.8423372179139176, "type": "PROBABILITY_GROUP", "weight": 33}]}, "maxCount": 68, "maxCountPerUser": 17, "name": "F8SxtDJh", "namespace": "1jSPCtAU", "optionBoxConfig": {"boxItems": [{"count": 31, "itemId": "4VxM5l8P", "itemSku": "faGH7Vl7", "itemType": "ejBWDSsO"}, {"count": 45, "itemId": "vjIyFYrh", "itemSku": "OholP7g5", "itemType": "OGRIwpWZ"}, {"count": 54, "itemId": "QRN6wbJ5", "itemSku": "BmqQo1WF", "itemType": "8HAh8Y9u"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 28, "comparison": "includes", "name": "01LJ7LhM", "predicateType": "SeasonPassPredicate", "value": "ZnieHnec", "values": ["wgdMAbQM", "yM6eqSJ1", "vsMtvoOA"]}, {"anyOf": 88, "comparison": "isGreaterThanOrEqual", "name": "KkOdK8Cy", "predicateType": "EntitlementPredicate", "value": "P2gbvo9W", "values": ["HTNJTvMg", "tOxE6Emj", "4jYyPmDE"]}, {"anyOf": 11, "comparison": "isNot", "name": "GrZcYKuO", "predicateType": "SeasonPassPredicate", "value": "Ih34XfRu", "values": ["V5utCvMu", "Gpk1Ltyq", "HsPpzYpm"]}]}, {"operator": "and", "predicates": [{"anyOf": 75, "comparison": "is", "name": "8pZEEXRY", "predicateType": "EntitlementPredicate", "value": "1Qo4NYfP", "values": ["pOXZp40S", "ceaNShhU", "Sl39LKvs"]}, {"anyOf": 7, "comparison": "isGreaterThanOrEqual", "name": "wqKt7LFm", "predicateType": "EntitlementPredicate", "value": "HjnZe7nN", "values": ["cvwKAbhz", "MA2smO5T", "0mhilGse"]}, {"anyOf": 81, "comparison": "isGreaterThanOrEqual", "name": "dKZHv1fl", "predicateType": "SeasonTierPredicate", "value": "q0NS8UFl", "values": ["NtSX9JTe", "Aqd4HUny", "2jHpT8Cr"]}]}, {"operator": "or", "predicates": [{"anyOf": 87, "comparison": "isNot", "name": "M1Dbngez", "predicateType": "EntitlementPredicate", "value": "pjJDudH2", "values": ["hLvxGf6a", "7G4wiDv5", "UdY8knxs"]}, {"anyOf": 94, "comparison": "isLessThan", "name": "DVpiaPOE", "predicateType": "SeasonTierPredicate", "value": "gFbzHQzk", "values": ["QlJdnIu1", "sqwHaNEh", "Wc2HuMae"]}, {"anyOf": 47, "comparison": "isNot", "name": "Ra89MKyV", "predicateType": "EntitlementPredicate", "value": "Qjh5VC4h", "values": ["eTLcDrZ5", "wJ32dJAX", "5iG5FwIi"]}]}]}, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 94, "fixedTrialCycles": 32, "graceDays": 46}, "region": "7cBjio0b", "regionData": [{"currencyCode": "WXcgvIHz", "currencyNamespace": "ZN4l1Ahj", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1980-09-10T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1997-06-06T00:00:00Z", "discountedPrice": 95, "expireAt": "1973-05-20T00:00:00Z", "price": 32, "purchaseAt": "1995-02-07T00:00:00Z", "trialPrice": 40}, {"currencyCode": "nmkTaXBa", "currencyNamespace": "dSvMTGFh", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1973-06-16T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1991-10-05T00:00:00Z", "discountedPrice": 0, "expireAt": "1984-09-23T00:00:00Z", "price": 1, "purchaseAt": "1986-01-31T00:00:00Z", "trialPrice": 25}, {"currencyCode": "maP4LUKC", "currencyNamespace": "H4IJmir2", "currencyType": "VIRTUAL", "discountAmount": 15, "discountExpireAt": "1989-01-28T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1978-09-15T00:00:00Z", "discountedPrice": 39, "expireAt": "1979-07-26T00:00:00Z", "price": 18, "purchaseAt": "1990-12-11T00:00:00Z", "trialPrice": 14}], "seasonType": "PASS", "sku": "kYlRD46S", "stackable": false, "status": "ACTIVE", "tags": ["Hw0bCOE0", "H4S1mSDm", "kVJif8a1"], "targetCurrencyCode": "iyTRjVQQ", "targetItemId": "Soczm52N", "targetNamespace": "nGpFYirc", "thumbnailUrl": "RZWdaqzL", "title": "j3m5asev", "updatedAt": "1985-09-29T00:00:00Z", "useCount": 84}, "namespace": "MTIuViQm", "order": {"currency": {"currencyCode": "RP9VD2qp", "currencySymbol": "7NUpyOrE", "currencyType": "REAL", "decimals": 62, "namespace": "JyV2HesO"}, "ext": {"e9Ix5Mkv": {}, "7qAmchjc": {}, "9zrQYfLf": {}}, "free": false}, "source": "IAP"}, "script": "jfwvBnmb", "type": "grantDays"}' --login_with_auth "Bearer foo"
platform-get-fulfillment-script 'zunYuThV' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'nRxudb3F' --body '{"grantDays": "5hX9AvpL"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'ijbuaxfF' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'ZeAZhU8c' --body '{"grantDays": "yy88kp0v"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "0sgx4rQY", "dryRun": true, "fulfillmentUrl": "aX7OoM9A", "itemType": "LOOTBOX", "purchaseConditionUrl": "orEH3DlN"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'SEASON' --login_with_auth "Bearer foo"
platform-get-item-type-config 'bGVNVX9g' --login_with_auth "Bearer foo"
platform-update-item-type-config '3xiEd9fP' --body '{"clazz": "1W0404zr", "dryRun": false, "fulfillmentUrl": "67cPPMIN", "purchaseConditionUrl": "IlG33X1p"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config '18UAdP1X' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "Giv2xPYi", "items": [{"extraSubscriptionDays": 64, "itemId": "SSLUG7qH", "itemName": "pLWHSmRM", "quantity": 66}, {"extraSubscriptionDays": 57, "itemId": "VyXsLVBL", "itemName": "KEYQAJwI", "quantity": 23}, {"extraSubscriptionDays": 95, "itemId": "BKolJw1I", "itemName": "E7l8Hkot", "quantity": 60}], "maxRedeemCountPerCampaignPerUser": 73, "maxRedeemCountPerCode": 42, "maxRedeemCountPerCodePerUser": 65, "maxSaleCount": 26, "name": "r5wmOKFG", "redeemEnd": "1992-05-12T00:00:00Z", "redeemStart": "1990-03-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["mNxlcy1v", "hC517fvr", "SuVIWW1l"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'fqHZLWiv' --login_with_auth "Bearer foo"
platform-update-campaign 'LlA9uSJa' --body '{"description": "StesGaU3", "items": [{"extraSubscriptionDays": 50, "itemId": "A7VMejMP", "itemName": "pvwHZlOb", "quantity": 88}, {"extraSubscriptionDays": 13, "itemId": "TlaE55Bc", "itemName": "FAoQZbuD", "quantity": 67}, {"extraSubscriptionDays": 23, "itemId": "yKl1z2X6", "itemName": "J98jgX3B", "quantity": 49}], "maxRedeemCountPerCampaignPerUser": 68, "maxRedeemCountPerCode": 94, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 78, "name": "cnv4Gsfr", "redeemEnd": "1971-08-14T00:00:00Z", "redeemStart": "1995-10-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["hrYKuCV6", "jYasZKZz", "IXMIBOTT"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'XEpZBz7g' --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '6ojrQdsR' --body '{"categoryPath": "4JVGd1if", "localizationDisplayNames": {"lV7lO2C3": "tjuKIs7R", "XEOyKhvp": "QH78KKZH", "OY0zKivL": "1a0vaJz8"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category 'SjoTLQLR' --login_with_auth "Bearer foo"
platform-update-category 'okRZqwVK' 'OjyLuR0S' --body '{"localizationDisplayNames": {"98dOkpBB": "EbtlPli4", "1lXWMSmq": "3yQiAjyN", "1HAfB1WW": "8SJXhPiI"}}' --login_with_auth "Bearer foo"
platform-delete-category 'fiHWSlVO' '1wr4U0H0' --login_with_auth "Bearer foo"
platform-get-child-categories 'Ncnb3Apf' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'MVqS8i0e' --login_with_auth "Bearer foo"
platform-query-codes 'apRA197x' --login_with_auth "Bearer foo"
platform-create-codes 'rOiGUbHI' --body '{"quantity": 39}' --login_with_auth "Bearer foo"
platform-download 'D2OR236M' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'JbGkGrG3' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'efaWCHtF' --login_with_auth "Bearer foo"
platform-query-redeem-history 'H0eJMRlO' --login_with_auth "Bearer foo"
platform-get-code 'msnmnrWM' --login_with_auth "Bearer foo"
platform-disable-code '2a66jhfv' --login_with_auth "Bearer foo"
platform-enable-code 'ZwjEjfWL' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "FfgnzRPP", "currencySymbol": "DnC1FHSg", "currencyType": "VIRTUAL", "decimals": 43, "localizationDescriptions": {"cmI3GK8L": "frzl5MJm", "V7sFVIFv": "cEaUFUut", "EFVlUpEs": "cib7Sr30"}}' --login_with_auth "Bearer foo"
platform-update-currency 'osiJtHTX' --body '{"localizationDescriptions": {"rqyeXBbx": "QHsx0aqC", "qwrI9yw2": "2GpuumbZ", "1oXCc1LC": "5jUdSsRK"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'Qnhy6kZd' --login_with_auth "Bearer foo"
platform-get-currency-config 'ibJspC9h' --login_with_auth "Bearer foo"
platform-get-currency-summary 'UGapvfcJ' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "ebb4BnkM", "rewards": [{"currency": {"currencyCode": "KrBZMt68", "namespace": "HrFm1jgC"}, "item": {"itemId": "RNH3S9j7", "itemSku": "26kCBUht", "itemType": "qie1V5MJ"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "7Wa7J36I", "namespace": "ZDezib8l"}, "item": {"itemId": "mULMFgZp", "itemSku": "7WjRxwZT", "itemType": "MOH2NomL"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "N5zf35Lv", "namespace": "4nsnMkFa"}, "item": {"itemId": "SUFH7ZSm", "itemSku": "L79mDBrk", "itemType": "aKlv7bmA"}, "quantity": 4, "type": "CURRENCY"}]}, {"id": "UGZtlCSI", "rewards": [{"currency": {"currencyCode": "zVXNF1cn", "namespace": "IaerMe1t"}, "item": {"itemId": "QmOy06aT", "itemSku": "ieDQI9ho", "itemType": "vD3U3OFm"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "rkMzxLin", "namespace": "FmXIfwey"}, "item": {"itemId": "HjiQ7V07", "itemSku": "keg9mYo9", "itemType": "fgvNBn8Z"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "cn3rNh7i", "namespace": "jLyCi89k"}, "item": {"itemId": "9ZinnWaJ", "itemSku": "DeinRxuM", "itemType": "nZmn6LhJ"}, "quantity": 91, "type": "ITEM"}]}, {"id": "L6Csm85J", "rewards": [{"currency": {"currencyCode": "1sNSRdA4", "namespace": "ApYOWm44"}, "item": {"itemId": "B7nnkcm5", "itemSku": "NsCylo8o", "itemType": "lnHtV09L"}, "quantity": 74, "type": "ITEM"}, {"currency": {"currencyCode": "XGND3FpO", "namespace": "olMRxYHf"}, "item": {"itemId": "1RV78eCX", "itemSku": "BAtsXRPz", "itemType": "D6H8MEE6"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "IDtgNM3n", "namespace": "AUrybA0e"}, "item": {"itemId": "zYI23hHv", "itemSku": "xrsj8i6m", "itemType": "5jT5Bape"}, "quantity": 65, "type": "CURRENCY"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"DDyLXhJC": "ICFrTMJn", "HpNlIx3V": "IEIjmEJm", "NdgViHHV": "pibJ7AHb"}}, {"platform": "XBOX", "platformDlcIdMap": {"OcsragqE": "N7CaLl3b", "1qm7ND6q": "hsRjL6yb", "9aA169bP": "hIHOMdhS"}}, {"platform": "XBOX", "platformDlcIdMap": {"WKnURN0o": "YsrETgFB", "7toMVgH1": "F1Fxhgdf", "Q33NXNzj": "5ScZ6rre"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-get-entitlement 'nzWAFZBC' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "0AKM0lDc", "password": "8DKME3GR"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "lJPJSYq7"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "rpixkpQX", "serviceAccountId": "F8KPLM7N"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "cKtRMdCI", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7upOMOiE": "MnDuctug", "51P6mYud": "nLqp6O5J", "ilHrEnXL": "q3Hzfmf2"}}, {"itemIdentity": "hzUDRlNO", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"faXAanEZ": "LBBE0Ojz", "LmeorOoh": "VdJ0f7Vb", "gkquztTV": "ISz1jA0W"}}, {"itemIdentity": "dOihwhi8", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"llk6953A": "XhJossFk", "y7SslEq8": "ZslONpZk", "ni0kWHts": "miYOyiYT"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"environment": "3NYzYzwW"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-get-stadia-iap-config --login_with_auth "Bearer foo"
platform-delete-stadia-iap-config --login_with_auth "Bearer foo"
platform-update-stadia-json-config-file --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "m9HVjRt8", "publisherAuthenticationKey": "pNuDOCwg"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "IYS3GX3I", "clientSecret": "nWvFcu1v", "organizationId": "eZoN1Zbq"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "v6mUh5ds"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 's7UTizo2' 'QYa0DEGO' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'RMq0uQDo' 'LeIbE73n' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'ku4ncIdM' --body '{"categoryPath": "ZbQH8jKv", "targetItemId": "dTAujACX", "targetNamespace": "OIYojUgY"}' --login_with_auth "Bearer foo"
platform-create-item 'aH5Io3Ps' --body '{"appId": "JN9ay8UM", "appType": "DLC", "baseAppId": "X8nzxUOQ", "boothName": "WfG1rRwQ", "categoryPath": "wD6PGirD", "clazz": "3EsfUtJq", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"NGM8Y7m7": {}, "i5WedSEs": {}, "TKwFXFkp": {}}, "features": ["CjdWw6rS", "w6yPAIDZ", "Twwn0lEt"], "images": [{"as": "SsYlCo1H", "caption": "zStUxPsP", "height": 54, "imageUrl": "hpEBymgt", "smallImageUrl": "3wPNUQ68", "width": 64}, {"as": "9yUg94gS", "caption": "fC7bgcVZ", "height": 0, "imageUrl": "MorOoqh6", "smallImageUrl": "cHhDDtZO", "width": 81}, {"as": "dMdkiMlK", "caption": "7bavqGjQ", "height": 75, "imageUrl": "fCO800gH", "smallImageUrl": "2yjOHe0H", "width": 7}], "itemIds": ["uKjYV8Da", "52PG6a7M", "umoJirwG"], "itemQty": {"cejHGCAF": 27, "uIMPVMaz": 90, "94HJGc3K": 47}, "itemType": "COINS", "listable": false, "localizations": {"nAneenj6": {"description": "VH1TLY6L", "localExt": {"1ozdwwEn": {}, "rVjw15Gb": {}, "PGiMQB97": {}}, "longDescription": "oaAi6xX5", "title": "xKMZL9J8"}, "zMyO9NMw": {"description": "vuha21FM", "localExt": {"xmUXmmo6": {}, "2oKTPjyd": {}, "njmSGO1j": {}}, "longDescription": "PdYoMmmd", "title": "eDIU3X9M"}, "sekZFpuK": {"description": "Ckot1FK9", "localExt": {"OakgQM27": {}, "ySEM7OAe": {}, "X9dg6abO": {}}, "longDescription": "LGRPWT5o", "title": "BzkY8hpj"}}, "lootBoxConfig": {"rewardCount": 77, "rewards": [{"lootBoxItems": [{"count": 27, "itemId": "52sui4Fc", "itemSku": "nkiGkb8P", "itemType": "IhQb2qXR"}, {"count": 37, "itemId": "CMwtK5y8", "itemSku": "inJOqNCe", "itemType": "jXkIaAol"}, {"count": 14, "itemId": "NZJfOTlV", "itemSku": "bjp6lpxV", "itemType": "Pmytku7z"}], "name": "xv9LaCBe", "odds": 0.5773655553886824, "type": "REWARD_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 27, "itemId": "WfAtoal4", "itemSku": "3yooimpe", "itemType": "kNQKNUL8"}, {"count": 66, "itemId": "L0POGVVe", "itemSku": "KRwHD2EW", "itemType": "jhTGlt1i"}, {"count": 21, "itemId": "MfnG20Ym", "itemSku": "EXNUsN9C", "itemType": "QhLiTRHr"}], "name": "0AyscKkv", "odds": 0.8219424008213078, "type": "PROBABILITY_GROUP", "weight": 43}, {"lootBoxItems": [{"count": 43, "itemId": "EFHBVaSB", "itemSku": "gLLB7LSM", "itemType": "asg5EMal"}, {"count": 67, "itemId": "GMnfG5PK", "itemSku": "43gpV2Le", "itemType": "UJuklJLD"}, {"count": 23, "itemId": "waV0US0F", "itemSku": "Q5pdKH7T", "itemType": "I813uLtU"}], "name": "qwXOjLUJ", "odds": 0.5005578767922316, "type": "REWARD_GROUP", "weight": 72}]}, "maxCount": 54, "maxCountPerUser": 37, "name": "twss9hOz", "optionBoxConfig": {"boxItems": [{"count": 35, "itemId": "5f3uzdHH", "itemSku": "NAWSahYh", "itemType": "TTHyihva"}, {"count": 58, "itemId": "vne1bIRi", "itemSku": "gQH1YVBG", "itemType": "KGjJ8EC4"}, {"count": 36, "itemId": "SJK6ZUz1", "itemSku": "jFSsf7Ps", "itemType": "N8dVLPmO"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 69, "fixedTrialCycles": 99, "graceDays": 42}, "regionData": {"Gl5fR5yh": [{"currencyCode": "ex9SkHwv", "currencyNamespace": "tfbPY5eJ", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1997-04-14T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1975-11-27T00:00:00Z", "discountedPrice": 88, "expireAt": "1987-11-23T00:00:00Z", "price": 39, "purchaseAt": "1974-04-14T00:00:00Z", "trialPrice": 43}, {"currencyCode": "4dA9KnKZ", "currencyNamespace": "Kytpyaqh", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1995-07-27T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1996-11-29T00:00:00Z", "discountedPrice": 48, "expireAt": "1994-06-02T00:00:00Z", "price": 86, "purchaseAt": "1988-03-21T00:00:00Z", "trialPrice": 33}, {"currencyCode": "W8EkplOk", "currencyNamespace": "2ZNMnlyY", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1975-04-01T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1986-01-22T00:00:00Z", "discountedPrice": 7, "expireAt": "1981-03-13T00:00:00Z", "price": 62, "purchaseAt": "1988-09-09T00:00:00Z", "trialPrice": 93}], "s4u0nx7V": [{"currencyCode": "c6rIIght", "currencyNamespace": "CH0tmsAO", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1978-04-13T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1981-02-22T00:00:00Z", "discountedPrice": 45, "expireAt": "1974-10-24T00:00:00Z", "price": 41, "purchaseAt": "1984-11-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "cqD9iGuR", "currencyNamespace": "fpybNR5j", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1995-11-22T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1989-07-02T00:00:00Z", "discountedPrice": 26, "expireAt": "1999-04-20T00:00:00Z", "price": 31, "purchaseAt": "1975-09-29T00:00:00Z", "trialPrice": 42}, {"currencyCode": "mMIKTW6h", "currencyNamespace": "QWKAtMsy", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1994-07-28T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1992-07-08T00:00:00Z", "discountedPrice": 72, "expireAt": "1982-04-30T00:00:00Z", "price": 88, "purchaseAt": "1971-10-26T00:00:00Z", "trialPrice": 44}], "yKC3qB4s": [{"currencyCode": "YkW3tpol", "currencyNamespace": "wykI5zsX", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1974-05-20T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1997-10-15T00:00:00Z", "discountedPrice": 53, "expireAt": "1990-06-01T00:00:00Z", "price": 21, "purchaseAt": "1988-06-14T00:00:00Z", "trialPrice": 86}, {"currencyCode": "KuHrl6wI", "currencyNamespace": "ptybqoNm", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1986-01-17T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1972-10-07T00:00:00Z", "discountedPrice": 66, "expireAt": "1980-05-17T00:00:00Z", "price": 56, "purchaseAt": "1972-10-27T00:00:00Z", "trialPrice": 84}, {"currencyCode": "czxhXaGe", "currencyNamespace": "rMug8ecc", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1977-11-15T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1992-11-18T00:00:00Z", "discountedPrice": 15, "expireAt": "1988-05-25T00:00:00Z", "price": 64, "purchaseAt": "1993-12-09T00:00:00Z", "trialPrice": 29}]}, "seasonType": "TIER", "sku": "3AwQOd13", "stackable": false, "status": "ACTIVE", "tags": ["DHiFsTbQ", "owLjzsED", "CPfJ60tO"], "targetCurrencyCode": "nfGNO7Wz", "targetNamespace": "f6RZHRJg", "thumbnailUrl": "ym4SmvII", "useCount": 23}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'ixXQE30Z' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'DLN7IjSw' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'fP625lZ2' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '8egNHhXy' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'HC0Uiqxz' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'G8YPNH3T' --body '{"itemIds": ["T1AtCLFf", "A1QeOTzf", "UOawRwmg"]}' --login_with_auth "Bearer foo"
platform-search-items 'xrMpvOun' '4aHXPgnk' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'emH5uOjJ' --login_with_auth "Bearer foo"
platform-update-item 'M9Y7T4YH' 'qheJTdob' --body '{"appId": "JDTZRPMK", "appType": "SOFTWARE", "baseAppId": "lIQJRC6t", "boothName": "TR4GbUPz", "categoryPath": "si8GxpVt", "clazz": "jPRFc7uJ", "displayOrder": 12, "entitlementType": "CONSUMABLE", "ext": {"KiBTS4iP": {}, "6HdorjqM": {}, "U0IYgQSY": {}}, "features": ["ALMpy8wU", "gEgAV69E", "SYajXqCI"], "images": [{"as": "6AXAxRVy", "caption": "Tip0Kb6b", "height": 83, "imageUrl": "3xxMSMjg", "smallImageUrl": "e3yULOSn", "width": 41}, {"as": "ujvQk83u", "caption": "VW5UAGNL", "height": 59, "imageUrl": "q4bywL7F", "smallImageUrl": "jmeP31gr", "width": 17}, {"as": "Xb1P25nn", "caption": "4VrZzeZW", "height": 75, "imageUrl": "CyNdu3RP", "smallImageUrl": "9VeXWzob", "width": 38}], "itemIds": ["kBMn1wbB", "XqBjsJ9z", "7YnwOUQP"], "itemQty": {"9F9NSZgd": 43, "bobpmrSI": 45, "YXaBtKts": 67}, "itemType": "SEASON", "listable": true, "localizations": {"NzTVqZga": {"description": "xDJshHZN", "localExt": {"u8Fr5Vrm": {}, "j3sstpiR": {}, "1JwNzGn3": {}}, "longDescription": "celhlc1g", "title": "njOY0noV"}, "RnTK8N9x": {"description": "zScFrjeh", "localExt": {"fFKnMYMx": {}, "8vvP5Tha": {}, "ooisxMgr": {}}, "longDescription": "RBsnswx5", "title": "g7Jb4viT"}, "5hbfRScE": {"description": "AztD0uQr", "localExt": {"jWQroiBA": {}, "izHrKWeD": {}, "KPZGUSBM": {}}, "longDescription": "ik8gRVf4", "title": "Opjq70Cn"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 63, "itemId": "wD4nUXzm", "itemSku": "kRXytSd3", "itemType": "ZZXXOwIP"}, {"count": 53, "itemId": "KFPgtdEG", "itemSku": "HMYfpHbY", "itemType": "H9ci16GO"}, {"count": 73, "itemId": "LCk5cOzo", "itemSku": "BrmdYw74", "itemType": "dJmEOO0b"}], "name": "iES1xCT6", "odds": 0.17611453342217198, "type": "PROBABILITY_GROUP", "weight": 87}, {"lootBoxItems": [{"count": 78, "itemId": "LxAari7N", "itemSku": "z1GeiMxh", "itemType": "K89dYwKo"}, {"count": 69, "itemId": "3CtqRx6h", "itemSku": "FuqqEo9z", "itemType": "DxzTAo4Q"}, {"count": 10, "itemId": "jAdTPRlh", "itemSku": "khjn76ZO", "itemType": "imcck455"}], "name": "umpXCkvR", "odds": 0.6067407263385134, "type": "REWARD", "weight": 61}, {"lootBoxItems": [{"count": 16, "itemId": "LhV7VyaD", "itemSku": "7aMDXFwG", "itemType": "tgkqLZta"}, {"count": 92, "itemId": "BiCFtnc2", "itemSku": "XH9KDlMc", "itemType": "2exFqZch"}, {"count": 69, "itemId": "nua6rQoY", "itemSku": "ICTLCjlE", "itemType": "zAvcOJTC"}], "name": "PJuKyPco", "odds": 0.7398423714599224, "type": "REWARD", "weight": 80}]}, "maxCount": 85, "maxCountPerUser": 90, "name": "DZeSu5Ko", "optionBoxConfig": {"boxItems": [{"count": 34, "itemId": "zLwkTrV6", "itemSku": "EzEUn8Iz", "itemType": "q4f3Bx6j"}, {"count": 36, "itemId": "3p2kYqZ3", "itemSku": "e27o8zsz", "itemType": "F9Z46Ew1"}, {"count": 34, "itemId": "t81vegnQ", "itemSku": "wzLSQRqW", "itemType": "kWkFTgK6"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 99, "fixedTrialCycles": 46, "graceDays": 77}, "regionData": {"Xli67u7d": [{"currencyCode": "nTHWWRWJ", "currencyNamespace": "1Bd0Xb7e", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1990-06-18T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-02-11T00:00:00Z", "discountedPrice": 85, "expireAt": "1977-11-07T00:00:00Z", "price": 17, "purchaseAt": "1994-10-04T00:00:00Z", "trialPrice": 38}, {"currencyCode": "NwnMxGhv", "currencyNamespace": "xTsNHfoK", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1975-10-04T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1972-11-12T00:00:00Z", "discountedPrice": 95, "expireAt": "1980-05-07T00:00:00Z", "price": 74, "purchaseAt": "1990-02-10T00:00:00Z", "trialPrice": 75}, {"currencyCode": "zOUTeGFT", "currencyNamespace": "ek7QNFpD", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1971-06-10T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1971-01-28T00:00:00Z", "discountedPrice": 33, "expireAt": "1980-04-04T00:00:00Z", "price": 90, "purchaseAt": "1977-08-08T00:00:00Z", "trialPrice": 50}], "kAMccPHv": [{"currencyCode": "eBR0IvaR", "currencyNamespace": "3oHYBGAh", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1971-08-28T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1975-08-24T00:00:00Z", "discountedPrice": 8, "expireAt": "1989-07-29T00:00:00Z", "price": 55, "purchaseAt": "1996-04-03T00:00:00Z", "trialPrice": 52}, {"currencyCode": "LGzhDPPs", "currencyNamespace": "V00sjNDr", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1997-01-28T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1982-04-18T00:00:00Z", "discountedPrice": 12, "expireAt": "1999-02-14T00:00:00Z", "price": 76, "purchaseAt": "1996-02-17T00:00:00Z", "trialPrice": 51}, {"currencyCode": "J4XqJ3mH", "currencyNamespace": "HKMASrzL", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1983-06-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1975-10-22T00:00:00Z", "discountedPrice": 92, "expireAt": "1971-05-24T00:00:00Z", "price": 58, "purchaseAt": "1974-09-01T00:00:00Z", "trialPrice": 9}], "j857Mu2R": [{"currencyCode": "kS1ntdaT", "currencyNamespace": "CkqpDgRm", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1972-06-25T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1973-06-27T00:00:00Z", "discountedPrice": 51, "expireAt": "1977-10-24T00:00:00Z", "price": 89, "purchaseAt": "1986-10-18T00:00:00Z", "trialPrice": 96}, {"currencyCode": "IBxRhKMc", "currencyNamespace": "ZogkLomr", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1983-02-02T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1990-03-27T00:00:00Z", "discountedPrice": 9, "expireAt": "1983-08-29T00:00:00Z", "price": 89, "purchaseAt": "1998-12-16T00:00:00Z", "trialPrice": 93}, {"currencyCode": "k7BLN6Rn", "currencyNamespace": "RUMrIZV8", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1985-01-17T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1976-05-04T00:00:00Z", "discountedPrice": 32, "expireAt": "1980-02-11T00:00:00Z", "price": 77, "purchaseAt": "1982-10-01T00:00:00Z", "trialPrice": 72}]}, "seasonType": "TIER", "sku": "GypuhpKa", "stackable": false, "status": "INACTIVE", "tags": ["n1RlfyZJ", "snHuaYZW", "vlBo62Wl"], "targetCurrencyCode": "SXOHCBbK", "targetNamespace": "BpTi38vo", "thumbnailUrl": "BwIujG4E", "useCount": 97}' --login_with_auth "Bearer foo"
platform-delete-item 'OhmVOuUH' --login_with_auth "Bearer foo"
platform-acquire-item 'nKLWn7kG' --body '{"count": 11, "orderNo": "6sd4uaxg"}' --login_with_auth "Bearer foo"
platform-get-app 'GQXaTFjs' --login_with_auth "Bearer foo"
platform-update-app 'F4up3rWk' 'l4Kqsa6b' --body '{"carousel": [{"alt": "LGGylK5c", "previewUrl": "nsJsUv7q", "thumbnailUrl": "YrhNbME1", "type": "video", "url": "7ydnbCda", "videoSource": "youtube"}, {"alt": "5CUSczQJ", "previewUrl": "gur8ud1q", "thumbnailUrl": "L4qADLQH", "type": "video", "url": "oAlVJLoE", "videoSource": "vimeo"}, {"alt": "moALISPj", "previewUrl": "lpkkneex", "thumbnailUrl": "EddRfwX3", "type": "image", "url": "6jSotgKe", "videoSource": "vimeo"}], "developer": "h17AgX3n", "forumUrl": "U7bIJbzn", "genres": ["Simulation", "Strategy", "RPG"], "localizations": {"JqGhqZgF": {"announcement": "Urt9YXpE", "slogan": "BeIVvUVt"}, "nMifceKW": {"announcement": "bDq46nxX", "slogan": "pZMzspuT"}, "mHhfETEJ": {"announcement": "kCtfXugx", "slogan": "4W88A5UU"}}, "platformRequirements": {"Ci2KUysh": [{"additionals": "y6HO3se1", "directXVersion": "EHb2YApe", "diskSpace": "XI6LB7hG", "graphics": "qnAZHL0B", "label": "V43yjD54", "osVersion": "0FFsgfnO", "processor": "CkkZgtG2", "ram": "I13no4l1", "soundCard": "x2Qxclpt"}, {"additionals": "xNTl0Ejg", "directXVersion": "HbAWhTUG", "diskSpace": "ftraDC8P", "graphics": "YVOshkeB", "label": "4Q3no9H7", "osVersion": "hBXL9IVE", "processor": "b6V6zu4N", "ram": "szpt5FnP", "soundCard": "kAXIcxUt"}, {"additionals": "FiAszk9X", "directXVersion": "Obtx1YaB", "diskSpace": "FimRkx9W", "graphics": "eQu2RnAO", "label": "5tE4DAt9", "osVersion": "DKVNDVzu", "processor": "0KXmvhdz", "ram": "sYMza82f", "soundCard": "wJ7EwvG2"}], "6LQjysuI": [{"additionals": "YFBHDpxB", "directXVersion": "t02V7A5a", "diskSpace": "vugiUUP5", "graphics": "dXQJzzl6", "label": "cEOItSCI", "osVersion": "sL6218n7", "processor": "KwAJ8UwI", "ram": "CreEXMEw", "soundCard": "1daANa4l"}, {"additionals": "RIyA0gBf", "directXVersion": "pp95r5JE", "diskSpace": "wdfTKfHp", "graphics": "dHPnT17w", "label": "vdNz9FYH", "osVersion": "Ws2a8Hfj", "processor": "4sxyfRrN", "ram": "T4kBKvfX", "soundCard": "XhD8U5Cz"}, {"additionals": "QeRPW83b", "directXVersion": "T0BoDb4t", "diskSpace": "m1hnTtIZ", "graphics": "jmZhkWOR", "label": "S8HmvzJy", "osVersion": "lFNVgFyD", "processor": "jK15RHp2", "ram": "WTxvXWeF", "soundCard": "msnmfn2J"}], "ESs5s4QA": [{"additionals": "NvKMqbCM", "directXVersion": "67mCag46", "diskSpace": "bbTQk4Pg", "graphics": "7jsxu7Ws", "label": "qT0PsaBZ", "osVersion": "kPMt2hch", "processor": "0gEfzC45", "ram": "c4FuimO6", "soundCard": "bcPd0bFk"}, {"additionals": "TycOBPID", "directXVersion": "rg3YMZDB", "diskSpace": "mAj6bIfK", "graphics": "idUVOt5X", "label": "uIMATDmW", "osVersion": "3Dx2fwLq", "processor": "mPINQo9M", "ram": "YHat7u1m", "soundCard": "a3S01xKl"}, {"additionals": "87w2OWP5", "directXVersion": "QzPWyAH7", "diskSpace": "ARiRAzkE", "graphics": "dFOGV2sl", "label": "smY2hHSi", "osVersion": "eTVX8WOg", "processor": "fNS1JyqY", "ram": "EzJNV0Ys", "soundCard": "0vE8adaa"}]}, "platforms": ["MacOS", "Android", "IOS"], "players": ["LocalCoop", "CrossPlatformMulti", "Single"], "primaryGenre": "Simulation", "publisher": "XxffC93q", "releaseDate": "1976-03-19T00:00:00Z", "websiteUrl": "j1uzKgEa"}' --login_with_auth "Bearer foo"
platform-disable-item 'rUSIwTJ8' 'PpyezlW7' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'fSK2cbSa' --login_with_auth "Bearer foo"
platform-enable-item 'TupmmJjm' 'aX72SpW4' --login_with_auth "Bearer foo"
platform-feature-item 'hlq2jEx5' '2MKCViCf' 'OX2ScKGo' --login_with_auth "Bearer foo"
platform-defeature-item 'pa4JHnFi' 'KftM5j0A' 'aoVgusG4' --login_with_auth "Bearer foo"
platform-get-locale-item 'N6mdVFjj' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'QaVvJae7' 'eDdnkuKx' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 54, "comparison": "isGreaterThan", "name": "3M4LgEKn", "predicateType": "SeasonPassPredicate", "value": "NnbF9alg", "values": ["u87xDhUN", "GsTytJXd", "3gkiZYxp"]}, {"anyOf": 92, "comparison": "excludes", "name": "4uteGgME", "predicateType": "EntitlementPredicate", "value": "wOpMarkX", "values": ["JVTCwOsG", "pwvK7MPJ", "KeyF2VFw"]}, {"anyOf": 62, "comparison": "isGreaterThan", "name": "x9U1oAEO", "predicateType": "EntitlementPredicate", "value": "vLgh6n9M", "values": ["QxowzfnK", "ePTIbfFY", "pFiN1Qfe"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "isLessThan", "name": "XPG50uyR", "predicateType": "SeasonTierPredicate", "value": "N1sjkEl1", "values": ["cBhafVqE", "59klP5vI", "QctUJZh3"]}, {"anyOf": 16, "comparison": "isGreaterThan", "name": "ClFHVckQ", "predicateType": "EntitlementPredicate", "value": "RTGHK5UM", "values": ["XZGlEl7c", "Fe6fQS5I", "zmkyucHg"]}, {"anyOf": 96, "comparison": "isLessThanOrEqual", "name": "JmUv8KbI", "predicateType": "SeasonTierPredicate", "value": "oOV3edvh", "values": ["8eRrQYDZ", "e7j2oLGM", "EX6Rq59K"]}]}, {"operator": "and", "predicates": [{"anyOf": 75, "comparison": "isGreaterThanOrEqual", "name": "qkb7c6ui", "predicateType": "EntitlementPredicate", "value": "o19j6TeE", "values": ["J6mSZKXW", "APgvUVtv", "aGJW9WFh"]}, {"anyOf": 34, "comparison": "isNot", "name": "o4LDZUel", "predicateType": "SeasonTierPredicate", "value": "H1qmHBeC", "values": ["zg5KJYXN", "OzVZkusa", "ZztvevTf"]}, {"anyOf": 12, "comparison": "isGreaterThanOrEqual", "name": "CB57uoy8", "predicateType": "SeasonTierPredicate", "value": "AfmudPPY", "values": ["Leh2FzE8", "Gp6QHVKX", "kM9Rb0Oo"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item '40zySTij' --body '{"orderNo": "KITv4bwx"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "9jbdTzx6", "name": "BmjkDoFZ", "status": "INACTIVE", "tags": ["9rQro5hu", "NGuGxH3w", "wXyab3PM"]}' --login_with_auth "Bearer foo"
platform-get-key-group 't0y10z14' --login_with_auth "Bearer foo"
platform-update-key-group 'XPUaaekT' --body '{"description": "IAfwrKhH", "name": "ilDURJex", "status": "ACTIVE", "tags": ["ZB8u6BiK", "cxwFciYS", "FDmhqJRz"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'kwcZnktN' --login_with_auth "Bearer foo"
platform-list-keys 'yE8t74aE' --login_with_auth "Bearer foo"
platform-upload-keys '8u3od4CO' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'fRuBY8Mn' --login_with_auth "Bearer foo"
platform-refund-order 'xjK4Q7re' --body '{"description": "Z0Upu6iC"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "98hhoAdi", "privateKey": "iIQWAIb7"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "Qso24vGr", "currencyNamespace": "oUr1R3hY", "customParameters": {"hPvHWYE8": {}, "mXz6QYfw": {}, "S4ZLgAHt": {}}, "description": "7CJdOejt", "extOrderNo": "zs164ahQ", "extUserId": "rLkA5Fxm", "itemType": "MEDIA", "language": "uO", "metadata": {"WeB6SPQl": "R1lrXxBg", "EPp7lKaf": "CI1UuRxp", "cPbrqChf": "O8UujEHZ"}, "notifyUrl": "tCYe410Q", "omitNotification": true, "platform": "SDKK7EPn", "price": 73, "recurringPaymentOrderNo": "sn30ro5j", "region": "jZAQnr6O", "returnUrl": "57yhDxtD", "sandbox": true, "sku": "Vij49CFs", "subscriptionId": "HC8QazlI", "targetNamespace": "SCe1ywPy", "targetUserId": "FPOYyTxM", "title": "nqtLJkBN"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'cQFg4AYC' --login_with_auth "Bearer foo"
platform-get-payment-order 'jmhRKqwP' --login_with_auth "Bearer foo"
platform-charge-payment-order 'BhtJmXCh' --body '{"extTxId": "j1CCJPF3", "paymentMethod": "oWVBfyZz", "paymentProvider": "ADYEN"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'xfCgKnMA' --body '{"description": "o3B9JVA9"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification '3XEgaO67' --body '{"amount": 31, "currencyCode": "TWZMXnJk", "notifyType": "CHARGE", "paymentProvider": "XSOLLA", "salesTax": 67, "vat": 38}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'hNfSF6Bs' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Playstation' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Nintendo' --body '{"allowedBalanceOrigins": ["System", "Twitch", "Epic"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "jVLeQZm5", "eventTopic": "rMnxjdEf", "maxAwarded": 97, "maxAwardedPerUser": 57, "namespaceExpression": "h7nXMle9", "rewardCode": "3gCX4Ko9", "rewardConditions": [{"condition": "TxlaP8rx", "conditionName": "k9E311Ha", "eventName": "0Y53gG0E", "rewardItems": [{"duration": 39, "itemId": "qcJJC5So", "quantity": 68}, {"duration": 99, "itemId": "azVqa14d", "quantity": 79}, {"duration": 94, "itemId": "PFNLzazO", "quantity": 72}]}, {"condition": "CzONGLcK", "conditionName": "EF10Dyvd", "eventName": "2kXS7wP9", "rewardItems": [{"duration": 10, "itemId": "V1edvLRx", "quantity": 82}, {"duration": 17, "itemId": "IikFonAJ", "quantity": 43}, {"duration": 98, "itemId": "HO2X3fNr", "quantity": 85}]}, {"condition": "63pWyViO", "conditionName": "7isjhLIc", "eventName": "8LF2Om0M", "rewardItems": [{"duration": 12, "itemId": "u0CzyY8j", "quantity": 68}, {"duration": 36, "itemId": "eFLyxFxN", "quantity": 25}, {"duration": 11, "itemId": "cVmhfp8R", "quantity": 78}]}], "userIdExpression": "BNAvYm1C"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'MmivtPba' --login_with_auth "Bearer foo"
platform-update-reward 'L5YRfAFY' --body '{"description": "hD3Ue6NZ", "eventTopic": "pptnQ29i", "maxAwarded": 42, "maxAwardedPerUser": 71, "namespaceExpression": "OrLuB1IR", "rewardCode": "W6qd1qEp", "rewardConditions": [{"condition": "Qiff0dLB", "conditionName": "Y08GgALx", "eventName": "WjhGePYS", "rewardItems": [{"duration": 53, "itemId": "u0tKOWlO", "quantity": 53}, {"duration": 9, "itemId": "pFJJLQRQ", "quantity": 44}, {"duration": 25, "itemId": "A0wHbOTx", "quantity": 69}]}, {"condition": "9GuphaNe", "conditionName": "t0W1aybE", "eventName": "2qrJQ76g", "rewardItems": [{"duration": 40, "itemId": "iL9LjA2Q", "quantity": 93}, {"duration": 17, "itemId": "WKk1zR1J", "quantity": 8}, {"duration": 30, "itemId": "blMzCgd4", "quantity": 30}]}, {"condition": "CZyb9WAk", "conditionName": "q1gFKahl", "eventName": "GqqcLOYb", "rewardItems": [{"duration": 82, "itemId": "doqOxJVK", "quantity": 74}, {"duration": 4, "itemId": "HhYxhb21", "quantity": 69}, {"duration": 14, "itemId": "nB5SmJMI", "quantity": 90}]}], "userIdExpression": "abl4228t"}' --login_with_auth "Bearer foo"
platform-delete-reward '8XEvvOdM' --login_with_auth "Bearer foo"
platform-check-event-condition 'M53Hhuer' --body '{"payload": {"VNyLftJy": {}, "23yj7kHK": {}, "KNnhK996": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'hPgXuQ6y' --body '{"conditionName": "lGOdlk0k", "userId": "iZrqXoYD"}' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "jV3SMX7x", "defaultRegion": "ArXPdaYi", "description": "p9NgDD8a", "supportedLanguages": ["JyX4NoRr", "YlYx4xrb", "HgEb0F0Q"], "supportedRegions": ["x3MbBOzC", "tXoLeHcW", "YiqfbLXK"], "title": "OSixw1ko"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'P30oz5y8' --login_with_auth "Bearer foo"
platform-update-store 'I3sVhtCT' --body '{"defaultLanguage": "sTDIgU8w", "defaultRegion": "wtaAWF2A", "description": "bQ9PybQr", "supportedLanguages": ["NriIKVtA", "Y93q6RLt", "E5TOHCPC"], "supportedRegions": ["m3UcV26m", "QfCYTZkU", "icVqA6iA"], "title": "dhUpyym4"}' --login_with_auth "Bearer foo"
platform-delete-store '3O8vBSxp' --login_with_auth "Bearer foo"
platform-query-changes 'lWyqfAPD' --login_with_auth "Bearer foo"
platform-publish-all 'FyaeXvOv' --login_with_auth "Bearer foo"
platform-publish-selected '3DAlNLiD' --login_with_auth "Bearer foo"
platform-select-all-records '2IyKXmmk' --login_with_auth "Bearer foo"
platform-get-statistic 'ytnmBv0Q' --login_with_auth "Bearer foo"
platform-unselect-all-records 'i9B2tEc5' --login_with_auth "Bearer foo"
platform-select-record 'Tiq6vj0n' 'AFbhOeNw' --login_with_auth "Bearer foo"
platform-unselect-record 'SSTX0937' '0hQGN9Io' --login_with_auth "Bearer foo"
platform-clone-store 'QuAO2tmo' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'iIXMZaAX' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'p7lBdqM7' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'lhDGa1bW' --body '{"orderNo": "2tlpKhnN"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'A4mxvlXL' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'QpXeKiam' --body '{"count": 17, "orderNo": "Rj1DSiiv"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'tAA6yyBT' --body '{"achievements": [{"id": "XOpv7fah", "value": 68}, {"id": "8CbGcLJJ", "value": 94}, {"id": "68Yp1Q9R", "value": 23}], "steamUserId": "DUq6AVJn"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'LFnnrTem' 'VGWi5JbY' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'Al0ddhJt' --body '{"achievements": [{"id": "EhH7lOvk", "percentComplete": 28}, {"id": "LMF5Hph2", "percentComplete": 86}, {"id": "qAiahsCj", "percentComplete": 96}], "serviceConfigId": "cfoHAnP2", "titleId": "BfSTkCIg", "xboxUserId": "Y1rG0lwJ"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'kRd4LajU' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'yCuUAqxk' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'JsICQq7y' --login_with_auth "Bearer foo"
platform-anonymize-integration 'G2sXYASu' --login_with_auth "Bearer foo"
platform-anonymize-order 'IK2j7gx1' --login_with_auth "Bearer foo"
platform-anonymize-payment 'SqrIil6V' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'AdH5KEN3' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'AiXZ9RNy' --login_with_auth "Bearer foo"
platform-get-user-dlc 'LxEL09sN' 'PSN' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'ZNOQufAw' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'fN83aNc7' --body '[{"endDate": "1971-06-23T00:00:00Z", "grantedCode": "SPQrXv1K", "itemId": "wHtklIQM", "itemNamespace": "UMRDofdH", "language": "yY-CeqN_813", "quantity": 52, "region": "v9pyIw6d", "source": "IAP", "startDate": "1997-11-19T00:00:00Z", "storeId": "iimTmWtI"}, {"endDate": "1978-01-25T00:00:00Z", "grantedCode": "mvIrAD8C", "itemId": "icTeTkEc", "itemNamespace": "GgzTa3ZF", "language": "dte", "quantity": 72, "region": "BuSXxFVz", "source": "OTHER", "startDate": "1978-07-11T00:00:00Z", "storeId": "4nZdglM5"}, {"endDate": "1996-11-14T00:00:00Z", "grantedCode": "GpCZqO0D", "itemId": "ZT8rXL2G", "itemNamespace": "aUqtLqGK", "language": "HvQ", "quantity": 21, "region": "zp3E0lb4", "source": "ACHIEVEMENT", "startDate": "1976-05-21T00:00:00Z", "storeId": "Ps1l3GDS"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'wXw20LtG' '5iMbsBF5' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type '9VgnO4LH' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'Bu1xJzsZ' 'HWQB5mVw' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'MlVPmpjX' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'iiVbrEUU' 'C4olUN13' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'shnlvyBp' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'l3rDKSkC' '["pDgtQ8aK", "bnmNovFD", "pIz1RZ21"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'GCmh3ZA1' 'XElVBJUn' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'g0HQL8T8' 'gWAYMkwx' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'YHG4tYLl' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'HYqBBIxQ' 'VuQHdXMO' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'TYT7ngI5' 'uOrQzSjy' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'UC4wmahu' 'pT1AS483' --login_with_auth "Bearer foo"
platform-update-user-entitlement '9h4Pqu2L' 'pYxw4kR0' --body '{"endDate": "1994-04-11T00:00:00Z", "nullFieldList": ["yHPesjGC", "8vVoxhkw", "FLAmi3A3"], "startDate": "1980-07-18T00:00:00Z", "status": "REVOKED", "useCount": 85}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '2wChJ009' 'BHRXeb6n' --body '{"options": ["xRTr5jAB", "8r7066du", "D5xuydAo"], "requestId": "p6hQRcIM", "useCount": 23}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '5VC0BLza' 'eZkkAQA5' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'RHZm8K0X' 'IdOvxfGY' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories '5V1KuVAD' 'Iqns7mGk' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'NH5ciTXt' 'UD7GyYcc' --login_with_auth "Bearer foo"
platform-fulfill-item 'umF5TplN' --body '{"duration": 44, "endDate": "1980-10-29T00:00:00Z", "itemId": "yCLHcL4j", "itemSku": "n9UTwqu8", "language": "IvEGslrd", "order": {"currency": {"currencyCode": "BTaW1YAs", "currencySymbol": "AwoV8c7l", "currencyType": "VIRTUAL", "decimals": 88, "namespace": "YD2waL2y"}, "ext": {"wDowzsY6": {}, "TruzktAr": {}, "L61VxIeL": {}}, "free": true}, "orderNo": "gYAbLUWj", "origin": "Playstation", "quantity": 81, "region": "Bf3pYc9x", "source": "PROMOTION", "startDate": "1989-03-02T00:00:00Z", "storeId": "GUGaANWd"}' --login_with_auth "Bearer foo"
platform-redeem-code 'IMELEygy' --body '{"code": "G7NsUM5U", "language": "gvt", "region": "lLq9FkKD"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'Zy6BN8CK' --body '{"origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "JPbUasXC", "namespace": "WN0neHJp"}, "item": {"itemId": "d69FizJO", "itemSku": "xGTjWxNN", "itemType": "xpSRY3No"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "IFEW3Y0Y", "namespace": "QhWlgdXs"}, "item": {"itemId": "KIp0UmK9", "itemSku": "DLPJtpQU", "itemType": "QoEODo8l"}, "quantity": 23, "type": "CURRENCY"}, {"currency": {"currencyCode": "yPKSO6Vs", "namespace": "P6ubpCK3"}, "item": {"itemId": "Te39gsgW", "itemSku": "hfQrs9kN", "itemType": "4m2l1GRv"}, "quantity": 18, "type": "ITEM"}], "source": "OTHER"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'a6OUZY0B' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'I5G5yO4o' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history '0DYmhLSP' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'SGFYKdPL' --body '{"itemIdentityType": "ITEM_SKU", "language": "Ea_tOAn_872", "productId": "4pbHT77u", "region": "dO4BFRTb", "type": "XBOX"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'W2shfqGS' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'OclCbVs3' --body '{"currencyCode": "CQiw0cJl", "currencyNamespace": "jFYEjCPL", "discountedPrice": 22, "ext": {"GevVdy6z": {}, "yZwL1o4E": {}, "KknuhNKz": {}}, "itemId": "hniF2J7W", "language": "8LfBnOP0", "options": {"skipPriceValidation": false}, "platform": "Nintendo", "price": 86, "quantity": 90, "region": "FGiFg0vV", "returnUrl": "wh0xl9KO", "sandbox": false}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'ejirPMef' 'P2n3Go38' --login_with_auth "Bearer foo"
platform-get-user-order 'sV1uWMh0' 'XdT9iMXD' --login_with_auth "Bearer foo"
platform-update-user-order-status 'aUVJGexw' '3f4fmXwD' --body '{"status": "INIT", "statusReason": "GE4phGWf"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'oLEr8HKU' 'k1k61EET' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'XiTiz229' 'yuvmjeAr' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'Ejvxv19N' 'x59FgSFi' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'o2rVgQ4P' '9W287JOD' --body '{"additionalData": {"cardSummary": "a9tDUSgJ"}, "authorisedTime": "1987-10-01T00:00:00Z", "chargebackReversedTime": "1988-08-03T00:00:00Z", "chargebackTime": "1993-12-26T00:00:00Z", "chargedTime": "1976-09-16T00:00:00Z", "createdTime": "1974-05-10T00:00:00Z", "currency": {"currencyCode": "xnOMHlAO", "currencySymbol": "3oyM6lrD", "currencyType": "REAL", "decimals": 51, "namespace": "wB6S0Yia"}, "customParameters": {"fTQ2s90V": {}, "77mB5bYc": {}, "iaoZxEZP": {}}, "extOrderNo": "ZZYE9Wwl", "extTxId": "qvsFhGt5", "extUserId": "oVhIJ86t", "issuedAt": "1974-07-15T00:00:00Z", "metadata": {"d696Hyji": "mDFztkUX", "jhzgXuxx": "1rCFT9H7", "UcJwuDi0": "8Fz1aYKK"}, "namespace": "sTD9IYGB", "nonceStr": "sevUX1A2", "paymentMethod": "ErOYqnVy", "paymentMethodFee": 54, "paymentOrderNo": "2wuedmdk", "paymentProvider": "ADYEN", "paymentProviderFee": 32, "paymentStationUrl": "Kj9r8NrO", "price": 95, "refundedTime": "1977-01-13T00:00:00Z", "salesTax": 86, "sandbox": false, "sku": "5FWW49dL", "status": "CHARGEBACK_REVERSED", "statusReason": "AS1J3Su4", "subscriptionId": "dmW5FQcz", "subtotalPrice": 77, "targetNamespace": "1ZkOnx2W", "targetUserId": "jHQDQThk", "tax": 17, "totalPrice": 11, "totalTax": 71, "txEndTime": "1998-01-31T00:00:00Z", "type": "qP21yjiW", "userId": "OqXkduzA", "vat": 91}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'jYYoNdR6' '59oEHDWR' --login_with_auth "Bearer foo"
platform-create-user-payment-order '0TfvODlE' --body '{"currencyCode": "omQ2j2NM", "currencyNamespace": "cN3KVBIo", "customParameters": {"tkJEgcnq": {}, "EpQumkV8": {}, "iKKfmaig": {}}, "description": "uL9EFiFS", "extOrderNo": "o583uOFs", "extUserId": "NV5xKBhh", "itemType": "SUBSCRIPTION", "language": "gm", "metadata": {"tJGLjZbs": "eXD3KTdx", "I7IpSkal": "S6BCTXLB", "DCrbacyQ": "DdH44nMC"}, "notifyUrl": "mFO7E0hV", "omitNotification": false, "platform": "PbpCvRlt", "price": 95, "recurringPaymentOrderNo": "MORfwuI1", "region": "XEA0aXJ3", "returnUrl": "pbf0K2QX", "sandbox": true, "sku": "kn0Q5dfF", "subscriptionId": "TDZ9JtsO", "title": "PFKcIMMF"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'HSi64jsN' '6AkGPwuy' --body '{"description": "KjOxOKfk"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption '68Z9gA1V' --body '{"code": "S45067Y7", "orderNo": "aH3CvTdG"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'YKFw7ggR' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'BEcRSUzE' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '9OrjevUz' --body '{"grantDays": 67, "itemId": "2VwsOB7t", "language": "Fpjm1HIq", "reason": "Ym8MScpL", "region": "ji8rEdy9", "source": "4DeVnOqk"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '4JqbqvhG' 'aofitS08' --login_with_auth "Bearer foo"
platform-get-user-subscription 'yoLqJ5Iy' 'kcQyyRU8' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'r1AYGL7D' 'hes5wiTj' --login_with_auth "Bearer foo"
platform-cancel-subscription 'mOH5Ii7C' 'Qs5Mc7pr' --body '{"immediate": false, "reason": "iNn8Sb5t"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'CJRekpuY' 'KUw4ZNx0' --body '{"grantDays": 24, "reason": "k4gZFRk5"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'b3CdN3ji' 'F0KVM84z' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '6EVP2Vuv' 'rgE6hFfH' --body '{"additionalData": {"cardSummary": "Zjhm6OOj"}, "authorisedTime": "1988-11-15T00:00:00Z", "chargebackReversedTime": "1979-02-13T00:00:00Z", "chargebackTime": "1971-12-31T00:00:00Z", "chargedTime": "1995-05-14T00:00:00Z", "createdTime": "1987-09-29T00:00:00Z", "currency": {"currencyCode": "2GslTLey", "currencySymbol": "TEKBEPD7", "currencyType": "REAL", "decimals": 76, "namespace": "zDHFhXtW"}, "customParameters": {"RbFoqaL4": {}, "ZkJ0ZlIn": {}, "8rj10U7t": {}}, "extOrderNo": "qnjrfts3", "extTxId": "uHrBLEoJ", "extUserId": "jovM0K0s", "issuedAt": "1993-05-21T00:00:00Z", "metadata": {"vbQ5TyYq": "iInssn3I", "DJBqWcOL": "hOvXsqRy", "cacjUmW5": "DGS3NMlx"}, "namespace": "yqk5QsAr", "nonceStr": "d9BLYPkh", "paymentMethod": "lWePsbym", "paymentMethodFee": 30, "paymentOrderNo": "j3YnEc5d", "paymentProvider": "PAYPAL", "paymentProviderFee": 74, "paymentStationUrl": "QTOPC5T6", "price": 9, "refundedTime": "1991-03-13T00:00:00Z", "salesTax": 30, "sandbox": false, "sku": "YKBsnhlH", "status": "REQUEST_FOR_INFORMATION", "statusReason": "Kpyzp01z", "subscriptionId": "up6bC3cl", "subtotalPrice": 47, "targetNamespace": "RZMd27gz", "targetUserId": "J0bMzC2T", "tax": 31, "totalPrice": 30, "totalTax": 58, "txEndTime": "1982-05-17T00:00:00Z", "type": "IV8vfNVa", "userId": "fWjdplhO", "vat": 23}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'PVuhZ4Ca' 'wKtsPmk0' --body '{"count": 63, "orderNo": "dQRNzAnI"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'R1IQbe4x' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'nflJa0xM' 'SA0nomgq' --login_with_auth "Bearer foo"
platform-credit-user-wallet '8kBxD4GK' 'oaoutNfI' --body '{"amount": 52, "expireAt": "1985-12-18T00:00:00Z", "origin": "System", "reason": "pKCvbqwr", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'PxBU2e8I' 'MqtFdhEO' --body '{"amount": 51, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-sync-orders 'i0Ayw8DF' 'jGF4MkRD' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["YXHF3mHe", "edT7cg2T", "RGVuquMC"], "apiKey": "WGkxBhqA", "authoriseAsCapture": false, "blockedPaymentMethods": ["wShahV5S", "VUO27RQX", "uZWSRwUN"], "clientKey": "NaLizKOu", "dropInSettings": "eHgfKxCP", "liveEndpointUrlPrefix": "JKu5nMta", "merchantAccount": "E0eEKVp1", "notificationHmacKey": "YI1p7ZCA", "notificationPassword": "5DavEGek", "notificationUsername": "6QZx69yK", "returnUrl": "h6YYDzWG", "settings": "JrMT5dWw"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "C5bNvFrg", "privateKey": "sf7jx6pb", "publicKey": "Yx8vxjyB", "returnUrl": "RyEDYVTh"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "1dpRNuAN", "secretKey": "y9gDJYER"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "6tP92HbV", "clientSecret": "o8l6J8PY", "returnUrl": "6BUOD8dI", "webHookId": "vkB199Q9"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["fl8unNvy", "YpKIgR4j", "vLVZg4I5"], "publishableKey": "goJOcLaf", "secretKey": "2SZx5pQF", "webhookSecret": "lQ9OBY9h"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "RGGv6arL", "key": "SkLrHFIx", "mchid": "F15SkEIk", "returnUrl": "8riQnj3h"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "FmrUih0S", "flowCompletionUrl": "X1vh827q", "merchantId": 95, "projectId": 85, "projectSecretKey": "EhtNyfwI"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'DFf5yS4k' --login_with_auth "Bearer foo"
platform-update-adyen-config 'gDeIbfg7' --body '{"allowedPaymentMethods": ["GLhFXPuq", "BrNpEhNO", "VFGINf5j"], "apiKey": "B6oG6GnQ", "authoriseAsCapture": true, "blockedPaymentMethods": ["kQq4CSsb", "7AOkxE4g", "mFiGNnEq"], "clientKey": "CAsbQwDm", "dropInSettings": "XxmUAT3k", "liveEndpointUrlPrefix": "tl8wJbYi", "merchantAccount": "a0ywZx7Y", "notificationHmacKey": "LpuqOTAb", "notificationPassword": "JEcp5EOp", "notificationUsername": "ZGpCRNU8", "returnUrl": "xHAdNdCX", "settings": "Co4b7WuJ"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'JaDKrqG3' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '32acau7X' --body '{"appId": "aDq5HJpr", "privateKey": "A6BHF4Mu", "publicKey": "TTdfZROh", "returnUrl": "kEXXXoxB"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'y6LI8Ple' --login_with_auth "Bearer foo"
platform-update-checkout-config 'WO5AdlUM' --body '{"publicKey": "JoY9wYf1", "secretKey": "yQeodnHc"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'xNnNKXVQ' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '5C6vpVgh' --body '{"clientID": "gOjwi6o9", "clientSecret": "4FWlL4WY", "returnUrl": "NyFfKLPi", "webHookId": "LRxMTvAp"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'Fi332NHg' --login_with_auth "Bearer foo"
platform-update-stripe-config 'Z9Hj5lZb' --body '{"allowedPaymentMethodTypes": ["nnskMVIi", "naoDF1Vt", "7qylkLRz"], "publishableKey": "p5hyYE8F", "secretKey": "oAbyGNCR", "webhookSecret": "ZhxEsXPu"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'eUZfy5ZN' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'e2YDnjUn' --body '{"appId": "P3Vk0DaB", "key": "nRKx5lru", "mchid": "e5yxptMl", "returnUrl": "TentW2o0"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'KK8ZBHQN' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'bfB4dSN6' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'KdvKkZpU' --body '{"apiKey": "8damwaf6", "flowCompletionUrl": "Bs8TDhGA", "merchantId": 37, "projectId": 5, "projectSecretKey": "GxOVgreB"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'hM4Dbu4p' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '9drmrw1I' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "0hzSexJk", "region": "1EhkLJk2", "sandboxTaxJarApiToken": "dQ072FvJ", "specials": ["ADYEN", "WXPAY", "PAYPAL"], "taxJarApiToken": "fRP87cBE", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'W3MU0LFI' --body '{"aggregate": "ADYEN", "namespace": "TVRLOg3v", "region": "NseS6bz9", "sandboxTaxJarApiToken": "SaOWZIBH", "specials": ["ALIPAY", "PAYPAL", "WXPAY"], "taxJarApiToken": "wZBtm1VU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'hebB3O6a' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "AueVSjqy", "taxJarApiToken": "NoNf8ZFb", "taxJarEnabled": false, "taxJarProductCodesMapping": {"EKjCq15k": "qFjtotfK", "dVQZJXOe": "1ERlCZ5E", "oroyydEv": "7ZUuefvS"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'uh2jxgZg' '60WoFzn1' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'rIr42kox' --login_with_auth "Bearer foo"
platform-public-get-child-categories '7xtUrrNm' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories '6heBvvbo' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'tIodpS6k' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'qubnA3xz' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'HzEjZrF5' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["hmoDUIKV", "EeYRfshE", "nBdg30Ge"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'KAUEUefU' 'rBrWemwD' --login_with_auth "Bearer foo"
platform-public-get-app 'wnxypnoy' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'fCNpsKTH' --login_with_auth "Bearer foo"
platform-public-get-item '50MrBsYV' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "n5EvHdmE", "paymentProvider": "ALIPAY", "returnUrl": "NczXb7pM", "ui": "wtwY4sRM", "zipCode": "5y1wK4Rv"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'ZZOgutQk' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'iok5eTIx' --login_with_auth "Bearer foo"
platform-pay 'Nc6nUbVD' --body '{"token": "kqcisQK1"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'XekxPqOU' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'XSOLLA' 'mzmqDa1M' --login_with_auth "Bearer foo"
platform-public-get-qr-code '4ys5immG' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'bJayA2jL' '2IsE1PHf' 'CHECKOUT' 'FToF9673' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '9d1mZqbu' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'spjNjXpl' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'H5bMoJy0' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'UmAd7NTQ' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'qmiw9R9L' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'L4CsGeKR' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'N3pL7IZg' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'XViaVSqm' --body '{"epicGamesJwtToken": "l3RiFnBI"}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'XJJytWMx' --body '{"serviceLabel": 36}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels '0yDSRUp2' --body '{"serviceLabels": [99, 21, 62]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'gWc1krcR' --body '{"appId": "vafpvB9g", "steamId": "wV4hfuRx"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'hNlTwqEf' --body '{"xstsToken": "EzhB8Vmy"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'YacI2UUn' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'dC3bjIfw' 'kTcTyT8V' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'ChLqMxKV' 'GAME' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Mmkm0W4z' 'aJ40HbN0' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'wuovVEUx' 'jYkyhGD9' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'M72gCj3E' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'XgbFefhf' 'R1agwWUX' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'J03CXgEz' 'Iv4kAL0d' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'X3Q3QmMp' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'Zpa5zsJy' 'Wy62OkXF' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'JUHuF0U5' '5RBGvcHm' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'ndasimaN' 'Obyo0ytW' --body '{"options": ["9LnrTQa7", "lWZ1Dc1O", "mF92Jy7N"], "requestId": "FSjp8Ceh", "useCount": 65}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'poSX5OHh' --body '{"code": "hkFUaWVc", "language": "tLJW-QMgl", "region": "ltaxT5Xt"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'pm1O37hu' --body '{"excludeOldTransactions": false, "language": "tm_nqGk-Sd", "productId": "w5DTiwj3", "receiptData": "NO1351Dj", "region": "evm9DH54", "transactionId": "H00TFGBt"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'z6Td6RyH' --body '{"epicGamesJwtToken": "xQHolFeL"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'eICv6Czc' --body '{"autoAck": true, "language": "uvo-Bzln", "orderId": "HjMqON4p", "packageName": "89coXlZl", "productId": "NEI9G24D", "purchaseTime": 7, "purchaseToken": "UDZP5BnB", "region": "Lj6ETf4w"}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'fF05YqMg' --body '{"currencyCode": "8ReUNEMj", "price": 0.7095354327558988, "productId": "qoe7RhUw", "serviceLabel": 60}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'sCDTDMG0' --body '{"currencyCode": "kZkFcx4s", "price": 0.5166200824670598, "productId": "HKGtgtH5", "serviceLabels": [76, 45, 39]}' --login_with_auth "Bearer foo"
platform-sync-stadia-entitlement 'b7iXwRif' --body '{"appId": "oFvaJYaz", "language": "vCN", "region": "49eqPIem", "stadiaPlayerId": "yRxrmTxd"}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'lwrelaYW' --body '{"appId": "l7WonGLU", "currencyCode": "ACgy0DFT", "language": "iYsf", "price": 0.03059549334898104, "productId": "V6UUkLr6", "region": "On2Nbep5", "steamId": "0Z50l0Jw"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement 'sdJtTEN7' --body '{"gameId": "jqA0Rs0S", "language": "gHyN_wQiZ-225", "region": "YxyTZwlS"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '9lXM88tg' --body '{"currencyCode": "sZAisFxl", "price": 0.5248238880630444, "productId": "pjSqijLK", "xstsToken": "2dsXn1uN"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'YgzMRFoI' --login_with_auth "Bearer foo"
platform-public-create-user-order 'AmraHfZU' --body '{"currencyCode": "eG4HYyC1", "discountedPrice": 49, "ext": {"LgJXjlj2": {}, "edfmozEN": {}, "Y4Ed5GFv": {}}, "itemId": "WIGopMOE", "language": "xvfW_658", "price": 1, "quantity": 38, "region": "zCEAIPLd", "returnUrl": "PrqxnZj6"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'I2zgnEDS' 'GqClcBfF' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'eDsL5OFK' 'm2kysZds' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'WPjEOP9L' 'zV8DX897' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'XYx9epF9' '6Ou1zsYs' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'oquuF4My' --login_with_auth "Bearer foo"
platform-public-delete-payment-account '1cSZnZQV' 'paypal' '6S8hWNzv' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'he70JDPM' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'QWIiJH55' --body '{"currencyCode": "2330wfbP", "itemId": "YiNcal0E", "language": "mc_WQ", "region": "vIprvFq5", "returnUrl": "vZzoysRv", "source": "SSdpIp3i"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'wsScBNPo' '4ZMULPAc' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'n9hH5u1M' '4GCG6jaY' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'W7p7mjAD' 'PXcngbs3' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'ijixbxnd' 'ZHJozFsx' --body '{"immediate": false, "reason": "NmWVSAgW"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'HbsaW9NS' 'hU3qUOHA' --login_with_auth "Bearer foo"
platform-public-get-wallet 'a2D5IyZr' '1pBxKoET' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'CgxWmh6C' 'U7spQ1xM' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'fjBvrrHP' --body '{"itemIds": ["DbMYMRNd", "5WFi5U2i", "IenoWUYA"]}' --login_with_auth "Bearer foo"
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
echo "1..364"

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
    --body '{"context": {"item": {"appId": "hB1Pl6l2", "appType": "SOFTWARE", "baseAppId": "PF69gPf8", "boothName": "ZZ1kNCCf", "boundItemIds": ["jTbq0LOw", "b9IrGqRU", "L6HrT2lg"], "categoryPath": "Mt7Fgksh", "clazz": "swGTZ3kb", "createdAt": "1983-01-07T00:00:00Z", "description": "ErIuTPWh", "displayOrder": 67, "entitlementType": "DURABLE", "ext": {"gkuVIvwd": {}, "R0b5kI4i": {}, "2pWlXVUA": {}}, "features": ["9AZ7cNUx", "1UnJXGfi", "ThfXq33B"], "fresh": true, "images": [{"as": "ciAV8Jjx", "caption": "ep0fWNn6", "height": 38, "imageUrl": "IGc3vv6X", "smallImageUrl": "KRDj0Zr2", "width": 15}, {"as": "WQXlXlVF", "caption": "Cvo8D3L1", "height": 37, "imageUrl": "mDP7Q5cV", "smallImageUrl": "m2Hv80sR", "width": 18}, {"as": "WnNrz0fh", "caption": "tGTNAPfN", "height": 19, "imageUrl": "xKFV7wP4", "smallImageUrl": "VtJtjTZu", "width": 13}], "itemId": "co0wukIg", "itemIds": ["166YtbwC", "s6iWmbH9", "fCKKln6q"], "itemQty": {"X8NR4qpS": 11, "XK8wmthE": 64, "WjuNW0Mo": 85}, "itemType": "EXTENSION", "language": "0zOLa3py", "listable": true, "localExt": {"QTBXw1nf": {}, "0KNFaRmv": {}, "ISPxPL2u": {}}, "longDescription": "04m91K3F", "lootBoxConfig": {"rewardCount": 61, "rewards": [{"lootBoxItems": [{"count": 55, "itemId": "9zO1y319", "itemSku": "u1Ij5bIU", "itemType": "iUhepQg1"}, {"count": 85, "itemId": "sKM5zz5O", "itemSku": "zKEj8j6C", "itemType": "uIBAkL1x"}, {"count": 34, "itemId": "dWJun7cr", "itemSku": "bXXflO5T", "itemType": "jbI2Bf3x"}], "name": "BTo64j4Y", "odds": 0.35196570230539515, "type": "REWARD_GROUP", "weight": 67}, {"lootBoxItems": [{"count": 85, "itemId": "4z9cK5G9", "itemSku": "YyUgGfSH", "itemType": "bS1yH1xH"}, {"count": 66, "itemId": "G7G2oeGI", "itemSku": "b85A2AHp", "itemType": "CMHfUNLK"}, {"count": 80, "itemId": "Y6eUlQdc", "itemSku": "28X2zcKU", "itemType": "wDjMgaCt"}], "name": "5F7qmkvD", "odds": 0.041732738165517036, "type": "REWARD_GROUP", "weight": 93}, {"lootBoxItems": [{"count": 42, "itemId": "u5OgBLhm", "itemSku": "7xtd40L8", "itemType": "wqb9d0fP"}, {"count": 5, "itemId": "UHE7xC7j", "itemSku": "bWsbZ0Up", "itemType": "xtnF9WcS"}, {"count": 32, "itemId": "IupvcEIn", "itemSku": "T0S1qi3R", "itemType": "BBmDLb1K"}], "name": "tmqBfWME", "odds": 0.9278515397774879, "type": "REWARD_GROUP", "weight": 82}]}, "maxCount": 14, "maxCountPerUser": 66, "name": "VOPusIv6", "namespace": "ZEJx3TJb", "optionBoxConfig": {"boxItems": [{"count": 93, "itemId": "ACMDzwOp", "itemSku": "ysOvXWPE", "itemType": "TvCQ9muk"}, {"count": 21, "itemId": "VL0pXrHC", "itemSku": "l41PqPyP", "itemType": "jaQ6dvZ3"}, {"count": 33, "itemId": "7ibFZA7M", "itemSku": "gfIWYKxe", "itemType": "jiTqhJCy"}]}, "purchasable": true, "purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 57, "comparison": "isLessThanOrEqual", "name": "ie8HlGoh", "predicateType": "SeasonTierPredicate", "value": "EN4WbUVE", "values": ["5d5mf4ES", "RwU58o04", "hmZn3ImU"]}, {"anyOf": 85, "comparison": "includes", "name": "G2qgrnqE", "predicateType": "SeasonTierPredicate", "value": "sUpyaWmp", "values": ["sg1WNOo0", "FEJpMij4", "ucrpOZcJ"]}, {"anyOf": 17, "comparison": "isGreaterThan", "name": "BlT6Uabq", "predicateType": "SeasonTierPredicate", "value": "lckN8Vrf", "values": ["IKF7dHro", "VAxs3ZZI", "kqZgfOlH"]}]}, {"operator": "or", "predicates": [{"anyOf": 76, "comparison": "isLessThanOrEqual", "name": "ArmEsboI", "predicateType": "SeasonTierPredicate", "value": "YtI5Q2xR", "values": ["n2sGiPuz", "WexO8N1V", "UoX76NLd"]}, {"anyOf": 81, "comparison": "isNot", "name": "3ineA1FP", "predicateType": "EntitlementPredicate", "value": "3si8aP6s", "values": ["IzJcr0mA", "o0be8rLG", "VdaCJb2w"]}, {"anyOf": 57, "comparison": "isGreaterThan", "name": "UGPnlNpa", "predicateType": "SeasonPassPredicate", "value": "VfcHvOve", "values": ["T7vcyUO4", "kVwBItSL", "UWGDcqxV"]}]}, {"operator": "or", "predicates": [{"anyOf": 64, "comparison": "includes", "name": "iW7fY0pP", "predicateType": "EntitlementPredicate", "value": "IXXb6nvH", "values": ["iWuJUDlF", "Ui3KnSgm", "eCd9wICj"]}, {"anyOf": 13, "comparison": "isLessThan", "name": "kUpjNURD", "predicateType": "EntitlementPredicate", "value": "Bm46l1tY", "values": ["mMJVlbn8", "ZztcGH1N", "hXp7pmS9"]}, {"anyOf": 57, "comparison": "excludes", "name": "xTM6CRi4", "predicateType": "SeasonTierPredicate", "value": "J6vlRjke", "values": ["2jDeh4uu", "V4Dt9xdn", "t3GsTMIo"]}]}]}, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 6, "fixedTrialCycles": 24, "graceDays": 48}, "region": "yIGW2BGd", "regionData": [{"currencyCode": "FynDr76T", "currencyNamespace": "d4CLWRxo", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1976-12-18T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1988-06-28T00:00:00Z", "discountedPrice": 39, "expireAt": "1999-11-26T00:00:00Z", "price": 74, "purchaseAt": "1971-08-26T00:00:00Z", "trialPrice": 75}, {"currencyCode": "ZQipcb2g", "currencyNamespace": "IdOY8AOL", "currencyType": "VIRTUAL", "discountAmount": 27, "discountExpireAt": "1981-10-16T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1971-11-25T00:00:00Z", "discountedPrice": 5, "expireAt": "1984-11-16T00:00:00Z", "price": 50, "purchaseAt": "1988-03-25T00:00:00Z", "trialPrice": 96}, {"currencyCode": "XJSc6999", "currencyNamespace": "xS8uVBo0", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1982-08-24T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1983-10-05T00:00:00Z", "discountedPrice": 45, "expireAt": "1989-05-03T00:00:00Z", "price": 57, "purchaseAt": "1995-08-20T00:00:00Z", "trialPrice": 91}], "seasonType": "PASS", "sku": "BPitIOhQ", "stackable": false, "status": "INACTIVE", "tags": ["D3UsZKur", "feOmxyqW", "gDrZEqmN"], "targetCurrencyCode": "bBcwoZJu", "targetItemId": "As7IYP80", "targetNamespace": "75UznMw7", "thumbnailUrl": "CoamlfBQ", "title": "oV8Qsckd", "updatedAt": "1988-03-11T00:00:00Z", "useCount": 9}, "namespace": "3TtuuqRy", "order": {"currency": {"currencyCode": "88au7UH1", "currencySymbol": "n0wIESdx", "currencyType": "VIRTUAL", "decimals": 13, "namespace": "ehkIfI5W"}, "ext": {"C46a2H59": {}, "xi70666n": {}, "7TqMmjfR": {}}, "free": true}, "source": "PURCHASE"}, "script": "NCTAZwr0", "type": "grantDays"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'TestFulfillmentScriptEval' test.out

#- 4 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'USn0YbH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetFulfillmentScript' test.out

#- 5 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'LHgJHLI5' \
    --body '{"grantDays": "tFig3OCx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateFulfillmentScript' test.out

#- 6 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'FRdTBjgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteFulfillmentScript' test.out

#- 7 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'EbnqIJfG' \
    --body '{"grantDays": "ozCAx91F"}' \
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
    --body '{"clazz": "qThSARPO", "dryRun": false, "fulfillmentUrl": "9Ehu2M1V", "itemType": "OPTIONBOX", "purchaseConditionUrl": "NcyfzUFz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateItemTypeConfig' test.out

#- 10 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'INGAMEITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'SearchItemTypeConfig' test.out

#- 11 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'w1yTjH43' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetItemTypeConfig' test.out

#- 12 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'fTCpokKj' \
    --body '{"clazz": "SNhRiIVK", "dryRun": true, "fulfillmentUrl": "rZ8lPsXy", "purchaseConditionUrl": "oQf0kxDm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateItemTypeConfig' test.out

#- 13 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'rEOuc6Sd' \
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
    --body '{"description": "fsLQojqk", "items": [{"extraSubscriptionDays": 94, "itemId": "sHX3knic", "itemName": "gZ8mUGUk", "quantity": 30}, {"extraSubscriptionDays": 57, "itemId": "HJJgeuAX", "itemName": "8g009NsB", "quantity": 57}, {"extraSubscriptionDays": 24, "itemId": "4Lkr8K9k", "itemName": "lTEE37if", "quantity": 6}], "maxRedeemCountPerCampaignPerUser": 31, "maxRedeemCountPerCode": 6, "maxRedeemCountPerCodePerUser": 71, "maxSaleCount": 59, "name": "1ebq8u7y", "redeemEnd": "1999-09-14T00:00:00Z", "redeemStart": "1980-09-24T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["lkv1LGio", "ngQqLCUS", "YlOtP7er"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateCampaign' test.out

#- 16 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'o0cP1Foe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCampaign' test.out

#- 17 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'cJArMSGf' \
    --body '{"description": "CQHxUHrj", "items": [{"extraSubscriptionDays": 49, "itemId": "HzH3LMfz", "itemName": "eC73Ns0U", "quantity": 38}, {"extraSubscriptionDays": 43, "itemId": "KfruaEq0", "itemName": "ODlzB4HJ", "quantity": 99}, {"extraSubscriptionDays": 76, "itemId": "LocVpE1b", "itemName": "CIdfwly1", "quantity": 17}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 58, "maxRedeemCountPerCodePerUser": 30, "maxSaleCount": 72, "name": "lhcvUkE3", "redeemEnd": "1980-06-26T00:00:00Z", "redeemStart": "1977-05-03T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["NDq1lm03", "V464vdCv", "0MWxD70M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateCampaign' test.out

#- 18 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'D7HCoNIe' \
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
    '5iE6QOyL' \
    --body '{"categoryPath": "6deHOQd4", "localizationDisplayNames": {"tTM4M42L": "M8rchw6h", "MqcDF06Y": "l9yv9ZYa", "MR9y6exm": "YOBhLu2Z"}}' \
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
    'JzInjcEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCategory' test.out

#- 23 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'v8QMaqQg' \
    'yIz6YkIg' \
    --body '{"localizationDisplayNames": {"FOzN6MLN": "I6t0ky3G", "RsTyMfMC": "imUvpepG", "QuXAPCsV": "CWxCuduH"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateCategory' test.out

#- 24 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'OuVxik8r' \
    '1olHQ7Ct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteCategory' test.out

#- 25 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'GFIW2psg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetChildCategories' test.out

#- 26 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'dP4KSuVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetDescendantCategories' test.out

#- 27 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'jVEi21Zx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'QueryCodes' test.out

#- 28 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'tPaONRP6' \
    --body '{"quantity": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCodes' test.out

#- 29 Download
$PYTHON -m $MODULE 'platform-download' \
    'av0v1Dz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Download' test.out

#- 30 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'cRFLfIBU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkDisableCodes' test.out

#- 31 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'fa97s6Y2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkEnableCodes' test.out

#- 32 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '7tdRxtpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QueryRedeemHistory' test.out

#- 33 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'GpM17OMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCode' test.out

#- 34 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'lODugaxg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DisableCode' test.out

#- 35 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'ZKddpK0l' \
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
    --body '{"currencyCode": "03gcHHE2", "currencySymbol": "makGsRdL", "currencyType": "VIRTUAL", "decimals": 66, "localizationDescriptions": {"XEiih7nD": "aTPaz37D", "2XZW0HJI": "YgOERXsu", "ClDhFISl": "PEjpr2iq"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateCurrency' test.out

#- 38 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'fqU4hzBr' \
    --body '{"localizationDescriptions": {"B5C3fHZm": "cXRYkgoT", "IvhG2HZN": "yHz9ZdLM", "FAuuTFag": "8cWcsaQb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateCurrency' test.out

#- 39 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    '0AGSSaxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteCurrency' test.out

#- 40 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'KMjccA9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetCurrencyConfig' test.out

#- 41 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '6UpUJufZ' \
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
    --body '{"data": [{"id": "FBYDFjow", "rewards": [{"currency": {"currencyCode": "tZ8OeIs7", "namespace": "Zld5buTx"}, "item": {"itemId": "7RZPrGtX", "itemSku": "gzBiVp42", "itemType": "uhTHxjam"}, "quantity": 82, "type": "CURRENCY"}, {"currency": {"currencyCode": "LODlqqw2", "namespace": "Bw5lKDBE"}, "item": {"itemId": "11YIeC0x", "itemSku": "GbTRFXty", "itemType": "iYDGbuDI"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "RhsHQlrw", "namespace": "KkTQnxOx"}, "item": {"itemId": "XwhQrEWD", "itemSku": "aWDbkLgZ", "itemType": "gc5xkCv1"}, "quantity": 52, "type": "ITEM"}]}, {"id": "Ieyyom4B", "rewards": [{"currency": {"currencyCode": "I1VDlYs6", "namespace": "J6mrGRgZ"}, "item": {"itemId": "FNOzK1hb", "itemSku": "XczXn7XW", "itemType": "dn7Ky44e"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "q9GCj8oD", "namespace": "hRxFjUhY"}, "item": {"itemId": "gju8ITc5", "itemSku": "bgziwfqR", "itemType": "wiadDrk1"}, "quantity": 62, "type": "CURRENCY"}, {"currency": {"currencyCode": "DqhwWegj", "namespace": "Vz2fmDv6"}, "item": {"itemId": "7xqCV2Wt", "itemSku": "3PIInIKk", "itemType": "t7HMH507"}, "quantity": 47, "type": "CURRENCY"}]}, {"id": "WUQYF9m0", "rewards": [{"currency": {"currencyCode": "wpL0ahEZ", "namespace": "2e9y3K8l"}, "item": {"itemId": "QSsFmzwI", "itemSku": "qURqZjmO", "itemType": "w6qN3URw"}, "quantity": 85, "type": "ITEM"}, {"currency": {"currencyCode": "2f4PO7Ng", "namespace": "nrkRra0t"}, "item": {"itemId": "49Xs0Vh9", "itemSku": "wu34BpFt", "itemType": "febjEQLm"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "Nf28IhHU", "namespace": "KLC4rInv"}, "item": {"itemId": "2w147apq", "itemSku": "9u6fObjR", "itemType": "7Dox9JIx"}, "quantity": 93, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"P4nFqhXY": "VsSMCMpP", "VhAU3XPg": "fQ0J69Rp", "pvP9HvJu": "vijJ4Laq"}}, {"platform": "XBOX", "platformDlcIdMap": {"vLyjh371": "p2ofzA7T", "e2JOgk8u": "QR012veJ", "UkZeJvug": "jHPHQ411"}}, {"platform": "STEAM", "platformDlcIdMap": {"0HkyyV0J": "HYpWrhQP", "mgtqoodr": "NKqYkIPH", "HJluLiPh": "bi4297Zx"}}]}' \
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
    'JR7w65mr' \
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
    --body '{"bundleId": "DarhLZQZ", "password": "LjOL0028"}' \
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
    --body '{"sandboxId": "8uqtyszT"}' \
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
    --body '{"applicationName": "fSDjaXCW", "serviceAccountId": "QHIbMFev"}' \
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
    --body '{"data": [{"itemIdentity": "oFnnQqit", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"koPQcmuh": "DMgZS554", "MyppbDRr": "670axz45", "u2viLphH": "YNPBC9ml"}}, {"itemIdentity": "itzP7MrM", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"7XPWjEtp": "05QlfINu", "CsfxxiSe": "kymV8XF8", "wOybecKE": "cbLkp6x7"}}, {"itemIdentity": "NvJnGR8A", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ufWfvp8o": "R6Fs3Tm3", "A13gHByc": "DDN8N9zi", "OoFugbRY": "ZrJhoIC6"}}]}' \
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
    --body '{"environment": "WHxSw27h"}' \
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
    --body '{"appId": "jDGZScGf", "publisherAuthenticationKey": "VWJjr9M6"}' \
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
    --body '{"clientId": "cyng6fVV", "clientSecret": "hebszjsT", "organizationId": "X4tTk368"}' \
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
    --body '{"relyingPartyCert": "yP7oeyUL"}' \
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
    'gr2V5obq' \
    'F36LGcOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DownloadInvoiceDetails' test.out

#- 81 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'PKNfXAKE' \
    'KnwyKGFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GenerateInvoiceSummary' test.out

#- 82 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'XmXGuEFD' \
    --body '{"categoryPath": "0lIurKna", "targetItemId": "WAcCA530", "targetNamespace": "928QV2N5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'SyncInGameItem' test.out

#- 83 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '7QjcEZN7' \
    --body '{"appId": "h4vtgfPU", "appType": "GAME", "baseAppId": "J3NDBrWa", "boothName": "h6iAWfi6", "categoryPath": "weL7Rwig", "clazz": "OtByaHYb", "displayOrder": 35, "entitlementType": "CONSUMABLE", "ext": {"kK26N9ty": {}, "zyYJ4gbd": {}, "ZN2XvZgp": {}}, "features": ["KJTPLQ3w", "78ZUxzcn", "IezeeQFx"], "images": [{"as": "jQycHsTC", "caption": "GfCKM9bd", "height": 31, "imageUrl": "6X2rQfGj", "smallImageUrl": "ha5ZtNdL", "width": 36}, {"as": "lBjtalhR", "caption": "V2hbwiBm", "height": 90, "imageUrl": "QZSCgQ7I", "smallImageUrl": "bEWiCvwA", "width": 83}, {"as": "m73LENIs", "caption": "rFT0iWAo", "height": 27, "imageUrl": "a5h5uKTx", "smallImageUrl": "85jECrA4", "width": 72}], "itemIds": ["ornlHDsW", "6ENz7JQ3", "agdGLMZO"], "itemQty": {"vRBUt4fW": 39, "WRmQoVsx": 12, "WUy6Ud5e": 13}, "itemType": "LOOTBOX", "listable": true, "localizations": {"1uM2yAoa": {"description": "kSxDyyFw", "localExt": {"XpFJSsj4": {}, "qNqYoRwq": {}, "deBcGoNQ": {}}, "longDescription": "MHofSHz8", "title": "jiHqjJUu"}, "3mP2jmQ6": {"description": "drFfW4TB", "localExt": {"Z1Cw2Tsq": {}, "dVOzdmGu": {}, "qA1GX23T": {}}, "longDescription": "W7rAgDo2", "title": "4Hca1eSI"}, "yPNWgmMJ": {"description": "NMVUEosP", "localExt": {"zJL4wDMV": {}, "QyOHXn5I": {}, "SYln1Qyc": {}}, "longDescription": "rOFOVEVC", "title": "FqsUM6B6"}}, "lootBoxConfig": {"rewardCount": 65, "rewards": [{"lootBoxItems": [{"count": 91, "itemId": "iClDYxbQ", "itemSku": "1bKwCmqw", "itemType": "kF21x7Uu"}, {"count": 90, "itemId": "BjL4Umuv", "itemSku": "FHxz6tlQ", "itemType": "SEcjCIJh"}, {"count": 6, "itemId": "wkJyYmuq", "itemSku": "JhxIZIxf", "itemType": "xFkjWntG"}], "name": "A3ASu2Dx", "odds": 0.8639926345986112, "type": "PROBABILITY_GROUP", "weight": 66}, {"lootBoxItems": [{"count": 13, "itemId": "ExDFtttC", "itemSku": "D6RYyDO3", "itemType": "00HPSEfP"}, {"count": 44, "itemId": "ooX3Ohge", "itemSku": "ltw2RmFZ", "itemType": "8pWguRkB"}, {"count": 78, "itemId": "bAPiI3TR", "itemSku": "GNlqwnda", "itemType": "7xrMxi5A"}], "name": "smQcRYS4", "odds": 0.8784286683281664, "type": "REWARD_GROUP", "weight": 91}, {"lootBoxItems": [{"count": 32, "itemId": "77vGS16p", "itemSku": "LzGLcwEQ", "itemType": "WetpwWku"}, {"count": 40, "itemId": "hxzNhoN4", "itemSku": "XN9g8AoS", "itemType": "Bt3owwDR"}, {"count": 52, "itemId": "Pq6RAud3", "itemSku": "8TWc0cQz", "itemType": "ACePgUTr"}], "name": "IMOs5cFp", "odds": 0.8992933354952916, "type": "REWARD", "weight": 56}]}, "maxCount": 4, "maxCountPerUser": 87, "name": "mxHorEBq", "optionBoxConfig": {"boxItems": [{"count": 69, "itemId": "6Eel7KhO", "itemSku": "S0IkrpAX", "itemType": "gE59wwVE"}, {"count": 7, "itemId": "rvbtJxVU", "itemSku": "sulxyPwA", "itemType": "dIjQywbl"}, {"count": 96, "itemId": "QgdY0rYe", "itemSku": "Tg79iPh4", "itemType": "Y6TpE61T"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 39, "fixedTrialCycles": 67, "graceDays": 98}, "regionData": {"zad3K1PK": [{"currencyCode": "FFdsGRiG", "currencyNamespace": "ONz9mEoF", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1980-10-29T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1985-10-01T00:00:00Z", "discountedPrice": 27, "expireAt": "1994-09-04T00:00:00Z", "price": 98, "purchaseAt": "1995-12-19T00:00:00Z", "trialPrice": 77}, {"currencyCode": "vIkCqmAd", "currencyNamespace": "WqubBHp1", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1984-10-08T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1999-01-03T00:00:00Z", "discountedPrice": 2, "expireAt": "1972-12-27T00:00:00Z", "price": 97, "purchaseAt": "1991-09-13T00:00:00Z", "trialPrice": 1}, {"currencyCode": "jCAu46lZ", "currencyNamespace": "lzOo41Fw", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1994-12-13T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1980-04-17T00:00:00Z", "discountedPrice": 5, "expireAt": "1984-01-01T00:00:00Z", "price": 98, "purchaseAt": "1979-03-03T00:00:00Z", "trialPrice": 22}], "ChtFMWES": [{"currencyCode": "7byjKaE8", "currencyNamespace": "g7el0Dv9", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1975-10-16T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1992-08-29T00:00:00Z", "discountedPrice": 93, "expireAt": "1993-12-26T00:00:00Z", "price": 34, "purchaseAt": "1998-02-04T00:00:00Z", "trialPrice": 70}, {"currencyCode": "sGfy04gQ", "currencyNamespace": "CCiFgxPP", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1972-10-01T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1977-05-06T00:00:00Z", "discountedPrice": 98, "expireAt": "1989-06-11T00:00:00Z", "price": 29, "purchaseAt": "1977-10-16T00:00:00Z", "trialPrice": 94}, {"currencyCode": "fKLwbizs", "currencyNamespace": "QwU2dBPq", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1988-01-10T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1984-08-27T00:00:00Z", "discountedPrice": 14, "expireAt": "1999-01-29T00:00:00Z", "price": 78, "purchaseAt": "1975-01-23T00:00:00Z", "trialPrice": 22}], "n8m5z2IC": [{"currencyCode": "CqNSX7Gp", "currencyNamespace": "JAKPUC46", "currencyType": "VIRTUAL", "discountAmount": 13, "discountExpireAt": "1971-08-04T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1989-01-23T00:00:00Z", "discountedPrice": 88, "expireAt": "1986-11-14T00:00:00Z", "price": 53, "purchaseAt": "1986-05-13T00:00:00Z", "trialPrice": 51}, {"currencyCode": "2h5kLDx8", "currencyNamespace": "50b2qxJv", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1999-07-02T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1984-01-13T00:00:00Z", "discountedPrice": 31, "expireAt": "1998-08-12T00:00:00Z", "price": 1, "purchaseAt": "1973-10-23T00:00:00Z", "trialPrice": 30}, {"currencyCode": "30zUYcLP", "currencyNamespace": "pcR5DWoI", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1997-03-30T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1981-09-27T00:00:00Z", "discountedPrice": 60, "expireAt": "1981-04-20T00:00:00Z", "price": 64, "purchaseAt": "1996-02-26T00:00:00Z", "trialPrice": 78}]}, "seasonType": "TIER", "sku": "wmdS6had", "stackable": false, "status": "ACTIVE", "tags": ["qab7TX2T", "CsdHYyvM", "khmlYiEf"], "targetCurrencyCode": "aJDJfcSO", "targetNamespace": "UdxOirda", "thumbnailUrl": "oN8Nf3VG", "useCount": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateItem' test.out

#- 84 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'rmd4cVFN' \
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
    'loZaN1N2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetItemBySku' test.out

#- 88 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'VQijYMdE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetLocaleItemBySku' test.out

#- 89 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '3I3jE5xy' \
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
    'QkcH7X5E' \
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
    'sn1sBPsF' \
    --body '{"itemIds": ["33m6clIF", "oA7TizL0", "622dIfTP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'ValidateItemPurchaseCondition' test.out

#- 94 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'NZnUp38K' \
    'fYcM2PW2' \
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
    'AIyDLIKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetItem' test.out

#- 97 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'xhbCh5Nx' \
    'lcWb6Z7O' \
    --body '{"appId": "miS3dMsU", "appType": "SOFTWARE", "baseAppId": "sjDDsO1I", "boothName": "Azzg4rWJ", "categoryPath": "eaEQcKGd", "clazz": "SEtPqFao", "displayOrder": 47, "entitlementType": "CONSUMABLE", "ext": {"QUtBvGH2": {}, "6hbxxz9F": {}, "nE9VsxjC": {}}, "features": ["bLRmyb1J", "RSmjr4za", "Cr5j6bhR"], "images": [{"as": "3dQsHm1m", "caption": "iEmRj6iM", "height": 43, "imageUrl": "ylGfcE7J", "smallImageUrl": "wEOgtkrq", "width": 42}, {"as": "ylwHXp9o", "caption": "SUQFroDY", "height": 96, "imageUrl": "T8WUdJfX", "smallImageUrl": "VZSy150R", "width": 57}, {"as": "Df1g49j4", "caption": "bB4ghSFB", "height": 34, "imageUrl": "ZjDZ4gdM", "smallImageUrl": "YtpVAEam", "width": 89}], "itemIds": ["dMXNBBFK", "s8yswn7t", "xdNgPlkw"], "itemQty": {"fngc2rqL": 31, "BMEejOgR": 36, "kglTmNPS": 68}, "itemType": "SEASON", "listable": true, "localizations": {"cZldmo3y": {"description": "i9mNZb24", "localExt": {"haxDCtzi": {}, "qwT3Hu1m": {}, "YLvK3dPy": {}}, "longDescription": "KQiNcj3k", "title": "syoIHrOD"}, "yJLnjISC": {"description": "EX0uFzAo", "localExt": {"qE2OCdIo": {}, "fOXzfS8J": {}, "DVdHN4ZR": {}}, "longDescription": "26hJUufJ", "title": "GCJpuBGe"}, "ahyYbxa2": {"description": "elFNr05Z", "localExt": {"HyTebGcS": {}, "86janbuA": {}, "AXhMEKzd": {}}, "longDescription": "5djl2i2W", "title": "xaTzIbfI"}}, "lootBoxConfig": {"rewardCount": 32, "rewards": [{"lootBoxItems": [{"count": 14, "itemId": "wevjeMWR", "itemSku": "1SkgKyE7", "itemType": "GUPvNB3v"}, {"count": 19, "itemId": "fVWghkBR", "itemSku": "Qo4lhPUo", "itemType": "lC8YHj16"}, {"count": 49, "itemId": "82ansijd", "itemSku": "eCKi45fs", "itemType": "a4xD8aJd"}], "name": "02T3HQKl", "odds": 0.6036120644363023, "type": "REWARD", "weight": 28}, {"lootBoxItems": [{"count": 11, "itemId": "NiDzh4KZ", "itemSku": "wIzUtzW1", "itemType": "utnG2dGv"}, {"count": 24, "itemId": "VsNqRddn", "itemSku": "xWf7yGkW", "itemType": "EQfg0kSq"}, {"count": 72, "itemId": "Ak43uQox", "itemSku": "pn6ejHmp", "itemType": "vSZQm0Xj"}], "name": "vTmwcOkK", "odds": 0.8401641904431841, "type": "REWARD", "weight": 93}, {"lootBoxItems": [{"count": 3, "itemId": "MJhbh8t7", "itemSku": "MUbdL3rU", "itemType": "4pMXogxA"}, {"count": 63, "itemId": "yugF1UtM", "itemSku": "H46HfT9U", "itemType": "yH4IaOvJ"}, {"count": 29, "itemId": "697dFGIT", "itemSku": "wEJfRYIp", "itemType": "j1zAMeyo"}], "name": "qb2f7tZH", "odds": 0.40461187238669205, "type": "REWARD", "weight": 32}]}, "maxCount": 15, "maxCountPerUser": 14, "name": "MbEOqczJ", "optionBoxConfig": {"boxItems": [{"count": 54, "itemId": "68XCWswd", "itemSku": "SDvNhtvX", "itemType": "WuuCZofj"}, {"count": 28, "itemId": "mvRniSP3", "itemSku": "NfVh1BJy", "itemType": "Mo5hVpC8"}, {"count": 83, "itemId": "9kxkzYdC", "itemSku": "1Ii8hPl9", "itemType": "Y51GdmDB"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 82, "fixedTrialCycles": 34, "graceDays": 76}, "regionData": {"E5H2yAkO": [{"currencyCode": "MnClDpRv", "currencyNamespace": "ZoWwJocl", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1994-09-19T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1980-04-16T00:00:00Z", "discountedPrice": 4, "expireAt": "1973-08-15T00:00:00Z", "price": 36, "purchaseAt": "1996-11-30T00:00:00Z", "trialPrice": 71}, {"currencyCode": "tZO6GKHt", "currencyNamespace": "GcIyIa18", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1974-10-10T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1998-04-24T00:00:00Z", "discountedPrice": 37, "expireAt": "1971-09-04T00:00:00Z", "price": 48, "purchaseAt": "1998-01-25T00:00:00Z", "trialPrice": 12}, {"currencyCode": "aB1419N3", "currencyNamespace": "LMDNSUjA", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1989-07-17T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1987-03-24T00:00:00Z", "discountedPrice": 92, "expireAt": "1978-11-30T00:00:00Z", "price": 14, "purchaseAt": "1971-04-19T00:00:00Z", "trialPrice": 42}], "epsEQ5Ow": [{"currencyCode": "o3yo6Vca", "currencyNamespace": "mRXZjhU6", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1996-12-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1993-04-09T00:00:00Z", "discountedPrice": 100, "expireAt": "1997-06-19T00:00:00Z", "price": 31, "purchaseAt": "1973-03-21T00:00:00Z", "trialPrice": 45}, {"currencyCode": "COJzcvpw", "currencyNamespace": "RDifd30u", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1973-04-05T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1984-08-02T00:00:00Z", "discountedPrice": 15, "expireAt": "1988-05-01T00:00:00Z", "price": 69, "purchaseAt": "1973-04-07T00:00:00Z", "trialPrice": 8}, {"currencyCode": "PNa0f85q", "currencyNamespace": "o8IT2E6o", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1976-06-04T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1993-10-24T00:00:00Z", "discountedPrice": 85, "expireAt": "1973-08-05T00:00:00Z", "price": 21, "purchaseAt": "1976-04-22T00:00:00Z", "trialPrice": 56}], "eKy7gLJd": [{"currencyCode": "13HG8kAy", "currencyNamespace": "rPtDjUOV", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1986-01-27T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1978-11-09T00:00:00Z", "discountedPrice": 68, "expireAt": "1989-06-15T00:00:00Z", "price": 84, "purchaseAt": "1975-06-16T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Wb8UZO9i", "currencyNamespace": "0Gn29ZQn", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1988-09-25T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1976-04-24T00:00:00Z", "discountedPrice": 91, "expireAt": "1972-02-07T00:00:00Z", "price": 7, "purchaseAt": "1999-02-11T00:00:00Z", "trialPrice": 13}, {"currencyCode": "f97EqySa", "currencyNamespace": "QnSJARka", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1997-05-18T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1980-02-16T00:00:00Z", "discountedPrice": 40, "expireAt": "1995-01-21T00:00:00Z", "price": 77, "purchaseAt": "1977-07-08T00:00:00Z", "trialPrice": 22}]}, "seasonType": "TIER", "sku": "kyYajtQc", "stackable": false, "status": "ACTIVE", "tags": ["gwxrrn4d", "jzs601Qc", "j0833Ydn"], "targetCurrencyCode": "UnHOWoGk", "targetNamespace": "s5EtIelI", "thumbnailUrl": "eoYT3pWw", "useCount": 23}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateItem' test.out

#- 98 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'jSDDT1pu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteItem' test.out

#- 99 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'um5VRAIv' \
    --body '{"count": 1, "orderNo": "kD6siU3s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'AcquireItem' test.out

#- 100 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'wZMXehxM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetApp' test.out

#- 101 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '5y0CMZxQ' \
    'zumf5PIw' \
    --body '{"carousel": [{"alt": "BhFaU1ww", "previewUrl": "asyIVoru", "thumbnailUrl": "cpgs5XXh", "type": "image", "url": "xjgsPuKf", "videoSource": "generic"}, {"alt": "Avn3wQ98", "previewUrl": "UDampFjI", "thumbnailUrl": "MUZppAu5", "type": "image", "url": "kjBOzjrw", "videoSource": "youtube"}, {"alt": "qmha2BhQ", "previewUrl": "fhHn9SaJ", "thumbnailUrl": "PHiqgYjZ", "type": "video", "url": "m7MyfwVZ", "videoSource": "vimeo"}], "developer": "gsPbDhN2", "forumUrl": "LLuKGwha", "genres": ["Strategy", "Adventure", "Racing"], "localizations": {"I8HBdXVc": {"announcement": "EJFOpYU5", "slogan": "SUDRqAJq"}, "6quM5IAc": {"announcement": "h6kvfGNX", "slogan": "AphlvFHD"}, "rjE7Mmoz": {"announcement": "tPp6b5Tk", "slogan": "VJE8YIn2"}}, "platformRequirements": {"3bQ6Ns1F": [{"additionals": "7cFOsZmG", "directXVersion": "SepyzXK1", "diskSpace": "moaeUNQJ", "graphics": "JfuKcRLr", "label": "aiFEbHpl", "osVersion": "9vUuzE3V", "processor": "dtMQJkx8", "ram": "Q6ijPX21", "soundCard": "MxFuxOSy"}, {"additionals": "esnpIthq", "directXVersion": "a9Ralzxn", "diskSpace": "M65OIVTH", "graphics": "AJSDi7sf", "label": "OeHNpNNX", "osVersion": "KeinEYyl", "processor": "Nsj5N8rq", "ram": "NZP244Fe", "soundCard": "pSAO2rli"}, {"additionals": "3t3fYBP7", "directXVersion": "rucWcs3m", "diskSpace": "rOBV6yjn", "graphics": "1qnTCsNL", "label": "D2ZY1EXI", "osVersion": "Zau4RN4G", "processor": "7o2Jnwpt", "ram": "B5Ri38MK", "soundCard": "lTQ1BWgR"}], "OjIMdbnh": [{"additionals": "9f64i066", "directXVersion": "7q33W99H", "diskSpace": "a4A2slxi", "graphics": "bRN3vyKA", "label": "iViYfL3d", "osVersion": "IN1z1aAD", "processor": "WrJJs7Mr", "ram": "Aofjn8Jm", "soundCard": "0xYNm09A"}, {"additionals": "HMJKTPRz", "directXVersion": "T6qJUyhG", "diskSpace": "PMMtA55T", "graphics": "bUbHpldW", "label": "zQ37A5wR", "osVersion": "RAtrNwxt", "processor": "9myHxG2V", "ram": "YYuOmnHs", "soundCard": "gR4SRnhm"}, {"additionals": "hRpqBy82", "directXVersion": "xzg0v7zb", "diskSpace": "x02UT7xd", "graphics": "xHxtMvQd", "label": "wXX2yuqa", "osVersion": "SOMmFnqz", "processor": "wFaAnBlS", "ram": "fYsFVDrC", "soundCard": "kwmGcLju"}], "6ShnByFu": [{"additionals": "aR5mmtQO", "directXVersion": "ef2le5TA", "diskSpace": "qw81alcm", "graphics": "Hq0H09oV", "label": "rhSo991L", "osVersion": "eieP1Nn9", "processor": "12piI23J", "ram": "tiT6KxbZ", "soundCard": "SUPYMXIJ"}, {"additionals": "0aTUquaj", "directXVersion": "oniBa6ZZ", "diskSpace": "QZcsKtyP", "graphics": "2QZucvUw", "label": "ll3MtzVT", "osVersion": "wISWBYr0", "processor": "OlX6sAkW", "ram": "9TqYhlaw", "soundCard": "cxzIl8PU"}, {"additionals": "2wvsRZ9Y", "directXVersion": "2sfjh7U5", "diskSpace": "4HY0snZY", "graphics": "NF8ldU9Q", "label": "sU9w20fL", "osVersion": "nHfQ5Xzp", "processor": "rITPrTfW", "ram": "auI1e6sh", "soundCard": "Boi0C2jE"}]}, "platforms": ["Android", "Windows", "MacOS"], "players": ["Coop", "MMO", "Multi"], "primaryGenre": "Strategy", "publisher": "WxKi5Ocg", "releaseDate": "1985-08-30T00:00:00Z", "websiteUrl": "6yWjGtSR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'UpdateApp' test.out

#- 102 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'ARQocbnf' \
    'KkqFatgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DisableItem' test.out

#- 103 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'yY4xmf6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetItemDynamicData' test.out

#- 104 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'c19nAjfc' \
    'eTDTQSRK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'EnableItem' test.out

#- 105 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'w2H5Toeb' \
    'PBohrEIc' \
    '32EOJJgx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'FeatureItem' test.out

#- 106 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'nmJsPhHg' \
    '0x9uIHRG' \
    'FLMKnNff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'DefeatureItem' test.out

#- 107 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'kv3i9Ezt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItem' test.out

#- 108 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'aMYNWYJ5' \
    'HDmH0MJC' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 18, "comparison": "isGreaterThanOrEqual", "name": "sjl1o0Jr", "predicateType": "SeasonTierPredicate", "value": "1XklatnF", "values": ["kC9c1q9e", "Zff1T09W", "IWaG8nMl"]}, {"anyOf": 58, "comparison": "is", "name": "kFgBeFTj", "predicateType": "SeasonTierPredicate", "value": "Y9zmg9Pd", "values": ["kfjuWnzV", "QlGMJlFu", "zCcGqgtb"]}, {"anyOf": 5, "comparison": "isLessThanOrEqual", "name": "bBuy6nA0", "predicateType": "EntitlementPredicate", "value": "Kpi81ESw", "values": ["rCaNo8yV", "RHkA9wuL", "taxHXoM5"]}]}, {"operator": "or", "predicates": [{"anyOf": 77, "comparison": "isGreaterThanOrEqual", "name": "9pj9Q2Df", "predicateType": "SeasonTierPredicate", "value": "tLKP5oDS", "values": ["2i9vpEdC", "jfmLoOTw", "zQQFkgCO"]}, {"anyOf": 81, "comparison": "includes", "name": "ValF5ctB", "predicateType": "SeasonTierPredicate", "value": "KKEmBNoM", "values": ["pEoVFgBy", "0ewmBDLq", "fu2CbJpZ"]}, {"anyOf": 98, "comparison": "isGreaterThanOrEqual", "name": "TpXgke1A", "predicateType": "SeasonTierPredicate", "value": "7tV3RjsU", "values": ["gFo97LH4", "X1sizLT9", "KBLOtUKR"]}]}, {"operator": "or", "predicates": [{"anyOf": 87, "comparison": "is", "name": "hmChUCwg", "predicateType": "SeasonTierPredicate", "value": "DJbLmkny", "values": ["PCI6etBF", "1kUhf8PY", "dmJFzXN0"]}, {"anyOf": 74, "comparison": "isNot", "name": "BbrJ3E9a", "predicateType": "SeasonPassPredicate", "value": "u2GqFK5h", "values": ["EixARg3M", "tQ408rFh", "FYU5APVH"]}, {"anyOf": 34, "comparison": "isNot", "name": "SwWUL0Jk", "predicateType": "SeasonTierPredicate", "value": "jnMF79xU", "values": ["7PrUrtdd", "6t7wZCy8", "pgon1amP"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'UpdateItemPurchaseCondition' test.out

#- 109 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'Voyry78y' \
    --body '{"orderNo": "f4YHcC2S"}' \
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
    --body '{"description": "rCQ4CbUx", "name": "NJPhai8Z", "status": "INACTIVE", "tags": ["Pw2M7kRm", "0AnBIXVO", "nRHtCOn9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'CreateKeyGroup' test.out

#- 112 GetKeyGroupByBoothName
eval_tap 0 112 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 113 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'zDzRJVEv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'GetKeyGroup' test.out

#- 114 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'QLNtzoUj' \
    --body '{"description": "ziwe9Zs8", "name": "bIzmgPRP", "status": "ACTIVE", "tags": ["68LdVHKo", "i8SPVDrn", "ZJuJUAvh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'UpdateKeyGroup' test.out

#- 115 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'DglPnulF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetKeyGroupDynamic' test.out

#- 116 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '9YUBGNx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'ListKeys' test.out

#- 117 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '9ahiwwsQ' \
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
    'cR6FDw61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'GetOrder' test.out

#- 121 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'K9HSVYCK' \
    --body '{"description": "7DFd5Nki"}' \
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
    --body '{"dryRun": false, "notifyUrl": "6EItuKW6", "privateKey": "xH2MQPHX"}' \
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
    --body '{"currencyCode": "9en4vgxf", "currencyNamespace": "Z4kkXbOH", "customParameters": {"4uFu9fPr": {}, "xqFIlLn1": {}, "OZ6SvAmR": {}}, "description": "p9KfGJT3", "extOrderNo": "AcLjjYnj", "extUserId": "hprm32Vy", "itemType": "APP", "language": "tBP-Vf", "metadata": {"zhsluRi6": "cLnMRql8", "zoF4y67U": "uJX3Bv62", "KjXvwU9o": "6CCwv2Vg"}, "notifyUrl": "i0RobNNA", "omitNotification": true, "platform": "1jY0CWaY", "price": 0, "recurringPaymentOrderNo": "78OKqeQl", "region": "aSxPCait", "returnUrl": "X9jniCAb", "sandbox": false, "sku": "unFnC0nS", "subscriptionId": "yDEzeFJy", "targetNamespace": "eH4ZBkZ5", "targetUserId": "s3S354zp", "title": "FOCUuXhO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'CreatePaymentOrderByDedicated' test.out

#- 127 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'iFAEVDyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'ListExtOrderNoByExtTxId' test.out

#- 128 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'vR9U7qvA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetPaymentOrder' test.out

#- 129 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'yUT7FHny' \
    --body '{"extTxId": "Ju7x5Dvi", "paymentMethod": "5BlNlhj9", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'ChargePaymentOrder' test.out

#- 130 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '2f9CVRqy' \
    --body '{"description": "0mTFCBmD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'RefundPaymentOrderByDedicated' test.out

#- 131 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    '6pLIOb0U' \
    --body '{"amount": 15, "currencyCode": "3LXicN2N", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 25, "vat": 97}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'SimulatePaymentOrderNotification' test.out

#- 132 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '0Z0BSN0g' \
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
    'Other' \
    --body '{"allowedBalanceOrigins": ["Steam", "IOS", "Playstation"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'UpdatePlatformWalletConfig' test.out

#- 135 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ResetPlatformWalletConfig' test.out

#- 136 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "QagjEJcg", "eventTopic": "4BhwfEv1", "maxAwarded": 57, "maxAwardedPerUser": 57, "namespaceExpression": "SaEwWExp", "rewardCode": "veJJpM6J", "rewardConditions": [{"condition": "NEdN30nT", "conditionName": "J9Poojyc", "eventName": "haHGQm2z", "rewardItems": [{"duration": 61, "itemId": "rVSktBMa", "quantity": 57}, {"duration": 12, "itemId": "vIHOQWmw", "quantity": 66}, {"duration": 81, "itemId": "za3DI9Sl", "quantity": 74}]}, {"condition": "PZ4oRcPg", "conditionName": "PjDUCptk", "eventName": "egdI9pHo", "rewardItems": [{"duration": 15, "itemId": "2hBDMHhI", "quantity": 81}, {"duration": 78, "itemId": "CbKkcgeh", "quantity": 31}, {"duration": 62, "itemId": "NFdbRdDY", "quantity": 63}]}, {"condition": "LUh5CEF2", "conditionName": "pZDmAfdd", "eventName": "vV3LHGH4", "rewardItems": [{"duration": 54, "itemId": "Smd5G3oJ", "quantity": 52}, {"duration": 57, "itemId": "XOOECy5F", "quantity": 4}, {"duration": 57, "itemId": "kUXUQizn", "quantity": 94}]}], "userIdExpression": "JJFgH8r8"}' \
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
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ImportRewards' test.out

#- 140 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'LjdUJ7Ir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetReward' test.out

#- 141 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'ixTMnCW8' \
    --body '{"description": "iCaB731X", "eventTopic": "WZwVvDmx", "maxAwarded": 97, "maxAwardedPerUser": 82, "namespaceExpression": "bMNK7dNI", "rewardCode": "syQQeXOM", "rewardConditions": [{"condition": "05NQjmC1", "conditionName": "QhjmOXP0", "eventName": "RUEjHE2s", "rewardItems": [{"duration": 60, "itemId": "cJL1qSHh", "quantity": 91}, {"duration": 3, "itemId": "swStsGVC", "quantity": 69}, {"duration": 13, "itemId": "FYzFPpiU", "quantity": 23}]}, {"condition": "e5VZWiYO", "conditionName": "lxCMOdhu", "eventName": "4jNyYCZ0", "rewardItems": [{"duration": 20, "itemId": "TDMrBXnj", "quantity": 71}, {"duration": 77, "itemId": "du3agA7y", "quantity": 34}, {"duration": 72, "itemId": "sgLCwtmb", "quantity": 99}]}, {"condition": "kYGIzjmC", "conditionName": "UYQjxiWd", "eventName": "WMPDHUpJ", "rewardItems": [{"duration": 92, "itemId": "aJQO7PTj", "quantity": 51}, {"duration": 61, "itemId": "3bOBUrVw", "quantity": 83}, {"duration": 99, "itemId": "aNAJbnyz", "quantity": 75}]}], "userIdExpression": "k6PrXDg7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'UpdateReward' test.out

#- 142 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'vQGZ0pPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteReward' test.out

#- 143 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '4KuKR7DY' \
    --body '{"payload": {"hgpRVdBf": {}, "QQwU1ETL": {}, "9sRRlq4n": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'CheckEventCondition' test.out

#- 144 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'KBqvYIaW' \
    --body '{"conditionName": "07WkxeiU", "userId": "eRU2mV81"}' \
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
    --body '{"defaultLanguage": "0Jfpjt5T", "defaultRegion": "eWgVqhy3", "description": "2kDzchPj", "supportedLanguages": ["ng7jlk56", "J0akKkP3", "cxeiKhqC"], "supportedRegions": ["59pCKIWY", "mw82zIOb", "9rQoMprE"], "title": "lCrwMuyT"}' \
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
    '0zjt0kJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetStore' test.out

#- 153 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'PS6gM6FF' \
    --body '{"defaultLanguage": "DrKdAgWz", "defaultRegion": "6lpaqagZ", "description": "7kLEmJek", "supportedLanguages": ["RyqLsYDa", "qPiIUNom", "ygbPmay2"], "supportedRegions": ["FrMTQznR", "lHJKwtys", "WcgBYFRS"], "title": "q6UnYvMR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdateStore' test.out

#- 154 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '4iavyac0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'DeleteStore' test.out

#- 155 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'J1EhQZcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'QueryChanges' test.out

#- 156 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'j0bZNBaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'PublishAll' test.out

#- 157 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'UzwD8Rnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'PublishSelected' test.out

#- 158 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'IaoqaNzB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'SelectAllRecords' test.out

#- 159 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '3BORJo9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetStatistic' test.out

#- 160 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'wNWhgSjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UnselectAllRecords' test.out

#- 161 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'XgqDkDvI' \
    'FFNP3GDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'SelectRecord' test.out

#- 162 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '4j5LJ7IP' \
    'NptIfZuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UnselectRecord' test.out

#- 163 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    '7gWrfpmL' \
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
    '9DyOI3X3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'RecurringChargeSubscription' test.out

#- 167 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'wN2X2Evn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetTicketDynamic' test.out

#- 168 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'LMAHmY06' \
    --body '{"orderNo": "ubRCWOSo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'DecreaseTicketSale' test.out

#- 169 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'U7sSD4eE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetTicketBoothID' test.out

#- 170 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'Q47nnd41' \
    --body '{"count": 90, "orderNo": "z4T09xR7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'IncreaseTicketSale' test.out

#- 171 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'uo56NT8S' \
    --body '{"achievements": [{"id": "HG831BOr", "value": 98}, {"id": "jwypWs2O", "value": 94}, {"id": "2SUyJ7Cs", "value": 55}], "steamUserId": "nv7n7FHI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'UnlockSteamUserAchievement' test.out

#- 172 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '0VQlxf0m' \
    'z1MWuS9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'GetXblUserAchievements' test.out

#- 173 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'RtEgMpRc' \
    --body '{"achievements": [{"id": "9YnKpiF3", "percentComplete": 7}, {"id": "A23mL6mr", "percentComplete": 77}, {"id": "e8hRbuLU", "percentComplete": 27}], "serviceConfigId": "Lp9nrTXS", "titleId": "kv26zfZS", "xboxUserId": "BFQq3BJr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'UpdateXblUserAchievement' test.out

#- 174 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'YWdB6oSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AnonymizeCampaign' test.out

#- 175 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'd4ocdvSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AnonymizeEntitlement' test.out

#- 176 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'ROVnPJcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AnonymizeFulfillment' test.out

#- 177 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'ZPH6erk2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AnonymizeIntegration' test.out

#- 178 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'K3YGZ7Tk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AnonymizeOrder' test.out

#- 179 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'OCnE9Rh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AnonymizePayment' test.out

#- 180 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'nMeOanoo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AnonymizeSubscription' test.out

#- 181 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'EYQtXyZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AnonymizeWallet' test.out

#- 182 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'uH0GgpQh' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'GetUserDLC' test.out

#- 183 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '3O4j3NlS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'QueryUserEntitlements' test.out

#- 184 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'a356yvKR' \
    --body '[{"endDate": "1974-07-06T00:00:00Z", "grantedCode": "wvxL8nc5", "itemId": "ITU8haUI", "itemNamespace": "inXkWwDU", "language": "LicN-xynC", "quantity": 65, "region": "dku4iyHB", "source": "REWARD", "startDate": "1985-01-09T00:00:00Z", "storeId": "G8enXtIc"}, {"endDate": "1990-10-12T00:00:00Z", "grantedCode": "005n6vrS", "itemId": "rYDyr49q", "itemNamespace": "7Aq3BtfC", "language": "SMY-YfIP", "quantity": 59, "region": "7MqdyrDX", "source": "PROMOTION", "startDate": "1992-01-18T00:00:00Z", "storeId": "HlRr2T6N"}, {"endDate": "1990-09-05T00:00:00Z", "grantedCode": "FerDs6dM", "itemId": "YChOHUt9", "itemNamespace": "zy6mdmvt", "language": "IJk_769", "quantity": 54, "region": "V5ZBAMYz", "source": "REFERRAL_BONUS", "startDate": "1972-03-02T00:00:00Z", "storeId": "EXOuWDMH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'GrantUserEntitlement' test.out

#- 185 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'WqWvULrq' \
    'Dq8RbSDR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserAppEntitlementByAppId' test.out

#- 186 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    '7XTLkZ9U' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'QueryUserEntitlementsByAppType' test.out

#- 187 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'lYNE3Swm' \
    'ge6poIgS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetUserEntitlementByItemId' test.out

#- 188 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'LCQ3LJo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'GetUserActiveEntitlementsByItemIds' test.out

#- 189 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'IgsQRONl' \
    'J26BZLP2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetUserEntitlementBySku' test.out

#- 190 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'vehPckwT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'ExistsAnyUserActiveEntitlement' test.out

#- 191 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'NF1q4r9F' \
    '["NEMNYDQB", "FWoSWf7e", "Gj9991Ms"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 192 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'xJIhENnP' \
    'nLldTG6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 193 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '90P5Aygl' \
    'awXEpQCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'GetUserEntitlementOwnershipByItemId' test.out

#- 194 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'WCVPR2Ud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetUserEntitlementOwnershipByItemIds' test.out

#- 195 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'pdSLqQjV' \
    'UKPoXd8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'GetUserEntitlementOwnershipBySku' test.out

#- 196 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'xPaFj42D' \
    'JbLOQBml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'RevokeUserEntitlements' test.out

#- 197 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'xZRvJhwU' \
    '8n2eVP5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'GetUserEntitlement' test.out

#- 198 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'dFFhPJ06' \
    'PtheAUFw' \
    --body '{"endDate": "1997-06-25T00:00:00Z", "nullFieldList": ["cUGVlumf", "Rwmv2QmW", "gYsZ5Twd"], "startDate": "1994-05-19T00:00:00Z", "status": "REVOKED", "useCount": 16}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'UpdateUserEntitlement' test.out

#- 199 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'SDesn8Hj' \
    'uijwXKWR' \
    --body '{"options": ["0VmRU9Ga", "gpEZbbvs", "F8VlXmJl"], "requestId": "CfDcRnGq", "useCount": 68}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'ConsumeUserEntitlement' test.out

#- 200 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'R39gIjOp' \
    'VP7ByeEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'DisableUserEntitlement' test.out

#- 201 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'b7KTj00J' \
    'NI3j5h9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'EnableUserEntitlement' test.out

#- 202 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'OeHmHFly' \
    'xJXi3sqt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetUserEntitlementHistories' test.out

#- 203 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'OgjZTiVO' \
    '3wxI0VC2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'RevokeUserEntitlement' test.out

#- 204 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    '6BowabBv' \
    --body '{"duration": 61, "endDate": "1987-10-03T00:00:00Z", "itemId": "EsA1GmKX", "itemSku": "cHLNHCvk", "language": "sbwBnMAu", "order": {"currency": {"currencyCode": "o250XrsK", "currencySymbol": "bgMZ3Xnr", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "6Le5W6PO"}, "ext": {"ewKMUaeu": {}, "FyXcBfcJ": {}, "RvKtvuND": {}}, "free": true}, "orderNo": "FwWzBhCZ", "origin": "Other", "quantity": 21, "region": "Iksch0uP", "source": "REFERRAL_BONUS", "startDate": "1989-09-23T00:00:00Z", "storeId": "BK8uWFe4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'FulfillItem' test.out

#- 205 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'plgmEhjc' \
    --body '{"code": "S60Z9uyP", "language": "igRV-SULb-FB", "region": "JHqUDvGN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'RedeemCode' test.out

#- 206 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'Q3yxCLTa' \
    --body '{"origin": "Xbox", "rewards": [{"currency": {"currencyCode": "uldmLnua", "namespace": "bcjGzKaU"}, "item": {"itemId": "STPJB7dZ", "itemSku": "KoZLalbN", "itemType": "H7hCCUxq"}, "quantity": 30, "type": "ITEM"}, {"currency": {"currencyCode": "P028M2iG", "namespace": "p6RX8xeH"}, "item": {"itemId": "kVSobBED", "itemSku": "CM4CHNvR", "itemType": "BWCJWtMx"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "BUrfBfq8", "namespace": "8ObAPET3"}, "item": {"itemId": "WtOvKWgQ", "itemSku": "cJw8osS3", "itemType": "FVQWtWLb"}, "quantity": 30, "type": "ITEM"}], "source": "DLC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'FulfillRewards' test.out

#- 207 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'WcbL6M0E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'QueryUserIAPOrders' test.out

#- 208 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'tH4N21jb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryAllUserIAPOrders' test.out

#- 209 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'afPqXsat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'QueryUserIAPConsumeHistory' test.out

#- 210 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'IhZT8R0q' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "fv_fqVl_iG", "productId": "wqIBp3Zo", "region": "9nwjqx2W", "type": "STEAM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'MockFulfillIAPItem' test.out

#- 211 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Jh6U3XHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'QueryUserOrders' test.out

#- 212 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'PdRfPvAm' \
    --body '{"currencyCode": "TXzzT6Ot", "currencyNamespace": "Hv0VcAkM", "discountedPrice": 39, "ext": {"eKbJLMbA": {}, "8tkrog08": {}, "NTaN0fhY": {}}, "itemId": "aQRyHW3u", "language": "ZxGhML3z", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 62, "quantity": 77, "region": "GFAJ5ENn", "returnUrl": "B28kW2mD", "sandbox": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminCreateUserOrder' test.out

#- 213 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'FBKyCB2i' \
    'JFsFrXo8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'CountOfPurchasedItem' test.out

#- 214 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '41xqOzto' \
    'a2jxf5pz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetUserOrder' test.out

#- 215 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'CzIxePxv' \
    'zZ7Tg2VM' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "PLK6l5je"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'UpdateUserOrderStatus' test.out

#- 216 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '9uCeK4eY' \
    'oHVR153D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'FulfillUserOrder' test.out

#- 217 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'Jet54pva' \
    'mPXTz6DP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserOrderGrant' test.out

#- 218 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'yzdvXM6A' \
    'bMzFdpZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetUserOrderHistories' test.out

#- 219 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'FzV13HIc' \
    '496s2ZXU' \
    --body '{"additionalData": {"cardSummary": "zEBW7Z6R"}, "authorisedTime": "1980-01-10T00:00:00Z", "chargebackReversedTime": "1997-07-13T00:00:00Z", "chargebackTime": "1998-06-02T00:00:00Z", "chargedTime": "1990-11-24T00:00:00Z", "createdTime": "1975-10-23T00:00:00Z", "currency": {"currencyCode": "9QgzXkbe", "currencySymbol": "EWqs2nWr", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "IfOKIxa8"}, "customParameters": {"xUihl8fU": {}, "lpPMBS9s": {}, "vv6clzqR": {}}, "extOrderNo": "7P4toOxw", "extTxId": "Kp9TMd8Y", "extUserId": "GTAUrRQa", "issuedAt": "1992-02-27T00:00:00Z", "metadata": {"ntPuaICA": "ETnuFmz8", "HjHdy1FM": "wsFQxB12", "a3hv0RWA": "UeIiE8sb"}, "namespace": "s6qXjhSj", "nonceStr": "kleBe8Q1", "paymentMethod": "2CDPCgyh", "paymentMethodFee": 27, "paymentOrderNo": "BPuORIfh", "paymentProvider": "WXPAY", "paymentProviderFee": 10, "paymentStationUrl": "a55d677E", "price": 30, "refundedTime": "1998-10-25T00:00:00Z", "salesTax": 55, "sandbox": true, "sku": "6lkHNiFn", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "pIVN8eUP", "subscriptionId": "R80fxDMv", "subtotalPrice": 46, "targetNamespace": "50PpmCv9", "targetUserId": "PuxgyDAX", "tax": 59, "totalPrice": 47, "totalTax": 50, "txEndTime": "1982-01-16T00:00:00Z", "type": "mv3yxO2O", "userId": "VqeXzyU0", "vat": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'ProcessUserOrderNotification' test.out

#- 220 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'v7DajsGA' \
    '3xgQUtCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'DownloadUserOrderReceipt' test.out

#- 221 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'vwE3CIzT' \
    --body '{"currencyCode": "aejChAIZ", "currencyNamespace": "YZqBPRcq", "customParameters": {"pV0ce3qt": {}, "Nuvy2YH3": {}, "w8Vyriqf": {}}, "description": "bBdAkyoJ", "extOrderNo": "HopESU34", "extUserId": "7KUQP3JT", "itemType": "EXTENSION", "language": "Xggc_Ea", "metadata": {"w2jZUlL1": "7V9hSeHq", "lewflGpi": "09a7mECH", "KeWdPC8R": "A8BZ8T8M"}, "notifyUrl": "em8TPA0N", "omitNotification": false, "platform": "0MCVERv0", "price": 75, "recurringPaymentOrderNo": "ug8a39eh", "region": "ivqg1nlF", "returnUrl": "STO5XaGI", "sandbox": true, "sku": "P5Jv3E4v", "subscriptionId": "BjER5UcV", "title": "gd5IJhWS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'CreateUserPaymentOrder' test.out

#- 222 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '0TXQ2nm6' \
    'BqDveBN3' \
    --body '{"description": "mGdaSe9D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'RefundUserPaymentOrder' test.out

#- 223 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'Jwj3Q2ek' \
    --body '{"code": "jke6zdI8", "orderNo": "oTHxNB49"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'ApplyUserRedemption' test.out

#- 224 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'CCPEIkqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'QueryUserSubscriptions' test.out

#- 225 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'KCG9BuH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserSubscriptionActivities' test.out

#- 226 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'RZucQGSz' \
    --body '{"grantDays": 51, "itemId": "qdo0Bnks", "language": "YylOKcPP", "reason": "GNFcdEVC", "region": "DT9eINwK", "source": "jioshyED"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'PlatformSubscribeSubscription' test.out

#- 227 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'GNolMH8B' \
    'mlqhp5dl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 228 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'j7J9Irkz' \
    'eT8CDqwW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserSubscription' test.out

#- 229 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'jZyxTlKN' \
    'EJOo8piY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'DeleteUserSubscription' test.out

#- 230 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'GzsMnNWq' \
    'JXX6QtPM' \
    --body '{"immediate": false, "reason": "njGBodXJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'CancelSubscription' test.out

#- 231 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'k0lW1Afk' \
    'puXGGYQm' \
    --body '{"grantDays": 13, "reason": "9Uuxzrhr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GrantDaysToSubscription' test.out

#- 232 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'ZW5YAoGe' \
    'Ym3CfZW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserSubscriptionBillingHistories' test.out

#- 233 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'VMnuV0jN' \
    'RoxraImF' \
    --body '{"additionalData": {"cardSummary": "DsWuPKGk"}, "authorisedTime": "1976-09-18T00:00:00Z", "chargebackReversedTime": "1992-06-06T00:00:00Z", "chargebackTime": "1997-04-17T00:00:00Z", "chargedTime": "1994-03-05T00:00:00Z", "createdTime": "1994-07-04T00:00:00Z", "currency": {"currencyCode": "D8LEv7YM", "currencySymbol": "ud5Qiwsg", "currencyType": "REAL", "decimals": 60, "namespace": "lubFDpzy"}, "customParameters": {"VM4uhPeN": {}, "Kj26kqO4": {}, "pdXuV3G9": {}}, "extOrderNo": "lMwnvwvv", "extTxId": "9hZTGNK5", "extUserId": "DUmHF6FQ", "issuedAt": "1986-04-21T00:00:00Z", "metadata": {"qlBY6Vim": "BJxMCGQL", "ypapKFlr": "hlhdgv9B", "GDZ5AFui": "0I4DOiqS"}, "namespace": "7C5nZ6zk", "nonceStr": "TKXbeE0X", "paymentMethod": "bFaKCFlh", "paymentMethodFee": 23, "paymentOrderNo": "fdYynyr8", "paymentProvider": "XSOLLA", "paymentProviderFee": 33, "paymentStationUrl": "4BZ828Y8", "price": 62, "refundedTime": "1992-07-24T00:00:00Z", "salesTax": 18, "sandbox": true, "sku": "413Z1jgW", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "xVtmSPTS", "subscriptionId": "h6odD2HP", "subtotalPrice": 43, "targetNamespace": "Boefxpgn", "targetUserId": "Ky32kPO0", "tax": 74, "totalPrice": 29, "totalTax": 72, "txEndTime": "1972-05-09T00:00:00Z", "type": "N0A2PPCe", "userId": "p7TBWyfi", "vat": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'ProcessUserSubscriptionNotification' test.out

#- 234 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'Sx7N4pdF' \
    '3pjc8eAM' \
    --body '{"count": 77, "orderNo": "bNDnmlGp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AcquireUserTicket' test.out

#- 235 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'irtAP4ch' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'QueryUserCurrencyWallets' test.out

#- 236 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'G4VfSk9f' \
    'tYxUJaGb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ListUserCurrencyTransactions' test.out

#- 237 CheckWallet
eval_tap 0 237 'CheckWallet # SKIP deprecated' test.out

#- 238 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'SUEMnJCl' \
    'NDAPm65y' \
    --body '{"amount": 83, "expireAt": "1991-03-12T00:00:00Z", "origin": "System", "reason": "vcGT0OWk", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'CreditUserWallet' test.out

#- 239 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'kxpMxZjj' \
    'fUodSWPV' \
    --body '{"amount": 3, "walletPlatform": "Nintendo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'PayWithUserWallet' test.out

#- 240 GetUserWallet
eval_tap 0 240 'GetUserWallet # SKIP deprecated' test.out

#- 241 DebitUserWallet
eval_tap 0 241 'DebitUserWallet # SKIP deprecated' test.out

#- 242 DisableUserWallet
eval_tap 0 242 'DisableUserWallet # SKIP deprecated' test.out

#- 243 EnableUserWallet
eval_tap 0 243 'EnableUserWallet # SKIP deprecated' test.out

#- 244 ListUserWalletTransactions
eval_tap 0 244 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 245 QueryWallets
eval_tap 0 245 'QueryWallets # SKIP deprecated' test.out

#- 246 GetWallet
eval_tap 0 246 'GetWallet # SKIP deprecated' test.out

#- 247 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '0E4zLjfu' \
    '5YNZWxbE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'SyncOrders' test.out

#- 248 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["a06bUowB", "qeMnz6Uy", "0M1Btd6m"], "apiKey": "4kVqiIPn", "authoriseAsCapture": false, "blockedPaymentMethods": ["SvLOxQbj", "6GjBWFwa", "WjehVbbj"], "clientKey": "zOzUavDs", "dropInSettings": "WGGDHZ1D", "liveEndpointUrlPrefix": "1A18hG3b", "merchantAccount": "xWJTe3Ai", "notificationHmacKey": "TaBgRz4w", "notificationPassword": "nzHZ9WLg", "notificationUsername": "ixYzp65V", "returnUrl": "RjwhCx4Y", "settings": "6z7ZaEFb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'TestAdyenConfig' test.out

#- 249 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "N3wa69XC", "privateKey": "Fhy6PlEx", "publicKey": "nTfWpKBD", "returnUrl": "2B1urJhU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'TestAliPayConfig' test.out

#- 250 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "avqEeHtW", "secretKey": "iHkTT9cv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'TestCheckoutConfig' test.out

#- 251 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'DebugMatchedPaymentMerchantConfig' test.out

#- 252 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "jnLFpOWc", "clientSecret": "fMTmYw3K", "returnUrl": "xpqSZN1Y", "webHookId": "NmgtisSS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'TestPayPalConfig' test.out

#- 253 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["xz5M0wPM", "cRfMGdm8", "FBlpiawg"], "publishableKey": "WEGWVJgp", "secretKey": "aWs3uPRm", "webhookSecret": "77k3ePPH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'TestStripeConfig' test.out

#- 254 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "aFWO7iPQ", "key": "fhAxpumo", "mchid": "57CRB92E", "returnUrl": "RPSyki8K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'TestWxPayConfig' test.out

#- 255 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "OoUqBl09", "flowCompletionUrl": "awYJWtgJ", "merchantId": 14, "projectId": 50, "projectSecretKey": "8Q2ew4vT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'TestXsollaConfig' test.out

#- 256 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'RfQnf4v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetPaymentMerchantConfig' test.out

#- 257 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '6NcnUHpj' \
    --body '{"allowedPaymentMethods": ["djLsXoAF", "yVQUGtgS", "1TjbSchg"], "apiKey": "Bw0JWfUm", "authoriseAsCapture": false, "blockedPaymentMethods": ["PxPB9NWm", "osBGfcOy", "4ehT9QLM"], "clientKey": "N8QPJVJQ", "dropInSettings": "rJ9yLZhz", "liveEndpointUrlPrefix": "SuF5STuA", "merchantAccount": "FiDR4M4g", "notificationHmacKey": "QWqhyFg2", "notificationPassword": "0GcRncm0", "notificationUsername": "yfuOjWLQ", "returnUrl": "fBSsFRBW", "settings": "x81b1hAk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'UpdateAdyenConfig' test.out

#- 258 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'ByOmoy6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'TestAdyenConfigById' test.out

#- 259 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'WBilZAkC' \
    --body '{"appId": "qhCeyxez", "privateKey": "hCzRKClL", "publicKey": "7QrlHQX0", "returnUrl": "2DTk4JkH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'UpdateAliPayConfig' test.out

#- 260 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'qtviVGOF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'TestAliPayConfigById' test.out

#- 261 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'dd1IXLvV' \
    --body '{"publicKey": "TsZJPmNq", "secretKey": "BUVdi2d9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'UpdateCheckoutConfig' test.out

#- 262 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'ecbMjNsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'TestCheckoutConfigById' test.out

#- 263 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'oM4wBGb7' \
    --body '{"clientID": "Zkzuehoc", "clientSecret": "ffC1ktiw", "returnUrl": "dwW67JYO", "webHookId": "1YgdPUOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'UpdatePayPalConfig' test.out

#- 264 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '2HisnZys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'TestPayPalConfigById' test.out

#- 265 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'qK6qqe2Z' \
    --body '{"allowedPaymentMethodTypes": ["XfwCetHV", "iLKSwb7N", "Ysj9PFaa"], "publishableKey": "3TfWyWNJ", "secretKey": "ghH4APRa", "webhookSecret": "8a3lvxC0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'UpdateStripeConfig' test.out

#- 266 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'Bo3M2xDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'TestStripeConfigById' test.out

#- 267 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'fBqSRNOV' \
    --body '{"appId": "tKz1SyIC", "key": "37hrfDIy", "mchid": "78KbpKJC", "returnUrl": "5D6nC9ol"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'UpdateWxPayConfig' test.out

#- 268 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'iRZmO24G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'UpdateWxPayConfigCert' test.out

#- 269 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'kv5A968n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'TestWxPayConfigById' test.out

#- 270 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'irPeRgMN' \
    --body '{"apiKey": "6cWBvJtk", "flowCompletionUrl": "j2A0tiZy", "merchantId": 23, "projectId": 91, "projectSecretKey": "43XBlW46"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'UpdateXsollaConfig' test.out

#- 271 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'o7iVDhrS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'TestXsollaConfigById' test.out

#- 272 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'e7SP0GTv' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'UpdateXsollaUIConfig' test.out

#- 273 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'QueryPaymentProviderConfig' test.out

#- 274 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "XSOLLA", "namespace": "Eg2syLju", "region": "KkJVzHH1", "sandboxTaxJarApiToken": "VXXNB25I", "specials": ["WXPAY", "ADYEN", "CHECKOUT"], "taxJarApiToken": "dKkRezXL", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'CreatePaymentProviderConfig' test.out

#- 275 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'GetAggregatePaymentProviders' test.out

#- 276 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DebugMatchedPaymentProviderConfig' test.out

#- 277 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetSpecialPaymentProviders' test.out

#- 278 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'BhjOfo7Y' \
    --body '{"aggregate": "ADYEN", "namespace": "fdzhIaMn", "region": "N05D7vs8", "sandboxTaxJarApiToken": "zsetgPJ2", "specials": ["WALLET", "XSOLLA", "WXPAY"], "taxJarApiToken": "FDW6ID6G", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'UpdatePaymentProviderConfig' test.out

#- 279 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'D987MDUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'DeletePaymentProviderConfig' test.out

#- 280 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetPaymentTaxConfig' test.out

#- 281 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "iSVYaFaK", "taxJarApiToken": "pf9uednD", "taxJarEnabled": false, "taxJarProductCodesMapping": {"DrF5WxyV": "xKlsNVyf", "TzkwAtHy": "jYi6a0kZ", "wGif7uqR": "mngA1Ly2"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'UpdatePaymentTaxConfig' test.out

#- 282 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'DAwjnddd' \
    'AsI2YwYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'SyncPaymentOrders' test.out

#- 283 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetRootCategories' test.out

#- 284 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'DownloadCategories' test.out

#- 285 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'mjCPqSQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicGetCategory' test.out

#- 286 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'YYs8Xf1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicGetChildCategories' test.out

#- 287 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Agpiu5PS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetDescendantCategories' test.out

#- 288 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicListCurrencies' test.out

#- 289 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'CWg99Wj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetItemByAppId' test.out

#- 290 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicQueryItems' test.out

#- 291 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    '0EMTT7d0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetItemBySku' test.out

#- 292 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'ZRBWlzEA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicBulkGetItems' test.out

#- 293 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["owWUcbUR", "bMeFVzDL", "eIjfmAu7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicValidateItemPurchaseCondition' test.out

#- 294 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'TKHSjXQd' \
    '5J5wpWbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicSearchItems' test.out

#- 295 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'GTrr8fYb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetApp' test.out

#- 296 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'FrALXTE5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicGetItemDynamicData' test.out

#- 297 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'DcrNkHro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetItem' test.out

#- 298 GetPaymentCustomization
eval_tap 0 298 'GetPaymentCustomization # SKIP deprecated' test.out

#- 299 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "nuQPzqvr", "paymentProvider": "ADYEN", "returnUrl": "JjQNXVTJ", "ui": "aBckDoaL", "zipCode": "Hpam8tCK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetPaymentUrl' test.out

#- 300 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '2FzjRKrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetPaymentMethods' test.out

#- 301 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'shIWLZtH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUnpaidPaymentOrder' test.out

#- 302 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '3tGMjnuQ' \
    --body '{"token": "2OTh2COR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'Pay' test.out

#- 303 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'gt6ejbRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicCheckPaymentOrderPaidStatus' test.out

#- 304 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'CgirJsDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentPublicConfig' test.out

#- 305 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '8qlOI9SA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetQRCode' test.out

#- 306 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'qI41p8Tj' \
    '2wLw0CRI' \
    'XSOLLA' \
    'P97LZpnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicNormalizePaymentReturnUrl' test.out

#- 307 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '2FVQGlZP' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'GetPaymentTaxValue' test.out

#- 308 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'W5FUNCa3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetRewardByCode' test.out

#- 309 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'QueryRewards1' test.out

#- 310 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    '0NMn9ovJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetReward1' test.out

#- 311 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicListStores' test.out

#- 312 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicExistsAnyMyActiveEntitlement' test.out

#- 313 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'Iijn45Fk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 314 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '4I0UrzNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 315 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'v7rmqhbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 316 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetEntitlementOwnershipToken' test.out

#- 317 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'uQ2f93cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicGetMyWallet' test.out

#- 318 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'wZbn01GA' \
    --body '{"epicGamesJwtToken": "5Q38eFiA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'SyncEpicGameDLC' test.out

#- 319 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'fSLPGjkp' \
    --body '{"serviceLabel": 99}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicSyncPsnDlcInventory' test.out

#- 320 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'azUkQBYO' \
    --body '{"serviceLabels": [6, 46, 63]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 321 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'KAn1JAIF' \
    --body '{"appId": "or3HZ0CK", "steamId": "n7DD46k6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'SyncSteamDLC' test.out

#- 322 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'mkuCAJnI' \
    --body '{"xstsToken": "buzMncJA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'SyncXboxDLC' test.out

#- 323 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'QdQYIjrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicQueryUserEntitlements' test.out

#- 324 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '6ASvmQeE' \
    '51SXyASo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserAppEntitlementByAppId' test.out

#- 325 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'JtoV9qLr' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicQueryUserEntitlementsByAppType' test.out

#- 326 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'v9ucCwT1' \
    'Hm75c2zX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserEntitlementByItemId' test.out

#- 327 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'QVC94Ghh' \
    'KidahrUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetUserEntitlementBySku' test.out

#- 328 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'J6UYS9Cz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicExistsAnyUserActiveEntitlement' test.out

#- 329 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'HD4vMhAj' \
    'UefY4Nv1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 330 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'qdHdCwaC' \
    'XQQ4NcJ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 331 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'WSQniFhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 332 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'V00BKASC' \
    'Gv22uurg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 333 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'MF9AqTMy' \
    'Y5qNGred' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetUserEntitlement' test.out

#- 334 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'FZiMvxcH' \
    '61DgXbjO' \
    --body '{"options": ["Old9ikDv", "kivh706N", "nZzmmtvf"], "requestId": "52ktUq8C", "useCount": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicConsumeUserEntitlement' test.out

#- 335 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    '2Qr7eUi2' \
    --body '{"code": "ILJ4G4MA", "language": "YjqQ_199", "region": "fnEMmNAO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicRedeemCode' test.out

#- 336 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '6vmbZBGb' \
    --body '{"excludeOldTransactions": true, "language": "UGUs-lnks-156", "productId": "3l6j7sNf", "receiptData": "NBOHQy7L", "region": "tkQaqhxV", "transactionId": "NHdK9ylI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicFulfillAppleIAPItem' test.out

#- 337 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'reJMFyDK' \
    --body '{"epicGamesJwtToken": "QGex8Q8F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'SyncEpicGamesInventory' test.out

#- 338 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'iz9fkDR6' \
    --body '{"autoAck": true, "language": "Ebt-BW", "orderId": "WatGUJ9b", "packageName": "JJYad7OT", "productId": "FQUpDffU", "purchaseTime": 41, "purchaseToken": "vFhAabmY", "region": "ATBFRTVA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicFulfillGoogleIAPItem' test.out

#- 339 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'Wpdd2Blx' \
    --body '{"currencyCode": "2CM0CfCB", "price": 0.10584003114448826, "productId": "2jFqilPI", "serviceLabel": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicReconcilePlayStationStore' test.out

#- 340 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'ntpKo0U8' \
    --body '{"currencyCode": "hdjsrZu2", "price": 0.13290304982073198, "productId": "6RpA8HVs", "serviceLabels": [10, 26, 77]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 341 SyncStadiaEntitlement
$PYTHON -m $MODULE 'platform-sync-stadia-entitlement' \
    '667M4OYt' \
    --body '{"appId": "AsOc4xRm", "language": "Fz-141", "region": "hjSddvLi", "stadiaPlayerId": "Wo3GcvVT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'SyncStadiaEntitlement' test.out

#- 342 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'gAdbY1Nm' \
    --body '{"appId": "CcialroR", "currencyCode": "ExKIA4VA", "language": "Kt_dlAI", "price": 0.3954258528548831, "productId": "S98iMcmj", "region": "ubPLV3Np", "steamId": "iMX05JQ5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'SyncSteamInventory' test.out

#- 343 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    'y8pUWp4z' \
    --body '{"gameId": "qdj6AdmO", "language": "uln-PNtv", "region": "DR8l0ghc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'SyncTwitchDropsEntitlement' test.out

#- 344 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'CSMSDc2X' \
    --body '{"currencyCode": "wK3J00uu", "price": 0.8589366347656362, "productId": "w6BhvXjV", "xstsToken": "HfZSJuWT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'SyncXboxInventory' test.out

#- 345 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'T4b2xXOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicQueryUserOrders' test.out

#- 346 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '1K9IRKG2' \
    --body '{"currencyCode": "bIASSR78", "discountedPrice": 73, "ext": {"GXLAjeUH": {}, "YZDMhfCw": {}, "2CX94GWq": {}}, "itemId": "IuLK7FSQ", "language": "mG_XQNd_949", "price": 46, "quantity": 31, "region": "qYgb8OXX", "returnUrl": "j6YAVk7J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicCreateUserOrder' test.out

#- 347 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'I1Z5Ve9K' \
    'DTyQT2ks' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetUserOrder' test.out

#- 348 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'yLZZs05R' \
    'adaki4n9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicCancelUserOrder' test.out

#- 349 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '18VOCA0p' \
    '3tAFQBDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetUserOrderHistories' test.out

#- 350 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    '2VZC49wI' \
    'vKV8TfWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicDownloadUserOrderReceipt' test.out

#- 351 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    '1viOzFXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetPaymentAccounts' test.out

#- 352 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'SZab93ss' \
    'paypal' \
    'fOwCBnhn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicDeletePaymentAccount' test.out

#- 353 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'IH6MNTjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicQueryUserSubscriptions' test.out

#- 354 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'oKCxpk1P' \
    --body '{"currencyCode": "xBWgzUqR", "itemId": "NEBAGyv6", "language": "rJiM", "region": "eKRCUKBV", "returnUrl": "ESbGDIxb", "source": "PDdOjXTN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicSubscribeSubscription' test.out

#- 355 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'vgGF7g29' \
    'QadnoNKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 356 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'PSgtdjHO' \
    'IIsHHn5L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetUserSubscription' test.out

#- 357 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'MCiNtmJc' \
    '2hq12XBs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicChangeSubscriptionBillingAccount' test.out

#- 358 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '0MPYktsT' \
    'biD0G96N' \
    --body '{"immediate": true, "reason": "XrSYVEpm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicCancelSubscription' test.out

#- 359 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '957DeK4k' \
    'z4kubWNs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetUserSubscriptionBillingHistories' test.out

#- 360 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'EVrg1Ggt' \
    '8k1DOKs5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicGetWallet' test.out

#- 361 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ZWcUCP6W' \
    'qbmOdQgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicListUserWalletTransactions' test.out

#- 362 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'QueryItems1' test.out

#- 363 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'ImportStore1' test.out

#- 364 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'fPrhPmjj' \
    --body '{"itemIds": ["2BFtVUmO", "Gycrn69N", "WVoFabYG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'ExportStore1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
