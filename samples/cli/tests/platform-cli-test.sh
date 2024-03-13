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
platform-grant-entitlements --body '{"entitlementGrantList": [{"collectionId": "fnwIdlNa29fDLh74", "endDate": "1998-07-04T00:00:00Z", "grantedCode": "IslKHzGlLKWUtDQs", "itemId": "61OQAoxyyQpRWCii", "itemNamespace": "PDGQhNPEwiJCf2XJ", "language": "SM-rALT", "origin": "GooglePlay", "quantity": 28, "region": "j12K2IzrBvvWm4ud", "source": "REFERRAL_BONUS", "startDate": "1986-08-14T00:00:00Z", "storeId": "OXudXgNne8kJATwl"}, {"collectionId": "c6esUp6Sw1I98jeZ", "endDate": "1992-03-11T00:00:00Z", "grantedCode": "7hfxnhLd3Knaknoe", "itemId": "d9DHhLOqQGhCUr6i", "itemNamespace": "TrjyEgarAdNJOIG3", "language": "khO_XsxC-541", "origin": "System", "quantity": 78, "region": "KHQkETJyTlUrwDTn", "source": "OTHER", "startDate": "1986-06-15T00:00:00Z", "storeId": "cagginxnFIna3ydd"}, {"collectionId": "cbsPheTH26IUJNvY", "endDate": "1981-07-31T00:00:00Z", "grantedCode": "GRUvpZaHCuESOiIZ", "itemId": "sMfB4ZH3mtgWgU4p", "itemNamespace": "CAKxeE70CaunQNxo", "language": "ons_xbCV", "origin": "Oculus", "quantity": 92, "region": "sGnmyo5JJTUVmb8G", "source": "REFERRAL_BONUS", "startDate": "1982-01-02T00:00:00Z", "storeId": "FTlEMEsFzYqwgK1N"}], "userIds": ["Gv2LFjAKY7CbgsWq", "zAFdO0Khqf6kiTdS", "p5nodqpLm7FhJBNX"]}' --login_with_auth "Bearer foo"
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
platform-create-item 'edgS1fUfKmihDbmu' --body '{"appId": "8ePWlQMVDXEHeiGT", "appType": "DLC", "baseAppId": "gb64ELbzDMwyo4nI", "boothName": "RysQdbufXjYnSoIF", "categoryPath": "eouC2m38kXrDZWlG", "clazz": "VE9sJ4NpUtKp6M9I", "displayOrder": 27, "entitlementType": "DURABLE", "ext": {"EwnZhsjwJeGwaPSD": {}, "MZz95OYKiqaZD63x": {}, "e5rruJVfLGea0Ztl": {}}, "features": ["GaXsAuGsZaSHevO0", "TQNEI3kfabxJWWSI", "zUcuHAXz0UV31Mfu"], "flexible": false, "images": [{"as": "ECUo1NPpeFhUztXD", "caption": "gB7n4C97uAPP8PAT", "height": 77, "imageUrl": "U6FYBZsWFbr3RSP0", "smallImageUrl": "W9nBhvhf8Q0DtJMc", "width": 48}, {"as": "QdN66bswAgt65X4N", "caption": "1LQZmB61JMdtwCVU", "height": 36, "imageUrl": "NlZkqTZrKgXNwvm4", "smallImageUrl": "e5GX6H742OixhtAo", "width": 74}, {"as": "X9UcOvhPyE11TRT2", "caption": "SKseoe8VLie0LBa3", "height": 14, "imageUrl": "KNzjf005CXNGehQ2", "smallImageUrl": "aTjTDfKFDXC7eGL5", "width": 62}], "inventoryConfig": {"customAttributes": {"hJDWh9YWqc0qgV6d": {}, "9yOfIMLds2DbPcao": {}, "MdtRLTmSvTkQQgB7": {}}, "serverCustomAttributes": {"exYvmHMxr5hPCJJz": {}, "tJBg0tTJg46IewOX": {}, "E2AkCh3QIZsUf8lG": {}}, "slotUsed": 65}, "itemIds": ["USpSOAjHJWwfCjYw", "WkLob9gKLqs2nEZh", "pByfHZinxNfgPAwk"], "itemQty": {"MBsznlBUqnLT4AbG": 31, "Az0vJjFIYWOaNdsi": 24, "fZ6rvgvEY3Hht1Sw": 33}, "itemType": "LOOTBOX", "listable": true, "localizations": {"kaXZ7vmiEd0JPxVy": {"description": "QpshaDwNqTbbFMXA", "localExt": {"MfVXe0GZeMgsRsmH": {}, "1EQrYmkPKTPOlhTt": {}, "SiZNCxuogFteTHJe": {}}, "longDescription": "4BhSSQkQD6WmOt6D", "title": "7ufFVTOhvQpfbBke"}, "8aEdd36xj6wySolt": {"description": "DxsbzxrlaKEfkoYj", "localExt": {"Y2o6ouRW9UtNquwC": {}, "3WgumrIz4NhGztZp": {}, "r4U4fwQIiLXgmRas": {}}, "longDescription": "vjO4lj8m3XEwP2b4", "title": "gd3xOeii8Jnmssep"}, "2xD2NY0kABeGs9yx": {"description": "ahld1pO0Gyf5PO3C", "localExt": {"OyMvczgEpzZ3Fbtx": {}, "fhcRC7IVYa6iZ5uF": {}, "RYNn3SHiWxF0YbuU": {}}, "longDescription": "5ar5qTLWUCy0Afgc", "title": "050XIZRW491e94mQ"}}, "lootBoxConfig": {"rewardCount": 20, "rewards": [{"lootBoxItems": [{"count": 32, "duration": 97, "endDate": "1985-11-27T00:00:00Z", "itemId": "D2VXidT7w0Oc15N8", "itemSku": "WXBPp17PAewqSm5x", "itemType": "3B4t7WQnp8jXZedg"}, {"count": 39, "duration": 0, "endDate": "1978-01-22T00:00:00Z", "itemId": "JRfk4f9Zcw1pEHAy", "itemSku": "NFxcVTKuAQTGh5Bx", "itemType": "jWOozGoDtsUuYo5p"}, {"count": 52, "duration": 62, "endDate": "1972-09-04T00:00:00Z", "itemId": "8Tb7cUNGPTBxiFFC", "itemSku": "rn7djjs69FTFVGUV", "itemType": "hvKhJCmeisql14mU"}], "name": "HVbMPimNhcZsU3VA", "odds": 0.05029510051012198, "type": "REWARD_GROUP", "weight": 60}, {"lootBoxItems": [{"count": 5, "duration": 67, "endDate": "1971-05-17T00:00:00Z", "itemId": "2amU7syGlElXdEAO", "itemSku": "rVSnLocLVVYamQc4", "itemType": "wcG5nDBLJoJHbiQ5"}, {"count": 6, "duration": 75, "endDate": "1981-09-10T00:00:00Z", "itemId": "H8MuqIg0CzkguwuJ", "itemSku": "CW7EEFB67AODbi9B", "itemType": "zupBsFpYc77GtRUc"}, {"count": 58, "duration": 65, "endDate": "1981-02-08T00:00:00Z", "itemId": "Rk8knYSV30lnroQe", "itemSku": "hMDli6t9unQLYXxm", "itemType": "09wpGAbpEmDY9vLh"}], "name": "3u6EDsUmrV6kH4Oo", "odds": 0.3186832529779927, "type": "REWARD_GROUP", "weight": 64}, {"lootBoxItems": [{"count": 45, "duration": 66, "endDate": "1988-08-17T00:00:00Z", "itemId": "dIjvBbA6bfbYaJCJ", "itemSku": "jfk2TUvn95FhO7VW", "itemType": "3mbDVMDu87t0ldWf"}, {"count": 7, "duration": 18, "endDate": "1985-12-27T00:00:00Z", "itemId": "6p25xCWTqUOYZENJ", "itemSku": "1QHZQxPRXH7uxBJE", "itemType": "ECQE1li3Bg7Jxc9p"}, {"count": 95, "duration": 27, "endDate": "1980-01-18T00:00:00Z", "itemId": "mvhidwCkZwqjYLfT", "itemSku": "iCO1NDBvQvRPnAz4", "itemType": "VzW0CpoBCbyJsF5I"}], "name": "jF1c0W338HS6CBgV", "odds": 0.7080968584538467, "type": "REWARD", "weight": 73}], "rollFunction": "CUSTOM"}, "maxCount": 2, "maxCountPerUser": 15, "name": "EGTUj7YjERL1rEQG", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 43, "endDate": "1983-01-16T00:00:00Z", "itemId": "ccA8wvLsWUNd6lPK", "itemSku": "vqDejvqklTSvDwuO", "itemType": "rP9lzpiX0VuFpZum"}, {"count": 70, "duration": 17, "endDate": "1973-07-30T00:00:00Z", "itemId": "HgKjI9mwJSrN8jkI", "itemSku": "ykR2zbaI6PD7fEsc", "itemType": "ShnGUGUtV9GJ279G"}, {"count": 60, "duration": 60, "endDate": "1971-05-28T00:00:00Z", "itemId": "LNwjm3FK0nnX2poM", "itemSku": "fZ1hDHtbh4HtMlFg", "itemType": "vh2Dp2SoiIPp1yvf"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 68, "fixedTrialCycles": 45, "graceDays": 92}, "regionData": {"bvMZyeDeRnVfPUa6": [{"currencyCode": "xVVBcq3wZpFIYeAg", "currencyNamespace": "79HcLJXJ7mpVI6eT", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1971-02-03T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1992-07-19T00:00:00Z", "expireAt": "1976-05-26T00:00:00Z", "price": 59, "purchaseAt": "1972-03-08T00:00:00Z", "trialPrice": 40}, {"currencyCode": "QQC35cj4KyOVgvnW", "currencyNamespace": "bfRJtsB7cUQZ2QUA", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1989-08-02T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1982-10-14T00:00:00Z", "expireAt": "1973-11-19T00:00:00Z", "price": 85, "purchaseAt": "1990-05-01T00:00:00Z", "trialPrice": 55}, {"currencyCode": "pPNO3AfmXcgwC3IN", "currencyNamespace": "6tvKgLB9QmJIOq9d", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1984-10-30T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-06-03T00:00:00Z", "expireAt": "1981-06-07T00:00:00Z", "price": 24, "purchaseAt": "1975-01-03T00:00:00Z", "trialPrice": 38}], "nYxM0UHZVNYzGMNI": [{"currencyCode": "pWoSLkUrfuf4U3We", "currencyNamespace": "YeA9t2ENKKWrFtHI", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1985-06-16T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-09-17T00:00:00Z", "expireAt": "1989-04-19T00:00:00Z", "price": 53, "purchaseAt": "1994-11-26T00:00:00Z", "trialPrice": 66}, {"currencyCode": "8QqftSjq7sn8yrec", "currencyNamespace": "iPLfkVyyJsbGpO6J", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1973-12-25T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1986-04-19T00:00:00Z", "expireAt": "1989-09-22T00:00:00Z", "price": 49, "purchaseAt": "1977-09-12T00:00:00Z", "trialPrice": 99}, {"currencyCode": "N7JlZc8LMq1o2jZW", "currencyNamespace": "u4yA3r0u4q1bTHXI", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1973-09-13T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1980-10-24T00:00:00Z", "expireAt": "1980-07-24T00:00:00Z", "price": 65, "purchaseAt": "1986-03-31T00:00:00Z", "trialPrice": 96}], "M0u1uuoVdn9yVoSl": [{"currencyCode": "KNchPHNL4X3LLaGP", "currencyNamespace": "GdqLE8SohhhuiTnJ", "currencyType": "REAL", "discountAmount": 56, "discountExpireAt": "1979-11-19T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1997-03-19T00:00:00Z", "expireAt": "1974-10-01T00:00:00Z", "price": 44, "purchaseAt": "1985-05-15T00:00:00Z", "trialPrice": 60}, {"currencyCode": "gl6TZ9TGVPmv34h6", "currencyNamespace": "T7EsufmfxKYB4LM6", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1997-04-05T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1979-02-28T00:00:00Z", "expireAt": "1997-07-06T00:00:00Z", "price": 44, "purchaseAt": "1999-08-20T00:00:00Z", "trialPrice": 12}, {"currencyCode": "p9y7fLD2qfCXnlUn", "currencyNamespace": "qxT1WsRNMZcA92hz", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1976-11-16T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1991-01-04T00:00:00Z", "expireAt": "1999-05-25T00:00:00Z", "price": 45, "purchaseAt": "1988-03-02T00:00:00Z", "trialPrice": 8}]}, "saleConfig": {"currencyCode": "zOx2CXKlvIomU3pI", "price": 49}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "K5PRMRMwdvl0hv6g", "stackable": true, "status": "ACTIVE", "tags": ["MYvNQOsDa4bkcgep", "qtxjbrztee7QLTGA", "GxBW2tQF5tkTjgJa"], "targetCurrencyCode": "ak7Kaol01DK97D2x", "targetNamespace": "nik42miteR5eQAe1", "thumbnailUrl": "rzmmgqBPRmd6mO4o", "useCount": 71}' --login_with_auth "Bearer foo"
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
platform-update-item 'TjdKNKgYazujsmSm' 'ylT1YtxIq73aMb48' --body '{"appId": "jISd97KORRhxSWLW", "appType": "DLC", "baseAppId": "NfHRD3V15QaGGL46", "boothName": "LuxJF3sbeqWBdQuW", "categoryPath": "fgBAKx27MSBqabUX", "clazz": "OGkkoMUZn1YXj5zF", "displayOrder": 76, "entitlementType": "CONSUMABLE", "ext": {"1XRVfriSpPFnZBJZ": {}, "kDnEiyfa2LrnpZxN": {}, "nLRH36bqS2oFY76P": {}}, "features": ["ZIRWf6T3by2kYSCd", "6Zc2FbrTFznTgDIw", "U1AziBOHEAj1cT3u"], "flexible": false, "images": [{"as": "SMfQVQa6blj9Rdd8", "caption": "5bdYUumPKVSZCg3X", "height": 92, "imageUrl": "ck1vT90C6o86cSRL", "smallImageUrl": "9cgbUmulhe98oaFK", "width": 24}, {"as": "EWFw9GYxjiiOQAD7", "caption": "7ci0vfWVZoRRMPi5", "height": 23, "imageUrl": "HyKKz5nyI6ulKNKo", "smallImageUrl": "Xa0dgx1JgjC56pda", "width": 8}, {"as": "YhtQxpCYME6x21pd", "caption": "X2QSPAd9sxoLnWGP", "height": 35, "imageUrl": "PafIjLX8ce0KbNN7", "smallImageUrl": "Ycl2JfmQplvGjVQ4", "width": 0}], "inventoryConfig": {"customAttributes": {"4ktF5wnJDg9Q3WXi": {}, "ydCOInVolsr6CHmj": {}, "763vLwtYEJTSiXjc": {}}, "serverCustomAttributes": {"Y5ZPkv90lyKSTWLx": {}, "SFZ0LpupEi5DbkVs": {}, "3qFTi1t530Wj1Wfz": {}}, "slotUsed": 70}, "itemIds": ["AJza84lKKmVOaTS6", "xBbNrSUAW2ak7ISD", "rBVg6NuDZvPb1kuU"], "itemQty": {"fNfUDe4g7q6PHEaq": 3, "KfV3869IN4V1OdhH": 53, "GVU7Exlkmc4xYiLj": 77}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"ouFu4hXONgUwJnUp": {"description": "ryDeRcpUvlrw2MwC", "localExt": {"1uuokpaIjL0Vxe5n": {}, "9Lx3QcFo9gxOgvDc": {}, "7xMrRKvw8ISP2WKm": {}}, "longDescription": "CRRXBxlalCHtWlKx", "title": "LpS8fLWoQ5nuJhat"}, "QPxR7dvBVC5zgOKL": {"description": "TDmHe8c1eJ9sde7R", "localExt": {"yt4udIv22M18uux9": {}, "xBomQFPFWy5cwNPI": {}, "6aFo0MVwDZCIXFNE": {}}, "longDescription": "L3uWVRz3V7YbJM3b", "title": "NLWHAbCZixe2cQ6O"}, "30lpzcBQMAEcNcJq": {"description": "rKxnMzSYoc4ZjiMY", "localExt": {"4H34B6wVd8ipcKDw": {}, "QeUWtjCC2UH6jzMO": {}, "3AfmOS5mQNyRPZFP": {}}, "longDescription": "NP56l1AT6OLKmZhC", "title": "ZxxPPdPwOtEuWBSO"}}, "lootBoxConfig": {"rewardCount": 63, "rewards": [{"lootBoxItems": [{"count": 19, "duration": 14, "endDate": "1989-03-13T00:00:00Z", "itemId": "epUnEEgja2mIE2kL", "itemSku": "TnJwc5XmkCuL5W4t", "itemType": "Kt6G3j9LYdG7xVPq"}, {"count": 56, "duration": 86, "endDate": "1979-02-02T00:00:00Z", "itemId": "sHiKYArAxnKBfBfD", "itemSku": "lrQQuAc10DjjwMv4", "itemType": "vrIPRtvhQIyLarja"}, {"count": 78, "duration": 9, "endDate": "1991-02-21T00:00:00Z", "itemId": "KnX51yAB8Pa3uNGK", "itemSku": "haLlJzJMSnJIIgsA", "itemType": "VmaGYxUX1B9oVuzG"}], "name": "2CnYX2YBF2g7TVtz", "odds": 0.8075858196921597, "type": "REWARD", "weight": 21}, {"lootBoxItems": [{"count": 69, "duration": 0, "endDate": "1995-04-23T00:00:00Z", "itemId": "P7pnnVfxPwc259HF", "itemSku": "9ejHaILQruAuYyJL", "itemType": "YGqMv824ouSgkpK7"}, {"count": 42, "duration": 57, "endDate": "1989-09-20T00:00:00Z", "itemId": "mUL0uzElixc023dI", "itemSku": "vDiA0tQWlHwBcTtz", "itemType": "tx3VAl6tXFbnATCz"}, {"count": 96, "duration": 3, "endDate": "1992-09-24T00:00:00Z", "itemId": "IzVcy9k3ie64Vnwa", "itemSku": "0ClGQJultJe32Aiw", "itemType": "KadEoIVmprwPsa9Y"}], "name": "D92CX0rITajpwHIT", "odds": 0.517579441469997, "type": "PROBABILITY_GROUP", "weight": 55}, {"lootBoxItems": [{"count": 68, "duration": 27, "endDate": "1994-04-21T00:00:00Z", "itemId": "1rVAQSxp4qTB54mK", "itemSku": "A3V9DKlCeZ7mLYsH", "itemType": "ooOIaxIpb1cIOJPS"}, {"count": 45, "duration": 24, "endDate": "1993-10-12T00:00:00Z", "itemId": "kQJAtDUH9tx60Aeh", "itemSku": "Gz1ermJYXsYgL7Tf", "itemType": "yIlAwjTZdRZJJzWZ"}, {"count": 46, "duration": 13, "endDate": "1982-02-15T00:00:00Z", "itemId": "TX2bamSCvX1nwvSW", "itemSku": "dDwD7WJHzgNZUKsI", "itemType": "5y0mR3zMyTsftKqn"}], "name": "sIJctAdxyZVKHA9D", "odds": 0.17187276509281957, "type": "PROBABILITY_GROUP", "weight": 70}], "rollFunction": "CUSTOM"}, "maxCount": 82, "maxCountPerUser": 99, "name": "dbh2iKNUl0qJqzoK", "optionBoxConfig": {"boxItems": [{"count": 80, "duration": 34, "endDate": "1992-12-29T00:00:00Z", "itemId": "MG541PAiNjULsx4S", "itemSku": "nKNXLMUaDSwwQlnN", "itemType": "RZJHBSB4fZWEFIZs"}, {"count": 91, "duration": 64, "endDate": "1973-04-13T00:00:00Z", "itemId": "1kZp1Zktx3N7WNMY", "itemSku": "IfcDKbLu8pnK34oA", "itemType": "1keYXJvtggDdXjbd"}, {"count": 19, "duration": 24, "endDate": "1991-09-20T00:00:00Z", "itemId": "BahFZZGMTcqnWrIp", "itemSku": "rOv0BJ9Sgl7H1sdH", "itemType": "2RIJz1eI7Q5pu9Pu"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 77, "fixedTrialCycles": 29, "graceDays": 10}, "regionData": {"hddMzMTQ9P7sYLDW": [{"currencyCode": "AJOA75K4BYJ2fkqY", "currencyNamespace": "JoF2FI3vyyqRzc20", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1996-01-25T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1980-06-03T00:00:00Z", "expireAt": "1989-07-28T00:00:00Z", "price": 84, "purchaseAt": "1998-09-22T00:00:00Z", "trialPrice": 98}, {"currencyCode": "9tyBTfERXdvgD1Qf", "currencyNamespace": "7Ot2DkUt3yexZBRv", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1997-04-09T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1973-09-12T00:00:00Z", "expireAt": "1997-08-08T00:00:00Z", "price": 39, "purchaseAt": "1974-07-30T00:00:00Z", "trialPrice": 93}, {"currencyCode": "tAVxCd3meTrT7cF9", "currencyNamespace": "oVCh89wNOkKYssVe", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1972-12-31T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1974-07-10T00:00:00Z", "expireAt": "1976-08-20T00:00:00Z", "price": 89, "purchaseAt": "1981-03-05T00:00:00Z", "trialPrice": 51}], "CGNgaJmuALlMQl9R": [{"currencyCode": "Lrthbfp0VgweLlT2", "currencyNamespace": "sY3SsTnDQY7kKU2u", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1992-11-19T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1982-02-03T00:00:00Z", "expireAt": "1995-06-11T00:00:00Z", "price": 20, "purchaseAt": "1984-07-07T00:00:00Z", "trialPrice": 61}, {"currencyCode": "tyQENvJrBCqeg67d", "currencyNamespace": "4RWOqO4U0bitNQLz", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1993-04-22T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1995-12-12T00:00:00Z", "expireAt": "1977-03-02T00:00:00Z", "price": 89, "purchaseAt": "1981-08-03T00:00:00Z", "trialPrice": 74}, {"currencyCode": "bkCPY70FmvviVIBb", "currencyNamespace": "cujF8Vk5qb8NhWWw", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1982-12-30T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1989-11-11T00:00:00Z", "expireAt": "1994-01-19T00:00:00Z", "price": 77, "purchaseAt": "1974-08-28T00:00:00Z", "trialPrice": 20}], "gOOPXM6XTUh2dJ90": [{"currencyCode": "yqHDNacl4F9G6Dl5", "currencyNamespace": "TFwBY6HKXAblkT8V", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1981-06-26T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1982-12-17T00:00:00Z", "expireAt": "1990-09-26T00:00:00Z", "price": 25, "purchaseAt": "1997-09-18T00:00:00Z", "trialPrice": 46}, {"currencyCode": "Iacq4XRLaA643nTM", "currencyNamespace": "tXSAyejnny0Ju13b", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1992-12-15T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-08-12T00:00:00Z", "expireAt": "1985-08-12T00:00:00Z", "price": 74, "purchaseAt": "1991-10-08T00:00:00Z", "trialPrice": 71}, {"currencyCode": "JxytpcubN4AUUPFP", "currencyNamespace": "scZsXeJOD4DMtqfI", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1980-10-21T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1978-08-11T00:00:00Z", "expireAt": "1982-08-12T00:00:00Z", "price": 13, "purchaseAt": "1979-12-30T00:00:00Z", "trialPrice": 89}]}, "saleConfig": {"currencyCode": "imQQoLbe5YOJvxGR", "price": 47}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "5DuBDqMyIAzWze94", "stackable": true, "status": "ACTIVE", "tags": ["iw8wLYW3n4F3LD1E", "BQ1crBXAupATO8uX", "sqVpdiWo8SjDAM0R"], "targetCurrencyCode": "DwBXw5uBYeQZOzAT", "targetNamespace": "NSV9E9yyNb7yaLXz", "thumbnailUrl": "AVYymOuhCkZu4htr", "useCount": 38}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'HYbsxG5N066FXb88' 'SbLOa21DiSFsm0XX' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 38, "comparison": "isGreaterThan", "name": "zvTQEuALzDNp1SZ5", "predicateType": "SeasonTierPredicate", "value": "aDllwzTRHak1MXxj", "values": ["VIaKiHfoeorY7A1o", "sK9dCEzhVnOv0PQb", "7Esrg7900nml5Bid"]}, {"anyOf": 40, "comparison": "isLessThanOrEqual", "name": "r1ta3m7jK5pxe82p", "predicateType": "EntitlementPredicate", "value": "c6EFqBKxbS7Q2OgR", "values": ["ucL1jwRXzfjDZZBm", "Oau6syme06c6SKLc", "2mEC3IXl5XCbkOfH"]}, {"anyOf": 1, "comparison": "isLessThanOrEqual", "name": "Gr5kdazlypvt6lSL", "predicateType": "EntitlementPredicate", "value": "RGESmooHiCV4GUOn", "values": ["NT2VHTKuIT5FwwHj", "XpapXQGRakUbcG7P", "cR4eiU3Idi55jNrG"]}]}, {"operator": "or", "predicates": [{"anyOf": 49, "comparison": "isGreaterThan", "name": "F2PWGTTD81xhNP4t", "predicateType": "EntitlementPredicate", "value": "kYBUjyXAn3bWQF6Q", "values": ["hckUTGkcBOE4qMcH", "cAiJpXIrgroixptZ", "1Kyi8ZFvGcV8DY0X"]}, {"anyOf": 84, "comparison": "isGreaterThanOrEqual", "name": "kDstxZcY1HgAnZV4", "predicateType": "SeasonTierPredicate", "value": "voQNW8Yc481dYdvG", "values": ["xJAMDRA1LF7jdWle", "kFwO94VBCV9qJhWv", "a2FPBujX0geYCpGJ"]}, {"anyOf": 79, "comparison": "includes", "name": "sqsPNJMiZXXOFwmG", "predicateType": "SeasonPassPredicate", "value": "AvNF0Z0GkwxUNYyN", "values": ["wGiKrknH0Y5mrQgL", "i5WjMZfOadpgegCU", "C6D2qsFiQHglUQMZ"]}]}, {"operator": "and", "predicates": [{"anyOf": 17, "comparison": "excludes", "name": "URrlm88QlKyuoya4", "predicateType": "SeasonTierPredicate", "value": "uNy4ejmVA3vMCsGy", "values": ["EsL5D0oiFchQnVeq", "Pd12B8QNUz0hFFNb", "H6j2W4roZM2UKAXE"]}, {"anyOf": 100, "comparison": "includes", "name": "IObJBTsvsw76uISR", "predicateType": "SeasonPassPredicate", "value": "bKVoWtoUW1P7ocuB", "values": ["AldDSUS7Haa6unq1", "2piIQFVmzMidw70K", "yQOSRvyiLBRVtIDi"]}, {"anyOf": 92, "comparison": "excludes", "name": "Oe9Eevf1fhMg1E2k", "predicateType": "SeasonPassPredicate", "value": "QLFrVgtX7y0fPOie", "values": ["DCow2zXyFFVpM87y", "qEwEacQMTlqN4LKk", "xJ5v3SBafnKNiMPb"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-bulk-credit --body '[{"creditRequest": {"amount": 37, "expireAt": "1983-10-11T00:00:00Z", "metadata": {"uQcsjFehD6uTDYnq": {}, "yNgN7GoeMsezFZsT": {}, "BHkgcJ0DcEt23pci": {}}, "origin": "Xbox", "reason": "xEljer6aGJx5OFp3", "source": "DLC"}, "currencyCode": "dt0TSTmy7XF26K2U", "userIds": ["enLtaAoYyRfiCWrm", "7xttUz8nWKJjv06P", "uffHghAQfAsYXVzB"]}, {"creditRequest": {"amount": 15, "expireAt": "1980-03-10T00:00:00Z", "metadata": {"1Ah3TII70MIcBMJ0": {}, "4508jKedx0CVRpd7": {}, "SwZw2UkjDzJ4NuMM": {}}, "origin": "GooglePlay", "reason": "LQkTHvndQsCKAO2J", "source": "REFUND"}, "currencyCode": "ElLfbB7gwwAR1xFr", "userIds": ["xeaJ08JrSHPqdhKH", "nyirw3iJt5iA3JS2", "n6ZjZMdr1C2TIQzR"]}, {"creditRequest": {"amount": 75, "expireAt": "1993-12-20T00:00:00Z", "metadata": {"7UfYSrdN0JVz4U43": {}, "EcV1FRyeeqehMNeR": {}, "YKeMbL0G4v5D6ylZ": {}}, "origin": "GooglePlay", "reason": "oFjxZjh5qUR1Pq4a", "source": "TRADE"}, "currencyCode": "MMAYokSWFwajRGUy", "userIds": ["klfLVY6g3PO4hKAe", "Wtu5RPsqd66ImBEu", "F4GUV5m96qcCJsVO"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "hnaxZVf6MD9r1y5I", "request": {"allowOverdraft": false, "amount": 72, "balanceOrigin": "Oculus", "balanceSource": "TRADE", "metadata": {"531Kajxq7lzuVRVE": {}, "vhKIbrq1xsGpdobY": {}, "un8hcO55hVjfWyK0": {}}, "reason": "2w5QytAmkanukAzA"}, "userIds": ["MaRvIUhUwguGgbLL", "2FJ0iGLRTXGsC5mx", "N3O7CEYjxqElP5lA"]}, {"currencyCode": "xse4eeuMgEctVEux", "request": {"allowOverdraft": true, "amount": 80, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"Ysuff3b7G5FDX4mu": {}, "0qPHb9Ll2EFEb8Gn": {}, "sthmQ2Y6ZGOiqrg3": {}}, "reason": "lpqN5bOfnqJ5bzDR"}, "userIds": ["zbhMxfEDE4TrtIHy", "yMq79EdB9MxaF8QH", "GM2IuQYBO8m0HgTt"]}, {"currencyCode": "h479W8rXqwGVIRWg", "request": {"allowOverdraft": true, "amount": 82, "balanceOrigin": "Xbox", "balanceSource": "OTHER", "metadata": {"qMrAGpdyF6WDHn3e": {}, "PBxQNz2IUEHMzl5j": {}, "hwVDsuzwJ4v50eoa": {}}, "reason": "IBrTh0EKkJioUpvG"}, "userIds": ["nkcHgCfaWzPUvCnf", "qsPGgJZyRwigaMu0", "7Zek8WObpf0FHYfV"]}]' --login_with_auth "Bearer foo"
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
platform-public-user-entitlement-history 'gZaoYAaCCeRgtsts' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'U3Qecxo4bQZO3P2f' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id '8TTOVf6jrr1OL606' 'QpqCgxt0NgDSj1T6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'EdeYFmrLT0HbvS4k' 'SSt3CyDgf6eFAiqS' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'kHi0BR2ElF6z6eJK' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'uOW61akRFizqxCmu' 'dSXivAL3n478mhb2' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'I2yBJeCJghTrk68F' 'WFzuLBdlrKjUbgZQ' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'fw6Zys3mN8fIcC9C' 'kharfqaoMsGyv1Ru' --body '{"options": ["SNdycDssUeHiVDXz", "SJ8kbFAyidbnXdMS", "wmkBkKC1h6h45u0w"], "requestId": "uh9pY0011jSmHFTt", "useCount": 11}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'RwI9ZBTipMRlhK9D' 'MMaI4ryVDvNaruZx' --body '{"requestId": "wTfh9gEs6GF247cb", "useCount": 56}' --login_with_auth "Bearer foo"
platform-public-split-user-entitlement 'Io9lpz9oM52vHPlw' 'VV3jlPKDEYahnlLJ' --body '{"useCount": 1}' --login_with_auth "Bearer foo"
platform-public-transfer-user-entitlement 'IDsJHNg6TvNGjwI4' 'TbTwBufUorJouduh' --body '{"entitlementId": "CEJ5XiKDIE9Yugcu", "useCount": 32}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'TZTvYYf4ZFuV6L2A' --body '{"code": "ldoWWRN5wNYlFili", "language": "Nhca-kRsp", "region": "poI718RQnj4imu6X"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'FfRcWDXhq1YmGeyg' --body '{"excludeOldTransactions": true, "language": "Zt-wRpN", "productId": "aBeryzX2hOPVVFqV", "receiptData": "qxjq1iG3TySOh8SI", "region": "75oXbyq8FBbur80Q", "transactionId": "wnlgAVfqz6gQJh8s"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'n0bVWRkvmAemh8li' --body '{"epicGamesJwtToken": "oBR7xTXcEIFod3lC"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'zvjHzDHOrSJ1vbB7' --body '{"autoAck": false, "language": "aDWf", "orderId": "GLgkfrZveFMWAFT7", "packageName": "l0l1jaOAMCzbsoIg", "productId": "mKwwMDQPjUIosq1l", "purchaseTime": 56, "purchaseToken": "xo0D4JRbNqO6IuP2", "region": "PY5hhX6uNah9JoHP"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'j7jFWxSv1lYylYAi' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'Z8c7Zd7EUoezOLw8' --body '{"currencyCode": "C1c5bBB3XZ7ColKw", "price": 0.1836149634366515, "productId": "sNvtFuunQsvdXGlD", "serviceLabel": 37}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'xxIyVwYjn6dlC9Kf' --body '{"currencyCode": "h9gHuloyce0cLJu4", "price": 0.1776499557629505, "productId": "jPWlCWTuGO8MnfOQ", "serviceLabels": [16, 43, 31]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'wdT4Aodp95o1RkX7' --body '{"appId": "iW7VpCngWAv5DAG8", "currencyCode": "dPdkKgQqjyzUZR2r", "language": "yjQb-215", "price": 0.45336600085789014, "productId": "yscsMBRLsWadk2OQ", "region": "421q7Nb1vrKthVvU", "steamId": "5on065ApCkVN3Qch"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'uQ6pntxB648ss7rB' --body '{"gameId": "nvQHAM8gSdIybKUB", "language": "bib_aWGl-658", "region": "JmKaLCx3gcidEALW"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'e6RG5wWznu5AjwR1' --body '{"currencyCode": "Z4fU7ICcaQtuuKUw", "price": 0.8877385613767356, "productId": "dUwWHhQW3I1y9tjR", "xstsToken": "LVOXBMa0JiIe1AY0"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'tUA7EKASk3USNLhO' --login_with_auth "Bearer foo"
platform-public-create-user-order 'BlxRBLgohp8ByTi2' --body '{"currencyCode": "F6AyUX8w77riPlPg", "discountedPrice": 73, "ext": {"Jv4rpqtzDaz0WUJl": {}, "BCHzJ2v9K8c1zOlZ": {}, "g30pagfP0FfOMBOp": {}}, "itemId": "eQT4zYIbU4i9mLyX", "language": "bHM-TSEO", "price": 66, "quantity": 87, "region": "8y2ScXkwjpAp82pG", "returnUrl": "cxvXaG9LzHpMS53j", "sectionId": "llopwirRo3A8WxnR"}' --login_with_auth "Bearer foo"
platform-public-get-user-order '0YaMsF3f5KLtpTSs' 'PMGDZTOwEP5Bhh0N' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'StWIggmhfAzVdNYP' '7Ao1z7FeJM2fWXGk' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories '7JObSHksRkabpmvR' 'sc7ZYvXCT6m6mRZA' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'lLBczJVeil7GbG1I' 'SBCkcnpxKUxLjmxh' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'BS6YypRW7fNntaIE' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'tDI6MbhxkQdezbmf' 'paypal' 'ersoZ2KbMb5jal0r' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'uZmBXlGSp85q6fuG' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'fo5wSDHnyabk493I' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription '3pvHKDaWhTN1qyxp' --body '{"currencyCode": "UzWIZWJTDzWguhuj", "itemId": "w1EoR58uCVldefon", "language": "kmbn_ZM", "region": "Se36SA5dxATLv5Pk", "returnUrl": "LvraRzChdjDGdlk2", "source": "A2jHbAPNGInvbnf4"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'ewKFFLoGggX4gQWy' 'ZocvYfr0Rnl02R1I' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'VNnaK6KS71Xs1Bph' 'A9BXpKYgF9OuigDP' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '0Vjmy7j2BrdCAm3s' 'lCwaBqHpE55sjxBG' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'ijw0dQtZNonMrPkz' 'Ue9SglAJGyZS0I8F' --body '{"immediate": false, "reason": "xNRzF3NaUuCyQyze"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '6zPKu5sE89JW8UU0' 'RsB6dvrpmInhHYzV' --login_with_auth "Bearer foo"
platform-public-list-views 'VlHGFSwjby6rMYkV' --login_with_auth "Bearer foo"
platform-public-get-wallet 'QnZDUAbINRKQsxUO' '1YMxAndOj5O6IBwX' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'JjgQjgLoJyqwFVBd' '1ZjaRXEdWgS12bSb' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'PgOCWUogizeWOPUM' --body '{"itemIds": ["rqgEIsMwNbfti0Lo", "TBcNzyoCSw1t653G", "3ydYmGzvx9bSqqyA"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'Pha5b6PQTPTytHee' --body '{"entitlementCollectionId": "Xo7gOFVLZCBWuVIR", "entitlementOrigin": "Xbox", "metadata": {"ljKxqZcLuhwNDvVa": {}, "lv3bkoMXNzl1ywEP": {}, "iunixlEAHZzHs8x5": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "dUWHcjrb6qNeKpOx", "namespace": "PrlG9svdqsiVTqPb"}, "item": {"itemId": "zY1yxl7zeEpmSPO6", "itemSku": "KwlJQlj9Ii2jARwz", "itemType": "owk9OoiPdnq9KBqB"}, "quantity": 46, "type": "CURRENCY"}, {"currency": {"currencyCode": "iNCsnK8CcO1OHbpQ", "namespace": "ZtwW3EwLre1bL4dJ"}, "item": {"itemId": "nkRLJbMvOGSd7uMr", "itemSku": "mQ2SaLd6M7TM3wnJ", "itemType": "yExuo5z9RAcYgYZb"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "bg7o1zYpqUsliPyX", "namespace": "ZGYIW5ZDtWbdkzPP"}, "item": {"itemId": "47RcUIi2CoNj4EG2", "itemSku": "emxKQk8cBrt5E8k8", "itemType": "rzDZ08j6ICP75cm8"}, "quantity": 60, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "ChFi3zLvfQWC85Mx"}' --login_with_auth "Bearer foo"
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
echo "1..445"

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
    'WxvW0veFl3uU1aMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    '0mczWxc8f1s2QPMM' \
    --body '{"grantDays": "Zsf2dvKZyHChRPHv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'dkcKW21B5EFtD2pY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'aKTz1gcE2XCwTkRU' \
    --body '{"grantDays": "IX6IFHNmB9mYBvtO"}' \
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
    --body '{"clazz": "wxjqyrjDApeN5eAf", "dryRun": true, "fulfillmentUrl": "VxgQCbpZx5yMGIQ1", "itemType": "CODE", "purchaseConditionUrl": "xVIefYlKBJyQMqUE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'BUNDLE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'gG48bk6PwH1tdEAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'SqXA0Wv0zWGvkc6b' \
    --body '{"clazz": "yp3mvyYT3GuaZVTx", "dryRun": true, "fulfillmentUrl": "SSEluBxM47BTww3n", "purchaseConditionUrl": "BTVmBFZ6TIs9bTi2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'm7eNsYEqKkeuLWDf' \
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
    --body '{"description": "eFeExlOFjRh8mLFT", "items": [{"extraSubscriptionDays": 73, "itemId": "MrEgl7ZR1HCkf2Sw", "itemName": "78lLGKjDHuXt358g", "quantity": 52}, {"extraSubscriptionDays": 43, "itemId": "qRMuMPrIekxq58fi", "itemName": "kq83hqJ7HP63Se6k", "quantity": 97}, {"extraSubscriptionDays": 6, "itemId": "W5fkl60ImLBv6nUU", "itemName": "0r1rfX9stpvJUuyP", "quantity": 8}], "maxRedeemCountPerCampaignPerUser": 68, "maxRedeemCountPerCode": 53, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 50, "name": "BM2wEgTtLRT5stwQ", "redeemEnd": "1987-02-17T00:00:00Z", "redeemStart": "1994-06-19T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bTPQ8p7VMlxEXnqH", "wMyKpwphjUXvM1Gq", "MkZ44UXgdBqtJaRy"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'KpXx60GmEX9x2BYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'yKEBQ7TW7lZvDbwF' \
    --body '{"description": "JJhBRdq8BgAI81k4", "items": [{"extraSubscriptionDays": 67, "itemId": "q0CIa1YCK9PlMeQp", "itemName": "rfgLGkHX1tdBjKmC", "quantity": 57}, {"extraSubscriptionDays": 96, "itemId": "XETZwqdzAX28DikG", "itemName": "k8cWiX44azSHcwic", "quantity": 95}, {"extraSubscriptionDays": 97, "itemId": "Vq2XPljTZj5R0yZS", "itemName": "VQ8SSeJ4qy4PIKle", "quantity": 41}], "maxRedeemCountPerCampaignPerUser": 16, "maxRedeemCountPerCode": 97, "maxRedeemCountPerCodePerUser": 79, "maxSaleCount": 3, "name": "UGeDavCKradJmJFU", "redeemEnd": "1980-06-07T00:00:00Z", "redeemStart": "1994-11-18T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["bGYSYo9fY2EBZAHQ", "Xc4Xcae7VKl0ARzG", "EArlfE1NSmtcADoZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'vd0La7P4JI4H7uDz' \
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
    --body '{"appConfig": {"appName": "kOHTdnUtdrRcs3Ge"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "sKPNlG7rEXi6LEqJ"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "sWpLUHjGaIcZN28g"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "4Cd9xTdt2K1CzpQW"}, "extendType": "CUSTOM"}' \
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
    'QnJOKHC16xjJZ4ki' \
    --body '{"categoryPath": "U3N8556ll2LQWpdE", "localizationDisplayNames": {"SOBV7wZJsg7wSv9l": "yRyTdYBUljvBzvYN", "EtfgBFikt18cQ677": "SotDEtU2xBSEQ8rB", "Kc2K6oJXxVEfnaqX": "8NuZtRUTKUvR69PI"}}' \
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
    'my6CcwlqJ4MO3L8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    '1H5OgzHypgsSeKCv' \
    'tPz7jagBG9a1TZ87' \
    --body '{"localizationDisplayNames": {"ltClc3RDXF5055tU": "lenimjIbm0riCaNp", "8dUBDinAB6HqIWIi": "5Bvb1rcuEtWAF763", "kci7lT62BOHaso53": "W3U2Mu9ZGMWou1U0"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'RVCf3gMWDAodCKqf' \
    'qzeexHA70NgJTxjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'zgO7W3taRvJ6lKWJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'wHO65aOFDwpqy7XO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'U3DwglyMGNll4O8E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'LahcNJqRjepck1l0' \
    --body '{"quantity": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'Uf9RpcfEQn0O6D8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'GQuazAypgWhTED5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'mPTBUkm2FyvdguCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'VqFyIKh1YtTY4Aej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'yQc5Dac7hSLldWx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'DyniVESUgrROrP1i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'p3jNG68DByf2UMPt' \
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
    --body '{"currencyCode": "igq9zOQOcAqBj0bX", "currencySymbol": "hOr9OHt6zx1i2W3G", "currencyType": "REAL", "decimals": 40, "localizationDescriptions": {"nyhbqxLuTZIxgiUa": "iyy0aWrshpmb1C9A", "l7eWrbNRE0xyYPUZ": "HyLGQ52IjGpRJCUJ", "pscOTkWETSJ04c5M": "GInO4yznh2YpZvvm"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'ziSSiSpXeWOGayfR' \
    --body '{"localizationDescriptions": {"kQvoN06SpNOnuSks": "fm7hcIFdkdrwAcK2", "lUda9h9FgvfhiLEA": "kA7n6516ydoRT1qZ", "BrdTnGrwHeWoQXPF": "WFaKbDgrGkv8SVwL"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'yS4VbHJvD0lL7aZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Y9d1Idud8bjYeBVM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'r7zHYmRE4X36KUOd' \
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
    --body '{"data": [{"id": "fEmoIYwSxxAsfwDM", "rewards": [{"currency": {"currencyCode": "ivWqHHGlnAnEu6EK", "namespace": "YceTEqYudHlA4Axe"}, "item": {"itemId": "EIfUxJ2xMSNNBxCe", "itemSku": "N3pGn46fGvodt413", "itemType": "MRdG8qAPiANv2Ar8"}, "quantity": 50, "type": "ITEM"}, {"currency": {"currencyCode": "XV6qf6v5SgcJPZPU", "namespace": "h2nHQwpWi8HZ6C0V"}, "item": {"itemId": "J0fK2m6lQ5Ao8TIT", "itemSku": "YiHSR2SEJh1YDedZ", "itemType": "dNqkXPWZfT8ZfdKp"}, "quantity": 33, "type": "CURRENCY"}, {"currency": {"currencyCode": "aToxBiliy2vtRkpq", "namespace": "L6KrVcNz83J57t6O"}, "item": {"itemId": "cYPQ5bk5IeuAi3zW", "itemSku": "FGorCbncoj5RvEtX", "itemType": "iKyUGdNfMiwgSvsT"}, "quantity": 89, "type": "CURRENCY"}]}, {"id": "mJsOm0wVFyHvFhRM", "rewards": [{"currency": {"currencyCode": "CFJuA0DEMgykqqjo", "namespace": "HTpIPMSRAuPI7mSZ"}, "item": {"itemId": "Q5UDm1q51PlW2HG8", "itemSku": "LAiIzuo321Ll90IB", "itemType": "FsSb3FsV2PnCs9R0"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "5jZEwxcow6L7c3CO", "namespace": "EP4AZx70uwV4XgvG"}, "item": {"itemId": "TMHkXeEwuFJf7tbq", "itemSku": "5KikDE7hWvT5bzcf", "itemType": "zIpL2pWB4XsdrxIF"}, "quantity": 22, "type": "ITEM"}, {"currency": {"currencyCode": "mkfVlu4bGB1pyk0P", "namespace": "pxXZDy5Pmbu7RrD9"}, "item": {"itemId": "a5mdlXTCL467xHbA", "itemSku": "iD3Pr3mXZO1PnbSl", "itemType": "fVRlAI8F2f3mEv09"}, "quantity": 21, "type": "ITEM"}]}, {"id": "5DHLB65fxQ06GwTm", "rewards": [{"currency": {"currencyCode": "obiBnfrnq9kOFBWh", "namespace": "UTPiKR3qcbHLGplY"}, "item": {"itemId": "sS3jsRZffCd00Vrg", "itemSku": "PuNtOv3jbhGBuW8K", "itemType": "cyPMfDWSEEpKoJlm"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "QUCx70QjYbzemOTU", "namespace": "RzzAOIBarB7kcer5"}, "item": {"itemId": "SvPLeQZIpKFXgnsx", "itemSku": "x3c2bUsO7FP8RmOs", "itemType": "tZAGDgiVsV2OttwJ"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "xPDIJ5hFQHumFvPK", "namespace": "qupHj72TlLs964iA"}, "item": {"itemId": "BOgTKtnaA7O35Iay", "itemSku": "td9CsAMTZC37xPXx", "itemType": "nfggnZ3EZp6wSAuf"}, "quantity": 45, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"RaZozM8xCBoaS2FM": "wfWNCbN5GelVOU0h", "HnsCl5k6Jxh5mkmQ": "zKg0jWCjpGwh7pLA", "i5JmzvM6JFKB8ikH": "pl3sNRaDEC2OkXA3"}}, {"platform": "XBOX", "platformDlcIdMap": {"qypoOw0H2s0sibQN": "Bz81zRPntxpgi7tX", "IcNEcGJjOCXpuix5": "vnPeTu9evbRov7Bm", "40CtZiAxk43DGV1S": "Ckw8U0d4FvVmPMtp"}}, {"platform": "XBOX", "platformDlcIdMap": {"RdgwMXv9olKpRyWQ": "im3qlART9mPPmYUv", "lkBGPJFaFzkABC8z": "WMcYW5iRrw32FRg8", "y4rOuj7J6ijJbcyc": "XmBcrJLb7labyoti"}}]}' \
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
    --body '{"entitlementGrantList": [{"collectionId": "fVk9KyqceGv0CEDT", "endDate": "1995-05-20T00:00:00Z", "grantedCode": "SjINYeKLowG7UQB9", "itemId": "pXzuCK5qd2m8A5ax", "itemNamespace": "ixm9X9TXNhN8y1PV", "language": "Ihj_zGKj", "origin": "Epic", "quantity": 42, "region": "VKp4Kgew2mHDksA6", "source": "GIFT", "startDate": "1982-09-01T00:00:00Z", "storeId": "Nzs19eBq9a1L8S1y"}, {"collectionId": "duOwscICro6P8FWI", "endDate": "1992-09-09T00:00:00Z", "grantedCode": "eqaBeD2uBAvIXEc2", "itemId": "CCgYcFo9A93o22Ug", "itemNamespace": "ObCOiBWdw2b031dm", "language": "pNGo", "origin": "Nintendo", "quantity": 41, "region": "mm04BlZUAlYnCT11", "source": "PROMOTION", "startDate": "1996-08-29T00:00:00Z", "storeId": "1QIk1h5EKvMGd6hQ"}, {"collectionId": "2mHjmLu4oFlReHy0", "endDate": "1989-09-24T00:00:00Z", "grantedCode": "yZv7honqeiGTTqpg", "itemId": "VsY1kPNdJiJXB3yj", "itemNamespace": "NUPIfvoXRO0CkW1Z", "language": "bG_VNRF", "origin": "Playstation", "quantity": 55, "region": "EehUV0jsjAyVgxS5", "source": "GIFT", "startDate": "1991-10-16T00:00:00Z", "storeId": "Ns3XdhMbQX9D1znE"}], "userIds": ["Trl4MP3Nl4T3ujvV", "Ww9p7g4UsQCTKDh5", "n9yc34xF8qFllM1L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["7W6ADLtn7oInn1Bz", "3wM3BI51etn17Ocm", "SVHZ6wtPVAwgvxYx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'XJTduZp1nNYHREmm' \
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
    --body '{"body": {"account": "1cBuaRaGeM8yxRfe", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "bmtK7MTxcCWnMiCL"}, {"amountConsumed": 38, "clientTransactionId": "5r2K0IvVg5LwUygH"}, {"amountConsumed": 5, "clientTransactionId": "8dzTL8azKCCNBZpw"}], "entitlementId": "RFNYxx2dr6DDuDHX", "usageCount": 4}, {"clientTransaction": [{"amountConsumed": 83, "clientTransactionId": "fvXPXJURX3XwhOlg"}, {"amountConsumed": 4, "clientTransactionId": "YVvEcEm53BYMBacQ"}, {"amountConsumed": 57, "clientTransactionId": "9vGOUeSeGb02vDPU"}], "entitlementId": "pv5VEdIG82dpIbfx", "usageCount": 98}, {"clientTransaction": [{"amountConsumed": 10, "clientTransactionId": "FfdvKQVgPQw3MVXe"}, {"amountConsumed": 47, "clientTransactionId": "Twpwq3nLwxnJKjOo"}, {"amountConsumed": 88, "clientTransactionId": "fvfXF1VsikD3IphQ"}], "entitlementId": "QiRcOtsthUwgQzNH", "usageCount": 96}], "purpose": "7FjYKlJiRIvhej77"}, "originalTitleName": "OSPwdzMSmrSvQdsA", "paymentProductSKU": "dTUGpd8KFrXKFA2g", "purchaseDate": "djQCYoE8b0CZetLf", "sourceOrderItemId": "pFNyp7375rhOmR4z", "titleName": "FjoJZVKZjOD2ePKA"}, "eventDomain": "KYjJMVnYj2yKqavW", "eventSource": "pydepM3ap069B9Ok", "eventType": "r0xJ5XRZVoxPGOLV", "eventVersion": 57, "id": "r9yJIveX52r6Inl9", "timestamp": "VTJB9Al3mn2DsHDH"}' \
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
    --body '{"bundleId": "zSVJzhU5Z44zgZ1f", "password": "ieLdl3Y82DOj5kPu"}' \
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
    --body '{"sandboxId": "NRZZaUccuBYep9n7"}' \
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
    --body '{"applicationName": "b17fsblalJrwQiU3", "serviceAccountId": "DD0xZFH1fHFLSr0O"}' \
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
    --body '{"data": [{"itemIdentity": "4rEZTbFDj2L2McvC", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"WenMNV00KVuLF9WD": "nGO3bpQWmnS52Zuu", "uI7F1xpVrcoXzSOE": "GEDYfiGPYo2K3dN3", "YBOJfvV6SuHovoQl": "k5wL2oXDZ20Bw2H4"}}, {"itemIdentity": "tz6KUC4jXGj2G0GZ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"BYi9bBKBRpdbLCiw": "xOx2XQn94xPqXhqe", "NMDGA3O5hQAl6U2g": "9imVMh3i7j095rDL", "6lEuB1ZIMIs1dFvY": "okH9t2u8ZZnyHKkk"}}, {"itemIdentity": "6Gh25tEcX9GegDnr", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"z0GFpSVdxFsXAp1r": "oclyXllFitPamSKR", "zDIZgSk6suS90ZbD": "dmjU11QIZtkSn8QR", "bA5V4gjWv1W6cqnv": "SuKswQ7vH8GScnP5"}}]}' \
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
    --body '{"appId": "QzRBY1UrefgmVFBV", "appSecret": "z4KRCU0p4jIt01gz"}' \
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
    --body '{"backOfficeServerClientId": "H17IcfJyGulmByN5", "backOfficeServerClientSecret": "rcDA3Wcv9ouALjgL", "enableStreamJob": true, "environment": "zLU9w8MJRIzIgJKg", "streamName": "9y86BgnBQtm5AilV", "streamPartnerName": "hASFlYMVJtE2dAeC"}' \
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
    --body '{"backOfficeServerClientId": "7pF73y9eALKWinUJ", "backOfficeServerClientSecret": "7bAuUJ7Fxg5LijlQ", "enableStreamJob": false, "environment": "q8Bh1p0NCKWNkLU5", "streamName": "ty3uQa7Fl3ZhSMLt", "streamPartnerName": "rwnjTJVDlh112byT"}' \
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
    --body '{"appId": "YCDBnAvf8JpFuJSZ", "publisherAuthenticationKey": "istM75544PDlVK8t"}' \
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
    --body '{"clientId": "aScpV0NtCxDDz5rx", "clientSecret": "t6LflBJjokLAaL4o", "organizationId": "AF2lqx8yneWKrOy4"}' \
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
    --body '{"relyingPartyCert": "xcg30BqC5W7g7hiw"}' \
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
    'umJTI3jlZPjoCdGi' \
    'IP6cB3Pj63MJXIuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'WYb2iHHVN0ZBgvri' \
    'gXUT4fRbawD5yOvj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'gOopQfbXmtF0WFH7' \
    --body '{"categoryPath": "F2InhxtynUjuBCxk", "targetItemId": "b2oF99xI1VVtVrVT", "targetNamespace": "6Hn8B2d1hZUnoQwg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '5uqgoHaFyoczck0q' \
    --body '{"appId": "JsgZPfuelAiZBZcQ", "appType": "DEMO", "baseAppId": "GI7csI8ecZSvzXYO", "boothName": "ytshBcKQytQagui6", "categoryPath": "lsKF28n7UC7y1MKY", "clazz": "VeoGFrDb8unXv1iE", "displayOrder": 51, "entitlementType": "CONSUMABLE", "ext": {"RNRVyeEGu1ICOCmL": {}, "AmcaEFBKgy92LYqt": {}, "QcDN7OMCehk42acy": {}}, "features": ["iXVzrG4EdKn8eypT", "LA8LlV2sccbVr6HS", "8wsWaPyppR3ztPSA"], "flexible": true, "images": [{"as": "3AhkrMi0bnppEJFI", "caption": "Sze88rGEr3cilJWh", "height": 2, "imageUrl": "oMxZZ9AutWDfVOIN", "smallImageUrl": "hql9CdDX4xiHpdfK", "width": 69}, {"as": "MhLbM6H1MnNSKd0K", "caption": "StITvGQtzwjGtGTr", "height": 57, "imageUrl": "38G8Aevk3k14782W", "smallImageUrl": "2oNo3X4m6wms9SPa", "width": 68}, {"as": "GZPuyWBVH66JU1II", "caption": "CVNNRV4lBToTcn1l", "height": 11, "imageUrl": "4ebrKEKdeo779KG5", "smallImageUrl": "yCz9jVs1lYK1Mx9r", "width": 63}], "inventoryConfig": {"customAttributes": {"1nV5ALS7cneNLItU": {}, "Jgh74tyxkTR8ZCVJ": {}, "tkxjBJrNeQRsqkkK": {}}, "serverCustomAttributes": {"K2qxqzy4KSA5UtSX": {}, "WjANSWIT9TLnuMLN": {}, "JAEk3A6A6rYiIu8e": {}}, "slotUsed": 78}, "itemIds": ["2QmYiYqap7masUca", "yqmp7vhz1T6cSrZL", "2CgHxdmYDj9vZNgf"], "itemQty": {"I1AeYHe8WPQGPclC": 15, "phqjHGGAhfWaXqkA": 83, "fuVYOsMFo9tnqa4L": 63}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"nI7cTzIUERPlQI99": {"description": "hMc4NbiJWP5r9Ewb", "localExt": {"IGMGJ70P9IqAyNlZ": {}, "2OwFSebBkXkaxtY9": {}, "7TMJH8bO4GDHT6Za": {}}, "longDescription": "UUkvlTKAhrxqHw7f", "title": "813qNjzlcxXsmGGc"}, "JhauxfhVKIbRvUny": {"description": "ElHPuQE3Gc8bY4IH", "localExt": {"0OXHZP6VVB7qjDHM": {}, "S49dkv8vxyg6giNK": {}, "zeFnlgGRgYK3SeYv": {}}, "longDescription": "ULYNIhs5PZGTJmgo", "title": "fq7nlF5Ch8J2Qs99"}, "0APOU4hcdwlnsTap": {"description": "2RJpHtncLywP3WlL", "localExt": {"mNdQGk6vneHoB1PX": {}, "O1vT1AonFO3syvkY": {}, "d78GsJGLbnb4Nvw7": {}}, "longDescription": "fnm4MnOqnqNerQoH", "title": "iDIJayvSNt8EQXsM"}}, "lootBoxConfig": {"rewardCount": 2, "rewards": [{"lootBoxItems": [{"count": 99, "duration": 12, "endDate": "1975-08-11T00:00:00Z", "itemId": "1yEI9ychtyhjZSeD", "itemSku": "CKT4ilZB8apDTR3a", "itemType": "L9sunWp7V1s8LmXm"}, {"count": 64, "duration": 19, "endDate": "1971-08-15T00:00:00Z", "itemId": "JMIjgzU02nZWwBdE", "itemSku": "FpfccauYDc86pxK9", "itemType": "KhF4KRVPoIuzAuQN"}, {"count": 20, "duration": 2, "endDate": "1984-10-10T00:00:00Z", "itemId": "fvOE2cVjFp1CeCEf", "itemSku": "aV4ZGGwbqOB4mD3E", "itemType": "7AFHqlTTkL8cmpA0"}], "name": "sZ0tgeR4UV5SMZ8G", "odds": 0.7433264568522479, "type": "REWARD", "weight": 56}, {"lootBoxItems": [{"count": 100, "duration": 96, "endDate": "1997-03-17T00:00:00Z", "itemId": "voCmprkv7A8MRutC", "itemSku": "KCsqmx2zriOGB8b5", "itemType": "qTFp3cIxOI33nt54"}, {"count": 18, "duration": 34, "endDate": "1978-03-05T00:00:00Z", "itemId": "nPOiTVzAeQq6rnWJ", "itemSku": "oTpYoe2uHaWnO98Y", "itemType": "wqHZnEDkfmNbDTMG"}, {"count": 14, "duration": 22, "endDate": "1986-02-04T00:00:00Z", "itemId": "T2yS6C8a8L0vQDS4", "itemSku": "EVpBmsUzx64Gr4XE", "itemType": "m0uYYuAmqhftIfe2"}], "name": "zdqZ7ht1vUiJ7jBX", "odds": 0.3955296463506216, "type": "PROBABILITY_GROUP", "weight": 38}, {"lootBoxItems": [{"count": 88, "duration": 80, "endDate": "1974-04-29T00:00:00Z", "itemId": "zU8FwQtZpfUoyoiU", "itemSku": "jmqOyQ7ammFgHprd", "itemType": "M9viFWmezrQOWH03"}, {"count": 51, "duration": 13, "endDate": "1983-05-21T00:00:00Z", "itemId": "AkRh3NmbRhMxKeIg", "itemSku": "wq1NZmxa0ghRG020", "itemType": "QpWTNKsVyK8EU8JY"}, {"count": 4, "duration": 66, "endDate": "1997-10-19T00:00:00Z", "itemId": "PA2ef1jFeqQ8mBpT", "itemSku": "uvLTJUzwXJFaWW3J", "itemType": "VdYpfHOYoLva2c4J"}], "name": "scEQfBFZXcSXpU81", "odds": 0.722875465358195, "type": "REWARD", "weight": 69}], "rollFunction": "CUSTOM"}, "maxCount": 60, "maxCountPerUser": 80, "name": "sZyvZOFJ5RrFZYcw", "optionBoxConfig": {"boxItems": [{"count": 10, "duration": 39, "endDate": "1992-05-09T00:00:00Z", "itemId": "1Q2BbcjSpv6Nt1oz", "itemSku": "4tdgfKu4bmK8kOKc", "itemType": "EoCRjQJlPY3p42OS"}, {"count": 26, "duration": 16, "endDate": "1997-09-24T00:00:00Z", "itemId": "04DIyosprZPBaERb", "itemSku": "7U9kK4VctUmDhFVN", "itemType": "a0JYzTbdnOnEarWP"}, {"count": 60, "duration": 28, "endDate": "1975-05-22T00:00:00Z", "itemId": "JNUuxK22saWaGvrz", "itemSku": "BdLvFUBZDnVrcwbs", "itemType": "D0RDLxWgEWwoHpV8"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 16, "fixedTrialCycles": 88, "graceDays": 25}, "regionData": {"ZLa7Kw77UpCxNyx1": [{"currencyCode": "jjdxNePPAJ6Z9Uzq", "currencyNamespace": "IhZZiK0QEG6C9w4l", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1999-11-15T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1991-09-10T00:00:00Z", "expireAt": "1993-11-15T00:00:00Z", "price": 57, "purchaseAt": "1979-02-19T00:00:00Z", "trialPrice": 4}, {"currencyCode": "6OHZzvdZHoIm4tKN", "currencyNamespace": "hPjNIQGFxGwgnSiZ", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1985-02-25T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1986-06-09T00:00:00Z", "expireAt": "1998-07-15T00:00:00Z", "price": 43, "purchaseAt": "1995-04-29T00:00:00Z", "trialPrice": 0}, {"currencyCode": "f77AAPI5tdPeFz9p", "currencyNamespace": "GYsLNEGrfy9qHKuf", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1985-03-31T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1991-02-05T00:00:00Z", "expireAt": "1998-09-20T00:00:00Z", "price": 16, "purchaseAt": "1999-09-09T00:00:00Z", "trialPrice": 33}], "vw0GSLBmie8SJckS": [{"currencyCode": "Rbu7hgmUm7RVCURE", "currencyNamespace": "DdoGatGQ1SeOXsg4", "currencyType": "REAL", "discountAmount": 23, "discountExpireAt": "1978-03-26T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1983-05-06T00:00:00Z", "expireAt": "1973-05-01T00:00:00Z", "price": 86, "purchaseAt": "1981-06-29T00:00:00Z", "trialPrice": 35}, {"currencyCode": "lQ1xdmr4JDpvZgvP", "currencyNamespace": "GHjV7MNTpM7fSods", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1986-01-23T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1995-03-22T00:00:00Z", "expireAt": "1998-03-21T00:00:00Z", "price": 0, "purchaseAt": "1979-03-07T00:00:00Z", "trialPrice": 20}, {"currencyCode": "MiRf2yCyM0Tp5GJH", "currencyNamespace": "HbsLJ73mCPhhmUyI", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1974-12-12T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1988-10-16T00:00:00Z", "expireAt": "1976-04-28T00:00:00Z", "price": 98, "purchaseAt": "1995-09-10T00:00:00Z", "trialPrice": 92}], "UbeTeB9KgnFZQ9lV": [{"currencyCode": "MNyCiytnfMoO1I3K", "currencyNamespace": "ISTbn4yEa2AaBRal", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1994-09-06T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1977-12-24T00:00:00Z", "expireAt": "1984-09-23T00:00:00Z", "price": 80, "purchaseAt": "1971-01-09T00:00:00Z", "trialPrice": 26}, {"currencyCode": "QFEzppeticckSUon", "currencyNamespace": "7awfol07696uxp5i", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1990-03-17T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1975-08-02T00:00:00Z", "expireAt": "1991-02-22T00:00:00Z", "price": 10, "purchaseAt": "1983-09-19T00:00:00Z", "trialPrice": 70}, {"currencyCode": "Sx3AJN97kUjwiCmW", "currencyNamespace": "QvbrxQpUSnos6QiH", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1979-01-19T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1987-02-08T00:00:00Z", "expireAt": "1981-12-25T00:00:00Z", "price": 45, "purchaseAt": "1995-06-15T00:00:00Z", "trialPrice": 15}]}, "saleConfig": {"currencyCode": "LmenyxTQVkEg5wou", "price": 95}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "5m8oH9zCfw7mCMkb", "stackable": true, "status": "ACTIVE", "tags": ["TPF4VrRiFSPs2ZMc", "VFcrixULzSeTnUWG", "Im7JROcwVmGyrBpn"], "targetCurrencyCode": "xxfnMIDSCPr1m1Fg", "targetNamespace": "6tc250c2okDTem6o", "thumbnailUrl": "62xFY6TNqoLFFS4w", "useCount": 57}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'j61WdV2XUo1BO1rE' \
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
    '7E12Fapao5jo9nJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'KEb8tHmFwLGan2Sr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'KckNxLWH6rjhRL9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'xoV5Oe8ktlePEo1x' \
    'BuRSv6VizgtOXZy9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'cQ6B074dTJZqeOll' \
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
    'KQNwJUGtC0tAhxn1' \
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
    'ay6ruu7PYWHODRb6' \
    --body '{"itemIds": ["skOj0lfYFGnQCAWi", "dWPjYgyebU6rHFir", "nUpZ9UJ4N78qHTGd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'n7gE4bwLzDEw2PYt' \
    --body '{"changes": [{"itemIdentities": ["8x9SSaOZcEvG6KZh", "954BmtuIFllfSUna", "UhC4x11AS2jTKoTY"], "itemIdentityType": "ITEM_ID", "regionData": {"y01FkEEXlKiTIDgP": [{"currencyCode": "7wuXQdfW99JglSco", "currencyNamespace": "OlkkBxiXf8OBQRqX", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-08-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1993-09-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1984-08-11T00:00:00Z", "price": 32, "purchaseAt": "1977-01-21T00:00:00Z", "trialPrice": 99}, {"currencyCode": "0EEziE5yIvijq9ix", "currencyNamespace": "16vo60jgvwV3C9hJ", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-04-20T00:00:00Z", "discountedPrice": 59, "expireAt": "1989-08-25T00:00:00Z", "price": 28, "purchaseAt": "1999-06-30T00:00:00Z", "trialPrice": 99}, {"currencyCode": "GWgccuzuc6QDRMGd", "currencyNamespace": "BPbUyHTYPS8CGKXG", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1978-03-30T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-01-20T00:00:00Z", "discountedPrice": 4, "expireAt": "1975-05-23T00:00:00Z", "price": 3, "purchaseAt": "1984-02-13T00:00:00Z", "trialPrice": 64}], "BuKBco1AeO3yvvBL": [{"currencyCode": "ZPBuekeBe4Tvb3fH", "currencyNamespace": "CIJZkwEcCRi2U7s2", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-04-20T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1984-06-30T00:00:00Z", "discountedPrice": 84, "expireAt": "1988-09-16T00:00:00Z", "price": 5, "purchaseAt": "1995-06-21T00:00:00Z", "trialPrice": 72}, {"currencyCode": "0PwZjydyzGDZM4zT", "currencyNamespace": "TYI6O8coYDWUfcL1", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1974-02-07T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1974-06-22T00:00:00Z", "discountedPrice": 56, "expireAt": "1980-05-22T00:00:00Z", "price": 81, "purchaseAt": "1988-05-14T00:00:00Z", "trialPrice": 8}, {"currencyCode": "2yOVN1h41jIPOMXu", "currencyNamespace": "fZPWSe20JfNvtNcW", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1979-02-04T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1995-03-21T00:00:00Z", "discountedPrice": 56, "expireAt": "1982-04-18T00:00:00Z", "price": 94, "purchaseAt": "1980-07-14T00:00:00Z", "trialPrice": 37}], "3tMM1bFFDIqKD8HJ": [{"currencyCode": "4X0DetCeJ4x0wf5m", "currencyNamespace": "Qx6Hs7M5apPMc8ZR", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1973-12-06T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1995-10-19T00:00:00Z", "discountedPrice": 5, "expireAt": "1981-04-17T00:00:00Z", "price": 51, "purchaseAt": "1995-05-29T00:00:00Z", "trialPrice": 1}, {"currencyCode": "DODBmrqEhGlkEmGd", "currencyNamespace": "CbwodVRjZJWuCQpj", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1989-02-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1978-04-17T00:00:00Z", "discountedPrice": 85, "expireAt": "1987-11-29T00:00:00Z", "price": 57, "purchaseAt": "1977-08-18T00:00:00Z", "trialPrice": 86}, {"currencyCode": "PxVWlRFnIekrQ99e", "currencyNamespace": "cmenxguw5bO8Vh4J", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1991-05-16T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1991-05-28T00:00:00Z", "discountedPrice": 37, "expireAt": "1978-07-23T00:00:00Z", "price": 80, "purchaseAt": "1979-04-05T00:00:00Z", "trialPrice": 58}]}}, {"itemIdentities": ["LJGMl5xFgLj4mCSh", "MFlbrRGjoBQ45Za4", "JR4S3iac6vLeoIUL"], "itemIdentityType": "ITEM_SKU", "regionData": {"lWXmQFlef1tSHJf6": [{"currencyCode": "sVpwAAKKqmTy0ZSy", "currencyNamespace": "J7IIUXlBlZMQeSnO", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1971-02-24T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1973-09-27T00:00:00Z", "discountedPrice": 92, "expireAt": "1987-06-29T00:00:00Z", "price": 13, "purchaseAt": "1979-01-10T00:00:00Z", "trialPrice": 14}, {"currencyCode": "pmoF4DvNA1wo9IAx", "currencyNamespace": "V5C71gTw8BJPFctw", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-08-21T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1993-04-20T00:00:00Z", "discountedPrice": 6, "expireAt": "1976-07-15T00:00:00Z", "price": 41, "purchaseAt": "1996-11-26T00:00:00Z", "trialPrice": 83}, {"currencyCode": "JekbO0sk7o1z37uu", "currencyNamespace": "qLDQF12kYfBqeQxo", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1993-06-17T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1999-09-04T00:00:00Z", "discountedPrice": 20, "expireAt": "1993-05-10T00:00:00Z", "price": 65, "purchaseAt": "1993-10-27T00:00:00Z", "trialPrice": 75}], "KOfFFLvER3xqCwUg": [{"currencyCode": "Ka4oCBoJDxGa1UuS", "currencyNamespace": "r4ehnV8Aw9m6GvDS", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1987-05-30T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-01-31T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-09-01T00:00:00Z", "price": 23, "purchaseAt": "1985-04-15T00:00:00Z", "trialPrice": 97}, {"currencyCode": "4mqFhgKKcGohdjQU", "currencyNamespace": "wVdPsArkepfK0DE3", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1971-09-05T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1977-03-21T00:00:00Z", "discountedPrice": 86, "expireAt": "1989-04-18T00:00:00Z", "price": 15, "purchaseAt": "1979-02-27T00:00:00Z", "trialPrice": 86}, {"currencyCode": "nvAWBSOr7zljUKyh", "currencyNamespace": "KkD7wAHMrv8zABDh", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1977-08-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-06-26T00:00:00Z", "discountedPrice": 1, "expireAt": "1980-08-12T00:00:00Z", "price": 59, "purchaseAt": "1981-01-27T00:00:00Z", "trialPrice": 13}], "hzXb6cBMPNMmjMi2": [{"currencyCode": "uztFNfXg0UvwaZ0p", "currencyNamespace": "y16ShGomFzUappaa", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1997-04-30T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1987-04-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1995-11-05T00:00:00Z", "price": 53, "purchaseAt": "1971-07-29T00:00:00Z", "trialPrice": 39}, {"currencyCode": "xerpjVPfktNnl8UY", "currencyNamespace": "H5kesuOtYHLqcdy0", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1979-08-30T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1982-09-18T00:00:00Z", "discountedPrice": 43, "expireAt": "1978-04-05T00:00:00Z", "price": 74, "purchaseAt": "1980-12-17T00:00:00Z", "trialPrice": 90}, {"currencyCode": "7yc8xLKyBfGLHEAK", "currencyNamespace": "hp612Y2ncRf7tEGz", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1993-06-23T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1980-10-05T00:00:00Z", "discountedPrice": 80, "expireAt": "1977-09-15T00:00:00Z", "price": 63, "purchaseAt": "1986-09-15T00:00:00Z", "trialPrice": 41}]}}, {"itemIdentities": ["lXHBOK1RqtKYVObV", "orIVWWLaVJwe2KAc", "a1aKeXUu9hINqKvo"], "itemIdentityType": "ITEM_SKU", "regionData": {"Kio4M51vuaFyqjQs": [{"currencyCode": "TGmzItJIOkEIRsSW", "currencyNamespace": "OV8LyivYbMG9LXPb", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1974-12-27T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1986-10-21T00:00:00Z", "discountedPrice": 7, "expireAt": "1982-05-08T00:00:00Z", "price": 65, "purchaseAt": "1974-01-17T00:00:00Z", "trialPrice": 9}, {"currencyCode": "hP3zTymfVfny2M0K", "currencyNamespace": "sS08cY3fjI1YTT3q", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1983-10-10T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1997-05-29T00:00:00Z", "discountedPrice": 90, "expireAt": "1995-03-14T00:00:00Z", "price": 11, "purchaseAt": "1995-08-23T00:00:00Z", "trialPrice": 9}, {"currencyCode": "RhzfKDAGIAJuPhQc", "currencyNamespace": "ZwXRE9FOZUVTfDc3", "currencyType": "VIRTUAL", "discountAmount": 100, "discountExpireAt": "1998-06-06T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1984-12-02T00:00:00Z", "discountedPrice": 89, "expireAt": "1989-05-24T00:00:00Z", "price": 66, "purchaseAt": "1992-06-03T00:00:00Z", "trialPrice": 40}], "dXJGDsxRAR3NObYp": [{"currencyCode": "43YXMHqWeVjnOURx", "currencyNamespace": "GvOhz9s7ktWkJDaH", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1998-03-19T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1986-12-13T00:00:00Z", "discountedPrice": 97, "expireAt": "1980-03-14T00:00:00Z", "price": 78, "purchaseAt": "1983-08-16T00:00:00Z", "trialPrice": 15}, {"currencyCode": "QAdOfrtHWyGg5TU3", "currencyNamespace": "INkMgjsnP8itevmj", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1995-03-18T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1975-02-07T00:00:00Z", "discountedPrice": 40, "expireAt": "1981-01-21T00:00:00Z", "price": 12, "purchaseAt": "1981-09-12T00:00:00Z", "trialPrice": 55}, {"currencyCode": "Qv384ri6A7z0hsW0", "currencyNamespace": "IHIYvJ7PPgVaFwGh", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1976-07-29T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1983-03-30T00:00:00Z", "discountedPrice": 54, "expireAt": "1983-09-05T00:00:00Z", "price": 80, "purchaseAt": "1981-03-29T00:00:00Z", "trialPrice": 30}], "1hVfVC7eLVWGk0Gj": [{"currencyCode": "YReIZaDC2Au2bEpy", "currencyNamespace": "mbJ4dPJmkdvyuDHF", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1981-03-28T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1985-03-02T00:00:00Z", "discountedPrice": 42, "expireAt": "1997-08-22T00:00:00Z", "price": 53, "purchaseAt": "1989-03-29T00:00:00Z", "trialPrice": 9}, {"currencyCode": "IPQeAL4MZwEVJe7w", "currencyNamespace": "aGyB6g2M5JiwtMOf", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1973-04-30T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1990-02-17T00:00:00Z", "discountedPrice": 97, "expireAt": "1979-02-19T00:00:00Z", "price": 51, "purchaseAt": "1983-09-16T00:00:00Z", "trialPrice": 82}, {"currencyCode": "BTPfnmfN5E20ORMC", "currencyNamespace": "VBTrkvObsiHQgt7O", "currencyType": "REAL", "discountAmount": 76, "discountExpireAt": "1973-10-27T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1997-01-17T00:00:00Z", "discountedPrice": 52, "expireAt": "1985-12-08T00:00:00Z", "price": 56, "purchaseAt": "1975-04-27T00:00:00Z", "trialPrice": 96}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    '6ARaQnNZQ1R0PGBF' \
    'Vnc37aWVjM3iVKjr' \
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
    '5VDqakKdW767GAH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'oiS1JuO7MNoFPtRh' \
    'YYIpNqVHbbCVwbit' \
    --body '{"appId": "D5tWXZVvjYqrEXKU", "appType": "SOFTWARE", "baseAppId": "jk5V8T9pQjnGB83y", "boothName": "onudf21g0NhuYvwC", "categoryPath": "ATIUep61ZsSiqW7I", "clazz": "03oSwCfYpN9jkLCs", "displayOrder": 79, "entitlementType": "DURABLE", "ext": {"YyyhEyBfFFZwkC1P": {}, "RjBWzTuXttDREDWb": {}, "OM3xQaraaEVt3vsB": {}}, "features": ["x1jBd6Yng8ps5Xkn", "TTrIk6hU0mqdwBJa", "CXpIgQzkWzcBqVcu"], "flexible": true, "images": [{"as": "sbaThW37NTbz8HiR", "caption": "muknvXiTP0KrWQ3p", "height": 14, "imageUrl": "rIn9hHHGg1cTZsJp", "smallImageUrl": "1b5yB8c9gCPFDZh6", "width": 73}, {"as": "Hgn9jVE6QGkZ8AVz", "caption": "eiaDi67E3rTwN2Lr", "height": 93, "imageUrl": "ekrD0J6iuJsVjhLg", "smallImageUrl": "aFeFJ5QRuvEsU5Qk", "width": 26}, {"as": "NhddKrrhzwz2PFXC", "caption": "33KjLNUFQJgCWV7d", "height": 19, "imageUrl": "oYaII5c5UqVvKR3y", "smallImageUrl": "dSEb2trPjqlB5c8a", "width": 79}], "inventoryConfig": {"customAttributes": {"8gp4BGN4NAydb6Gg": {}, "yFczEOMXF1T1sU9x": {}, "smACLFHrXWFobqnD": {}}, "serverCustomAttributes": {"kfPAHNgVss4JzVKS": {}, "usdLumoHh8TQWYk2": {}, "vD3mUDwtTF1ATVQn": {}}, "slotUsed": 54}, "itemIds": ["ZP1CFaMkJVBkZU3q", "tk0dM4GZGiSutb6w", "UxEikRyHC9VWMnzb"], "itemQty": {"uNQNJxCbLEhfrPxI": 90, "sCETqKlcFcaL6XOo": 84, "JYmpKyZGtqWw67Lh": 8}, "itemType": "INGAMEITEM", "listable": false, "localizations": {"DvwZjthGMOB4HFIz": {"description": "TlGBnpLBd02br9Of", "localExt": {"MbjgS5WjduKixzSc": {}, "frHzGYC1TdLVDBDx": {}, "K6laOkeLBcprByjU": {}}, "longDescription": "r7w9w1xKUrLmQSku", "title": "EMRzyerpya2oBjbg"}, "BhOdXE8y1PNIzbnP": {"description": "B5wG65f3ACfS3A8J", "localExt": {"eRMYUCgn7oklNewp": {}, "AIwtlAooXZ7HDb8g": {}, "2BhzW03O2pp9qVpZ": {}}, "longDescription": "bsppRsBWQ7RdYqZa", "title": "Q8swcFOshiWEFDMG"}, "99v5LSSkkEoAarkg": {"description": "Z773cdzYhgH24VR4", "localExt": {"hJnsU1m6zryXmvvv": {}, "PmueVVC0ymY7ABWg": {}, "ZVxM4rAqxlnHLAFN": {}}, "longDescription": "EwXBsCkfqzKlzlLg", "title": "HPF5iRWnREifOFJQ"}}, "lootBoxConfig": {"rewardCount": 45, "rewards": [{"lootBoxItems": [{"count": 66, "duration": 68, "endDate": "1992-11-10T00:00:00Z", "itemId": "y5zGebVw9nLvVm8U", "itemSku": "eFUbaGb5on2kvdeu", "itemType": "5DfAxsrX7OiSRs0z"}, {"count": 46, "duration": 90, "endDate": "1988-06-20T00:00:00Z", "itemId": "A8fTlbfUOSmR4F0p", "itemSku": "5g7b3MegxV9JnAJS", "itemType": "u3MX2yYJopKxd9Mt"}, {"count": 78, "duration": 67, "endDate": "1978-11-15T00:00:00Z", "itemId": "ZGkBNXT0feu7KKPX", "itemSku": "unBZiqYaReD04717", "itemType": "oGCmrTUcZy3DDSxp"}], "name": "WZV6J5QloYCaB5Im", "odds": 0.24500074708347697, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 36, "duration": 69, "endDate": "1978-10-18T00:00:00Z", "itemId": "JNZmgEGzqDHdLpDj", "itemSku": "LIhvCNlBRcFsa03N", "itemType": "qu13LgD6kOUZXQKR"}, {"count": 93, "duration": 65, "endDate": "1995-12-17T00:00:00Z", "itemId": "s3hgmxOOzP7vteUY", "itemSku": "zMZzggFcJQkYueQL", "itemType": "LJPh6HpodpzuBQwT"}, {"count": 92, "duration": 93, "endDate": "1974-03-08T00:00:00Z", "itemId": "qr03Mp14S8HG9ID7", "itemSku": "mZ4eKHaAP4PYToJA", "itemType": "MgJkC8UGlqb7cexe"}], "name": "EhHz7OKYNIMPTFnr", "odds": 0.030977701006588143, "type": "REWARD", "weight": 37}, {"lootBoxItems": [{"count": 43, "duration": 7, "endDate": "1983-05-26T00:00:00Z", "itemId": "RviPljDYddTDwgc6", "itemSku": "onXfoDvjI9jfJFTH", "itemType": "cHvAfosnCXqJplcw"}, {"count": 1, "duration": 60, "endDate": "1985-09-28T00:00:00Z", "itemId": "dLBQJcBsvUaK2iHO", "itemSku": "kgyhgijqtdzrvCDz", "itemType": "H5ACyLXmLsHXWPqY"}, {"count": 56, "duration": 38, "endDate": "1989-10-15T00:00:00Z", "itemId": "Tzlt302k4rdWgWYg", "itemSku": "Fgw3mGmogCJXjHTG", "itemType": "hyemqqwoT441DX6x"}], "name": "wuD6giqKLavCF9yV", "odds": 0.07035844630856691, "type": "REWARD_GROUP", "weight": 53}], "rollFunction": "DEFAULT"}, "maxCount": 72, "maxCountPerUser": 50, "name": "eb1GUdtB5G8NITA0", "optionBoxConfig": {"boxItems": [{"count": 14, "duration": 21, "endDate": "1977-01-22T00:00:00Z", "itemId": "nCROZodh1gbkbnRc", "itemSku": "Iufk5WE4zPvxA506", "itemType": "1CF9079hQA91csvl"}, {"count": 87, "duration": 9, "endDate": "1993-10-23T00:00:00Z", "itemId": "S6PyDb3vKbCw9eAG", "itemSku": "mM6lPAJMizukBmcy", "itemType": "1kbAWDUac65Jdlm1"}, {"count": 73, "duration": 99, "endDate": "1989-04-01T00:00:00Z", "itemId": "wmCAjTwtCqKdh92w", "itemSku": "uH9hLkAg90cQgXeZ", "itemType": "nKRP6Gdv2QY9BadK"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 22, "fixedTrialCycles": 76, "graceDays": 11}, "regionData": {"0mk4HHDzXcKJowQb": [{"currencyCode": "OrgveLe4hYQEGciv", "currencyNamespace": "ibNKS0tBFxzru1A3", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1975-01-04T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1975-01-12T00:00:00Z", "expireAt": "1976-07-16T00:00:00Z", "price": 66, "purchaseAt": "1976-10-05T00:00:00Z", "trialPrice": 70}, {"currencyCode": "rcqzwGgl1SyrFazP", "currencyNamespace": "5g67zq7XCHkJzmy6", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1981-09-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1984-06-25T00:00:00Z", "expireAt": "1996-11-21T00:00:00Z", "price": 58, "purchaseAt": "1977-10-06T00:00:00Z", "trialPrice": 96}, {"currencyCode": "NiYaLYUlRZSLj5xw", "currencyNamespace": "mP8QMJJJn2Lqw6ai", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1997-03-19T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1992-12-11T00:00:00Z", "expireAt": "1984-09-29T00:00:00Z", "price": 24, "purchaseAt": "1985-01-30T00:00:00Z", "trialPrice": 93}], "ms0Nwlx85unvbUiB": [{"currencyCode": "JfyM9bc1hgFvKO2e", "currencyNamespace": "rV4ccUhiQnHGDNXw", "currencyType": "REAL", "discountAmount": 26, "discountExpireAt": "1976-05-05T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1990-10-02T00:00:00Z", "expireAt": "1998-07-25T00:00:00Z", "price": 38, "purchaseAt": "1975-07-04T00:00:00Z", "trialPrice": 24}, {"currencyCode": "5M3KvzpUEcp3cp4f", "currencyNamespace": "WJlLrbVQceKy5JZK", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1995-05-07T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1987-01-25T00:00:00Z", "expireAt": "1984-05-04T00:00:00Z", "price": 75, "purchaseAt": "1984-04-23T00:00:00Z", "trialPrice": 22}, {"currencyCode": "zXBA29DPhYa8Ksjf", "currencyNamespace": "nk7HKSWULkEKqQ4T", "currencyType": "REAL", "discountAmount": 96, "discountExpireAt": "1979-09-08T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1981-03-16T00:00:00Z", "expireAt": "1985-05-02T00:00:00Z", "price": 27, "purchaseAt": "1971-06-02T00:00:00Z", "trialPrice": 62}], "ggbEVNmymBNr5C2B": [{"currencyCode": "OjUiOQVEbp3z13pD", "currencyNamespace": "y371QLVtDb6RZXat", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1977-09-01T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1994-10-22T00:00:00Z", "expireAt": "1975-06-17T00:00:00Z", "price": 85, "purchaseAt": "1972-12-25T00:00:00Z", "trialPrice": 33}, {"currencyCode": "cEyfbUswXLyVVZqZ", "currencyNamespace": "pYAdyPafGBlwnYRp", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1995-10-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1996-12-11T00:00:00Z", "expireAt": "1983-12-18T00:00:00Z", "price": 43, "purchaseAt": "1982-02-25T00:00:00Z", "trialPrice": 38}, {"currencyCode": "slvMllaEVugbCEif", "currencyNamespace": "QCe5eN88Z7U1e8C1", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1979-12-05T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1987-07-19T00:00:00Z", "expireAt": "1977-01-31T00:00:00Z", "price": 92, "purchaseAt": "1985-03-01T00:00:00Z", "trialPrice": 90}]}, "saleConfig": {"currencyCode": "NaSmVFsmFW74Dkab", "price": 44}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "px0HtzCgr8ybpAO0", "stackable": false, "status": "ACTIVE", "tags": ["9aZ3fza0rlzqNhVN", "tTXWyBmb2Ir2yOaV", "vE1N52PwdeTQhMz9"], "targetCurrencyCode": "wgXBCZr4m1UpizE7", "targetNamespace": "fm00IB0YnQ5xpjcM", "thumbnailUrl": "xUGokG4VQKR0ItcC", "useCount": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'xqJhfraXwzn0bbNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '5rhgy51k1e1gZ8QC' \
    --body '{"count": 62, "orderNo": "BzBBqEvMtJopw2r5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'pKsXnIYkKH6MNrEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'OlIFw6Fqa6YXBlVX' \
    'OvZUgW2ZMVJhOyVa' \
    --body '{"carousel": [{"alt": "O1sgnJF31EULHtVt", "previewUrl": "kZrE0YPmtE6fcv3n", "thumbnailUrl": "PROvD1FiqEUhsD6Q", "type": "video", "url": "wZrmKkREJXucN3IE", "videoSource": "vimeo"}, {"alt": "FdrQmX2OFLws9RV6", "previewUrl": "lY9IGsZjUsSUE7Nu", "thumbnailUrl": "CYEOWNkgUfe6pVMS", "type": "image", "url": "Ciqdleq2jCNZAKjB", "videoSource": "generic"}, {"alt": "CDr326Q66cxtjNTX", "previewUrl": "sCsfA2pIWzC6nrUa", "thumbnailUrl": "vXt7t0llsH39PXWt", "type": "image", "url": "Mc21ZZliCydumMW9", "videoSource": "youtube"}], "developer": "BjZFgaGUfhy5TZFo", "forumUrl": "yfZ0XfCxPDcH66JW", "genres": ["Sports", "FreeToPlay", "MassivelyMultiplayer"], "localizations": {"TRqrvfJIrFQWIDC6": {"announcement": "PHVsnUueYd49OFDl", "slogan": "bdIrxqxAtw8vLsYB"}, "HN6M7OpcFqK4FBJG": {"announcement": "8BfuSzytkPE6mw3Z", "slogan": "v0zD14WsQt5oimAf"}, "S3Sh33TufYVdPwYm": {"announcement": "vZkT3zo8gxMqM1wU", "slogan": "dXsMjUbhRjnDrYWl"}}, "platformRequirements": {"RfPpgHg36d9NP5nN": [{"additionals": "vzIlwtYI9wKX9V1X", "directXVersion": "xF2CFfEpf0qN2twL", "diskSpace": "YXq4HSEGpaUMmdPX", "graphics": "WaJRdn3WMdrhlWqC", "label": "c54JfyGzMMHiVQ6c", "osVersion": "ovYDuI4l1d9YaLVu", "processor": "L1mLP65pId36F25c", "ram": "13PNqPn7XRlnqiWP", "soundCard": "9WWQMGmm0biVjE8A"}, {"additionals": "3EsOz8LDnxgL0t7Q", "directXVersion": "hdw4vmSxnJcyaijS", "diskSpace": "CsFa6ipRu1AaFjz0", "graphics": "yLelzMzWiPzugdDu", "label": "6rxIv2ZMtZX5KZK5", "osVersion": "3tX2oxmEDDgGBgPW", "processor": "HmOLBLlsw2pDJDLe", "ram": "JwzbVEEQ0D6RcLpR", "soundCard": "xXCStzvOyY1tNKAV"}, {"additionals": "Wv5cGRm3WTx0oyOr", "directXVersion": "ycewrnLBAZlvnOJe", "diskSpace": "NxZdT1fZJTutZpZZ", "graphics": "n6egDbFDXW3N42cc", "label": "GURTnJUdR3MUQnEe", "osVersion": "ANANjqBdfMMU89e6", "processor": "CIBWn2Q3kMtF5tiw", "ram": "PCAxM9oFcQUp7hrv", "soundCard": "KVNdGrr2TTTiTt8o"}], "RoQRf0A1eAJUZSjW": [{"additionals": "UPA9vXrqLxUCyNQU", "directXVersion": "ITTM8jU9tfr6NkPj", "diskSpace": "b60b0Y8RDVgsQzae", "graphics": "Ov7xB8GlNYJeVVZQ", "label": "H5C76GaeCobrGOAv", "osVersion": "aYctXd3jNOlJBjBM", "processor": "sJisMu1kQcGm0x3D", "ram": "mUahjPVDOEmwpWiJ", "soundCard": "YxvvQCHIreoYDgNe"}, {"additionals": "1RyydtCBznu3BT2f", "directXVersion": "e68sGXFylcwoCMa2", "diskSpace": "D9QtE0TKRHukM2BV", "graphics": "Mu418S3o2DKmAp8k", "label": "t8156L7Wl7UfG3Pb", "osVersion": "sgYDgJ0JRrcPbe1R", "processor": "EA4kpxN9tCjk58n5", "ram": "fBl9xiCZH2KBHwuA", "soundCard": "W3jLkVq9bAefBF8t"}, {"additionals": "iF7mi3iOrnB83a6h", "directXVersion": "6dNfg9f25YsZ1L6I", "diskSpace": "GHuO7u2tOUpmu6zU", "graphics": "LXQMirzwMshTQYUn", "label": "fHWyBg5c3Wq2dGyg", "osVersion": "Lo40eCb82j4OhaAi", "processor": "Wk4TKx1WRjiCokzg", "ram": "7q7bMwxVAujRx0py", "soundCard": "ulY8igLWA7yUanMI"}], "437Ne6WvRNtbN9Eo": [{"additionals": "s8o1PdTDqm0SXzXN", "directXVersion": "qw2oEptJsPYgvPnA", "diskSpace": "lN2mJeW1LQJ8A7NZ", "graphics": "LQPAny29oO2B8osf", "label": "AcB6Pd2uPwzliHiP", "osVersion": "YuwUtR55gCTACz3a", "processor": "Ld0f0QGkwoIQo88h", "ram": "LxgR5AJVEz4FiSPg", "soundCard": "U3FLs6LbIwwxFBW1"}, {"additionals": "RyUyU8GVL2TVivHb", "directXVersion": "cJX1mqJ4BtZCHdlm", "diskSpace": "Ozx9DrwT5dJMDgZP", "graphics": "QtuRIVY69dhSr3Ji", "label": "NweUidBVB2vTyC48", "osVersion": "2FeT76mWyDrmG0FH", "processor": "QOjtRg7ST2UVRJN0", "ram": "qFJaGDiDmatCvCem", "soundCard": "bJFNyIwxPt19hjyI"}, {"additionals": "7ALyZHQ8V4AejtUM", "directXVersion": "6llcl5hdZoPhVcQ4", "diskSpace": "wXeArPe089cqMuV8", "graphics": "MLxiTO3GhLJ2qx2h", "label": "93yz3Y7YtgdQMhzp", "osVersion": "cpwawMF0j9IirMeP", "processor": "7fy5Y0RiyzWJZAZH", "ram": "klGmHH8I1l3xgoVy", "soundCard": "EemJDvokY7UUVCHG"}]}, "platforms": ["Android", "Windows", "Linux"], "players": ["LocalCoop", "Multi", "LocalCoop"], "primaryGenre": "Simulation", "publisher": "ZCtbJmJSU0agO0PX", "releaseDate": "1988-11-05T00:00:00Z", "websiteUrl": "Cyo70kyuutjjQDfd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'r0GXMgSK5Yx6dbDN' \
    'BB9LNziCP1xQygVq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'AioKka1tx56AwxAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'U0XOoXFpKZ7smOvh' \
    'TDIdO6ugOFZPtLUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'uPK7wBmEY4lD14f0' \
    'XIJh3uxrBGEumeTG' \
    '434DmlbwWuZpKPB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'rzvo2R5Q7tM4YbPs' \
    'F33KhfoL7PlFt47m' \
    'QAQQzQAxQ8GRgWKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'BJYYXgFmEZ8kWtzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'SIfMjxzBwWKzJldp' \
    'qtAlzVR0WqkbKYSr' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 36, "comparison": "isLessThanOrEqual", "name": "yX67v7JTcrppNGl7", "predicateType": "EntitlementPredicate", "value": "MGk3b5E1GgAqoQkg", "values": ["DzdO8IwGdLKPo5zR", "iht0lsg1U1DExMK4", "z32P13aQRTMzFLsB"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "QDtQNlDFMazvRX5v", "predicateType": "SeasonTierPredicate", "value": "KnX3Inv5lG8WEklk", "values": ["JOyDZJCwufYAURyX", "FFkJPn2yomTQth1i", "VoJ9qEel6x5O5otp"]}, {"anyOf": 42, "comparison": "excludes", "name": "jfw64GJDWklFkqhG", "predicateType": "SeasonTierPredicate", "value": "8E3wXz4Q1L3hAG9x", "values": ["OOi4DVUYo37I8Mgh", "1DJARpi5KzpbDPfX", "dGvodrl6UOwYZJq3"]}]}, {"operator": "or", "predicates": [{"anyOf": 72, "comparison": "is", "name": "hzlgtX87XuWOIpQw", "predicateType": "SeasonPassPredicate", "value": "XwughkPLKDhdMf1o", "values": ["4pweyQyv10mRO0tK", "KhAD9xM9T3YcYFOY", "1CH6ozETFSgu96JY"]}, {"anyOf": 26, "comparison": "isLessThan", "name": "aaHSXapFLiHZfwcm", "predicateType": "SeasonPassPredicate", "value": "zCfL2ar4zJmB2wif", "values": ["DA7LpND5zXLhrmEe", "n6anryoVkl4tChuD", "BwTzs9QmLReEZ0r6"]}, {"anyOf": 17, "comparison": "excludes", "name": "TCLlRCEQSp3XwOSN", "predicateType": "SeasonTierPredicate", "value": "1Xk1CdFvYqfoYzBc", "values": ["16XXXuoJGXCyzA8a", "5uh1LdVOaWOjRinm", "MTxEz6bdDFDqRMyT"]}]}, {"operator": "or", "predicates": [{"anyOf": 72, "comparison": "includes", "name": "eBHRe7JBlzH9CrXX", "predicateType": "SeasonTierPredicate", "value": "cBfnjlfFFTD6KSEe", "values": ["qQVYO5728Ri3CuA2", "GelFQyuDWvfe4Hp9", "AEd96gzUY6EuVZzn"]}, {"anyOf": 0, "comparison": "isNot", "name": "CLekZch7a3b0hFYq", "predicateType": "SeasonPassPredicate", "value": "QAUm9m9ht4JsrC6h", "values": ["o0XSsR3HPQNrtkf3", "M9oI3ymYms9fuih2", "WMLldoxYLZHiFEo5"]}, {"anyOf": 38, "comparison": "includes", "name": "Drk8BZ0jnV4jAAxG", "predicateType": "SeasonPassPredicate", "value": "794ngDQya3dvyjxR", "values": ["120zHmDzxvCGS2mY", "EpNGaoJWjZSpZNjd", "l0sA87gQx9kL8a1t"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'KHqDX1jGg2X6VHZO' \
    --body '{"orderNo": "ulL5KfkSA0amHSK4"}' \
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
    --body '{"description": "Sz7fbw7cgHHvIEPv", "name": "qjKVvPP5x3gf1HnO", "status": "INACTIVE", "tags": ["yafmo2nIKr9kryla", "lbZWuO0OVwGUgR3P", "EWI0N4k2W2caqaRV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'dR05rSilF29Lpg0z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'AUzpliq50demc4rS' \
    --body '{"description": "3d2v2ibO04gNmB9r", "name": "9MA5lA6x0lY16PWs", "status": "INACTIVE", "tags": ["PyBLX7knj7y5qEOp", "7hzPCxvetFhAgAkk", "Ehd3Y16uyKwJ713r"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    '4F9WC342Uggyr64i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'sEfxbFEabmT6Mmge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'bEkQ73QcKQldxIqM' \
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
    'gf2PaNJqIMDWJUW3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'I4SKjp0NOc5dWAES' \
    --body '{"description": "7S7wBqBe4F2z2u3w"}' \
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
    --body '{"dryRun": true, "notifyUrl": "yhLYGnvEdCjYsnh0", "privateKey": "Y0rQluvKziVTCPTr"}' \
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
    --body '{"currencyCode": "qHc7vqaXxxiGOrXb", "currencyNamespace": "WC2k23JxAI3kOXwH", "customParameters": {"nS2VOESYx49M1Jdt": {}, "ImLI5eTuHqCNtVlN": {}, "aGzoqpAFVT8PkW7o": {}}, "description": "uFIdlTuousRcrhXN", "extOrderNo": "Ah3Cu4ou029lD9VL", "extUserId": "XNwkZWTbX0PZb0I9", "itemType": "SUBSCRIPTION", "language": "NYo-EoLj-815", "metadata": {"izRJy5JoIlHjTZ4m": "DmXZIBTi05akxBYo", "zWzUW4RDVM8Y4PcX": "DH8RZqUjELC82uP1", "nMUDAKQEkOvO52VT": "PFFuLWL0HQkTuy4f"}, "notifyUrl": "U6Ejumf9ltGde7x4", "omitNotification": false, "platform": "YbEZwEzBNPCCnVKY", "price": 31, "recurringPaymentOrderNo": "yoRKUrvfixr7UFzL", "region": "zGaWok215MnSNTPM", "returnUrl": "RaYf8Chh5tiLsXIO", "sandbox": true, "sku": "1E2lQg6rSZj7yw7a", "subscriptionId": "PU0DqhD5agSwSs0O", "targetNamespace": "RF2pLQCqPGUmF8pQ", "targetUserId": "CrEqdstmoPJurb0F", "title": "VZK7sonuzTm1gseY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'PsB00G8moKbti7cq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'KdwnwTyTyr1XXDYC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'lbgXA2XATEcyKtSz' \
    --body '{"extTxId": "6QsS6BHqs2Z5aknp", "paymentMethod": "CHXIr8JndNzIiCZi", "paymentProvider": "STRIPE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'RCujrja26Ygd7A15' \
    --body '{"description": "55BielNg6kfRgfnB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'T7OdjPnywuIoLpkJ' \
    --body '{"amount": 63, "currencyCode": "Ob5Jp6oxvvtB4air", "notifyType": "CHARGE", "paymentProvider": "ALIPAY", "salesTax": 92, "vat": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'Zc7Cojp07DFR7IvE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Playstation", "Twitch", "Steam"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Playstation' \
    --body '{"allowedBalanceOrigins": ["Twitch", "System", "Playstation"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Other' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' \
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
    --body '{"appConfig": {"appName": "hMZsQ8CVsHXHYBx7"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "kpRAaivn5yFNSoKf"}, "extendType": "APP"}' \
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
    --body '{"description": "tdmVppuu6acpUdn8", "eventTopic": "X5IZjtFT6Bs8OO0C", "maxAwarded": 97, "maxAwardedPerUser": 44, "namespaceExpression": "qXF6bMzRd2Z2Wjut", "rewardCode": "GAptSES09ZcFGPCo", "rewardConditions": [{"condition": "kMwrtVvGhHzNdHMJ", "conditionName": "ys9gtFxWSkvzQZjQ", "eventName": "rgnXc87G37jhABEz", "rewardItems": [{"duration": 93, "endDate": "1981-02-03T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "kJ58wQyrAb67d9kC", "quantity": 51, "sku": "MEhGrQVQ3yKCwV9c"}, {"duration": 14, "endDate": "1990-08-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uDLXNscwbXgdwQnM", "quantity": 41, "sku": "avRNr3ysEp4sIwsl"}, {"duration": 95, "endDate": "1984-12-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ociDSNS6hf28Tvyy", "quantity": 58, "sku": "jEMbPRNKUABS8cyK"}]}, {"condition": "8SnSvsUGLqYJevKK", "conditionName": "JR5KWRgHuLJEAS7p", "eventName": "SDlIS4N3VRydtvWZ", "rewardItems": [{"duration": 64, "endDate": "1987-09-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "NIc86TKj3grgVdqS", "quantity": 31, "sku": "NfjnW9axvejxDQgd"}, {"duration": 52, "endDate": "1971-09-25T00:00:00Z", "identityType": "ITEM_ID", "itemId": "x7lPUWhfLYtrkZ2V", "quantity": 66, "sku": "jzXzilslRzP96yJ7"}, {"duration": 89, "endDate": "1983-01-07T00:00:00Z", "identityType": "ITEM_ID", "itemId": "8fkG3hcRbcSuSkd7", "quantity": 22, "sku": "wzQJjmhy4f9F9usH"}]}, {"condition": "1ByGD8DDRW0KNwlK", "conditionName": "cveutOHZ2aWSL11m", "eventName": "sU7QpcpkApFODOqz", "rewardItems": [{"duration": 67, "endDate": "1987-07-14T00:00:00Z", "identityType": "ITEM_ID", "itemId": "RWcvJIwzW53tKi9m", "quantity": 49, "sku": "yxGcMcYyromMVFEa"}, {"duration": 94, "endDate": "1992-10-31T00:00:00Z", "identityType": "ITEM_ID", "itemId": "z3hmDX1C9gHM8SS7", "quantity": 78, "sku": "mWFWKlSwI38LyDyL"}, {"duration": 93, "endDate": "1987-12-18T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "xmA6nDD3EFfeJdws", "quantity": 22, "sku": "QgWL3hmjUydsgdt9"}]}], "userIdExpression": "8KfbaQpgEAKKLcKb"}' \
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
    'NFTJO4FUT152zR0P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'BTEvM3TgMsAS5t3T' \
    --body '{"description": "YXNAGl1xy1H8Ag2X", "eventTopic": "Y2TnyPCVsWzhPIeH", "maxAwarded": 21, "maxAwardedPerUser": 37, "namespaceExpression": "oUSeT3lv51D9Vwsf", "rewardCode": "zatv4JzfVNAJbSLB", "rewardConditions": [{"condition": "zqs2u1EntDzkQLgW", "conditionName": "QHXc3bRYKbJGFP8H", "eventName": "ZNLJ7aPbRMRrbKjo", "rewardItems": [{"duration": 17, "endDate": "1974-02-12T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ZAWt13ISgdwAum4b", "quantity": 88, "sku": "t1Ph8xHfEAlyda8F"}, {"duration": 86, "endDate": "1993-06-15T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gSO3GHo6ESwn8otu", "quantity": 15, "sku": "o1B2P8cdPJAnmCFU"}, {"duration": 6, "endDate": "1982-10-02T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9CHHozRud9g15dSB", "quantity": 15, "sku": "NpmibPCLiJaHXEyu"}]}, {"condition": "LQOO6qVUihFznsLF", "conditionName": "P3013gsIOArelbYw", "eventName": "YTtGsRNij1bUAIrK", "rewardItems": [{"duration": 79, "endDate": "1982-08-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "3JvA3stZ6FN0omme", "quantity": 72, "sku": "HiOrbuq9cXar8FKA"}, {"duration": 59, "endDate": "1987-11-15T00:00:00Z", "identityType": "ITEM_ID", "itemId": "FrIQFWJ2aMIxqQyc", "quantity": 61, "sku": "WnODMMswus0ykKyO"}, {"duration": 94, "endDate": "1977-09-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "9npo1k2W89U6PA5B", "quantity": 49, "sku": "klXSUYkHNYqepadI"}]}, {"condition": "S0zRgire2ntrz0FU", "conditionName": "DXjV0GmcFSjmJGQU", "eventName": "5YRHjMz3bo23SF3X", "rewardItems": [{"duration": 21, "endDate": "1993-06-30T00:00:00Z", "identityType": "ITEM_ID", "itemId": "na4afJC9mgf0blFr", "quantity": 82, "sku": "A9VvbcAi4ZmdXz2N"}, {"duration": 100, "endDate": "1973-01-16T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "LYxM5DN6DJmnjBd7", "quantity": 34, "sku": "8wqc2OcvjggLVwAQ"}, {"duration": 79, "endDate": "1994-02-04T00:00:00Z", "identityType": "ITEM_ID", "itemId": "cqcbggfeYn1FnvTu", "quantity": 93, "sku": "nP2TmDSwAt1UGNie"}]}], "userIdExpression": "Me0c6eA8xCvVNgS0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'wUvETmRwwaH21xue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'y3fB1KN5EzSmB6aO' \
    --body '{"payload": {"1JqypofIkM1Wvc2C": {}, "cOra4RXenU5naN6U": {}, "uNARNfA4hpoNUAwa": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'fK1QxxK2sBBkQz8n' \
    --body '{"conditionName": "IgoYpZYIYto2cpXU", "userId": "nj1kXAEnU9CvpIjJ"}' \
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
    '6tB2fqN6D76apW4C' \
    --body '{"active": true, "displayOrder": 42, "endDate": "1977-12-20T00:00:00Z", "ext": {"72icTrg8RyI3bDBI": {}, "KGiLSqDVnEtbqHnY": {}, "6D1Z2oKGmRbhR6rn": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 93, "itemCount": 64, "rule": "SEQUENCE"}, "items": [{"id": "Qf699gOqEWjr9T9U", "sku": "hsGYJ3NLSVOdqFxY"}, {"id": "9j8P8IFwNKh0Zni7", "sku": "P6ZfRFkQolDEtyxy"}, {"id": "MGw4ZEIMYFaIEr69", "sku": "zjnPKVLZ59QuwBbW"}], "localizations": {"2xX96TmFiMrqZaZS": {"description": "R4SAMIG5DRP307xN", "localExt": {"IxMniv6VDtGhPQu5": {}, "IgTlvO4wr8D7APHh": {}, "ihwdNSBKpqJ8V1kQ": {}}, "longDescription": "HisGldXgqa99UNyH", "title": "IlnrLOesUoAwwCO2"}, "c7aEAHcpdx91Uabv": {"description": "NvRaUrUqTcFsGXxj", "localExt": {"R7vTeNdfPVWmEdVF": {}, "XX02sJsXg7AKOu2X": {}, "k8T0sqdmD20rolfU": {}}, "longDescription": "1yEokwoBSfRPMdPX", "title": "ru40VmHvpaJ6EFG9"}, "wLOlD7N2GNQs0IgM": {"description": "AbRc0I82pjV4UBb0", "localExt": {"pZrHFxE9EAcMe8RH": {}, "XnsxazB0s0OGtkrG": {}, "uIEzLqOEqdEcHbFr": {}}, "longDescription": "NLqqyBzPWvDsw3y3", "title": "noSTunCZN39o0vZq"}}, "name": "aSrHfwrqqHXHpPnC", "rotationType": "NONE", "startDate": "1980-05-08T00:00:00Z", "viewId": "EptE9wdsebmIkQbE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '3nPbd7YNYQJL8jGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'dMvM0zEHmThs6Oyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'k9jSSY0aqjjeExTo' \
    '07XGD7r4dvtuyipF' \
    --body '{"active": true, "displayOrder": 65, "endDate": "1981-08-17T00:00:00Z", "ext": {"jH3UPJy3CnYG5ypx": {}, "MPXQb9Aa9QMoQgjO": {}, "f0byuj8Uxptb2o5j": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 88, "itemCount": 94, "rule": "SEQUENCE"}, "items": [{"id": "zJKYxouzcD0pPXkd", "sku": "TrLYN48A5DLkL19t"}, {"id": "Xrv2bC14hfBeKISP", "sku": "0coyLHG52kcFEHKN"}, {"id": "66TOzJSyl83HhHTD", "sku": "HO8mQoGOS84jEVRG"}], "localizations": {"n0aQHrmMgGX6WiX9": {"description": "WPUEwP8KagnEKkfR", "localExt": {"nTAD7nNuqrknaj1F": {}, "ks8OhmWshFK5hyfw": {}, "qkxFeK2HSaUyXEOQ": {}}, "longDescription": "UwXDX8MGlijaR3VV", "title": "k7nD09WBTm7Hy1Av"}, "jH8TO5OIzshGgQ4T": {"description": "hugQFOWwlpo3MnSM", "localExt": {"NdjVtLt8CrUFIkcZ": {}, "k3UEaPstaXtLCGf6": {}, "Pjb7W28XF9eX2LXw": {}}, "longDescription": "aZwDM1CYDLmaPDEU", "title": "bDvBUnl1NO7rLa2X"}, "TR4IEvU0JE2kLOQb": {"description": "2CBEoV5Nm182ykfY", "localExt": {"01GcykfqRyXIVnis": {}, "4SKjpYMZV5AVm0vO": {}, "Tpy2xyajHMUnKflm": {}}, "longDescription": "cC3pOWLT8ckEy2SM", "title": "QcmxebThGYrgNOim"}}, "name": "VrZzkyKHvwa7cbRj", "rotationType": "FIXED_PERIOD", "startDate": "1971-02-04T00:00:00Z", "viewId": "t5ZJSh02srNNRw3Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '1j6viZbWeu0WyHCl' \
    '9Xs4E416s1Oq4B0c' \
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
    --body '{"defaultLanguage": "6hcP5jLY1KxbFbyz", "defaultRegion": "OePaXR3ub0i4catf", "description": "NOlhlYHQh4VgYhBa", "supportedLanguages": ["VDBRlLxoAzljrhda", "WNQoeso9mKjTRboT", "LjWe4LfJee5PI5dF"], "supportedRegions": ["v5buhIZ4eMnCDQFC", "YcyYCi2g6s9FQKCf", "cu923YpsdjtVRUIv"], "title": "3uIM3CoS6JahcK1P"}' \
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
    --body '{"catalogType": "SECTION", "fieldsToBeIncluded": ["6BT8bcW21yKVRUAU", "f5lebfPenWUEBZC8", "keF5vI1QiMb8GRzC"], "idsToBeExported": ["ETFWSfJvAnpvMcDH", "wA9mw8ujZZQUNi4N", "DzBP7mmM4ZrXjamc"], "storeId": "3OX9fjEzscuFPv5t"}' \
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
    'NXWb8n1xyB1MxbBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetStore' test.out

#- 195 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    '0waudrudTuIy3VLk' \
    --body '{"defaultLanguage": "d3YGg9Bzi8uluQOB", "defaultRegion": "uTuYNR4hzPkGOuDv", "description": "T1kGGvspIGcvW7T4", "supportedLanguages": ["dk3MBzfrSZGlXPuk", "j7q5MjU2f4833bcU", "oBfWLjRXOqaoDBgs"], "supportedRegions": ["PHcNg0Bapd2WF3AC", "WSPCOIejZfSnIavo", "uuFpqcq4Gd9fk7fh"], "title": "p8GNMEX4Ps5vorNX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UpdateStore' test.out

#- 196 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '6W3h8ItD6AFXbQvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'DeleteStore' test.out

#- 197 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'bKVlE5VulHAZZ2SK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'QueryChanges' test.out

#- 198 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'o1C0ktvmekdbic6I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'PublishAll' test.out

#- 199 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    '2n5Hclx6xvlDEhlv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'PublishSelected' test.out

#- 200 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'zVBqt9fNnODJKrDd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'SelectAllRecords' test.out

#- 201 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    't60vGd1u3lR0fkCW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'SelectAllRecordsByCriteria' test.out

#- 202 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '4fYJAHmuYyTZt7v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetStatistic' test.out

#- 203 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'mvPolaFeEWrqYB9h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'UnselectAllRecords' test.out

#- 204 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'LG74YMs1JCrpnpPP' \
    'UyyCN4MFXqnFzR6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'SelectRecord' test.out

#- 205 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '20jVL8heTq0Wmf80' \
    'd7wzxTtcIyIFNDIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'UnselectRecord' test.out

#- 206 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'hPIRCNW8MLBfGHJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'CloneStore' test.out

#- 207 ExportStore
eval_tap 0 207 'ExportStore # SKIP deprecated' test.out

#- 208 QueryImportHistory
$PYTHON -m $MODULE 'platform-query-import-history' \
    'eAA3xQG5zPNH4eYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'QueryImportHistory' test.out

#- 209 ImportStoreByCSV
$PYTHON -m $MODULE 'platform-import-store-by-csv' \
    'Wbtvk7OoIixOGXwF' \
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
    'zXjpSLyjqaJnmx4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'RecurringChargeSubscription' test.out

#- 212 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '5ShR3fI6ZeDWbxHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetTicketDynamic' test.out

#- 213 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'Ln6kQxqK7yxoQHX7' \
    --body '{"orderNo": "XexjvW4rZ57Ra4Wl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'DecreaseTicketSale' test.out

#- 214 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'on8ZzeHgabbmT81j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'GetTicketBoothID' test.out

#- 215 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'fik6ShLjJbf174MC' \
    --body '{"count": 89, "orderNo": "zNfmvBcfNBFiIw9m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'IncreaseTicketSale' test.out

#- 216 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "IOS", "count": 35, "currencyCode": "jC9qXOVUNHtfbgUq", "expireAt": "1971-11-21T00:00:00Z"}, "debitPayload": {"count": 76, "currencyCode": "46XLNfQ0SXyMTygZ", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 90, "entitlementCollectionId": "zJUpXr5ZkwYPLnvi", "entitlementOrigin": "IOS", "itemIdentity": "ANpRXHVqJaiwkoaB", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 84, "entitlementId": "8UYH2Pz5V5CtSrcX"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 73, "currencyCode": "RP8vZ9a77wOP10Ab", "expireAt": "1979-01-13T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "jZo2dQM3ZXq9atij", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 65, "entitlementCollectionId": "Um3ITROznZA6EVEX", "entitlementOrigin": "Steam", "itemIdentity": "llwasnryjxylwRVc", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 50, "entitlementId": "18iHO0dKNHWBFM13"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 26, "currencyCode": "9HTu6c4mMUdJoKmy", "expireAt": "1971-02-15T00:00:00Z"}, "debitPayload": {"count": 96, "currencyCode": "SkxhrHhjWxkDQUTY", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 26, "entitlementCollectionId": "zzQsIU3IZf93pQmm", "entitlementOrigin": "Playstation", "itemIdentity": "hMnRSn6PRk0DwXkY", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 1, "entitlementId": "ikSHwHPfyNRUhMXX"}, "type": "DEBIT_WALLET"}], "userId": "ZZFXv7pY5cNIYdQR"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 90, "currencyCode": "i6IfH05hVdagEETj", "expireAt": "1992-08-27T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "NzQF9Ywa1VlJBmSC", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 27, "entitlementCollectionId": "F2z5O9ugNuq4uGu9", "entitlementOrigin": "IOS", "itemIdentity": "9L20T6fVxvK30nHM", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 76, "entitlementId": "f8xOR1DEgYR3iOyn"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 41, "currencyCode": "QBm02aTdgp0WcRdr", "expireAt": "1979-01-30T00:00:00Z"}, "debitPayload": {"count": 76, "currencyCode": "OKQbXXiMg5RAaD5a", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 34, "entitlementCollectionId": "KZj2jWyKAzXYP9kO", "entitlementOrigin": "Epic", "itemIdentity": "rmonOpgtONmMvrDH", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "6tn8XayBI734jCTS"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 89, "currencyCode": "NAwv9UsvPaX8W0Gv", "expireAt": "1992-11-17T00:00:00Z"}, "debitPayload": {"count": 83, "currencyCode": "7gRfsySRn2FX0Ac7", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 52, "entitlementCollectionId": "0bbGhU1pjVwMsLdJ", "entitlementOrigin": "Oculus", "itemIdentity": "BTbcqQVkSIXLGF8d", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "k8bqcPfBJ9GOHxUk"}, "type": "FULFILL_ITEM"}], "userId": "CvqVRe3F78EGvZd4"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 15, "currencyCode": "mQiF1OsXfJG3psjI", "expireAt": "1985-09-10T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "U6G6YVa5GGFvLtWl", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 69, "entitlementCollectionId": "DAEkAvXqNdnEfei5", "entitlementOrigin": "Xbox", "itemIdentity": "fLtFTRx1fcfy4uTV", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 56, "entitlementId": "xv0l7RvPOKq8iNNY"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 74, "currencyCode": "oWJPoo8QT5EB5GCO", "expireAt": "1985-02-24T00:00:00Z"}, "debitPayload": {"count": 28, "currencyCode": "T4AtBZJsMBPDcUuW", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 64, "entitlementCollectionId": "1NgHaxQlxs2MPGkL", "entitlementOrigin": "GooglePlay", "itemIdentity": "zsR2KwSIl0Un3PT2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 98, "entitlementId": "vODPmfnV8dOr38jF"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 7, "currencyCode": "FRDj47EZTCCwz8ya", "expireAt": "1982-11-24T00:00:00Z"}, "debitPayload": {"count": 7, "currencyCode": "ImZdPzt9koNSL3vq", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 50, "entitlementCollectionId": "gJOWkI0sHphIU3Ka", "entitlementOrigin": "Xbox", "itemIdentity": "PCdXT4YD9fDzx1WP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 44, "entitlementId": "pzHannSLeEYvuciy"}, "type": "DEBIT_WALLET"}], "userId": "CrrsBPvGhWiPLLd5"}], "metadata": {"eChF7cgujItr2ZFj": {}, "L5qUyimmVzOJYebI": {}, "5Egye4CkNIFSC7Ic": {}}, "needPreCheck": false, "transactionId": "2KSoHlpDFImJNovl", "type": "Zq1O6RDUgilQHCts"}' \
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
    '6SUNxUWIGSkxjKL3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetTradeHistoryByTransactionId' test.out

#- 219 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'EiP6WeXWf3dBAVfI' \
    --body '{"achievements": [{"id": "M2oLFaTIhv5XrQvT", "value": 54}, {"id": "YvJS0xuVskVlA0TN", "value": 54}, {"id": "gEZgIMDALa4nsITU", "value": 8}], "steamUserId": "d3uXt6TP1AE4lqnI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'UnlockSteamUserAchievement' test.out

#- 220 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'wLN2lGYqQSzIUdIq' \
    'mVvmcAsPgT6XUEeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetXblUserAchievements' test.out

#- 221 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'KSDbomdWWRi7OHZe' \
    --body '{"achievements": [{"id": "GP4o1Tgbe8J8xso7", "percentComplete": 73}, {"id": "ULeHVV40sjQ8mtTN", "percentComplete": 24}, {"id": "V3MMSrrV6FB8DFwD", "percentComplete": 97}], "serviceConfigId": "WXkw7te8pQfvxY5z", "titleId": "PZKMd5ItnXbDbXW9", "xboxUserId": "KlfgVvjjjExRk4JH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'UpdateXblUserAchievement' test.out

#- 222 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'YGa2nnyqvFCYJOJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AnonymizeCampaign' test.out

#- 223 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    '9ljs9WPwxzICEykN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeEntitlement' test.out

#- 224 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'JeEn6eiosoCvrGeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeFulfillment' test.out

#- 225 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'ygOZbA1UGLox4eJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeIntegration' test.out

#- 226 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'vLmou5AtB5J9XxYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AnonymizeOrder' test.out

#- 227 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'y0HcWUCcahA1tjiB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AnonymizePayment' test.out

#- 228 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'ugkSmA8prRvnuoHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AnonymizeRevocation' test.out

#- 229 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '9foRLP4zSxApJe0a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AnonymizeSubscription' test.out

#- 230 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'plQXEaoGjonwKDYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AnonymizeWallet' test.out

#- 231 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'jvKhxwtaxd74bEkQ' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserDLCByPlatform' test.out

#- 232 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'XN3xQ0KaIZ1ISja5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserDLC' test.out

#- 233 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'TxqN8RXvgNzoX14K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'QueryUserEntitlements' test.out

#- 234 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'm851zHcDdphWEIlB' \
    --body '[{"collectionId": "nOKyfAbdUB1OM5oK", "endDate": "1994-05-28T00:00:00Z", "grantedCode": "XANlenFuUeRc2SCq", "itemId": "Q9kgrqAIaKAUBfyF", "itemNamespace": "CxsJfyos4fOD6B14", "language": "XT-046", "origin": "Steam", "quantity": 100, "region": "BzVmGSholl8uD1hp", "source": "REDEEM_CODE", "startDate": "1979-06-06T00:00:00Z", "storeId": "FWvlE7bmuaFNPCEC"}, {"collectionId": "KSzHTT5beKYt4CDl", "endDate": "1996-11-22T00:00:00Z", "grantedCode": "ZzqpJeQd6tN5oH4E", "itemId": "7JosGEpOKUFWLtsL", "itemNamespace": "f278ybCNhF9RCyMn", "language": "wzSR-ibSQ", "origin": "GooglePlay", "quantity": 83, "region": "LUkLLTNMnmlFzzwp", "source": "REFERRAL_BONUS", "startDate": "1988-08-03T00:00:00Z", "storeId": "wbcCEsJIB0JkRcYh"}, {"collectionId": "CT3pUMiOk2aKaj7w", "endDate": "1979-05-25T00:00:00Z", "grantedCode": "sxny0WLYMNb0QsxP", "itemId": "lx64IQUpSToD0bb0", "itemNamespace": "SXZUy9H0C213rnYf", "language": "CXC_sddC", "origin": "Xbox", "quantity": 99, "region": "1U2uYktiAFqIsHod", "source": "IAP", "startDate": "1995-06-08T00:00:00Z", "storeId": "hL5p56dnYHk1iLtA"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GrantUserEntitlement' test.out

#- 235 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'XL33WCBnIHoRNWTV' \
    'vIN7c2uh7Ls9nxKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserAppEntitlementByAppId' test.out

#- 236 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'aoWmrw6n7VYPrZA5' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'QueryUserEntitlementsByAppType' test.out

#- 237 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'WNq6yTj5WST6JF9l' \
    'LvPS5jJ58vaRaaxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserEntitlementByItemId' test.out

#- 238 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'QeMUb1kvSj6jcjlx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserActiveEntitlementsByItemIds' test.out

#- 239 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'GsLgfrhBTH1QV91X' \
    'mB5Z6en6c5d620U9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementBySku' test.out

#- 240 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'addYCAtuTx2FKoGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'ExistsAnyUserActiveEntitlement' test.out

#- 241 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'Q2i1n2WJVJy6yBPV' \
    '["mpbwVG3MwHy6yQU2", "RSNGWKnNDFZOok9s", "nWC9CFiRmbELIzaw"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 242 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'fXvKu5UsuFOUXohE' \
    'HKCKphTiityfpZix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 243 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'QMzfhG3hC9Be3Cvn' \
    '1QymYMLAdBSViPHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementOwnershipByItemId' test.out

#- 244 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'LXkQVWSLbAXxxeat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'GetUserEntitlementOwnershipByItemIds' test.out

#- 245 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'all18E5J9knaLMlv' \
    'eXWFZqotaiZN3MPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'GetUserEntitlementOwnershipBySku' test.out

#- 246 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'YWk5lHvw9RXrx8aU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RevokeAllEntitlements' test.out

#- 247 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'B1xXuK2MwrRJukMT' \
    'kO00KLgddr0UUiy5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserEntitlements' test.out

#- 248 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'jm1w2g65JkaoPuBs' \
    'uSb0LePf5b8MJ94D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlement' test.out

#- 249 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'Ah1Mc7VkHxj8k5KS' \
    'FtbEoEr5LqKRRnKy' \
    --body '{"collectionId": "17sBYlx7rzEm3km2", "endDate": "1975-03-20T00:00:00Z", "nullFieldList": ["XYzZLlLq8lPGFyb3", "4DDyqvcwQ3uBzBm3", "55IU5aZu5bRvxm9K"], "origin": "Epic", "reason": "r60SyfWNB8u5Qlf4", "startDate": "1990-09-26T00:00:00Z", "status": "REVOKED", "useCount": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'UpdateUserEntitlement' test.out

#- 250 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'z5gs7YuyxJLe1Tkf' \
    'LiM9EqyhFh7mq6sg' \
    --body '{"options": ["k5cHaJYkzClqPty2", "kxgyry1MM9eo43Qi", "5cRehBB7o24lw21Z"], "platform": "3nE04Cbkpn0yX44a", "requestId": "L9f0QyO5YXVhTiaE", "useCount": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'ConsumeUserEntitlement' test.out

#- 251 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'WKnEeaUdAmgmnzKS' \
    'VlXsRNMykbnHTrHL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'DisableUserEntitlement' test.out

#- 252 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'maTGFI1atDOVS2F6' \
    'Is27hn9TSwEvJPZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'EnableUserEntitlement' test.out

#- 253 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'YrXKMnNZIm0ooHCn' \
    'lq1H5IuOvafRIdOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'GetUserEntitlementHistories' test.out

#- 254 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'lxxdySywm5h2pCfH' \
    'jg41ZhheDDG5HJEF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RevokeUserEntitlement' test.out

#- 255 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'QRX4iVg8TK1CF9X9' \
    'mTmMVfQaiQKdHknL' \
    --body '{"reason": "otplfBOvsb9aicya", "useCount": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RevokeUserEntitlementByUseCount' test.out

#- 256 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'lNuwrS7xf7BiZI9J' \
    'ujxs7GKf2LOlVbEW' \
    '0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 257 RevokeUseCount
eval_tap 0 257 'RevokeUseCount # SKIP deprecated' test.out

#- 258 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'QxUB5U4Qk0fD8Gqt' \
    'XguE8Xvdv1azJ2OS' \
    --body '{"platform": "kJGMDAkWOP9y3eP2", "requestId": "0aRJVXYPkIGnj7nG", "useCount": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'SellUserEntitlement' test.out

#- 259 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'vu3WEfwBn40sJji4' \
    --body '{"duration": 14, "endDate": "1995-05-06T00:00:00Z", "entitlementCollectionId": "E3lKNQy2rJxiPPjJ", "entitlementOrigin": "IOS", "itemId": "vAfa6BW7oGw2U9Lo", "itemSku": "HWS4koauo9jkTEI5", "language": "2B8LI9vMEB8OHKsq", "metadata": {"Kaw1EmCxOMl6uh44": {}, "gPPfiJZCSkIQI1h6": {}, "OjoUY4QXecerXxPo": {}}, "order": {"currency": {"currencyCode": "dPokDUivfNI3KdSI", "currencySymbol": "bTi8dxU11tPBlMCz", "currencyType": "VIRTUAL", "decimals": 91, "namespace": "k5g9y47AVCmFD0nK"}, "ext": {"yUwcI9KJZt31la1w": {}, "ZgpPXxtcOPw0UBm7": {}, "wccELVo9RYTquwIr": {}}, "free": false}, "orderNo": "gk3eqgOf7WwNZWyY", "origin": "Other", "overrideBundleItemQty": {"3PduP0G77oZV8BGf": 0, "YOWGw7LSW6Kb9otd": 97, "Rx8qNMv4XLW0xlb6": 49}, "quantity": 8, "region": "LTssmZXLvxRhf6IC", "source": "PAYMENT", "startDate": "1992-11-06T00:00:00Z", "storeId": "1pJMwPVAUNYFOg7T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'FulfillItem' test.out

#- 260 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'plEkOZy73bRBtWCJ' \
    --body '{"code": "CJuzB1jbh95vj0V2", "language": "CQ", "region": "AJ6lYOK3cwO9ln34"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RedeemCode' test.out

#- 261 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'fiLxPN5xKoNNYd5p' \
    --body '{"itemId": "2yVsBAv2ZVlrnlY8", "itemSku": "y91hD1ZHh1VjLqa0", "quantity": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PreCheckFulfillItem' test.out

#- 262 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'bIAwDAyNBagGD33W' \
    --body '{"entitlementCollectionId": "MVj7bfdfxyqKQ4YN", "entitlementOrigin": "Nintendo", "metadata": {"Kv9kQYaSI3bbqZQk": {}, "XAns7VrdNH8v1oP9": {}, "8hanhE18UbY1Zkrf": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "eOWoVtcblaKlhxMN", "namespace": "x5h4l3ogPTLlSlGf"}, "item": {"itemId": "h2XhfCB53jlBjzXL", "itemSku": "woMxshoo8aHsXJ87", "itemType": "ywdDtou8Np74s3RL"}, "quantity": 8, "type": "CURRENCY"}, {"currency": {"currencyCode": "gpS550eQ5WiZiQUz", "namespace": "C0vBF108QVF9gKmJ"}, "item": {"itemId": "BuqEpgnV3xNdP3uQ", "itemSku": "J2ZdCStanvPwuBVi", "itemType": "fTkflegYoVHYdQPA"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "GfQVawbSlqUfFfZy", "namespace": "tHO4xrQvXR88ArNP"}, "item": {"itemId": "kMbfhbrTb4ZPG4R5", "itemSku": "dqhreKq9si5LTZGj", "itemType": "fJI0GRPR9FWa3sAl"}, "quantity": 75, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "zZ5Joq98jWszWZxm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'FulfillRewards' test.out

#- 263 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'bhMr5aDNyd7VDhTh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'QueryUserIAPOrders' test.out

#- 264 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'mXAsBwC4MOmSF5ZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryAllUserIAPOrders' test.out

#- 265 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'pYXTbgh3hVKyU97N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'QueryUserIAPConsumeHistory' test.out

#- 266 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '87zJHVwE86VYnuoH' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "VDG", "productId": "RlTTSLmDolGdb7yX", "region": "LAgfgESHWCK8LccJ", "transactionId": "JmXX0pmy1KDJtg9F", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'MockFulfillIAPItem' test.out

#- 267 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Z3nqWutrpjBOnBeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'QueryUserOrders' test.out

#- 268 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'wBnFdy01mQjVblM1' \
    --body '{"currencyCode": "GnFG6ePpjPG4iKj1", "currencyNamespace": "VxNoFLwY2aYPpdsN", "discountedPrice": 6, "entitlementPlatform": "GooglePlay", "ext": {"fKE45hKdn2Ay5Kgt": {}, "Wue3XkqcMKE9l0uR": {}, "kf5RxDdVVe0VvPme": {}}, "itemId": "n8keuXuWuitb85Ns", "language": "7DhXCIneqddStnBN", "options": {"skipPriceValidation": false}, "platform": "GooglePlay", "price": 16, "quantity": 37, "region": "4bQO4Nc65zcFKgC0", "returnUrl": "oMEpgLEiStlzCMld", "sandbox": false, "sectionId": "mraqNIKPX6gPHT29"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'AdminCreateUserOrder' test.out

#- 269 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'wkZwM8cvObRjKxi2' \
    '5l9mb1mSJffUaLwO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'CountOfPurchasedItem' test.out

#- 270 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'sYRIJearztP7sqwr' \
    'acbiPrT7cARnySCN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserOrder' test.out

#- 271 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'lQCocWBq1VspKjs4' \
    'jxjTNe3vK6XXKdJ9' \
    --body '{"status": "FULFILL_FAILED", "statusReason": "gLSRyjx0xgbEuoPq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'UpdateUserOrderStatus' test.out

#- 272 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'i79JLKHle3po9nK2' \
    'MnWISZ8LUxYanMQU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'FulfillUserOrder' test.out

#- 273 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'FaZF74RbeEi4WAnt' \
    'BdOLVnsl61rzqSDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserOrderGrant' test.out

#- 274 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'eQF7Q3XLgdI7tdEm' \
    'vBnrNtew73bedVZ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserOrderHistories' test.out

#- 275 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'xFNiFC0HSIZAGhHJ' \
    'lyMBkbUPi2FDgx1g' \
    --body '{"additionalData": {"cardSummary": "JONPjy1ei7AZBrLd"}, "authorisedTime": "1990-10-13T00:00:00Z", "chargebackReversedTime": "1989-09-24T00:00:00Z", "chargebackTime": "1978-10-10T00:00:00Z", "chargedTime": "1998-02-20T00:00:00Z", "createdTime": "1999-10-31T00:00:00Z", "currency": {"currencyCode": "CJx1H9kC6LzFqk7M", "currencySymbol": "St4enxGbQr0GStnc", "currencyType": "REAL", "decimals": 98, "namespace": "HXzy6WjNeNYuVWrq"}, "customParameters": {"xrNDhsaw4vbDPKG9": {}, "aUuCw1ys0BxLbuju": {}, "XwWEJUvl8k6CNRAf": {}}, "extOrderNo": "p1s21wulz8cb64Kj", "extTxId": "GDHolxRGH5sQmA6X", "extUserId": "L9p83Led5r4J7MEw", "issuedAt": "1989-07-15T00:00:00Z", "metadata": {"xtP0SkagDcL89Pjv": "twaUDi2fDyXlYJu8", "bIkkFh5LqxA2jff0": "fTRIYip6c9di8Jee", "fXJ2PdIoHdoDHgvw": "cWxlmJoJSnhyf4L6"}, "namespace": "dZ66Zi7azAJHL5PE", "nonceStr": "9RVZONAcvKXL23pp", "paymentMethod": "vor8grcvFvYajtvd", "paymentMethodFee": 16, "paymentOrderNo": "7ULC1He2xJmIQ7lG", "paymentProvider": "ADYEN", "paymentProviderFee": 92, "paymentStationUrl": "lLjCH6xr3vtL9JTQ", "price": 58, "refundedTime": "1972-01-08T00:00:00Z", "salesTax": 89, "sandbox": false, "sku": "2DvfAXB1SrgLn5lU", "status": "REFUNDING", "statusReason": "VA9kYxDaegAgXI2c", "subscriptionId": "iZ5FWoyqYl8KD0zl", "subtotalPrice": 65, "targetNamespace": "P9G3HyBugfReiDLd", "targetUserId": "STRmElGhVQf227V7", "tax": 54, "totalPrice": 19, "totalTax": 59, "txEndTime": "1979-01-07T00:00:00Z", "type": "n8azMyTBLnxtGnH0", "userId": "h3TvkynRdR0cTxgD", "vat": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserOrderNotification' test.out

#- 276 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'WOWAsThZ6Ln6xBAA' \
    'pmumWxYTfEEm2g8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DownloadUserOrderReceipt' test.out

#- 277 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'pfOhv1dFmmwcX8cR' \
    --body '{"currencyCode": "QpNggDqIfB0DPn1C", "currencyNamespace": "ZrBaO9y4CHHaydta", "customParameters": {"KJNujTvCDwyDu1QG": {}, "AcJRAK1mgNt0pudy": {}, "ASz9qbHEsbgt8Nb6": {}}, "description": "qoNGzjQQDw2Sc4DT", "extOrderNo": "bergyuPtRgn6fWMW", "extUserId": "qZYmAvVETTsjp3kT", "itemType": "MEDIA", "language": "zey_cTWo", "metadata": {"tkQh3rUUKaN66Rjk": "t9zWkx2SjE4MM82Q", "w4C7p4YKcL3qt4lU": "CjplpfxQDpz3ka75", "GSPrezfQIy1FsYo0": "3H0HWXeUSuTJRHgB"}, "notifyUrl": "RpSb3GL7YAU5AnUk", "omitNotification": false, "platform": "eqq8PstBnVeYTD7i", "price": 92, "recurringPaymentOrderNo": "fqOSZxwOb5jkz9ih", "region": "Te86sjHoBLGz2Km7", "returnUrl": "DEtivDSv0mmNGIWj", "sandbox": true, "sku": "9L9aA57kR2ACNzI1", "subscriptionId": "0tZr3Ajmwxrpjfga", "title": "mOka0iwQFwqJrWlE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'CreateUserPaymentOrder' test.out

#- 278 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    '1xE0AgbtqawrlckT' \
    'guotHZZnBkb1WomH' \
    --body '{"description": "Q23RrmGI0fa4tSgh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'RefundUserPaymentOrder' test.out

#- 279 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'REoTAvCltzrUTJgB' \
    --body '{"code": "jWwZMcxIcmhutMHE", "orderNo": "eUDIyZ6bUl6Q4DAw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ApplyUserRedemption' test.out

#- 280 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'zeZS20lWbIy7iWsA' \
    --body '{"meta": {"EY3T2YDXuJSzkSZf": {}, "Z5duijZETizaQixM": {}, "gpWQ9PgUcB3N69aW": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "qiXIaji4MOmP494v", "namespace": "GlNtuMUpS3K4kKGK"}, "entitlement": {"entitlementId": "ct8SZQK7TEK4sZzj"}, "item": {"entitlementOrigin": "System", "itemIdentity": "oPP3OeZVILEaXbHn", "itemIdentityType": "ITEM_ID", "origin": "Twitch"}, "quantity": 89, "type": "ITEM"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "nXRVh36pW5RFN9k9", "namespace": "3aNy4vvrPXP6Snc4"}, "entitlement": {"entitlementId": "UqgNJcVC0MQnjUph"}, "item": {"entitlementOrigin": "Nintendo", "itemIdentity": "iAVrPuzKV1Wj7J3Q", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "hZMehNOncXNM18Zi", "namespace": "BLaa5iN5b6ODd1kj"}, "entitlement": {"entitlementId": "4Qj6RS5aO256cete"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "fqpyffEz0xbTHKA2", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 95, "type": "ENTITLEMENT"}], "source": "DLC", "transactionId": "FWbYOy7zpSeyGBLa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'DoRevocation' test.out

#- 281 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'uvijI1vUPcP4XMNI' \
    --body '{"gameSessionId": "CniSwlnSYTuNVajw", "payload": {"q9onI9NBO48v6DUJ": {}, "Re1LpwuZIoLrVS0A": {}, "crY9Vdxzm1SnMFP7": {}}, "scid": "ijRI315PPtar2LEa", "sessionTemplateName": "QgwjgNbqY9SXZMP7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'RegisterXblSessions' test.out

#- 282 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    '93iEdDgNGO3Dfmm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'QueryUserSubscriptions' test.out

#- 283 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'Q8A03ovBcVCnifE0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'GetUserSubscriptionActivities' test.out

#- 284 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'YS9KhgP8rRhISjcI' \
    --body '{"grantDays": 44, "itemId": "sBgTJCc6734Mnrbj", "language": "AM32RlQ3Wpg0XNZC", "reason": "sESCHRPA5OQX8twQ", "region": "rDu49JFXjPc1tJBa", "source": "HYTZ2IdgUYmmt7HX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PlatformSubscribeSubscription' test.out

#- 285 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'JCUjwNMnmrmR9dDV' \
    'bvyNupYCzyYEaMgX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 286 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'sszL7hpsSwAQxtDE' \
    'Um4PnTTyHhBvqhix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'GetUserSubscription' test.out

#- 287 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'MPjP9lZT5O6iUdCh' \
    '9M0KC9zNZRaWXjMC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'DeleteUserSubscription' test.out

#- 288 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'SId4tDlI96Qjoaq0' \
    '6aI2zoqmaPgdCvQw' \
    --body '{"immediate": true, "reason": "b7i2SZkIaANvZ0I2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'CancelSubscription' test.out

#- 289 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'EGVDWs67zwXLLDtN' \
    'Rfmo1w8aAcuRQzdY' \
    --body '{"grantDays": 15, "reason": "ziEpGVXsUvez1lbe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'GrantDaysToSubscription' test.out

#- 290 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'nagh9kCPNSZTIlkM' \
    '5IYJnbFprRWLjHPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetUserSubscriptionBillingHistories' test.out

#- 291 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'PqvMMmYJeKvshwdE' \
    '9XuQ8gykJm5GMKtZ' \
    --body '{"additionalData": {"cardSummary": "Sng8Oi6TDpSGwc7w"}, "authorisedTime": "1996-06-19T00:00:00Z", "chargebackReversedTime": "1975-09-21T00:00:00Z", "chargebackTime": "1973-05-23T00:00:00Z", "chargedTime": "1986-08-08T00:00:00Z", "createdTime": "1992-05-29T00:00:00Z", "currency": {"currencyCode": "kn4KNYWbvsmtsOVv", "currencySymbol": "pKYJyOQGUiqcJ2Jl", "currencyType": "REAL", "decimals": 51, "namespace": "ftmSBKQ3zAXk9qVr"}, "customParameters": {"zEqsDwIwRyHKWspP": {}, "tJlLDOjXTWGIrWq2": {}, "VvH0roA20Sfzrc9Y": {}}, "extOrderNo": "YsgvVLN3usfhiyCf", "extTxId": "1FOddxtE52sFK1jN", "extUserId": "p3OwcrNR2jH7Xx7m", "issuedAt": "1983-10-13T00:00:00Z", "metadata": {"xtTxuptcOYSTj2AW": "A5f61ztkSpGmf8BX", "osNylCwcf2iVxv9Q": "tivQqeRyPorhTuFn", "3W0qApZ98a9g9AjL": "DQL5jZbyjCnTkYE0"}, "namespace": "HYHfBc64zDQawQPb", "nonceStr": "bbHLcaHmXRdPvQLV", "paymentMethod": "uKpiiZ4Imogp7RKE", "paymentMethodFee": 5, "paymentOrderNo": "Evk3rVTLjZT9qayJ", "paymentProvider": "STRIPE", "paymentProviderFee": 100, "paymentStationUrl": "mVVI1FilcO4pajEh", "price": 22, "refundedTime": "1992-12-17T00:00:00Z", "salesTax": 15, "sandbox": true, "sku": "dfTjLVxzjyQsgv5n", "status": "REQUEST_FOR_INFORMATION", "statusReason": "ORocHSHulJHhAnY7", "subscriptionId": "QeDSRroVkXb4xPPU", "subtotalPrice": 26, "targetNamespace": "ko7332ZZa1YfuaQ7", "targetUserId": "gPgiz2EBME5ikH5i", "tax": 95, "totalPrice": 49, "totalTax": 94, "txEndTime": "1999-10-09T00:00:00Z", "type": "GB4bGcYzy0T6Q891", "userId": "55mM6RsYxtVcgA1q", "vat": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'ProcessUserSubscriptionNotification' test.out

#- 292 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'sR85DcnV5fUvb2OK' \
    '8scK4MyIy9F8aBXz' \
    --body '{"count": 28, "orderNo": "q950XtiMxQDIHnPi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'AcquireUserTicket' test.out

#- 293 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'n3vZc9bUYgwdNmcp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'QueryUserCurrencyWallets' test.out

#- 294 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'dldDn2Y2l1kZWnqj' \
    'JaGGTFaJHecFy9m5' \
    --body '{"allowOverdraft": true, "amount": 65, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"h1hFoX56gzosv2p6": {}, "WtLfgPM8t1tgWhx9": {}, "4eFnxfKdptYcgxbM": {}}, "reason": "BZz4e7YZPuTkhJH0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DebitUserWalletByCurrencyCode' test.out

#- 295 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'gQxqxmEFytm0rZGl' \
    'RUuJ7HggA1D8DBtk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'ListUserCurrencyTransactions' test.out

#- 296 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 63, "debitBalanceSource": "EXPIRATION", "metadata": {"9JX7oDFoXpZ9sy7d": {}, "EuiT7OrRdHjzNhfc": {}, "3uokglAmxb5eaYqd": {}}, "reason": "XkBqt2UfrBE1JhOO", "walletPlatform": "Epic"}' \
    'rZJAMVQaCd4UgSRs' \
    'Fc8FKz1j1HfaNk1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'CheckBalance' test.out

#- 297 CheckWallet
eval_tap 0 297 'CheckWallet # SKIP deprecated' test.out

#- 298 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    '4hC8wgvaTIntj0re' \
    'kmCKMOHEhe6apnth' \
    --body '{"amount": 73, "expireAt": "1979-05-31T00:00:00Z", "metadata": {"eKfjfpUz3jtg1bKa": {}, "DBROm6TJ2qMul8cl": {}, "55U4RB2xVHiARcFL": {}}, "origin": "Playstation", "reason": "iHgKDtYUBWq18cbn", "source": "ACHIEVEMENT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'CreditUserWallet' test.out

#- 299 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 99, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"KAdNp2ReRw5WPjoh": {}, "GmJKCjbEtFKLGvBQ": {}, "OS81LpIh5QqEOKQX": {}}, "reason": "nUYMXvJJrO8K9yVa", "walletPlatform": "Epic"}' \
    '6MkQpPd0utGYDVGw' \
    'pKCkOgcVrMw1DAaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DebitByWalletPlatform' test.out

#- 300 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '3oGYmbE9E87RTBvl' \
    'u7lo1foXU28IE7EV' \
    --body '{"amount": 44, "metadata": {"1rsQWD1svihoAZBd": {}, "4hkykRLwN2LHFkXj": {}, "hDf4RPTS1xmIM78u": {}}, "walletPlatform": "Epic"}' \
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
    'ilnHrNI7XsRCD3YO' \
    --body '{"displayOrder": 52, "localizations": {"tAFsemukeOnQqvXA": {"description": "FVKLeOpEjPJDBPU8", "localExt": {"LPr0bjy4nFkl8n6P": {}, "SoXYb9tc6rYyOiaU": {}, "KC8t4GV0JiE7ZbWP": {}}, "longDescription": "80ZctunIw8zzjr1o", "title": "eY1p4P0xno1luSqc"}, "iM4rfqsoJ7AkLiYj": {"description": "JvlKhH1ccnrp3T2f", "localExt": {"Kqq9CzJlj0UGtCqJ": {}, "nqpaur75iSsLSqGK": {}, "fGJDmzFepqpoIzof": {}}, "longDescription": "Q17bQpOtqU8Y63DF", "title": "Snh5IbdftTLRLUGw"}, "enKzXRT99U5B5j9C": {"description": "T2YI1qt4AYI54fgX", "localExt": {"lDCLFwNGzR7zvW33": {}, "BLQ5NyteBZg7IM93": {}, "LGdMKko1WdXcuqjn": {}}, "longDescription": "yBh936FR7fT7f00E", "title": "Zw65iq4fnnFA4ieA"}}, "name": "eG0JcWHLxYckKH0j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'CreateView' test.out

#- 308 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '3mmJ2Y5FsP84rgl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'GetView' test.out

#- 309 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'AQlBikeTeA9eq8hI' \
    'KrzAUsKqpjQGHI3W' \
    --body '{"displayOrder": 20, "localizations": {"kYfTO2Gg00JcXGaI": {"description": "UaL3FoA27eK2U3IH", "localExt": {"pgmmQaQj7hyQjWqz": {}, "vHab6b9t7DWTaUGB": {}, "JRTcrm3mIBuPZxql": {}}, "longDescription": "GGOe2VYsej3cSW6Y", "title": "WXMTlqVrGyQYDnbz"}, "j7Xg2lcvB7TOu2Fc": {"description": "uLwU5IJt4pAasYNW", "localExt": {"28u3UZ3q6QdMAL9I": {}, "C4460Wck2oK2mLwk": {}, "xgJXK2OjNzQ95lce": {}}, "longDescription": "Iy0lnTniV8j7XmR8", "title": "FUW42wLu5tQBUE3k"}, "2mUvrQPFxSaRrDsF": {"description": "1CKYcMJnrn1I3ypo", "localExt": {"EAwuriKcfEberKsm": {}, "ttvFw6Ev28mtO5is": {}, "AId2vIIeRmFR2TQ2": {}}, "longDescription": "rE5Ugf8q6zX7Jc7T", "title": "K5xO3LzmzW8Oj3HD"}}, "name": "RoKRr6ZZRLgp1djM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdateView' test.out

#- 310 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'aw9o5TdLhB2mWrW0' \
    'A29UflIqBalvCur3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'DeleteView' test.out

#- 311 QueryWallets
eval_tap 0 311 'QueryWallets # SKIP deprecated' test.out

#- 312 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 52, "expireAt": "1995-10-17T00:00:00Z", "metadata": {"PcP3N8ee3aFSyZkp": {}, "xzyGW3kHAKNzH5cJ": {}, "1x2IhHEQwW44r5yX": {}}, "origin": "Nintendo", "reason": "LZg00dmqgWRmPnXp", "source": "PURCHASE"}, "currencyCode": "tj7pKnbtPAZsNwKW", "userIds": ["Rrqi0F1FGxhrYszq", "lHT7wmvO6YDgQ4TL", "dkZgouTEi19doNSC"]}, {"creditRequest": {"amount": 58, "expireAt": "1996-03-04T00:00:00Z", "metadata": {"U4xH3NpxEEE1xE1t": {}, "eY5Ma16Sr2B137kV": {}, "ZhkISgONgrrElIGG": {}}, "origin": "Other", "reason": "8sY9ZaFaHBtEtzzb", "source": "PURCHASE"}, "currencyCode": "sI9Nty8KpP0RHI8i", "userIds": ["cuY92iMkPiEKRgT1", "zZPaKlnIY3vGLET0", "5JQWhwijC7ydSFRQ"]}, {"creditRequest": {"amount": 51, "expireAt": "1995-03-15T00:00:00Z", "metadata": {"5OyypfQ5iJtNrVbj": {}, "nyYERw24T1DBdzzV": {}, "bhZKnh9FfHsuwhOt": {}}, "origin": "GooglePlay", "reason": "hmAmGWgONbsaq6FR", "source": "SELL_BACK"}, "currencyCode": "9FVcE5vUWRlOGzgj", "userIds": ["n2EhpBnamOqQfF1i", "nghEeYuTA3fZ9naI", "9lDi17TuzOCkfreV"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'BulkCredit' test.out

#- 313 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "XF3F57a8i8FBQVq8", "request": {"allowOverdraft": true, "amount": 97, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"G2DfogFpQ6h4G1Jw": {}, "gwqyIOpmNMgpfDY1": {}, "FR9rKaxaWsCGgI79": {}}, "reason": "Hr331YipwCDOc9FN"}, "userIds": ["s0rjVHzs9C25B5DY", "nDz9YRB0KErE7XXT", "IkGcoYjLN4VPTXzk"]}, {"currencyCode": "kVsvdGlmWWA02nKw", "request": {"allowOverdraft": true, "amount": 11, "balanceOrigin": "Other", "balanceSource": "PAYMENT", "metadata": {"oXGyr43yZ4vipgYC": {}, "ZiVhuUlRF8bgS0Z3": {}, "T7DC5TO5zuEOtCw7": {}}, "reason": "S3b8oIW8rduVEpRj"}, "userIds": ["LtOu3SAtYQcZ2M0m", "2eu4s6Vt77Z7VYCz", "bhlZ8rATgmfiV8x6"]}, {"currencyCode": "Mbz1C3ZtjGu9CxaM", "request": {"allowOverdraft": false, "amount": 19, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"eO9MSckJNZeDhfW7": {}, "AVHVE6TamhtDUacO": {}, "PwPczqMDbsgiaaxI": {}}, "reason": "pP9oAICocQql5YfB"}, "userIds": ["ZVQcDD4zf1BZvQIr", "oikruHKYKNEVJSze", "bCQWs1jZYqrf4bxO"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'BulkDebit' test.out

#- 314 GetWallet
eval_tap 0 314 'GetWallet # SKIP deprecated' test.out

#- 315 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'li2Uey4fuSj1kSeW' \
    'A3702McnnKWV37CL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'SyncOrders' test.out

#- 316 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["HYvul2IsFExmn4GV", "4MH5mOZyTMMDazz0", "zG1FmCCywXfHj329"], "apiKey": "WcNk8k8qK4gJrux6", "authoriseAsCapture": true, "blockedPaymentMethods": ["UcJCHbaM8I2sFnR0", "i1EP6ekQzrmDqC82", "7Ayw8HdDdyIIR5cs"], "clientKey": "3jEJm9cqIJO6etrg", "dropInSettings": "PcoqdV16bQzZjJii", "liveEndpointUrlPrefix": "JFm6K0MsbekvKte7", "merchantAccount": "LEbOajs9HWygfQVP", "notificationHmacKey": "PqE6XNxmrOFx6Aen", "notificationPassword": "NJCzeLqjOhHMsieB", "notificationUsername": "zDBhi6oZhjEnbkZp", "returnUrl": "3ZHkJnKJ2ksygYZV", "settings": "yQIUbI6vW6lvytcm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestAdyenConfig' test.out

#- 317 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "R4QRN7ybL3lT1Ois", "privateKey": "7OsTElVV8XJ7Jg2J", "publicKey": "P8JKQ1Fia4jQzEGs", "returnUrl": "QTmKTeq9hsX0E1pS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestAliPayConfig' test.out

#- 318 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "QzkJa95maQLAJLoG", "secretKey": "MHeP6XZjcdrsSt4s"}' \
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
    --body '{"clientID": "pX9eT2jwH7ODZfqj", "clientSecret": "84XXtngQG9E03eUw", "returnUrl": "SRO9eoka5Ufs9UTt", "webHookId": "AImWjuqib3nbPkju"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestPayPalConfig' test.out

#- 321 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["9PQ5pN0XXmk4owkn", "spUKyKWqOaF8En9U", "t2qFCzvpinQCQg8f"], "publishableKey": "idwt7qJ1Y75wS8MC", "secretKey": "mOepp9Tx45YPBPqc", "webhookSecret": "YNEbLCaeCuMBokWf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestStripeConfig' test.out

#- 322 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "uz2Zskdg2b5IpRSA", "key": "i9TY3ZiKfpU2gMma", "mchid": "HuaBzeu4NPuT03UI", "returnUrl": "8xXkOTRPX2RbN68q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'TestWxPayConfig' test.out

#- 323 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "9XjuvxGSBmDL91zf", "flowCompletionUrl": "HvKnS4TBwlGi9OKY", "merchantId": 34, "projectId": 52, "projectSecretKey": "mnMdDOYMCkcE680j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestXsollaConfig' test.out

#- 324 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'XshhArmrrsTXqjhr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'GetPaymentMerchantConfig' test.out

#- 325 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'yZuWF0aXyAfnT9KM' \
    --body '{"allowedPaymentMethods": ["wZkUmivHbmYwS4Mp", "DJ1DYOnlVrhflY3M", "zIef9mtXHbh3agt9"], "apiKey": "HQKHNhlzYRtA24gR", "authoriseAsCapture": true, "blockedPaymentMethods": ["YHhOIGu0vXLFZoXt", "8k5ZtRJGwh0BPRCW", "dTnytxmesJ8JDDcP"], "clientKey": "Dev3e8oc7sh3o0r9", "dropInSettings": "VYIh3Jj15pf4bXUr", "liveEndpointUrlPrefix": "ytKH5rM54pVKLq2n", "merchantAccount": "iQIIF3Qc9pq9UUur", "notificationHmacKey": "5zNNHf53CHNLzMNE", "notificationPassword": "lAaW04oQXa8waozl", "notificationUsername": "r2ftyZklpNPl881j", "returnUrl": "OSvCvj20fgU419HQ", "settings": "Gug3ApiXAivNHSVq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'UpdateAdyenConfig' test.out

#- 326 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    '7Hy14PWQgyxy3AZ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'TestAdyenConfigById' test.out

#- 327 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'Q29c3FLGnsacdakV' \
    --body '{"appId": "uBk3eUIeGfzqhOBh", "privateKey": "MJ8BCR0Pr4lUceWJ", "publicKey": "idPUCDHoZPOFJliG", "returnUrl": "QwzPSicmKe5tLTY4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpdateAliPayConfig' test.out

#- 328 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'T61Ztjv4HjtKUJ2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'TestAliPayConfigById' test.out

#- 329 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '5iKvkb6yaN0rJRTt' \
    --body '{"publicKey": "Aoroj50ibuYM4wRG", "secretKey": "0lN0X5kMcmOdLuSZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpdateCheckoutConfig' test.out

#- 330 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'LYkIABWq6LMyqmJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'TestCheckoutConfigById' test.out

#- 331 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'IayJYIYPCQLT4Utc' \
    --body '{"clientID": "QmxMnH608ZzCha8x", "clientSecret": "LBGlN6GGKXlt1XAs", "returnUrl": "wrMMjtufusABAiEc", "webHookId": "ZPc54ZoDD56c8ZJF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdatePayPalConfig' test.out

#- 332 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'ga6qXT56186aDmZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestPayPalConfigById' test.out

#- 333 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'x6FpqFAR1FP2qDxq' \
    --body '{"allowedPaymentMethodTypes": ["ukQGmZ8QPR4rrBu0", "xMLSZM2reG0eUsKe", "4gH8U04S5FCpmYeC"], "publishableKey": "JwMPHx5qbq2es6TW", "secretKey": "DRr2bTPUxXfvsOwN", "webhookSecret": "GBX5w0CKM4KgSaTF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateStripeConfig' test.out

#- 334 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'kYqyDBVeKhVWlgMI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestStripeConfigById' test.out

#- 335 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '2a4HuuQiMf3ZtSRa' \
    --body '{"appId": "KTvnYQcQK3OLU5xN", "key": "eaLjRoNMmfyuSugV", "mchid": "63aIt0NDFEcKEQax", "returnUrl": "vtIGC9xYvHbX0ptw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateWxPayConfig' test.out

#- 336 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'ZqHLOEqFcFlBmznr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'UpdateWxPayConfigCert' test.out

#- 337 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'LziwCnnibCjn2uxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'TestWxPayConfigById' test.out

#- 338 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'SkuKry9iZZvtreyT' \
    --body '{"apiKey": "jGpaUSGjv2AbKgIo", "flowCompletionUrl": "GvyLZGyV2nNIKGyV", "merchantId": 1, "projectId": 40, "projectSecretKey": "yKJUPzM18zammJN3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'UpdateXsollaConfig' test.out

#- 339 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '9lhBPiRxSSC369UV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'TestXsollaConfigById' test.out

#- 340 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'GTnts7qK33YCsDe0' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
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
    --body '{"aggregate": "XSOLLA", "namespace": "cvnj5Ut4YTxIBMay", "region": "1sHQoxlbhfnh1lar", "sandboxTaxJarApiToken": "FYcM0OoFV93hG5GV", "specials": ["ALIPAY", "STRIPE", "ADYEN"], "taxJarApiToken": "5oCp2u2A2ZLrkeWb", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
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
    'D0K7Y5bCch6ur33F' \
    --body '{"aggregate": "XSOLLA", "namespace": "89BCAF2MVozVctDa", "region": "Mus5bsovjmmxHjjl", "sandboxTaxJarApiToken": "quESAZpAC3MEgBrV", "specials": ["PAYPAL", "CHECKOUT", "XSOLLA"], "taxJarApiToken": "t120hKXcluepkD2c", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'UpdatePaymentProviderConfig' test.out

#- 347 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'gnvYu1vzXsMr43yc' \
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
    --body '{"sandboxTaxJarApiToken": "E5A2fFKAWLe45noh", "taxJarApiToken": "GKrvpCUuClhTnLjG", "taxJarEnabled": true, "taxJarProductCodesMapping": {"zfvvm60VIJWtArjN": "f9ClzJiLrK8iwSKw", "TNINv7MbR3h7N9mL": "vImrGFR73LVKd3lH", "IIZTnztswBHIOUcp": "Bs05S6VCRgcpqzF0"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'UpdatePaymentTaxConfig' test.out

#- 350 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'Wdx4tTiOqvd6is3i' \
    'MkUYXGJ52LhrcYmN' \
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
    'qU8FNr2Sf2vnHOZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetCategory' test.out

#- 354 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'dmTd8ENVRZH8lmeT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetChildCategories' test.out

#- 355 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'jzHxgwKaMjUptGDH' \
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
    '29SPAGK8QxsXGgAK' \
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
    '3QR9g0C7nE1t58Ld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetItemBySku' test.out

#- 362 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'pQQXSvH7kwH9PKAI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetEstimatedPrice' test.out

#- 363 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'EqRaoWkdV23II0TE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicBulkGetItems' test.out

#- 364 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["DjWcIzfsSrF9JBbs", "3ioKOVcrfhki2j4K", "5qHkvYSU2i8wpPg4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicValidateItemPurchaseCondition' test.out

#- 365 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'f6CytNOpTcy8nFxn' \
    'yUhq8QCACdn9QBrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicSearchItems' test.out

#- 366 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'BZ0FGcSF09VMOBfF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetApp' test.out

#- 367 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'hgytL5jv2cyVSXxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetItemDynamicData' test.out

#- 368 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '4A5aA1bEwNCWytxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetItem' test.out

#- 369 GetPaymentCustomization
eval_tap 0 369 'GetPaymentCustomization # SKIP deprecated' test.out

#- 370 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "KphKxkJ5Y2qNwo7f", "paymentProvider": "PAYPAL", "returnUrl": "IEm4CCHTjiJTcJCN", "ui": "U9JxdozQjrd9h3Kv", "zipCode": "seGTWQwYHbgonXMW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetPaymentUrl' test.out

#- 371 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'BgwAHBLENBGh8mzb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetPaymentMethods' test.out

#- 372 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'I7UUQoj40AF05z6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetUnpaidPaymentOrder' test.out

#- 373 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'C0fH4BlyXE2K4uNJ' \
    --body '{"token": "RgQ3CCklU97Kkomn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'Pay' test.out

#- 374 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'jFaT7NQeCqpaKPJk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicCheckPaymentOrderPaidStatus' test.out

#- 375 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'ezU2RemXA27tg6by' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'GetPaymentPublicConfig' test.out

#- 376 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'pXmwZRpU8Qcrmp46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicGetQRCode' test.out

#- 377 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'NHHKuQExWorl4PYK' \
    'J1GJKlZ26mxx5rFW' \
    'XSOLLA' \
    '1ZASgNbyIgL74DNN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicNormalizePaymentReturnUrl' test.out

#- 378 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Iekar0ZUahrGZV8W' \
    'STRIPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'GetPaymentTaxValue' test.out

#- 379 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'yGzUy7Gy3lIbJD3k' \
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
    'o0KsF8jqH84W95YM' \
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
    'kpzkat1qYXphVMsb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'w6Rv3XZ4XgIfTmvZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 386 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'Du1OaoVmtgO5YP56' \
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
    --body '{"gameId": "VohkMQrBSOet1EcW", "language": "il-dzWq", "region": "n0ULO8bwirHmfnBi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'SyncTwitchDropsEntitlement' test.out

#- 389 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'vLKinrwTNNliEMZa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetMyWallet' test.out

#- 390 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'ebfXS8gZ4cc4oVqQ' \
    --body '{"epicGamesJwtToken": "k9tqGzt1BHwaxrSe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncEpicGameDLC' test.out

#- 391 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'pYwXWbcBNnyBdWMR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusDLC' test.out

#- 392 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'vISdcF4Db7MaqeC6' \
    --body '{"serviceLabel": 13}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicSyncPsnDlcInventory' test.out

#- 393 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'hdDbGzcJKa1wsM43' \
    --body '{"serviceLabels": [48, 51, 61]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 394 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'CGXTsh5xydeZADSK' \
    --body '{"appId": "QFv0tnP05L7Nwx1i", "steamId": "8sHEbX4mIdomBVyo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamDLC' test.out

#- 395 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'rRK73vbWSNBzkiEH' \
    --body '{"xstsToken": "yJEOg3iIjU3AAg7W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'SyncXboxDLC' test.out

#- 396 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'G2eTsmDaTzm1iyRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicQueryUserEntitlements' test.out

#- 397 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'Ny7RFRXuzS7oKchq' \
    '3HFDAp8snTqP81J1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementByAppId' test.out

#- 398 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'c6C2wvWDhsYWwX5h' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicQueryUserEntitlementsByAppType' test.out

#- 399 PublicGetUserEntitlementsByIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlements-by-ids' \
    'xgCMD1qRyNe4g5DS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementsByIds' test.out

#- 400 PublicGetUserEntitlementByItemId
eval_tap 0 400 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 401 PublicGetUserEntitlementBySku
eval_tap 0 401 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 402 PublicUserEntitlementHistory
$PYTHON -m $MODULE 'platform-public-user-entitlement-history' \
    'TBpRPaWHEoCnndVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicUserEntitlementHistory' test.out

#- 403 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'qgBPmwdNn0rosYXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicExistsAnyUserActiveEntitlement' test.out

#- 404 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    '8eImgQ2x0SgQXdYw' \
    'RiDuKo24S6RgeY6m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 405 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'xarVsr09JpliIbzD' \
    'dA20g9UeCPSEkHvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 406 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'I9pfGr7q4J4HRfPS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 407 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'ShguxCFDvHcOou9G' \
    '8lXxC3R0xIfzLRFe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 408 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'l1aMfEV5ZvvwEDVO' \
    'Z5VOwnn6MrDyExIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGetUserEntitlement' test.out

#- 409 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'LvTJkl9WnxI3c4i8' \
    'HDHZe4XLK8QPEA7M' \
    --body '{"options": ["UcU28Tjo0XKr5KBD", "3YwTJ4Hn5XqA2kk1", "A3H3rxXt6ggKwWIY"], "requestId": "Im0ypwg4VTJpu64I", "useCount": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicConsumeUserEntitlement' test.out

#- 410 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    '7bzAMbnc0ESgND3B' \
    'zn0RXiwLSoaZygiL' \
    --body '{"requestId": "J4dBRmXwqKSWTRuD", "useCount": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicSellUserEntitlement' test.out

#- 411 PublicSplitUserEntitlement
$PYTHON -m $MODULE 'platform-public-split-user-entitlement' \
    'imEWxUgMEW1S9JMb' \
    'rmE7zBsX3PYLNcay' \
    --body '{"useCount": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicSplitUserEntitlement' test.out

#- 412 PublicTransferUserEntitlement
$PYTHON -m $MODULE 'platform-public-transfer-user-entitlement' \
    'fKzeVIHcetoKKyIT' \
    'DGaFUZsvAcQqJMBs' \
    --body '{"entitlementId": "peHcHhz8Ok8bgV76", "useCount": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicTransferUserEntitlement' test.out

#- 413 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'LXBkH6l2KW0sSf0v' \
    --body '{"code": "JS3l5sWDcfVxx8PS", "language": "Ax", "region": "jy0XInTSZSMKJYcE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicRedeemCode' test.out

#- 414 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '585zPfpDiAo4zAj1' \
    --body '{"excludeOldTransactions": true, "language": "OJ", "productId": "tQkNA6tPxcpOjecM", "receiptData": "qPJvYXVa6273TGla", "region": "OPmEdjp63KfNpB5U", "transactionId": "n5ObPhEk6MRN6zzK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicFulfillAppleIAPItem' test.out

#- 415 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'PZLWVB4YH2roupmM' \
    --body '{"epicGamesJwtToken": "fATapsn4uvJaBhPA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'SyncEpicGamesInventory' test.out

#- 416 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '5LWJipgrvQaTdiKm' \
    --body '{"autoAck": false, "language": "lP-HTjg", "orderId": "7AWUdPJvJivl1uU4", "packageName": "DMwBdaNaGlQD7ToP", "productId": "lTTR6ePboL66Xhyf", "purchaseTime": 74, "purchaseToken": "fd3eYGpxI9DQs2vO", "region": "JH76fEQ8WC3iZ6am"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicFulfillGoogleIAPItem' test.out

#- 417 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'fE0NHQzAvmPZRWnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'SyncOculusConsumableEntitlements' test.out

#- 418 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'IfYW2kPDBgq17Elb' \
    --body '{"currencyCode": "CwKI3aXhSEFUvuqv", "price": 0.1728403866517435, "productId": "zikf2tQ7LhwHqc9m", "serviceLabel": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicReconcilePlayStationStore' test.out

#- 419 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'UWJ5spS6gLd7l7OF' \
    --body '{"currencyCode": "4v4RTLnsM4wpXhda", "price": 0.5707768595751558, "productId": "DB3MXGMrRfpSxf1B", "serviceLabels": [28, 15, 84]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 420 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'JqDbKXtFPmTQOO3d' \
    --body '{"appId": "Jd2YP1XIUKL9g3AC", "currencyCode": "u1VGeRPwa2XfZ7wx", "language": "amL_vafG_982", "price": 0.8390293003837015, "productId": "3X04OxvZytaM4c4q", "region": "TIV7vRV6x146gCIr", "steamId": "SkEiZX9iHZkthOUU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'SyncSteamInventory' test.out

#- 421 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'tPBx2Kqt9eEQQ5qX' \
    --body '{"gameId": "Zd41KiSlLVmN9KSb", "language": "gR-Lz", "region": "UnkcE3UYV2aj9PL4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'SyncTwitchDropsEntitlement1' test.out

#- 422 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'PQGJJokFeKLbBQG1' \
    --body '{"currencyCode": "6At6ZhNxuLFAW37E", "price": 0.7477809572947576, "productId": "wOviFJi304rwbySn", "xstsToken": "VTSdmqyftEYQl2xF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'SyncXboxInventory' test.out

#- 423 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'FtZWlWKmQH3tI9yH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserOrders' test.out

#- 424 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'xuaa0zbT4NGP7Xy3' \
    --body '{"currencyCode": "gYPJQEukOcBtFyzW", "discountedPrice": 49, "ext": {"aKe15m4NorN2PP1h": {}, "XmALwnidAmiLFK5D": {}, "wak0R9n1WBVWp96b": {}}, "itemId": "YrG5ANSRCXWy9C2o", "language": "HiwB", "price": 40, "quantity": 30, "region": "7ed5WKQJkzGQPBQo", "returnUrl": "XpXVvDLulelX30R2", "sectionId": "hPYkRArSfExoJMAR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicCreateUserOrder' test.out

#- 425 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'mEC7Kyhtx4sYsq0C' \
    'bA1NZZ58G8Xryw8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicGetUserOrder' test.out

#- 426 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'fE6VA6HEvqN7kX4V' \
    'VVBS89UUbLl2ciim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicCancelUserOrder' test.out

#- 427 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'YDeDceMEtPkjYd9P' \
    'NBi79WHorOJPVoTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGetUserOrderHistories' test.out

#- 428 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'RV5enPlVeOc8uDGu' \
    'A9ZVtPuyxsPGoUCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicDownloadUserOrderReceipt' test.out

#- 429 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'c3BsZJVlVlewocIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetPaymentAccounts' test.out

#- 430 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'WjmJ81aRTbDoFbYL' \
    'paypal' \
    'GLtoFJvwz5yKIpwo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicDeletePaymentAccount' test.out

#- 431 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'aQavSCZfTzJfHZF1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicListActiveSections' test.out

#- 432 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    '7lZ95JmGny7g72f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicQueryUserSubscriptions' test.out

#- 433 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'SO7XayfUmZz42HE0' \
    --body '{"currencyCode": "t7TAQm0TGMk4Dmrw", "itemId": "xC6EQr9lk8teEugV", "language": "UK_jImf", "region": "e7A1xHVzxmePZ06t", "returnUrl": "OqoxMhyqIyPdnz3R", "source": "eXTrC2sNANyInXnu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicSubscribeSubscription' test.out

#- 434 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'nWNxg0gQztAjYiUb' \
    '5SlpeaMDVE3ODebY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 435 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'RPEkmK5ePPaacnQT' \
    'uUibmiz8AhOGRIww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicGetUserSubscription' test.out

#- 436 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'o9w06X6XzJiljntx' \
    '5TSAxNBchtcaaoKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicChangeSubscriptionBillingAccount' test.out

#- 437 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'Yk4GlikyI0LGO0eN' \
    'Ngl7jdIf7ptoc5rP' \
    --body '{"immediate": false, "reason": "sGFfGRRKQ4tLERFG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicCancelSubscription' test.out

#- 438 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'opzQ87CbxAJ0xdAP' \
    'Frw8ssJejQ7qSiyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetUserSubscriptionBillingHistories' test.out

#- 439 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'PY0Gnwcv8NFIJFly' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicListViews' test.out

#- 440 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'o9htDZjjGZzNcLBz' \
    'qSh3UQrHYlWFx0rb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetWallet' test.out

#- 441 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '4eSExhChscwh8P6p' \
    'ejiRuUjCpBUL68KL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicListUserWalletTransactions' test.out

#- 442 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'QueryItems1' test.out

#- 443 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'ImportStore1' test.out

#- 444 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'WODgQ2gkEKZZQfGQ' \
    --body '{"itemIds": ["JPF97t3thMfA2pxZ", "7ocAtgWGRZGmCEL7", "IaqoDDiQ322lITGd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'ExportStore1' test.out

#- 445 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'QLjygzdLTAC4I9fq' \
    --body '{"entitlementCollectionId": "jfISERaDf2LdzL9g", "entitlementOrigin": "Twitch", "metadata": {"uTMYiBESlCYdNui4": {}, "AfrJuSaiOYxuj6n1": {}, "UTUHsgjv4O66qvH3": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "lYKeEiUS3GYxZHMK", "namespace": "3ybnM1cQEihWjWNw"}, "item": {"itemId": "YN6xeNeZMtT7f2d2", "itemSku": "NhlIgGSvbXe1Hyw3", "itemType": "mylk3Hwg4Wtj5wR9"}, "quantity": 30, "type": "CURRENCY"}, {"currency": {"currencyCode": "ypJFcZroi0QeG6cD", "namespace": "8trKjrFSu4MOj7pB"}, "item": {"itemId": "AbAKLICuRvKGIR3u", "itemSku": "SMSyy1zY8VkZd3qE", "itemType": "IVQCbFYV3NuJgscT"}, "quantity": 38, "type": "CURRENCY"}, {"currency": {"currencyCode": "dD0knPNT7MZM5TUk", "namespace": "Tp46Y9LTNtGN9WUq"}, "item": {"itemId": "YyTxul6u3RuXCCJS", "itemSku": "aYmbf4tEBMWAIsbP", "itemType": "mXPNCh5Rfq2UC1TC"}, "quantity": 85, "type": "ITEM"}], "source": "REWARD", "transactionId": "fhafmEghm1K6FfhG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
