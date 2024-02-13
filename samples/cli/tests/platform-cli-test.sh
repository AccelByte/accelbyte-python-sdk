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
platform-get-fulfillment-script 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
platform-create-fulfillment-script 'H9UzVRiXbqlAw7r6' --body '{"grantDays": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
platform-delete-fulfillment-script 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
platform-update-fulfillment-script 'BZLCXLx8bbgorQeF' --body '{"grantDays": "bQ1g7qbPngUNB1vR"}' --login_with_auth "Bearer foo"
platform-list-item-type-configs --login_with_auth "Bearer foo"
platform-create-item-type-config --body '{"clazz": "odwpzS6DaDpv8N7Z", "dryRun": true, "fulfillmentUrl": "qGj6oDLjWjkY1aXl", "itemType": "OPTIONBOX", "purchaseConditionUrl": "oMF78NY4YkHs1cnz"}' --login_with_auth "Bearer foo"
platform-search-item-type-config 'MEDIA' --login_with_auth "Bearer foo"
platform-get-item-type-config 'JSDgY1TXp38zsCTC' --login_with_auth "Bearer foo"
platform-update-item-type-config 'rbCbPOyNQkT7NvyE' --body '{"clazz": "3cwyALczNIicXm7a", "dryRun": false, "fulfillmentUrl": "BZqxYG3aREAu2D6Q", "purchaseConditionUrl": "VKNCWP75TB0i7pKx"}' --login_with_auth "Bearer foo"
platform-delete-item-type-config 'R8dl0zRVW4EZG9m0' --login_with_auth "Bearer foo"
platform-query-campaigns --login_with_auth "Bearer foo"
platform-create-campaign --body '{"description": "XcgGVbMqSszE8GHa", "items": [{"extraSubscriptionDays": 43, "itemId": "6SdAdIhUDrwoZ5Me", "itemName": "cdKi5r6QEa1ysLEz", "quantity": 39}, {"extraSubscriptionDays": 14, "itemId": "rGN9A3sNm84hddSp", "itemName": "Ht0P7MIIR7CkyF6C", "quantity": 20}, {"extraSubscriptionDays": 7, "itemId": "UmiTqpyhPFdxLzFQ", "itemName": "N05MYzYiKWe5dNRl", "quantity": 19}], "maxRedeemCountPerCampaignPerUser": 54, "maxRedeemCountPerCode": 45, "maxRedeemCountPerCodePerUser": 19, "maxSaleCount": 66, "name": "IPrDQQRgat0SevkL", "redeemEnd": "1987-11-10T00:00:00Z", "redeemStart": "1977-12-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["MBvaO35llzQRaT5k", "PxUfofvnnSuB0y5W", "UlrMdI4sNveabntB"], "type": "REDEMPTION"}' --login_with_auth "Bearer foo"
platform-get-campaign 'xTeIv53HGCiljvjK' --login_with_auth "Bearer foo"
platform-update-campaign 'oyD6SCwGrncqmLtj' --body '{"description": "QHAf8TgoNm03VLis", "items": [{"extraSubscriptionDays": 98, "itemId": "0mPVo3twu0MesTCf", "itemName": "9x4rt69lna7qxNeI", "quantity": 47}, {"extraSubscriptionDays": 11, "itemId": "Pz6MbwL6IY69z1Ua", "itemName": "LqYSYWytLPziZMdj", "quantity": 49}, {"extraSubscriptionDays": 76, "itemId": "cBZufQxGiHPllG4c", "itemName": "YEzfTD1ZBm3MqHcU", "quantity": 25}], "maxRedeemCountPerCampaignPerUser": 55, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 70, "maxSaleCount": 69, "name": "bSqb8RwNmn9HrNQy", "redeemEnd": "1977-06-21T00:00:00Z", "redeemStart": "1997-08-06T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["NtIuS5S5XUdjsoqw", "GyzzWi9gwQYv7t1o", "7TTr1DmrhZv15T7q"]}' --login_with_auth "Bearer foo"
platform-get-campaign-dynamic 'uIOvBMcaYmvCkGZ5' --login_with_auth "Bearer foo"
platform-get-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-update-loot-box-plugin-config --body '{"appConfig": {"appName": "dAgqxpBFmaLoxozr"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "wfNPX2bOItRMvqtl"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-loot-box-plugin-config --login_with_auth "Bearer foo"
platform-uplod-loot-box-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-loot-box-grpc-info --login_with_auth "Bearer foo"
platform-get-section-plugin-config --login_with_auth "Bearer foo"
platform-update-section-plugin-config --body '{"appConfig": {"appName": "VHh2EI8JlDbPWbQ6"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lNmqRBaAkLnvxkT1"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-section-plugin-config --login_with_auth "Bearer foo"
platform-upload-section-plugin-config-cert --login_with_auth "Bearer foo"
platform-get-root-categories --login_with_auth "Bearer foo"
platform-create-category '68cmDc3fxU8MyKrQ' --body '{"categoryPath": "pM4hkkK6KKXNB3Gv", "localizationDisplayNames": {"0IqmF51TkhjYnaq6": "foWvXa3bMrXsDr6k", "ILsSSyDdmykmoPYg": "c2L4jk4Lo0LSP0pf", "4IxjUkl535X3ateE": "KDpADz1x3poD3Qgb"}}' --login_with_auth "Bearer foo"
platform-list-categories-basic --login_with_auth "Bearer foo"
platform-get-category '3boLQQ1MzH7Qm8bw' --login_with_auth "Bearer foo"
platform-update-category 'bmXgdAPh1EThG96g' 'AFKK2WDgCcxvONZm' --body '{"localizationDisplayNames": {"3EeERmDnyeFoF7VS": "Z6pf3vneSD2Tb3g7", "mSQUhAEtrmjqU6YE": "3p4lSck0ZHn5GI39", "YBHqaTHeKtW18iGe": "Ulc9d9sogWa24CKN"}}' --login_with_auth "Bearer foo"
platform-delete-category 'S0GqVvUfHQvsHXNU' 'Ne4mhgo5QB65lSAi' --login_with_auth "Bearer foo"
platform-get-child-categories 'YnNjkfZrQvGgbLdL' --login_with_auth "Bearer foo"
platform-get-descendant-categories 'sFzHkBMr1yrOMlNF' --login_with_auth "Bearer foo"
platform-query-codes 'SrUEirnjX9fDmIbe' --login_with_auth "Bearer foo"
platform-create-codes 'ZxzfTcyiuATus9hs' --body '{"quantity": 12}' --login_with_auth "Bearer foo"
platform-download 'cvrbYCwZtxFHyPLt' --login_with_auth "Bearer foo"
platform-bulk-disable-codes 'I8ilbyDPUIj88cek' --login_with_auth "Bearer foo"
platform-bulk-enable-codes 'dqCt81P1ktfIovmv' --login_with_auth "Bearer foo"
platform-query-redeem-history '9gsR5cJcHm3SZLxo' --login_with_auth "Bearer foo"
platform-get-code 'RDFuuuySj29a9LJE' --login_with_auth "Bearer foo"
platform-disable-code '8HoRS1X2PFAAMwzH' --login_with_auth "Bearer foo"
platform-enable-code 'PxB1UskYs4Yw20DO' --login_with_auth "Bearer foo"
platform-list-currencies --login_with_auth "Bearer foo"
platform-create-currency --body '{"currencyCode": "qOBSC2DKHRuPMMWH", "currencySymbol": "8Yb33T5UBJCjfcnL", "currencyType": "REAL", "decimals": 14, "localizationDescriptions": {"xeCSz9WEi8KlloeH": "0JT1yduat2vQR3bi", "Bfsu4jmsRE2w1yEk": "Lgh3tIYt4SqYUTLD", "x9gIiDandpGT2t24": "aOMh5eC3IHeHSKLC"}}' --login_with_auth "Bearer foo"
platform-update-currency 'a3xreNDUWehwH3q3' --body '{"localizationDescriptions": {"1A806DJgas4b6z3L": "NUj7fdgLA84Z8YYk", "6QEgJjBbEDoNf3n0": "hEoRCAcf80zfFyab", "WAgIUXiI07A68eaq": "C2J9jyEW6GLbc0Na"}}' --login_with_auth "Bearer foo"
platform-delete-currency 'KDUL3sa13lk1dQBH' --login_with_auth "Bearer foo"
platform-get-currency-config 'O86IlBhnetU4RwTq' --login_with_auth "Bearer foo"
platform-get-currency-summary 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
platform-get-dlc-item-config --login_with_auth "Bearer foo"
platform-update-dlc-item-config --body '{"data": [{"id": "yd4mbqoOfADMMAXF", "rewards": [{"currency": {"currencyCode": "aY9eKa699bRVhyaK", "namespace": "wwrAP2aMlu7WtjCt"}, "item": {"itemId": "oYetOO847g8OudOf", "itemSku": "jnCuHZ3c46IjGa23", "itemType": "YvYmmDg7VYPXIuvU"}, "quantity": 38, "type": "ITEM"}, {"currency": {"currencyCode": "ereSvf9699mCEHTh", "namespace": "UJkETAsSp7gh4TeU"}, "item": {"itemId": "TkOkAYfJB8AT9t4T", "itemSku": "v207Y2QD3oD5fLCr", "itemType": "3OOlXVv8ZGF7uYnG"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "zGYY7KQI1AeFgPqa", "namespace": "Okvo1aolB4lkKB4E"}, "item": {"itemId": "YOkQ1jMD3cym8xIf", "itemSku": "kOVW2grREOLx0KOw", "itemType": "w3HICQLfl7MUBG7q"}, "quantity": 39, "type": "ITEM"}]}, {"id": "DrT6QXCs5SPBbRPZ", "rewards": [{"currency": {"currencyCode": "TF6oQAXVG7tnsZg5", "namespace": "QgXjvyGJPN4eXbJE"}, "item": {"itemId": "5Vs2GcyomQoIXimB", "itemSku": "JehyxlNsjUgxBkF6", "itemType": "wFPoJeQediogEhhM"}, "quantity": 36, "type": "ITEM"}, {"currency": {"currencyCode": "IizGdKvOPdq5xrgx", "namespace": "Smy1DN9LFkYW5DQy"}, "item": {"itemId": "j4bj5Ro2ogaKt2uj", "itemSku": "QSa3Zdb65UXmy0Zp", "itemType": "6iIaTIKUkmkk9QM0"}, "quantity": 80, "type": "ITEM"}, {"currency": {"currencyCode": "nb76tFkEORV3bu1b", "namespace": "NCtX7W40V6Do5sYa"}, "item": {"itemId": "dCCFrHHC3DpZxkrQ", "itemSku": "DXuNFviMarv8mnfH", "itemType": "K8CCmE2lPnsbD3SG"}, "quantity": 63, "type": "ITEM"}]}, {"id": "dlwuUccE536ugBp3", "rewards": [{"currency": {"currencyCode": "HBvepnDCjgyJlXe3", "namespace": "6mgWjLfFmteue9nz"}, "item": {"itemId": "J6fH24T805tVg8Jq", "itemSku": "U0jZpjvsugAOS7u8", "itemType": "RiWyerCSa8SRgwsA"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "1ik1jglaDXTvKCWw", "namespace": "NTAhd2wrS0uPdjhd"}, "item": {"itemId": "inpng5BLy8wbhMss", "itemSku": "AHjapIkY9Rf4wP57", "itemType": "dBZNR88YbCtmKy8M"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "czbBdHb2slt71B1S", "namespace": "mZp2JZp50CnPb71O"}, "item": {"itemId": "RYcmQbTU5JX8ccLj", "itemSku": "MXJRk0eaKQDOJvrT", "itemType": "efglSs6g4iY9u02a"}, "quantity": 59, "type": "ITEM"}]}]}' --login_with_auth "Bearer foo"
platform-delete-dlc-item-config --login_with_auth "Bearer foo"
platform-get-platform-dlc-config --login_with_auth "Bearer foo"
platform-update-platform-dlc-config --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"YIWekp18lOC3mNqF": "7Bl0LcghVHfPEspx", "whRON0bc1eMbEIjo": "wLqc3ecjXJbZDKKo", "xLE1Y3Dymtj3giPg": "4x4yiPX6ues1Hhhk"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"U0VUfcYHJbBfAKSi": "PW3VgsZXiR1DJ7HV", "WqMkNSawQUWDFJvJ": "BWic7UkBeIXuqDuA", "XI66bQ71w0deoV9L": "x5RDA1l2XcrciYNE"}}, {"platform": "STEAM", "platformDlcIdMap": {"GCHsZYoLfR1KtOv7": "Zy0b65uvuKNuy0yt", "ZQ7M6Nzy1adnSKOL": "FKx1dX4LuWJu3pDM", "UAeeZ97SBROPYuG6": "XqP6oo7G73zdxTgO"}}]}' --login_with_auth "Bearer foo"
platform-delete-platform-dlc-config --login_with_auth "Bearer foo"
platform-query-entitlements --login_with_auth "Bearer foo"
platform-query-entitlements-1 --login_with_auth "Bearer foo"
platform-enable-entitlement-origin-feature --login_with_auth "Bearer foo"
platform-get-entitlement-config-info --login_with_auth "Bearer foo"
platform-grant-entitlements --body '{"entitlementGrantList": [{"collectionId": "fnwIdlNa29fDLh74", "endDate": "1998-07-04T00:00:00Z", "grantedCode": "IslKHzGlLKWUtDQs", "itemId": "61OQAoxyyQpRWCii", "itemNamespace": "PDGQhNPEwiJCf2XJ", "language": "SM-rALT", "origin": "GooglePlay", "quantity": 28, "region": "j12K2IzrBvvWm4ud", "source": "REFERRAL_BONUS", "startDate": "1986-08-14T00:00:00Z", "storeId": "OXudXgNne8kJATwl"}, {"collectionId": "c6esUp6Sw1I98jeZ", "endDate": "1992-03-11T00:00:00Z", "grantedCode": "7hfxnhLd3Knaknoe", "itemId": "d9DHhLOqQGhCUr6i", "itemNamespace": "TrjyEgarAdNJOIG3", "language": "khO_XsxC-541", "origin": "System", "quantity": 78, "region": "KHQkETJyTlUrwDTn", "source": "OTHER", "startDate": "1986-06-15T00:00:00Z", "storeId": "cagginxnFIna3ydd"}, {"collectionId": "cbsPheTH26IUJNvY", "endDate": "1981-07-31T00:00:00Z", "grantedCode": "GRUvpZaHCuESOiIZ", "itemId": "sMfB4ZH3mtgWgU4p", "itemNamespace": "CAKxeE70CaunQNxo", "language": "ons_xbCV", "origin": "Oculus", "quantity": 92, "region": "sGnmyo5JJTUVmb8G", "source": "REFERRAL_BONUS", "startDate": "1982-01-02T00:00:00Z", "storeId": "FTlEMEsFzYqwgK1N"}], "userIds": ["Gv2LFjAKY7CbgsWq", "p5nodqpLm7FhJBNX", "zAFdO0Khqf6kiTdS"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["FWZX7kPBom8F9GLL", "TG8phc3n4iLoIllK", "lpO2pqiXJF3WGRao"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'QomSJC4DdrKF7SUQ' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "PLG59e0k5ZtX6wK7", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 85, "clientTransactionId": "eMK6MbGIVIu8vvwL"}, {"amountConsumed": 4, "clientTransactionId": "xY5rA1WoVeJIePF8"}, {"amountConsumed": 16, "clientTransactionId": "rQzP4zvtdxdbZUpd"}], "entitlementId": "6FJtHJ1pyVwyKQLY", "usageCount": 26}, {"clientTransaction": [{"amountConsumed": 64, "clientTransactionId": "YnOpas6ghP1y4Zi7"}, {"amountConsumed": 38, "clientTransactionId": "sHqffnrfsGlfPaZK"}, {"amountConsumed": 57, "clientTransactionId": "g4uKxaCgcGLuC3br"}], "entitlementId": "WdTYCfHkIySok5Di", "usageCount": 78}, {"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "N9bvhOrHflIOd6X3"}, {"amountConsumed": 43, "clientTransactionId": "rmsApRA6HX3RwrKt"}, {"amountConsumed": 30, "clientTransactionId": "ecozL0TOg54vCE48"}], "entitlementId": "L5oLF6M4lNa4JUMS", "usageCount": 69}], "purpose": "welu01nryEJ0NqoT"}, "originalTitleName": "ow0qiOiC4j0iktm0", "paymentProductSKU": "ZPLkLOsp0LZ5njN8", "purchaseDate": "6Hl8kUXzt6bSc6bW", "sourceOrderItemId": "vgpVyW9dD1kOmvrA", "titleName": "ejcq2LgkQuaS7RBx"}, "eventDomain": "3vim02jBOxrZDyvp", "eventSource": "cLYOWA8NjxOnaEok", "eventType": "4nOOCzfsflhjbngJ", "eventVersion": 83, "id": "yH8paOJtxqMPpcVf", "timestamp": "RwNj547fH0XrKEDp"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "EY8VnocGAjci0V3t", "password": "Bf2jnHGKXphn50c9"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "tNLDljhZ2jxLRX3z"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "46OCaGBeMfPlNos4", "serviceAccountId": "yBRjrERHEonAZR8G"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "mEu0q1p6QCyY6vSk", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"FWdsbYuVEGVxYheR": "3j5mNZ6vwv7K8Asv", "t1j1Rx59hesNWy2N": "vZ85DDKDAF8KDsBZ", "OuYQJ03BAHZ7c53q": "7akMpcmnnx6RVBro"}}, {"itemIdentity": "p9v7aZK3h65hbN15", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"EQKjU7eHGebSVu0L": "Q40kepEaC4dfiOMZ", "fEhHr39pysFO3Zvc": "1BZG99LyvfvHEsJK", "QQewVLMUoAnaRcYp": "7FUjfIGaffoflEIB"}}, {"itemIdentity": "yYqeKN0meGelYF5w", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"aDhukU4khGG4vZFT": "YnPkmSu4PWam1jxR", "7SETWjteoc8fgvZD": "DhoO05oKqymxLD1L", "cvw6T6mZEiwxxElp": "MYSWIeVzm7z9noow"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "mlTIKVowi0RY2VN4", "appSecret": "ZONJREdUQ3z9F1Bx"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "NNgnke4akncw7wu9", "backOfficeServerClientSecret": "TmXfJWBPrx9Ns8eL", "enableStreamJob": true, "environment": "9bpjb1tdA3QhjCMW", "streamName": "64f4XhIjSoTB2NMK", "streamPartnerName": "tezapPr2QEPx3zTx"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "BGtEJIYppuUSsKoH", "backOfficeServerClientSecret": "w2hyd12uSE7BEv3a", "enableStreamJob": false, "environment": "MVUGKSZ4GcLkt4pK", "streamName": "32sJxlZcCTpTdRtC", "streamPartnerName": "Hvuk6B6XTmSLyn50"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "sigBVZxiKdV57GvR", "publisherAuthenticationKey": "yd9UuL02Le8HSCsl"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "sDd4M1F5qRIblS7N", "clientSecret": "z81GRazPAANjfBol", "organizationId": "dFOyqA2clJ5gEOaC"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "gM6Yn6RugbNEIpGB"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'FUjOn5mM7k8nbLzv' 'tCIW5ynMKquUicAe' --login_with_auth "Bearer foo"
platform-generate-invoice-summary 'IVXtoWAXhMlW4tLq' 'X7OICf5oD1e6oI9F' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'mYel0kOw72o8Zkgk' --body '{"categoryPath": "0jS6rDWUwfhKvrf2", "targetItemId": "AaH4yCWrHSppnIZk", "targetNamespace": "NnTn3rzH5NvAtcvN"}' --login_with_auth "Bearer foo"
platform-create-item 'edgS1fUfKmihDbmu' --body '{"appId": "8ePWlQMVDXEHeiGT", "appType": "DLC", "baseAppId": "gb64ELbzDMwyo4nI", "boothName": "RysQdbufXjYnSoIF", "categoryPath": "eouC2m38kXrDZWlG", "clazz": "VE9sJ4NpUtKp6M9I", "displayOrder": 27, "entitlementType": "DURABLE", "ext": {"EwnZhsjwJeGwaPSD": {}, "MZz95OYKiqaZD63x": {}, "e5rruJVfLGea0Ztl": {}}, "features": ["TQNEI3kfabxJWWSI", "GaXsAuGsZaSHevO0", "zUcuHAXz0UV31Mfu"], "flexible": false, "images": [{"as": "ECUo1NPpeFhUztXD", "caption": "gB7n4C97uAPP8PAT", "height": 77, "imageUrl": "U6FYBZsWFbr3RSP0", "smallImageUrl": "W9nBhvhf8Q0DtJMc", "width": 48}, {"as": "QdN66bswAgt65X4N", "caption": "1LQZmB61JMdtwCVU", "height": 36, "imageUrl": "NlZkqTZrKgXNwvm4", "smallImageUrl": "e5GX6H742OixhtAo", "width": 74}, {"as": "X9UcOvhPyE11TRT2", "caption": "SKseoe8VLie0LBa3", "height": 14, "imageUrl": "KNzjf005CXNGehQ2", "smallImageUrl": "aTjTDfKFDXC7eGL5", "width": 62}], "inventoryConfig": {"customAttributes": {"hJDWh9YWqc0qgV6d": {}, "9yOfIMLds2DbPcao": {}, "MdtRLTmSvTkQQgB7": {}}, "serverCustomAttributes": {"exYvmHMxr5hPCJJz": {}, "tJBg0tTJg46IewOX": {}, "E2AkCh3QIZsUf8lG": {}}, "slotUsed": 65}, "itemIds": ["USpSOAjHJWwfCjYw", "WkLob9gKLqs2nEZh", "pByfHZinxNfgPAwk"], "itemQty": {"MBsznlBUqnLT4AbG": 31, "Az0vJjFIYWOaNdsi": 24, "fZ6rvgvEY3Hht1Sw": 33}, "itemType": "LOOTBOX", "listable": true, "localizations": {"kaXZ7vmiEd0JPxVy": {"description": "QpshaDwNqTbbFMXA", "localExt": {"MfVXe0GZeMgsRsmH": {}, "1EQrYmkPKTPOlhTt": {}, "SiZNCxuogFteTHJe": {}}, "longDescription": "4BhSSQkQD6WmOt6D", "title": "7ufFVTOhvQpfbBke"}, "8aEdd36xj6wySolt": {"description": "DxsbzxrlaKEfkoYj", "localExt": {"Y2o6ouRW9UtNquwC": {}, "3WgumrIz4NhGztZp": {}, "r4U4fwQIiLXgmRas": {}}, "longDescription": "vjO4lj8m3XEwP2b4", "title": "gd3xOeii8Jnmssep"}, "2xD2NY0kABeGs9yx": {"description": "ahld1pO0Gyf5PO3C", "localExt": {"OyMvczgEpzZ3Fbtx": {}, "fhcRC7IVYa6iZ5uF": {}, "RYNn3SHiWxF0YbuU": {}}, "longDescription": "5ar5qTLWUCy0Afgc", "title": "050XIZRW491e94mQ"}}, "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 32, "duration": 97, "endDate": "1985-11-27T00:00:00Z", "itemId": "D2VXidT7w0Oc15N8", "itemSku": "WXBPp17PAewqSm5x", "itemType": "3B4t7WQnp8jXZedg"}, {"count": 39, "duration": 0, "endDate": "1978-01-22T00:00:00Z", "itemId": "JRfk4f9Zcw1pEHAy", "itemSku": "NFxcVTKuAQTGh5Bx", "itemType": "jWOozGoDtsUuYo5p"}, {"count": 52, "duration": 62, "endDate": "1972-09-04T00:00:00Z", "itemId": "8Tb7cUNGPTBxiFFC", "itemSku": "rn7djjs69FTFVGUV", "itemType": "hvKhJCmeisql14mU"}], "name": "HVbMPimNhcZsU3VA", "odds": 0.05029510051012198, "type": "REWARD_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 5, "duration": 67, "endDate": "1971-05-17T00:00:00Z", "itemId": "2amU7syGlElXdEAO", "itemSku": "rVSnLocLVVYamQc4", "itemType": "wcG5nDBLJoJHbiQ5"}, {"count": 6, "duration": 75, "endDate": "1981-09-10T00:00:00Z", "itemId": "H8MuqIg0CzkguwuJ", "itemSku": "CW7EEFB67AODbi9B", "itemType": "zupBsFpYc77GtRUc"}, {"count": 58, "duration": 65, "endDate": "1981-02-08T00:00:00Z", "itemId": "Rk8knYSV30lnroQe", "itemSku": "hMDli6t9unQLYXxm", "itemType": "09wpGAbpEmDY9vLh"}], "name": "3u6EDsUmrV6kH4Oo", "odds": 0.3186832529779927, "type": "REWARD_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 45, "duration": 66, "endDate": "1988-08-17T00:00:00Z", "itemId": "dIjvBbA6bfbYaJCJ", "itemSku": "jfk2TUvn95FhO7VW", "itemType": "3mbDVMDu87t0ldWf"}, {"count": 7, "duration": 18, "endDate": "1985-12-27T00:00:00Z", "itemId": "6p25xCWTqUOYZENJ", "itemSku": "1QHZQxPRXH7uxBJE", "itemType": "ECQE1li3Bg7Jxc9p"}, {"count": 95, "duration": 27, "endDate": "1980-01-18T00:00:00Z", "itemId": "mvhidwCkZwqjYLfT", "itemSku": "iCO1NDBvQvRPnAz4", "itemType": "VzW0CpoBCbyJsF5I"}], "name": "jF1c0W338HS6CBgV", "odds": 0.7080968584538467, "type": "REWARD", "weight": 73}], "rollFunction": "CUSTOM"}, "maxCount": 2, "maxCountPerUser": 15, "name": "EGTUj7YjERL1rEQG", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 43, "endDate": "1983-01-16T00:00:00Z", "itemId": "ccA8wvLsWUNd6lPK", "itemSku": "vqDejvqklTSvDwuO", "itemType": "rP9lzpiX0VuFpZum"}, {"count": 70, "duration": 17, "endDate": "1973-07-30T00:00:00Z", "itemId": "HgKjI9mwJSrN8jkI", "itemSku": "ykR2zbaI6PD7fEsc", "itemType": "ShnGUGUtV9GJ279G"}, {"count": 60, "duration": 60, "endDate": "1971-05-28T00:00:00Z", "itemId": "LNwjm3FK0nnX2poM", "itemSku": "fZ1hDHtbh4HtMlFg", "itemType": "vh2Dp2SoiIPp1yvf"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 68, "fixedTrialCycles": 45, "graceDays": 92}, "regionData": {"bvMZyeDeRnVfPUa6": [{"currencyCode": "xVVBcq3wZpFIYeAg", "currencyNamespace": "79HcLJXJ7mpVI6eT", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1971-02-03T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1992-07-19T00:00:00Z", "expireAt": "1976-05-26T00:00:00Z", "price": 59, "purchaseAt": "1972-03-08T00:00:00Z", "trialPrice": 40}, {"currencyCode": "QQC35cj4KyOVgvnW", "currencyNamespace": "bfRJtsB7cUQZ2QUA", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1989-08-02T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-10-14T00:00:00Z", "expireAt": "1973-11-19T00:00:00Z", "price": 85, "purchaseAt": "1990-05-01T00:00:00Z", "trialPrice": 55}, {"currencyCode": "pPNO3AfmXcgwC3IN", "currencyNamespace": "6tvKgLB9QmJIOq9d", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1984-10-30T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-06-03T00:00:00Z", "expireAt": "1981-06-07T00:00:00Z", "price": 24, "purchaseAt": "1975-01-03T00:00:00Z", "trialPrice": 38}], "nYxM0UHZVNYzGMNI": [{"currencyCode": "pWoSLkUrfuf4U3We", "currencyNamespace": "YeA9t2ENKKWrFtHI", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1985-06-16T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-09-17T00:00:00Z", "expireAt": "1989-04-19T00:00:00Z", "price": 53, "purchaseAt": "1994-11-26T00:00:00Z", "trialPrice": 66}, {"currencyCode": "8QqftSjq7sn8yrec", "currencyNamespace": "iPLfkVyyJsbGpO6J", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1973-12-25T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1986-04-19T00:00:00Z", "expireAt": "1989-09-22T00:00:00Z", "price": 49, "purchaseAt": "1977-09-12T00:00:00Z", "trialPrice": 99}, {"currencyCode": "N7JlZc8LMq1o2jZW", "currencyNamespace": "u4yA3r0u4q1bTHXI", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-09-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-10-24T00:00:00Z", "expireAt": "1980-07-24T00:00:00Z", "price": 65, "purchaseAt": "1986-03-31T00:00:00Z", "trialPrice": 96}], "M0u1uuoVdn9yVoSl": [{"currencyCode": "KNchPHNL4X3LLaGP", "currencyNamespace": "GdqLE8SohhhuiTnJ", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1979-11-19T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1997-03-19T00:00:00Z", "expireAt": "1974-10-01T00:00:00Z", "price": 44, "purchaseAt": "1985-05-15T00:00:00Z", "trialPrice": 60}, {"currencyCode": "gl6TZ9TGVPmv34h6", "currencyNamespace": "T7EsufmfxKYB4LM6", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1997-04-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1979-02-28T00:00:00Z", "expireAt": "1997-07-06T00:00:00Z", "price": 44, "purchaseAt": "1999-08-20T00:00:00Z", "trialPrice": 12}, {"currencyCode": "p9y7fLD2qfCXnlUn", "currencyNamespace": "qxT1WsRNMZcA92hz", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1976-11-16T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1991-01-04T00:00:00Z", "expireAt": "1999-05-25T00:00:00Z", "price": 45, "purchaseAt": "1988-03-02T00:00:00Z", "trialPrice": 8}]}, "saleConfig": {"currencyCode": "zOx2CXKlvIomU3pI", "price": 49}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "K5PRMRMwdvl0hv6g", "stackable": true, "status": "ACTIVE", "tags": ["MYvNQOsDa4bkcgep", "qtxjbrztee7QLTGA", "GxBW2tQF5tkTjgJa"], "targetCurrencyCode": "ak7Kaol01DK97D2x", "targetNamespace": "nik42miteR5eQAe1", "thumbnailUrl": "rzmmgqBPRmd6mO4o", "useCount": 71}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'JpZm9yEYWNGMy2pg' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'SGSUOK68eqGJtWf1' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'Ybgg8rdwY9bmrvHm' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'O07KNqX9LM2IwEsd' --login_with_auth "Bearer foo"
platform-get-estimated-price 'OGBXBwnzDX8v3xgC' '1Ge9PdbTTAJ2Gp1r' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku '0sVZ6LJAOddIL2l3' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'hPjNDKv2LWfXqjr8' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'fS79En3wYowBdkaZ' --body '{"itemIds": ["3y6i38XQjLDRqkpi", "FK5BtiQ272Uo9UBJ", "WodpdwsX1jorcyR0"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'x3YiHF8ITGPRQBCg' --body '{"changes": [{"itemIdentities": ["Is1Q2lzxl0yF5m77", "TTh4gUoj8u2WRcLi", "EtzVlnkflfn7pHY4"], "itemIdentityType": "ITEM_ID", "regionData": {"1dl1q92m3iRlfnBA": [{"currencyCode": "k0CwiAsR65yQ9ssu", "currencyNamespace": "HdGmxncCEr0Kcgeq", "currencyType": "VIRTUAL", "discountAmount": 34, "discountExpireAt": "1987-11-25T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1976-05-23T00:00:00Z", "discountedPrice": 82, "expireAt": "1981-02-05T00:00:00Z", "price": 81, "purchaseAt": "1984-08-09T00:00:00Z", "trialPrice": 94}, {"currencyCode": "72HHMkjzyBB4UFKi", "currencyNamespace": "aoV0VOem2yqPsMFx", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1971-04-15T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1991-03-26T00:00:00Z", "discountedPrice": 2, "expireAt": "1981-05-29T00:00:00Z", "price": 91, "purchaseAt": "1989-07-06T00:00:00Z", "trialPrice": 76}, {"currencyCode": "9cLJ1APnNlsa2bRB", "currencyNamespace": "r27fVMWuAfDqLMR9", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1988-04-24T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1977-10-28T00:00:00Z", "discountedPrice": 58, "expireAt": "1992-05-24T00:00:00Z", "price": 76, "purchaseAt": "1978-03-13T00:00:00Z", "trialPrice": 6}], "AVQXXOmqFHLbyXmg": [{"currencyCode": "CNiXH8uenbC5Cphg", "currencyNamespace": "MweexsIAP5vHLjBJ", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1986-11-13T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1972-06-24T00:00:00Z", "discountedPrice": 56, "expireAt": "1989-11-06T00:00:00Z", "price": 95, "purchaseAt": "1985-11-10T00:00:00Z", "trialPrice": 52}, {"currencyCode": "S93yOxNInDByhnol", "currencyNamespace": "uO6ti0QP2ssiJ66O", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1983-03-14T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1983-02-07T00:00:00Z", "discountedPrice": 83, "expireAt": "1988-06-05T00:00:00Z", "price": 33, "purchaseAt": "1974-04-25T00:00:00Z", "trialPrice": 30}, {"currencyCode": "VK3YVeOWs9mfVQh3", "currencyNamespace": "jLBtn9pxpE7BYtzB", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1983-07-06T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1988-07-06T00:00:00Z", "discountedPrice": 2, "expireAt": "1983-10-03T00:00:00Z", "price": 87, "purchaseAt": "1975-05-27T00:00:00Z", "trialPrice": 13}], "UpIFvORxTi79DpSj": [{"currencyCode": "b39ukcR6c2E2r3vk", "currencyNamespace": "3IfAKEbqcNXSGCCv", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1982-11-23T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-02-01T00:00:00Z", "discountedPrice": 32, "expireAt": "1977-01-20T00:00:00Z", "price": 73, "purchaseAt": "1992-02-16T00:00:00Z", "trialPrice": 63}, {"currencyCode": "F88ySNq4Mj7mulP4", "currencyNamespace": "tQ6R1OqKVOTniBgL", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1991-11-28T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1986-01-30T00:00:00Z", "discountedPrice": 12, "expireAt": "1992-04-15T00:00:00Z", "price": 72, "purchaseAt": "1984-12-26T00:00:00Z", "trialPrice": 68}, {"currencyCode": "jNRSzOTqcVNX3ahv", "currencyNamespace": "xw9gwwhTnjN6wKZG", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1983-11-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-12-26T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-03-22T00:00:00Z", "price": 57, "purchaseAt": "1978-01-05T00:00:00Z", "trialPrice": 6}]}}, {"itemIdentities": ["VVmM45mfIZsWhkS4", "76dGGJwJ00UH197M", "J6zU7JLMQyMWzYQC"], "itemIdentityType": "ITEM_SKU", "regionData": {"i7eRZa7WwIc895Im": [{"currencyCode": "qK6tVsaUq3stUh5J", "currencyNamespace": "5Z9GiBiSAylX5cS0", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1988-05-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1998-12-15T00:00:00Z", "discountedPrice": 59, "expireAt": "1989-06-16T00:00:00Z", "price": 87, "purchaseAt": "1974-02-09T00:00:00Z", "trialPrice": 25}, {"currencyCode": "aWytPfds1BYx0EaU", "currencyNamespace": "Rydf8ZyyZeHAWGgJ", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1994-12-08T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1987-12-22T00:00:00Z", "discountedPrice": 79, "expireAt": "1975-01-11T00:00:00Z", "price": 69, "purchaseAt": "1976-09-04T00:00:00Z", "trialPrice": 4}, {"currencyCode": "T8QbF7gHPTPQbvLt", "currencyNamespace": "2NRqJGIKzLyH1y72", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1999-04-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1973-05-23T00:00:00Z", "discountedPrice": 70, "expireAt": "1977-06-17T00:00:00Z", "price": 51, "purchaseAt": "1985-07-12T00:00:00Z", "trialPrice": 99}], "34luLdvtsTKXMjiw": [{"currencyCode": "6gYPvfn2Qt9iyq3N", "currencyNamespace": "yk8ncu2Z3eDHH9Wa", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1979-05-23T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-10-26T00:00:00Z", "discountedPrice": 92, "expireAt": "1975-02-19T00:00:00Z", "price": 61, "purchaseAt": "1978-01-19T00:00:00Z", "trialPrice": 48}, {"currencyCode": "J7TCcNIsQ3PuppUx", "currencyNamespace": "DSK8aOTGMudcxlCV", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1975-11-21T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1999-10-15T00:00:00Z", "discountedPrice": 89, "expireAt": "1987-12-22T00:00:00Z", "price": 87, "purchaseAt": "1975-11-05T00:00:00Z", "trialPrice": 16}, {"currencyCode": "lPdinpjS2DRfGt9G", "currencyNamespace": "lyZVQ4X67tPZSTpP", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1999-11-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-03-17T00:00:00Z", "discountedPrice": 93, "expireAt": "1979-08-05T00:00:00Z", "price": 63, "purchaseAt": "1975-04-02T00:00:00Z", "trialPrice": 14}], "vvDgw0ag7kSWE0Hi": [{"currencyCode": "qm5IuLryiEXqvUWD", "currencyNamespace": "jU1G0EVjVZw1ToLu", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1981-03-26T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1992-11-15T00:00:00Z", "discountedPrice": 12, "expireAt": "1998-08-30T00:00:00Z", "price": 78, "purchaseAt": "1992-05-02T00:00:00Z", "trialPrice": 74}, {"currencyCode": "Os1RVFrcg2CXxepx", "currencyNamespace": "78fvsyhE2BKtyTDS", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1978-03-25T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1977-05-24T00:00:00Z", "discountedPrice": 43, "expireAt": "1997-06-02T00:00:00Z", "price": 59, "purchaseAt": "1971-04-15T00:00:00Z", "trialPrice": 72}, {"currencyCode": "sh4US8o4jfMANPpm", "currencyNamespace": "ZDdMiCxmuCCVuFjS", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1998-01-22T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1971-06-20T00:00:00Z", "discountedPrice": 26, "expireAt": "1999-04-17T00:00:00Z", "price": 56, "purchaseAt": "1982-08-01T00:00:00Z", "trialPrice": 43}]}}, {"itemIdentities": ["nYBTxaTIz0jcgDI8", "Pkz96vd80msqIm5b", "ufnBqrpLeqhwVhjn"], "itemIdentityType": "ITEM_ID", "regionData": {"FPwTiXfLcxDC9Ynd": [{"currencyCode": "02mECIQhfIhHtADU", "currencyNamespace": "Q9zimQTQT95pFJUA", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1986-07-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1984-02-09T00:00:00Z", "discountedPrice": 55, "expireAt": "1973-05-16T00:00:00Z", "price": 74, "purchaseAt": "1974-12-04T00:00:00Z", "trialPrice": 41}, {"currencyCode": "ufV4f15NohXu6opx", "currencyNamespace": "QGRt6PqlkL0diRhL", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1998-05-31T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1975-01-05T00:00:00Z", "discountedPrice": 14, "expireAt": "1974-09-13T00:00:00Z", "price": 79, "purchaseAt": "1992-11-02T00:00:00Z", "trialPrice": 11}, {"currencyCode": "Ao3m61P2xaNfmn8O", "currencyNamespace": "nb1a9gMz0F2UBRmM", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1984-04-14T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1974-11-25T00:00:00Z", "discountedPrice": 100, "expireAt": "1986-04-11T00:00:00Z", "price": 73, "purchaseAt": "1987-08-09T00:00:00Z", "trialPrice": 16}], "hgGq5GIDhNC66szb": [{"currencyCode": "CCf73IFbRkPSSITz", "currencyNamespace": "4TjCrJHXGXku2YVu", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1972-03-07T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-02-14T00:00:00Z", "discountedPrice": 69, "expireAt": "1988-04-11T00:00:00Z", "price": 12, "purchaseAt": "1977-05-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "rV9ZGWrZ05sxe6A6", "currencyNamespace": "RpmKDebNkylbynkg", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-12-30T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-10-23T00:00:00Z", "discountedPrice": 78, "expireAt": "1990-03-10T00:00:00Z", "price": 38, "purchaseAt": "1975-09-01T00:00:00Z", "trialPrice": 53}, {"currencyCode": "kci5rZ8iMlOuksQJ", "currencyNamespace": "CiRFiZWwJ7NrTb1X", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1975-04-07T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1993-08-31T00:00:00Z", "discountedPrice": 53, "expireAt": "1987-10-14T00:00:00Z", "price": 33, "purchaseAt": "1985-04-02T00:00:00Z", "trialPrice": 58}], "YJ8BzP6EUmUXGM5a": [{"currencyCode": "nIloyj9lhbvuQdW2", "currencyNamespace": "jwKUckc794ryY91l", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1986-11-28T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1990-05-28T00:00:00Z", "discountedPrice": 97, "expireAt": "1976-08-13T00:00:00Z", "price": 35, "purchaseAt": "1975-10-21T00:00:00Z", "trialPrice": 58}, {"currencyCode": "81lHvv9rqvEoM8Ym", "currencyNamespace": "VjAkO3HKsEp6Klqw", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1975-08-10T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1982-02-08T00:00:00Z", "discountedPrice": 79, "expireAt": "1983-01-15T00:00:00Z", "price": 41, "purchaseAt": "1971-06-23T00:00:00Z", "trialPrice": 68}, {"currencyCode": "L81lsR7xxSVp3Gd2", "currencyNamespace": "TK0HzYviTgYmx82J", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1985-12-25T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1990-03-09T00:00:00Z", "discountedPrice": 86, "expireAt": "1997-05-29T00:00:00Z", "price": 91, "purchaseAt": "1988-09-16T00:00:00Z", "trialPrice": 53}]}}]}' --login_with_auth "Bearer foo"
platform-search-items '5BoGiTCVsXsygWbj' 'E2opXtdsJQeJ1too' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item '0qvxphTLEEBGTtZy' --login_with_auth "Bearer foo"
platform-update-item 'TjdKNKgYazujsmSm' 'ylT1YtxIq73aMb48' --body '{"appId": "jISd97KORRhxSWLW", "appType": "DLC", "baseAppId": "NfHRD3V15QaGGL46", "boothName": "LuxJF3sbeqWBdQuW", "categoryPath": "fgBAKx27MSBqabUX", "clazz": "OGkkoMUZn1YXj5zF", "displayOrder": 76, "entitlementType": "CONSUMABLE", "ext": {"1XRVfriSpPFnZBJZ": {}, "kDnEiyfa2LrnpZxN": {}, "nLRH36bqS2oFY76P": {}}, "features": ["U1AziBOHEAj1cT3u", "6Zc2FbrTFznTgDIw", "ZIRWf6T3by2kYSCd"], "flexible": false, "images": [{"as": "SMfQVQa6blj9Rdd8", "caption": "5bdYUumPKVSZCg3X", "height": 92, "imageUrl": "ck1vT90C6o86cSRL", "smallImageUrl": "9cgbUmulhe98oaFK", "width": 24}, {"as": "EWFw9GYxjiiOQAD7", "caption": "7ci0vfWVZoRRMPi5", "height": 23, "imageUrl": "HyKKz5nyI6ulKNKo", "smallImageUrl": "Xa0dgx1JgjC56pda", "width": 8}, {"as": "YhtQxpCYME6x21pd", "caption": "X2QSPAd9sxoLnWGP", "height": 35, "imageUrl": "PafIjLX8ce0KbNN7", "smallImageUrl": "Ycl2JfmQplvGjVQ4", "width": 0}], "inventoryConfig": {"customAttributes": {"4ktF5wnJDg9Q3WXi": {}, "ydCOInVolsr6CHmj": {}, "763vLwtYEJTSiXjc": {}}, "serverCustomAttributes": {"Y5ZPkv90lyKSTWLx": {}, "SFZ0LpupEi5DbkVs": {}, "3qFTi1t530Wj1Wfz": {}}, "slotUsed": 70}, "itemIds": ["AJza84lKKmVOaTS6", "xBbNrSUAW2ak7ISD", "rBVg6NuDZvPb1kuU"], "itemQty": {"fNfUDe4g7q6PHEaq": 3, "KfV3869IN4V1OdhH": 53, "GVU7Exlkmc4xYiLj": 77}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"ouFu4hXONgUwJnUp": {"description": "ryDeRcpUvlrw2MwC", "localExt": {"1uuokpaIjL0Vxe5n": {}, "9Lx3QcFo9gxOgvDc": {}, "7xMrRKvw8ISP2WKm": {}}, "longDescription": "CRRXBxlalCHtWlKx", "title": "LpS8fLWoQ5nuJhat"}, "QPxR7dvBVC5zgOKL": {"description": "TDmHe8c1eJ9sde7R", "localExt": {"yt4udIv22M18uux9": {}, "xBomQFPFWy5cwNPI": {}, "6aFo0MVwDZCIXFNE": {}}, "longDescription": "L3uWVRz3V7YbJM3b", "title": "NLWHAbCZixe2cQ6O"}, "30lpzcBQMAEcNcJq": {"description": "rKxnMzSYoc4ZjiMY", "localExt": {"4H34B6wVd8ipcKDw": {}, "QeUWtjCC2UH6jzMO": {}, "3AfmOS5mQNyRPZFP": {}}, "longDescription": "NP56l1AT6OLKmZhC", "title": "ZxxPPdPwOtEuWBSO"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 19, "duration": 14, "endDate": "1989-03-13T00:00:00Z", "itemId": "epUnEEgja2mIE2kL", "itemSku": "TnJwc5XmkCuL5W4t", "itemType": "Kt6G3j9LYdG7xVPq"}, {"count": 56, "duration": 86, "endDate": "1979-02-02T00:00:00Z", "itemId": "sHiKYArAxnKBfBfD", "itemSku": "lrQQuAc10DjjwMv4", "itemType": "vrIPRtvhQIyLarja"}, {"count": 78, "duration": 9, "endDate": "1991-02-21T00:00:00Z", "itemId": "KnX51yAB8Pa3uNGK", "itemSku": "haLlJzJMSnJIIgsA", "itemType": "VmaGYxUX1B9oVuzG"}], "name": "2CnYX2YBF2g7TVtz", "odds": 0.8075858196921597, "type": "REWARD", "weight": 21}, {"lootBoxItems": [{"count": 69, "duration": 0, "endDate": "1995-04-23T00:00:00Z", "itemId": "P7pnnVfxPwc259HF", "itemSku": "9ejHaILQruAuYyJL", "itemType": "YGqMv824ouSgkpK7"}, {"count": 42, "duration": 57, "endDate": "1989-09-20T00:00:00Z", "itemId": "mUL0uzElixc023dI", "itemSku": "vDiA0tQWlHwBcTtz", "itemType": "tx3VAl6tXFbnATCz"}, {"count": 96, "duration": 3, "endDate": "1992-09-24T00:00:00Z", "itemId": "IzVcy9k3ie64Vnwa", "itemSku": "0ClGQJultJe32Aiw", "itemType": "KadEoIVmprwPsa9Y"}], "name": "D92CX0rITajpwHIT", "odds": 0.517579441469997, "type": "PROBABILITY_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 68, "duration": 27, "endDate": "1994-04-21T00:00:00Z", "itemId": "1rVAQSxp4qTB54mK", "itemSku": "A3V9DKlCeZ7mLYsH", "itemType": "ooOIaxIpb1cIOJPS"}, {"count": 45, "duration": 24, "endDate": "1993-10-12T00:00:00Z", "itemId": "kQJAtDUH9tx60Aeh", "itemSku": "Gz1ermJYXsYgL7Tf", "itemType": "yIlAwjTZdRZJJzWZ"}, {"count": 46, "duration": 13, "endDate": "1982-02-15T00:00:00Z", "itemId": "TX2bamSCvX1nwvSW", "itemSku": "dDwD7WJHzgNZUKsI", "itemType": "5y0mR3zMyTsftKqn"}], "name": "sIJctAdxyZVKHA9D", "odds": 0.17187276509281957, "type": "PROBABILITY_GROUP", "weight": 70}], "rollFunction": "CUSTOM"}, "maxCount": 82, "maxCountPerUser": 99, "name": "dbh2iKNUl0qJqzoK", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 34, "endDate": "1992-12-29T00:00:00Z", "itemId": "MG541PAiNjULsx4S", "itemSku": "nKNXLMUaDSwwQlnN", "itemType": "RZJHBSB4fZWEFIZs"}, {"count": 91, "duration": 64, "endDate": "1973-04-13T00:00:00Z", "itemId": "1kZp1Zktx3N7WNMY", "itemSku": "IfcDKbLu8pnK34oA", "itemType": "1keYXJvtggDdXjbd"}, {"count": 19, "duration": 24, "endDate": "1991-09-20T00:00:00Z", "itemId": "BahFZZGMTcqnWrIp", "itemSku": "rOv0BJ9Sgl7H1sdH", "itemType": "2RIJz1eI7Q5pu9Pu"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 77, "fixedTrialCycles": 29, "graceDays": 10}, "regionData": {"hddMzMTQ9P7sYLDW": [{"currencyCode": "AJOA75K4BYJ2fkqY", "currencyNamespace": "JoF2FI3vyyqRzc20", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1996-01-25T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1980-06-03T00:00:00Z", "expireAt": "1989-07-28T00:00:00Z", "price": 84, "purchaseAt": "1998-09-22T00:00:00Z", "trialPrice": 98}, {"currencyCode": "9tyBTfERXdvgD1Qf", "currencyNamespace": "7Ot2DkUt3yexZBRv", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1997-04-09T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-09-12T00:00:00Z", "expireAt": "1997-08-08T00:00:00Z", "price": 39, "purchaseAt": "1974-07-30T00:00:00Z", "trialPrice": 93}, {"currencyCode": "tAVxCd3meTrT7cF9", "currencyNamespace": "oVCh89wNOkKYssVe", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1972-12-31T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-07-10T00:00:00Z", "expireAt": "1976-08-20T00:00:00Z", "price": 89, "purchaseAt": "1981-03-05T00:00:00Z", "trialPrice": 51}], "CGNgaJmuALlMQl9R": [{"currencyCode": "Lrthbfp0VgweLlT2", "currencyNamespace": "sY3SsTnDQY7kKU2u", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1992-11-19T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1982-02-03T00:00:00Z", "expireAt": "1995-06-11T00:00:00Z", "price": 20, "purchaseAt": "1984-07-07T00:00:00Z", "trialPrice": 61}, {"currencyCode": "tyQENvJrBCqeg67d", "currencyNamespace": "4RWOqO4U0bitNQLz", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1993-04-22T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1995-12-12T00:00:00Z", "expireAt": "1977-03-02T00:00:00Z", "price": 89, "purchaseAt": "1981-08-03T00:00:00Z", "trialPrice": 74}, {"currencyCode": "bkCPY70FmvviVIBb", "currencyNamespace": "cujF8Vk5qb8NhWWw", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1982-12-30T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1989-11-11T00:00:00Z", "expireAt": "1994-01-19T00:00:00Z", "price": 77, "purchaseAt": "1974-08-28T00:00:00Z", "trialPrice": 20}], "gOOPXM6XTUh2dJ90": [{"currencyCode": "yqHDNacl4F9G6Dl5", "currencyNamespace": "TFwBY6HKXAblkT8V", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1981-06-26T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1982-12-17T00:00:00Z", "expireAt": "1990-09-26T00:00:00Z", "price": 25, "purchaseAt": "1997-09-18T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Iacq4XRLaA643nTM", "currencyNamespace": "tXSAyejnny0Ju13b", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-12-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-08-12T00:00:00Z", "expireAt": "1985-08-12T00:00:00Z", "price": 74, "purchaseAt": "1991-10-08T00:00:00Z", "trialPrice": 71}, {"currencyCode": "JxytpcubN4AUUPFP", "currencyNamespace": "scZsXeJOD4DMtqfI", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1980-10-21T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1978-08-11T00:00:00Z", "expireAt": "1982-08-12T00:00:00Z", "price": 13, "purchaseAt": "1979-12-30T00:00:00Z", "trialPrice": 89}]}, "saleConfig": {"currencyCode": "imQQoLbe5YOJvxGR", "price": 47}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "5DuBDqMyIAzWze94", "stackable": true, "status": "ACTIVE", "tags": ["BQ1crBXAupATO8uX", "iw8wLYW3n4F3LD1E", "sqVpdiWo8SjDAM0R"], "targetCurrencyCode": "DwBXw5uBYeQZOzAT", "targetNamespace": "NSV9E9yyNb7yaLXz", "thumbnailUrl": "AVYymOuhCkZu4htr", "useCount": 38}' --login_with_auth "Bearer foo"
platform-delete-item '0NFRJIhFXR2dYprP' --login_with_auth "Bearer foo"
platform-acquire-item 'mbpuptECGd5cdXC2' --body '{"count": 91, "orderNo": "jMvpqM8puggOEdG4"}' --login_with_auth "Bearer foo"
platform-get-app '7gD5i2Ni6AnWn3Nd' --login_with_auth "Bearer foo"
platform-update-app 'EPhNHSH7eKDfRcng' 'EpTnRUQr3RLOM1vE' --body '{"carousel": [{"alt": "x4gqDY6jwyKRxhkL", "previewUrl": "e5zohg9s9utRQt28", "thumbnailUrl": "b6o3K0COF74tz6ae", "type": "image", "url": "ZOYwbwjMNdxKWlBf", "videoSource": "generic"}, {"alt": "3eRvBZXN3cjIXmFW", "previewUrl": "RJnj8xN7HDPTUEDP", "thumbnailUrl": "N1Kb4UTPWDXTSb55", "type": "image", "url": "v12FNXypoOLl13j8", "videoSource": "youtube"}, {"alt": "obIdnI6Ag7eUYcYJ", "previewUrl": "4QzXCmqr6gmPGaHP", "thumbnailUrl": "5SVPvRLiDi0mNHb6", "type": "video", "url": "x8eq8SGNwEQO8dYX", "videoSource": "vimeo"}], "developer": "xGhaBKoUfiHjGmCy", "forumUrl": "PsKCJTv1ic9gvagF", "genres": ["Racing", "Action", "Action"], "localizations": {"SuztsJ5tj64gV7nm": {"announcement": "Dk29mcjSuz9vbNSt", "slogan": "qPtQmQN6eKAGiZFC"}, "ftT0RWECdjWYrnul": {"announcement": "xcCKAru8pOaAVLDB", "slogan": "4k3JwkdaxR7GJpYm"}, "uYCPG181q9GA5Dyd": {"announcement": "C2D8UT6KOc4VPDUR", "slogan": "9ayazqXRqegIUicY"}}, "platformRequirements": {"XXzxsBFrUs9BYp6T": [{"additionals": "gCejBd5o7iTST7R3", "directXVersion": "KbbQGERMNpqWb51y", "diskSpace": "5RUzvMfTkPy0fGvT", "graphics": "GgfLKsg0b1Bq78cE", "label": "5O5pmPnbiPJ9j4vx", "osVersion": "mbH3rVaauufxkPHE", "processor": "lug48TgfNu0rqXUO", "ram": "yToLPIREGIKlJt3E", "soundCard": "P9kKwkENQ8VOHGwb"}, {"additionals": "ADMfuOmh0lciRhVZ", "directXVersion": "2DeoODXMzLSrzoiB", "diskSpace": "nYi5UWs3tYlYeMoC", "graphics": "imJySocRvUWDOrFZ", "label": "KPNoN9AWtLK9TFgi", "osVersion": "9j2XMh9WpifqjNjL", "processor": "OtNQts2yxf6MLZJ2", "ram": "jZfZbpTJezzriCDW", "soundCard": "XT59SRu0YqUxKDc8"}, {"additionals": "4OMIzvTScdbKBsAy", "directXVersion": "JMz4ILNDvhB4Eoes", "diskSpace": "9a6XaJeRbzTPwD3j", "graphics": "xF7vxRUY0ilrNoFT", "label": "98SgtJd4Z5f8nfaK", "osVersion": "qdZFLbZEHxsDxeR6", "processor": "d7r1SQw80JfMpPrS", "ram": "qYypRUnq5o4ETeCU", "soundCard": "YG9ccTt7Wxw8OQ13"}], "t3uTw6zQuoZcXQpo": [{"additionals": "TOxe8y1jorNsg9ZK", "directXVersion": "YCKoISyXtHzoWGdY", "diskSpace": "ohxMp3uOQIybqWfG", "graphics": "9BJ6FVKlbYHtbPta", "label": "xvagSlpGgVTF6VeD", "osVersion": "APOGBwweyFfXEOEA", "processor": "Etbag82KgBgyCd5v", "ram": "jkfz3eR4DtNp129h", "soundCard": "zBw3xLUcCEt0Dzmk"}, {"additionals": "Jq1sml5bYt76BNsi", "directXVersion": "4giR9434WpKKdzxo", "diskSpace": "ufCNlFoOcWQQy4bj", "graphics": "mQeEweoBHTdwAk7Z", "label": "QnbqY1cQwVEtAr5k", "osVersion": "KKAo9MM2Cqm84jVi", "processor": "9kIpqgrzpUkNOBWy", "ram": "dXV0Fi02aFr8CDap", "soundCard": "jwNOl4k8rVNrm8dr"}, {"additionals": "v8QD2JOe2Ntz7EFv", "directXVersion": "owPgIGuetxFMqXCQ", "diskSpace": "MAqQ2ZRGzNtrThFa", "graphics": "9XU8mosluiHZJ7O8", "label": "sAQ32wj9uaDzsr9x", "osVersion": "YiWRuuzQJiLc1eI9", "processor": "w3JEhxPGbEk7s7gw", "ram": "07FlounC3vJKBC7S", "soundCard": "wgoViPeIB4Ehy0Y5"}], "aSJVDginxAM77eY9": [{"additionals": "C14FbfiI2NPvl1kC", "directXVersion": "Y5bEokxXxkWZbjf7", "diskSpace": "GZxaossQmjo69woh", "graphics": "JFyTNk5FGUPhR4LE", "label": "Zvz3EjFR7996Ug5m", "osVersion": "4axDV5uTcYsoahUr", "processor": "ELQ1btjJOqQMgZWA", "ram": "U6E92nHJzvw7tnYt", "soundCard": "Gfv0EJyjBu4EzwRj"}, {"additionals": "D7jmQJeFPghqamSc", "directXVersion": "5y0X48eT7Mluexk8", "diskSpace": "7b9Z5BTsEA3EdmW8", "graphics": "saabP4xRowfNojzP", "label": "XI2v0prR3OEey0Mk", "osVersion": "ZwS6TYwNN3UYhic0", "processor": "3qGEg5fNzBVrjo3g", "ram": "8CfRwtyl1HeT7VEP", "soundCard": "gG40QyXzsOzgck07"}, {"additionals": "8IghoQBp2mWAOYks", "directXVersion": "czxBS0OBCa2vWadL", "diskSpace": "mQtYKmEMzicbuL2S", "graphics": "3RiW8dLTCBfGUdVE", "label": "dvdQL7sVwcZ2Pofa", "osVersion": "JoSqtrEOqxH46fRT", "processor": "SZoDdT0fefo74eg3", "ram": "Nt2c0r4GqF0NHglO", "soundCard": "VuNZ9LzNeJnBurh5"}]}, "platforms": ["MacOS", "Windows", "Windows"], "players": ["Coop", "Single", "Coop"], "primaryGenre": "Casual", "publisher": "0Pebyt8b4DGscjwr", "releaseDate": "1975-07-24T00:00:00Z", "websiteUrl": "zsFUgYwbaLvqvQ2N"}' --login_with_auth "Bearer foo"
platform-disable-item 'bmDITuymTBjn3d2s' 'FzMS3QaVjZF7Ax61' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data '15Kg9U8vrQJXQxoI' --login_with_auth "Bearer foo"
platform-enable-item 'bVi2CLEk277Ivjj1' 'A647XQ3koaAfZIim' --login_with_auth "Bearer foo"
platform-feature-item '0sFPm1YN27bojDVa' 'ZLpx4kEWYkO6KrKU' 'MhJrASBh61hmWKSS' --login_with_auth "Bearer foo"
platform-defeature-item 'rF35anDGvur19V18' 'oIrUKXttgAI2QdWJ' 'FLmoPEgd8EMspOs8' --login_with_auth "Bearer foo"
platform-get-locale-item 'nkic9gj5vyUMAAmI' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'HYbsxG5N066FXb88' 'SbLOa21DiSFsm0XX' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 38, "comparison": "isGreaterThan", "name": "zvTQEuALzDNp1SZ5", "predicateType": "SeasonTierPredicate", "value": "aDllwzTRHak1MXxj", "values": ["sK9dCEzhVnOv0PQb", "7Esrg7900nml5Bid", "VIaKiHfoeorY7A1o"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "r1ta3m7jK5pxe82p", "predicateType": "EntitlementPredicate", "value": "c6EFqBKxbS7Q2OgR", "values": ["ucL1jwRXzfjDZZBm", "2mEC3IXl5XCbkOfH", "Oau6syme06c6SKLc"]}, {"anyOf": 1, "comparison": "isLessThanOrEqual", "name": "Gr5kdazlypvt6lSL", "predicateType": "EntitlementPredicate", "value": "RGESmooHiCV4GUOn", "values": ["NT2VHTKuIT5FwwHj", "XpapXQGRakUbcG7P", "cR4eiU3Idi55jNrG"]}]}, {"operator": "or", "predicates": [{"anyOf": 49, "comparison": "isGreaterThan", "name": "F2PWGTTD81xhNP4t", "predicateType": "EntitlementPredicate", "value": "kYBUjyXAn3bWQF6Q", "values": ["hckUTGkcBOE4qMcH", "cAiJpXIrgroixptZ", "1Kyi8ZFvGcV8DY0X"]}, {"anyOf": 84, "comparison": "isGreaterThanOrEqual", "name": "kDstxZcY1HgAnZV4", "predicateType": "SeasonTierPredicate", "value": "voQNW8Yc481dYdvG", "values": ["xJAMDRA1LF7jdWle", "kFwO94VBCV9qJhWv", "a2FPBujX0geYCpGJ"]}, {"anyOf": 79, "comparison": "includes", "name": "sqsPNJMiZXXOFwmG", "predicateType": "SeasonPassPredicate", "value": "AvNF0Z0GkwxUNYyN", "values": ["i5WjMZfOadpgegCU", "wGiKrknH0Y5mrQgL", "C6D2qsFiQHglUQMZ"]}]}, {"operator": "and", "predicates": [{"anyOf": 17, "comparison": "excludes", "name": "URrlm88QlKyuoya4", "predicateType": "SeasonTierPredicate", "value": "uNy4ejmVA3vMCsGy", "values": ["Pd12B8QNUz0hFFNb", "H6j2W4roZM2UKAXE", "EsL5D0oiFchQnVeq"]}, {"anyOf": 100, "comparison": "includes", "name": "IObJBTsvsw76uISR", "predicateType": "SeasonPassPredicate", "value": "bKVoWtoUW1P7ocuB", "values": ["AldDSUS7Haa6unq1", "2piIQFVmzMidw70K", "yQOSRvyiLBRVtIDi"]}, {"anyOf": 92, "comparison": "excludes", "name": "Oe9Eevf1fhMg1E2k", "predicateType": "SeasonPassPredicate", "value": "QLFrVgtX7y0fPOie", "values": ["xJ5v3SBafnKNiMPb", "DCow2zXyFFVpM87y", "qEwEacQMTlqN4LKk"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'FkFGA85W3HJkqgS2' --body '{"orderNo": "B37wwoPYOHiIsxms"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "LBPBJuNLnWRrtW87", "name": "0qD88ZcduZSe7W20", "status": "ACTIVE", "tags": ["cDaiq0nEZ7PyhqFJ", "kDClOsKmfsgJdmzs", "DPsWh1k0cQ08NG6d"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'X2TZkil67kRngoUa' --login_with_auth "Bearer foo"
platform-update-key-group '83ECh1gqPeS193TN' --body '{"description": "Nzot3sVli3GN2XTr", "name": "FibRAhzzEWzWlTY7", "status": "INACTIVE", "tags": ["KmQafUs2bxYztOEy", "VbKIf1ZbzgUwd8DH", "oCQykmXHYmkRlg7g"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'Ys6unPYQ9jNQN1di' --login_with_auth "Bearer foo"
platform-list-keys '1ldhOh6HvjnYuV7N' --login_with_auth "Bearer foo"
platform-upload-keys 'fC4A2ODiZhbfb8Qq' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'CyK1XH9D6vl5eFdF' --login_with_auth "Bearer foo"
platform-refund-order 'fgK46GjCWaP8huTm' --body '{"description": "nq3FGQn3Ahu5wxq6"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "v9z75SzoCV8ZMi2o", "privateKey": "1nR482D6gNClk9c8"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "7hosaPFC5zBW3ZgV", "currencyNamespace": "ZCj9ObVGT0Scwl4k", "customParameters": {"NmCi15XTJTgCNNH7": {}, "RtG5Xmo9Q0Wb07N1": {}, "7fkxZSc6VbE0AGce": {}}, "description": "kjMNHuPXtz8tXxrm", "extOrderNo": "zafMUguyDoN91uc2", "extUserId": "8HoSpGt1g0GGbT4H", "itemType": "BUNDLE", "language": "rs_hKhB_dG", "metadata": {"WJKwXXSbv5eg9q86": "IaDFjjx6uZerWbtw", "TX9gNRByjbE8lOLA": "fTXKLzbrddqcKLa7", "LevxNHOSEhQRZIp6": "93lRwtc43atCuCFx"}, "notifyUrl": "bfbz4aQERziPL4dH", "omitNotification": false, "platform": "7AlxO6qdFpc71sSc", "price": 21, "recurringPaymentOrderNo": "Ls7mjRxNmvvNtjJN", "region": "QepUTGhwlY4lPzls", "returnUrl": "CR5rVsyfcH7WjP7H", "sandbox": true, "sku": "eVskqeUB7RSayqGF", "subscriptionId": "guhh3bvadRthdbVA", "targetNamespace": "pebRA09rW8i8krFW", "targetUserId": "Jhe03coRFok5d3Ay", "title": "GrZO8GuoXNSoVEBG"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id '7VbBPUWipz9C05Ya' --login_with_auth "Bearer foo"
platform-get-payment-order 'bFX4FCK5ucTFsAFz' --login_with_auth "Bearer foo"
platform-charge-payment-order 'aO3yJpA3KMxBlrRy' --body '{"extTxId": "tER1qdTelFAadM9y", "paymentMethod": "66Drf4SSGGt3MiBK", "paymentProvider": "PAYPAL"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'SiGUjVAw4v3q6JRH' --body '{"description": "cn7KaoCEkRdo6qHY"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'IZWnXqQ1oHFJ9Q0v' --body '{"amount": 33, "currencyCode": "egSEhrPpK2q8kxR4", "notifyType": "REFUND", "paymentProvider": "WALLET", "salesTax": 88, "vat": 62}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'zZWfmP2sx0KO5bEJ' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config 'Nintendo' --body '{"allowedPlatformOrigins": ["Playstation", "Playstation", "System"]}' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'IOS' --body '{"allowedBalanceOrigins": ["Nintendo", "Oculus", "Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "rShGbIIuqK8C403H"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "shF9Rh2o7GCQGPCx"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "T4QHK30EX0FclpDl", "eventTopic": "5HsuracO5MnjnxD1", "maxAwarded": 84, "maxAwardedPerUser": 55, "namespaceExpression": "kxShFVQTRekLfjmy", "rewardCode": "8zosRCRgVwbrQKmb", "rewardConditions": [{"condition": "01yA7U7dGMjupZkZ", "conditionName": "QY8CNyT4k3DIbfT2", "eventName": "2G5NpE130YWSgxpK", "rewardItems": [{"duration": 100, "endDate": "1980-06-08T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Q6ZXQcb2o1J5euLA", "quantity": 3, "sku": "vXZV3ig8Jg5VByeI"}, {"duration": 51, "endDate": "1983-01-17T00:00:00Z", "identityType": "ITEM_ID", "itemId": "McYYBixKJXCISQdw", "quantity": 8, "sku": "qcxKs4nlf1MfqUZX"}, {"duration": 22, "endDate": "1978-03-21T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qjz2xUKLNWSmYyVv", "quantity": 50, "sku": "iJssShBKsQjXvfQg"}]}, {"condition": "QDt6ce8NDMErA82F", "conditionName": "rR1GSogkewIzTOqK", "eventName": "kcjRh3l2gAJOTCbx", "rewardItems": [{"duration": 74, "endDate": "1989-07-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gNLIlTk3Bpclrk4h", "quantity": 70, "sku": "wBhoUg4LsGP6KLPX"}, {"duration": 21, "endDate": "1974-06-25T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "v2XiXaBzsmaxjTZP", "quantity": 24, "sku": "WOboMkyB7FTexsOZ"}, {"duration": 75, "endDate": "1971-09-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "OlRGdmXxETLEQrr3", "quantity": 75, "sku": "3Xit6boOLGCcg16D"}]}, {"condition": "qwdQPQ9HkSSV8e1M", "conditionName": "gTTLS2FgarY903IN", "eventName": "GIyEfRBEj7qms9AG", "rewardItems": [{"duration": 87, "endDate": "1973-09-11T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "umyfuBNisecYbcOp", "quantity": 89, "sku": "fuBs1Vpqn47GVghT"}, {"duration": 69, "endDate": "1982-09-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "qOf0bNs97KvKyj3M", "quantity": 34, "sku": "3wmRTrDCjhnKvsHe"}, {"duration": 53, "endDate": "1974-03-24T00:00:00Z", "identityType": "ITEM_ID", "itemId": "qgYPixtHk6lWq6tE", "quantity": 9, "sku": "1La16Bw3JbUnUDh5"}]}], "userIdExpression": "yGjjv4Mwrv2vancm"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward '6Z7rb21A2E9pX0BW' --login_with_auth "Bearer foo"
platform-update-reward 'CMqPsRk5htdM5T3f' --body '{"description": "DSrSHrkoqv2mM6so", "eventTopic": "MaTvQq2a9YdFNtRV", "maxAwarded": 91, "maxAwardedPerUser": 87, "namespaceExpression": "O0js0hG9xmSnzd7z", "rewardCode": "gUxAogcnGkXk17QP", "rewardConditions": [{"condition": "kJHRhmLKQuQVFSKi", "conditionName": "Xl8G2uf6E8EajXLS", "eventName": "AS8MKMaxQ1QyJCpK", "rewardItems": [{"duration": 8, "endDate": "1986-01-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "CiTNAxq26gZrPqCs", "quantity": 90, "sku": "2M5PmXfKnQ7BYGjC"}, {"duration": 96, "endDate": "1999-08-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MOrbmoRvWnfmGFy0", "quantity": 9, "sku": "59UDEOF6gp5Ufmjt"}, {"duration": 18, "endDate": "1978-11-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ewWjwMWDKEt6JhbJ", "quantity": 11, "sku": "Il2wIFlHm9N6owMH"}]}, {"condition": "MtJy1Oqn59tEGm9N", "conditionName": "YeUT5P0nx8TqSZdZ", "eventName": "5C8mFI9TnvzEqBNM", "rewardItems": [{"duration": 64, "endDate": "1995-07-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yI6Vtd4v9k4fv3kM", "quantity": 17, "sku": "U3RHNDFjLKFrepy5"}, {"duration": 48, "endDate": "1973-08-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "1kmb15QeIQF51c4M", "quantity": 33, "sku": "z6joBAhAlJGI2YYb"}, {"duration": 14, "endDate": "1971-03-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "BzAzPkt1efGJeJax", "quantity": 51, "sku": "2tHxDb06ZFy3uglS"}]}, {"condition": "p2UxvF2uLXWilRD7", "conditionName": "HD6LCgdFxRGj00RT", "eventName": "6LvcnGMJbJIYLssM", "rewardItems": [{"duration": 44, "endDate": "1982-07-18T00:00:00Z", "identityType": "ITEM_ID", "itemId": "XGPhEJsc7rZpxaPH", "quantity": 5, "sku": "gmDfNfPGYYSTunMg"}, {"duration": 40, "endDate": "1987-11-04T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xIwKssw647YwDudn", "quantity": 68, "sku": "Jw9zIWsiP2JQ24me"}, {"duration": 60, "endDate": "1980-03-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "PlcYaqYM7YfBmhjI", "quantity": 23, "sku": "Y28qVceS9UX48dKP"}]}], "userIdExpression": "CFUIeyYEymNXzNX6"}' --login_with_auth "Bearer foo"
platform-delete-reward 'TGh4UdEweeBsJEvB' --login_with_auth "Bearer foo"
platform-check-event-condition 'bAvCmlh6Z1oz9Bai' --body '{"payload": {"xUUvmzbajE2gjooi": {}, "Dnc1NUb51lEgUwQ9": {}, "tkWaMOH47CAT7cBP": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '0918JaEBQBP766LU' --body '{"conditionName": "nBBR84iAO7sBQt6Y", "userId": "J2tWwF7RnP1oK3c4"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'RVfjB0zi3XrYZUiN' --body '{"active": false, "displayOrder": 30, "endDate": "1991-04-03T00:00:00Z", "ext": {"LHkVrEFd8xArWJuC": {}, "AIfNBSHgpFNw9K9p": {}, "mAIc6VSfE9nbE2PM": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 57, "itemCount": 91, "rule": "SEQUENCE"}, "items": [{"id": "kujxbCu1HFaj6Vxs", "sku": "3GuA4S1dS7H7yIS7"}, {"id": "b5TSDRIoMg7Dc5AP", "sku": "zfzXDELJFaIaEMW5"}, {"id": "bhJyL72WDyhBsCCb", "sku": "nfihnXKxGxaupnTT"}], "localizations": {"q9ihZkvFKfSHQh8I": {"description": "9xk3sFl0cbuCRM69", "localExt": {"XKkLwioRaKnWhlh8": {}, "0BhYe2fJDS6T75Q4": {}, "ulonMFjmYqE1wJhf": {}}, "longDescription": "ogWg2Apm0sUy18aW", "title": "n65Co0vdCk8so6JS"}, "aZAIadKDEZywonA2": {"description": "SrEdN2tmGuX6r0gB", "localExt": {"VUUeKKlPKtE6gnYx": {}, "mkmCWbs5qugklBUS": {}, "6uwWrCQt86Jrg8tL": {}}, "longDescription": "AJWpcyNkUvqn6eXr", "title": "6FNbKJ05Orya6LSS"}, "UlugIAknXcSaVYcA": {"description": "Yp7qSiDvsfMUOpWv", "localExt": {"46sXvpOjrpRo4mYr": {}, "CeQUnYoID2UqO0iA": {}, "XA9dB4ib8HDOJ8TN": {}}, "longDescription": "iP8KgEAj3dbRTI0i", "title": "6dO3zkbDseh4tJdo"}}, "name": "GcwMBmegqVUaWMJB", "rotationType": "CUSTOM", "startDate": "1990-05-19T00:00:00Z", "viewId": "ZiBRXszE7CL1cQCS"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'oqHvH7g63cOx6yrI' --login_with_auth "Bearer foo"
platform-get-section 'w37pKOLrF5i3gr3C' --login_with_auth "Bearer foo"
platform-update-section 'c4M2O7NrTQO7KLdZ' 'DGwqx7T3l1ut2oyo' --body '{"active": false, "displayOrder": 55, "endDate": "1976-03-08T00:00:00Z", "ext": {"93Mg6TKwdRMraDLr": {}, "wh3d0ykRGkgqUNIb": {}, "JMJ9ABbKVWO2YEDi": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 84, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "cvtQ92iD02YMvEUN", "sku": "foL7JCcMo7GxxXdb"}, {"id": "YCRexPekTsQxMTfa", "sku": "Sot7aohFYy4VxwHI"}, {"id": "J9gzxqAw4vBGQAeh", "sku": "0VTiTP4PSrXUS6jY"}], "localizations": {"I9lsQFD43Df5qUZO": {"description": "FzpFd6b5Jc5TETHc", "localExt": {"up8GG0VCMTFJ6svT": {}, "yo9RHget5hzB52BD": {}, "FopxUwkMuSqQnKzD": {}}, "longDescription": "gDAtqE3kuybwTQFY", "title": "EJjIYwqfSRy8GgVk"}, "77fd1GS5YkyhAiAI": {"description": "tnWUmD225fp1egsx", "localExt": {"3ErheNwqd5priclN": {}, "NqLyrlzrJ4QHbfnA": {}, "dtkujxHff7n1yaNC": {}}, "longDescription": "cjgFhS0URBhl0L5F", "title": "CbOn46W2B2uPQLrt"}, "2t6bVpCgKvPXSDuf": {"description": "mKh783cV54JsVBRB", "localExt": {"0rY0xfWddACyHSmo": {}, "4KX9TPO3K1k5ZM8b": {}, "tmGsgXNXbpqxh76A": {}}, "longDescription": "f5JSwjw2fE2g6jXV", "title": "7oai2oDm9FaP0HJ9"}}, "name": "8tE4UyoQg0b0sGOk", "rotationType": "FIXED_PERIOD", "startDate": "1981-07-14T00:00:00Z", "viewId": "prSfW9OutADrNGBW"}' --login_with_auth "Bearer foo"
platform-delete-section 'SJ1zQKxVmRTawjiZ' 'PMoZZcyGEHxAKDQh' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "er3usApPdJPn9eId", "defaultRegion": "hIBvTTupABJ4RwH3", "description": "EdKmYtbqQHNfIZwr", "supportedLanguages": ["Mxf3EnzZVnkLT0Lb", "85nmpdN26BY5YI0j", "eO2zMDSy4kyqyKgr"], "supportedRegions": ["tEPdXXlt8geCdiXu", "3iNvn7vLZ7h6alhJ", "NGZF07lsPP5OfHbX"], "title": "zWnVO2U4uyzZo1rj"}' --login_with_auth "Bearer foo"
platform-get-catalog-definition 'ITEM' --login_with_auth "Bearer foo"
platform-download-csv-templates --login_with_auth "Bearer foo"
platform-export-store-by-csv --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["rLQjk4VoYfIksth2", "4cZBpdDFfvzeU5iq", "hx6zv7EURTNIoG1D"], "idsToBeExported": ["BdoKH6sREmmfwUZL", "ZZS7snx0Q2Gd8m7Y", "3wiNloJfey3HXL6S"], "storeId": "jljNPTXA3qbg55Sy"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'ienCODZ0mnOpPTVx' --login_with_auth "Bearer foo"
platform-update-store 'EgBFzG8tlkxWKCU1' --body '{"defaultLanguage": "XN4gl7yHvEqpJSrD", "defaultRegion": "XVwCkhOQ161TFjRO", "description": "YJm75VIuCOCkt2W1", "supportedLanguages": ["DfI8QtgODk9K6DcM", "nyCPn1FylWdaNV1V", "aZTkbbuWiiA4UTDg"], "supportedRegions": ["S2SVEo5M80LLbku9", "GYH4ijqOVM50tCqk", "ZfsSxAbDJ7sHCLup"], "title": "8pmEosOXglQwwdeL"}' --login_with_auth "Bearer foo"
platform-delete-store 'VpmXqRwVjc3W2ANm' --login_with_auth "Bearer foo"
platform-query-changes 'E3VVsQ1fm9EUdiaR' --login_with_auth "Bearer foo"
platform-publish-all 'juLsKZoqnpKwhpZV' --login_with_auth "Bearer foo"
platform-publish-selected 'dw5UMa8ymxtEFLwE' --login_with_auth "Bearer foo"
platform-select-all-records 'LCY2vIddlxnA1Vyn' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'ioJcAPwVHUGcs1AC' --login_with_auth "Bearer foo"
platform-get-statistic 'MvoY4jWH9dFmOHW0' --login_with_auth "Bearer foo"
platform-unselect-all-records 'j9suukPE4JwQONQ2' --login_with_auth "Bearer foo"
platform-select-record 'vCbMn0Oia336uiiM' 'TAductvUfVwLahtR' --login_with_auth "Bearer foo"
platform-unselect-record 'edh1SiZlOpIQ8GL7' 'jBF1R5OexAPzCG6Z' --login_with_auth "Bearer foo"
platform-clone-store 'KQClGc1636nbfM3J' --login_with_auth "Bearer foo"
platform-query-import-history '9G40Y62bCo941ALz' --login_with_auth "Bearer foo"
platform-import-store-by-csv 'nQuHVskfCjUK8GeX' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '4Q0B2Cj0oOmBmXu1' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'KiTTiz7yrIvQj2is' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'N7bRwcr16lW5YwgZ' --body '{"orderNo": "pjlMMtPWg8217m7q"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'NkQiKp2oac8QTNEu' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'BbeuQqm9wM7mgTtU' --body '{"count": 6, "orderNo": "gNpNon6DKW9A6Amn"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 81, "currencyCode": "uUZ41mSeS9SnGqhJ", "expireAt": "1991-01-07T00:00:00Z"}, "debitPayload": {"count": 43, "currencyCode": "YEknHPKrZ7TiNBE0", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 89, "entitlementCollectionId": "fVHLMvrCsH3RYxH2", "entitlementOrigin": "Oculus", "itemIdentity": "2a7fCFAUzLELiM57", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 61, "entitlementId": "tWjfVciuLnLsBKGs"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 77, "currencyCode": "wJd4SrigIxAhbFMZ", "expireAt": "1973-07-30T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "aP0wpZgQEvFzox9w", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 95, "entitlementCollectionId": "ocX3DRWobEoGr8W9", "entitlementOrigin": "Oculus", "itemIdentity": "KBedcr6PM51z7i0w", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "egK2t46EG8I2lTvi"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 83, "currencyCode": "98IEbc9YITN98j4P", "expireAt": "1999-07-29T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "GeidXRRnIAJfKVjO", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 46, "entitlementCollectionId": "6rtILNJVv2DLLUyB", "entitlementOrigin": "Other", "itemIdentity": "SRkuw6q8FgqG46Rs", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 74, "entitlementId": "5mkZjnRXVcg6AByN"}, "type": "DEBIT_WALLET"}], "userId": "gVnZOn0tk4IATSIe"}, {"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 97, "currencyCode": "cqNEn4IZ0Dv6b8Wt", "expireAt": "1971-08-20T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "OTHnbX9tC9PQlFAG", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 88, "entitlementCollectionId": "MtEybfcAl0mnsAkR", "entitlementOrigin": "Nintendo", "itemIdentity": "2k0AzdgIunRkTxsG", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "rpNELM8Lfkut0wnT"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Other", "count": 17, "currencyCode": "h59RGSbBMh7jpszu", "expireAt": "1995-07-20T00:00:00Z"}, "debitPayload": {"count": 22, "currencyCode": "F9fJBJkSOrF9Dg4F", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 15, "entitlementCollectionId": "DwBGyBiHewZkwEeu", "entitlementOrigin": "Playstation", "itemIdentity": "lSZzp4aEW4GkHG5O", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 97, "entitlementId": "8sMuss76ezTrsDZN"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 34, "currencyCode": "I45X7HvUtPYONZdF", "expireAt": "1976-02-19T00:00:00Z"}, "debitPayload": {"count": 21, "currencyCode": "5lkjQNHrjaboGomg", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 30, "entitlementCollectionId": "UqeuZh5qtrRbNnGe", "entitlementOrigin": "IOS", "itemIdentity": "ge2inL8fBFP1ABaI", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "KEQLkM6o3eGSP4Ht"}, "type": "DEBIT_WALLET"}], "userId": "nNTLXHrsOFsbhRow"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 18, "currencyCode": "mRgoxNwp1lGkYoq8", "expireAt": "1988-12-08T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "1TM0tefVQPWX1NPO", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 99, "entitlementCollectionId": "q7TCUJhDsDefAS09", "entitlementOrigin": "Steam", "itemIdentity": "yQB1vR1mx6K17GL1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 36, "entitlementId": "sf94ALBmvdncQkcZ"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 70, "currencyCode": "cWdVH9bww15zZsaY", "expireAt": "1980-10-19T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "Ae5Kd5QB96ndlO6i", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 66, "entitlementCollectionId": "AyZKhqilty9NVlgx", "entitlementOrigin": "Nintendo", "itemIdentity": "nSpCzyb8FkoxQbrP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 89, "entitlementId": "gi87K58pQswqKLut"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 27, "currencyCode": "usOsa92F6iwkJIYO", "expireAt": "1990-01-05T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "ja1soDE1K0SvGrMY", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 23, "entitlementCollectionId": "PmPXC2LfL2m5rP2A", "entitlementOrigin": "Other", "itemIdentity": "0t6foPPH94SUinY5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "iUlqgvY7dPPyahpp"}, "type": "CREDIT_WALLET"}], "userId": "wJTNL2UCWUtaAD7Z"}], "metadata": {"Zx1iefATWcDSqGYR": {}, "Mdz07xEJ40epssgJ": {}, "JC3CX0hpB1ZGMMo5": {}}, "needPreCheck": true, "transactionId": "f9A6HjCnFRdSihcv", "type": "szzQLZBktk0siMup"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id '01kyaFwwD7wecuQb' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement '4GNQHVZMKGBnzh4s' --body '{"achievements": [{"id": "uaGIzttTncVBf5g3", "value": 29}, {"id": "9GWKpItMt4GszRuf", "value": 21}, {"id": "vSs5YmIejozmG5Hl", "value": 35}], "steamUserId": "GcMuV5phhU315LUC"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '6HSMQ32UznXNd6ve' '29lqqtcLJW9eTJvK' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'NDFrx6LabyDnqXjX' --body '{"achievements": [{"id": "KPIcxh0x7T6RQGnn", "percentComplete": 100}, {"id": "vSMFw8X4zxbdfXgu", "percentComplete": 28}, {"id": "07ZzzIs3Jke34ZAU", "percentComplete": 43}], "serviceConfigId": "V3URIRVDYBd6hMB0", "titleId": "l7sg7IfMH5Tu1ky1", "xboxUserId": "ZYvyeHmfoFkUDP86"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign '4shbnQ3bVvuvpsDJ' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'XPCWkX4Kpi8CJ88a' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'MPGFFAQZbfbmVTEb' --login_with_auth "Bearer foo"
platform-anonymize-integration 'iRq5Juikmpat75rV' --login_with_auth "Bearer foo"
platform-anonymize-order 'bN9ZBtzJ33tCwv8H' --login_with_auth "Bearer foo"
platform-anonymize-payment '1f451FVZ630HNBYZ' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'Srz7pMjESLLMPKDX' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'Lki6Oz5Bygt8Q0Rj' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'Sf1srB7hGwGbUmQm' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'JHNffZENs9X0hFMd' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc 'yOwXgKyPhXmcysae' --login_with_auth "Bearer foo"
platform-query-user-entitlements '8HpWH4xiz3fWthJS' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'u2pUIIuPLFAtcWhj' --body '[{"collectionId": "AP57QbWvSSp71zEP", "endDate": "1992-07-26T00:00:00Z", "grantedCode": "fmAQiqRRC2caquMR", "itemId": "tQOILcaDqUITBHQR", "itemNamespace": "5ISNoFR3GUxdMuvm", "language": "FvLc", "origin": "Other", "quantity": 24, "region": "zaaeP3Wd0Wrb8s3G", "source": "OTHER", "startDate": "1997-04-19T00:00:00Z", "storeId": "CY0vAfbq8xoCurq4"}, {"collectionId": "lpHXrbVBh60NUA2a", "endDate": "1989-10-19T00:00:00Z", "grantedCode": "QwnXrmi6ya8u4sQP", "itemId": "vaf1AcweR7tJW3ML", "itemNamespace": "Mob1hUnIzIpUM8KK", "language": "Lhe_236", "origin": "Twitch", "quantity": 60, "region": "ZluTekDMCGUJvERx", "source": "PURCHASE", "startDate": "1974-03-11T00:00:00Z", "storeId": "8djSb4Vt2vKQ5vlC"}, {"collectionId": "dI519Pf2iogwxM5D", "endDate": "1997-09-12T00:00:00Z", "grantedCode": "M0dgozmco41750xd", "itemId": "YQg34WUV0WpmsQnp", "itemNamespace": "1n4YGumTKOlDOy5v", "language": "Ht-hb", "origin": "Xbox", "quantity": 81, "region": "1jvXYBar5RMmmGdW", "source": "OTHER", "startDate": "1977-10-12T00:00:00Z", "storeId": "wpj5tVfKU3D8WVPh"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id '0Z7YiGE2cyzTMBY7' 'Xd0OoENg2Lw7uepm' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'ahXojVZYz2zMU9jL' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'bM71Tg922xiBgHSk' 'a0Pz7I1WkIa0oZ1n' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'XpW1l70pcZgIn4lP' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'ghHyMEHBzArbyW10' 'NkJFQxuMHnfOlX6H' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'YVEiaereFCPJU2wE' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'zUYUTmZ8JSMeNmRo' '["cp400RZe8Bzx9aGE", "I22BTCZs97TJI8GP", "rM24F3celFgM62HQ"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'tgzQhO3nR8j8DlP6' 'OGbn8vmfMYGLt1Aj' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'Khh3JMX7xSrz1EH6' 'X2SM3xzsNrJzWBcd' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'Flo7oAsOlfLB1J19' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'b5rTfiL2P3r1a8KI' 'JH33aKkPuWD59MgT' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'y1HA58Jt5NaROjSK' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'FEuZo2ElXYSS4ezB' 'RSiOyReviDaxlPdh' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'wmcH03yoMxzRR6xd' '9rTh3ureaIbxM3We' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'v9pZQjWAN0tny16Z' 'HZtuSJGQCrM7JEMR' --body '{"collectionId": "PkdTcAzkIlndN5xe", "endDate": "1971-07-26T00:00:00Z", "nullFieldList": ["7Qz5SjzQfOLYu9O4", "6OOzz9p57qSpHerz", "O87cg7TqtMiQgi7A"], "origin": "IOS", "reason": "suYiIPei0pXglJYn", "startDate": "1989-03-22T00:00:00Z", "status": "CONSUMED", "useCount": 35}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'oCAZuolAWnxkImVb' 'DP0QX31gI7VmnGIR' --body '{"options": ["MvXe6BiphIFe2bzr", "6qQw6fSESkM19OPM", "Bb12gpmShlmIt2nf"], "platform": "hUaZGqjslu59GT2E", "requestId": "6AacmZRXZm626POX", "useCount": 100}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'eheP72AB8EO3Yrly' 'rWowUpUDVLlTtuJJ' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'sHZVsG6izJZruOJv' 'SRFLDSdj8elbtHvD' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'U91DmHzwiqVPCJ5j' '18Ou3aY8nceFU5GK' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'mcEKp8AQwqgJs6O0' 'Qj0ccMkdz6zPz3BV' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'HAqp4O9XSjap24es' 'yjh6Wc3migf2n6iQ' --body '{"reason": "yr5cb5YL6fwBiaVP", "useCount": 26}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'tcR3eHFbiAluHv7H' 'ssd05pHBJX5ln8PZ' '2' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'rIj9ntYo3dupUHNu' '8abrVVOKxr9Pa315' --body '{"platform": "FKDjG2ApSV94Jy6y", "requestId": "CSXBqJqjAbVwSaoj", "useCount": 42}' --login_with_auth "Bearer foo"
platform-fulfill-item '2JS1av9VNpVLT0Lv' --body '{"duration": 34, "endDate": "1994-01-16T00:00:00Z", "entitlementCollectionId": "Vy5M3rrkxu0U9h9g", "entitlementOrigin": "Steam", "itemId": "GUQgci632w6LUrHu", "itemSku": "KBoNTpPQXDNHto74", "language": "GcmVf0fbCU9QdPuW", "metadata": {"eMEeL0EJG67g4W1e": {}, "AmDxP23qstMuikKc": {}, "6VNU8570siWm3V9s": {}}, "order": {"currency": {"currencyCode": "irE0JOQxWeHypqCW", "currencySymbol": "MDPRI2cCk8zHR8Vy", "currencyType": "VIRTUAL", "decimals": 36, "namespace": "C0EQwE0cXokXbwKD"}, "ext": {"tVmrYQu7hZvHfiT9": {}, "s9pK8HuUY1QQHQ0N": {}, "CEddJtx6GV01vD7l": {}}, "free": true}, "orderNo": "LxlpvqaB9P9Gaukf", "origin": "Steam", "overrideBundleItemQty": {"8WgKSLIpneDQCfwu": 5, "uJgYaj4I8Dzyh1N0": 73, "RcE7GuwKn63KIDTk": 96}, "quantity": 20, "region": "CqbbHGJGOTvKKRTH", "source": "SELL_BACK", "startDate": "1979-04-23T00:00:00Z", "storeId": "oFTnAuujPeP9N0vd"}' --login_with_auth "Bearer foo"
platform-redeem-code 'VB5a2XkS3XQfMuzZ' --body '{"code": "h4AhZRe2hgU56xty", "language": "GUXO-Vq", "region": "FbleSP5PcdOuq0m0"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item 'rvakR8rcwojLRjhc' --body '{"itemId": "aJ56nGlYZ2tod2BG", "itemSku": "BXjNyRCtPOr1FU3Q", "quantity": 48}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'y3gdDms3kb1htW0U' --body '{"entitlementCollectionId": "GJpwQZlXuzu3m9u6", "entitlementOrigin": "GooglePlay", "metadata": {"JjCDwg186hGWKfO9": {}, "MnoT3t99HmcxzjDh": {}, "TrcBKtU956hOg8ou": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "N0nE7M36mI9u3EeZ", "namespace": "tLQij2JXsqdXfhZT"}, "item": {"itemId": "TaCeqGv7meuQhJuq", "itemSku": "1C6JHkWMSUbqByWN", "itemType": "2BCnRz9w2nur0B9j"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "hA5WnzVZdj8tsyzC", "namespace": "4QaLXp3o4TDraEEa"}, "item": {"itemId": "DNJbVd20FVHevCjt", "itemSku": "hJUb7jKuMrFaoLul", "itemType": "zp3sZxImVK5yh2Lc"}, "quantity": 78, "type": "ITEM"}, {"currency": {"currencyCode": "8LaMW0ByjsRUrAHN", "namespace": "RkIcC4wNFzsbrtYv"}, "item": {"itemId": "Lh56AWXoMiowdWSs", "itemSku": "9DQ0VU1HED9CGo9a", "itemType": "UXj3rh0UyqxVWlIM"}, "quantity": 35, "type": "ITEM"}], "source": "PURCHASE", "transactionId": "xCvyy7caxz4MQrOD"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'LNlxiEjQBCZx9DJ4' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'V97SJLlrwXmIGamR' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'CARuFLx4rV4CXVMr' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'DYKe2eTf1axo16Gq' --body '{"itemIdentityType": "ITEM_SKU", "language": "guJ-QnUW_443", "productId": "ZJypWzpNXgnoKIz8", "region": "O8NglJtZTh280vfl", "transactionId": "FMxIhlIT8AgyZJ16", "type": "APPLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders '5cUtPBsw01i5Mf7W' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'vbNSeeDNfUESLlwH' --body '{"currencyCode": "v3JgteOLyKp8a1Vq", "currencyNamespace": "xXnRhDd9TGkO6aIY", "discountedPrice": 33, "entitlementPlatform": "GooglePlay", "ext": {"uGv9fQXkErF0drbY": {}, "rrFQP6rW62CtetBW": {}, "3pvAJJieHhveGg97": {}}, "itemId": "PY0txzvYwv7atn9E", "language": "Qv2Oj8TFNeGtJGjK", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 79, "quantity": 95, "region": "gCeuAYuzrmbWofEa", "returnUrl": "KStqdKu4ROnONpJ8", "sandbox": false, "sectionId": "9chqeiUGQMwNwDlY"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'Sli3p8YaAdel3hHM' 'SLAiscGRWzkCl1ZK' --login_with_auth "Bearer foo"
platform-get-user-order 'uPxjDUGRGcCEPjbU' 'y7F82Adu9BYRHrVT' --login_with_auth "Bearer foo"
platform-update-user-order-status 'ehrqgvEtEs2LpE0q' 'fbvdU8hlDoC9Fnxq' --body '{"status": "INIT", "statusReason": "jm9zmzUW0vPj90jm"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'LTt5YQGawcomPoiY' 'oQ1f1AYq306Pysv4' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'VPaZWolXypwucUqq' 'qff2iWi4yP3uqNci' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'g6YcDA8Z3g62oGYw' 'krjLI4EHJEEWgki9' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'fbdvUMDZeO4U55wd' 'CpVpnENiTc9NESV2' --body '{"additionalData": {"cardSummary": "2eRBElD4K2Cy1tJc"}, "authorisedTime": "1992-12-26T00:00:00Z", "chargebackReversedTime": "1984-09-08T00:00:00Z", "chargebackTime": "1976-08-26T00:00:00Z", "chargedTime": "1992-02-06T00:00:00Z", "createdTime": "1982-01-04T00:00:00Z", "currency": {"currencyCode": "QsQk100eu5UcxuXX", "currencySymbol": "pt0YSPX04uEIdAwg", "currencyType": "VIRTUAL", "decimals": 79, "namespace": "obopbdJeVCiKs2vL"}, "customParameters": {"yH9kcSBdk7MwQzn2": {}, "8Le5neohqhCzroAz": {}, "WQDve0Z2G2N09VIb": {}}, "extOrderNo": "bsz24fQKDZX6plEr", "extTxId": "w0Gb0ceCbphW4YMh", "extUserId": "J0S50bez9ZLHW882", "issuedAt": "1979-03-08T00:00:00Z", "metadata": {"AnlXRYB9BgSZBvke": "hRn83B0nrW1qx3NJ", "TugVWXz8dv7BiEUq": "nzxs2deMF8UAJIHE", "Zv5zyUUyNJkvA5xF": "3zHtZSd3QzXhkrN4"}, "namespace": "pWryt4XTNwpp0ni1", "nonceStr": "YfIgLZ4YIzElrLZO", "paymentMethod": "BLHCKmLBaIwlokbA", "paymentMethodFee": 65, "paymentOrderNo": "2drXG5NkKCySLA8c", "paymentProvider": "WXPAY", "paymentProviderFee": 58, "paymentStationUrl": "vKqeoTiNKGRUMrim", "price": 67, "refundedTime": "1997-08-04T00:00:00Z", "salesTax": 73, "sandbox": true, "sku": "iOAh1SpLhMF2Pav1", "status": "AUTHORISE_FAILED", "statusReason": "FuU8iXCRz8Kgqgwi", "subscriptionId": "jYxpGhsFArq6lolb", "subtotalPrice": 19, "targetNamespace": "lNYYlHPwKDpJmkeo", "targetUserId": "Akp3Z4pgyJYwclb4", "tax": 12, "totalPrice": 76, "totalTax": 7, "txEndTime": "1973-06-11T00:00:00Z", "type": "QgQut2hiPuDdOPHc", "userId": "N9drwqytieXpIZfr", "vat": 100}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'XDq9dGLHjtgE2bTX' 'JxCCFqPNDqWrpkWn' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'nova15WVuE5cYVP9' --body '{"currencyCode": "tQSa27BnPyq3I1BL", "currencyNamespace": "tGEZDRNkk4DJUofJ", "customParameters": {"XK8RGS0zCYRVmbfz": {}, "wUmsy0stUmKdXiiT": {}, "ObNdqkWa13g3pgHx": {}}, "description": "6uPf6jQZcYerH933", "extOrderNo": "X7iXEEM2KOusNEHc", "extUserId": "I95GGdJvucDbs6Ud", "itemType": "APP", "language": "CrUQ-suJI", "metadata": {"nyAaUaQBKFedL2ud": "uXvZUbQQ13FhD3NE", "xUFipJsUiDawAjgH": "FQk0VzWRNFNiUn2y", "XMSCcHADYpS861c0": "CJ7LzpFvOSF6xKA6"}, "notifyUrl": "yrnvXY5dDwneac75", "omitNotification": true, "platform": "VsXtOlQwj5xPvm7c", "price": 2, "recurringPaymentOrderNo": "nPR0Y1sffUaZ64dF", "region": "piv8o9Gw4QtKgyIe", "returnUrl": "ySoUxoMrj2J4JGQZ", "sandbox": true, "sku": "bMq4GLj8aGsH0qE5", "subscriptionId": "p601ak59yFSfdZIv", "title": "8oYWPUS4Zu0SbTt6"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'M2XizikCh6q0yq2W' 'AHtL7IWE3MFqvfDG' --body '{"description": "5jvMOaXrDlEX42U0"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'syrGNhBmgT2q0kIb' --body '{"code": "rJ2S5Pf1Lvg8kYEV", "orderNo": "ylINJpxFY8E6pU8e"}' --login_with_auth "Bearer foo"
platform-do-revocation 'Hjh0aTjIOaQt0snb' --body '{"meta": {"E0yMvqF7TJ9uB0zy": {}, "pjJiu7BIimNuwB3h": {}, "BVhuSMHhf5R2MkxQ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Other", "currencyCode": "AYGfE6hXZ7XLoWCG", "namespace": "f0dZEeXBd6mGG6SH"}, "entitlement": {"entitlementId": "cZbX2wNnT6A9zosm"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "mPAUIMwa2wYq6DsU", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "kE1Fb0y94eP7yh0z", "namespace": "sKhR60HZwUwk48XK"}, "entitlement": {"entitlementId": "7MXHbEwAvvpEeHhX"}, "item": {"entitlementOrigin": "IOS", "itemIdentity": "c4xAPZ86WNnQOhus", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 55, "type": "ITEM"}, {"currency": {"balanceOrigin": "Epic", "currencyCode": "6u8agb5HPsBU0Eo6", "namespace": "QJ9vBRJ4UP09fabC"}, "entitlement": {"entitlementId": "01Thm9f4AWpyiKVT"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "OvEujx5yjtQSCJaO", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 68, "type": "CURRENCY"}], "source": "DLC", "transactionId": "jw99HxCjXWcaXBcf"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'XXeV7BXefsSgZxSY' --body '{"gameSessionId": "nVwXqF6K0WA76Kl2", "payload": {"mHHoz6qBQnEDgX49": {}, "n1xTDFcmOm1sqdIW": {}, "U6ERylESgf5dXMrP": {}}, "scid": "oYSohfrLyXMSrC62", "sessionTemplateName": "xYtDwflNGfufW5cW"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'eg6eSCypsceITTkJ' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'GGCVF6LrILDLviUC' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'zmDAaW5xz1c7ZuZX' --body '{"grantDays": 96, "itemId": "ayPFcyUnKXA3mcyM", "language": "mX6WF8jtNAVOYqSH", "reason": "533YlJ93CCGBXv4f", "region": "P4VPzhcH4UJrrCKv", "source": "rOAi7lMgkVWJYzSC"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'IDxWUxgOzeRNHIqK' '5PT404mFw4HJv5T2' --login_with_auth "Bearer foo"
platform-get-user-subscription 'kIQOecfLsYKTmUnK' 'lrOsJmEwjGYN8VNP' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'XNsmwTV8imJHNI0l' '6jJVzF1Oi2sQuWUB' --login_with_auth "Bearer foo"
platform-cancel-subscription 'BHZonSmzF831vlCi' 'ZAZHCWMXxVh8HTrK' --body '{"immediate": true, "reason": "vOlKT5EIHNhJQq94"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'Re5IM1akNKz9IltQ' 'Uku3n32atB0QPQPE' --body '{"grantDays": 31, "reason": "W9i54JY23AUWFTLq"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories '0W1JqwKs1mO80L7I' 'OHlf6j8PZOzUiQKZ' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'qz5NSp0B7LODN3Bo' 'i2sSAO2n4MZQt753' --body '{"additionalData": {"cardSummary": "XQB93rOW0guPoQbY"}, "authorisedTime": "1983-09-13T00:00:00Z", "chargebackReversedTime": "1972-07-11T00:00:00Z", "chargebackTime": "1993-06-04T00:00:00Z", "chargedTime": "1986-12-15T00:00:00Z", "createdTime": "1995-08-04T00:00:00Z", "currency": {"currencyCode": "hs2lhdzxxgibuqUu", "currencySymbol": "yW3cMz9YyduMomEH", "currencyType": "REAL", "decimals": 14, "namespace": "U15St4v8ry8IyqNV"}, "customParameters": {"v0KVpXJTMx3Y8Um1": {}, "iqehObg3OZ9j0HDt": {}, "bqMFlgHKQIRtLfPn": {}}, "extOrderNo": "gD83roOeqE7fcCAe", "extTxId": "ExeQX43LpmdMiZey", "extUserId": "IrA4QUKSJgECzvaW", "issuedAt": "1994-11-14T00:00:00Z", "metadata": {"CA7wKru7ry3AQ2sE": "HvSxjWoM1rNJLM0O", "OVG5cG6XxENbWqlX": "7idzjpKDfwl6XlCF", "6YxFMD8tJQwZvUVI": "nos5RK100yH89i8Z"}, "namespace": "DPXRL8cbTAntB1ST", "nonceStr": "aab1UeibXg7RCe5B", "paymentMethod": "tKcwj6PqqOgCimr3", "paymentMethodFee": 88, "paymentOrderNo": "ByTygbtOtcQS4Cmg", "paymentProvider": "WALLET", "paymentProviderFee": 8, "paymentStationUrl": "1wRUnIVYxY6Ohdkr", "price": 17, "refundedTime": "1985-08-20T00:00:00Z", "salesTax": 18, "sandbox": false, "sku": "noVOzo4Plv1IlTpE", "status": "CHARGEBACK", "statusReason": "z7qbPnXEuOzzkoBm", "subscriptionId": "MR9C4qPqJrAdh1HI", "subtotalPrice": 22, "targetNamespace": "mFkyxoUzfMFoXCOg", "targetUserId": "uSq2A4R3wDdSkNfH", "tax": 72, "totalPrice": 50, "totalTax": 40, "txEndTime": "1991-08-02T00:00:00Z", "type": "bYXmlAOi1SC3I1Sj", "userId": "kH42LtyZKrTJo0L5", "vat": 37}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'IVT5hUZ3cnDq0ddZ' 'G0EpfGAqHKcSxUc2' --body '{"count": 14, "orderNo": "ZAWlvz3c3XALMres"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'GFfsH4aXCDhshvEF' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '8rHd250nyihcUVGH' 'QczI5ZoTRUkjGoRk' --body '{"allowOverdraft": true, "amount": 25, "balanceOrigin": "Xbox", "balanceSource": "PAYMENT", "metadata": {"zdfxcC3rpWhSpq0I": {}, "nxMLpP7n7M3JXjEv": {}, "sj5WcQ99M1yuXeqV": {}}, "reason": "31LX2ehcMnM6Qtjz"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'QjDlUMCGnxZwak7K' 'HnzGASmVzePIroz4' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 62, "debitBalanceSource": "EXPIRATION", "metadata": {"J4pe0s0Cuhl3dU9b": {}, "4seYCyiB4tDCWx3c": {}, "EX8wTi1v2abpCWyt": {}}, "reason": "PEi9Ze0hL9rPkV5G", "walletPlatform": "IOS"}' 'KoZQPLhDSJx9jzxa' 'RKph4kiIFgS4fLql' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'rKGiS3XxjkyNfj3X' 'gTRTjI9oNBzgQ4CR' --body '{"amount": 46, "expireAt": "1991-02-23T00:00:00Z", "metadata": {"jQ7IuMSY2epRDJjD": {}, "yMDKQhuTjtQZyIiA": {}, "mCL8bNTTfqLCv9DY": {}}, "origin": "Steam", "reason": "fMnTbKdwNhiIP7dp", "source": "REDEEM_CODE"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 74, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"WElmOCxqPrq9I3XJ": {}, "WBxTLcOef8MgIwkr": {}, "KFEtwESJCe2ksG3n": {}}, "reason": "ZE13H2fILFzOlAZb", "walletPlatform": "Steam"}' 'KSYLo6y7yJMowQ6L' 'pHCvCYTgX9JQwErz' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'jtuP9pUUv7qefNMF' 'sZAIqak1zi0JSa5c' --body '{"amount": 88, "metadata": {"wZdW02Su6aCnL816": {}, "aH6gOBUIMeL0GL3a": {}, "efSDME8X2MxILI42": {}}, "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'NXGlGJvHf558h1lt' --body '{"displayOrder": 49, "localizations": {"Ltjsu6ZJRCoDq3ge": {"description": "uHFFaZzPIjETqcKN", "localExt": {"1gaQ4Bn0cPPtKaJl": {}, "w31pdDrXQ47WSGyD": {}, "CKF0LLhO3lGZ7eGO": {}}, "longDescription": "Pj2XoFug8BUQUmPH", "title": "nPumcazKAna0ji75"}, "7aNDFeKnQP2j2WsQ": {"description": "ImTwYkiuxzLrbJ0B", "localExt": {"kGzCNgesQlZZHIZH": {}, "0iks6kx0adnimPyy": {}, "zezsHdFftHHR6xbc": {}}, "longDescription": "VVonwz27DWfGRVhb", "title": "ZTvCPrrZCTU5WUJi"}, "zF69PSsquWUafwbF": {"description": "PX15633pFgA7i9tq", "localExt": {"vfHmFvUZiUW5Y0CY": {}, "w5OXSGwQkJuy9oLF": {}, "cHHcraLXR2n9JQvq": {}}, "longDescription": "7NKWIHYsii3fCh7s", "title": "ieJjZPAkiWumllU3"}}, "name": "1uXPwYxedGHCIkmt"}' --login_with_auth "Bearer foo"
platform-get-view '4bfJOhNaIT0pv7Xe' --login_with_auth "Bearer foo"
platform-update-view 'qO8gY3c4SryWB4yR' 'aDxvxwaLM8HkVOW8' --body '{"displayOrder": 85, "localizations": {"mdCLmzJbdkykVAnm": {"description": "nRfUilcKA84d9pMs", "localExt": {"l7zrNJvDiP2hNNEI": {}, "8QrQ6H1ro5CtU8Uj": {}, "gyCUpM1JBcTzf4dz": {}}, "longDescription": "1BojPoQg976409vF", "title": "d5z9r4nJWUvLp1wx"}, "GF747468MXUq3uIf": {"description": "fkIpPmrWVxNZUvki", "localExt": {"U2jXSwsBBRopVl38": {}, "d4NZGtk6EmWxC75M": {}, "88TKhFYkA9aRNDe2": {}}, "longDescription": "IoPMSQKcg0OTT9JA", "title": "0ll1RimBCiQwuyrI"}, "87uSyXP6C0jXS8au": {"description": "2wcWYyj3JvHqXp4J", "localExt": {"R7xI59Z9tfGVsgln": {}, "OxOXBfgBLuglkd9L": {}, "IoshGnFSuHmrqej8": {}}, "longDescription": "PRppYY1vlV0M2g6o", "title": "reqyBzWzCgMMWZuD"}}, "name": "6tmIR28xVxbtpSKO"}' --login_with_auth "Bearer foo"
platform-delete-view 'fiIP3S6pypZqISn3' 'msrykQFtW8QGKFZL' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 37, "expireAt": "1983-10-11T00:00:00Z", "metadata": {"uQcsjFehD6uTDYnq": {}, "yNgN7GoeMsezFZsT": {}, "BHkgcJ0DcEt23pci": {}}, "origin": "Xbox", "reason": "xEljer6aGJx5OFp3", "source": "DLC"}, "currencyCode": "dt0TSTmy7XF26K2U", "userIds": ["7xttUz8nWKJjv06P", "enLtaAoYyRfiCWrm", "uffHghAQfAsYXVzB"]}, {"creditRequest": {"amount": 15, "expireAt": "1980-03-10T00:00:00Z", "metadata": {"1Ah3TII70MIcBMJ0": {}, "4508jKedx0CVRpd7": {}, "SwZw2UkjDzJ4NuMM": {}}, "origin": "GooglePlay", "reason": "LQkTHvndQsCKAO2J", "source": "REFUND"}, "currencyCode": "ElLfbB7gwwAR1xFr", "userIds": ["nyirw3iJt5iA3JS2", "xeaJ08JrSHPqdhKH", "n6ZjZMdr1C2TIQzR"]}, {"creditRequest": {"amount": 75, "expireAt": "1993-12-20T00:00:00Z", "metadata": {"7UfYSrdN0JVz4U43": {}, "EcV1FRyeeqehMNeR": {}, "YKeMbL0G4v5D6ylZ": {}}, "origin": "GooglePlay", "reason": "oFjxZjh5qUR1Pq4a", "source": "TRADE"}, "currencyCode": "MMAYokSWFwajRGUy", "userIds": ["Wtu5RPsqd66ImBEu", "klfLVY6g3PO4hKAe", "F4GUV5m96qcCJsVO"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "hnaxZVf6MD9r1y5I", "request": {"allowOverdraft": false, "amount": 72, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"531Kajxq7lzuVRVE": {}, "vhKIbrq1xsGpdobY": {}, "un8hcO55hVjfWyK0": {}}, "reason": "2w5QytAmkanukAzA"}, "userIds": ["N3O7CEYjxqElP5lA", "2FJ0iGLRTXGsC5mx", "MaRvIUhUwguGgbLL"]}, {"currencyCode": "xse4eeuMgEctVEux", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"Ysuff3b7G5FDX4mu": {}, "0qPHb9Ll2EFEb8Gn": {}, "sthmQ2Y6ZGOiqrg3": {}}, "reason": "lpqN5bOfnqJ5bzDR"}, "userIds": ["yMq79EdB9MxaF8QH", "GM2IuQYBO8m0HgTt", "zbhMxfEDE4TrtIHy"]}, {"currencyCode": "h479W8rXqwGVIRWg", "request": {"allowOverdraft": true, "amount": 82, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"qMrAGpdyF6WDHn3e": {}, "PBxQNz2IUEHMzl5j": {}, "hwVDsuzwJ4v50eoa": {}}, "reason": "IBrTh0EKkJioUpvG"}, "userIds": ["7Zek8WObpf0FHYfV", "qsPGgJZyRwigaMu0", "nkcHgCfaWzPUvCnf"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'iEj70KYKIfFt4GYj' 'Ut4F1ZVy2qFfSr3p' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["sWjOyHLyKe2foqsV", "IfgBTr8RcxRQR0NY", "dJzf3TMhSaynVs05"], "apiKey": "nZC4Os7hqIH2NgAR", "authoriseAsCapture": true, "blockedPaymentMethods": ["G3QQNGNH2K0UuJde", "GNquQnaXpDQ5rU2t", "aDWh9JV5oc5IFQsr"], "clientKey": "wHqFqwVA5mozeeOj", "dropInSettings": "IFQfXV3YW3ug3nCX", "liveEndpointUrlPrefix": "hD7FUz1iOe0pHa0L", "merchantAccount": "mseIRXeoerZAxbDP", "notificationHmacKey": "XU5xJBhIpJ9b0Ap7", "notificationPassword": "CmSiKPjcwAw5Gdxp", "notificationUsername": "vLfa4b4hTaZBGdX6", "returnUrl": "6DqPTdurR3MYda0Y", "settings": "0BCO4qPnvxERWjKa"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "sq5zQ6uZNwKjnX7v", "privateKey": "DIqpcjmaq5KBCsHl", "publicKey": "wNrfKJrkzwR40tfd", "returnUrl": "9GFXChtxB10d4Q8n"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "lBthUSu4WNfTvD5U", "secretKey": "cES1eLMZs9lSQVDp"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "16qVIqXCK9dS5JTb", "clientSecret": "dJEe6mnkYAfw61ky", "returnUrl": "Kk0UXUF2523OTvOm", "webHookId": "fVNJNDaSO3FEkk4I"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["t6V8Bu7rIjGrxUMK", "bv60ixUuUhopdqGr", "qRZ124P7PauXTrpW"], "publishableKey": "AjwatSvtPbAFn8oW", "secretKey": "QcmFkkRX6EqadAEI", "webhookSecret": "zxld80Ynss7hc3VU"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "xxZIgkTLqMeJPCbs", "key": "8jWmTteJhwNbwHGG", "mchid": "39YAZJ4HuLfeTfFB", "returnUrl": "TOFFMJ9pq511jZcT"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "K8zmMfyshYk3b5cA", "flowCompletionUrl": "FVo85r1b8Yp2Qnuh", "merchantId": 87, "projectId": 99, "projectSecretKey": "uIdvZdj6AspWBfRn"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'LcLbp7OmcrDJ7u1r' --login_with_auth "Bearer foo"
platform-update-adyen-config 'rRPcnG89rnNW1Yjf' --body '{"allowedPaymentMethods": ["n8lY4DnYRxY8ZhHe", "b0CaPFDjrSotKnpJ", "WALpToj9rgr5RffM"], "apiKey": "5JXvPdzEpDln04F8", "authoriseAsCapture": true, "blockedPaymentMethods": ["SvsWiNJtqXltZF6a", "SRmHU5iR3hXIbzWP", "KOkzftOgDQAWhulb"], "clientKey": "rDf7q4cAnpmLiEu4", "dropInSettings": "CNtX2lnqi7cHTSdG", "liveEndpointUrlPrefix": "oLZbC3UJruU4uIXB", "merchantAccount": "ZsEYogFWiH9z4E8z", "notificationHmacKey": "maZ5cg0REtUWY4fV", "notificationPassword": "IdqwCWF5wmbOubTx", "notificationUsername": "AAeDCowR3MeCNL1o", "returnUrl": "NrF3SmgudQusJLsP", "settings": "lW7ZyORFkN9EbKbT"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'brDzNgVEcw0lxRam' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '16O6v4VjJf40LjUd' --body '{"appId": "ORELVXUFQyVlt9jm", "privateKey": "xmxpfp41k1uDg59P", "publicKey": "hdUXShabwyYCxTHr", "returnUrl": "Del8oThvr8CUEzw4"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'zL1QeR3EYXBFpUX9' --login_with_auth "Bearer foo"
platform-update-checkout-config 'y4tY7o5FFi1n10vD' --body '{"publicKey": "gyoHXIlrMl2RAukC", "secretKey": "L26ihdMy9YCLNJEk"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'vq6SUSt8xd8EgE15' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'XNuw6Y7sToQNkuZz' --body '{"clientID": "J1XBxw01iBBQukgQ", "clientSecret": "94ZvPCWcMX0ov3U2", "returnUrl": "sKjIeyFS97dYD7Lk", "webHookId": "cTKYpCfl6HPy5cJf"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'AV5iOfzwt3bpxRNt' --login_with_auth "Bearer foo"
platform-update-stripe-config '6lKoMjCPtEKeBWTm' --body '{"allowedPaymentMethodTypes": ["78Fn8TvZVTe4L2lX", "rVPX6r5ZTcnVVOKM", "ApTcWsFRUlWBp4gB"], "publishableKey": "s9UufgsVbG6TUe3j", "secretKey": "buQ7HMPO4ozK705y", "webhookSecret": "kRqSPYZgPm4JLsXV"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'tBOEetHsxAJ8Ny1L' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'RkPU9hrl5nkpEdBe' --body '{"appId": "8bYWdok4UnUEOyP0", "key": "cPZf5OvolfI0mqZc", "mchid": "tohLheRaQkfMLFW9", "returnUrl": "B7jHZro4hhwnANAG"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'p8zGqNGrcQyoA1TW' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'Pcy83iXfYXNdMkdg' --login_with_auth "Bearer foo"
platform-update-xsolla-config '9TMwxNcQ6CkVi8fq' --body '{"apiKey": "VPRqNbF5yLnYSa8x", "flowCompletionUrl": "FLvcYexMMMiDFh5R", "merchantId": 4, "projectId": 100, "projectSecretKey": "qqDfNz59jHwSDQHa"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'dmAo0lzhPm7RmaOr' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config '6TLwVyE42ApAb7CK' --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "gjsy3VRjX4qA4g9O", "region": "GoWw1qnCAvdnAcok", "sandboxTaxJarApiToken": "J0rzqX2KJcYHgiFD", "specials": ["WXPAY", "ADYEN", "PAYPAL"], "taxJarApiToken": "fmg6btk3mAO4EtB0", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'XbxNvT6wAffv4uzK' --body '{"aggregate": "XSOLLA", "namespace": "neFHWhDRJtyYEt7y", "region": "gZleAoUuVKneoO10", "sandboxTaxJarApiToken": "ytPdJ8SY3qoogOxo", "specials": ["WALLET", "STRIPE", "ADYEN"], "taxJarApiToken": "bzRKKPd6mjzLxllU", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'n7cSuO7NxKHUHg0c' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "4X7fHdITmN9opaF0", "taxJarApiToken": "kh3pCRB3infEVxAr", "taxJarEnabled": true, "taxJarProductCodesMapping": {"WwolQy037hJMOEv5": "W0v25yAObZIbrA8X", "AKKWMDebehSjpt0w": "rfWPXaI1Jb75o2MF", "Oa6xgPt69QROGDeJ": "CyHvUsnLvXCSgQHv"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 's25eiQO3oWdgXdm1' 'IxL1OtleUBqBO0Ze' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category '049k9W6ZLVJzRpUs' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'ITfVruDukun42zPZ' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'vOd4yZyMKyED3qDO' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'XBOX' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'n2z5cnbm7z2Aa24y' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'BTw3wfNGyWf3VujS' --login_with_auth "Bearer foo"
platform-public-get-estimated-price '7Bq5bcfPW4pPZB9Y' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'XltCxyztUnj17t3g' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["HBXvjvziexzOLbOW", "btcJUxM3AWyDkA5L", "mART6kulpM4SRtUE"]}' --login_with_auth "Bearer foo"
platform-public-search-items '5P4kxmHtFbjqurHi' 'x0QYycDH5we2Mx0s' --login_with_auth "Bearer foo"
platform-public-get-app 'YCnYPT4i4mxc14iR' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'fzJwKuc7EpiQEzz5' --login_with_auth "Bearer foo"
platform-public-get-item 'N5osRYO7wbYh7q02' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "W8tkTURUFmqNc8xh", "paymentProvider": "STRIPE", "returnUrl": "2MaIP7PjngEFggq9", "ui": "1cpgvoDBgYfLBdGN", "zipCode": "AZEvbvxqa0K7VUbj"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'UnzirnEsxSE4vBzG' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '7VK8sWEshmZf5fEd' --login_with_auth "Bearer foo"
platform-pay 'vjbyJPQ1qdRcJjsm' --body '{"token": "e1OukIfIZVH8q8sv"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'V5hMOSfpyJkJlmJm' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'CHECKOUT' '567BFqbrPIuxKmBX' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'Li6GpnqAeMvg3w0F' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'Q1520WM3TxWXSdTi' 'Kdva2UREoBSFtCLy' 'WALLET' 'CqgCG7JwJCDqkzOd' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'FwLJpIPxzLE1V9U1' 'ALIPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'jE1Wad232YV7A2zH' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'FGbN8AQaCaw9UF7c' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'dSDd99DQZ7vnTx8H' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'DXTJWiyw17ogzmbj' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '4SLYDrZJvDLGvn6q' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "troZcp16HKXX1ft5", "language": "cv-jGly-pE", "region": "BRCt4onqRo2PnMSR"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'arKg4coy3AFpULIn' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc '21Nf2FNgDWNC6yh7' --body '{"epicGamesJwtToken": "kgTHlrxKbsV4XtrI"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc '7SFBEgkwHifMHYI5' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '81HbF7fMX9lDXYxG' --body '{"serviceLabel": 90}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'M6Bw2sFGQ5DQoDwz' --body '{"serviceLabels": [74, 35]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'EOpASBicX3ZwzZ7a' --body '{"appId": "VhrkmhSOEozGOv8D", "steamId": "0iVxzrec5kNwJAxm"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '0Rdm9l6nIhG5SilD' --body '{"xstsToken": "DIsmj4h625dIsMKW"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'BxF9RAIrI81ZR2kN' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'zh60RQNaTEhMXMep' 'gzY9jLiAdMiQ7eDM' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'keBRMur18nCxiV9b' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlements-by-ids 'MHpPbvflI3LkRc1N' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'gZaoYAaCCeRgtsts' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'U3Qecxo4bQZO3P2f' '8TTOVf6jrr1OL606' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'QpqCgxt0NgDSj1T6' 'EdeYFmrLT0HbvS4k' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'SSt3CyDgf6eFAiqS' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'kHi0BR2ElF6z6eJK' 'uOW61akRFizqxCmu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'dSXivAL3n478mhb2' 'I2yBJeCJghTrk68F' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'WFzuLBdlrKjUbgZQ' 'fw6Zys3mN8fIcC9C' --body '{"options": ["kharfqaoMsGyv1Ru", "SNdycDssUeHiVDXz", "SJ8kbFAyidbnXdMS"], "requestId": "wmkBkKC1h6h45u0w", "useCount": 42}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '8aLjIxVGpdOqguxv' 'RwI9ZBTipMRlhK9D' --body '{"requestId": "MMaI4ryVDvNaruZx", "useCount": 45}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement 'AkVH75UcmNXK5Rqc' 'Io9lpz9oM52vHPlw' --body '{"useCount": 99}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'E9f9COFrOr6wJDBw' 'IDsJHNg6TvNGjwI4' --body '{"entitlementId": "TbTwBufUorJouduh", "useCount": 58}' --login_with_auth "Bearer foo"
platform-public-redeem-code '8IW2MAL9gYHEV3wn' --body '{"code": "TZTvYYf4ZFuV6L2A", "language": "tD", "region": "a7oFd1fEmDuyAsQG"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'zwJR5poI718RQnj4' --body '{"excludeOldTransactions": false, "language": "MJ-goFK_164", "productId": "TTZG1LxLdySvyVqY", "receiptData": "8nxBZbHcPHEFuEVP", "region": "9bF07gnWDULkJPQR", "transactionId": "0UJMr8ouccGH0B4L"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'Ce2h0iFCCZgFWs5s' --body '{"epicGamesJwtToken": "0nT89A88GDOUClGy"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'zYgnYTdim6PkRoq5' --body '{"autoAck": true, "language": "aWJl_iaqU_066", "orderId": "7LRHd96dGLgkfrZv", "packageName": "eFMWAFT7l0l1jaOA", "productId": "MCzbsoIgmKwwMDQP", "purchaseTime": 19, "purchaseToken": "4SuaZ8yCB9TVZnuz", "region": "gvAZJRm71EC3ENuv"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'D8OPsp5Z3ez84KVB' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store '7HeWPnVeFdy5ezlC' --body '{"currencyCode": "U6SGzkMpTL2wxobj", "price": 0.3717785611951432, "productId": "AbagqEmXn6U2VeV2", "serviceLabel": 9}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'QsvdXGlD40xxIyVw' --body '{"currencyCode": "Yjn6dlC9Kfh9gHul", "price": 0.22941153470566078, "productId": "yce0cLJu4ljPWlCW", "serviceLabels": [42, 93, 30]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '1LcWNf7xHpi1JZJj' --body '{"appId": "IRtCfqDHSlo54zSn", "currencyCode": "RN0zGMworzym1z3Z", "language": "sE-qZIa", "price": 0.7482207490812663, "productId": "ZR2rFIAuALNhNCys", "region": "csMBRLsWadk2OQ42", "steamId": "1q7Nb1vrKthVvU5o"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'n065ApCkVN3QchuQ' --body '{"gameId": "6pntxB648ss7rBnv", "language": "yipb", "region": "3YsjJexnFA9Umz3K"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'PICya5Fk5TPaEbX2' --body '{"currencyCode": "9cV8v7MXctihtxMn", "price": 0.5572539934654784, "productId": "r4b7jyfL3zMkklGC", "xstsToken": "PISlsnVA6z0uSfNN"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'pJUYzJxnOyvqmswr' --login_with_auth "Bearer foo"
platform-public-create-user-order 'ToyBIQumxDfAxNqC' --body '{"currencyCode": "UtizYM97ebZcYqwf", "discountedPrice": 71, "ext": {"8ByTi2F6AyUX8w77": {}, "riPlPgJcLbeQf9MI": {}, "CxX7xKyCfgwSPz14": {}}, "itemId": "asyOdgn77gN8K1Fl", "language": "FLqG-vr", "price": 93, "quantity": 26, "region": "4zYIbU4i9mLyX46A", "returnUrl": "lt08rrnG8y2ScXkw", "sectionId": "jpAp82pGcxvXaG9L"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'zHpMS53jllopwirR' 'o3A8WxnR0YaMsF3f' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '5KLtpTSsPMGDZTOw' 'EP5Bhh0NStWIggmh' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'fAzVdNYP7Ao1z7Fe' 'JM2fWXGk7JObSHks' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'RkabpmvRsc7ZYvXC' 'T6m6mRZAlLBczJVe' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'il7GbG1ISBCkcnpx' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'KUxLjmxhBS6YypRW' 'card' 'wP8GslMpx3m7lEXT' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'mnTbtjK9RsyoqT3a' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'dB48Jxp2zaItg9jT' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'NZvpFEUI21aSaIsM' --body '{"currencyCode": "yLKPPIZx0zdNAagi", "itemId": "pZwiaBrFrXtGMjuj", "language": "ui-xGGV", "region": "I1B8DXb37DffTZ7y", "returnUrl": "Qz337LLNCjIySe36", "source": "SA5dxATLv5PkLvra"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'RzChdjDGdlk2A2jH' 'bAPNGInvbnf4ewKF' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'FLoGggX4gQWyZocv' 'Yfr0Rnl02R1IVNna' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'K6KS71Xs1BphA9BX' 'pKYgF9OuigDP0Vjm' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'y7j2BrdCAm3slCwa' 'BqHpE55sjxBGijw0' --body '{"immediate": false, "reason": "T1CULEMPaOU5nuky"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'cAUlkUSZKUrsxNRz' 'F3NaUuCyQyze6zPK' --login_with_auth "Bearer foo"
platform-public-list-views 'u5sE89JW8UU0RsB6' --login_with_auth "Bearer foo"
platform-public-get-wallet 'dvrpmInhHYzVVlHG' 'FSwjby6rMYkVQnZD' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'UAbINRKQsxUO1YMx' 'AndOj5O6IBwXJjgQ' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'jgLoJyqwFVBd1Zja' --body '{"itemIds": ["RXEdWgS12bSbPgOC", "WUogizeWOPUMrqgE", "IsMwNbfti0LoTBcN"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'zyoCSw1t653G3ydY' --body '{"entitlementCollectionId": "mGzvx9bSqqyAPha5", "entitlementOrigin": "Epic", "metadata": {"l4Bxb9KwFYqdhEVq": {}, "3hbsApeASfR0ljKx": {}, "qZcLuhwNDvValv3b": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "QJfkFDhSeSGXtZU5", "namespace": "SuIhMSaDRp17dUWH"}, "item": {"itemId": "cjrb6qNeKpOxPrlG", "itemSku": "9svdqsiVTqPbzY1y", "itemType": "xl7zeEpmSPO6KwlJ"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "lj9Ii2jARwzowk9O", "namespace": "oiPdnq9KBqBwiNCs"}, "item": {"itemId": "nK8CcO1OHbpQZtwW", "itemSku": "3EwLre1bL4dJnkRL", "itemType": "JbMvOGSd7uMrmQ2S"}, "quantity": 0, "type": "CURRENCY"}, {"currency": {"currencyCode": "Qqsi5yOjvl5sRN2E", "namespace": "Nn1RLi5iMPnbg7o1"}, "item": {"itemId": "zYpqUsliPyXZGYIW", "itemSku": "5ZDtWbdkzPP47RcU", "itemType": "Ii2CoNj4EG2emxKQ"}, "quantity": 22, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "QLNgDxAkwgfB8jIe"}' --login_with_auth "Bearer foo"
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
echo "1..444"

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

#- 3 GetFulfillmentScript
$PYTHON -m $MODULE 'platform-get-fulfillment-script' \
    'cOx5ugNCDd6jW6fj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'tBcO3fWq9qfmBv0X' \
    --body '{"grantDays": "gJB6a7uykADFpinF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'cH2ZMSYijqEuMfuY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'FUS079tOpZYM1XV0' \
    --body '{"grantDays": "Op0damycnTUOoMkO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateFulfillmentScript' test.out

#- 7 ListItemTypeConfigs
$PYTHON -m $MODULE 'platform-list-item-type-configs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'ListItemTypeConfigs' test.out

#- 8 CreateItemTypeConfig
$PYTHON -m $MODULE 'platform-create-item-type-config' \
    --body '{"clazz": "ppZNOkqxc42HKv5w", "dryRun": true, "fulfillmentUrl": "mB9mYBvtOwxjqyrj", "itemType": "MEDIA", "purchaseConditionUrl": "IpGBYHTHoSVxgQCb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'COINS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'uBTYOdsvNyk52MQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'kVVEf36S7yPgG48b' \
    --body '{"clazz": "k6PwH1tdEAJSqXA0", "dryRun": true, "fulfillmentUrl": "TaSWR4VOGIY7hM6u", "purchaseConditionUrl": "honkAe0FdTSSEluB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'xM47BTww3nBTVmBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteItemTypeConfig' test.out

#- 13 QueryCampaigns
$PYTHON -m $MODULE 'platform-query-campaigns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'QueryCampaigns' test.out

#- 14 CreateCampaign
$PYTHON -m $MODULE 'platform-create-campaign' \
    --body '{"description": "Z6TIs9bTi2m7eNsY", "items": [{"extraSubscriptionDays": 61, "itemId": "JTMS4pVRcCHIGfmC", "itemName": "MTr9ACnI2sMrEgl7", "quantity": 100}, {"extraSubscriptionDays": 90, "itemId": "nMQGaYRxFWia7yJ2", "itemName": "d87XjA0ajvb7JcGU", "quantity": 65}, {"extraSubscriptionDays": 70, "itemId": "gp6LkyXpxJeFxhgT", "itemName": "wyO51CUpcdxL0a9V", "quantity": 60}], "maxRedeemCountPerCampaignPerUser": 71, "maxRedeemCountPerCode": 14, "maxRedeemCountPerCodePerUser": 25, "maxSaleCount": 35, "name": "LBv6nUU0r1rfX9st", "redeemEnd": "1979-05-07T00:00:00Z", "redeemStart": "1982-11-29T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["4toH57yr01N33p1G", "ha8HwpagvERZI6Cq", "hcknhecNv2Tw6YKh"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'rYkMqXkQ7qlaJjSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'EseBYCFGoKpXx60G' \
    --body '{"description": "mEX9x2BYpyKEBQ7T", "items": [{"extraSubscriptionDays": 100, "itemId": "kU8Y58COtTNjnNSi", "itemName": "kJDg6ujKvq0CIa1Y", "quantity": 58}, {"extraSubscriptionDays": 24, "itemId": "K9PlMeQprfgLGkHX", "itemName": "1tdBjKmCBXETZwqd", "quantity": 52}, {"extraSubscriptionDays": 54, "itemId": "UrLv4qUiTkFcLBrg", "itemName": "2JB0WiCpVBwvAffJ", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 19, "maxRedeemCountPerCode": 40, "maxRedeemCountPerCodePerUser": 41, "maxSaleCount": 90, "name": "0PpQY3Pnnic80yEO", "redeemEnd": "1988-01-24T00:00:00Z", "redeemStart": "1989-10-29T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["Jh10XMUGeDavCKra", "dJmJFUsU418vAlmf", "Gg9NO1Z2DvnAxH3p"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'S3jyCkGKltBNE2Ub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCampaignDynamic' test.out

#- 18 GetLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-get-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetLootBoxPluginConfig' test.out

#- 19 UpdateLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-update-loot-box-plugin-config' \
    --body '{"appConfig": {"appName": "hNtH3yYg4Qnn2uhd"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "7P4JI4H7uDzkOHTd"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateLootBoxPluginConfig' test.out

#- 20 DeleteLootBoxPluginConfig
$PYTHON -m $MODULE 'platform-delete-loot-box-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteLootBoxPluginConfig' test.out

#- 21 UplodLootBoxPluginConfigCert
$PYTHON -m $MODULE 'platform-uplod-loot-box-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UplodLootBoxPluginConfigCert' test.out

#- 22 GetLootBoxGrpcInfo
$PYTHON -m $MODULE 'platform-get-loot-box-grpc-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetLootBoxGrpcInfo' test.out

#- 23 GetSectionPluginConfig
$PYTHON -m $MODULE 'platform-get-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetSectionPluginConfig' test.out

#- 24 UpdateSectionPluginConfig
$PYTHON -m $MODULE 'platform-update-section-plugin-config' \
    --body '{"appConfig": {"appName": "3iqrkyJFOVaewFcv"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "7rEXi6LEqJERpbxE"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateSectionPluginConfig' test.out

#- 25 DeleteSectionPluginConfig
$PYTHON -m $MODULE 'platform-delete-section-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteSectionPluginConfig' test.out

#- 26 UploadSectionPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-section-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UploadSectionPluginConfigCert' test.out

#- 27 GetRootCategories
$PYTHON -m $MODULE 'platform-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetRootCategories' test.out

#- 28 CreateCategory
$PYTHON -m $MODULE 'platform-create-category' \
    'jGaIcZN28gH4Cd9x' \
    --body '{"categoryPath": "Tdt2K1CzpQWslNGn", "localizationDisplayNames": {"LYUYR0yOvJhUjzcM": "twINUlrhIpnlam2E", "efVopbpPhsana0uX": "G7GUTV1BwgkLDj4p", "jVktyoNSsEHlzyd0": "SarkhltUxgbN5eEl"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreateCategory' test.out

#- 29 ListCategoriesBasic
$PYTHON -m $MODULE 'platform-list-categories-basic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ListCategoriesBasic' test.out

#- 30 GetCategory
$PYTHON -m $MODULE 'platform-get-category' \
    'QNESFLD8hCc9onSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'jbQEqFGwnDG8kz4k' \
    'vEv6tNjGRhrmRAxR' \
    --body '{"localizationDisplayNames": {"GeIKGlCJmDXpjyvL": "SHB1y3klHuAGnidO", "yGuS0OG7ohiL2943": "ClrNhEdxd24ZKfvM", "f1T5FzYMf1jaCgZo": "sntPzP1vXXB92q15"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    '0WEIetOXMt37MXy7' \
    'Fp7lUfQqXrqGadwv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'KlJFX1ZHV9yo9Ur1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'hfhmGEKuVUZdCacR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'GataPrcgTcA71dtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'tSUN4zvBzGh3mhID' \
    --body '{"quantity": 82}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'lyMGNll4O8ELahcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'JqRjepck1l0qxRyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    '2pi7xuAufJakIPXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'QznHZTj8oYfWObyN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'JKVSQsaCokoGynp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'xcqNKJnAhrSt96Oa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'ARAjHLGV3sNxS8uL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'EnableCode' test.out

#- 44 GetServicePluginConfig
eval_tap 0 44 'GetServicePluginConfig # SKIP deprecated' test.out

#- 45 UpdateServicePluginConfig
eval_tap 0 45 'UpdateServicePluginConfig # SKIP deprecated' test.out

#- 46 DeleteServicePluginConfig
eval_tap 0 46 'DeleteServicePluginConfig # SKIP deprecated' test.out

#- 47 ListCurrencies
$PYTHON -m $MODULE 'platform-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ListCurrencies' test.out

#- 48 CreateCurrency
$PYTHON -m $MODULE 'platform-create-currency' \
    --body '{"currencyCode": "BZiVRYIyQLcslTEq", "currencySymbol": "gVNG8AqktgvjwNJA", "currencyType": "VIRTUAL", "decimals": 82, "localizationDescriptions": {"IpEy2ZNpojZ24I2n": "25smsrmJFHGiYnyh", "bqxLuTZIxgiUaiyy": "0aWrshpmb1C9Al7e", "WrbNRE0xyYPUZHyL": "GQ52IjGpRJCUJpsc"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'OTkWETSJ04c5MGIn' \
    --body '{"localizationDescriptions": {"O4yznh2YpZvvmziS": "SiSpXeWOGayfRkQv", "oN06SpNOnuSksfm7": "hcIFdkdrwAcK2lUd", "a9h9FgvfhiLEAkA7": "n6516ydoRT1qZBrd"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'TnGrwHeWoQXPFWFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'KbDgrGkv8SVwLyS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'VbHJvD0lL7aZUY9d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetCurrencySummary' test.out

#- 53 GetDLCItemConfig
$PYTHON -m $MODULE 'platform-get-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetDLCItemConfig' test.out

#- 54 UpdateDLCItemConfig
$PYTHON -m $MODULE 'platform-update-dlc-item-config' \
    --body '{"data": [{"id": "1Idud8bjYeBVMr7z", "rewards": [{"currency": {"currencyCode": "HYmRE4X36KUOdfEm", "namespace": "oIYwSxxAsfwDMivW"}, "item": {"itemId": "qHHGlnAnEu6EKYce", "itemSku": "TEqYudHlA4AxeEIf", "itemType": "UxJ2xMSNNBxCeN3p"}, "quantity": 66, "type": "CURRENCY"}, {"currency": {"currencyCode": "n46fGvodt413MRdG", "namespace": "8qAPiANv2Ar8yXV6"}, "item": {"itemId": "qf6v5SgcJPZPUh2n", "itemSku": "HQwpWi8HZ6C0VJ0f", "itemType": "K2m6lQ5Ao8TITYiH"}, "quantity": 92, "type": "CURRENCY"}, {"currency": {"currencyCode": "R2SEJh1YDedZdNqk", "namespace": "XPWZfT8ZfdKp9q4n"}, "item": {"itemId": "XuK0tJAYror2XdtS", "itemSku": "CG7ZExOoIpWzacOv", "itemType": "wUsnIbQM3ZAtyEWK"}, "quantity": 100, "type": "CURRENCY"}]}, {"id": "orCbncoj5RvEtXiK", "rewards": [{"currency": {"currencyCode": "yUGdNfMiwgSvsTRm", "namespace": "JsOm0wVFyHvFhRMC"}, "item": {"itemId": "FJuA0DEMgykqqjoH", "itemSku": "TpIPMSRAuPI7mSZQ", "itemType": "5UDm1q51PlW2HG8L"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"currencyCode": "48pthyYpBJDHIIxT", "namespace": "IGI5EssYllIqjJzu"}, "item": {"itemId": "Q8GglVgxjOGQGlHm", "itemSku": "8VTN56tJKwD8O07L", "itemType": "9GG1uenDihceaLdg"}, "quantity": 86, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZI0fKW8LeQxItaK6", "namespace": "s3Hha69MgxjGJx62"}, "item": {"itemId": "mkfVlu4bGB1pyk0P", "itemSku": "pxXZDy5Pmbu7RrD9", "itemType": "a5mdlXTCL467xHbA"}, "quantity": 18, "type": "CURRENCY"}]}, {"id": "D3Pr3mXZO1PnbSlf", "rewards": [{"currency": {"currencyCode": "VRlAI8F2f3mEv09k", "namespace": "AA5hnQtd4bcivHGI"}, "item": {"itemId": "EplRpcHDWcIoJ45L", "itemSku": "0Ze3YamxKDSZTl4U", "itemType": "iJSCbG4UmG3TkMTz"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "uNtOv3jbhGBuW8Kc", "namespace": "yPMfDWSEEpKoJlmh"}, "item": {"itemId": "MQUCx70QjYbzemOT", "itemSku": "URzzAOIBarB7kcer", "itemType": "5SvPLeQZIpKFXgns"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "0gxcoaH6u9TVf4Dv", "namespace": "EzpoPRiClZ6rlwX9"}, "item": {"itemId": "9AHMLHqguYykVWzN", "itemSku": "wPcvGyieBsRUduW5", "itemType": "lxSlorWEGN5bPGSO"}, "quantity": 91, "type": "ITEM"}]}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateDLCItemConfig' test.out

#- 55 DeleteDLCItemConfig
$PYTHON -m $MODULE 'platform-delete-dlc-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteDLCItemConfig' test.out

#- 56 GetPlatformDLCConfig
$PYTHON -m $MODULE 'platform-get-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetPlatformDLCConfig' test.out

#- 57 UpdatePlatformDLCConfig
$PYTHON -m $MODULE 'platform-update-platform-dlc-config' \
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"td9CsAMTZC37xPXx": "nfggnZ3EZp6wSAuf", "wYirs9lwvPKd925u": "3fFLV0YeMrVaYSTR", "YGFzgLZ7gEypQf2P": "n9A4gcbDJ0LmdnOP"}}, {"platform": "OCULUS", "platformDlcIdMap": {"LAi5JmzvM6JFKB8i": "kHpl3sNRaDEC2OkX", "A3WqypoOw0H2s0si": "bQNBz81zRPntxpgi", "7tXIcNEcGJjOCXpu": "ix5vnPeTu9evbRov"}}, {"platform": "XBOX", "platformDlcIdMap": {"Bm40CtZiAxk43DGV": "1SCkw8U0d4FvVmPM", "tpRMWSQ8Szi1IrGi": "dRmR5BGRJhFwxmkG", "fPI3j4luXQuuLtYa": "86kvL6cBZQssUUXO"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdatePlatformDLCConfig' test.out

#- 58 DeletePlatformDLCConfig
$PYTHON -m $MODULE 'platform-delete-platform-dlc-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeletePlatformDLCConfig' test.out

#- 59 QueryEntitlements
$PYTHON -m $MODULE 'platform-query-entitlements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'QueryEntitlements' test.out

#- 60 QueryEntitlements1
$PYTHON -m $MODULE 'platform-query-entitlements-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'QueryEntitlements1' test.out

#- 61 EnableEntitlementOriginFeature
$PYTHON -m $MODULE 'platform-enable-entitlement-origin-feature' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'EnableEntitlementOriginFeature' test.out

#- 62 GetEntitlementConfigInfo
$PYTHON -m $MODULE 'platform-get-entitlement-config-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetEntitlementConfigInfo' test.out

#- 63 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"collectionId": "sXMNdvW1hbvGenRb", "endDate": "1977-01-16T00:00:00Z", "grantedCode": "3QtsY5WaKM5YY6pY", "itemId": "rmeMIHLS8egV8Xhg", "itemNamespace": "Djbrum8UxcutmVg8", "language": "sqc-ZKVd_976", "origin": "Nintendo", "quantity": 22, "region": "axixm9X9TXNhN8y1", "source": "GIFT", "startDate": "1995-05-20T00:00:00Z", "storeId": "1G6bYgIbVKp4Kgew"}, {"collectionId": "2mHDksA6Mv9Nzs19", "endDate": "1973-07-27T00:00:00Z", "grantedCode": "Bq9a1L8S1yduOwsc", "itemId": "ICro6P8FWIPeqaBe", "itemNamespace": "D2uBAvIXEc2CCgYc", "language": "kOoj_SavR", "origin": "Xbox", "quantity": 82, "region": "suMziNM8AB7RRxiZ", "source": "REWARD", "startDate": "1991-04-17T00:00:00Z", "storeId": "1MOpmm04BlZUAlYn"}, {"collectionId": "CT11qD03er5mdraK", "endDate": "1987-01-23T00:00:00Z", "grantedCode": "FdxXisVlo3aVOGAR", "itemId": "FDJcGWy826ilCxAx", "itemNamespace": "QUM5DyrPfBmpZIzS", "language": "cwZQ", "origin": "System", "quantity": 44, "region": "fH66eFCMTsLA8vYV", "source": "PURCHASE", "startDate": "1977-05-23T00:00:00Z", "storeId": "ffBWRaJN1SjCFLDN"}], "userIds": ["rQJ4Kj7Qyo9tUpti", "v35fEk9s11bFXkf7", "JfAhJGwSYEZjEb0P"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["yZzRX8Y4rxRWZPe4", "ZLAQWuBJwxObZqMG", "xhffy9cHrLYfftad"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    '99JDcnn7f2d8SOWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetEntitlement' test.out

#- 66 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'QueryFulfillmentHistories' test.out

#- 67 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'QueryIAPClawbackHistory' test.out

#- 68 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "2dw6Uy88WpQalG38", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 97, "clientTransactionId": "REmm1cBuaRaGeM8y"}, {"amountConsumed": 48, "clientTransactionId": "ifWRbmtK7MTxcCWn"}, {"amountConsumed": 80, "clientTransactionId": "FGpu5r2K0IvVg5Lw"}], "entitlementId": "UygH98dzTL8azKCC", "usageCount": 81}, {"clientTransaction": [{"amountConsumed": 56, "clientTransactionId": "wUApJWohXn01RB7p"}, {"amountConsumed": 43, "clientTransactionId": "DHXcfvXPXJURX3Xw"}, {"amountConsumed": 14, "clientTransactionId": "48xOYVvEcEm53BYM"}], "entitlementId": "BacQBIuDVs7U0AJt", "usageCount": 100}, {"clientTransaction": [{"amountConsumed": 43, "clientTransactionId": "PRteszMTd0R5Fsrf"}, {"amountConsumed": 3, "clientTransactionId": "xbVfgvG617GmxzCl"}, {"amountConsumed": 22, "clientTransactionId": "VXe4xBPDWHRHCCVD"}], "entitlementId": "BRjPUQWYVxGQVFJl", "usageCount": 61}], "purpose": "3IphQQiRcOtsthUw"}, "originalTitleName": "gQzNHUZ0l1FRfOjJ", "paymentProductSKU": "UmCbi2llksf6GA8v", "purchaseDate": "Tt92kldCoyRdiOik", "sourceOrderItemId": "UdqGocLYBaRC7T5q", "titleName": "Sl7WN3ncPkqiTKzz"}, "eventDomain": "72PKXjShM2DvesmM", "eventSource": "IbiQfaHxl2YUNRLR", "eventType": "jgKqSSYgZnVfa8go", "eventVersion": 43, "id": "9B9Okr0xJ5XRZVox", "timestamp": "PGOLVBIlFgTAsXgq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'MockPlayStationStreamEvent' test.out

#- 69 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetAppleIAPConfig' test.out

#- 70 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "x3mfB5ZwV25N7NAv", "password": "ZdGuyYEYZE3KaGSd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateAppleIAPConfig' test.out

#- 71 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteAppleIAPConfig' test.out

#- 72 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetEpicGamesIAPConfig' test.out

#- 73 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "hEGKcp6g1A8O9N9c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateEpicGamesIAPConfig' test.out

#- 74 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteEpicGamesIAPConfig' test.out

#- 75 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'GetGoogleIAPConfig' test.out

#- 76 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "bYBK6XOBDpR7SH93", "serviceAccountId": "AE1Toj5vygVvLSJv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleIAPConfig' test.out

#- 77 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteGoogleIAPConfig' test.out

#- 78 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateGoogleP12File' test.out

#- 79 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetIAPItemConfig' test.out

#- 80 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "dsGpmmUeMikW3s54", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"LSr0O4rEZTbFDj2L": "2McvCrrR7h9uKLXD", "aRf3pxKtJbRY5luC": "wKrt6wn3yVrRCh6j", "7rpv8K8fBAeRa1R6": "ksxLYGkOLgReff5I"}}, {"itemIdentity": "HxLJIemNHbzgAFjt", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Bw2H4tz6KUC4jXGj": "2G0GZ3JBYi9bBKBR", "pdbLCiwxOx2XQn94": "xPqXhqeNMDGA3O5h", "QAl6U2g9imVMh3i7": "j095rDL6lEuB1ZIM"}}, {"itemIdentity": "Is1dFvYokH9t2u8Z", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"nyHKkk6Gh25tEcX9": "GegDnrYz0GFpSVdx", "FsXAp1roclyXllFi": "tPamSKRzDIZgSk6s", "uS90ZbDdmjU11QIZ": "tkSn8QRbA5V4gjWv"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateIAPItemConfig' test.out

#- 81 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteIAPItemConfig' test.out

#- 82 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetOculusIAPConfig' test.out

#- 83 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "1W6cqnvSuKswQ7vH", "appSecret": "8GScnP5QzRBY1Ure"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'UpdateOculusIAPConfig' test.out

#- 84 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteOculusIAPConfig' test.out

#- 85 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetPlayStationIAPConfig' test.out

#- 86 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "fgmVFBVz4KRCU0p4", "backOfficeServerClientSecret": "jIt01gzH17IcfJyG", "enableStreamJob": true, "environment": "MJdrqHIsJ98WRjqY", "streamName": "ieXRthQZvzRi7pqp", "streamPartnerName": "ajYEHs9TIkcnrJ64"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdatePlaystationIAPConfig' test.out

#- 87 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeletePlaystationIAPConfig' test.out

#- 88 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'ValidateExistedPlaystationIAPConfig' test.out

#- 89 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "BOKqywS6DKNSeb2U", "backOfficeServerClientSecret": "MWOgVeYkCvqq0tO1", "enableStreamJob": true, "environment": "pEVG7sNihxpuuL7D", "streamName": "JCxvzZnh8oBAk1MN", "streamPartnerName": "CAUmdnLaVRUu5Vbj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'ValidatePlaystationIAPConfig' test.out

#- 90 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetSteamIAPConfig' test.out

#- 91 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "wPa9rYgHaxeTT3eb", "publisherAuthenticationKey": "uaYPNBp9wA4LxO2n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateSteamIAPConfig' test.out

#- 92 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteSteamIAPConfig' test.out

#- 93 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetTwitchIAPConfig' test.out

#- 94 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "7WJQFzBCD9S03D7J", "clientSecret": "LsIM3VOMRvvqkXDM", "organizationId": "PzOB08tpk0qhZath"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateTwitchIAPConfig' test.out

#- 95 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteTwitchIAPConfig' test.out

#- 96 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetXblIAPConfig' test.out

#- 97 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "4b4HtwEYX55pJNTX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblIAPConfig' test.out

#- 98 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteXblAPConfig' test.out

#- 99 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateXblBPCertFile' test.out

#- 100 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    '1sDjSWiSXsV5rJ8e' \
    'ZXZ1TLMZnNL3DQK4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '5IAtbyUDDSJSV8pz' \
    'l1lfIR7jnetIJPGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'byWCLyFPHaxkKxED' \
    --body '{"categoryPath": "vSoi2X9SygvMG8QA", "targetItemId": "aWUhIguMvKDOrx0w", "targetNamespace": "QXKEroyKz2reP63E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'VHT72VuhoGP2IFXG' \
    --body '{"appId": "U5hujEfCMt95DEjx", "appType": "GAME", "baseAppId": "Fyoczck0qJsgZPfu", "boothName": "elAiZBZcQGHHGI7c", "categoryPath": "sI8ecZSvzXYOytsh", "clazz": "BcKQytQagui6lsKF", "displayOrder": 72, "entitlementType": "CONSUMABLE", "ext": {"n7UC7y1MKYVeoGFr": {}, "Db8unXv1iE7YgEZs": {}, "pOJ0NiZl6OVLxKtk": {}}, "features": ["V8ncebaJ0DCuIeES", "BpaCG8Nu5m4ctwUN", "tt3PbyctX7HC2haQ"], "flexible": true, "images": [{"as": "lV2sccbVr6HSiXVz", "caption": "rG4EdKn8eypTzI49", "height": 36, "imageUrl": "DG0ZNoJvvi4Ys50i", "smallImageUrl": "E7IjZoDzMmMgoMxZ", "width": 38}, {"as": "9AutWDfVOINhql9C", "caption": "dDX4xiHpdfKH35RW", "height": 95, "imageUrl": "6H1MnNSKd0KStITv", "smallImageUrl": "GQtzwjGtGTr238G8", "width": 54}, {"as": "yeFaBiT3SyLHXZSy", "caption": "fjukWmkfkiF2GZPu", "height": 50, "imageUrl": "Pry2vMON7sdhlilf", "smallImageUrl": "pDT8o2iFrYtGfCZC", "width": 4}], "inventoryConfig": {"customAttributes": {"KEKdeo779KG5yCz9": {}, "jVs1lYK1Mx9rEFkD": {}, "qb31AZzwiQBaGdS4": {}}, "serverCustomAttributes": {"1VRIyAHjYxVhCbXb": {}, "eBEoTlfR33jqIRoX": {}, "cCPaLXJM2B9bMohk": {}}, "slotUsed": 99}, "itemIds": ["SWIT9TLnuMLNJAEk", "3A6A6rYiIu8eLdWy", "khBxLFnKnSYC9yyB"], "itemQty": {"YepIqtrikdAbdOT6": 16, "xdmYDj9vZNgfI1Ae": 52, "He8WPQGPclChxLfb": 66}, "itemType": "EXTENSION", "listable": true, "localizations": {"6f2GDrNbLOjGz34c": {"description": "t0ctEeH43wYuLnI7", "localExt": {"cTzIUERPlQI99hMc": {}, "4NbiJWP5r9EwbIGM": {}, "GJ70P9IqAyNlZ2Ow": {}}, "longDescription": "FSebBkXkaxtY97TM", "title": "JH8bO4GDHT6ZaUUk"}, "vlTKAhrxqHw7f813": {"description": "qNjzlcxXsmGGcJha", "localExt": {"uxfhVKIbRvUnyElH": {}, "PuQE3Gc8bY4IH0OX": {}, "HZP6VVB7qjDHMS49": {}}, "longDescription": "dkv8vxyg6giNKzeF", "title": "nlgGRgYK3SeYvULY"}, "NIhs5PZGTJmgofq7": {"description": "nlF5Ch8J2Qs990AP", "localExt": {"OU4hcdwlnsTap2RJ": {}, "pHtncLywP3WlLmNd": {}, "QGk6vneHoB1PXO1v": {}}, "longDescription": "T1AonFO3syvkYd78", "title": "GsJGLbnb4Nvw7fnm"}}, "lootBoxConfig": {"rewardCount": 79, "rewards": [{"lootBoxItems": [{"count": 17, "duration": 28, "endDate": "1981-11-26T00:00:00Z", "itemId": "rBWW5jSJi0seeGJI", "itemSku": "qnatME8GnNWfAY1y", "itemType": "Y6D1Euusf0eOzoSy"}, {"count": 74, "duration": 16, "endDate": "1981-04-06T00:00:00Z", "itemId": "tYwUUlMRG8vO0OSs", "itemSku": "JmhOJDUyyag9jBDJ", "itemType": "FJGOEiWJ8cLrryS5"}, {"count": 0, "duration": 5, "endDate": "1972-08-08T00:00:00Z", "itemId": "auYDc86pxK9KhF4K", "itemSku": "RVPoIuzAuQNjAfvO", "itemType": "E2cVjFp1CeCEfaV4"}], "name": "ZGGwbqOB4mD3E7AF", "odds": 0.5348566941958189, "type": "REWARD", "weight": 82}, {"lootBoxItems": [{"count": 24, "duration": 96, "endDate": "1994-03-21T00:00:00Z", "itemId": "TkL8cmpA0sZ0tgeR", "itemSku": "4UV5SMZ8GUvWZvoC", "itemType": "mprkv7A8MRutCKCs"}, {"count": 33, "duration": 61, "endDate": "1977-07-15T00:00:00Z", "itemId": "qbPmwQw8J7na1POT", "itemSku": "XhXLRU5prAdqnnPO", "itemType": "iTVzAeQq6rnWJoTp"}, {"count": 29, "duration": 89, "endDate": "1973-12-27T00:00:00Z", "itemId": "uHaWnO98YwqHZnED", "itemSku": "kfmNbDTMGgET2yS6", "itemType": "C8a8L0vQDS4EVpBm"}], "name": "sUzx64Gr4XEm0uYY", "odds": 0.33093722150044713, "type": "REWARD", "weight": 25}, {"lootBoxItems": [{"count": 15, "duration": 34, "endDate": "1995-02-22T00:00:00Z", "itemId": "gtONCIoZ2rkomSj5", "itemSku": "2mAIMo6EW9QhzU8F", "itemType": "wQtZpfUoyoiUjmqO"}, {"count": 50, "duration": 88, "endDate": "1987-01-02T00:00:00Z", "itemId": "aNZLT1z0GqDZN7ft", "itemSku": "HOhVy48YYg1AkRh3", "itemType": "NmbRhMxKeIgwq1NZ"}, {"count": 26, "duration": 83, "endDate": "1982-09-18T00:00:00Z", "itemId": "a0ghRG020QpWTNKs", "itemSku": "VyK8EU8JYc00PA2e", "itemType": "f1jFeqQ8mBpTuvLT"}], "name": "JUzwXJFaWW3JVdYp", "odds": 0.09597349038024638, "type": "REWARD_GROUP", "weight": 84}], "rollFunction": "CUSTOM"}, "maxCount": 40, "maxCountPerUser": 77, "name": "3uQ5nFrPXwxJZQpk", "optionBoxConfig": {"boxItems": [{"count": 9, "duration": 91, "endDate": "1986-09-28T00:00:00Z", "itemId": "pU81S5H9XsZyvZOF", "itemSku": "J5RrFZYcwfQ1Q2Bb", "itemType": "cjSpv6Nt1oz4tdgf"}, {"count": 75, "duration": 14, "endDate": "1981-11-25T00:00:00Z", "itemId": "4bmK8kOKcEoCRjQJ", "itemSku": "lPY3p42OS9iGNElT", "itemType": "pMlvRDZSIuM0OXOH"}, {"count": 85, "duration": 22, "endDate": "1995-06-18T00:00:00Z", "itemId": "ctUmDhFVNa0JYzTb", "itemSku": "dnOnEarWP4nrJ5fN", "itemType": "ESRVGeswvkzLNIIT"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 60, "fixedTrialCycles": 26, "graceDays": 64}, "regionData": {"VrcwbsD0RDLxWgEW": [{"currencyCode": "woHpV8E1xQZLa7Kw", "currencyNamespace": "77UpCxNyx1jjdxNe", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1984-06-28T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1991-01-25T00:00:00Z", "expireAt": "1997-09-01T00:00:00Z", "price": 82, "purchaseAt": "1994-07-27T00:00:00Z", "trialPrice": 34}, {"currencyCode": "r1rI0T97qA1OiblW", "currencyNamespace": "lz2LXQNqcONcJIsY", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1988-04-07T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1981-12-23T00:00:00Z", "expireAt": "1989-11-20T00:00:00Z", "price": 70, "purchaseAt": "1974-12-05T00:00:00Z", "trialPrice": 19}, {"currencyCode": "eNP3Y2nWlS9Sfjh0", "currencyNamespace": "htyVaGj4y9ahS7h7", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1977-05-05T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1988-12-19T00:00:00Z", "expireAt": "1980-06-02T00:00:00Z", "price": 76, "purchaseAt": "1991-09-17T00:00:00Z", "trialPrice": 61}], "VQSIqObR55tV0BlN": [{"currencyCode": "1iFvw0GSLBmie8SJ", "currencyNamespace": "ckSRbu7hgmUm7RVC", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1982-01-26T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-09-23T00:00:00Z", "expireAt": "1992-12-30T00:00:00Z", "price": 64, "purchaseAt": "1980-11-10T00:00:00Z", "trialPrice": 66}, {"currencyCode": "RaeIaQuPWPlkxeot", "currencyNamespace": "rNakKGvOSvpmZZdl", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1983-03-24T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1995-11-14T00:00:00Z", "expireAt": "1977-05-07T00:00:00Z", "price": 34, "purchaseAt": "1990-04-30T00:00:00Z", "trialPrice": 6}, {"currencyCode": "fSods1zdVT0aWj58", "currencyNamespace": "Othvd3jzMDAf40gK", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1984-06-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1977-07-14T00:00:00Z", "expireAt": "1985-06-05T00:00:00Z", "price": 85, "purchaseAt": "1980-03-04T00:00:00Z", "trialPrice": 14}], "HSQvRAPG9JoVSLrb": [{"currencyCode": "s5niXkjpkOgRCC7q", "currencyNamespace": "fz5jV7NTRYld9FJJ", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1983-04-28T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-12-28T00:00:00Z", "expireAt": "1979-08-08T00:00:00Z", "price": 41, "purchaseAt": "1971-05-20T00:00:00Z", "trialPrice": 55}, {"currencyCode": "79Du28SRRAMaQFEz", "currencyNamespace": "ppeticckSUon7awf", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1976-12-16T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1985-06-14T00:00:00Z", "expireAt": "1987-07-14T00:00:00Z", "price": 26, "purchaseAt": "1979-02-08T00:00:00Z", "trialPrice": 57}, {"currencyCode": "ieMjjOfFSx3AJN97", "currencyNamespace": "kUjwiCmWQvbrxQpU", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1979-04-27T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1980-03-30T00:00:00Z", "expireAt": "1986-12-14T00:00:00Z", "price": 7, "purchaseAt": "1975-09-21T00:00:00Z", "trialPrice": 68}]}, "saleConfig": {"currencyCode": "Ss4s7u1VUuLmenyx", "price": 94}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "NIp0GXpM4nbG7aww", "stackable": true, "status": "INACTIVE", "tags": ["oRMNexBOron8wIdU", "ANW1Or7TvLoL0wwH", "bp7xVMKfbAJfW4iM"], "targetCurrencyCode": "IC52NUedhhkME18q", "targetNamespace": "GpSsyEPDWHcqfYp2", "thumbnailUrl": "EFxEaEHCGtg812NQ", "useCount": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'TNqoLFFS4wB6Um7i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'GetItemByAppId' test.out

#- 105 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'QueryItems' test.out

#- 106 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'ListBasicItemsByFeatures' test.out

#- 107 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'r0n6O3vbYVjrcErg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'oApAxyDnHjAx7rZT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'vew0WVDSMNr23LV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'xZEEv7O1lwxVTRll' \
    '0GIEUJtMC8NyV2HL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'HZT3oYJlC4ie3Inn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'GetItemIdBySku' test.out

#- 112 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetBulkItemIdBySkus' test.out

#- 113 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'SA22NHTb4qXYyJUA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'BulkGetLocaleItems' test.out

#- 114 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'GetAvailablePredicateTypes' test.out

#- 115 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'lKlTwdJEPoemVtmV' \
    --body '{"itemIds": ["XTs3tCu4F9IgDT2t", "q2V2lMzfIQHCZ90D", "qQgP6ynrQjYH0N2l"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'oTnRa0KiQWPxd1gq' \
    --body '{"changes": [{"itemIdentities": ["lwx9CE4WcsmYtCkI", "gcwiDWQFghmIi6fp", "hDw3p9QWqwTF2pOJ"], "itemIdentityType": "ITEM_SKU", "regionData": {"1AS2jTKoTYeHaCuN": [{"currencyCode": "7zpX9vp4QJdCrwkz", "currencyNamespace": "0nw2oxKye8jZqj7k", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1973-11-10T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-11-23T00:00:00Z", "discountedPrice": 56, "expireAt": "1995-12-09T00:00:00Z", "price": 92, "purchaseAt": "1993-08-14T00:00:00Z", "trialPrice": 33}, {"currencyCode": "uwR388REDRuYBnWi", "currencyNamespace": "EsOnDfIAN04f5kSO", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1978-07-04T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-09-02T00:00:00Z", "discountedPrice": 12, "expireAt": "1979-06-23T00:00:00Z", "price": 34, "purchaseAt": "1982-12-29T00:00:00Z", "trialPrice": 98}, {"currencyCode": "ctLL4WfGq8JCDnwG", "currencyNamespace": "Wgccuzuc6QDRMGdB", "currencyType": "REAL", "discountAmount": 95, "discountExpireAt": "1990-07-19T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1988-05-01T00:00:00Z", "discountedPrice": 92, "expireAt": "1971-03-30T00:00:00Z", "price": 85, "purchaseAt": "1993-08-19T00:00:00Z", "trialPrice": 58}], "p6DPdukc04j6rbfB": [{"currencyCode": "uKBco1AeO3yvvBLZ", "currencyNamespace": "PBuekeBe4Tvb3fHC", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1993-03-22T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1993-09-07T00:00:00Z", "discountedPrice": 92, "expireAt": "1972-09-28T00:00:00Z", "price": 58, "purchaseAt": "1996-12-22T00:00:00Z", "trialPrice": 67}, {"currencyCode": "i2U7s2ZQAarwH0c8", "currencyNamespace": "7v0PwZjydyzGDZM4", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1994-08-16T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1972-08-26T00:00:00Z", "discountedPrice": 71, "expireAt": "1986-09-11T00:00:00Z", "price": 82, "purchaseAt": "1972-02-19T00:00:00Z", "trialPrice": 4}, {"currencyCode": "2doBrfHiHXXgvu49", "currencyNamespace": "6H02yOVN1h41jIPO", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1990-02-10T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1997-11-29T00:00:00Z", "discountedPrice": 90, "expireAt": "1996-05-13T00:00:00Z", "price": 90, "purchaseAt": "1972-02-08T00:00:00Z", "trialPrice": 68}], "20JfNvtNcWtpUkw9": [{"currencyCode": "8x3tMM1bFFDIqKD8", "currencyNamespace": "HJ4X0DetCeJ4x0wf", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1992-07-21T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-09-27T00:00:00Z", "discountedPrice": 19, "expireAt": "1980-03-04T00:00:00Z", "price": 79, "purchaseAt": "1994-07-14T00:00:00Z", "trialPrice": 0}, {"currencyCode": "q7WUilXgtf5UctyV", "currencyNamespace": "3aSw4twReM5DcHde", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1985-03-26T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1988-06-27T00:00:00Z", "discountedPrice": 11, "expireAt": "1978-02-01T00:00:00Z", "price": 40, "purchaseAt": "1995-09-28T00:00:00Z", "trialPrice": 90}, {"currencyCode": "8WTOTeBOcYhf6nGC", "currencyNamespace": "nPjiIbJifs0arKxC", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1991-01-15T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1977-02-05T00:00:00Z", "discountedPrice": 65, "expireAt": "1978-12-19T00:00:00Z", "price": 48, "purchaseAt": "1985-02-16T00:00:00Z", "trialPrice": 49}]}}, {"itemIdentities": ["uw5bO8Vh4JaKYAso", "MlLJGMl5xFgLj4mC", "ShMFlbrRGjoBQ45Z"], "itemIdentityType": "ITEM_ID", "regionData": {"10iWT0SILVGXCWRu": [{"currencyCode": "cRpP1Tq7uYXhB6FP", "currencyNamespace": "fF5DvveMdBsPt19V", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1989-08-14T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1988-03-23T00:00:00Z", "discountedPrice": 70, "expireAt": "1998-12-11T00:00:00Z", "price": 76, "purchaseAt": "1976-06-14T00:00:00Z", "trialPrice": 56}, {"currencyCode": "fK6eiT38raaRG1Fg", "currencyNamespace": "0hfM5vQmahJlT5OU", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1986-11-08T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-08-07T00:00:00Z", "discountedPrice": 18, "expireAt": "1998-02-16T00:00:00Z", "price": 14, "purchaseAt": "1991-06-29T00:00:00Z", "trialPrice": 13}, {"currencyCode": "8BJPFctwUMCRdxXO", "currencyNamespace": "Bu3TWmHDVmCGFoD7", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1991-08-25T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1992-03-14T00:00:00Z", "discountedPrice": 64, "expireAt": "1998-06-25T00:00:00Z", "price": 82, "purchaseAt": "1976-12-27T00:00:00Z", "trialPrice": 54}], "fBqeQxos58kVk7F1": [{"currencyCode": "KKOfFFLvER3xqCwU", "currencyNamespace": "gKa4oCBoJDxGa1Uu", "currencyType": "VIRTUAL", "discountAmount": 78, "discountExpireAt": "1982-02-05T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1974-11-01T00:00:00Z", "discountedPrice": 27, "expireAt": "1992-04-21T00:00:00Z", "price": 53, "purchaseAt": "1982-04-13T00:00:00Z", "trialPrice": 41}, {"currencyCode": "6GvDSE2F7Ad69Dln", "currencyNamespace": "4mqFhgKKcGohdjQU", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1995-01-25T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1992-06-02T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-08-07T00:00:00Z", "price": 36, "purchaseAt": "1977-03-29T00:00:00Z", "trialPrice": 56}, {"currencyCode": "epfK0DE3IibPSQnp", "currencyNamespace": "hnvAWBSOr7zljUKy", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1989-04-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1987-09-01T00:00:00Z", "discountedPrice": 62, "expireAt": "1982-07-03T00:00:00Z", "price": 70, "purchaseAt": "1984-10-27T00:00:00Z", "trialPrice": 68}], "Ce3MrLxmnjmlAuaB": [{"currencyCode": "CdhzXb6cBMPNMmjM", "currencyNamespace": "i2uztFNfXg0UvwaZ", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1982-07-23T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1998-09-30T00:00:00Z", "discountedPrice": 5, "expireAt": "1994-04-23T00:00:00Z", "price": 16, "purchaseAt": "1991-09-20T00:00:00Z", "trialPrice": 61}, {"currencyCode": "omFzUappaaODZaZ6", "currencyNamespace": "VzztnntoxwsNtNxW", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1994-07-02T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1995-10-01T00:00:00Z", "discountedPrice": 21, "expireAt": "1989-02-07T00:00:00Z", "price": 99, "purchaseAt": "1980-01-06T00:00:00Z", "trialPrice": 41}, {"currencyCode": "EnaycYsKkgX0RMDx", "currencyNamespace": "vlK9RnTEYv5eDhCx", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1983-09-05T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1989-06-20T00:00:00Z", "discountedPrice": 16, "expireAt": "1976-05-12T00:00:00Z", "price": 15, "purchaseAt": "1995-06-29T00:00:00Z", "trialPrice": 89}]}}, {"itemIdentities": ["2ncRf7tEGzYqRoHm", "6EtyXqQbKWMJ0aOD", "iWn6bPmSa85Riu1a"], "itemIdentityType": "ITEM_ID", "regionData": {"Aca1aKeXUu9hINqK": [{"currencyCode": "voYKio4M51vuaFyq", "currencyNamespace": "jQsTGmzItJIOkEIR", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1975-06-12T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1986-09-02T00:00:00Z", "discountedPrice": 38, "expireAt": "1990-05-12T00:00:00Z", "price": 50, "purchaseAt": "1997-03-02T00:00:00Z", "trialPrice": 7}, {"currencyCode": "vYbMG9LXPbBh2E3w", "currencyNamespace": "FchP3zTymfVfny2M", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1993-12-26T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1997-08-11T00:00:00Z", "discountedPrice": 5, "expireAt": "1987-07-10T00:00:00Z", "price": 80, "purchaseAt": "1974-03-23T00:00:00Z", "trialPrice": 64}, {"currencyCode": "I1YTT3qUMd0U73Rj", "currencyNamespace": "VeYSM479gn62lizs", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1997-05-20T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1980-10-09T00:00:00Z", "discountedPrice": 90, "expireAt": "1974-09-07T00:00:00Z", "price": 98, "purchaseAt": "1992-09-13T00:00:00Z", "trialPrice": 2}], "OZUVTfDc3w1tAXRr": [{"currencyCode": "QtHkm0Tthcx9W7Pk", "currencyNamespace": "FNVa7czD4wybVjqO", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1987-05-13T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1996-11-23T00:00:00Z", "discountedPrice": 66, "expireAt": "1974-07-15T00:00:00Z", "price": 51, "purchaseAt": "1972-08-13T00:00:00Z", "trialPrice": 39}, {"currencyCode": "xfjLUZHK0OO1yQsM", "currencyNamespace": "BQAdOfrtHWyGg5TU", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1987-03-26T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1990-02-16T00:00:00Z", "discountedPrice": 64, "expireAt": "1976-06-02T00:00:00Z", "price": 8, "purchaseAt": "1978-07-16T00:00:00Z", "trialPrice": 84}, {"currencyCode": "0eOw31PXkVnetcvA", "currencyNamespace": "uim14Wdh1qKoSDBb", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1979-10-12T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1997-10-15T00:00:00Z", "discountedPrice": 44, "expireAt": "1983-10-20T00:00:00Z", "price": 12, "purchaseAt": "1995-12-01T00:00:00Z", "trialPrice": 12}], "PgVaFwGhl5zqkzEu": [{"currencyCode": "41hVfVC7eLVWGk0G", "currencyNamespace": "jYReIZaDC2Au2bEp", "currencyType": "VIRTUAL", "discountAmount": 56, "discountExpireAt": "1977-01-26T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1976-10-19T00:00:00Z", "discountedPrice": 19, "expireAt": "1996-01-25T00:00:00Z", "price": 39, "purchaseAt": "1992-04-29T00:00:00Z", "trialPrice": 73}, {"currencyCode": "wifBfAw30kOykBuD", "currencyNamespace": "J0IPQeAL4MZwEVJe", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1975-01-09T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1988-08-12T00:00:00Z", "discountedPrice": 51, "expireAt": "1984-08-10T00:00:00Z", "price": 84, "purchaseAt": "1975-02-27T00:00:00Z", "trialPrice": 81}, {"currencyCode": "2M5JiwtMOfDfoMgU", "currencyNamespace": "2yFBTPfnmfN5E20O", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1973-09-10T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1982-05-24T00:00:00Z", "discountedPrice": 20, "expireAt": "1977-06-24T00:00:00Z", "price": 67, "purchaseAt": "1992-01-19T00:00:00Z", "trialPrice": 4}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'rZHMKoTcIXeKZzZB' \
    'o6ARaQnNZQ1R0PGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'SearchItems' test.out

#- 118 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'QueryUncategorizedItems' test.out

#- 119 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'FVnc37aWVjM3iVKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'r5VDqakKdW767GAH' \
    '1oiS1JuO7MNoFPtR' \
    --body '{"appId": "hYYIpNqVHbbCVwbi", "appType": "GAME", "baseAppId": "GrH0hDjH6IYpfINz", "boothName": "Njk5V8T9pQjnGB83", "categoryPath": "yonudf21g0NhuYvw", "clazz": "CATIUep61ZsSiqW7", "displayOrder": 71, "entitlementType": "DURABLE", "ext": {"03oSwCfYpN9jkLCs": {}, "MYyyhEyBfFFZwkC1": {}, "PRjBWzTuXttDREDW": {}}, "features": ["bOM3xQaraaEVt3vs", "BCXpIgQzkWzcBqVc", "uTTrIk6hU0mqdwBJ"], "flexible": false, "images": [{"as": "IuYrbPUcvEOJ4Pgh", "caption": "ksbaThW37NTbz8Hi", "height": 89, "imageUrl": "BAS0qUswy0AnJZJd", "smallImageUrl": "KrIn9hHHGg1cTZsJ", "width": 32}, {"as": "lTE9Czhnck3GnyPF", "caption": "QHgn9jVE6QGkZ8AV", "height": 52, "imageUrl": "LjPGFqkbTL8ifUAM", "smallImageUrl": "UekrD0J6iuJsVjhL", "width": 14}, {"as": "t1bDay64EnFyFeW0", "caption": "oNhddKrrhzwz2PFX", "height": 58, "imageUrl": "UXbdYU08BQZXTcZn", "smallImageUrl": "HoYaII5c5UqVvKR3", "width": 49}], "inventoryConfig": {"customAttributes": {"Yxtl5DKUhjBy9oWP": {}, "cMIQc5lRQojhJgpX": {}, "VCubdw0sPrgDKqHC": {}}, "serverCustomAttributes": {"s5GTdTLCxJqK7dgs": {}, "grnpVE1acxZoDXdP": {}, "ORkWkyTcJzvDUlhT": {}}, "slotUsed": 24}, "itemIds": ["2vD3mUDwtTF1ATVQ", "nAexrRomTZFHX4cg", "tkxEx6tlxks0yGW8"], "itemQty": {"qDWfr7MF8Ptq10XB": 16, "buNQNJxCbLEhfrPx": 71, "EsCETqKlcFcaL6XO": 30}, "itemType": "SUBSCRIPTION", "listable": false, "localizations": {"qBsbDmsTk9UuiQwe": {"description": "zvArAKJwZGVyknpO", "localExt": {"huGhAnlnjyPBj7h3": {}, "hncU5vgL62RA2BI7": {}, "knizQ4Jx8In4w8yR": {}}, "longDescription": "FOLeTQyplscfsZvv", "title": "UpCMJRliFCmFC9uU"}, "xSxI4yyrZIV9M22g": {"description": "RLsc6Jwt190s6yFi", "localExt": {"DZs0wyldbDDntsSQ": {}, "8DEsKT6Mw5xDz8as": {}, "ARtI3TVV2QmlqRK5": {}}, "longDescription": "roG1oZArFJBUmMx7", "title": "nzK8rRAYvvynDPJ9"}, "SMRzSo0RzUoSen8C": {"description": "jEhtRcnVsYOwypw6", "localExt": {"F21uYowkPNGANjli": {}, "9XZkbrkh3dQNtIEw": {}, "CcfPmWjX540aN2pv": {}}, "longDescription": "Oi5UG7agVhXIgoHE", "title": "9eEvIyV2DqxWhSV3"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 86, "duration": 64, "endDate": "1981-03-23T00:00:00Z", "itemId": "iRWnREifOFJQwGPy", "itemSku": "5zGebVw9nLvVm8Ue", "itemType": "FUbaGb5on2kvdeu5"}, {"count": 60, "duration": 72, "endDate": "1973-08-06T00:00:00Z", "itemId": "KsgqGNM6sO7IUwIv", "itemSku": "84zQjc88fKtDQSbD", "itemType": "QN21JlwPxpuUZm1G"}, {"count": 97, "duration": 42, "endDate": "1990-10-05T00:00:00Z", "itemId": "X2yYJopKxd9MtXYG", "itemSku": "oZGkBNXT0feu7KKP", "itemType": "XunBZiqYaReD0471"}], "name": "7oGCmrTUcZy3DDSx", "odds": 0.2502814524764928, "type": "REWARD", "weight": 68}, {"lootBoxItems": [{"count": 98, "duration": 77, "endDate": "1988-10-17T00:00:00Z", "itemId": "x7FCWn7iOmKIN2ro", "itemSku": "JNZmgEGzqDHdLpDj", "itemType": "LIhvCNlBRcFsa03N"}, {"count": 35, "duration": 87, "endDate": "1981-03-13T00:00:00Z", "itemId": "3LgD6kOUZXQKRTVR", "itemSku": "95IwPCb2qOuIRbBL", "itemType": "0njCbitEJNHwfW76"}, {"count": 45, "duration": 72, "endDate": "1992-09-21T00:00:00Z", "itemId": "h6HpodpzuBQwTS66", "itemSku": "qr03Mp14S8HG9ID7", "itemType": "mZ4eKHaAP4PYToJA"}], "name": "MgJkC8UGlqb7cexe", "odds": 0.49053348997045276, "type": "PROBABILITY_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 53, "duration": 49, "endDate": "1974-12-01T00:00:00Z", "itemId": "T5qlBekxw9pO3vyR", "itemSku": "viPljDYddTDwgc6o", "itemType": "nXfoDvjI9jfJFTHc"}, {"count": 68, "duration": 45, "endDate": "1997-08-02T00:00:00Z", "itemId": "MGUI9Z0Fol65yD1d", "itemSku": "LBQJcBsvUaK2iHOk", "itemType": "gyhgijqtdzrvCDzH"}, {"count": 66, "duration": 54, "endDate": "1995-08-19T00:00:00Z", "itemId": "m8VMHjC8qrxvZsJd", "itemSku": "3RBYL4PAqdviBvTo", "itemType": "SQ7EqHUhHn1qP3G2"}], "name": "kSIurSOWI2donULQ", "odds": 0.23853373138787726, "type": "PROBABILITY_GROUP", "weight": 7}], "rollFunction": "CUSTOM"}, "maxCount": 57, "maxCountPerUser": 16, "name": "Ssp87x6Jfe5YAYJe", "optionBoxConfig": {"boxItems": [{"count": 2, "duration": 67, "endDate": "1988-04-23T00:00:00Z", "itemId": "dtB5G8NITA0g58cq", "itemSku": "Zn79u2grirdqELbd", "itemType": "qXaPlAMGm4h3PbLH"}, {"count": 60, "duration": 65, "endDate": "1971-06-19T00:00:00Z", "itemId": "79hQA91csvlQSS6P", "itemSku": "yDb3vKbCw9eAGmM6", "itemType": "lPAJMizukBmcy1kb"}, {"count": 55, "duration": 100, "endDate": "1971-09-04T00:00:00Z", "itemId": "5FeKFm3raYpWl0Mf", "itemSku": "F3iAQb4Iiy26m51A", "itemType": "wCv4UKmP7eczfnYg"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 16, "fixedTrialCycles": 44, "graceDays": 73}, "regionData": {"2QY9BadKJj4HkL0m": [{"currencyCode": "k4HHDzXcKJowQbOr", "currencyNamespace": "gveLe4hYQEGcivib", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1974-08-26T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1986-08-12T00:00:00Z", "expireAt": "1991-09-10T00:00:00Z", "price": 35, "purchaseAt": "1982-12-08T00:00:00Z", "trialPrice": 52}, {"currencyCode": "Y29A1L1Xijb7GTIF", "currencyNamespace": "WcZWKcGHG9MBp1AE", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1995-07-22T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1979-02-15T00:00:00Z", "expireAt": "1996-06-30T00:00:00Z", "price": 58, "purchaseAt": "1978-10-05T00:00:00Z", "trialPrice": 6}, {"currencyCode": "kJzmy6DtxvO3nUiV", "currencyNamespace": "M7UfbH7Qv0Eyy6G3", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1990-10-16T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1989-01-11T00:00:00Z", "expireAt": "1989-04-16T00:00:00Z", "price": 100, "purchaseAt": "1999-11-01T00:00:00Z", "trialPrice": 25}], "qw6aiKZbUJQ92BTV": [{"currencyCode": "iMMFji1GmfmwhN25", "currencyNamespace": "xGSRRZnwlbMGheYV", "currencyType": "VIRTUAL", "discountAmount": 8, "discountExpireAt": "1972-11-05T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1975-03-11T00:00:00Z", "expireAt": "1974-10-14T00:00:00Z", "price": 18, "purchaseAt": "1989-12-17T00:00:00Z", "trialPrice": 85}, {"currencyCode": "nHGDNXw2L4mp580s", "currencyNamespace": "USlEfC6ckbV2y32k", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1996-10-11T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-11-09T00:00:00Z", "expireAt": "1979-05-25T00:00:00Z", "price": 48, "purchaseAt": "1971-01-05T00:00:00Z", "trialPrice": 87}, {"currencyCode": "2jDp3LzelXaUz9AK", "currencyNamespace": "ozXBA29DPhYa8Ksj", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1977-03-26T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1973-10-01T00:00:00Z", "expireAt": "1972-10-27T00:00:00Z", "price": 44, "purchaseAt": "1994-03-13T00:00:00Z", "trialPrice": 95}], "Gr7b2hHbaUEtBnsg": [{"currencyCode": "gbEVNmymBNr5C2BO", "currencyNamespace": "jUiOQVEbp3z13pDy", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1991-12-31T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1999-08-27T00:00:00Z", "expireAt": "1974-01-13T00:00:00Z", "price": 24, "purchaseAt": "1975-12-28T00:00:00Z", "trialPrice": 35}, {"currencyCode": "XatSimmKudqURkyz", "currencyNamespace": "4E3EI1bSCYaa8JSN", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1973-03-01T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1979-08-14T00:00:00Z", "expireAt": "1977-04-06T00:00:00Z", "price": 45, "purchaseAt": "1982-06-17T00:00:00Z", "trialPrice": 27}, {"currencyCode": "DGFiT4U6WQQwsTHC", "currencyNamespace": "gTvrGllrcttK4Wgz", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1994-11-19T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1985-03-04T00:00:00Z", "expireAt": "1995-10-22T00:00:00Z", "price": 99, "purchaseAt": "1973-03-12T00:00:00Z", "trialPrice": 6}]}, "saleConfig": {"currencyCode": "C1HnrPGydCRGPXLK", "price": 80}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "FW74DkabvmYAT6qT", "stackable": false, "status": "INACTIVE", "tags": ["6ZOaTNC1LAentTXW", "yBmb2Ir2yOaVvE1N", "52PwdeTQhMz99aZ3"], "targetCurrencyCode": "fza0rlzqNhVNwgXB", "targetNamespace": "CZr4m1UpizE7fm00", "thumbnailUrl": "IB0YnQ5xpjcMxUGo", "useCount": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'rYGleamVgjm0xqJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'fraXwzn0bbNK5rhg' \
    --body '{"count": 50, "orderNo": "41XUfp7AVnf8BzBB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'qEvMtJopw2r5pKsX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'nIYkKH6MNrEsOlIF' \
    'w6Fqa6YXBlVXOvZU' \
    --body '{"carousel": [{"alt": "gW2ZMVJhOyVaO1sg", "previewUrl": "nJF31EULHtVtkZrE", "thumbnailUrl": "0YPmtE6fcv3nPROv", "type": "video", "url": "EvGmmbGW3SttwZrm", "videoSource": "youtube"}, {"alt": "7xvbLKNa3OJMFdrQ", "previewUrl": "mX2OFLws9RV6lY9I", "thumbnailUrl": "GsZjUsSUE7NuCYEO", "type": "image", "url": "kgUfe6pVMS5m8aRI", "videoSource": "generic"}, {"alt": "eq2jCNZAKjBlI9fs", "previewUrl": "L6HEOiPcSKlQDo4i", "thumbnailUrl": "h358Lf5RXgVFrsR5", "type": "image", "url": "llsH39PXWtk222GY", "videoSource": "generic"}], "developer": "L58lP7drhfBjZFga", "forumUrl": "GUfhy5TZFoyfZ0Xf", "genres": ["Racing", "RPG", "Adventure"], "localizations": {"PDcH66JWKmTRqrvf": {"announcement": "JIrFQWIDC6PHVsnU", "slogan": "ueYd49OFDlbdIrxq"}, "xAtw8vLsYBHN6M7O": {"announcement": "pcFqK4FBJG8BfuSz", "slogan": "ytkPE6mw3Zv0zD14"}, "WsQt5oimAfS3Sh33": {"announcement": "TufYVdPwYmvZkT3z", "slogan": "o8gxMqM1wUdXsMjU"}}, "platformRequirements": {"bhRjnDrYWlRfPpgH": [{"additionals": "g36d9NP5nNvzIlwt", "directXVersion": "YI9wKX9V1XxF2CFf", "diskSpace": "Epf0qN2twLYXq4HS", "graphics": "EGpaUMmdPXWaJRdn", "label": "3WMdrhlWqCc54Jfy", "osVersion": "GzMMHiVQ6covYDuI", "processor": "4l1d9YaLVuL1mLP6", "ram": "5pId36F25c13PNqP", "soundCard": "n7XRlnqiWP9WWQMG"}, {"additionals": "mm0biVjE8A3EsOz8", "directXVersion": "LDnxgL0t7Qhdw4vm", "diskSpace": "SxnJcyaijSCsFa6i", "graphics": "pRu1AaFjz0yLelzM", "label": "zWiPzugdDu6rxIv2", "osVersion": "ZMtZX5KZK53tX2ox", "processor": "mEDDgGBgPWHmOLBL", "ram": "lsw2pDJDLeJwzbVE", "soundCard": "EQ0D6RcLpRxXCStz"}, {"additionals": "vOyY1tNKAVWv5cGR", "directXVersion": "m3WTx0oyOrycewrn", "diskSpace": "LBAZlvnOJeNxZdT1", "graphics": "fZJTutZpZZn6egDb", "label": "FDXW3N42ccGURTnJ", "osVersion": "UdR3MUQnEeANANjq", "processor": "BdfMMU89e6CIBWn2", "ram": "Q3kMtF5tiwPCAxM9", "soundCard": "oFcQUp7hrvKVNdGr"}], "r2TTTiTt8oRoQRf0": [{"additionals": "A1eAJUZSjWUPA9vX", "directXVersion": "rqLxUCyNQUITTM8j", "diskSpace": "U9tfr6NkPjb60b0Y", "graphics": "8RDVgsQzaeOv7xB8", "label": "GlNYJeVVZQH5C76G", "osVersion": "aeCobrGOAvaYctXd", "processor": "3jNOlJBjBMsJisMu", "ram": "1kQcGm0x3DmUahjP", "soundCard": "VDOEmwpWiJYxvvQC"}, {"additionals": "HIreoYDgNe1Ryydt", "directXVersion": "CBznu3BT2fe68sGX", "diskSpace": "FylcwoCMa2D9QtE0", "graphics": "TKRHukM2BVMu418S", "label": "3o2DKmAp8kt8156L", "osVersion": "7Wl7UfG3PbsgYDgJ", "processor": "0JRrcPbe1REA4kpx", "ram": "N9tCjk58n5fBl9xi", "soundCard": "CZH2KBHwuAW3jLkV"}, {"additionals": "q9bAefBF8tiF7mi3", "directXVersion": "iOrnB83a6h6dNfg9", "diskSpace": "f25YsZ1L6IGHuO7u", "graphics": "2tOUpmu6zULXQMir", "label": "zwMshTQYUnfHWyBg", "osVersion": "5c3Wq2dGygLo40eC", "processor": "b82j4OhaAiWk4TKx", "ram": "1WRjiCokzg7q7bMw", "soundCard": "xVAujRx0pyulY8ig"}], "LWA7yUanMI437Ne6": [{"additionals": "WvRNtbN9Eos8o1Pd", "directXVersion": "TDqm0SXzXNqw2oEp", "diskSpace": "tJsPYgvPnAlN2mJe", "graphics": "W1LQJ8A7NZLQPAny", "label": "29oO2B8osfAcB6Pd", "osVersion": "2uPwzliHiPYuwUtR", "processor": "55gCTACz3aLd0f0Q", "ram": "GkwoIQo88hLxgR5A", "soundCard": "JVEz4FiSPgU3FLs6"}, {"additionals": "LbIwwxFBW1RyUyU8", "directXVersion": "GVL2TVivHbcJX1mq", "diskSpace": "J4BtZCHdlmOzx9Dr", "graphics": "wT5dJMDgZPQtuRIV", "label": "Y69dhSr3JiNweUid", "osVersion": "BVB2vTyC482FeT76", "processor": "mWyDrmG0FHQOjtRg", "ram": "7ST2UVRJN0qFJaGD", "soundCard": "iDmatCvCembJFNyI"}, {"additionals": "wxPt19hjyI7ALyZH", "directXVersion": "Q8V4AejtUM6llcl5", "diskSpace": "hdZoPhVcQ4wXeArP", "graphics": "e089cqMuV8MLxiTO", "label": "3GhLJ2qx2h93yz3Y", "osVersion": "7YtgdQMhzpcpwawM", "processor": "F0j9IirMeP7fy5Y0", "ram": "RiyzWJZAZHklGmHH", "soundCard": "8I1l3xgoVyEemJDv"}]}, "platforms": ["IOS", "MacOS", "IOS"], "players": ["Multi", "Multi", "CrossPlatformMulti"], "primaryGenre": "Action", "publisher": "VCHGWcVrHG4ehIhJ", "releaseDate": "1976-01-06T00:00:00Z", "websiteUrl": "xUXpiOLFQFxY4AHL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'zQnClUtkXb0SoMLq' \
    'ijtgLSGTnWHCZ6Xw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'qnOeIUKAIvQjUxtk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '82oOOkHmCFldZ0XA' \
    'vFitLhI0sqjfua9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    '08SJmn2gM2q6wuaH' \
    'lnk9AFkbwVa7DCVe' \
    'gPEDDuHxwEbPLfnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'lMfDJxP4S8TNhXBT' \
    'iwS2sBodn1p1MJrZ' \
    'v1itpBPRbtgUMFAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'xhrY80cxjAXFOLYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'X2ryH4oq6fdhzarU' \
    '0VtmwcYLuVxqvaL6' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 20, "comparison": "excludes", "name": "bKYSr7IVc2WJyX67", "predicateType": "SeasonPassPredicate", "value": "Ad2SElOn16dw0nzH", "values": ["0VNzr8kTl05oiubu", "5HHlb7VI1cHNU3pv", "9XMG2c5BWrzKJ0Lj"]}, {"anyOf": 3, "comparison": "isGreaterThanOrEqual", "name": "8IwGdLKPo5zR4q58", "predicateType": "SeasonTierPredicate", "value": "QNlDFMazvRX5v3UC", "values": ["MnEcDHueqAKTjdRp", "obMU8bzcaf0Qv0dF", "gYeuitqLYJ7E9mP2"]}, {"anyOf": 57, "comparison": "includes", "name": "9qEel6x5O5otpujf", "predicateType": "SeasonPassPredicate", "value": "iC34s0kTiXwPjN8E", "values": ["JARpi5KzpbDPfXdG", "i4DVUYo37I8Mgh1D", "3wXz4Q1L3hAG9xOO"]}]}, {"operator": "or", "predicates": [{"anyOf": 29, "comparison": "excludes", "name": "cljy6EB8dB8wCiYq", "predicateType": "EntitlementPredicate", "value": "y16Jp7HjPDG07Xwu", "values": ["6ozETFSgu96JYKhA", "eyQyv10mRO0tK1CH", "ghkPLKDhdMf1o4pw"]}, {"anyOf": 60, "comparison": "isLessThan", "name": "9xM9T3YcYFOYmaaH", "predicateType": "SeasonTierPredicate", "value": "sSHLipk5N6e79zCf", "values": ["L2ar4zJmB2wifDA7", "zs9QmLReEZ0r6n6a", "LpND5zXLhrmEeBwT"]}, {"anyOf": 27, "comparison": "excludes", "name": "ryoVkl4tChuDibBI", "predicateType": "SeasonTierPredicate", "value": "lRCEQSp3XwOSNJT3", "values": ["qTjadq7tSbuLamxL", "B5f3ynPDyKkSYIIO", "9Ltl0k2ZOJHBnYPN"]}]}, {"operator": "or", "predicates": [{"anyOf": 74, "comparison": "isLessThanOrEqual", "name": "WhYLsAlPZs4v14XF", "predicateType": "SeasonTierPredicate", "value": "C3gIRiYFpDlAEyVu", "values": ["s1DdUL5bc6QMB9Tt", "nOP02x00SvR2yNPm", "vyXITMn2F86xZRHx"]}, {"anyOf": 69, "comparison": "isLessThan", "name": "XqeaYlaYm2XGN51w", "predicateType": "SeasonPassPredicate", "value": "p9aCLekZch7a3b0h", "values": ["FYqZQAUm9m9ht4Js", "tkf3M9oI3ymYms9f", "rC6ho0XSsR3HPQNr"]}, {"anyOf": 43, "comparison": "is", "name": "DJjPEF1LpvoOxT54", "predicateType": "SeasonPassPredicate", "value": "o5sDrk8BZ0jnV4jA", "values": ["AxGZ794ngDQya3dv", "S2mYl0sA87gQx9kL", "yjxR120zHmDzxvCG"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '8a1tEpNGaoJWjZSp' \
    --body '{"orderNo": "ZNjdKHqDX1jGg2X6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'ReturnItem' test.out

#- 133 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'QueryKeyGroups' test.out

#- 134 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "VHZOulL5KfkSA0am", "name": "HSK4Sz7fbw7cgHHv", "status": "INACTIVE", "tags": ["EPvqjKVvPP5x3gf1", "HnOzyuw55KAICc0N", "5AqnaH49QFksDAGU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'gVcYdzd3mUKKxi2a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'nNFpYXwE37QpBIY8' \
    --body '{"description": "LEEtCmsemV8gAHQa", "name": "itMhleY83sh3B07O", "status": "INACTIVE", "tags": ["XQWCZXaPi8oY6VkZ", "P57PyBLX7knj7y5q", "EOp7hzPCxvetFhAg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'AkkEhd3Y16uyKwJ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '13r4F9WC342Uggyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '64isEfxbFEabmT6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'UploadKeys' test.out

#- 141 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'QueryOrders' test.out

#- 142 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'GetOrderStatistics' test.out

#- 143 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'mgebEkQ73QcKQldx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'IqMgf2PaNJqIMDWJ' \
    --body '{"description": "UW3I4SKjp0NOc5dW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'RefundOrder' test.out

#- 145 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'GetPaymentCallbackConfig' test.out

#- 146 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": true, "notifyUrl": "nzAeqD1HlhQ1rqjR", "privateKey": "ECHyhLYGnvEdCjYs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdatePaymentCallbackConfig' test.out

#- 147 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'QueryPaymentNotifications' test.out

#- 148 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'QueryPaymentOrders' test.out

#- 149 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "nh0Y0rQluvKziVTC", "currencyNamespace": "PTrqHc7vqaXxxiGO", "customParameters": {"rXbWC2k23JxAI3kO": {}, "XwHnS2VOESYx49M1": {}, "JdtImLI5eTuHqCNt": {}}, "description": "VlNaGzoqpAFVT8Pk", "extOrderNo": "W7ouFIdlTuousRcr", "extUserId": "hXNAh3Cu4ou029lD", "itemType": "APP", "language": "zDoX", "metadata": {"3AaZO1VcAqwHJEyM": "rwNINM4zHFF9ucrE", "cYD5hjgrxoEVEIkv": "pWupGhtaU3oC1Ly7", "xHbAN2Bdv1CfQOij": "hEI21znti03vAJiz"}, "notifyUrl": "EosjuIsTXKAQ4uWL", "omitNotification": true, "platform": "LWL0HQkTuy4fU6Ej", "price": 42, "recurringPaymentOrderNo": "wzU7QiANYIF1YbEZ", "region": "wEzBNPCCnVKYp3EQ", "returnUrl": "x9pSofiZZNcWBxK2", "sandbox": false, "sku": "cBMbpsjgGDmxpN0s", "subscriptionId": "NW3RHxioyNedQ1E2", "targetNamespace": "lQg6rSZj7yw7aPU0", "targetUserId": "DqhD5agSwSs0ORF2", "title": "pLQCqPGUmF8pQCrE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'qdstmoPJurb0FVZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '7sonuzTm1gseYPsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    '00G8moKbti7cqKdw' \
    --body '{"extTxId": "nwTyTyr1XXDYClbg", "paymentMethod": "XA2XATEcyKtSz6Qs", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'BHqs2Z5aknpCHXIr' \
    --body '{"description": "8JndNzIiCZiPRCuj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'rja26Ygd7A1555Bi' \
    --body '{"amount": 8, "currencyCode": "LfdOF3VtCUZ0wN81", "notifyType": "REFUND", "paymentProvider": "PAYPAL", "salesTax": 58, "vat": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '324P82gdsOb5Jp6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Other' \
    --body '{"allowedPlatformOrigins": ["Xbox", "Other", "Oculus"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Nintendo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Steam' \
    --body '{"allowedBalanceOrigins": ["IOS", "Twitch", "Epic"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'ResetPlatformWalletConfig' test.out

#- 161 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationConfig' test.out

#- 162 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationConfig' test.out

#- 163 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationConfig' test.out

#- 164 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryRevocationHistories' test.out

#- 165 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'GetRevocationPluginConfig' test.out

#- 166 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "gNQjKhrrrStCg99e"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "hnKAMSw1WGHPO22m"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'UpdateRevocationPluginConfig' test.out

#- 167 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'DeleteRevocationPluginConfig' test.out

#- 168 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UploadRevocationPluginConfigCert' test.out

#- 169 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "MZsQ8CVsHXHYBx7K", "eventTopic": "kpRAaivn5yFNSoKf", "maxAwarded": 14, "maxAwardedPerUser": 40, "namespaceExpression": "yiZyNxeNJcBIePMw", "rewardCode": "BjK11IFRybWjjYkF", "rewardConditions": [{"condition": "vEHCnQ2BiPScmfoB", "conditionName": "Q1VO5Trcu36LS6o8", "eventName": "7DKPLLTcjU87C2CA", "rewardItems": [{"duration": 74, "endDate": "1983-01-12T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "iD5PxA5v9644D4d5", "quantity": 18, "sku": "nXc87G37jhABEz5T"}, {"duration": 8, "endDate": "1988-09-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kJ58wQyrAb67d9kC", "quantity": 51, "sku": "MEhGrQVQ3yKCwV9c"}, {"duration": 14, "endDate": "1990-08-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uDLXNscwbXgdwQnM", "quantity": 41, "sku": "avRNr3ysEp4sIwsl"}]}, {"condition": "UQociDSNS6hf28Tv", "conditionName": "yyZjEMbPRNKUABS8", "eventName": "cyK8SnSvsUGLqYJe", "rewardItems": [{"duration": 44, "endDate": "1986-10-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KJR5KWRgHuLJEAS7", "quantity": 31, "sku": "eNIfF5Ri6ydoL4tB"}, {"duration": 64, "endDate": "1987-09-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NIc86TKj3grgVdqS", "quantity": 31, "sku": "NfjnW9axvejxDQgd"}, {"duration": 52, "endDate": "1971-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "x7lPUWhfLYtrkZ2V", "quantity": 66, "sku": "jzXzilslRzP96yJ7"}]}, {"condition": "RbX8fkG3hcRbcSuS", "conditionName": "kd72wzQJjmhy4f9F", "eventName": "9usH1ByGD8DDRW0K", "rewardItems": [{"duration": 81, "endDate": "1992-06-28T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Ll9C3fSnntsqrUKR", "quantity": 63, "sku": "msU7QpcpkApFODOq"}, {"duration": 53, "endDate": "1986-09-24T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KRWcvJIwzW53tKi9", "quantity": 26, "sku": "4yxGcMcYyromMVFE"}, {"duration": 0, "endDate": "1996-12-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "z3hmDX1C9gHM8SS7", "quantity": 78, "sku": "mWFWKlSwI38LyDyL"}]}], "userIdExpression": "TQxmA6nDD3EFfeJd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'CreateReward' test.out

#- 170 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'QueryRewards' test.out

#- 171 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'ExportRewards' test.out

#- 172 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'QMQgWL3hmjUydsgd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    't98KfbaQpgEAKKLc' \
    --body '{"description": "KbPxGvL2c7KalLFW", "eventTopic": "BzkHql6eJa7PZ2Mv", "maxAwarded": 9, "maxAwardedPerUser": 41, "namespaceExpression": "xshOyL8KXBfLq1zW", "rewardCode": "LmtFhefMqfbE0DZB", "rewardConditions": [{"condition": "wK4s4YGhc9qjsGze", "conditionName": "dPNuJ4GH001y8DGO", "eventName": "7yuqGFaSZmLnl13N", "rewardItems": [{"duration": 39, "endDate": "1990-03-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "HP0LDshHSWtyrOFm", "quantity": 10, "sku": "HZNLJ7aPbRMRrbKj"}, {"duration": 29, "endDate": "1971-03-11T00:00:00Z", "identityType": "ITEM_ID", "itemId": "fZAWt13ISgdwAum4", "quantity": 2, "sku": "4Qo69tjPCe7O061S"}, {"duration": 4, "endDate": "1987-08-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7gSO3GHo6ESwn8ot", "quantity": 43, "sku": "WhSc6XIxh1HqBg5F"}]}, {"condition": "hY2vclqnTbyZ7fYv", "conditionName": "miZxdNpmibPCLiJa", "eventName": "HXEyuLQOO6qVUihF", "rewardItems": [{"duration": 51, "endDate": "1994-04-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "U4FdUceGtntm6j0A", "quantity": 32, "sku": "YwYTtGsRNij1bUAI"}, {"duration": 35, "endDate": "1990-10-27T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Yw673JvA3stZ6FN0", "quantity": 30, "sku": "oe9uJ8PAnT6lHom6"}, {"duration": 89, "endDate": "1993-09-13T00:00:00Z", "identityType": "ITEM_ID", "itemId": "KACMfaESKKo0RBtK", "quantity": 61, "sku": "qQycDpbOcYim2syY"}]}, {"condition": "c8YuKlQjnj5QjrVi", "conditionName": "62ITQp6NklXSUYkH", "eventName": "NYqepadIS0zRgire", "rewardItems": [{"duration": 87, "endDate": "1977-05-17T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "OA7WiIi8k4T7A6su", "quantity": 53, "sku": "mJGQU5YRHjMz3bo2"}, {"duration": 11, "endDate": "1993-04-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3XkwdkgeNE7pA2Bm", "quantity": 54, "sku": "blFr8NUmSdS49Cyb"}, {"duration": 94, "endDate": "1972-02-07T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "z2NXfbCObijIWdRS", "quantity": 61, "sku": "mnjBd7q6U3V1i7ip"}]}], "userIdExpression": "9ibQlReTecqcbggf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'eYn1FnvTuTrRI8Z8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '7U0Y5R6IUWUGWDcg' \
    --body '{"payload": {"SJ29TqsnbtXNBeq2": {}, "uoLHWsw0m7ZY46mj": {}, "kOA84jougrIsaMHm": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'zafNaxCNIzvOh61w' \
    --body '{"conditionName": "CAYs9Qae7TEBnzFu", "userId": "xHzrR3PiHyAFfiwI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'DeleteRewardConditionRecord' test.out

#- 178 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'QuerySections' test.out

#- 179 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'i9bI2X8C6xnSImJq' \
    --body '{"active": true, "displayOrder": 72, "endDate": "1983-09-26T00:00:00Z", "ext": {"to2cpXUnj1kXAEnU": {}, "9CvpIjJ6tB2fqN6D": {}, "76apW4CsuQx2nME1": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 90, "itemCount": 22, "rule": "SEQUENCE"}, "items": [{"id": "GIgW2AWqhlJfHgWS", "sku": "AjBmziLkAEWkqMo2"}, {"id": "uv4G0hb2TC5zbxqS", "sku": "MQf3ZXRgmEXKPavN"}, {"id": "UDslWRgXzKcDEz6i", "sku": "vQvlpRKagGd8OJWf"}], "localizations": {"XgBkof2DgN1OHBaK": {"description": "If5hoyD0oT4csEU6", "localExt": {"rwlyAZXRltXTRz9W": {}, "tMMb9e3S9biXun5f": {}, "D0BBCts02Kgz1gL8": {}}, "longDescription": "2ANle3vQP0F7CVBR", "title": "FOlmRZZrSiE7meOU"}, "Bb0ZMyPVBowpLOlv": {"description": "3wNvAi5e5Cp2Id8P", "localExt": {"qgbZMgBinMuWrJOA": {}, "vHxG7UhRxqteme7V": {}, "0mE4XANjqP7L1mgH": {}}, "longDescription": "Dq7oo2SQp9UXJYEG", "title": "Gpt55fVsBfrc4OJ0"}, "6MAINAypeu3ZwgLF": {"description": "3XSMYkGVjcYe2wwr", "localExt": {"uEu9pKFWxMrOrO7m": {}, "2fUVM4vgvN5a9nlu": {}, "a2qF5WhoaEpbMKCe": {}}, "longDescription": "8F6OE3PKy2vHH6Xr", "title": "Tj3i1nC0J9A8DUtb"}}, "name": "T9Nimqnzt0awizca", "rotationType": "NONE", "startDate": "1987-09-13T00:00:00Z", "viewId": "vDsw3y3noSTunCZN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '39o0vZqaSrHfwrqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'HXHpPnC56p62cEYB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'MPDDNvuy4MWHW8YW' \
    '1euC0ubVpUB9WTnY' \
    --body '{"active": false, "displayOrder": 26, "endDate": "1994-10-27T00:00:00Z", "ext": {"hs6Oydk9jSSY0aqj": {}, "jeExTo07XGD7r4dv": {}, "tuyipF1FB9RNF3G6": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 58, "itemCount": 85, "rule": "SEQUENCE"}, "items": [{"id": "weMmOIXU6IcFkTWM", "sku": "TXNI4WIT2qYutqii"}, {"id": "44IKSSMR4zJKYxou", "sku": "zcD0pPXkdTrLYN48"}, {"id": "A5DLkL19tXrv2bC1", "sku": "4hfBeKISP0coyLHG"}], "localizations": {"52kcFEHKN66TOzJS": {"description": "yl83HhHTDHO8mQoG", "localExt": {"OS84jEVRGn0aQHrm": {}, "MgGX6WiX9WPUEwP8": {}, "KagnEKkfRnTAD7nN": {}}, "longDescription": "uqrknaj1Fks8OhmW", "title": "shFK5hyfwqkxFeK2"}, "HSaUyXEOQUwXDX8M": {"description": "GlijaR3VVk7nD09W", "localExt": {"BTm7Hy1AvjH8TO5O": {}, "IzshGgQ4ThugQFOW": {}, "wlpo3MnSMNdjVtLt": {}}, "longDescription": "8CrUFIkcZk3UEaPs", "title": "taXtLCGf6Pjb7W28"}, "XF9eX2LXwaZwDM1C": {"description": "YDLmaPDEUbDvBUnl", "localExt": {"1NO7rLa2XTR4IEvU": {}, "0JE2kLOQb2CBEoV5": {}, "Nm182ykfY01Gcykf": {}}, "longDescription": "qRyXIVnis4SKjpYM", "title": "ZV5AVm0vOTpy2xya"}}, "name": "jHMUnKflmcC3pOWL", "rotationType": "NONE", "startDate": "1987-01-14T00:00:00Z", "viewId": "E15JzEvFlzpDnYuS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'qynNlJACpHVndrAR' \
    '7z9J0bNuepqWsDLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'DeleteSection' test.out

#- 184 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'ListStores' test.out

#- 185 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "zow7MvJGnWbcVqeQ", "defaultRegion": "S68NcKrOSqAvumNX", "description": "dNoD6gTOf0jHAc8P", "supportedLanguages": ["GncBz3SqYUIQnwGb", "MTiA96lnb5gdT3Qn", "V1lkyfpfTo2MX3Yv"], "supportedRegions": ["lKKTkjhbq0eRvkBW", "48O77tNIBYTFfPUr", "NUOX0haxwoUd3ezY"], "title": "Adypb6oWXYIQqBIh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 GetCatalogDefinition
$PYTHON -m $MODULE 'platform-get-catalog-definition' \
    'ITEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetCatalogDefinition' test.out

#- 187 DownloadCSVTemplates
$PYTHON -m $MODULE 'platform-download-csv-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'DownloadCSVTemplates' test.out

#- 188 ExportStoreByCSV
$PYTHON -m $MODULE 'platform-export-store-by-csv' \
    --body '{"catalogType": "ITEM", "fieldsToBeIncluded": ["NQXGJDWtQNJFHNbg", "t9uaoCeP9rZK0m4w", "hjNMB89Aoh6Jk84k"], "idsToBeExported": ["7R0603b1ChdDIpRn", "2HgPRevBMjempE90", "i47qjDQAAvYZZABK"], "storeId": "OA0L11TgHUfODRoc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'ExportStoreByCSV' test.out

#- 189 ImportStore
eval_tap 0 189 'ImportStore # SKIP deprecated' test.out

#- 190 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'GetPublishedStore' test.out

#- 191 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'DeletePublishedStore' test.out

#- 192 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetPublishedStoreBackup' test.out

#- 193 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'RollbackPublishedStore' test.out

#- 194 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'sLmBbV1sCNpADwyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'koh2Ufv88v1ngAJI' \
    --body '{"defaultLanguage": "sXT5AL1og70bKW5Q", "defaultRegion": "YtGAVQvqyIVadq2J", "description": "ITEaFYCmQEyL35Lh", "supportedLanguages": ["1cCBgg2D4HUqIhXD", "NwseD5BbL13OgHZy", "syny0912axRFeMgI"], "supportedRegions": ["QdJNm52k6wEP9rj7", "lO6vs4tMfHLoSkvb", "8lbFBtF0ILnxdtDe"], "title": "CtbUIxxTu6SQF7Bt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '4rvdiz3ZJfWFdytT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'pAVx0pd4puXNhGU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'RmYw0EwPDL8fEraU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'QnzcZCIvQUYP4zKa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'JuBk11UoFtSCgGhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'AxzoBKOqmwgAOXAy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'lHS3htDNYuRa6jU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'OLKdFhRNswdEfL1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '3SL7JlQ0WmwgELy9' \
    'cxgDaEUFiMTIV4pb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '5hZyPikzEmnmdOWG' \
    'rvu5JZsUPqtph4Z0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'KsCWhJPpmpjibu6W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'MYMScWAzVVdQZznM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'Ulqj2djHHFFRxJPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'ImportStoreByCSV' test.out

#- 210 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'QuerySubscriptions' test.out

#- 211 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'Hewpv9IeC6LAtGzN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'wZUe0kRnfBio030W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'DtRFRReZoX0eYwpj' \
    --body '{"orderNo": "uQPo1Bi27Mr8QiSB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'uE8WdxjHSrIcoNi9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'NFQFpBDG4baNqdGx' \
    --body '{"count": 82, "orderNo": "57Ra4Wlon8ZzeHga"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 2, "currencyCode": "N4kVmTj683Ybw4TK", "expireAt": "1983-12-07T00:00:00Z"}, "debitPayload": {"count": 94, "currencyCode": "4MCR5ZpvlWXRfEoU", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 45, "entitlementCollectionId": "NmQrq6p7WrYOBpl7", "entitlementOrigin": "GooglePlay", "itemIdentity": "LsKN46XLNfQ0SXyM", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "xhkSSID9PxPyXJHs"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 31, "currencyCode": "vikBnp1ILBujZh8S", "expireAt": "1971-08-20T00:00:00Z"}, "debitPayload": {"count": 67, "currencyCode": "b8UYH2Pz5V5CtSrc", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 28, "entitlementCollectionId": "aRP8vZ9a77wOP10A", "entitlementOrigin": "Epic", "itemIdentity": "I1PJybUmpLmiuZGk", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "jyFT8B6hECr4zqhZ"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 31, "currencyCode": "EqkFFyGp6XhgI2Su", "expireAt": "1986-07-19T00:00:00Z"}, "debitPayload": {"count": 50, "currencyCode": "18iHO0dKNHWBFM13", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 41, "entitlementCollectionId": "37X9HTu6c4mMUdJo", "entitlementOrigin": "Twitch", "itemIdentity": "qXSfSkxhrHhjWxkD", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 93, "entitlementId": "SLUIzzQsIU3IZf93"}, "type": "FULFILL_ITEM"}], "userId": "h6ERWyedt6rkPxW7"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 51, "currencyCode": "wXkYJ6aX6XRSXg6O", "expireAt": "1996-12-16T00:00:00Z"}, "debitPayload": {"count": 34, "currencyCode": "UhMXX7FiB3X634iu", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 5, "entitlementCollectionId": "8pqhqsqRF4kqMbz4", "entitlementOrigin": "Oculus", "itemIdentity": "dagEETj8DNzQF9Yw", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "VlJBmSCpF2z5O9ug"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Other", "count": 34, "currencyCode": "QxSDgH9L20T6fVxv", "expireAt": "1989-02-03T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "nHMYxf8xOR1DEgYR", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 17, "entitlementCollectionId": "mA4gy2QBm02aTdgp", "entitlementOrigin": "Nintendo", "itemIdentity": "cRdrrdOKQbXXiMg5", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "M7M8G78KZj2jWyKA"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 36, "currencyCode": "YP9kO0rmonOpgtON", "expireAt": "1977-11-12T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "vrDH4IXc6tn8XayB", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 11, "entitlementCollectionId": "734jCTSnRqHTWC4N", "entitlementOrigin": "Steam", "itemIdentity": "PaX8W0GvPN7gRfsy", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "UC5w7fmzF80bbGhU"}, "type": "FULFILL_ITEM"}], "userId": "pjVwMsLdJrt5FnAI"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 22, "currencyCode": "4y9yy462Mnwchld3", "expireAt": "1990-08-09T00:00:00Z"}, "debitPayload": {"count": 100, "currencyCode": "J9GOHxUkZCvqVRe3", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 47, "entitlementCollectionId": "78EGvZd49hW95i4R", "entitlementOrigin": "Nintendo", "itemIdentity": "XfJG3psjIBzjaFmN", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "5GGFvLtWl66DAEkA"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 44, "currencyCode": "qNdnEfei54fLtFTR", "expireAt": "1982-10-17T00:00:00Z"}, "debitPayload": {"count": 10, "currencyCode": "Gi5l0G5NBtXVTXK1", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 74, "entitlementCollectionId": "oClQQGLneKl3iXOv", "entitlementOrigin": "System", "itemIdentity": "T5EB5GCOCowERMve", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "iI5BYvV5LF22GlLe"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 39, "currencyCode": "QRsZpn4zsR2KwSIl", "expireAt": "1997-03-05T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "JF96NG7vODPmfnV8", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 98, "entitlementCollectionId": "Or38jFYjFRDj47EZ", "entitlementOrigin": "Twitch", "itemIdentity": "CCwz8yawNImZdPzt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "oNSL3vqGgJOWkI0s"}, "type": "CREDIT_WALLET"}], "userId": "phIU3KaP7nk9iEaq"}], "metadata": {"udy3aYo02pzHannS": {}, "LeEYvuciynwWb01H": {}, "Lrp6OW9Y7FIIEJMm": {}}, "needPreCheck": true, "transactionId": "Kizs3NRbyYMyWPHp", "type": "8NpreWtVtRQu0coT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'Commit' test.out

#- 217 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetTradeHistoryByCriteria' test.out

#- 218 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'hNxwnnpoM2KSoHlp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'DFImJNovlZq1O6RD' \
    --body '{"achievements": [{"id": "UgilQHCts6SUNxUW", "value": 71}, {"id": "JMvkh08NQQhBIt2H", "value": 11}, {"id": "PvWFnJMiszwcYW9J", "value": 51}], "steamUserId": "v5XrQvTAdisxP0Dy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'xqSYeCl4gEZgIMDA' \
    'La4nsITUeFKNh8kg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'mMjBxD74LujtGQD9' \
    --body '{"achievements": [{"id": "sT5LHkWjFIo6VbU9", "percentComplete": 12}, {"id": "gT6XUEeRKSDbomdW", "percentComplete": 99}, {"id": "hjEmcjJzkf7rNu3Z", "percentComplete": 53}], "serviceConfigId": "8J8xso71ULeHVV40", "titleId": "sjQ8mtTN08V3MMSr", "xboxUserId": "rV6FB8DFwD7WXkw7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'te8pQfvxY5zPZKMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '5ItnXbDbXW9KlfgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'vjjjExRk4JHYGa2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'nyqvFCYJOJl9ljs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'WPwxzICEykNJeEn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'eiosoCvrGeDygOZb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'A1UGLox4eJuvLmou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '5AtB5J9XxYqy0HcW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'UCcahA1tjiBugkSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'A8prRvnuoHm9foRL' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '4zSxApJe0aplQXEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'oGjonwKDYwjvKhxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'taxd74bEkQ8XN3xQ' \
    --body '[{"collectionId": "0KaIZ1ISja5TxqN8", "endDate": "1993-03-15T00:00:00Z", "grantedCode": "XvgNzoX14Km851zH", "itemId": "cDdphWEIlBnOKyfA", "itemNamespace": "bdUB1OM5oKTXANle", "language": "go_sLCH_460", "origin": "IOS", "quantity": 26, "region": "grqAIaKAUBfyFCxs", "source": "GIFT", "startDate": "1984-07-23T00:00:00Z", "storeId": "bJnqDKuBGWmZti7V"}, {"collectionId": "J7O7dNzDBzVmGSho", "endDate": "1977-02-25T00:00:00Z", "grantedCode": "l8uD1hpBtpd4eLc1", "itemId": "PpHJmrL7AZ1MKcHB", "itemNamespace": "B1AfySUMZOWhtQEr", "language": "DZ_Phil_713", "origin": "Xbox", "quantity": 97, "region": "KUFWLtsLf278ybCN", "source": "GIFT", "startDate": "1996-09-12T00:00:00Z", "storeId": "TsGmv1XM6sr8tSaA"}, {"collectionId": "0g0OCIEQYU4pHU7K", "endDate": "1975-07-27T00:00:00Z", "grantedCode": "rz4HAGIJOSxoJdII", "itemId": "w70J2JeqNTxshoZJ", "itemNamespace": "nsAkX5sxny0WLYMN", "language": "LJ-rLWY", "origin": "Oculus", "quantity": 70, "region": "O5JGco1tRG98viuY", "source": "PURCHASE", "startDate": "1993-09-29T00:00:00Z", "storeId": "THKPcc8Z82Wtwcih"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'C87O1U2uYktiAFqI' \
    'sHod9kt3xkRSajXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'TpU3aCkzqs0hC50v' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'oRNWTVvIN7c2uh7L' \
    's9nxKiaoWmrw6n7V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'YPrZA5UWNq6yTj5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'ST6JF9lLvPS5jJ58' \
    'vaRaaxVQeMUb1kvS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'j6jcjlxGsLgfrhBT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'H1QV91XmB5Z6en6c' \
    '["5d620U9addYCAtuT", "x2FKoGRQ2i1n2WJV", "Jy6yBPVmpbwVG3Mw"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'Hy6yQU2RSNGWKnND' \
    'FZOok9snWC9CFiRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'bELIzawfXvKu5Usu' \
    'FOUXohEHKCKphTii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'tyfpZixQMzfhG3hC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '9Be3Cvn1QymYMLAd' \
    'BSViPHKLXkQVWSLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'AXxxeatall18E5J9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'knaLMlveXWFZqota' \
    'iZN3MPuYWk5lHvw9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'RXrx8aUB1xXuK2Mw' \
    'rRJukMTkO00KLgdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'r0UUiy5jm1w2g65J' \
    'kaoPuBsuSb0LePf5' \
    --body '{"collectionId": "b8MJ94DAh1Mc7VkH", "endDate": "1983-06-07T00:00:00Z", "nullFieldList": ["j8k5KSFtbEoEr5Lq", "KRRnKy17sBYlx7rz", "Em3km2jjNrqEmuEf"], "origin": "Nintendo", "reason": "JRpqZEUH2Rr5lkfH", "startDate": "1975-06-15T00:00:00Z", "status": "INACTIVE", "useCount": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'VCMpunzeSPkf8Y5k' \
    'siqVvcGZxTP7pduq' \
    --body '{"options": ["X3e9tt0zz5gs7Yuy", "xJLe1TkfLiM9Eqyh", "Fh7mq6sgk5cHaJYk"], "platform": "zClqPty2kxgyry1M", "requestId": "M9eo43Qi5cRehBB7", "useCount": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '1P9wjSBBxjKNvNPi' \
    'wIMR5JsbLCG20BKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'uTGRLmLwLS7dIB0a' \
    'GjtNbryvmkemouOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    '0GhKNxavCN2N47Hb' \
    'R5lY76lAzKbyHphq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'wB5Iehzt3ErL5T5r' \
    'vBRXJxUvm1xIvCyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'A95KVla3LCTgTkPt' \
    'cVfRHox2lJjo1I9g' \
    --body '{"reason": "luGDrbO6CoGGaGBb", "useCount": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'TK1CF9X9mTmMVfQa' \
    'iQKdHknLotplfBOv' \
    '38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'JgVZofu7lNuwrS7x' \
    'f7BiZI9Jujxs7GKf' \
    --body '{"platform": "2LOlVbEWajKUr3rx", "requestId": "7Sdt80ugFtH5gSuR", "useCount": 73}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'v1azJ2OSkJGMDAkW' \
    --body '{"duration": 83, "endDate": "1974-12-12T00:00:00Z", "entitlementCollectionId": "oEK35CZu7WE18eU5", "entitlementOrigin": "Oculus", "itemId": "Gnj7nGzgSkTy0cIm", "itemSku": "2Tc4sbYVp7amyDRQ", "language": "k3QGp0uzzvAfa6BW", "metadata": {"7oGw2U9LoHWS4koa": {}, "uo9jkTEI52B8LI9v": {}, "MEB8OHKsqKaw1EmC": {}}, "order": {"currency": {"currencyCode": "xOMl6uh44gPPfiJZ", "currencySymbol": "CSkIQI1h6OjoUY4Q", "currencyType": "REAL", "decimals": 50, "namespace": "cerXxPodPokDUivf"}, "ext": {"NI3KdSIbTi8dxU11": {}, "tPBlMCz6SSpxt0aZ": {}, "Zr3SbJHkTstBGTm2": {}}, "free": true}, "orderNo": "HVEoRljsGF5AYZlE", "origin": "Other", "overrideBundleItemQty": {"qTVSCLemvpJXl2dr": 11, "quwIrGgk3eqgOf7W": 47, "BOlhg63PduP0G77o": 47}, "quantity": 99, "region": "94gqQYOWGw7LSW6K", "source": "ACHIEVEMENT", "startDate": "1983-01-16T00:00:00Z", "storeId": "otdVBjacY5doQGhc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '8zSCeJ4Q8PHY6vGz' \
    --body '{"code": "NfPWTQ1pJMwPVAUN", "language": "gp_euGP", "region": "iDNLOJJmzGW9AQMD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'naFw1u7BLbxxmghZ' \
    --body '{"itemId": "p6iVAJ6lYOK3cwO9", "itemSku": "ln34fiLxPN5xKoNN", "quantity": 42}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'd5p2yVsBAv2ZVlrn' \
    --body '{"entitlementCollectionId": "lY8y91hD1ZHh1VjL", "entitlementOrigin": "Oculus", "metadata": {"PymbIAwDAyNBagGD": {}, "33WMVj7bfdfxyqKQ": {}, "4YNnTTwZeuX7f9iY": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "QkXAns7VrdNH8v1o", "namespace": "P98hanhE18UbY1Zk"}, "item": {"itemId": "rfk0Xn6jwfR02GfM", "itemSku": "rXzI7oWD1mZ9rW6Q", "itemType": "dtPe4YleMg5NGs1P"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "LwoMxshoo8aHsXJ8", "namespace": "7ywdDtou8Np74s3R"}, "item": {"itemId": "Le4gpS550eQ5WiZi", "itemSku": "QUzC0vBF108QVF9g", "itemType": "KmJBuqEpgnV3xNdP"}, "quantity": 58, "type": "ITEM"}, {"currency": {"currencyCode": "PnrmZDNctQe0IM58", "namespace": "6qYdNvmRITEU7usH"}, "item": {"itemId": "knnfYNY7ZXicpAJw", "itemSku": "7Ct9AmEoUNlmQjeb", "itemType": "aV8c13FZxX6qNntg"}, "quantity": 26, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "dqhreKq9si5LTZGj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'fJI0GRPR9FWa3sAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'KnzZ5Joq98jWszWZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'xmbhMr5aDNyd7VDh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'ThmXAsBwC4MOmSF5' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "kLy", "productId": "lLk7pTvUfmra4esd", "region": "Z2v5vKHsJ5DezdlR", "transactionId": "lTTSLmDolGdb7yXL", "type": "STEAM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'E0dh077pXU34waII' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'RxeTkl27M6AggzKZ' \
    --body '{"currencyCode": "3nqWutrpjBOnBeqw", "currencyNamespace": "BnFdy01mQjVblM1G", "discountedPrice": 27, "entitlementPlatform": "Xbox", "ext": {"RxhI4XnmuQN65HKi": {}, "5qvwLIqgfXvKjhXc": {}, "fKE45hKdn2Ay5Kgt": {}}, "itemId": "Wue3XkqcMKE9l0uR", "language": "kf5RxDdVVe0VvPme", "options": {"skipPriceValidation": false}, "platform": "IOS", "price": 80, "quantity": 10, "region": "kvuqwvTTB6lW4R7V", "returnUrl": "4J46ZNRNpLcI8Vh4", "sandbox": false, "sectionId": "Bpu24ga0d3NvXvIg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'vIynEaAcX7fXbKWm' \
    'raqNIKPX6gPHT29w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'kZwM8cvObRjKxi25' \
    'l9mb1mSJffUaLwOs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'YRIJearztP7sqwra' \
    'cbiPrT7cARnySCNl' \
    --body '{"status": "REFUND_FAILED", "statusReason": "SoaoiAtMgNN8B4oo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '9jFmBqiyicQHvr1z' \
    'REqWwsQaxbdG9IxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'oxcgOEmGQpzN4HM3' \
    'v5wAiimBQXCxR1cO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'bsys0SaqnYIBTANs' \
    'hJcdLEofyiS3dO8j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    '3taWbShXMN0MRNkM' \
    'X09nQEwFSce6VsIs' \
    --body '{"additionalData": {"cardSummary": "SSdkP3IqaPaXJc57"}, "authorisedTime": "1972-07-25T00:00:00Z", "chargebackReversedTime": "1995-11-12T00:00:00Z", "chargebackTime": "1992-08-10T00:00:00Z", "chargedTime": "1976-06-07T00:00:00Z", "createdTime": "1971-08-27T00:00:00Z", "currency": {"currencyCode": "Pi2FDgx1gJONPjy1", "currencySymbol": "ei7AZBrLdMJG912C", "currencyType": "REAL", "decimals": 49, "namespace": "lSQiwrmWKb8IhCNJ"}, "customParameters": {"qtCtGvxKwuL3MuhH": {}, "Xzy6WjNeNYuVWrqx": {}, "rNDhsaw4vbDPKG9a": {}}, "extOrderNo": "UuCw1ys0BxLbujuX", "extTxId": "wWEJUvl8k6CNRAfp", "extUserId": "1s21wulz8cb64KjG", "issuedAt": "1986-07-20T00:00:00Z", "metadata": {"HolxRGH5sQmA6XL9": "p83Led5r4J7MEwKx", "tP0SkagDcL89Pjvt": "waUDi2fDyXlYJu8b", "IkkFh5LqxA2jff0f": "TRIYip6c9di8Jeef"}, "namespace": "XJ2PdIoHdoDHgvwc", "nonceStr": "WxlmJoJSnhyf4L6d", "paymentMethod": "Z66Zi7azAJHL5PE9", "paymentMethodFee": 90, "paymentOrderNo": "JZYIgyBXZfTmD5U7", "paymentProvider": "STRIPE", "paymentProviderFee": 92, "paymentStationUrl": "8grcvFvYajtvdiqy", "price": 58, "refundedTime": "1984-07-09T00:00:00Z", "salesTax": 68, "sandbox": false, "sku": "EBSrOk54EyWalLjC", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "YC46l63YRc0T3d9X", "subscriptionId": "aFEWXtvTExHo1Hli", "subtotalPrice": 87, "targetNamespace": "VA9kYxDaegAgXI2c", "targetUserId": "iZ5FWoyqYl8KD0zl", "tax": 65, "totalPrice": 84, "totalTax": 39, "txEndTime": "1976-09-28T00:00:00Z", "type": "tcFGPdVe0VJQksEt", "userId": "Hq5KHA9baTP1jNjp", "vat": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'QHt78b3DT7qRYPx0' \
    'W6cXzOdGXLsEc8Xz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'mjXX4csMlaBkq9QH' \
    --body '{"currencyCode": "Eb66Bo3ALdAKAQUo", "currencyNamespace": "GDOUFK4BcWOxnwer", "customParameters": {"ZoIJ2JMtHAD8gJdK": {}, "4CJBY63ASIuZtE2W": {}, "uycIdVm37lVyVYhb": {}}, "description": "j7X96t5WMLdod5DY", "extOrderNo": "qp6XDPJmYDZqWoL8", "extUserId": "k0jEDj1R673CfYbn", "itemType": "APP", "language": "KS-Fs", "metadata": {"13EvjSbGYcLQEocU": "fUPAI2O4xXXwCsNt", "kQh3rUUKaN66Rjkt": "9zWkx2SjE4MM82Qw", "4C7p4YKcL3qt4lUC": "jplpfxQDpz3ka75G"}, "notifyUrl": "SPrezfQIy1FsYo03", "omitNotification": false, "platform": "XeUSuTJRHgBRpSb3", "price": 67, "recurringPaymentOrderNo": "N38dVbdD5L9eqq8P", "region": "stBnVeYTD7i7fqOS", "returnUrl": "ZxwOb5jkz9ihTe86", "sandbox": true, "sku": "QA6nI1VhgTvfzwfg", "subscriptionId": "RZntMhunn3jSCD2A", "title": "knCwPe4TX4CK4IBY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '01KuFbs8Iv2Ij9B7' \
    'VD3SyR3UCMUtsTLo' \
    --body '{"description": "eVLjxbwUQUVEWE0x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'tN3v8DgFUrjRGzth' \
    --body '{"code": "YJKH9vhOLpoWOSJS", "orderNo": "0kU6fD66yb2MtSEi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'Rgh67ylD9xIb44v7' \
    --body '{"meta": {"1qZ2QmEuNVKEmoFS": {}, "me2B5xb6kbzroGyr": {}, "FwTSdzLOXwPp0OS1": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "ijZETizaQixMgpWQ", "namespace": "9PgUcB3N69aWeqMy"}, "entitlement": {"entitlementId": "8NAiT9jmCgwDPgvb"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "uMUpS3K4kKGKct8S", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 44, "type": "ITEM"}, {"currency": {"balanceOrigin": "Oculus", "currencyCode": "sZzj7oPP3OeZVILE", "namespace": "aXbHnhR8gT3if17n"}, "entitlement": {"entitlementId": "sndhy0Gtga4xRRNi"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "PXP6Snc4UqgNJcVC", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 17, "type": "ITEM"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "MHjVciAVrPuzKV1W", "namespace": "j7J3QrgnhZMehNOn"}, "entitlement": {"entitlementId": "cXNM18ZiBLaa5iN5"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "2wACiUOAYJUhwTgl", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 100, "type": "CURRENCY"}], "source": "IAP", "transactionId": "eteBSz425Kp2PGW8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'gpXu2mBdRvF84eD5' \
    --body '{"gameSessionId": "m02245YlrGlfgrzL", "payload": {"ifZvRPXjiYCPM52H": {}, "K8ASyze4T9TmQupO": {}, "zuaRV8Vw1OuyVC7J": {}}, "scid": "cK5UdheuW7HOMooX", "sessionTemplateName": "zmW321H7CGe7BlGb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'NTtvAEsQs0WkD6Y5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '55p9oqb5MeMGL8kI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'TGmF087BWKC6wzHg' \
    --body '{"grantDays": 46, "itemId": "VCnifE0YS9KhgP8r", "language": "RhISjcIvS4I6tzdb", "reason": "pIKoQhtOlKvnpfkW", "region": "v9kQ9FRDgAEVfEZs", "source": "hgoviRWdaswUzfV3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    '6Hwf7gG4iNZfEJ6P' \
    'GvsYDnaTT5U0e2LY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    '7yB5EiqQhvZmCSsw' \
    'SPGcfasR2Nrrm0JB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'GkT1hNjHr2icYZYj' \
    'akKtgPfJHbuwF3aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'QrVPWyZpnVjbpotD' \
    '8HTOOdvA4UhdTY2D' \
    --body '{"immediate": true, "reason": "Qjoaq06aI2zoqmaP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'gdCvQwz6hdCMrHgp' \
    'PD12BS4Q8u6QqK4C' \
    --body '{"grantDays": 8, "reason": "XLLDtNRfmo1w8aAc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'uRQzdYhuES7BncXf' \
    'ilyRfU4YHfMpHxEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'JG7c76AToup2zhRn' \
    'g3KibPdtHZPKb8CP' \
    --body '{"additionalData": {"cardSummary": "LdIk4I9TU6FvvEdq"}, "authorisedTime": "1988-07-26T00:00:00Z", "chargebackReversedTime": "1988-09-05T00:00:00Z", "chargebackTime": "1990-08-25T00:00:00Z", "chargedTime": "1989-06-06T00:00:00Z", "createdTime": "1981-04-06T00:00:00Z", "currency": {"currencyCode": "ZSng8Oi6TDpSGwc7", "currencySymbol": "wXieEOkn4KNYWbvs", "currencyType": "REAL", "decimals": 53, "namespace": "tsOVvpKYJyOQGUiq"}, "customParameters": {"cJ2Jldy73ukTxjfH": {}, "XQQVmxHmCVmuzoO2": {}, "qep49tDHFl18cQlJ": {}}, "extOrderNo": "CgKFmN851YX8ylpv", "extTxId": "3hDDLL1n4On03mTo", "extUserId": "MhBjPD6aztTyMQgh", "issuedAt": "1992-05-28T00:00:00Z", "metadata": {"WOOAzTmCVFEHDMT1": "eDVbcvyxtTxuptcO", "YSTj2AWA5f61ztkS": "pGmf8BXosNylCwcf", "2iVxv9QtivQqeRyP": "orhTuFn3W0qApZ98"}, "namespace": "a9g9AjLDQL5jZbyj", "nonceStr": "CnTkYE0HYHfBc64z", "paymentMethod": "DQawQPbbbHLcaHmX", "paymentMethodFee": 88, "paymentOrderNo": "Ql8DlY91SXBeHwrk", "paymentProvider": "ALIPAY", "paymentProviderFee": 59, "paymentStationUrl": "p7RKEcLehyAowu72", "price": 30, "refundedTime": "1985-05-12T00:00:00Z", "salesTax": 95, "sandbox": false, "sku": "dMES0mVVI1FilcO4", "status": "CHARGED", "statusReason": "GWPVvOhMTdfTjLVx", "subscriptionId": "zjyQsgv5n6Vn7Tia", "subtotalPrice": 21, "targetNamespace": "HulJHhAnY7QeDSRr", "targetUserId": "oVkXb4xPPUmUifQv", "tax": 11, "totalPrice": 30, "totalTax": 1, "txEndTime": "1998-04-20T00:00:00Z", "type": "YfuaQ7gPgiz2EBME", "userId": "5ikH5iUT9GB4bGcY", "vat": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    '1v2y9Je7apQfNdDy' \
    'T3a0EGpHgGLUqdG3' \
    --body '{"count": 21, "orderNo": "V5fUvb2OK8scK4My"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'Iy9F8aBXzn8z72hf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '4D4NOpbUDnyVmYot' \
    'ZCA9LADbjj6viKPQ' \
    --body '{"allowOverdraft": true, "amount": 31, "balanceOrigin": "IOS", "balanceSource": "TRADE", "metadata": {"1kZWnqjJaGGTFaJH": {}, "ecFy9m5s6oIWMnk8": {}, "8GXMrS82vN0N2236": {}}, "reason": "tI7v0x9St2EFfU2F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'byIXierPr2qLKBXR' \
    'Yt7v7Wfg2omS11Yy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 72, "debitBalanceSource": "OTHER", "metadata": {"WGPc92PcmK9zTgGQ": {}, "s1FIKxCXUhNdJ4cK": {}, "7rz2VPJ8AZ9i1ml0": {}}, "reason": "sbgQ5zPZbllwvt3T", "walletPlatform": "IOS"}' \
    'mxb5eaYqdXkBqt2U' \
    'frBE1JhOOdYFVxYR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '0XhaQ30cHb0re0TJ' \
    'wuS3NPZi6h1nN0tx' \
    --body '{"amount": 3, "expireAt": "1971-03-06T00:00:00Z", "metadata": {"TIntj0rekmCKMOHE": {}, "he6apnthJsQpzHxE": {}, "siEsZH3UVmVcOxU0": {}}, "origin": "System", "reason": "J2qMul8cl55U4RB2", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 80, "debitBalanceSource": "TRADE", "metadata": {"4UiM8xE2iHgKDtYU": {}, "BWq18cbnbAjszS84": {}, "wsQH451BnJRGwBPZ": {}}, "reason": "82ML7i85xAiG2Fle", "walletPlatform": "GooglePlay"}' \
    'iqNPeymXgMK8gaxY' \
    'cDDZjCrklUdoPRrS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'lMOoEllCitDiZDBL' \
    'qmmiE0hD2A6L9zZJ' \
    --body '{"amount": 31, "metadata": {"E9E87RTBvlu7lo1f": {}, "oXU28IE7EVvQkoqO": {}, "ZIFeJQSrnPscIMJR": {}}, "walletPlatform": "Oculus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PayWithUserWallet' test.out

#- 301 GetUserWallet
eval_tap 0 301 'GetUserWallet # SKIP deprecated' test.out

#- 302 DebitUserWallet
eval_tap 0 302 'DebitUserWallet # SKIP deprecated' test.out

#- 303 DisableUserWallet
eval_tap 0 303 'DisableUserWallet # SKIP deprecated' test.out

#- 304 EnableUserWallet
eval_tap 0 304 'EnableUserWallet # SKIP deprecated' test.out

#- 305 ListUserWalletTransactions
eval_tap 0 305 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 306 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'ListViews' test.out

#- 307 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'wN2LHFkXjhDf4RPT' \
    --body '{"displayOrder": 92, "localizations": {"13Mh9tHYQilnHrNI": {"description": "7XsRCD3YOzMK1ZWO", "localExt": {"xnVMpyEziAPi9dBg": {}, "5J0me0BhvZVrOsZS": {}, "qQjmdJGa6AahLvhI": {}}, "longDescription": "fKDFkuldV3vhNCAU", "title": "QUVGJTsED5tFgDMl"}, "uY685drsUwaWMLdL": {"description": "GDjtirdqDck0QFov", "localExt": {"elKxdFe87vTbT1yk": {}, "evWiIoubexJQ22uV": {}, "5cRj529cEGlYlBTF": {}}, "longDescription": "D4MBzAgdtJfaktaC", "title": "bkIORjbuZi76GDzk"}, "sM1Iq82IG598WdAh": {"description": "vjsHqU3mTbQzxkHX", "localExt": {"SiDFpwgjtHkQyb5y": {}, "oi3fhBKutgKyddON": {}, "rCA3C8SvqUKqpSaq": {}}, "longDescription": "BWWsEePoWos4O5MR", "title": "xu5cYFtJZeinW64n"}}, "name": "9q4asIfg6qpRvHGY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'NAfvls7pbw9yPFof' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'HSVjTbM9IHL2Jcpn' \
    'LuindE3Ucg05FtWi' \
    --body '{"displayOrder": 41, "localizations": {"TeA9eq8hIKrzAUsK": {"description": "qpjQGHI3Wkg4HIrE", "localExt": {"mqfnhjjtIQ7ipAfw": {}, "6xTfJiEwGhGbMCnu": {}, "8NHDPiOQzKhR4x3p": {}}, "longDescription": "Yj5be9x03hTzeUaF", "title": "K6P6yxOlFhdtyrLQ"}, "Hkz1Es8nQbk4SztM": {"description": "OdFHQXjAZrDNCoJ2", "localExt": {"2RroweT9Xanvbg8n": {}, "AmHsrmzoPN3GJz77": {}, "wPralgkstRsUi0oa": {}}, "longDescription": "ze9bInjdq27RgguQ", "title": "45JSoDgfLayvPNWm"}, "vzOaDtopfGPnF4i8": {"description": "PP7jdmy3KsRDI0m4", "localExt": {"nKNGlXp2jJfLGd0z": {}, "QqYmGkk8Pcq83l2h": {}, "WOuqsilAWXNFfxIW": {}}, "longDescription": "M9jL08jtCIr8STWu", "title": "iyz2eOgny7d8WVlc"}}, "name": "OTKoZimYNHB2ph25"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'oEsCRrlY6AX1ksmS' \
    '6Cm75yFZVt1HZPcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 3, "expireAt": "1990-04-02T00:00:00Z", "metadata": {"hB2mWrW0A29UflIq": {}, "BalvCur3yS6PcP3N": {}, "8ee3aFSyZkpxzyGW": {}}, "origin": "IOS", "reason": "H3XOJlQfOCN2keFN", "source": "PURCHASE"}, "currencyCode": "QwW44r5yXnevZsdD", "userIds": ["btPAZsNwKWlHT7wm", "9Iip75t7Rgtj7pKn", "vO6YDgQ4TLdkZgou"]}, {"creditRequest": {"amount": 95, "expireAt": "1981-09-05T00:00:00Z", "metadata": {"7JMOvmbqHpLDqY64": {}, "bsfWMA6zIWiASrar": {}, "IiILeXO18VYOBdYd": {}}, "origin": "Oculus", "reason": "Sr2B137kVZhkISgO", "source": "REFERRAL_BONUS"}, "currencyCode": "vMMPlJqY7ujDDLuo", "userIds": ["MkPiEKRgT1zZPaKl", "QJspLLZbnusI9Nty", "8KpP0RHI8icuY92i"]}, {"creditRequest": {"amount": 29, "expireAt": "1976-10-09T00:00:00Z", "metadata": {"GhmAMgJu6c1uzCA6": {}, "57ulArgYuyjFEveR": {}, "vl0xjoSZYArBlpKX": {}}, "origin": "Nintendo", "reason": "24T1DBdzzVbhZKnh", "source": "REDEEM_CODE"}, "currencyCode": "FfHsuwhOtgOWtZuh", "userIds": ["FDMoqbLU4KGsevVG", "Ap0yxLpfWB0inH8x", "PnqXXPustpaZz47m"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "ZuZptSindV4Kpifm", "request": {"allowOverdraft": false, "amount": 95, "balanceOrigin": "Other", "balanceSource": "ORDER_REVOCATION", "metadata": {"4ybYG4wLaPxhpGOD": {}, "mwJCF4HCv6DG2Dfo": {}, "gFpQ6h4G1JwgwqyI": {}}, "reason": "OpmNMgpfDY1FR9rK"}, "userIds": ["YipwCDOc9FNs0rjV", "axaWsCGgI79Hr331", "Hzs9C25B5DYIkGco"]}, {"currencyCode": "YjLN4VPTXzknDz9Y", "request": {"allowOverdraft": false, "amount": 56, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"Cx3pnw2UqOcXFVD0": {}, "pboKkDZJufSvoXGy": {}, "r43yZ4vipgYCZiVh": {}}, "reason": "uUlRF8bgS0Z3T7DC"}, "userIds": ["oIW8rduVEpRjbhlZ", "8rATgmfiV8x6LtOu", "5TO5zuEOtCw7S3b8"]}, {"currencyCode": "3SAtYQcZ2M0m2eu4", "request": {"allowOverdraft": true, "amount": 2, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"77Z7VYCzMbz1C3Zt": {}, "jGu9CxaM7nweO9MS": {}, "ckJNZeDhfW7AVHVE": {}}, "reason": "6TamhtDUacOPwPcz"}, "userIds": ["ICocQql5YfBZVQcD", "D4zf1BZvQIrbCQWs", "qMDbsgiaaxIpP9oA"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '1jZYqrf4bxOoikru' \
    'HKYKNEVJSzeli2Ue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["y4fuSj1kSeWA3702", "McnnKWV37CLHYvul", "2IsFExmn4GV4MH5m"], "apiKey": "OZyTMMDazz0zG1Fm", "authoriseAsCapture": true, "blockedPaymentMethods": ["J1Z0GtE9ePlbHeBy", "2yYQJsEZNAnUcJCH", "baM8I2sFnR0i1EP6"], "clientKey": "ekQzrmDqC827Ayw8", "dropInSettings": "HdDdyIIR5cs3jEJm", "liveEndpointUrlPrefix": "9cqIJO6etrgPcoqd", "merchantAccount": "V16bQzZjJiiJFm6K", "notificationHmacKey": "0MsbekvKte7LEbOa", "notificationPassword": "js9HWygfQVPPqE6X", "notificationUsername": "NxmrOFx6AenNJCze", "returnUrl": "LqjOhHMsieBzDBhi", "settings": "6oZhjEnbkZp3ZHkJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "nKJ2ksygYZVyQIUb", "privateKey": "I6vW6lvytcmR4QRN", "publicKey": "7ybL3lT1Ois7OsTE", "returnUrl": "lVV8XJ7Jg2JP8JKQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "1Fia4jQzEGsQTmKT", "secretKey": "eq9hsX0E1pSQzkJa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestCheckoutConfig' test.out

#- 319 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'DebugMatchedPaymentMerchantConfig' test.out

#- 320 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "95maQLAJLoGMHeP6", "clientSecret": "XZjcdrsSt4spX9eT", "returnUrl": "2jwH7ODZfqj84XXt", "webHookId": "ngQG9E03eUwSRO9e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["oka5Ufs9UTtAImWj", "uqib3nbPkju9PQ5p", "N0XXmk4owknspUKy"], "publishableKey": "KWqOaF8En9Ut2qFC", "secretKey": "zvpinQCQg8fidwt7", "webhookSecret": "qJ1Y75wS8MCmOepp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "9Tx45YPBPqcYNEbL", "key": "CaeCuMBokWfuz2Zs", "mchid": "kdg2b5IpRSAi9TY3", "returnUrl": "ZiKfpU2gMmaHuaBz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "eu4NPuT03UI8xXkO", "flowCompletionUrl": "TRPX2RbN68q9Xjuv", "merchantId": 47, "projectId": 29, "projectSecretKey": "GSBmDL91zfHvKnS4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'TBwlGi9OKYqmnMdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'OYMCkcE680jXshhA' \
    --body '{"allowedPaymentMethods": ["rmrrsTXqjhryZuWF", "0aXyAfnT9KMwZkUm", "ivHbmYwS4MpDJ1DY"], "apiKey": "OnlVrhflY3MzIef9", "authoriseAsCapture": false, "blockedPaymentMethods": ["Rm7DFw5ArJzNAEly", "bJSWLbZCdcwYHhOI", "Gu0vXLFZoXt8k5Zt"], "clientKey": "RJGwh0BPRCWdTnyt", "dropInSettings": "xmesJ8JDDcPDev3e", "liveEndpointUrlPrefix": "8oc7sh3o0r9VYIh3", "merchantAccount": "Jj15pf4bXUrytKH5", "notificationHmacKey": "rM54pVKLq2niQIIF", "notificationPassword": "3Qc9pq9UUur5zNNH", "notificationUsername": "f53CHNLzMNElAaW0", "returnUrl": "4oQXa8waozlr2fty", "settings": "ZklpNPl881jOSvCv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'j20fgU419HQGug3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'piXAivNHSVq7Hy14' \
    --body '{"appId": "PWQgyxy3AZ9Q29c3", "privateKey": "FLGnsacdakVuBk3e", "publicKey": "UIeGfzqhOBhMJ8BC", "returnUrl": "R0Pr4lUceWJidPUC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'DHoZPOFJliGQwzPS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'icmKe5tLTY4T61Zt' \
    --body '{"publicKey": "jv4HjtKUJ2g5iKvk", "secretKey": "b6yaN0rJRTtAoroj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '50ibuYM4wRG0lN0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '5kMcmOdLuSZLYkIA' \
    --body '{"clientID": "BWq6LMyqmJBIayJY", "clientSecret": "IYPCQLT4UtcQmxMn", "returnUrl": "H608ZzCha8xLBGlN", "webHookId": "6GGKXlt1XAswrMMj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'tufusABAiEcZPc54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'ZoDD56c8ZJFga6qX' \
    --body '{"allowedPaymentMethodTypes": ["T56186aDmZpx6Fpq", "FAR1FP2qDxqukQGm", "Z8QPR4rrBu0xMLSZ"], "publishableKey": "M2reG0eUsKe4gH8U", "secretKey": "04S5FCpmYeCJwMPH", "webhookSecret": "x5qbq2es6TWDRr2b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'TPUxXfvsOwNGBX5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '0CKM4KgSaTFkYqyD' \
    --body '{"appId": "BVeKhVWlgMI2a4Hu", "key": "uQiMf3ZtSRaKTvnY", "mchid": "QcQK3OLU5xNeaLjR", "returnUrl": "oNMmfyuSugV63aIt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '0NDFEcKEQaxvtIGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    '9xYvHbX0ptwZqHLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'EqFcFlBmznrLziwC' \
    --body '{"apiKey": "nnibCjn2uxoSkuKr", "flowCompletionUrl": "y9iZZvtreyTjGpaU", "merchantId": 90, "projectId": 74, "projectSecretKey": "Gjv2AbKgIoGvyLZG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'yV2nNIKGyVatdlj1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'BAkRkfD5QI95OctL' \
    --body '{"device": "MOBILE", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'UpdateXsollaUIConfig' test.out

#- 341 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'QueryPaymentProviderConfig' test.out

#- 342 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "xSSC369UVGTnts7q", "region": "K33YCsDe0la83cvn", "sandboxTaxJarApiToken": "j5Ut4YTxIBMay1sH", "specials": ["PAYPAL", "WXPAY", "PAYPAL"], "taxJarApiToken": "lbhfnh1larFYcM0O", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'CreatePaymentProviderConfig' test.out

#- 343 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'GetAggregatePaymentProviders' test.out

#- 344 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'DebugMatchedPaymentProviderConfig' test.out

#- 345 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'GetSpecialPaymentProviders' test.out

#- 346 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'FV93hG5GVHrcfGpW' \
    --body '{"aggregate": "XSOLLA", "namespace": "u2A2ZLrkeWbmcgfp", "region": "lQTNIZctTysFM89B", "sandboxTaxJarApiToken": "CAF2MVozVctDaMus", "specials": ["ADYEN", "WXPAY", "STRIPE"], "taxJarApiToken": "Kpwx7WN70b3lBnY6", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'AC3MEgBrVUoMCPYZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'DeletePaymentProviderConfig' test.out

#- 348 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'GetPaymentTaxConfig' test.out

#- 349 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "ARtb3TsS5jOBRYgn", "taxJarApiToken": "vYu1vzXsMr43ycE5", "taxJarEnabled": true, "taxJarProductCodesMapping": {"F6WHO4xKI3DzXlqZ": "97UEX77J2ZaCgl5z", "fvvm60VIJWtArjNf": "9ClzJiLrK8iwSKwT", "NINv7MbR3h7N9mLv": "ImrGFR73LVKd3lHI"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'IZTnztswBHIOUcpB' \
    's05S6VCRgcpqzF0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'SyncPaymentOrders' test.out

#- 351 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicGetRootCategories' test.out

#- 352 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'DownloadCategories' test.out

#- 353 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'dx4tTiOqvd6is3iM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'kUYXGJ52LhrcYmNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'U8FNr2Sf2vnHOZhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicGetDescendantCategories' test.out

#- 356 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicListCurrencies' test.out

#- 357 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'GeDLCDurableRewardShortMap' test.out

#- 358 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'GetIAPItemMapping' test.out

#- 359 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'jfHWvp5yxoHDN8wb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicGetItemByAppId' test.out

#- 360 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicQueryItems' test.out

#- 361 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'ZhTBvAeHGP8MEJHj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'kHXgaYcrI47DABOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'yTgLqcqWj25jcDQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["S4nZymFu9HDayb3p", "UN53xwUDjiBHCt3V", "Kh9NaXK6yInDEdr3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'JfyFO9PUA61ceL94' \
    'UMGbnwR8NQy5mWp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'i7XAgvpl6VM46gEF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'qwJcySobYFsOpqr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '5xVvxj351m51uwOo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "lqmdu4KlKLptx5DK", "paymentProvider": "WXPAY", "returnUrl": "WYNaRNbzpFsjJLsz", "ui": "OiHFs5xAVg39H5hn", "zipCode": "oP20tlphew85KPyj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '4EGRMQTeDUODYJlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '3GEb7CgXWeXJrzNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
$PYTHON -m $MODULE 'platform-pay' \
    't0fkjelr7hVgkvQd' \
    --body '{"token": "to2PuC14Lu2G4Mw4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'Mo4TirGDZ6OUYrf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ALIPAY' \
    '5BjG6bELZwjEmKgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'XlgbV3dBwrK8hpKl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'mw63co2erbchkQ7n' \
    '0C9lJb5WlmAWYUte' \
    'WALLET' \
    'HHKuQExWorl4PYKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    '1GJKlZ26mxx5rFWC' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'ZASgNbyIgL74DNNI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'GetRewardByCode' test.out

#- 380 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'QueryRewards1' test.out

#- 381 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'ekar0ZUahrGZV8Wp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'GetReward1' test.out

#- 382 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicListStores' test.out

#- 383 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyMyActiveEntitlement' test.out

#- 384 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'FG2gRMkdKgCuxFa4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'ix8vdZvwAMOmTtBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'JjCyABy7DKD883wa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 387 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetEntitlementOwnershipToken' test.out

#- 388 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "e7z4E6bRC4ufnScs", "language": "UHx", "region": "6QJ1Ov7wz26xkkYY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'xgGLN3OJhmFyZH05' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'CCwf21Y2Taz2uFpz' \
    --body '{"epicGamesJwtToken": "174OkRp3BkdVbqgN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'rZPytIR58rTLNpt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'RpqpKk9toELRS24c' \
    --body '{"serviceLabel": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'rSepYwXWbcBNnyBd' \
    --body '{"serviceLabels": [80, 98, 59]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'RvISdcF4Db7MaqeC' \
    --body '{"appId": "6go22oGxiuAknxwc", "steamId": "qyDyOqQ18AhUON0V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '9Qm5GiVkyg2ApoZo' \
    --body '{"xstsToken": "zOLaCrfo6qFXI3sU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'f1uYi2GvXliGeEan' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '1MCH7tD6ENaY8enB' \
    'jqk85CIocwu2hQOO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'qU4lxwyKbYKZdZvX' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'VezIt3HezhSE8IGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'aRsievm4IDxtFXsf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicExistsAnyUserActiveEntitlement' test.out

#- 403 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'f5uksqDpH01I9KIm' \
    'kc3YwK5J3GyOQJLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 404 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'pcfcMQlt7ssE0BVP' \
    '1MHJQhmZHHktlLrV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'bhm9d4y2SbI0OO1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 406 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'uoucz4taACOl097n' \
    'qfMF4iGEw5EhhlxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 407 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'tAWr3elzD6WKsCrH' \
    'f4vU4AqkG2jU9Dou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlement' test.out

#- 408 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'FSA3CLtlE5PpY0ZX' \
    'XFyG4988DpkyITbf' \
    --body '{"options": ["vPjkpdcTxG4LMLOA", "iZC06KMQoJCvczbp", "Te8wnvbAKMlJZvUx"], "requestId": "YzYBSzriljJODaZN", "useCount": 65}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicConsumeUserEntitlement' test.out

#- 409 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'KBD3YwTJ4Hn5XqA2' \
    'kk1A3H3rxXt6ggKw' \
    --body '{"requestId": "WIYIm0ypwg4VTJpu", "useCount": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicSellUserEntitlement' test.out

#- 410 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    '4It1R6axg5VLrk3K' \
    'BNBApNgT5fUWdp4L' \
    --body '{"useCount": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicSplitUserEntitlement' test.out

#- 411 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    'iLJ4dBRmXwqKSWTR' \
    'uDBWveCv1Rj0emRq' \
    --body '{"entitlementId": "o5yTUCEJDyanAifs", "useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicTransferUserEntitlement' test.out

#- 412 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'ayR34iibMmlb6vlF' \
    --body '{"code": "1mVrcAyqXXnKEtSQ", "language": "cm_EiXC_150", "region": "k8bgV76h8tj65I0O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicRedeemCode' test.out

#- 413 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'W9DhwNHdSw93IumF' \
    --body '{"excludeOldTransactions": true, "language": "ix_hEra", "productId": "jamcbAWAUiz3UhK7", "receiptData": "hY9Xv4bnujVOhaDv", "region": "f3evXo0m3jJ0xten", "transactionId": "PXW0Eog3qNqoLr5u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicFulfillAppleIAPItem' test.out

#- 414 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'xNWDT3hlTaFfn4Th' \
    --body '{"epicGamesJwtToken": "PY3oU02EfGsDjENb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'SyncEpicGamesInventory' test.out

#- 415 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'nYSDYXgkcUGG5hRG' \
    --body '{"autoAck": true, "language": "ORU", "orderId": "dlIm2TA1uiNbPsWP", "packageName": "4dql0EDA4cU4Wstd", "productId": "HC5KGE92n4sFIM7A", "purchaseTime": 99, "purchaseToken": "rp02FBwxeZXuYnlq", "region": "95T6quy9PsI3dx75"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicFulfillGoogleIAPItem' test.out

#- 416 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'GAWm1WfXALgsjwfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'SyncOculusConsumableEntitlements' test.out

#- 417 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '3eYGpxI9DQs2vOJH' \
    --body '{"currencyCode": "76fEQ8WC3iZ6amfE", "price": 0.84787271825934, "productId": "NHQzAvmPZRWnKIfY", "serviceLabel": 63}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicReconcilePlayStationStore' test.out

#- 418 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'kPDBgq17ElbCwKI3' \
    --body '{"currencyCode": "aXhSEFUvuqvkzikf", "price": 0.8757157252258889, "productId": "tQ7LhwHqc9mwHFQ3", "serviceLabels": [72, 32, 87]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 419 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'S6gLd7l7OF4v4RTL' \
    --body '{"appId": "nsM4wpXhdaJDB3MX", "currencyCode": "GMrRfpSxf1BnhjtA", "language": "lK_rRMj", "price": 0.6813660044251842, "productId": "OO3dJd2YP1XIUKL9", "region": "g3ACu1VGeRPwa2Xf", "steamId": "Z7wxA0lvXbcZY7zX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'SyncSteamInventory' test.out

#- 420 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'TdKQkADYHyER3eNC' \
    --body '{"gameId": "fqyJ435IkibSzJGQ", "language": "AGq-utKY-yH", "region": "9iHZkthOUUtPBx2K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'SyncTwitchDropsEntitlement1' test.out

#- 421 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'qt9eEQQ5qXZd41Ki' \
    --body '{"currencyCode": "SlLVmN9KSbiFMGQM", "price": 0.06715468677871905, "productId": "wQlUnkcE3UYV2aj9", "xstsToken": "PL4PQGJJokFeKLbB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'SyncXboxInventory' test.out

#- 422 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'QG16At6ZhNxuLFAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicQueryUserOrders' test.out

#- 423 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    '37EUwOviFJi304rw' \
    --body '{"currencyCode": "bySnVTSdmqyftEYQ", "discountedPrice": 23, "ext": {"1tuTKBNwhTZL6vJf": {}, "gPEZmTs18vZnFstn": {}, "J5mnLz7c4rYnurB4": {}}, "itemId": "du28xKiygvn2QBdH", "language": "qUqt_mn", "price": 46, "quantity": 27, "region": "nidAmiLFK5Dwak0R", "returnUrl": "9n1WBVWp96bYrG5A", "sectionId": "NSRCXWy9C2oM6ZVd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicCreateUserOrder' test.out

#- 424 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'GQt7ed5WKQJkzGQP' \
    'BQoXpXVvDLulelX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGetUserOrder' test.out

#- 425 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '0R2hPYkRArSfExoJ' \
    'MARmEC7Kyhtx4sYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicCancelUserOrder' test.out

#- 426 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'q0CbA1NZZ58G8Xry' \
    'w8bfE6VA6HEvqN7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserOrderHistories' test.out

#- 427 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'X4VVVBS89UUbLl2c' \
    'iimYDeDceMEtPkjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicDownloadUserOrderReceipt' test.out

#- 428 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'd9PNBi79WHorOJPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicGetPaymentAccounts' test.out

#- 429 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'oTCRV5enPlVeOc8u' \
    'paypal' \
    'oF3ValgZcNJSYGVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicDeletePaymentAccount' test.out

#- 430 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'i7ACWF50CSEIj98y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicListActiveSections' test.out

#- 431 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '965Raxu2ujZqzkOZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicQueryUserSubscriptions' test.out

#- 432 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'E6sOGLtoFJvwz5yK' \
    --body '{"currencyCode": "IpwoaQavSCZfTzJf", "itemId": "HZF17lZ95JmGny7g", "language": "pF_kF", "region": "GU0AqSFsHZyeSTGy", "returnUrl": "sStop5Pu3KNnlg5a", "source": "QvtZqOqyYqukNu3I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicSubscribeSubscription' test.out

#- 433 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'iEoeAhwgfo77M8FJ' \
    'YRhM0dJBA4b3QbH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 434 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'tCVfHKGFiQvPyj1F' \
    'Ck4QM8cZueXeYkC0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGetUserSubscription' test.out

#- 435 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'oo7aThH67UFGXrkX' \
    'mmckOjWhMg8bi8TT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicChangeSubscriptionBillingAccount' test.out

#- 436 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'nK6au871df3bxo2X' \
    'jwMhbcaFVUwJJdMa' \
    --body '{"immediate": false, "reason": "tx5TSAxNBchtcaao"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicCancelSubscription' test.out

#- 437 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'KZYk4GlikyI0LGO0' \
    'eNNgl7jdIf7ptoc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicGetUserSubscriptionBillingHistories' test.out

#- 438 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'rPRsGFfGRRKQ4tLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicListViews' test.out

#- 439 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'RFGopzQ87CbxAJ0x' \
    'dAPFrw8ssJejQ7qS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicGetWallet' test.out

#- 440 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'iyUPY0Gnwcv8NFIJ' \
    'Flyo9htDZjjGZzNc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicListUserWalletTransactions' test.out

#- 441 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'QueryItems1' test.out

#- 442 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'ImportStore1' test.out

#- 443 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'LBzqSh3UQrHYlWFx' \
    --body '{"itemIds": ["0rb4eSExhChscwh8", "P6pejiRuUjCpBUL6", "8KLWODgQ2gkEKZZQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'ExportStore1' test.out

#- 444 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'fGQJPF97t3thMfA2' \
    --body '{"entitlementCollectionId": "pxZ7ocAtgWGRZGmC", "entitlementOrigin": "Steam", "metadata": {"ubnROvA1CxkXWIlk": {}, "rF4cf9E2pKWkX7et": {}, "7rl9ow7BDniJH2zF": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "gMSge48h6WQOLVIm", "namespace": "JDNd0LTI6thfWyUK"}, "item": {"itemId": "gXL1FOiDEhOn3KuR", "itemSku": "xgkDm8ALwZabFzMO", "itemType": "JSqY46n4gzDKwFxp"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "wYN6xeNeZMtT7f2d", "namespace": "2NhlIgGSvbXe1Hyw"}, "item": {"itemId": "3mylk3Hwg4Wtj5wR", "itemSku": "9o07ypJFcZroi0Qe", "itemType": "G6cD8trKjrFSu4MO"}, "quantity": 18, "type": "ITEM"}, {"currency": {"currencyCode": "pBAbAKLICuRvKGIR", "namespace": "3uSMSyy1zY8VkZd3"}, "item": {"itemId": "qEIVQCbFYV3NuJgs", "itemSku": "cT8dY4nux3S39sGE", "itemType": "4zXVkI5AV7Af2Tu3"}, "quantity": 99, "type": "ITEM"}], "source": "OTHER", "transactionId": "ATykI3Y8spu5S6I5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
