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
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-04-22T00:00:00Z", "grantedCode": "8J1nsv4W2OJhtafx", "itemId": "MSJlHeb34sZKHcl5", "itemNamespace": "LLLOexL4fZvWtND2", "language": "eCh_ozqf", "origin": "Other", "quantity": 81, "region": "iJCf2XJVrlzqQls1", "source": "OTHER", "startDate": "1975-08-03T00:00:00Z", "storeId": "12K2IzrBvvWm4udE"}, {"endDate": "1997-08-11T00:00:00Z", "grantedCode": "OXudXgNne8kJATwl", "itemId": "c6esUp6Sw1I98jeZ", "itemNamespace": "Q7hfxnhLd3Knakno", "language": "GD_nT", "origin": "Xbox", "quantity": 46, "region": "qQGhCUr6iTrjyEga", "source": "PROMOTION", "startDate": "1972-08-06T00:00:00Z", "storeId": "5HTHQIoVsGo7dwV9"}, {"endDate": "1986-09-03T00:00:00Z", "grantedCode": "BqFKHQkETJyTlUrw", "itemId": "DTnoujQD4IEiH9Z5", "itemNamespace": "qXn3aoRtlqOECohV", "language": "ki-VahH-867", "origin": "Other", "quantity": 85, "region": "ESOiIZsMfB4ZH3mt", "source": "GIFT", "startDate": "1986-02-20T00:00:00Z", "storeId": "ORBVXTIIJM9XsYII"}], "userIds": ["awaGpAyrIwMif3BO", "SUBhyoTsMWPAxUMk", "ZxiXNMR9BgaWcFX3"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["dkocVTd4BxqGWV6m", "TJ0sQs6XNbjvqhnU", "VLWu8olKdxL6ozRm"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'DD0jJvlfV5OemPYd' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "YT7DROCjtuzFMbAG", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 23, "clientTransactionId": "YI89hmguB8FOTjML"}, {"amountConsumed": 30, "clientTransactionId": "oQomSJC4DdrKF7SU"}, {"amountConsumed": 88, "clientTransactionId": "BcrM8rG0rH0zcsww"}], "entitlementId": "VeMK6MbGIVIu8vvw", "usageCount": 77}, {"clientTransaction": [{"amountConsumed": 18, "clientTransactionId": "c7KY3uVoJXTIMtpg"}, {"amountConsumed": 21, "clientTransactionId": "ZrQzP4zvtdxdbZUp"}, {"amountConsumed": 7, "clientTransactionId": "WCYzo8yO2KTK9tmm"}], "entitlementId": "OnYnOpas6ghP1y4Z", "usageCount": 16}, {"clientTransaction": [{"amountConsumed": 70, "clientTransactionId": "7s7QBlk44Z44B1GZ"}, {"amountConsumed": 14, "clientTransactionId": "KBwa3Ddb60ufPpzw"}, {"amountConsumed": 18, "clientTransactionId": "rWdTYCfHkIySok5D"}], "entitlementId": "iXZtLW87rGysryod", "usageCount": 7}], "purpose": "X3viLvtEk4mTIpUA"}, "originalTitleName": "9gxo8SV38nEhoXmM", "paymentProductSKU": "2W7l6jHMA2rG3nak", "purchaseDate": "opAywelu01nryEJ0", "sourceOrderItemId": "NqoTow0qiOiC4j0i", "titleName": "ktm0ZPLkLOsp0LZ5"}, "eventDomain": "njN86Hl8kUXzt6bS", "eventSource": "c6bWvgpVyW9dD1kO", "eventType": "mvrAejcq2LgkQuaS", "eventVersion": 54, "id": "RBx3vim02jBOxrZD", "timestamp": "yvpcLYOWA8NjxOna"}' --login_with_auth "Bearer foo"
platform-get-apple-iap-config --login_with_auth "Bearer foo"
platform-update-apple-iap-config --body '{"bundleId": "Eok4nOOCzfsflhjb", "password": "ngJOUn18G5MlfDTk"}' --login_with_auth "Bearer foo"
platform-delete-apple-iap-config --login_with_auth "Bearer foo"
platform-get-epic-games-iap-config --login_with_auth "Bearer foo"
platform-update-epic-games-iap-config --body '{"sandboxId": "8aG40NlncceIZSwg"}' --login_with_auth "Bearer foo"
platform-delete-epic-games-iap-config --login_with_auth "Bearer foo"
platform-get-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-iap-config --body '{"applicationName": "AIkgzh4pTU0Am4DZ", "serviceAccountId": "hl0bQxFJ3sWCqQpQ"}' --login_with_auth "Bearer foo"
platform-delete-google-iap-config --login_with_auth "Bearer foo"
platform-update-google-p12-file --login_with_auth "Bearer foo"
platform-get-iap-item-config --login_with_auth "Bearer foo"
platform-update-iap-item-config --body '{"data": [{"itemIdentity": "2FbKPFMycMSQ4qfA", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"X3z46OCaGBeMfPlN": "os4yBRjrERHEonAZ", "R8GmEu0q1p6QCyY6": "vSkVFWdsbYuVEGVx", "YheR3j5mNZ6vwv7K": "8Asvt1j1Rx59hesN"}}, {"itemIdentity": "Wy2NvZ85DDKDAF8K", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"4GrFES9z7xueHpAT": "Hccee9GXhKcjmSEw", "drkEnnqKzFsLfYal": "UlfwEQKjU7eHGebS", "Vu0LQ40kepEaC4df": "iOMZfEhHr39pysFO"}}, {"itemIdentity": "3Zvc1BZG99LyvfvH", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"cENx9xZlAchob44l": "ONDDwMvgI0HlyPR7", "wZNiVsF6xG2mXEQd": "bzIVy8alncV7vWgS", "Hdfo07UctPErqxyM": "yOK06MqQBErxgjVB"}}]}' --login_with_auth "Bearer foo"
platform-delete-iap-item-config --login_with_auth "Bearer foo"
platform-get-oculus-iap-config --login_with_auth "Bearer foo"
platform-update-oculus-iap-config --body '{"appId": "ycvU4PbmRDcrg0Dj", "appSecret": "QjBECXvea7H1m2lJ"}' --login_with_auth "Bearer foo"
platform-delete-oculus-iap-config --login_with_auth "Bearer foo"
platform-get-play-station-iap-config --login_with_auth "Bearer foo"
platform-update-playstation-iap-config --body '{"backOfficeServerClientId": "FRZ3ZprZ60zMjhTH", "backOfficeServerClientSecret": "eh94TSenE5hCFkIf", "enableStreamJob": true, "environment": "VN4ZONJREdUQ3z9F", "streamName": "1BxNNgnke4akncw7", "streamPartnerName": "wu9TmXfJWBPrx9Ns"}' --login_with_auth "Bearer foo"
platform-delete-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-existed-playstation-iap-config --login_with_auth "Bearer foo"
platform-validate-playstation-iap-config --body '{"backOfficeServerClientId": "8eLzYEvwSWTaLQjc", "backOfficeServerClientSecret": "tvrK2jhsYpKPlXn7", "enableStreamJob": true, "environment": "MKtezapPr2QEPx3z", "streamName": "TxBGtEJIYppuUSsK", "streamPartnerName": "oHw2hyd12uSE7BEv"}' --login_with_auth "Bearer foo"
platform-get-steam-iap-config --login_with_auth "Bearer foo"
platform-update-steam-iap-config --body '{"appId": "3aevq6iohU1cg4W1", "publisherAuthenticationKey": "IS3Uv1BpWoJBaqdg"}' --login_with_auth "Bearer foo"
platform-delete-steam-iap-config --login_with_auth "Bearer foo"
platform-get-twitch-iap-config --login_with_auth "Bearer foo"
platform-update-twitch-iap-config --body '{"clientId": "2FHcunsS1lnaO2m9", "clientSecret": "vqjhbeK2qN8g6x2P", "organizationId": "yYDo5R3hLiD5sf5y"}' --login_with_auth "Bearer foo"
platform-delete-twitch-iap-config --login_with_auth "Bearer foo"
platform-get-xbl-iap-config --login_with_auth "Bearer foo"
platform-update-xbl-iap-config --body '{"relyingPartyCert": "1JsxJNGmyt0SQDUD"}' --login_with_auth "Bearer foo"
platform-delete-xbl-ap-config --login_with_auth "Bearer foo"
platform-update-xbl-bp-cert-file --login_with_auth "Bearer foo"
platform-download-invoice-details 'oWBZVGLlkUetzCAW' 'c9x1aMjgGim51T10' --login_with_auth "Bearer foo"
platform-generate-invoice-summary '7XIZRZ7tZdIs0xf4' 'czdt7zqmSKxOEQlV' --login_with_auth "Bearer foo"
platform-sync-in-game-item 'cx6GqsBq8vdhWVnu' --body '{"categoryPath": "YLgpZehK0G2nmyuV", "targetItemId": "iB9kRTcSQdTnNYGe", "targetNamespace": "AfYFG3wSkHKufBdS"}' --login_with_auth "Bearer foo"
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["6nEwnZhsjwJeGwaP", "SDMZz95OYKiqaZD6", "3xe5rruJVfLGea0Z"], "flexible": true, "images": [{"as": "s7ACC1RgBfoNrHlF", "caption": "i2qJLgmBLE35Yhyi", "height": 61, "imageUrl": "0TQNEI3kfabxJWWS", "smallImageUrl": "I1ECUo1NPpeFhUzt", "width": 14}, {"as": "DgB7n4C97uAPP8PA", "caption": "TLpUpxeJlsBJT6Hh", "height": 83, "imageUrl": "W9nBhvhf8Q0DtJMc", "smallImageUrl": "YQdN66bswAgt65X4", "width": 80}, {"as": "HKWW4fI1IQcoBQEL", "caption": "cNlZkqTZrKgXNwvm", "height": 9, "imageUrl": "aWsQJtRYoagRJK5P", "smallImageUrl": "X9UcOvhPyE11TRT2", "width": 91}], "itemIds": ["B28MpusuhhDJ5slz", "giWZEtyd56LfxnbY", "97jjYgXchCbkXX26"], "itemQty": {"uEdCfQaMAQuTKfC0": 71, "d9yOfIMLds2DbPca": 30, "3DhqciwIeShF9RKb": 9}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"vxuJlhXbWhbwPwTo": {"description": "C6knjVwVnzaqSfJi", "localExt": {"QFC2gXoda0kg16yU": {}, "SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}}, "longDescription": "ByfHZinxNfgPAwkM", "title": "BsznlBUqnLT4AbGp"}, "tKaWNvPbpg7yrRvX": {"description": "fZ6rvgvEY3Hht1Sw", "localExt": {"qTsKKKo37NHDOQe9": {}, "1Ps3ztUIV0dS6hIH": {}, "9c4VfkyrwpuXxbaE": {}}, "longDescription": "RbfgPmi0eHkt1mr9", "title": "EOIFg0dnWIYN2NVL"}, "70Iw157g00jr9b8M": {"description": "uYmmeKTmBNvGYxEQ", "localExt": {"df3ewoGGoY7xmFNA": {}, "mjDDCvs78mcMdiS7": {}, "6YApGJ9ufwLYkqIg": {}}, "longDescription": "LuZS6hsQryiEtOAb", "title": "peUNf26UqkCfgCUY"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 28, "endDate": "1980-06-25T00:00:00Z", "itemId": "xaOBdPF0JmX8qwU1", "itemSku": "cTuHHPB5S3DvPRCz", "itemType": "BrVUxmDOj3cvRFaT"}, {"count": 59, "duration": 15, "endDate": "1998-04-01T00:00:00Z", "itemId": "1W0TGTCm4fZWuk6p", "itemSku": "QxDQpKqxLGeMvr9T", "itemType": "svcMQ7dBsaIecRxI"}, {"count": 38, "duration": 28, "endDate": "1997-06-22T00:00:00Z", "itemId": "SHiWxF0YbuU5ar5q", "itemSku": "TLWUCy0Afgc050XI", "itemType": "ZRW491e94mQjVOOB"}], "name": "nIWhunElqZUodp3I", "odds": 0.12173679964673378, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 58, "duration": 92, "endDate": "1988-12-03T00:00:00Z", "itemId": "y1ei1fIrPvfHnRN0", "itemSku": "6EjRwEQlNapJRfk4", "itemType": "f9Zcw1pEHAyNFxcV"}, {"count": 93, "duration": 74, "endDate": "1978-06-22T00:00:00Z", "itemId": "uMybYGxD9IPmmsLm", "itemSku": "u3kaPj0O4zd8Tb7c", "itemType": "UNGPTBxiFFCrn7dj"}, {"count": 18, "duration": 19, "endDate": "1980-04-03T00:00:00Z", "itemId": "69FTFVGUVhvKhJCm", "itemSku": "eisql14mUHVbMPim", "itemType": "NhcZsU3VAdMDcb4q"}], "name": "lkiFAamqvZI2Kwjq", "odds": 0.6656977665959348, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 18, "duration": 27, "endDate": "1995-11-05T00:00:00Z", "itemId": "Xade41s3rH34mB2y", "itemSku": "PlRpWjmHZAAvKTH8", "itemType": "MuqIg0CzkguwuJCW"}, {"count": 54, "duration": 62, "endDate": "1982-09-03T00:00:00Z", "itemId": "xSvNDlmM5nQFMGzs", "itemSku": "7fzjgyc44mEh9tRk", "itemType": "8knYSV30lnroQehM"}, {"count": 61, "duration": 1, "endDate": "1977-02-03T00:00:00Z", "itemId": "i6t9unQLYXxm09wp", "itemSku": "GAbpEmDY9vLh3u6E", "itemType": "DsUmrV6kH4OotKwG"}], "name": "3UC6XCnnZxF8CmQr", "odds": 0.8659005870062143, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 21, "name": "br34rBBN9tU6TDm5", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 61, "endDate": "1976-05-01T00:00:00Z", "itemId": "MDu87t0ldWf7iSGI", "itemSku": "iKFtWtn4Yr2svKM6", "itemType": "pqLGZ0TBujELAUK6"}, {"count": 25, "duration": 62, "endDate": "1992-04-01T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 4, "fixedTrialCycles": 4, "graceDays": 44}, "regionData": {"cA8wvLsWUNd6lPKv": [{"currencyCode": "qDejvqklTSvDwuOr", "currencyNamespace": "P9lzpiX0VuFpZum7", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["E8SohhhuiTnJarYY", "5IQYBQuxLvPuWYvE", "kHBDdSzBXdxapwhd"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'HZ3sIhzOx2CXKlvI' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-items 'omU3pIxM9n8D2eLM' --login_with_auth "Bearer foo"
platform-get-item-by-sku 'e3lt9qfx2UDcgVE7' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'L9FK6e0MrPc4vtxk' --login_with_auth "Bearer foo"
platform-get-estimated-price '9hVKlG56HlzGr7Xj' 'dyRJunZPkp6ccIBn' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'WyPw8mj7gyQ7XdIs' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items 'zGRj46COPipH1MWV' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'THG0qHJCWEfOJpZm' --body '{"itemIds": ["9yEYWNGMy2pgSGSU", "OK68eqGJtWf1Ybgg", "8rdwY9bmrvHmO07K"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data 'NqX9LM2IwEsdOGBX' --body '{"changes": [{"itemIdentities": ["BwnzDX8v3xgC1Ge9", "PdbTTAJ2Gp1r0sVZ", "6LJAOddIL2l3hPjN"], "itemIdentityType": "ITEM_SKU", "regionData": {"UIoiIJFNxuNOmUSW": [{"currencyCode": "w18T1IxVWCxdvPL9", "currencyNamespace": "e4P01vxP8xj1LyEi", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1994-12-09T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1998-09-03T00:00:00Z", "discountedPrice": 90, "expireAt": "1999-04-13T00:00:00Z", "price": 96, "purchaseAt": "1986-04-26T00:00:00Z", "trialPrice": 80}, {"currencyCode": "9UBJWodpdwsX1jor", "currencyNamespace": "cyR0x3YiHF8ITGPR", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1985-11-11T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1973-10-11T00:00:00Z", "discountedPrice": 3, "expireAt": "1980-12-28T00:00:00Z", "price": 86, "purchaseAt": "1984-01-27T00:00:00Z", "trialPrice": 23}, {"currencyCode": "lNzwog2IhErkNhNc", "currencyNamespace": "ECWwchW6zL9SkbLl", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1991-02-10T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1977-02-10T00:00:00Z", "discountedPrice": 67, "expireAt": "1976-12-31T00:00:00Z", "price": 27, "purchaseAt": "1978-11-11T00:00:00Z", "trialPrice": 68}], "azb8jvRWenURH48a": [{"currencyCode": "JuALEcSqcE15u6D3", "currencyNamespace": "1DjOsrs3CUYATdqn", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1974-01-15T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1979-05-15T00:00:00Z", "discountedPrice": 16, "expireAt": "1984-05-14T00:00:00Z", "price": 67, "purchaseAt": "1991-01-10T00:00:00Z", "trialPrice": 22}, {"currencyCode": "ruNB72HHMkjzyBB4", "currencyNamespace": "UFKiaoV0VOem2yqP", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1977-09-16T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1982-02-08T00:00:00Z", "discountedPrice": 75, "expireAt": "1983-09-15T00:00:00Z", "price": 3, "purchaseAt": "1977-12-05T00:00:00Z", "trialPrice": 82}, {"currencyCode": "kbuS6x9cLJ1APnNl", "currencyNamespace": "sa2bRBr27fVMWuAf", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1979-06-08T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1973-11-15T00:00:00Z", "discountedPrice": 70, "expireAt": "1993-11-06T00:00:00Z", "price": 13, "purchaseAt": "1998-07-24T00:00:00Z", "trialPrice": 71}], "IZPKOKiAVQXXOmqF": [{"currencyCode": "HLbyXmgCNiXH8uen", "currencyNamespace": "bC5CphgMweexsIAP", "currencyType": "VIRTUAL", "discountAmount": 90, "discountExpireAt": "1988-05-06T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1984-03-14T00:00:00Z", "discountedPrice": 56, "expireAt": "1985-08-06T00:00:00Z", "price": 72, "purchaseAt": "1977-11-27T00:00:00Z", "trialPrice": 17}, {"currencyCode": "2EGvJ4UMS93yOxNI", "currencyNamespace": "nDByhnoluO6ti0QP", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1977-06-03T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1975-03-31T00:00:00Z", "discountedPrice": 74, "expireAt": "1986-03-08T00:00:00Z", "price": 73, "purchaseAt": "1991-05-14T00:00:00Z", "trialPrice": 53}, {"currencyCode": "4xQye7HqnVK3YVeO", "currencyNamespace": "Ws9mfVQh3jLBtn9p", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1986-01-02T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-05-25T00:00:00Z", "discountedPrice": 39, "expireAt": "1991-07-25T00:00:00Z", "price": 92, "purchaseAt": "1985-04-01T00:00:00Z", "trialPrice": 8}]}}, {"itemIdentities": ["B4CxyQrUpIFvORxT", "i79DpSjb39ukcR6c", "2E2r3vk3IfAKEbqc"], "itemIdentityType": "ITEM_ID", "regionData": {"XSGCCvNowNmdpcJg": [{"currencyCode": "F88ySNq4Mj7mulP4", "currencyNamespace": "tQ6R1OqKVOTniBgL", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1991-11-28T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1986-01-30T00:00:00Z", "discountedPrice": 12, "expireAt": "1992-04-15T00:00:00Z", "price": 72, "purchaseAt": "1984-12-26T00:00:00Z", "trialPrice": 68}, {"currencyCode": "jNRSzOTqcVNX3ahv", "currencyNamespace": "xw9gwwhTnjN6wKZG", "currencyType": "VIRTUAL", "discountAmount": 57, "discountExpireAt": "1983-11-09T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1972-12-26T00:00:00Z", "discountedPrice": 38, "expireAt": "1985-03-22T00:00:00Z", "price": 57, "purchaseAt": "1978-01-05T00:00:00Z", "trialPrice": 6}, {"currencyCode": "VVmM45mfIZsWhkS4", "currencyNamespace": "76dGGJwJ00UH197M", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1994-05-25T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1996-11-01T00:00:00Z", "discountedPrice": 43, "expireAt": "1990-01-14T00:00:00Z", "price": 88, "purchaseAt": "1984-07-19T00:00:00Z", "trialPrice": 22}], "MWzYQCAaPJgoxGJo": [{"currencyCode": "JaSzUtY4ZD0Xtb0U", "currencyNamespace": "4pH16NUsVY21NVIs", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1996-12-21T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1972-04-23T00:00:00Z", "discountedPrice": 91, "expireAt": "1999-10-10T00:00:00Z", "price": 9, "purchaseAt": "1991-10-03T00:00:00Z", "trialPrice": 37}, {"currencyCode": "pWCugmfOL0QQpxsu", "currencyNamespace": "D8PGqku59eFJrOXy", "currencyType": "VIRTUAL", "discountAmount": 55, "discountExpireAt": "1997-07-21T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1974-06-26T00:00:00Z", "discountedPrice": 72, "expireAt": "1991-01-09T00:00:00Z", "price": 83, "purchaseAt": "1994-12-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "G0iHDT8QbF7gHPTP", "currencyNamespace": "QbvLt2NRqJGIKzLy", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1999-10-30T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1998-04-12T00:00:00Z", "discountedPrice": 24, "expireAt": "1992-02-13T00:00:00Z", "price": 35, "purchaseAt": "1988-04-14T00:00:00Z", "trialPrice": 42}], "yx34luLdvtsTKXMj": [{"currencyCode": "iw6gYPvfn2Qt9iyq", "currencyNamespace": "3Nyk8ncu2Z3eDHH9", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1977-02-16T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1979-05-23T00:00:00Z", "discountedPrice": 16, "expireAt": "1974-10-26T00:00:00Z", "price": 92, "purchaseAt": "1975-02-19T00:00:00Z", "trialPrice": 61}, {"currencyCode": "nx2h61X9dN1MGRXB", "currencyNamespace": "J6mVV7JS9qjNLwvI", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1975-11-21T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1999-10-15T00:00:00Z", "discountedPrice": 89, "expireAt": "1987-12-22T00:00:00Z", "price": 87, "purchaseAt": "1975-11-05T00:00:00Z", "trialPrice": 16}, {"currencyCode": "lPdinpjS2DRfGt9G", "currencyNamespace": "lyZVQ4X67tPZSTpP", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1999-11-30T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1979-03-17T00:00:00Z", "discountedPrice": 93, "expireAt": "1979-08-05T00:00:00Z", "price": 63, "purchaseAt": "1975-04-02T00:00:00Z", "trialPrice": 14}]}}, {"itemIdentities": ["vvDgw0ag7kSWE0Hi", "qm5IuLryiEXqvUWD", "jU1G0EVjVZw1ToLu"], "itemIdentityType": "ITEM_SKU", "regionData": {"akQN1MpOs1RVFrcg": [{"currencyCode": "2CXxepx78fvsyhE2", "currencyNamespace": "BKtyTDSIM7mkmvZ7", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1977-10-18T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1990-02-28T00:00:00Z", "discountedPrice": 82, "expireAt": "1991-07-22T00:00:00Z", "price": 92, "purchaseAt": "1993-04-26T00:00:00Z", "trialPrice": 72}, {"currencyCode": "4jfMANPpmZDdMiCx", "currencyNamespace": "muCCVuFjS1GC1d2b", "currencyType": "REAL", "discountAmount": 28, "discountExpireAt": "1985-07-08T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1981-04-18T00:00:00Z", "discountedPrice": 62, "expireAt": "1996-02-18T00:00:00Z", "price": 56, "purchaseAt": "1975-07-10T00:00:00Z", "trialPrice": 69}, {"currencyCode": "aTIz0jcgDI8Pkz96", "currencyNamespace": "vd80msqIm5bufnBq", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1979-02-27T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1988-02-05T00:00:00Z", "discountedPrice": 60, "expireAt": "1979-03-05T00:00:00Z", "price": 46, "purchaseAt": "1981-06-21T00:00:00Z", "trialPrice": 16}], "L28FPwTiXfLcxDC9": [{"currencyCode": "Ynd02mECIQhfIhHt", "currencyNamespace": "ADUQ9zimQTQT95pF", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1975-08-04T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1989-06-10T00:00:00Z", "discountedPrice": 37, "expireAt": "1986-07-23T00:00:00Z", "price": 80, "purchaseAt": "1984-02-09T00:00:00Z", "trialPrice": 55}, {"currencyCode": "eKOufV4f15NohXu6", "currencyNamespace": "opxQGRt6PqlkL0di", "currencyType": "REAL", "discountAmount": 46, "discountExpireAt": "1990-08-24T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1994-06-01T00:00:00Z", "discountedPrice": 93, "expireAt": "1975-01-05T00:00:00Z", "price": 14, "purchaseAt": "1974-09-13T00:00:00Z", "trialPrice": 79}, {"currencyCode": "QfY3XCv4hdOa6FdZ", "currencyNamespace": "hNMd1onFjGRbxtAB", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1984-04-14T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1974-11-25T00:00:00Z", "discountedPrice": 100, "expireAt": "1986-04-11T00:00:00Z", "price": 73, "purchaseAt": "1987-08-09T00:00:00Z", "trialPrice": 16}], "hgGq5GIDhNC66szb": [{"currencyCode": "CCf73IFbRkPSSITz", "currencyNamespace": "4TjCrJHXGXku2YVu", "currencyType": "VIRTUAL", "discountAmount": 52, "discountExpireAt": "1972-03-07T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1983-02-14T00:00:00Z", "discountedPrice": 69, "expireAt": "1988-04-11T00:00:00Z", "price": 12, "purchaseAt": "1977-05-25T00:00:00Z", "trialPrice": 39}, {"currencyCode": "rV9ZGWrZ05sxe6A6", "currencyNamespace": "RpmKDebNkylbynkg", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-12-30T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1983-10-23T00:00:00Z", "discountedPrice": 78, "expireAt": "1990-03-10T00:00:00Z", "price": 38, "purchaseAt": "1975-09-01T00:00:00Z", "trialPrice": 53}, {"currencyCode": "kci5rZ8iMlOuksQJ", "currencyNamespace": "CiRFiZWwJ7NrTb1X", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1975-04-07T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1993-08-31T00:00:00Z", "discountedPrice": 53, "expireAt": "1987-10-14T00:00:00Z", "price": 33, "purchaseAt": "1985-04-02T00:00:00Z", "trialPrice": 58}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'YJ8BzP6EUmUXGM5a' 'nIloyj9lhbvuQdW2' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'jwKUckc794ryY91l' --login_with_auth "Bearer foo"
platform-update-item 'X8DD4MYXlrJ81lHv' 'v9rqvEoM8YmVjAkO' --body '{"appId": "3HKsEp6KlqwW4djr", "appType": "DEMO", "baseAppId": "M7tuL81lsR7xxSVp", "boothName": "3Gd2TK0HzYviTgYm", "categoryPath": "x82JVBRLPZ6Iz8tn", "clazz": "e5dbguBF6Gsvvdl8", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"z9x7XZIjU4IK9lOL": {}, "aZaMphKCqTq3EVhe": {}, "JjoEEXBLIxGnNuho": {}}, "features": ["EdqQpoGkUWNizk5U", "cPAGv6c1ESC6hZYT", "JM3WWPvvCiCf33Vi"], "flexible": true, "images": [{"as": "bzf5aANNNs5kgSZZ", "caption": "NUHbIT9szApmWJO5", "height": 45, "imageUrl": "Zn1YXj5zFZeOCOR9", "smallImageUrl": "NvBQZSJPOIKrRBrY", "width": 98}, {"as": "fa2LrnpZxNnLRH36", "caption": "bqS2oFY76PU1AziB", "height": 82, "imageUrl": "sys6GdkDcos5uVJ0", "smallImageUrl": "BJfZ0jvA54CSqZFD", "width": 39}, {"as": "3by2kYSCdnFKLc0x", "caption": "cTjqjdcEfU61OJYM", "height": 26, "imageUrl": "PKVSZCg3XTc9vQe0", "smallImageUrl": "dHJfF6KIuvnRCa9J", "width": 22}], "itemIds": ["lhe98oaFKlQicdrx", "VhrtwSd9QWVMYz7T", "U1TsxsChSclSkb5a"], "itemQty": {"Bi9K9zyv6gFZXI5n": 72, "JgjC56pda3YhtQxp": 58, "dIn7QqXBDXJcrqKm": 60}, "itemType": "EXTENSION", "listable": true, "localizations": {"xoLnWGP1PafIjLX8": {"description": "ce0KbNN7Ycl2JfmQ", "localExt": {"plvGjVQ4aebjfgGu": {}, "472oWJlfglLM4xjf": {}, "kNL4lU6jaGfsD1cf": {}}, "longDescription": "swmeFpvtDtetoQVF", "title": "L8LNW11vtpaTxi7k"}, "489jRCn48bvkCPfK": {"description": "ofwXOIZZQAJza84l", "localExt": {"KKmVOaTS6xBbNrSU": {}, "AW2ak7ISDrBVg6Nu": {}, "DZvPb1kuUfNfUDe4": {}}, "longDescription": "g7q6PHEaqbzHvDDl", "title": "1jiLw3XMGBA6JXDp"}, "A1tIC45C0oaGouFu": {"description": "4hXONgUwJnUpryDe", "localExt": {"RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}, "QcFo9gxOgvDc7xMr": {}}, "longDescription": "RKvw8ISP2WKmCRRX", "title": "BxlalCHtWlKxLpS8"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 76, "endDate": "1982-04-30T00:00:00Z", "itemId": "guycGiq9j2EyIknf", "itemSku": "LDpgHnMOn8nc3gUZ", "itemType": "8ZFyyEr0KBXuJBqK"}, {"count": 87, "duration": 79, "endDate": "1981-09-07T00:00:00Z", "itemId": "8uux9xBomQFPFWy5", "itemSku": "cwNPI6aFo0MVwDZC", "itemType": "IXFNEL3uWVRz3V7Y"}, {"count": 2, "duration": 80, "endDate": "1989-04-03T00:00:00Z", "itemId": "M3bNLWHAbCZixe2c", "itemSku": "Q6O30lpzcBQMAEcN", "itemType": "cJqrKxnMzSYoc4Zj"}], "name": "iMY4H34B6wVd8ipc", "odds": 0.5899514335296582, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 70, "duration": 88, "endDate": "1971-02-10T00:00:00Z", "itemId": "rryHB6GO9zP3Faep", "itemSku": "A3b3YJ9nJM6vtT27", "itemType": "xv85K5MU2qmbeqaV"}, {"count": 8, "duration": 48, "endDate": "1977-12-12T00:00:00Z", "itemId": "INdClpF7OvlBIEgj", "itemSku": "se5kd6GEDo08yq5E", "itemType": "5HleLoog4me2NBFp"}, {"count": 39, "duration": 47, "endDate": "1987-04-05T00:00:00Z", "itemId": "3j9LYdG7xVPqBqe9", "itemSku": "RDQMBSYAFLqp8PF5", "itemType": "hCcoukWpnbz4ys7j"}], "name": "6lxuU3u2HEG0qfKe", "odds": 0.10766913434660086, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 93, "endDate": "1986-07-21T00:00:00Z", "itemId": "sPykS8YLmwtYgWGc", "itemSku": "A0h4G1LZ1HaX5UBM", "itemType": "bsF44VTsLDRzdq22"}, {"count": 5, "duration": 2, "endDate": "1985-04-21T00:00:00Z", "itemId": "F2g7TVtzYEHUodh3", "itemSku": "iUfBthbepUCTWiZ1", "itemType": "uqh7GAi4FEIu44u8"}, {"count": 45, "duration": 77, "endDate": "1999-12-23T00:00:00Z", "itemId": "4ouSgkpK70uJmUL0", "itemSku": "uzElixc023dIvDiA", "itemType": "0tQWlHwBcTtztx3V"}], "name": "Al6tXFbnATCzUOIz", "odds": 0.7622020736079372, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 22, "name": "CZ4AELr5lraa5v5P", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 58, "endDate": "1981-03-18T00:00:00Z", "itemId": "Je32AiwKadEoIVmp", "itemSku": "rwPsa9YD92CX0rIT", "itemType": "ajpwHITGeHTnqRbz"}, {"count": 56, "duration": 91, "endDate": "1985-07-11T00:00:00Z", "itemId": "9ZFgJbQ3Fj1umx4I", "itemSku": "tzkMJ7cudf4r916G", "itemType": "Prhn2etVIQvRkQJA"}, {"count": 39, "duration": 61, "endDate": "1998-09-30T00:00:00Z", "itemId": "4ooQ980ywmg1pWpW", "itemSku": "it1QC7FKe0fnHUlm", "itemType": "U1unGKM0tgfeWy47"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 46, "graceDays": 44}, "regionData": {"MI4gGmvK9gW596Fw": [{"currencyCode": "BNrFXt3TAuKBwBcD", "currencyNamespace": "12ae6r3hHwya4Npd", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-10-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-08-05T00:00:00Z", "expireAt": "1979-08-30T00:00:00Z", "price": 41, "purchaseAt": "1976-01-19T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Hf7dbh2iKNUl0qJq", "currencyNamespace": "zoKMRMG541PAiNjU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "expireAt": "1994-10-28T00:00:00Z", "price": 22, "purchaseAt": "1991-01-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "LMUaDSwwQlnNRZJH", "currencyNamespace": "BSB4fZWEFIZs28Ff", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "expireAt": "1996-12-28T00:00:00Z", "price": 21, "purchaseAt": "1973-06-09T00:00:00Z", "trialPrice": 49}], "f4lhBPbarbWEm8bV": [{"currencyCode": "tZcfVCPdQhim9QKU", "currencyNamespace": "AFTVYelIlGJg9wdc", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "expireAt": "1979-12-25T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}], "o8TWwXWsz9TVmdMK": [{"currencyCode": "EohKzuMYDUTLBeCi", "currencyNamespace": "dXjuGgx8ncXejmeZ", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-03-23T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 24, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "meTrT7cF9oVCh89w", "currencyNamespace": "NOkKYssVejcL3kR3", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-05-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1998-02-13T00:00:00Z", "price": 60, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GAYOHR5BWa9VzIka", "currencyNamespace": "QEl1iUProNB6hI6I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-08-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 14, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "vdRhG9NwV3zDuqVl", "price": 98}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "pcYPK8IxrSZuxWl0", "stackable": false, "status": "ACTIVE", "tags": ["4fJIyFAm3DQht4Jw", "VL5KLTxahWlS6XdB", "nPS2urJqerobWMZG"], "targetCurrencyCode": "aKSLCgOOPXM6XTUh", "targetNamespace": "2dJ90yqHDNacl4F9", "thumbnailUrl": "G6Dl5TFwBY6HKXAb", "useCount": 23}' --login_with_auth "Bearer foo"
platform-delete-item '7TOpyiuvvQUm29Ia' --login_with_auth "Bearer foo"
platform-acquire-item 'cq4XRLaA643nTMtX' --body '{"count": 90, "orderNo": "yPEOuPhGspRi3bhP"}' --login_with_auth "Bearer foo"
platform-get-app 'QvBBJI5JxytpcubN' --login_with_auth "Bearer foo"
platform-update-app '4AUUPFPscZsXeJOD' '4DMtqfIGiGJovgWS' --body '{"carousel": [{"alt": "RxZ8N4UQ2fg3V1o2", "previewUrl": "x0hL5DuBDqMyIAzW", "thumbnailUrl": "ze94MEdJFAy2JTll", "type": "video", "url": "kRGB8jqJEd6eqqsB", "videoSource": "vimeo"}, {"alt": "yONV0JRtozI0jpli", "previewUrl": "CFQ6WgJpGPigdc5V", "thumbnailUrl": "yC4qvWjVac1cQvSx", "type": "image", "url": "aLXzAVYymOuhCkZu", "videoSource": "vimeo"}, {"alt": "htrsf8eIFSovTGXa", "previewUrl": "Msq8ePN1oco2jx8U", "thumbnailUrl": "pe8SjMvpqM8puggO", "type": "video", "url": "l9iCqfW6rqGOQny4", "videoSource": "generic"}], "developer": "3NdEPhNHSH7eKDfR", "forumUrl": "cngEpTnRUQr3RLOM", "genres": ["Indie", "MassivelyMultiplayer", "Racing"], "localizations": {"Srcbc4LWfKaY5c1t": {"announcement": "P5TDuI5f6m4KC07C", "slogan": "nsZe32hqEcB1ExYM"}, "Bb3ckvoaJYdMqGeg": {"announcement": "cg3eRvBZXN3cjIXm", "slogan": "FWRJnj8xN7HDPTUE"}, "DPN1Kb4UTPWDXTSb": {"announcement": "55g8LSTs7Nf95lGl", "slogan": "Prf6obIdnI6Ag7eU"}}, "platformRequirements": {"YcYJ4QzXCmqr6gmP": [{"additionals": "GaHP5SVPvRLiDi0m", "directXVersion": "NHb6Lx8eq8SGNwEQ", "diskSpace": "O8dYXvBSYvJBwb6C", "graphics": "jZUMRf2VJetWsokv", "label": "x3BHuTEczr9KjQ3t", "osVersion": "tz8MTBt1xk9IyssS", "processor": "A8nP5PQjpzk2Tb7i", "ram": "YdmNZWosrsVBPZ64", "soundCard": "j0HUONscofwYLQcD"}, {"additionals": "vkaEIIPoJT83zEGX", "directXVersion": "mVBZLyrH9J7Boysm", "diskSpace": "aORLkP5hc2Fh04JT", "graphics": "sqDTynCewqJligLl", "label": "RxOelKykICRxF6Ht", "osVersion": "lER2txs4qrNARATn", "processor": "6KXOutlYBbLhL8KX", "ram": "x25FZfQIodVBqQsB", "soundCard": "pCJBIXLGYcwWVRK6"}, {"additionals": "UKk5ozrXA4HZHNyq", "directXVersion": "9odanhR1Zrm3thUv", "diskSpace": "V87yfkycLSVdleSa", "graphics": "AylsmLYe2phYOgT5", "label": "kDTyPl3dKF7NXEjr", "osVersion": "JMki8jvc3P8Gwjg3", "processor": "IOH0SDHgYKqxJiFJ", "ram": "drmj5vhzgsJwex7w", "soundCard": "q8ZPlXNaUNgdY2vf"}], "Juje5cPnmGjTvYa5": [{"additionals": "Pqx1K7qcAoijBPAp", "directXVersion": "6EPb988NzxrDKVpU", "diskSpace": "Ljjiw3NeVG4DJi9D", "graphics": "aMrc0WFgKjE945x2", "label": "CPVYYG9WvoGmAmva", "osVersion": "VV5YfxnUNcwjr7gS", "processor": "GhnfuF4WZiQVICVp", "ram": "Wd3UM08gMXhdf3ju", "soundCard": "XW4JprIb3CJCAtvS"}, {"additionals": "G8Cfa9dzOJDGCTHI", "directXVersion": "OFjeXbsSgR43kIDz", "diskSpace": "xBwqRJTzrHNZWUsq", "graphics": "5lQo2jy29EJigqYh", "label": "yVhURx1yPeczRpdk", "osVersion": "0HATGylx2JG2KNGf", "processor": "hzfCTxxrsRRLee3T", "ram": "cJ7DQIi45aCDHN9m", "soundCard": "Vug2zkVf6KgpKOcn"}, {"additionals": "3tMD9UT67bOwugFD", "directXVersion": "a6wUQvehKqwCh86X", "diskSpace": "mRkCEcfHDCdl59Wp", "graphics": "9A3tXGve6DdK6uvg", "label": "8f2cIoByk9fxtvsg", "osVersion": "eAxo57nKAbZpsbJ4", "processor": "Iu5KJ0ynxGBlacDC", "ram": "dFe8ATUqVxcSthrp", "soundCard": "nMUBsnUfuQIcSbUt"}], "5UGkInFGpuUsdtq4": [{"additionals": "dOwNESzCEW9dUVhZ", "directXVersion": "jLftC3sCS8CpLCqP", "diskSpace": "D9CeDEdCnnL6Kt1B", "graphics": "jj3b8QM8Rr45ULqX", "label": "QgvwD3PsKDJiWxQB", "osVersion": "waS7rDBf2S54phbd", "processor": "yGDt47f9GWRlE9hq", "ram": "z6rjDNo4rhjxUdMM", "soundCard": "83WekqfWv04vvn9b"}, {"additionals": "k5qr8qs2mqtnGAqX", "directXVersion": "UjNypF6MMqWpdEJs", "diskSpace": "PoaIbYz8cK5jlpJd", "graphics": "re5ur6yvWJDdvM7T", "label": "7PX2vamIRZHzsIYO", "osVersion": "CUoiCXNjrdQL2jdx", "processor": "1eIba1sB0HsJ06Dz", "ram": "fbzRYt4OVUyumBeI", "soundCard": "qdQGZC5kM03HHijs"}, {"additionals": "QRj7N8IAjmsonjj0", "directXVersion": "ZR50BQ1U6aFD3O2k", "diskSpace": "XQSc58zgZVl4gIF7", "graphics": "v3qbZu9M3OxqVAT4", "label": "H1lRZ9Z1JBrHRzEO", "osVersion": "tIxzPqb6n73m0jia", "processor": "DH86d9rsKgzCsMul", "ram": "pB8HZUtVVaJCiLgK", "soundCard": "OwrSfWhT5B4Wedop"}]}, "platforms": ["MacOS", "Linux", "Linux"], "players": ["Coop", "Single", "Single"], "primaryGenre": "FreeToPlay", "publisher": "ojzPXI2v0prR3OEe", "releaseDate": "1983-09-03T00:00:00Z", "websiteUrl": "0MkZwS6TYwNN3UYh"}' --login_with_auth "Bearer foo"
platform-disable-item 'ic03qGEg5fNzBVrj' 'o3g8CfRwtyl1HeT7' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'VEPgG40QyXzsOzgc' --login_with_auth "Bearer foo"
platform-enable-item 'k078IghoQBp2mWAO' 'YksczxBS0OBCa2vW' --login_with_auth "Bearer foo"
platform-feature-item 'adLmQtYKmEMzicbu' 'L2S3RiW8dLTCBfGU' 'dVEdvdQL7sVwcZ2P' --login_with_auth "Bearer foo"
platform-defeature-item 'ofaJoSqtrEOqxH46' 'fRTSZoDdT0fefo74' 'eg3Nt2c0r4GqF0NH' --login_with_auth "Bearer foo"
platform-get-locale-item 'glOVuNZ9LzNeJnBu' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'rh54CWbYb0Pebyt8' 'b4DGscjwrizsFUgY' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "xHnmSxvkG9UR5q9n", "predicateType": "EntitlementPredicate", "value": "TBjn3d2sFzMS3QaV", "values": ["rQJXQxoIbVi2CLEk", "jZF7Ax6115Kg9U8v", "277Ivjj1A647XQ3k"]}, {"anyOf": 29, "comparison": "excludes", "name": "KMavu4Ul2IaieEbP", "predicateType": "SeasonTierPredicate", "value": "bojDVaZLpx4kEWYk", "values": ["r19V18oIrUKXttgA", "hmWKSSrF35anDGvu", "O6KrKUMhJrASBh61"]}, {"anyOf": 71, "comparison": "includes", "name": "2QdWJFLmoPEgd8EM", "predicateType": "SeasonPassPredicate", "value": "f2HEHvVevhISjbtB", "values": ["TIedV3HyoX4VnO2L", "OU2V9yw94oa8UJ34", "JUK5fE3OufPSX3Pd"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "isNot", "name": "DNp1SZ58aDllwzTR", "predicateType": "SeasonTierPredicate", "value": "gUSMM5au8GJT0mkV", "values": ["cXXTUIggoH89QNmI", "PI6zUtf3QaJPGrTN", "17UDb19R6H7r1ta3"]}, {"anyOf": 25, "comparison": "excludes", "name": "7jK5pxe82pgFiAS6", "predicateType": "EntitlementPredicate", "value": "KxbS7Q2OgRucL1jw", "values": ["Xl5XCbkOfHaGr5kd", "RXzfjDZZBmOau6sy", "me06c6SKLc2mEC3I"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "tvmMB6jzrpRGESmo", "predicateType": "EntitlementPredicate", "value": "XPMqxj4hBgVY3YAx", "values": ["ZLKbcOdyjqf6Q4oi", "ufc5ZyODR2NVyn4P", "woJcaRMEb15LBlTV"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "includes", "name": "TTD81xhNP4t6kYBU", "predicateType": "EntitlementPredicate", "value": "iSNV4qBrt1kcLmRv", "values": ["4RImNWVIJnhhwFDV", "6EJtl5xWnsb8oWq9", "1VitaomvWTzdsW4N"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "cY1HgAnZV4IOglVL", "predicateType": "SeasonPassPredicate", "value": "Yc481dYdvGxJAMDR", "values": ["A1LF7jdWlekFwO94", "jX0geYCpGJM4sqsP", "VBCV9qJhWva2FPBu"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "MiZXXOFwmGWAvNF0", "predicateType": "EntitlementPredicate", "value": "GkwxUNYyNwGiKrkn", "values": ["OadpgegCUjTdi1Eh", "iQHglUQMZi5WjMZf", "H0Y5mrQgLC6D2qsF"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'r8OtqpNJ9R8TuNy4' --body '{"orderNo": "ejmVA3vMCsGyPd12"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "B8QNUz0hFFNbH6j2", "name": "W4roZM2UKAXEEsL5", "status": "INACTIVE", "tags": ["zRxfNEjUMTs8WIOb", "JBTsvsw76uISRX0b", "KVoWtoUW1P7ocuBA"]}' --login_with_auth "Bearer foo"
platform-get-key-group 'ldDSUS7Haa6unq1y' --login_with_auth "Bearer foo"
platform-update-key-group 'QOSRvyiLBRVtIDi2' --body '{"description": "piIQFVmzMidw70KS", "name": "ahpYZdKZRyR9AX7J", "status": "ACTIVE", "tags": ["7QLFrVgtX7y0fPOi", "eDCow2zXyFFVpM87", "yqEwEacQMTlqN4LK"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic 'kxJ5v3SBafnKNiMP' --login_with_auth "Bearer foo"
platform-list-keys 'bFkFGA85W3HJkqgS' --login_with_auth "Bearer foo"
platform-upload-keys '2B37wwoPYOHiIsxm' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'sLBPBJuNLnWRrtW8' --login_with_auth "Bearer foo"
platform-refund-order '70qD88ZcduZSe7W2' --body '{"description": "0UZcDaiq0nEZ7Pyh"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": true, "notifyUrl": "fDm0RNFwiz70tRVL", "privateKey": "MlHi8i9gOVqajUWr"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "gEsWDtaKzn8dZwnn", "currencyNamespace": "GeZsZVgbPzPFbrOM", "customParameters": {"ZMgWkFN7Tpkx6Gcf": {}, "yOg6ZUrrp9ubg9mn": {}, "dW2JKmQafUs2bxYz": {}}, "description": "tOEyVbKIf1ZbzgUw", "extOrderNo": "d8DHoCQykmXHYmkR", "extUserId": "lg7gYs6unPYQ9jNQ", "itemType": "SUBSCRIPTION", "language": "BDZ", "metadata": {"1ldhOh6HvjnYuV7N": "fC4A2ODiZhbfb8Qq", "CyK1XH9D6vl5eFdF": "fgK46GjCWaP8huTm", "nq3FGQn3Ahu5wxq6": "oJq4mChmQHQhO9IK"}, "notifyUrl": "BXDFQfXFD58sG6uD", "omitNotification": false, "platform": "7hosaPFC5zBW3ZgV", "price": 5, "recurringPaymentOrderNo": "Cj9ObVGT0Scwl4kN", "region": "mCi15XTJTgCNNH7R", "returnUrl": "tG5Xmo9Q0Wb07N17", "sandbox": false, "sku": "q8OzTE89WDNoMcOm", "subscriptionId": "bfJrCJQIj1haAosK", "targetNamespace": "glqaCXE9ytpIO8bt", "targetUserId": "O3OwNEGSW5TaW4to", "title": "7QCY2NGGvi9kg3rM"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'IzNmhJTNQjKlwjfJ' --login_with_auth "Bearer foo"
platform-get-payment-order '3TJ2xVpge70WsLfg' --login_with_auth "Bearer foo"
platform-charge-payment-order 'bZieRvJI5sT9DH3D' --body '{"extTxId": "fLCv8q4Thmq09bBg", "paymentMethod": "PAYxrBE9jlnTgtgW", "paymentProvider": "WALLET"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated '3wDwD9RKvQX4yFQF' --body '{"description": "drRoM6FoqCYw7Alx"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'O6qdFpc71sSck3gg' --body '{"amount": 19, "currencyCode": "WJlSlCQMDji329Pf", "notifyType": "REFUND", "paymentProvider": "ALIPAY", "salesTax": 43, "vat": 45}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'MEPtpsSNcpK1QkB2' --login_with_auth "Bearer foo"
platform-get-platform-entitlement-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-entitlement-config 'Playstation' --body '{"allowedPlatformOrigins": ["System", "Other", "IOS"]}' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Other' --body '{"allowedBalanceOrigins": ["GooglePlay", "System", "Playstation"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Oculus' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "EvdRF9bqMj4ro5B1"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "VE838c7OydVw0zCq"}, "extendType": "APP"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "8i8krFWJhe03coRF", "eventTopic": "ok5d3AyGrZO8GuoX", "maxAwarded": 80, "maxAwardedPerUser": 21, "namespaceExpression": "SoVEBG7VbBPUWipz", "rewardCode": "9C05YabFX4FCK5uc", "rewardConditions": [{"condition": "TFsAFzaO3yJpA3KM", "conditionName": "xBlrRytER1qdTelF", "eventName": "AadM9y66Drf4SSGG", "rewardItems": [{"duration": 39, "endDate": "1985-11-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iBKohow3kKoaP1K4", "quantity": 58, "sku": "JRHcn7KaoCEkRdo6"}, {"duration": 33, "endDate": "1988-09-29T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YIZWnXqQ1oHFJ9Q0", "quantity": 44, "sku": "XegSEhrPpK2q8kxR"}, {"duration": 17, "endDate": "1985-06-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "zZWfmP2sx0KO5bEJ", "quantity": 0, "sku": "0L2Acm960EYQEuGJ"}]}, {"condition": "Vl8xs1WId9Wlalqs", "conditionName": "hF9Rh2o7GCQGPCxw", "eventName": "EdkyuT3MgzReRq01", "rewardItems": [{"duration": 68, "endDate": "1999-05-30T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "SArROIodcmM6v2AE", "quantity": 30, "sku": "ShFVQTRekLfjmy8z"}, {"duration": 29, "endDate": "1978-06-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "yxJ39vrtuWWrqTZb", "quantity": 90, "sku": "7dGMjupZkZQY8CNy"}, {"duration": 94, "endDate": "1989-03-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "DIbfT22G5NpE130Y", "quantity": 99, "sku": "pctNFUsUQ6ZXQcb2"}]}, {"condition": "o1J5euLAbBgejqc0", "conditionName": "apxqZ209BySn8aUa", "eventName": "GlAyvIslt7N1qcxK", "rewardItems": [{"duration": 38, "endDate": "1985-06-16T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sV9tUh74KVo6Xqjz", "quantity": 93, "sku": "xUKLNWSmYyVvyelI"}, {"duration": 73, "endDate": "1994-02-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gaLMqi836ULa7cfZ", "quantity": 23, "sku": "NDMErA82FrR1GSog"}, {"duration": 20, "endDate": "1978-02-02T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "ikIxXKKIR6kPmswm", "quantity": 73, "sku": "TCAU1cKApdJDnE73"}]}], "userIdExpression": "GLmSZns5owBhoUg4"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'sGP6KLPXkvUv2XiX' --login_with_auth "Bearer foo"
platform-update-reward 'aBzsmaxjTZPlLity' --body '{"description": "tGka7Kv5TacQKF4O", "eventTopic": "lRGdmXxETLEQrr3K", "maxAwarded": 58, "maxAwardedPerUser": 55, "namespaceExpression": "it6boOLGCcg16Dqw", "rewardCode": "dQPQ9HkSSV8e1MgT", "rewardConditions": [{"condition": "TLS2FgarY903INGI", "conditionName": "yEfRBEj7qms9AGQE", "eventName": "xPhgr9gGfC0Gjvpg", "rewardItems": [{"duration": 73, "endDate": "1993-02-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5VDlvSc0Mr7ImwCw", "quantity": 66, "sku": "wToOnq9U5lyW89Xw"}, {"duration": 41, "endDate": "1979-12-29T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "7Dcmtfh50eObbrmg", "quantity": 20, "sku": "TqgYPixtHk6lWq6t"}, {"duration": 62, "endDate": "1986-02-03T00:00:00Z", "identityType": "ITEM_ID", "itemId": "a16Bw3JbUnUDh5yG", "quantity": 20, "sku": "dcTpdeCD9XPRi4bA"}]}, {"condition": "QL7VE2wL8Y4JFVUd", "conditionName": "zA8bvXlDhG7Brorb", "eventName": "KIKuOXJPm5ztrr09", "rewardItems": [{"duration": 58, "endDate": "1994-08-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "A8Ij5bGKSuopWQba", "quantity": 59, "sku": "s0hG9xmSnzd7zgUx"}, {"duration": 54, "endDate": "1978-02-20T00:00:00Z", "identityType": "ITEM_ID", "itemId": "Z5z6gujpFzlPspQD", "quantity": 74, "sku": "IRIpDDubntPCFxfe"}, {"duration": 30, "endDate": "1986-09-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "dSWzOXjO1NQUqWHB", "quantity": 99, "sku": "JCpKedhuzI7G9NCK"}]}, {"condition": "KXu1bqI2M5PmXfKn", "conditionName": "Q7BYGjCUDMOrbmoR", "eventName": "vWnfmGFy0eUoOBd9", "rewardItems": [{"duration": 16, "endDate": "1974-05-10T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "5UfmjtiVbqJnZcrq", "quantity": 35, "sku": "KEt6JhbJ0fwTDaq6"}, {"duration": 2, "endDate": "1988-04-13T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "N6owMHMtJy1Oqn59", "quantity": 40, "sku": "xpmEuwDVc12r0DVU"}, {"duration": 66, "endDate": "1979-02-21T00:00:00Z", "identityType": "ITEM_ID", "itemId": "kapTCafFMdvYiCBu", "quantity": 52, "sku": "MF9CZvPxT5zbreMc"}]}], "userIdExpression": "9fBoU3RHNDFjLKFr"}' --login_with_auth "Bearer foo"
platform-delete-reward 'epy56eW1kmb15QeI' --login_with_auth "Bearer foo"
platform-check-event-condition 'QF51c4MqJzDSvELg' --body '{"payload": {"Be6dboSdhkBzAzPk": {}, "t1efGJeJaxyHYutg": {}, "Xucx85vHA009FAb2": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '1jxeWXk80y9uxgVL' --body '{"conditionName": "GgK8aVSCN6oCETQ8", "userId": "gIDRdD2wwMXwKVXG"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'PhEJsc7rZpxaPHc9' --body '{"active": true, "displayOrder": 60, "endDate": "1973-02-05T00:00:00Z", "ext": {"NfPGYYSTunMgt3C8": {}, "hEguCqlMHiQN3HWJ": {}, "w9zIWsiP2JQ24meD": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 18, "itemCount": 46, "rule": "SEQUENCE"}, "items": [{"id": "lcYaqYM7YfBmhjI9", "sku": "Y28qVceS9UX48dKP"}, {"id": "CFUIeyYEymNXzNX6", "sku": "TGh4UdEweeBsJEvB"}, {"id": "bAvCmlh6Z1oz9Bai", "sku": "xUUvmzbajE2gjooi"}], "localizations": {"Dnc1NUb51lEgUwQ9": {"description": "tkWaMOH47CAT7cBP", "localExt": {"0918JaEBQBP766LU": {}, "nBBR84iAO7sBQt6Y": {}, "J2tWwF7RnP1oK3c4": {}}, "longDescription": "RVfjB0zi3XrYZUiN", "title": "24ol1qqbalgizL97"}, "ycJV5YqE2myQzl7X": {"description": "9fHr6WvBxmBvNj3k", "localExt": {"taDf9B22HGgxakPt": {}, "7IYzaZUTmvsEzLPn": {}, "nGsnfmBerp84qjwz": {}}, "longDescription": "WpCF1vyamjsEzwtL", "title": "PxK1os4qR8LaQzEb"}, "39sZTdFfC8x5aHLs": {"description": "XHlm1RJTTy9JrNz1", "localExt": {"K5M1qgFddYvifGHa": {}, "wNx6yhniEHLbEQKc": {}, "0aUvrKXDIjYC4df9": {}}, "longDescription": "qswSlpCI8DhjlxUy", "title": "rs3OSesE5p0DwUj2"}}, "name": "HKUvPYUcQBxMSdOO", "rotationType": "FIXED_PERIOD", "startDate": "1981-04-18T00:00:00Z", "viewId": "dCk8so6JSaZAIadK"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'DEZywonA2SrEdN2t' --login_with_auth "Bearer foo"
platform-get-section 'mGuX6r0gBVUUeKKl' --login_with_auth "Bearer foo"
platform-update-section 'PKtE6gnYxmkmCWbs' '5qugklBUS6uwWrCQ' --body '{"active": true, "displayOrder": 4, "endDate": "1988-12-17T00:00:00Z", "ext": {"Jrg8tLAJWpcyNkUv": {}, "qn6eXr6FNbKJ05Or": {}, "ya6LSSUlugIAknXc": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 1, "itemCount": 69, "rule": "SEQUENCE"}, "items": [{"id": "YcAYp7qSiDvsfMUO", "sku": "pWv46sXvpOjrpRo4"}, {"id": "mYrCeQUnYoID2UqO", "sku": "0iAXA9dB4ib8HDOJ"}, {"id": "8TNiP8KgEAj3dbRT", "sku": "I0i6dO3zkbDseh4t"}], "localizations": {"JdoGcwMBmegqVUaW": {"description": "MJBjrV0p9A7tcHrV", "localExt": {"0MbJGr4drgkDuWS0": {}, "5m0pGzazM2BUXnzU": {}, "EWTiKMJAf6AgbiED": {}}, "longDescription": "MfCckWogE5gcfF8A", "title": "MGZ2FBS93Mg6TKwd"}, "RMraDLrwh3d0ykRG": {"description": "kgqUNIbJMJ9ABbKV", "localExt": {"WO2YEDiqkwKbpdk7": {}, "wlDngNiPPjpSAlZw": {}, "FGpea5ObBB49Km4C": {}}, "longDescription": "lIQmkIdLCvNhZ6P8", "title": "aqZ2yfrC1V7ZpJZP"}, "HCMqvcYmeDLYEzs2": {"description": "SQUdKr6vgqkjycqc", "localExt": {"lNlBORlC8ZkjsxYt": {}, "gxplHTPLzynjFZgF": {}, "3erw7UsyHq4bBb0n": {}}, "longDescription": "1JhPUS8BRPGV9n76", "title": "9zLJdKMexeJc7Nvg"}}, "name": "TSgKjCxZjKf8NA4c", "rotationType": "NONE", "startDate": "1973-01-02T00:00:00Z", "viewId": "Ry8GgVk77fd1GS5Y"}' --login_with_auth "Bearer foo"
platform-delete-section 'kyhAiAItnWUmD225' 'fp1egsx3ErheNwqd' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "5priclNNqLyrlzrJ", "defaultRegion": "4QHbfnAdtkujxHff", "description": "7n1yaNCcjgFhS0UR", "supportedLanguages": ["Bhl0L5FCbOn46W2B", "2uPQLrt2t6bVpCgK", "vPXSDufmKh783cV5"], "supportedRegions": ["4JsVBRB0rY0xfWdd", "ACyHSmo4KX9TPO3K", "1k5ZM8btmGsgXNXb"], "title": "pqxh76Af5JSwjw2f"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'E2g6jXV7oai2oDm9' --login_with_auth "Bearer foo"
platform-update-store 'FaP0HJ98tE4UyoQg' --body '{"defaultLanguage": "0b0sGOkzxVt15LKm", "defaultRegion": "kQ7YBhsOuJ0ypkkt", "description": "2G4eFh2YNsdoxpLT", "supportedLanguages": ["BM9Q8t829Ido1Jyv", "eSRiBq23kyH9jQbH", "WkcVk0X28GS54vl7"], "supportedRegions": ["gIKBc7OYTylFRAJK", "ySnC0cfPl3Z2zSBb", "s4PAV72u8AxE2IQe"], "title": "oxYV4UcYzswAGpXq"}' --login_with_auth "Bearer foo"
platform-delete-store 'QxctuVaqPJGAHEZm' --login_with_auth "Bearer foo"
platform-query-changes 'uQrZ8GaQ4OZ2nDod' --login_with_auth "Bearer foo"
platform-publish-all 'm4TNs8mAj6IKSYFd' --login_with_auth "Bearer foo"
platform-publish-selected 'JwgZsRPOzwuDSdGl' --login_with_auth "Bearer foo"
platform-select-all-records '1A2vaNeDiSqTfmAV' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'g50kOdJagEmTuaxl' --login_with_auth "Bearer foo"
platform-get-statistic 'xgywkbdOsyxX1tfW' --login_with_auth "Bearer foo"
platform-unselect-all-records '488oYUT4jyCVJ0V8' --login_with_auth "Bearer foo"
platform-select-record 'obTlGVThz4bm41oI' 'cV33yjPxibDjfF7J' --login_with_auth "Bearer foo"
platform-unselect-record 'kjCVpZKMxkFkBtXM' 'U6KRIm5xBoIi99ct' --login_with_auth "Bearer foo"
platform-clone-store 'gFXasxp5h780ktjQ' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'w2yXzaQWaF2PqUfb' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'pMpRl6xRyV19cbor' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'UHeCpqnZ5NW623WW' --body '{"orderNo": "n2ZJY3QvRa7CDRTc"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'sAHzD3dZyyWbUQpb' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'cv3IwmL7a1K3zIUY' --body '{"count": 72, "orderNo": "5M80LLbku9GYH4ij"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 32, "currencyCode": "OVM50tCqkZfsSxAb", "expireAt": "1986-10-16T00:00:00Z"}, "debitPayload": {"count": 37, "currencyCode": "7sHCLup8pmEosOXg", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 84, "entitlementOrigin": "Twitch", "itemIdentity": "wwdeLVpmXqRwVjc3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 58, "entitlementId": "ANmE3VVsQ1fm9EUd"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 1, "currencyCode": "wEjoZrRtaeWKMC8w", "expireAt": "1980-11-29T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "ByQAMAgqFEzEt8um", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 59, "entitlementOrigin": "GooglePlay", "itemIdentity": "vIddlxnA1VynioJc", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 27, "entitlementId": "PwVHUGcs1ACMvoY4"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 66, "currencyCode": "9dFmOHW0j9suukPE", "expireAt": "1989-06-30T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "QONQ2vCbMn0Oia33", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 16, "entitlementOrigin": "IOS", "itemIdentity": "HviBEWpbusO6EyVq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "tpgZpbz77y88rUFu"}, "type": "DEBIT_WALLET"}], "userId": "7jBF1R5OexAPzCG6"}, {"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 74, "currencyCode": "FXcTwEtnHxP5pVtN", "expireAt": "1988-03-12T00:00:00Z"}, "debitPayload": {"count": 80, "currencyCode": "0Y62bCo941ALznQu", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 99, "entitlementOrigin": "Xbox", "itemIdentity": "skfCjUK8GeX4Q0B2", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "j0oOmBmXu1KiTTiz"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 37, "currencyCode": "IvQj2isN7bRwcr16", "expireAt": "1977-01-25T00:00:00Z"}, "debitPayload": {"count": 88, "currencyCode": "YwgZpjlMMtPWg821", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 24, "entitlementOrigin": "Other", "itemIdentity": "7qNkQiKp2oac8QTN", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 7, "entitlementId": "uBbeuQqm9wM7mgTt"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 86, "currencyCode": "NpNon6DKW9A6AmnQ", "expireAt": "1994-04-13T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "uUZ41mSeS9SnGqhJ", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 43, "entitlementOrigin": "Playstation", "itemIdentity": "EknHPKrZ7TiNBE0H", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 38, "entitlementId": "VHLMvrCsH3RYxH2U"}, "type": "FULFILL_ITEM"}], "userId": "2a7fCFAUzLELiM57"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 93, "currencyCode": "FDgUPShG8wwFKY9A", "expireAt": "1991-05-29T00:00:00Z"}, "debitPayload": {"count": 31, "currencyCode": "ALPuCOyphUUAV957", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 52, "entitlementOrigin": "Other", "itemIdentity": "aP0wpZgQEvFzox9w", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "cX3DRWobEoGr8W97"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 96, "currencyCode": "edcr6PM51z7i0wQ9", "expireAt": "1973-07-09T00:00:00Z"}, "debitPayload": {"count": 12, "currencyCode": "8GENEJYPKxxOw7xN", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 97, "entitlementOrigin": "System", "itemIdentity": "uN3nhkn6QIesNoYq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 8, "entitlementId": "VsakylHikKkpOjqw"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 74, "currencyCode": "tILNJVv2DLLUyBt5", "expireAt": "1974-03-31T00:00:00Z"}, "debitPayload": {"count": 60, "currencyCode": "uw6q8FgqG46RsFK7", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 22, "entitlementOrigin": "Nintendo", "itemIdentity": "jnRXVcg6AByNpBo2", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "0tk4IATSIefcqNEn"}, "type": "FULFILL_ITEM"}], "userId": "IZ0Dv6b8WtaMVvLb"}], "metadata": {"G04KKnh3jvW0Qp3k": {}, "TyL4CsLwiWUMcpxn": {}, "4B6XoTNMuqZTHwo1": {}}, "needPreCheck": true, "transactionId": "ELM8Lfkut0wnT24w", "type": "h59RGSbBMh7jpszu"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'Vk6iPdJ2boQqCCyJ' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'fThvCJieqRSGN8Mm' --body '{"achievements": [{"id": "74HlSZzp4aEW4GkH", "value": 67}, {"id": "uvig8sMuss76ezTr", "value": 38}, {"id": "pQrVL3ZZTVxqa9XM", "value": 68}], "steamUserId": "gY14iWk12Jffk8dw"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'KNPUOHNZxML3yoBM' '9qxd6PWz7sVnMxge' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement '2inL8fBFP1ABaIKr' --body '{"achievements": [{"id": "Et8d3o7cTS9OIIME", "percentComplete": 36}, {"id": "mr90TqGf0OyqJ9ib", "percentComplete": 73}, {"id": "4iaYKy0IjsDgbJ37", "percentComplete": 60}], "serviceConfigId": "8HP1TM0tefVQPWX1", "titleId": "NPO5Wn7rNG8rGp7F", "xboxUserId": "advo5EzpX0IttsRe"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'zyY9GB5sf94ALBmv' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'dncQkcZb8cWdVH9b' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'ww15zZsaYrJAe5Kd' --login_with_auth "Bearer foo"
platform-anonymize-integration '5QB96ndlO6iPGC9R' --login_with_auth "Bearer foo"
platform-anonymize-order 'hzMC7V8BEphnRXnS' --login_with_auth "Bearer foo"
platform-anonymize-payment 'pCzyb8FkoxQbrPng' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'i87K58pQswqKLutI' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'NusOsa92F6iwkJIY' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'OLarmpWyvib9CDW2' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform '1ANrlpuXD9H1u1Cv' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc 'rP2A20t6foPPH94S' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'UinY5diUlqgvY7dP' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'PyahppgxJhk4EdTZ' --body '[{"endDate": "1998-06-08T00:00:00Z", "grantedCode": "00rS92594HLvWFsX", "itemId": "HtMP0k9L5dREQbCq", "itemNamespace": "fh0gpABFBER6WNcD", "language": "hSns_KeGu", "origin": "Playstation", "quantity": 51, "region": "6HjCnFRdSihcvszz", "source": "PURCHASE", "startDate": "1990-12-27T00:00:00Z", "storeId": "ZBktk0siMup01kya"}, {"endDate": "1987-02-24T00:00:00Z", "grantedCode": "wwD7wecuQb4GNQHV", "itemId": "ZMKGBnzh4suaGIzt", "itemNamespace": "tTncVBf5g3oeuHiN", "language": "Umn_325", "origin": "GooglePlay", "quantity": 20, "region": "kDFLYyNBPlMrkse9", "source": "PROMOTION", "startDate": "1987-10-08T00:00:00Z", "storeId": "cMuV5phhU315LUC6"}, {"endDate": "1988-11-11T00:00:00Z", "grantedCode": "miJX4CjKCeIRIr99", "itemId": "7KKpJXTLbYWpqeXj", "itemNamespace": "af1f5fjNMZjKJ05p", "language": "XzI-hlOU", "origin": "Nintendo", "quantity": 100, "region": "vSMFw8X4zxbdfXgu", "source": "OTHER", "startDate": "1998-06-06T00:00:00Z", "storeId": "7ZzzIs3Jke34ZAUu"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'LP897ooMLnemwKAv' 'gDXNrFEE4Jf4hQps' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'LOcLtZw0efmEVcW7' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'shbnQ3bVvuvpsDJX' 'PCWkX4Kpi8CJ88aM' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'PGFFAQZbfbmVTEbi' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'Rq5Juikmpat75rVb' 'N9ZBtzJ33tCwv8H1' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'f451FVZ630HNBYZS' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'rz7pMjESLLMPKDXL' '["ki6Oz5Bygt8Q0RjS", "f1srB7hGwGbUmQmJ", "HNffZENs9X0hFMdz"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'ryvhc1YjHmmulSBI' 'Elc2CdRvBb0aGnMt' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '625bWHb5sbX6asrj' 'V7XJUOtHlzXNHEPp' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'zlMlx7b2H2THLwZG' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'ikW7TFA9gE6SrYKq' '6lcVOhPJIcEHbiKH' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'W7flVolAWEMmQSPD' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'TRqjlvwnnCA5tfK5' 'ushaKTPVjyOUpR3u' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'UdgNlyU4IJnqtrjC' 'OsE8VjvzhJwNX4bh' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'qCjlwrmsSRV86iic' '1FIMyF7CcNu2DYn6' --body '{"endDate": "1986-11-16T00:00:00Z", "nullFieldList": ["Gk51kOTJZluTekDM", "CGUJvERxNg8djSb4", "Vt2vKQ5vlCdI519P"], "origin": "GooglePlay", "reason": "BgprzahPB0FKMa0Y", "startDate": "1973-04-12T00:00:00Z", "status": "REVOKED", "useCount": 4}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'NBQWUHDBnBeePkqg' '6Zt1Lr5BlO8K6LH4' --body '{"options": ["dSaa8XYHug51ZTog", "G0N7Hvnuq1kJ1kpH", "cQtnIc9z70LFQMI0"], "platform": "oZuEjY0rNBbbB9tx", "requestId": "AvtRQvqJacXR2Rf4", "useCount": 27}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'uepmahXojVZYz2zM' 'U9jLzNV3GaG43R6n' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'lRPrEAYqRBeSc5uS' 'hoj3dGHMeoi5DBOs' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'Q0Gax0iX05IT9Ags' 'jl5NmnSHhxNmCe4t' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'xY0MsPc9EMgf9JCJ' 'iEvhL8ZfwCVJW9ys' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'pUOyHC9eKeXzrvzB' 'llwzyC1aTWEmPgoy' --body '{"reason": "4TkpEw4Zeid4mRoF", "useCount": 81}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count '62HQtgzQhO3nR8j8' 'DlP6OGbn8vmfMYGL' '40' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'aN1Off5gRZZMW3hu' 'AIzBPWBYKAEFTdlK' --body '{"platform": "Nh6GTzKjsCqxx24Q", "requestId": "M35bSkFrvGciNHb7", "useCount": 82}' --login_with_auth "Bearer foo"
platform-fulfill-item '8KIJH33aKkPuWD59' --body '{"duration": 79, "endDate": "1979-02-23T00:00:00Z", "entitlementOrigin": "Playstation", "itemId": "Ty1HA58Jt5NaROjS", "itemSku": "KFEuZo2ElXYSS4ez", "language": "BRSiOyReviDaxlPd", "metadata": {"hwmcH03yoMxzRR6x": {}, "d9rTh3ureaIbxM3W": {}, "ev9pZQjWAN0tny16": {}}, "order": {"currency": {"currencyCode": "ZHZtuSJGQCrM7JEM", "currencySymbol": "RPkdTcAzkIlndN5x", "currencyType": "REAL", "decimals": 54, "namespace": "ayr3vUKMuIiz2MiA"}, "ext": {"AKcvAXnxnH0QIhoJ": {}, "RY807VmBT4wZXQZZ": {}, "rSsuYiIPei0pXglJ": {}}, "free": false}, "orderNo": "MkrnHs1Iyhwqk140", "origin": "Xbox", "overrideBundleItemQty": {"VbDP0QX31gI7VmnG": 71, "DYpkk2Gza6DrSyco": 32, "r6qQw6fSESkM19OP": 78}, "quantity": 26, "region": "Bb12gpmShlmIt2nf", "source": "EXPIRATION", "startDate": "1973-09-03T00:00:00Z", "storeId": "aZGqjslu59GT2E6A"}' --login_with_auth "Bearer foo"
platform-redeem-code 'acmZRXZm626POXWV' --body '{"code": "j3KP1mX0iYHXBU3U", "language": "PX_wexm", "region": "ORTyHnLYDAAg1YA4"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item 'kZURmoGgxVRMPf8g' --body '{"itemId": "1rbhfIMStMnSqrKW", "itemSku": "YOuITlYS2RYaD9WN", "quantity": 74}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'FU5GKmcEKp8AQwqg' --body '{"entitlementOrigin": "Twitch", "metadata": {"kJGmPaK6HEVIQJd3": {}, "930TGewjRyfo4nWV": {}, "ZZbKFsKOmgEhjH2w": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "n6iQyr5cb5YL6fwB", "namespace": "iaVPmmn0T5uzlmi2"}, "item": {"itemId": "NY26xrkPPdg3pXjm", "itemSku": "tpNfCrIj9ntYo3du", "itemType": "pUHNu8abrVVOKxr9"}, "quantity": 85, "type": "CURRENCY"}, {"currency": {"currencyCode": "kw36cr2WJQqS7Tq4", "namespace": "YIyZAFQ6lZfa2jdN"}, "item": {"itemId": "vpWf32JS1av9VNpV", "itemSku": "LT0LvqcfSdO1nAjY", "itemType": "5FvADb3GUQgci632"}, "quantity": 46, "type": "ITEM"}, {"currency": {"currencyCode": "6LUrHuKBoNTpPQXD", "namespace": "NHto74GcmVf0fbCU"}, "item": {"itemId": "9QdPuWeMEeL0EJG6", "itemSku": "7g4W1eAmDxP23qst", "itemType": "MuikKc6VNU8570si"}, "quantity": 99, "type": "ITEM"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "ZAyuLcZoEkPpqKhP"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders '2jWnRTglw0gdWoE4' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'esuiDrquccz4J6fF' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'QezJ5E3iYHIknvPc' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'JkjRevVYfiExpAgo' --body '{"itemIdentityType": "ITEM_SKU", "language": "odY_DKkB-775", "productId": "OvJ5BKeipIldsgB4", "region": "hOxb88WgKSLIpneD", "transactionId": "QCfwucHRL3o2Nstr", "type": "STEAM"}' --login_with_auth "Bearer foo"
platform-query-user-orders '6TsJeRcE7GuwKn63' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'KIDTkUCqbbHGJGOT' --body '{"currencyCode": "vKKRTHDntaFiufH2", "currencyNamespace": "YR6QU7fj6w17arNs", "discountedPrice": 86, "ext": {"hOoLVM7UFnuJDzeE": {}, "kDxaVogxHrOon2OW": {}, "4Zw5QwVKWNy2tnF2": {}}, "itemId": "MifJR4hr4gdJDujY", "language": "nVnFK6gB6ZxC6yYU", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 88, "quantity": 27, "region": "CtPOr1FU3QZy3gdD", "returnUrl": "ms3kb1htW0UGJpwQ", "sandbox": false, "sectionId": "lXuzu3m9u67JjCDw"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'g186hGWKfO9MnoT3' 't99HmcxzjDhTrcBK' --login_with_auth "Bearer foo"
platform-get-user-order 'tU956hOg8oukDVdw' 'eG0sFHxTHa2k60Sz' --login_with_auth "Bearer foo"
platform-update-user-order-status 'CqUgq1gLbcIMevTm' 'C631p7q794bu49lI' --body '{"status": "REFUND_FAILED", "statusReason": "kWMSUbqByWN2BCnR"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'z9w2nur0B9jKaunA' 'cylsau7wRQmL4i3e' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'RyIECEDa1I4lwXqw' 'Pfq3VzHQjtolx64w' --login_with_auth "Bearer foo"
platform-get-user-order-histories '1gyvjacKtGqxMnoA' 'XRlcq0mYWKQYlqMm' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'u2pvF6rP03bQaq1c' 'T88H6RCW8gJmGzDl' --body '{"additionalData": {"cardSummary": "qxtLsR2AGOiPhNt2"}, "authorisedTime": "1989-01-24T00:00:00Z", "chargebackReversedTime": "1995-09-27T00:00:00Z", "chargebackTime": "1993-12-28T00:00:00Z", "chargedTime": "1988-09-03T00:00:00Z", "createdTime": "1996-08-26T00:00:00Z", "currency": {"currencyCode": "UT6mma833TDzk66i", "currencySymbol": "x88sAUrXr7MXxCvy", "currencyType": "VIRTUAL", "decimals": 4, "namespace": "MtMhKHmSjqPuQZX5"}, "customParameters": {"KjdNrEwfWo2MwulL": {}, "g4bsO4YHEYLjTSND": {}, "f3zazm6p5Y1tkG9W": {}}, "extOrderNo": "wU4Ty6Ch5QYyFjuB", "extTxId": "quE7xssm4hxczskb", "extUserId": "SUbOZ9WNl3apJmNA", "issuedAt": "1972-03-05T00:00:00Z", "metadata": {"l1g5ZmTTGYRbP4QV": "ey9pEz1TV5cUtPBs", "w01i5Mf7WvbNSeeD": "NfUESLlwHv3JgteO", "LyKp8a1VqxXnRhDd": "9TGkO6aIYqftw1Sr"}, "namespace": "M2nhSEanfUYrMU6A", "nonceStr": "43UKGpvC1cr5T1PS", "paymentMethod": "XhduTWchzXDv3TAt", "paymentMethodFee": 56, "paymentOrderNo": "vYwv7atn9EQv2Oj8", "paymentProvider": "PAYPAL", "paymentProviderFee": 81, "paymentStationUrl": "NL8p6AbdtU0CDrlQ", "price": 32, "refundedTime": "1984-10-25T00:00:00Z", "salesTax": 36, "sandbox": true, "sku": "mbWofEaKStqdKu4R", "status": "REFUNDING", "statusReason": "Dikc3Fjm9HoQDemt", "subscriptionId": "iQvURYZCeF30RT9r", "subtotalPrice": 57, "targetNamespace": "del3hHMSLAiscGRW", "targetUserId": "zkCl1ZKuPxjDUGRG", "tax": 5, "totalPrice": 78, "totalTax": 59, "txEndTime": "1992-09-06T00:00:00Z", "type": "o6tHj4z4cAM4LMJf", "userId": "WNZIxAgBpeubprKX", "vat": 31}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt '8jTyRd3LrR1x6U1v' '6zSLjm9zmzUW0vPj' --login_with_auth "Bearer foo"
platform-create-user-payment-order '90jmLTt5YQGawcom' --body '{"currencyCode": "PoiYoQ1f1AYq306P", "currencyNamespace": "ysv4VPaZWolXypwu", "customParameters": {"cUqqqff2iWi4yP3u": {}, "qNcig6YcDA8Z3g62": {}, "oGYwkrjLI4EHJEEW": {}}, "description": "gki9fbdvUMDZeO4U", "extOrderNo": "55wdCpVpnENiTc9N", "extUserId": "ESV22eRBElD4K2Cy", "itemType": "EXTENSION", "language": "kzCG-dqFW", "metadata": {"QsQk100eu5UcxuXX": "pt0YSPX04uEIdAwg", "DobopbdJeVCiKs2v": "LyH9kcSBdk7MwQzn", "28Le5neohqhCzroA": "zWQDve0Z2G2N09VI"}, "notifyUrl": "bbsz24fQKDZX6plE", "omitNotification": true, "platform": "KxQjYU6KlavIiLxU", "price": 72, "recurringPaymentOrderNo": "I1GyJS48Hxu8Ju4X", "region": "SAnlXRYB9BgSZBvk", "returnUrl": "ehRn83B0nrW1qx3N", "sandbox": false, "sku": "ugVWXz8dv7BiEUqn", "subscriptionId": "zxs2deMF8UAJIHEZ", "title": "v5zyUUyNJkvA5xF3"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'zHtZSd3QzXhkrN4p' 'Wryt4XTNwpp0ni1Y' --body '{"description": "fIgLZ4YIzElrLZOB"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'LHCKmLBaIwlokbAF' --body '{"code": "W8RgBUwBL28BqM8U", "orderNo": "zvKqeoTiNKGRUMri"}' --login_with_auth "Bearer foo"
platform-do-revocation 'mGAz6OhmHOpCdr3W' --body '{"meta": {"zDm3hJdd6uaO9TiT": {}, "PnIh2iaIBpYC4txu": {}, "l6VKYlNYYlHPwKDp": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Twitch", "currencyCode": "r5M3vw1GqUjjFp6R", "namespace": "8mYZwKftVqSECsyp"}, "entitlement": {"entitlementId": "S42NmYQ8HlHbHnfs"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "tLVOYQCWMktmiKd9", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 77, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "E2bTXJxCCFqPNDqW", "namespace": "rpkWnnova15WVuE5"}, "entitlement": {"entitlementId": "cYVP9tQSa27BnPyq"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "I1BLtGEZDRNkk4DJ", "itemIdentityType": "ITEM_ID", "origin": "Oculus"}, "quantity": 11, "type": "ITEM"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "XK8RGS0zCYRVmbfz", "namespace": "wUmsy0stUmKdXiiT"}, "entitlement": {"entitlementId": "ObNdqkWa13g3pgHx"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "uPf6jQZcYerH933X", "itemIdentityType": "ITEM_ID", "origin": "IOS"}, "quantity": 83, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "zTrRzCCafADJfWBs"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'pT3MLwJZquMQSPp5' --body '{"gameSessionId": "XD4S1ilfgff7Et4u", "payload": {"Y8nlBwGNHgfgwZwV": {}, "MvshGmsg6ZJYnkHD": {}, "nHTlRugM7a2UZgee": {}}, "scid": "sipbP027okM5E8tA", "sessionTemplateName": "ajVSvLRj306RDuaS"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'ixXEdloYZBkatNLc' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities '42eq0O6VsXtOlQwj' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '5xPvm7c5nPR0Y1sf' --body '{"grantDays": 10, "itemId": "9FSeg6WYgtfuqJHr", "language": "s4e3RnWR30MdBZez", "reason": "fwc3H0qSbMq4GLj8", "region": "aGsH0qE5p601ak59", "source": "yFSfdZIv8oYWPUS4"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'Zu0SbTt6M2XizikC' 'h6q0yq2WAHtL7IWE' --login_with_auth "Bearer foo"
platform-get-user-subscription '3MFqvfDG5jvMOaXr' 'DlEX42U0syrGNhBm' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'gT2q0kIbrJ2S5Pf1' 'Lvg8kYEVylINJpxF' --login_with_auth "Bearer foo"
platform-cancel-subscription 'Y8E6pU8eHjh0aTjI' 'OaQt0snbE0yMvqF7' --body '{"immediate": true, "reason": "uB0zypjJiu7BIimN"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'uwB3hBVhuSMHhf5R' '2MkxQTAYGfE6hXZ7' --body '{"grantDays": 2, "reason": "LoWCGf0dZEeXBd6m"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'GG6SHcZbX2wNnT6A' '9zosmDnXoncy7NZQ' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification '4PkAPXBCfkE1Fb0y' '94eP7yh0zsKhR60H' --body '{"additionalData": {"cardSummary": "ZwUwk48XK7MXHbEw"}, "authorisedTime": "1984-08-15T00:00:00Z", "chargebackReversedTime": "1982-06-26T00:00:00Z", "chargebackTime": "1972-05-06T00:00:00Z", "chargedTime": "1991-09-08T00:00:00Z", "createdTime": "1984-02-02T00:00:00Z", "currency": {"currencyCode": "Hhvxc4xAPZ86WNnQ", "currencySymbol": "OhusPn4466u8agb5", "currencyType": "VIRTUAL", "decimals": 14, "namespace": "BU0Eo6QJ9vBRJ4UP"}, "customParameters": {"09fabC01Thm9f4AW": {}, "pyiKVT3OvEujx5yj": {}, "tQSCJaOHzpb623Ec": {}}, "extOrderNo": "iYoYOPVg6DLEZ6Dx", "extTxId": "pwBm2N8PdQ5mQaGX", "extUserId": "EbnmWR0H3EkrHqaL", "issuedAt": "1991-05-10T00:00:00Z", "metadata": {"dfKszYZzOg113h6f": "IaHSx5bClxUOBmMw", "v5pmiIVnhlLoMems": "p7o3F2LQw7Y2VdSx", "gXez7VvS0C9JLVQQ": "Pa7PPx4Zi6WaC8wk"}, "namespace": "7HMbJhNwZgf5nlMD", "nonceStr": "ORYuXnPNJgayPFcy", "paymentMethod": "UnKXA3mcyMmX6WF8", "paymentMethodFee": 20, "paymentOrderNo": "8hVs29WOKmZRTtgy", "paymentProvider": "ADYEN", "paymentProviderFee": 77, "paymentStationUrl": "CCGBXv4fP4VPzhcH", "price": 30, "refundedTime": "1995-10-16T00:00:00Z", "salesTax": 37, "sandbox": false, "sku": "rCKvrOAi7lMgkVWJ", "status": "REQUEST_FOR_INFORMATION", "statusReason": "OnES6YJLlb2AfUEE", "subscriptionId": "BbqMMKvkOsR1fHUy", "subtotalPrice": 17, "targetNamespace": "5T2kIQOecfLsYKTm", "targetUserId": "UnKlrOsJmEwjGYN8", "tax": 98, "totalPrice": 46, "totalTax": 81, "txEndTime": "1997-12-02T00:00:00Z", "type": "xTIZVSGQyTzhs9As", "userId": "y4d629N4YnolVWA2", "vat": 8}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'BHZonSmzF831vlCi' 'ZAZHCWMXxVh8HTrK' --body '{"count": 34, "orderNo": "vOlKT5EIHNhJQq94"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'Re5IM1akNKz9IltQ' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'Uku3n32atB0QPQPE' 'p5UtwUWGt6tooHP5' --body '{"allowOverdraft": false, "amount": 55, "balanceOrigin": "Other", "balanceSource": "TRADE", "metadata": {"w01zalTddhAQ1pwq": {}, "nybvUIfuulmeegRw": {}, "PPbn7lttd21cS6IV": {}}, "reason": "E4fzwG3BHaRcZ8NK"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '4gkLmvEOaRcqTgF0' 'xtQAXoDoFkmA3fgz' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 6, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"wdgJMjIyGfiNBQy4": {}, "1M1gzGCbaxw33rNb": {}, "E4bbDU4FMTbQaANJ": {}}, "reason": "OODGerDCWcl3VSJE", "walletPlatform": "Xbox"}' 'QopeHD6iKBGm5Cj7' 'RqnJUmfDmofxvN8p' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'RGoUtmbWZbEjPyq3' '5BWDoc3qNcQFFyHv' --body '{"amount": 1, "expireAt": "1995-11-14T00:00:00Z", "metadata": {"CA7wKru7ry3AQ2sE": {}, "HvSxjWoM1rNJLM0O": {}, "OVG5cG6XxENbWqlX": {}}, "origin": "Xbox", "reason": "idzjpKDfwl6XlCF6", "source": "SELL_BACK"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 34, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"Z5rryiMMt6fQtLhz": {}, "ylaquioT3QBt29Ai": {}, "RASsuFM4ahGw7XcF": {}}, "reason": "1Qwzz606UGXPhoNZ", "walletPlatform": "IOS"}' 'wj6PqqOgCimr3ZQN' 'BBkrXu9czsYr3cFe' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'Vw70xdNTuOdLKK0M' '2B2hbqJin37P69t1' --body '{"amount": 74, "metadata": {"TpEhjTFYdzsUNvQA": {}, "n2LuMjLqwmVz3zKs": {}, "fjz1mFkyxoUzfMFo": {}}, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'COguSq2A4R3wDdSk' --body '{"displayOrder": 80, "localizations": {"Ph5yNbYXmlAOi1SC": {"description": "3I1SjkH42LtyZKrT", "localExt": {"Jo0L5sHil4Q0mqa8": {}, "GatrjbJ5YT7uvqar": {}, "TvrG1DXZAWlvz3c3": {}}, "longDescription": "XALMresGFfsH4aXC", "title": "DhshvEF8rHd250ny"}, "ihcUVGHQczI5ZoTR": {"description": "UkjGoRkPs2SO9Xrg", "localExt": {"XNIaU11cBXLwTfop": {}, "qeZtHJnRgaGfLMFb": {}, "vyI5PZGzVLcmZKKK": {}}, "longDescription": "YARape2tsNczam4C", "title": "dd1QYvww4XDokltg"}, "q2vXtUnY6UhDJ4pe": {"description": "0s0Cuhl3dU9b4seY", "localExt": {"CyiB4tDCWx3cEX8w": {}, "Ti1v2abpCWytPEi9": {}, "Ze0hL9rPkV5GkSrc": {}}, "longDescription": "l2O47XVzU7qlNVk7", "title": "qnmBS3XKDhp1OkMc"}}, "name": "ErmeH0lX1hj0LaXg"}' --login_with_auth "Bearer foo"
platform-get-view 'Q94flh775AQfzNjQ' --login_with_auth "Bearer foo"
platform-update-view '7IuMSY2epRDJjDyM' 'DKQhuTjtQZyIiAmC' --body '{"displayOrder": 77, "localizations": {"0KsxR0rCFkyiQZfM": {"description": "nTbKdwNhiIP7dpJ8", "localExt": {"B8VwFQnVco2oCn1K": {}, "vJmbjapW9UlEqtzD": {}, "d7SgxdxB5kvtM8ah": {}}, "longDescription": "9bPsksceGUEX8ERZ", "title": "cKSYLo6y7yJMowQ6"}, "LpHCvCYTgX9JQwEr": {"description": "zjtuP9pUUv7qefNM", "localExt": {"FsZAIqak1zi0JSa5": {}, "cRn31D8ubfdXi7By": {}, "cDPckeGJUgU8bD5m": {}}, "longDescription": "GFFmKTTUxG0mpmFx", "title": "xDNXGlGJvHf558h1"}, "ltyhiSGhfqXhxBJ7": {"description": "zLXioAGkWgSDdDQv", "localExt": {"pRfGe3z2rtjWpJAl": {}, "KHF0ebxhJ1176CeD": {}, "4dWCp4wqlQJcZroN": {}}, "longDescription": "QiefBnPluOIjZyvl", "title": "GDQGv6pNNowEuVVZ"}}, "name": "M28w4mnYvvlt1es7"}' --login_with_auth "Bearer foo"
platform-delete-view 'A4PFduN4gx0UC6eW' 'KCFGS97Si6XyLVPr' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 22, "expireAt": "1997-09-24T00:00:00Z", "metadata": {"xyZ1OH5Nn4nMT8QO": {}, "yTuUSD9ImtaPAocO": {}, "QcpBWSNrCjSNEAdo": {}}, "origin": "IOS", "reason": "ZTvCPrrZCTU5WUJi", "source": "OTHER"}, "currencyCode": "FujpIWo0qJtqp4Q6", "userIds": ["WQllYsONpp6QGW56", "XgICLgMHcP1eE6sj", "CNiszHE69D1MMoaf"]}, {"creditRequest": {"amount": 70, "expireAt": "1989-09-30T00:00:00Z", "metadata": {"lgRtwaM2IoyY1wpI": {}, "djcAtTj1IMuuhxxl": {}, "ulfmya73hX0a8Ri8": {}}, "origin": "Xbox", "reason": "PA9wNpmrK5Y5heA2", "source": "CONSUME_ENTITLEMENT"}, "currencyCode": "OhNaIT0pv7XeqO8g", "userIds": ["gqkqYZWPZTgKagTz", "xwaLM8HkVOW8PnLk", "Y3c4SryWB4yRaDxv"]}, {"creditRequest": {"amount": 7, "expireAt": "1975-01-20T00:00:00Z", "metadata": {"lcKA84d9pMsl7zrN": {}, "JvDiP2hNNEI8QrQ6": {}, "H1ro5CtU8UjgyCUp": {}}, "origin": "Twitch", "reason": "BCK4FeVGrl5NpUG9", "source": "OTHER"}, "currencyCode": "Qg976409vFd5z9r4", "userIds": ["rWVxNZUvkiU2jXSw", "nJWUvLp1wxGF7474", "68MXUq3uIffkIpPm"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "sBBRopVl38d4NZGt", "request": {"allowOverdraft": false, "amount": 32, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"9DOSgbsdGVPLD9A5": {}, "NmuZDUV3yHurgOfb": {}, "a1XeoHYTNoRol84U": {}}, "reason": "lkxtP5Vok9sNK1OR"}, "userIds": ["1mH3oYfPK2QiAUhI", "fi17YrkWHNxiaNyq", "g3tChsS3fFpaS1uq"]}, {"currencyCode": "Bfgw58Hx0XYL0fJO", "request": {"allowOverdraft": false, "amount": 33, "balanceOrigin": "Oculus", "balanceSource": "EXPIRATION", "metadata": {"qej8PRppYY1vlV0M": {}, "2g6oreqyBzWzCgMM": {}, "WZuD6tmIR28xVxbt": {}}, "reason": "pSKOfiIP3S6pypZq"}, "userIds": ["ISn3msrykQFtW8QG", "KFZLrIfqrZuu7IwK", "cT7sAsv2TKCbYMVk"]}, {"currencyCode": "XEHmsHwIGGsusS0z", "request": {"allowOverdraft": true, "amount": 62, "balanceOrigin": "Epic", "balanceSource": "ORDER_REVOCATION", "metadata": {"i6xEljer6aGJx5OF": {}, "p3jKEx4aSGdwTPX4": {}, "ig3NVFFkP7O3F4vs": {}}, "reason": "ohRWDyGYIVFDbTvR"}, "userIds": ["lXfgsgBd7MYLLoPZ", "msbhi5QJuc2SNBaO", "YfpJ4wM9WZfOOxAz"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'rkjRm5Ki0orhXrIS' 'EaPZHLQkTHvndQsC' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["KAO2JRz3CGwtujkz", "xidLcAQWGVRg6DVs", "o5TJCSugdo4XTm8t"], "apiKey": "1YTWqItjNWXm9sra", "authoriseAsCapture": false, "blockedPaymentMethods": ["TIQzRJY7UfYSrdN0", "JVz4U43EcV1FRyee", "qehMNeRYKeMbL0G4"], "clientKey": "v5D6ylZguO918X7r", "dropInSettings": "LoexHBMBMMAYokSW", "liveEndpointUrlPrefix": "FwajRGUyklfLVY6g", "merchantAccount": "3PO4hKAeF4GUV5m9", "notificationHmacKey": "6qcCJsVOWtu5RPsq", "notificationPassword": "d66ImBEuhnaxZVf6", "notificationUsername": "MD9r1y5Ihr531Kaj", "returnUrl": "xq7lzuVRVEvhKIbr", "settings": "q1xsGpdobYun8hcO"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "55hVjfWyK02w5Qyt", "privateKey": "AmkanukAzAMaRvIU", "publicKey": "hUwguGgbLLN3O7CE", "returnUrl": "YjxqElP5lA2FJ0iG"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "LRTXGsC5mxxse4ee", "secretKey": "uMgEctVEux2MSuws"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "EHlwdeJyhsHS6YqP", "clientSecret": "udWviQsULL1txfX9", "returnUrl": "tqFSkGXoIcFN5JL9", "webHookId": "M53Mg0MzWS9usxxn"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["Mhjv66DyED4prRVi", "bTATxd7Mzjv1gSj8", "kcNhoqcRZRNATojM"], "publishableKey": "7daV0VwR3yNKDtMq", "secretKey": "MrAGpdyF6WDHn3eP", "webhookSecret": "BxQNz2IUEHMzl5jh"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "wVDsuzwJ4v50eoaI", "key": "BrTh0EKkJioUpvGn", "mchid": "kcHgCfaWzPUvCnfq", "returnUrl": "sPGgJZyRwigaMu07"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "Zek8WObpf0FHYfVi", "flowCompletionUrl": "Ej70KYKIfFt4GYjU", "merchantId": 40, "projectId": 69, "projectSecretKey": "4F1ZVy2qFfSr3psW"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'jOyHLyKe2foqsVIf' --login_with_auth "Bearer foo"
platform-update-adyen-config 'gBTr8RcxRQR0NYdJ' --body '{"allowedPaymentMethods": ["zf3TMhSaynVs05nZ", "C4Os7hqIH2NgARSG", "3QQNGNH2K0UuJdeG"], "apiKey": "NquQnaXpDQ5rU2ta", "authoriseAsCapture": true, "blockedPaymentMethods": ["jVHiCn2hTefT8gPF", "J4WndMpQhcLK0WTZ", "btmQkwC8azx3IRWm"], "clientKey": "e3C6p2r4D3NQdjrj", "dropInSettings": "kX3AMgK3JgZufzss", "liveEndpointUrlPrefix": "A284mG7uAojLYBsx", "merchantAccount": "8oqMzbE0ljQaBtb4", "notificationHmacKey": "7V691j0FZp2vjOXp", "notificationPassword": "txzx6kkaZYpl52sQ", "notificationUsername": "R9Znp5d1eSwrG2GB", "returnUrl": "BEWrDbQ1ZzhDuLHq", "settings": "9LTBstguOdN0O7l3"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'GbKPHdDTQDEEE2mT' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'sn1NwJ71szsNmnqZ' --body '{"appId": "SWdEyOVYrTdDq7Iq", "privateKey": "bTVv8BLsqQW8HSrE", "publicKey": "m5Y7jI232Sjktiji", "returnUrl": "NzTUe8KdizXmrmK0"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'sCUsqxKocHomtjoU' --login_with_auth "Bearer foo"
platform-update-checkout-config '1kUqRedwIu1TSRr6' --body '{"publicKey": "r8mzfMedpcKhvHPl", "secretKey": "vYanGqEkn9OEVwLW"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'GT4MXhmzvRQb7c0v' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'mjWq9fQqzulLGfQM' --body '{"clientID": "qSLQDlRFYMVfiAMa", "clientSecret": "6Pco7MfvikslpyL9", "returnUrl": "BYLVVznF6hMYfksp", "webHookId": "8VQhYSFeBOp0ilGQ"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'FwHUtZugblT3aIDK' --login_with_auth "Bearer foo"
platform-update-stripe-config 'n9qJXncm5igpAewb' --body '{"allowedPaymentMethodTypes": ["mnWk0E7YaPblcWEy", "Ngvs5LEZrQXzSQRW", "Rs9EGnRPgYlJElgJ"], "publishableKey": "8kx1WEeDbql13FtQ", "secretKey": "Mu41rnOzbsFBqg6d", "webhookSecret": "ziWvdNcwfUBMdNuT"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'aiLxFMXRpDP9xutn' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'tU8xHw4yYJOCViHw' --body '{"appId": "unQwpC2eCFUAHZaY", "key": "SvsWiNJtqXltZF6a", "mchid": "SRmHU5iR3hXIbzWP", "returnUrl": "KOkzftOgDQAWhulb"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'rDf7q4cAnpmLiEu4' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'CNtX2lnqi7cHTSdG' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'oLZbC3UJruU4uIXB' --body '{"apiKey": "ZsEYogFWiH9z4E8z", "flowCompletionUrl": "maZ5cg0REtUWY4fV", "merchantId": 71, "projectId": 27, "projectSecretKey": "dqwCWF5wmbOubTxA"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'AeDCowR3MeCNL1oN' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'rF3SmgudQusJLsPl' --body '{"device": "MOBILE", "showCloseButton": true, "size": "MEDIUM", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "kN9EbKbTbrDzNgVE", "region": "cw0lxRam16O6v4Vj", "sandboxTaxJarApiToken": "Jf40LjUdORELVXUF", "specials": ["WXPAY", "ALIPAY", "CHECKOUT"], "taxJarApiToken": "R7mMuBXPDKCriRKz", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'AVRnUVbxEJcKHE76' --body '{"aggregate": "ADYEN", "namespace": "EwhQfxFKIOGT1WKS", "region": "mLoA0ILaESC1GJXs", "sandboxTaxJarApiToken": "oBwqh0TQXa2j7v3z", "specials": ["PAYPAL", "PAYPAL", "PAYPAL"], "taxJarApiToken": "TAlW75icIKUpXazs", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '9YCLNJEkvq6SUSt8' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "xd8EgE15XNuw6Y7s", "taxJarApiToken": "ToQNkuZzJ1XBxw01", "taxJarEnabled": false, "taxJarProductCodesMapping": {"1SMK9oA4vK56dsYI": "5SKV5pDANyJ184mi", "BhdVJt81fmLSyGuu": "5rbJVIwRMtwApGbX", "nR3yC6f2MHGGedk0": "KzXRclOXdPYZQxBn"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'ttu4yW5etl4Xk8Hd' '1lRtoPMvsu9oswEP' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'TvzwwGnpbx8MCIjK' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'zylqW8auyseP9wEE' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'yYAnHPp4XzVL5Mcg' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'OCULUS' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'm4JLsXVtBOEetHsx' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'AJ8Ny1LRkPU9hrl5' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'nkpEdBe8bYWdok4U' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'nUEOyP0cPZf5Ovol' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["fI0mqZctohLheRaQ", "kfMLFW9B7jHZro4h", "hwnANAGp8zGqNGrc"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'QyoA1TWPcy83iXfY' 'XNdMkdg9TMwxNcQ6' --login_with_auth "Bearer foo"
platform-public-get-app 'CkVi8fqVPRqNbF5y' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'LnYSa8xFLvcYexMM' --login_with_auth "Bearer foo"
platform-public-get-item 'MiDFh5RbW021cHN3' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "QbzVuJZH3k54cExx", "paymentProvider": "PAYPAL", "returnUrl": "tdGTW4FILotv5ycT", "ui": "a0i6ifYP1zfgjsy3", "zipCode": "VRjX4qA4g9OGoWw1"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'qnCAvdnAcokJ0rzq' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'X2KJcYHgiFDxclBX' --login_with_auth "Bearer foo"
platform-pay 'ap6j73doCWxhubMX' --body '{"token": "bxNvT6wAffv4uzKA"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'wiI4wTxNIefCmtrx' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'leAoUuVKneoO10yt' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'PdJ8SY3qoogOxoPY' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'vdIBJYyGURjEjnsl' 'EYM8ngVT1ewVxvgA' 'PAYPAL' 'Hg0c4X7fHdITmN9o' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'paF0kh3pCRB3infE' 'WXPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'ivK2Q0WwolQy037h' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'JMOEv5W0v25yAObZ' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'IbrA8XAKKWMDebeh' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'Sjpt0wrfWPXaI1Jb' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '75o2MFOa6xgPt69Q' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "ROGDeJCyHvUsnLvX", "language": "Vuc_iT", "region": "PA2v9XP9enfEX7ll"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'oLgIYqxFfSNJlHCj' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'xLNnYUlGQsFpy9ZV' --body '{"epicGamesJwtToken": "lLIFwLgT78nootfU"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 's9559ilm3cauhrw9' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'Yn2z5cnbm7z2Aa24' --body '{"serviceLabel": 49}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'Tlzf7XwQtVIYU87N' --body '{"serviceLabels": [57, 19, 13]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'DMcJxfMfYFlt3JvD' --body '{"appId": "gMiyBGygWFTAY3Th", "steamId": "5mOwPCPKVPlOGfFB"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'lu2ZP0IkiYXGk6Bo' --body '{"xstsToken": "BmSLi0R7zDFMoNTQ"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'mlS8lMlY8UjprhCx' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'hzW6ZM7LkTVrtVJZ' 'VhxCVdjPutJ8dkAV' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'OJ5imghdfVhjnjd6' 'DLC' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'A1SQmWGSQLAVPAJ7' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'zX5lB80k2smdkBS2' 'MaIP7PjngEFggq91' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'cpgvoDBgYfLBdGNA' 'ZEvbvxqa0K7VUbjU' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'nzirnEsxSE4vBzG7' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'VK8sWEshmZf5fEdv' 'jbyJPQ1qdRcJjsme' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement '1OukIfIZVH8q8svV' '5hMOSfpyJkJlmJmT' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'kFvB7wkY6nuUEGJ3' 'k0HGtpK43uORGREO' --body '{"options": ["OwTuY8dhNCDWWpN3", "B6tedgFUzBm5vGA3", "itKaF9z3WWuv3j8T"], "requestId": "9g1f6P3D3rVcC2g6", "useCount": 40}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement '1NgpH7Oc44yjRdfq' 'Zgv34GqqjelcN0GJ' --body '{"requestId": "mPwUTWMx0MiPAjnW", "useCount": 70}' --login_with_auth "Bearer foo"
platform-public-redeem-code '8HDXTJWiyw17ogzm' --body '{"code": "bj4SLYDrZJvDLGvn", "language": "RzU_CBPS_751", "region": "nBA9xNIJVuMz04ev"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'SdE2FMcKd7c94rEm' --body '{"excludeOldTransactions": false, "language": "bCv-845", "productId": "ULIn21Nf2FNgDWNC", "receiptData": "6yh7kgTHlrxKbsV4", "region": "XtrI7SFBEgkwHifM", "transactionId": "HYI581HbF7fMX9lD"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'XYxGRJM92eX42WW2' --body '{"epicGamesJwtToken": "WKf5urEOpASBicX3"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'ZwzZ7aVhrkmhSOEo' --body '{"autoAck": true, "language": "hY_eiuI-412", "orderId": "c5kNwJAxm0Rdm9l6", "packageName": "nIhG5SilDDIsmj4h", "productId": "625dIsMKWBxF9RAI", "purchaseTime": 35, "purchaseToken": "4U8VSgXoi9Fw25b9", "region": "qXzlIK2G6AUjBCdf"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements '0Rp5e5IvFuN1oUsC' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'nBmGMx5F6EhM3dKv' --body '{"currencyCode": "IG9MR0hTINvq1VR9", "price": 0.724348958328467, "productId": "JUfQEX996Mh1sQ3D", "serviceLabel": 47}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'bQZO3P2f8TTOVf6j' --body '{"currencyCode": "rr1OL606QpqCgxt0", "price": 0.6450125683275982, "productId": "gDSj1T6EdeYFmrLT", "serviceLabels": [26, 4, 68]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'bvS4kSSt3CyDgf6e' --body '{"appId": "FAiqSkHi0BR2ElF6", "currencyCode": "z6eJKuOW61akRFiz", "language": "QYd_DtuP_195", "price": 0.8934733277857678, "productId": "n478mhb2I2yBJeCJ", "region": "ghTrk68FWFzuLBdl", "steamId": "rKjUbgZQfw6Zys3m"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'N8fIcC9Ckharfqao' --body '{"gameId": "MsGyv1RuSNdycDss", "language": "Edir-hu", "region": "mZzCQwilS3IxSjly"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'vR9PxG9Lji2Vc88W' --body '{"currencyCode": "8aLjIxVGpdOqguxv", "price": 0.7052673818113134, "productId": "wI9ZBTipMRlhK9DM", "xstsToken": "MaI4ryVDvNaruZxw"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'Tfh9gEs6GF247cbB' --login_with_auth "Bearer foo"
platform-public-create-user-order 'LjUr5z03wxB3E9hr' --body '{"currencyCode": "E9f9COFrOr6wJDBw", "discountedPrice": 70, "ext": {"LCvjRKKX1brmkJDf": {}, "dngbQD3pO8U3W94Z": {}, "8IW2MAL9gYHEV3wn": {}}, "itemId": "TZTvYYf4ZFuV6L2A", "language": "tD", "price": 0, "quantity": 99, "region": "7oFd1fEmDuyAsQGz", "returnUrl": "wJR5poI718RQnj4i", "sectionId": "mu6XFfRcWDXhq1Ym"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'Geygr2S4Yw8NmPaB' 'eryzX2hOPVVFqVqx' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'jq1iG3TySOh8SI75' 'oXbyq8FBbur80Qwn' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'lgAVfqz6gQJh8sn0' 'bVWRkvmAemh8lioB' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'R7xTXcEIFod3lCzv' 'jHzDHOrSJ1vbB7LR' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'Hd96dGLgkfrZveFM' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'WAFT7l0l1jaOAMCz' 'card' 'QqhISTBT1Gofv4Su' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'aZ8yCB9TVZnuzgvA' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'ZJRm71EC3ENuvD8O' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'Psp5Z3ez84KVB7He' --body '{"currencyCode": "WPnVeFdy5ezlCU6S", "itemId": "GzkMpTL2wxobjxAb", "language": "dH_523", "region": "sNvtFuunQsvdXGlD", "returnUrl": "40xxIyVwYjn6dlC9", "source": "Kfh9gHuloyce0cLJ"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'u4ljPWlCWTuGO8Mn' 'fOQu3wdT4Aodp95o' --login_with_auth "Bearer foo"
platform-public-get-user-subscription '1RkX7iW7VpCngWAv' '5DAG8dPdkKgQqjyz' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'UZR2rFIAuALNhNCy' 'scsMBRLsWadk2OQ4' --login_with_auth "Bearer foo"
platform-public-cancel-subscription '21q7Nb1vrKthVvU5' 'on065ApCkVN3Qchu' --body '{"immediate": true, "reason": "6pntxB648ss7rBnv"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'QHAM8gSdIybKUByH' 'BzfvgtRTPPzwJmKa' --login_with_auth "Bearer foo"
platform-public-list-views 'LCx3gcidEALWe6RG' --login_with_auth "Bearer foo"
platform-public-get-wallet '5wWznu5AjwR1Z4fU' '7ICcaQtuuKUw3dUw' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'WHhQW3I1y9tjRLVO' 'XBMa0JiIe1AY0tUA' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '7EKASk3USNLhOBlx' --body '{"itemIds": ["RBLgohp8ByTi2F6A", "yUX8w77riPlPgJcL", "beQf9MICxX7xKyCf"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'gwSPz14asyOdgn77' --body '{"entitlementOrigin": "GooglePlay", "metadata": {"pagfP0FfOMBOpeQT": {}, "4zYIbU4i9mLyX46A": {}, "lt08rrnG8y2ScXkw": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "TkJT1VkChD3n0c1r", "namespace": "yAkRvdPR8gx2rX5d"}, "item": {"itemId": "ck8NFKPgT6LMehg0", "itemSku": "47axU5ktNywRIvO2", "itemType": "Sgz30hejqdktHIO1"}, "quantity": 97, "type": "ITEM"}, {"currency": {"currencyCode": "dtMSews1TrU4FhAf", "namespace": "KDcDG5bMTba1tUlF"}, "item": {"itemId": "GcP6eL7EpWtPifmO", "itemSku": "0JK4dP1aZFiSkmhw", "itemType": "VVMGkXNwMYwFyljy"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "LjmxhBS6YypRW7fN", "namespace": "ntaIEtDI6MbhxkQd"}, "item": {"itemId": "ezbmf392ersoZ2Kb", "itemSku": "Mb5jal0ruZmBXlGS", "itemType": "p85q6fuGfo5wSDHn"}, "quantity": 49, "type": "CURRENCY"}], "source": "ACHIEVEMENT", "transactionId": "PIZx0zdNAagipZwi"}' --login_with_auth "Bearer foo"
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
echo "1..436"

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
    'aBrFrXtGMjujfHZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    '1gMI1B8DXb37DffT' \
    --body '{"grantDays": "Z7yQz337LLNCjIyS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'e36SA5dxATLv5PkL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'vraRzChdjDGdlk2A' \
    --body '{"grantDays": "2jHbAPNGInvbnf4e"}' \
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
    --body '{"clazz": "wKFFLoGggX4gQWyZ", "dryRun": false, "fulfillmentUrl": "0eT9okl6MlWOl9fe", "itemType": "COINS", "purchaseConditionUrl": "O2bmOikTBJHTEm5P"}' \
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
    'pKYgF9OuigDP0Vjm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'y7j2BrdCAm3slCwa' \
    --body '{"clazz": "BqHpE55sjxBGijw0", "dryRun": false, "fulfillmentUrl": "T1CULEMPaOU5nuky", "purchaseConditionUrl": "cAUlkUSZKUrsxNRz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'F3NaUuCyQyze6zPK' \
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
    --body '{"description": "u5sE89JW8UU0RsB6", "items": [{"extraSubscriptionDays": 8, "itemId": "TR7LxihuOn57io0d", "itemName": "9dG3yzaNbGeASX83", "quantity": 90}, {"extraSubscriptionDays": 55, "itemId": "LiIbAP2qyUnHnfrE", "itemName": "dDfY4TTxu8goZgsX", "quantity": 76}, {"extraSubscriptionDays": 90, "itemId": "oJyqwFVBd1ZjaRXE", "itemName": "dWgS12bSbPgOCWUo", "quantity": 13}], "maxRedeemCountPerCampaignPerUser": 87, "maxRedeemCountPerCode": 18, "maxRedeemCountPerCodePerUser": 36, "maxSaleCount": 53, "name": "yNf9VGxbOeJe4n9e", "redeemEnd": "1994-02-07T00:00:00Z", "redeemStart": "1976-06-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["QZ2UGePWXbAyGiXa", "9nUsHCVicuJ7onrU", "XVlB6xNel4Bxb9Kw"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'qdhEVq3hbsApeASf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'R0ljKxqZcLuhwNDv' \
    --body '{"description": "Valv3bkoMXNzl1yw", "items": [{"extraSubscriptionDays": 63, "itemId": "GXtZU5SuIhMSaDRp", "itemName": "17dUWHcjrb6qNeKp", "quantity": 84}, {"extraSubscriptionDays": 23, "itemId": "xPrlG9svdqsiVTqP", "itemName": "bzY1yxl7zeEpmSPO", "quantity": 94}, {"extraSubscriptionDays": 75, "itemId": "5CdjaJuUzFIeqaVr", "itemName": "1CE1gu6cYuzC77J4", "quantity": 16}], "maxRedeemCountPerCampaignPerUser": 18, "maxRedeemCountPerCode": 36, "maxRedeemCountPerCodePerUser": 82, "maxSaleCount": 43, "name": "CsnK8CcO1OHbpQZt", "redeemEnd": "1982-03-07T00:00:00Z", "redeemStart": "1996-04-28T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["Ew6IIpDc9X5ijmtD", "Gvd9ESdY0eTkBWA4", "4Qqsi5yOjvl5sRN2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'ENn1RLi5iMPnbg7o' \
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
    --body '{"appConfig": {"appName": "1zYpqUsliPyXZGYI"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "ZDtWbdkzPP47RcUI"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "H5AlYRAqCAC2gy1W"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "9QLNgDxAkwgfB8jI"}, "extendType": "APP"}' \
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
    'ICP75cm8YDChFi3z' \
    --body '{"categoryPath": "LvfQWC85MxWxvW0v", "localizationDisplayNames": {"eFl3uU1aMD0mczWx": "c8f1s2QPMMZsf2dv", "KZyHChRPHvdkcKW2": "1B5EFtD2pYaKTz1g", "cE2XCwTkRUIX6IFH": "NmB9mYBvtOwxjqyr"}}' \
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
    'jDApeN5eAfRqSgH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'xIuBTYOdsvNyk52M' \
    'QFkVVEf36S7yPgG4' \
    --body '{"localizationDisplayNames": {"8bk6PwH1tdEAJSqX": "A0Wv0zWGvkc6byp3", "mvyYT3GuaZVTxBlw": "1IWeXKFT4rfSbbSl", "DPGf9Fn32SJNPZkE": "fkAcJTMS4pVRcCHI"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'GfmCMTr9ACnI2sMr' \
    'Egl7ZR1HCkf2Sw78' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'lLGKjDHuXt358gzq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'RMuMPrIekxq58fik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'q83hqJ7HP63Se6kV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'W5fkl60ImLBv6nUU' \
    --body '{"quantity": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'r1rfX9stpvJUuyPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'zx8BM2wEgTtLRT5s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'twQFUEbTPQ8p7VMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'xEXnqHwMyKpwphjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'XvM1GqMkZ44UXgdB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'qtJaRyDlP9qIZJ5K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'rx6KkHagEugKJxkU' \
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
    --body '{"currencyCode": "8Y58COtTNjnNSikJ", "currencySymbol": "Dg6ujKvq0CIa1YCK", "currencyType": "VIRTUAL", "decimals": 84, "localizationDescriptions": {"rH9HR4reG0HwUXxQ": "Tf5YpDUGYsJBEkYU", "rLv4qUiTkFcLBrg2": "JB0WiCpVBwvAffJ3", "btt0PpQY3Pnnic80": "yEO8dL6Jh10XMUGe"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'DavCKradJmJFUsU4' \
    --body '{"localizationDescriptions": {"18vAlmfGg9NO1Z2D": "vnAxH3pS3jyCkGKl", "tBNE2UbhNtH3yYg4": "Qnn2uhdw7C9Bx1LQ", "OTCbAPLC3iqrkyJF": "OVaewFcv9h31YxuZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'noSesWpLUHjGaIcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'N28gH4Cd9xTdt2K1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'CzpQWslNGnLYUYR0' \
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
    --body '{"data": [{"id": "yOvJhUjzcMtwINUl", "rewards": [{"currency": {"currencyCode": "rhIpnlam2EefVopb", "namespace": "pPhsana0uXG7GUTV"}, "item": {"itemId": "1BwgkLDj4pjVktyo", "itemSku": "NSsEHlzyd0Sarkhl", "itemType": "tUxgbN5eElQNESFL"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "8hCc9onSNjbQEqFG", "namespace": "wnDG8kz4kvEv6tNj"}, "item": {"itemId": "GRhrmRAxRGeIKGlC", "itemSku": "JmDXpjyvLSHB1y3k", "itemType": "lHuAGnidOyGuS0OG"}, "quantity": 29, "type": "CURRENCY"}, {"currency": {"currencyCode": "tUlenimjIbm0riCa", "namespace": "Np8dUBDinAB6HqIW"}, "item": {"itemId": "Ii5Bvb1rcuEtWAF7", "itemSku": "63kci7lT62BOHaso", "itemType": "53W3U2Mu9ZGMWou1"}, "quantity": 95, "type": "ITEM"}]}, {"id": "0RVCf3gMWDAodCKq", "rewards": [{"currency": {"currencyCode": "fqzeexHA70NgJTxj", "namespace": "tzgO7W3taRvJ6lKW"}, "item": {"itemId": "JwHO65aOFDwpqy7X", "itemSku": "OU3DwglyMGNll4O8", "itemType": "ELahcNJqRjepck1l"}, "quantity": 31, "type": "ITEM"}, {"currency": {"currencyCode": "Uf9RpcfEQn0O6D8P", "namespace": "GQuazAypgWhTED5Y"}, "item": {"itemId": "mPTBUkm2FyvdguCY", "itemSku": "VqFyIKh1YtTY4Aej", "itemType": "yQc5Dac7hSLldWx5"}, "quantity": 60, "type": "ITEM"}, {"currency": {"currencyCode": "8uLBZiVRYIyQLcsl", "namespace": "TEqgVNG8Aqktgvjw"}, "item": {"itemId": "NJAwIpEy2ZNpojZ2", "itemSku": "4I2n25smsrmJFHGi", "itemType": "YnyhbqxLuTZIxgiU"}, "quantity": 1, "type": "ITEM"}]}, {"id": "iyy0aWrshpmb1C9A", "rewards": [{"currency": {"currencyCode": "l7eWrbNRE0xyYPUZ", "namespace": "HyLGQ52IjGpRJCUJ"}, "item": {"itemId": "pscOTkWETSJ04c5M", "itemSku": "GInO4yznh2YpZvvm", "itemType": "ziSSiSpXeWOGayfR"}, "quantity": 20, "type": "CURRENCY"}, {"currency": {"currencyCode": "QvoN06SpNOnuSksf", "namespace": "m7hcIFdkdrwAcK2l"}, "item": {"itemId": "Uda9h9FgvfhiLEAk", "itemSku": "A7n6516ydoRT1qZB", "itemType": "rdTnGrwHeWoQXPFW"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "aKbDgrGkv8SVwLyS", "namespace": "4VbHJvD0lL7aZUY9"}, "item": {"itemId": "d1Idud8bjYeBVMr7", "itemSku": "zHYmRE4X36KUOdfE", "itemType": "moIYwSxxAsfwDMiv"}, "quantity": 99, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"CLbh8t0zPkQWRUlg": "E0kxzFMq9ttbEHAE", "V7C65Ans9SquNSJI": "ay5VdUdYy9Y9OCSm", "mT3WKijbqhT3uyQR": "XvvcUYDeWPZ8yhwQ"}}, {"platform": "XBOX", "platformDlcIdMap": {"gIdj1lTJdNLmAvEd": "EBVAU3rbkv8V98cu", "pW0L5WsiuITRMSPO": "UfWQwr4PYf48r66M", "aToxBiliy2vtRkpq": "L6KrVcNz83J57t6O"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"wUsnIbQM3ZAtyEWK": "WoZRUL7wS3HaMTXA", "X6y0STTN2sBEijjj": "pvSzGkED0oweFYDB", "Pyd1jJBxbrbuFay9": "PXgEQS4871QSmssp"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1977-12-17T00:00:00Z", "grantedCode": "5sNfifK65tvaH9jw", "itemId": "cO48pthyYpBJDHII", "itemNamespace": "xTIGI5EssYllIqjJ", "language": "UKr-XMCw", "origin": "GooglePlay", "quantity": 46, "region": "xjOGQGlHm8VTN56t", "source": "PURCHASE", "startDate": "1989-06-27T00:00:00Z", "storeId": "4XgvGTMHkXeEwuFJ"}, {"endDate": "1973-01-25T00:00:00Z", "grantedCode": "7tbq5KikDE7hWvT5", "itemId": "bzcfzIpL2pWB4Xsd", "itemNamespace": "rxIF6kEAmKGNEmFP", "language": "wP-oaqI", "origin": "Xbox", "quantity": 48, "region": "9Bz2wx4kDAm8XIle", "source": "IAP", "startDate": "1977-06-15T00:00:00Z", "storeId": "dlXTCL467xHbAiD3"}, {"endDate": "1992-03-29T00:00:00Z", "grantedCode": "r3mXZO1PnbSlfVRl", "itemId": "AI8F2f3mEv09kAA5", "itemNamespace": "hnQtd4bcivHGIEpl", "language": "cQND-Cj", "origin": "IOS", "quantity": 29, "region": "OFBWhUTPiKR3qcbH", "source": "REWARD", "startDate": "1976-05-03T00:00:00Z", "storeId": "4UiJSCbG4UmG3TkM"}], "userIds": ["jqeKssQpme6eyM48", "TzOcBIciiKwRs1E7", "sH2G9MJ6F7Rr7O15"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["tE7eJRsXNeveQXqn", "FRYmEIX40XOUoLOa", "7oDz00gxcoaH6u9T"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'Vf4DvEzpoPRiClZ6' \
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
    --body '{"body": {"account": "rlwX99AHMLHqguYy", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 21, "clientTransactionId": "umFvPKqupHj72TlL"}, {"amountConsumed": 37, "clientTransactionId": "duW5lxSlorWEGN5b"}, {"amountConsumed": 85, "clientTransactionId": "35Iaytd9CsAMTZC3"}], "entitlementId": "7xPXxnfggnZ3EZp6", "usageCount": 45}, {"clientTransaction": [{"amountConsumed": 67, "clientTransactionId": "SAufwYirs9lwvPKd"}, {"amountConsumed": 30, "clientTransactionId": "25u3fFLV0YeMrVaY"}, {"amountConsumed": 91, "clientTransactionId": "VOU0hHnsCl5k6Jxh"}], "entitlementId": "5mkmQzKg0jWCjpGw", "usageCount": 15}, {"clientTransaction": [{"amountConsumed": 82, "clientTransactionId": "7pLAi5JmzvM6JFKB"}, {"amountConsumed": 48, "clientTransactionId": "ikHpl3sNRaDEC2Ok"}, {"amountConsumed": 80, "clientTransactionId": "A3WqypoOw0H2s0si"}], "entitlementId": "bQNBz81zRPntxpgi", "usageCount": 58}], "purpose": "tXIcNEcGJjOCXpui"}, "originalTitleName": "x5vnPeTu9evbRov7", "paymentProductSKU": "Bm40CtZiAxk43DGV", "purchaseDate": "1SCkw8U0d4FvVmPM", "sourceOrderItemId": "tpRMWSQ8Szi1IrGi", "titleName": "dRmR5BGRJhFwxmkG"}, "eventDomain": "fPI3j4luXQuuLtYa", "eventSource": "86kvL6cBZQssUUXO", "eventType": "sXMNdvW1hbvGenRb", "eventVersion": 26, "id": "cycXmBcrJLb7laby", "timestamp": "otifVk9KyqceGv0C"}' \
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
    --body '{"bundleId": "EDTVSjINYeKLowG7", "password": "UQB9pXzuCK5qd2m8"}' \
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
    --body '{"sandboxId": "A5axixm9X9TXNhN8"}' \
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
    --body '{"applicationName": "y1PVriIyv9kjuiAG", "serviceAccountId": "iXx47etMikLFggYD"}' \
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
    --body '{"data": [{"itemIdentity": "c2FMbzZoeKagnKf2", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ifzvr9OqTsInGzHF": "pFXYJtHtqwoIwQBe", "IALI8JNIII4jrzrP": "suMziNM8AB7RRxiZ", "H3ngnitURdMjZLYC": "aeklQcFY1QIk1h5E"}}, {"itemIdentity": "KvMGd6hQ2mHjmLu4", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"OGARFDJcGWy826il": "CxAxQUM5DyrPfBmp", "ZIzSFUZqVR5FWGfH": "66eFCMTsLA8vYVvr", "IAEehUV0jsjAyVgx": "S54NNs3XdhMbQX9D"}}, {"itemIdentity": "1znEWw9p7g4UsQCT", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"J4Kj7Qyo9tUptiyZ": "zRX8Y4rxRWZPe4ZL", "AQWuBJwxObZqMGxh": "ffy9cHrLYfftad99", "JDcnn7f2d8SOWP2d": "w6Uy88WpQalG38VO"}}]}' \
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
    --body '{"appId": "o82aLD9jUjuDITji", "appSecret": "fWRbmtK7MTxcCWnM"}' \
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
    --body '{"backOfficeServerClientId": "iCLsjroKHPApA8Gs", "backOfficeServerClientSecret": "GwyocvY9NePjLJQJ", "enableStreamJob": true, "environment": "wUApJWohXn01RB7p", "streamName": "u7BaONXyE5fIDbsM", "streamPartnerName": "i48xOYVvEcEm53BY"}' \
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
    --body '{"backOfficeServerClientId": "MBacQBIuDVs7U0AJ", "backOfficeServerClientSecret": "tWPRteszMTd0R5Fs", "enableStreamJob": true, "environment": "pIbfxVFfdvKQVgPQ", "streamName": "w3MVXe4xBPDWHRHC", "streamPartnerName": "CVDBRjPUQWYVxGQV"}' \
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
    --body '{"appId": "FJlDDJ7z4Pb5jyGI", "publisherAuthenticationKey": "D39Ung1D57FjYKlJ"}' \
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
    --body '{"clientId": "iRIvhej77OSPwdzM", "clientSecret": "SmrSvQdsAdTUGpd8", "organizationId": "KFrXKFA2gdjQCYoE"}' \
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
    --body '{"relyingPartyCert": "8b0CZetLfpFNyp73"}' \
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
    '75rhOmR4zFjoJZVK' \
    'ZjOD2ePKAKYjJMVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'Yj2yKqavWpydepM3' \
    'ap069B9Okr0xJ5XR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'ZVoxPGOLVBIlFgTA' \
    --body '{"categoryPath": "sXgqx3mfB5ZwV25N", "targetItemId": "7NAvZdGuyYEYZE3K", "targetNamespace": "aGSdhEGKcp6g1A8O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '9N9cbYBK6XOBDpR7' \
    --body '{"appId": "SH93AE1Toj5vygVv", "appType": "DEMO", "baseAppId": "SJvdsGpmmUeMikW3", "boothName": "s54zffAL2DZ7gBhy", "categoryPath": "77iRVFfFvWenMNV0", "clazz": "0KVuLF9WDnGO3bpQ", "displayOrder": 99, "entitlementType": "CONSUMABLE", "ext": {"mnS52ZuuuI7F1xpV": {}, "rcoXzSOEGEDYfiGP": {}, "Yo2K3dN3YBOJfvV6": {}}, "features": ["XGj2G0GZ3JBYi9bB", "SuHovoQlk5wL2oXD", "Z20Bw2H4tz6KUC4j"], "flexible": false, "images": [{"as": "BRpdbLCiwxOx2XQn", "caption": "94xPqXhqeNMDGA3O", "height": 4, "imageUrl": "hQAl6U2g9imVMh3i", "smallImageUrl": "7j095rDL6lEuB1ZI", "width": 78}, {"as": "hVCf3AwIzUdQ6sTr", "caption": "Ug7Z0SLrZraV3NLB", "height": 97, "imageUrl": "9GegDnrYz0GFpSVd", "smallImageUrl": "xFsXAp1roclyXllF", "width": 17}, {"as": "jbfCOuW3dBmFwUO7", "caption": "Y0xhMLwxgRpTSUpp", "height": 44, "imageUrl": "tkSn8QRbA5V4gjWv", "smallImageUrl": "1W6cqnvSuKswQ7vH", "width": 66}], "itemIds": ["sd51mDooH53vibq3", "Qcrtt8L5dIebsw7E", "jkMnJSziEA43WqIM"], "itemQty": {"JdrqHIsJ98WRjqYi": 10, "ALjgLZZzLU9w8MJR": 70, "YEHs9TIkcnrJ64BO": 74}, "itemType": "COINS", "listable": true, "localizations": {"5AilVhASFlYMVJtE": {"description": "2dAeC7pF73y9eALK", "localExt": {"WinUJ7bAuUJ7Fxg5": {}, "LijlQTVq8Bh1p0NC": {}, "KWNkLU5ty3uQa7Fl": {}}, "longDescription": "3ZhSMLtrwnjTJVDl", "title": "h112byTYCDBnAvf8"}, "JpFuJSZistM75544": {"description": "PDlVK8taScpV0NtC", "localExt": {"xDDz5rxt6LflBJjo": {}, "kLAaL4oAF2lqx8yn": {}, "eWKrOy4xcg30BqC5": {}}, "longDescription": "W7g7hiwumJTI3jlZ", "title": "PjoCdGiIP6cB3Pj6"}, "3MJXIuLWYb2iHHVN": {"description": "0ZBgvrigXUT4fRba", "localExt": {"wD5yOvjgOopQfbXm": {}, "tF0WFH7F2Inhxtyn": {}, "UjuBCxkb2oF99xI1": {}}, "longDescription": "VVtVrVT6Hn8B2d1h", "title": "ZUnoQwg5uqgoHaFy"}}, "lootBoxConfig": {"rewardCount": 29, "rewards": [{"lootBoxItems": [{"count": 5, "duration": 33, "endDate": "1984-04-13T00:00:00Z", "itemId": "ck0qJsgZPfuelAiZ", "itemSku": "BZcQGHHGI7csI8ec", "itemType": "ZSvzXYOytshBcKQy"}, {"count": 39, "duration": 26, "endDate": "1993-10-23T00:00:00Z", "itemId": "agui6lsKF28n7UC7", "itemSku": "y1MKYVeoGFrDb8un", "itemType": "Xv1iE7YgEZspOJ0N"}, {"count": 17, "duration": 70, "endDate": "1976-08-23T00:00:00Z", "itemId": "6OVLxKtkBpaCG8Nu", "itemSku": "5m4ctwUNV8ncebaJ", "itemType": "0DCuIeEStt3Pbyct"}], "name": "X7HC2haQwVWONEpA", "odds": 0.6734735092457549, "type": "PROBABILITY_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 69, "duration": 52, "endDate": "1993-10-09T00:00:00Z", "itemId": "iXVzrG4EdKn8eypT", "itemSku": "zI497DG0ZNoJvvi4", "itemType": "Ys50iE7IjZoDzMmM"}, {"count": 14, "duration": 2, "endDate": "1978-11-12T00:00:00Z", "itemId": "6jNsM94E2FQb6S0V", "itemSku": "maTR7E3mkDSQkgVM", "itemType": "hLbM6H1MnNSKd0KS"}, {"count": 39, "duration": 77, "endDate": "1988-10-06T00:00:00Z", "itemId": "TvGQtzwjGtGTr238", "itemSku": "G8Aevk3k14782W2o", "itemType": "No3X4m6wms9SPaHl"}], "name": "qtDPry2vMON7sdhl", "odds": 0.1295485618577904, "type": "PROBABILITY_GROUP", "weight": 81}, {"lootBoxItems": [{"count": 11, "duration": 90, "endDate": "1979-08-30T00:00:00Z", "itemId": "4lBToTcn1l44ebrK", "itemSku": "EKdeo779KG5yCz9j", "itemType": "Vs1lYK1Mx9rEFkDq"}, {"count": 3, "duration": 77, "endDate": "1999-07-29T00:00:00Z", "itemId": "cneNLItUJgh74tyx", "itemSku": "kTR8ZCVJtkxjBJrN", "itemType": "eQRsqkkKK2qxqzy4"}, {"count": 75, "duration": 91, "endDate": "1989-08-04T00:00:00Z", "itemId": "M2B9bMohkWsFKIdy", "itemSku": "cYHQcu7JkKBcLFRf", "itemType": "50Y7ME2QmYiYqap7"}], "name": "masUcayqmp7vhz1T", "odds": 0.9382162774689036, "type": "PROBABILITY_GROUP", "weight": 22}], "rollFunction": "CUSTOM"}, "maxCount": 35, "maxCountPerUser": 55, "name": "ZL2CgHxdmYDj9vZN", "optionBoxConfig": {"boxItems": [{"count": 13, "duration": 10, "endDate": "1979-10-13T00:00:00Z", "itemId": "5sJVzaKGDOULJbjH", "itemSku": "phqjHGGAhfWaXqkA", "itemType": "5fuVYOsMFo9tnqa4"}, {"count": 78, "duration": 46, "endDate": "1986-06-17T00:00:00Z", "itemId": "Gg1r4nW4pBcPPaia", "itemSku": "M1og5rxUjGPKKLMo", "itemType": "Ay1stmxPFz0i1IK3"}, {"count": 87, "duration": 53, "endDate": "1999-03-22T00:00:00Z", "itemId": "OwFSebBkXkaxtY97", "itemSku": "TMJH8bO4GDHT6ZaU", "itemType": "UkvlTKAhrxqHw7f8"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 33, "fixedTrialCycles": 71, "graceDays": 81}, "regionData": {"CgWFJZGnNa5yOM68": [{"currencyCode": "r4W1fDZL80oPQ0s7", "currencyNamespace": "QhC8hgSgytNEojK3", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1995-09-27T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1985-03-31T00:00:00Z", "expireAt": "1979-05-23T00:00:00Z", "price": 19, "purchaseAt": "1981-09-01T00:00:00Z", "trialPrice": 69}, {"currencyCode": "XUSINd4keCeiw7P2", "currencyNamespace": "PtUrPawQPaHARrhj", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1986-11-04T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1991-10-09T00:00:00Z", "expireAt": "1992-02-29T00:00:00Z", "price": 80, "purchaseAt": "1980-06-19T00:00:00Z", "trialPrice": 64}, {"currencyCode": "PZGTJmgofq7nlF5C", "currencyNamespace": "h8J2Qs990APOU4hc", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1982-01-26T00:00:00Z", "discountPercentage": 23, "discountPurchaseAt": "1988-04-14T00:00:00Z", "expireAt": "1994-05-31T00:00:00Z", "price": 67, "purchaseAt": "1994-10-29T00:00:00Z", "trialPrice": 0}], "tX6TN5ctYX1sZnYF": [{"currencyCode": "3hWmCCIrP0lJXexs", "currencyNamespace": "eo2e6BCNJTTRIHDK", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1972-02-19T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1994-09-19T00:00:00Z", "expireAt": "1980-05-28T00:00:00Z", "price": 74, "purchaseAt": "1987-07-20T00:00:00Z", "trialPrice": 77}, {"currencyCode": "ZH00n8MsRjaB8iur", "currencyNamespace": "BWW5jSJi0seeGJIq", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1971-06-14T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1990-09-07T00:00:00Z", "expireAt": "1986-12-15T00:00:00Z", "price": 66, "purchaseAt": "1980-04-20T00:00:00Z", "trialPrice": 78}, {"currencyCode": "NWfAY1yY6D1Euusf", "currencyNamespace": "0eOzoSyKttYwUUlM", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1990-11-29T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-06-15T00:00:00Z", "expireAt": "1993-04-14T00:00:00Z", "price": 37, "purchaseAt": "1995-10-13T00:00:00Z", "trialPrice": 31}], "mhOJDUyyag9jBDJF": [{"currencyCode": "JGOEiWJ8cLrryS5a", "currencyNamespace": "6A4tL8YKMrUBL6dD", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1992-12-08T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1978-06-13T00:00:00Z", "expireAt": "1988-06-15T00:00:00Z", "price": 15, "purchaseAt": "1984-05-22T00:00:00Z", "trialPrice": 54}, {"currencyCode": "g2mhbI0NDshb7ZzQ", "currencyNamespace": "uBPyNi1GhZHEj6p5", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1977-03-18T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1976-09-07T00:00:00Z", "expireAt": "1982-07-27T00:00:00Z", "price": 54, "purchaseAt": "1972-09-21T00:00:00Z", "trialPrice": 21}, {"currencyCode": "HqlTTkL8cmpA0sZ0", "currencyNamespace": "tgeR4UV5SMZ8GUvW", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1974-04-26T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1985-04-12T00:00:00Z", "expireAt": "1978-06-30T00:00:00Z", "price": 35, "purchaseAt": "1990-03-25T00:00:00Z", "trialPrice": 44}]}, "saleConfig": {"currencyCode": "H96tuVfQwYIqDWqb", "price": 86}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "wQw8J7na1POTXhXL", "stackable": false, "status": "ACTIVE", "tags": ["VP2Y9WqSRiwV3UZg", "ujZh1fYXF6R9Rz3H", "t54i5hdAezedcppb"], "targetCurrencyCode": "0UJLPMkeUwa6OVKx", "targetNamespace": "CMxuf0P9r5f6fdmy", "thumbnailUrl": "i4kQnOFbBtvBw81h", "useCount": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'hftIfe2zdqZ7ht1v' \
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
    'UiJ7jBXy8psNoHNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'lwgvju62rPFMbE1c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'W57GaNZLT1z0GqDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'N7ftHOhVy48YYg1A' \
    'kRh3NmbRhMxKeIgw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'q1NZmxa0ghRG020Q' \
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
    'pWTNKsVyK8EU8JYc' \
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
    '00PA2ef1jFeqQ8mB' \
    --body '{"itemIds": ["pTuvLTJUzwXJFaWW", "3JVdYpfHOYoLva2c", "4JscEQfBFZXcSXpU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    '81S5H9XsZyvZOFJ5' \
    --body '{"changes": [{"itemIdentities": ["RrFZYcwfQ1Q2Bbcj", "Spv6Nt1oz4tdgfKu", "4bmK8kOKcEoCRjQJ"], "itemIdentityType": "ITEM_ID", "regionData": {"NZKqlJZsdnY04DIy": [{"currencyCode": "osprZPBaERb7U9kK", "currencyNamespace": "4VctUmDhFVNa0JYz", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1999-01-23T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1997-11-25T00:00:00Z", "discountedPrice": 63, "expireAt": "1978-05-31T00:00:00Z", "price": 62, "purchaseAt": "1974-01-02T00:00:00Z", "trialPrice": 2}, {"currencyCode": "rWP4nrJ5fNESRVGe", "currencyNamespace": "swvkzLNIITUJGj5F", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1972-12-31T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1974-01-10T00:00:00Z", "discountedPrice": 9, "expireAt": "1980-07-06T00:00:00Z", "price": 60, "purchaseAt": "1990-12-25T00:00:00Z", "trialPrice": 69}, {"currencyCode": "DLxWgEWwoHpV8E1x", "currencyNamespace": "QZLa7Kw77UpCxNyx", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1976-09-28T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1983-11-18T00:00:00Z", "discountedPrice": 9, "expireAt": "1992-12-05T00:00:00Z", "price": 60, "purchaseAt": "1992-07-30T00:00:00Z", "trialPrice": 45}], "J6Z9UzqIhZZiK0QE": [{"currencyCode": "G6C9w4lVRNOF1Bg6", "currencyNamespace": "OHZzvdZHoIm4tKNh", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1991-11-17T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1992-12-13T00:00:00Z", "discountedPrice": 66, "expireAt": "1996-09-12T00:00:00Z", "price": 48, "purchaseAt": "1977-09-26T00:00:00Z", "trialPrice": 100}, {"currencyCode": "wgnSiZtChE0uof77", "currencyNamespace": "AAPI5tdPeFz9pGYs", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1987-12-13T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1994-02-07T00:00:00Z", "discountedPrice": 70, "expireAt": "1983-05-14T00:00:00Z", "price": 83, "purchaseAt": "1979-01-11T00:00:00Z", "trialPrice": 69}, {"currencyCode": "R55tV0BlN1iFvw0G", "currencyNamespace": "SLBmie8SJckSRbu7", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1974-03-21T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1994-05-01T00:00:00Z", "discountedPrice": 26, "expireAt": "1986-03-10T00:00:00Z", "price": 89, "purchaseAt": "1983-07-18T00:00:00Z", "trialPrice": 59}], "bXY4v7JRFMRaeIaQ": [{"currencyCode": "uPWPlkxeotrNakKG", "currencyNamespace": "vOSvpmZZdlNXdx2k", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1994-05-03T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1990-04-30T00:00:00Z", "discountedPrice": 6, "expireAt": "1973-11-25T00:00:00Z", "price": 92, "purchaseAt": "1997-04-25T00:00:00Z", "trialPrice": 14}, {"currencyCode": "ds1zdVT0aWj58Oth", "currencyNamespace": "vd3jzMDAf40gKSiz", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1977-07-14T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1980-12-06T00:00:00Z", "discountedPrice": 38, "expireAt": "1975-02-27T00:00:00Z", "price": 69, "purchaseAt": "1977-12-16T00:00:00Z", "trialPrice": 50}, {"currencyCode": "vRAPG9JoVSLrbs5n", "currencyNamespace": "iXkjpkOgRCC7qfz5", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1995-02-08T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1991-04-25T00:00:00Z", "discountedPrice": 93, "expireAt": "1991-12-20T00:00:00Z", "price": 71, "purchaseAt": "1977-01-27T00:00:00Z", "trialPrice": 74}]}}, {"itemIdentities": ["9FJJ10goNq8uq79D", "u28SRRAMaQFEzppe", "ticckSUon7awfol0"], "itemIdentityType": "ITEM_SKU", "regionData": {"696uxp5ieMjjOfFS": [{"currencyCode": "x3AJN97kUjwiCmWQ", "currencyNamespace": "vbrxQpUSnos6QiHy", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1980-09-21T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1981-12-25T00:00:00Z", "discountedPrice": 45, "expireAt": "1995-06-15T00:00:00Z", "price": 15, "purchaseAt": "1990-03-19T00:00:00Z", "trialPrice": 25}, {"currencyCode": "73EtufHuNIp0GXpM", "currencyNamespace": "4nbG7aww2TANW1Or", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1972-06-26T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1990-04-25T00:00:00Z", "discountedPrice": 70, "expireAt": "1990-04-06T00:00:00Z", "price": 46, "purchaseAt": "1989-07-01T00:00:00Z", "trialPrice": 89}, {"currencyCode": "HoRMNexBOron8wId", "currencyNamespace": "Ubp7xVMKfbAJfW4i", "currencyType": "VIRTUAL", "discountAmount": 71, "discountExpireAt": "1994-08-17T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1984-11-16T00:00:00Z", "discountedPrice": 8, "expireAt": "1994-02-01T00:00:00Z", "price": 28, "purchaseAt": "1972-03-03T00:00:00Z", "trialPrice": 100}], "hkME18qGpSsyEPDW": [{"currencyCode": "HcqfYp2EFxEaEHCG", "currencyNamespace": "tg812NQb5Glh8srT", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1994-08-13T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1994-04-12T00:00:00Z", "discountedPrice": 100, "expireAt": "1972-03-15T00:00:00Z", "price": 98, "purchaseAt": "1980-04-17T00:00:00Z", "trialPrice": 96}, {"currencyCode": "6O3vbYVjrcErgoAp", "currencyNamespace": "AxyDnHjAx7rZTvew", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1978-11-13T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1991-05-19T00:00:00Z", "discountedPrice": 35, "expireAt": "1989-01-18T00:00:00Z", "price": 22, "purchaseAt": "1990-11-21T00:00:00Z", "trialPrice": 98}, {"currencyCode": "xLWH6rjhRL9uxoV5", "currencyNamespace": "Oe8ktlePEo1xBuRS", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1988-03-12T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1984-02-23T00:00:00Z", "discountedPrice": 30, "expireAt": "1981-11-26T00:00:00Z", "price": 73, "purchaseAt": "1996-04-02T00:00:00Z", "trialPrice": 59}], "y9cQ6B074dTJZqeO": [{"currencyCode": "llKQNwJUGtC0tAhx", "currencyNamespace": "n1ay6ruu7PYWHODR", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1980-02-21T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1986-11-27T00:00:00Z", "discountedPrice": 93, "expireAt": "1975-06-13T00:00:00Z", "price": 23, "purchaseAt": "1979-02-16T00:00:00Z", "trialPrice": 98}, {"currencyCode": "FGnQCAWidWPjYgye", "currencyNamespace": "bU6rHFirnUpZ9UJ4", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1989-09-27T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1994-12-15T00:00:00Z", "discountedPrice": 67, "expireAt": "1995-01-22T00:00:00Z", "price": 86, "purchaseAt": "1977-07-09T00:00:00Z", "trialPrice": 6}, {"currencyCode": "gE4bwLzDEw2PYt8x", "currencyNamespace": "9SSaOZcEvG6KZh95", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1977-05-07T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1975-06-16T00:00:00Z", "discountedPrice": 60, "expireAt": "1988-06-29T00:00:00Z", "price": 64, "purchaseAt": "1999-03-31T00:00:00Z", "trialPrice": 32}]}}, {"itemIdentities": ["lfSUnaUhC4x11AS2", "jTKoTYeHaCuN7zpX", "9vp4QJdCrwkz0nw2"], "itemIdentityType": "ITEM_ID", "regionData": {"JglScoOlkkBxiXf8": [{"currencyCode": "OBQRqXWXQ3JdXdFz", "currencyNamespace": "8pc0EEziE5yIvijq", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1983-12-29T00:00:00Z", "discountPercentage": 83, "discountPurchaseAt": "1991-06-19T00:00:00Z", "discountedPrice": 25, "expireAt": "1978-07-04T00:00:00Z", "price": 57, "purchaseAt": "1975-09-02T00:00:00Z", "trialPrice": 12}, {"currencyCode": "qqSctLL4WfGq8JCD", "currencyNamespace": "nwGWgccuzuc6QDRM", "currencyType": "REAL", "discountAmount": 6, "discountExpireAt": "1983-08-17T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1987-01-11T00:00:00Z", "discountedPrice": 95, "expireAt": "1990-07-19T00:00:00Z", "price": 83, "purchaseAt": "1988-05-01T00:00:00Z", "trialPrice": 92}, {"currencyCode": "ak8CYp6DPdukc04j", "currencyNamespace": "6rbfBuKBco1AeO3y", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1982-05-20T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1980-11-08T00:00:00Z", "discountedPrice": 45, "expireAt": "1997-12-03T00:00:00Z", "price": 88, "purchaseAt": "1985-10-01T00:00:00Z", "trialPrice": 41}], "3rNhDepQum4Dj7pR": [{"currencyCode": "05RTGXGRkYXifTd5", "currencyNamespace": "nAOF9VV7JgCOm4wL", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1986-10-04T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1989-12-30T00:00:00Z", "discountedPrice": 53, "expireAt": "1978-08-20T00:00:00Z", "price": 93, "purchaseAt": "1972-08-26T00:00:00Z", "trialPrice": 71}, {"currencyCode": "EFcf2doBrfHiHXXg", "currencyNamespace": "vu496H02yOVN1h41", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1980-12-09T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1991-09-03T00:00:00Z", "discountedPrice": 80, "expireAt": "1990-04-16T00:00:00Z", "price": 42, "purchaseAt": "1990-02-10T00:00:00Z", "trialPrice": 6}, {"currencyCode": "ZPWSe20JfNvtNcWt", "currencyNamespace": "pUkw98x3tMM1bFFD", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1987-10-24T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1986-01-18T00:00:00Z", "discountedPrice": 79, "expireAt": "1988-10-18T00:00:00Z", "price": 6, "purchaseAt": "1999-04-05T00:00:00Z", "trialPrice": 11}], "0DetCeJ4x0wf5mQx": [{"currencyCode": "6Hs7M5apPMc8ZR3b", "currencyNamespace": "PCJ5n5s6DODBmrqE", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1986-04-01T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1976-10-03T00:00:00Z", "discountedPrice": 63, "expireAt": "1973-04-12T00:00:00Z", "price": 9, "purchaseAt": "1987-01-30T00:00:00Z", "trialPrice": 11}, {"currencyCode": "CbwodVRjZJWuCQpj", "currencyNamespace": "uJzpPO7BPxVWlRFn", "currencyType": "REAL", "discountAmount": 0, "discountExpireAt": "1976-05-20T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1990-12-16T00:00:00Z", "discountedPrice": 49, "expireAt": "1985-01-14T00:00:00Z", "price": 8, "purchaseAt": "1991-01-15T00:00:00Z", "trialPrice": 43}, {"currencyCode": "menxguw5bO8Vh4Ja", "currencyNamespace": "KYAsoMlLJGMl5xFg", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1981-03-19T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1981-08-25T00:00:00Z", "discountedPrice": 92, "expireAt": "1973-03-02T00:00:00Z", "price": 59, "purchaseAt": "1990-10-30T00:00:00Z", "trialPrice": 65}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'Du6PA3PRnQtB410i' \
    'WT0SILVGXCWRucRp' \
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
    'P1Tq7uYXhB6FPfF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'DvveMdBsPt19V2Fk' \
    'BPk0QLufK6eiT38r' \
    --body '{"appId": "aaRG1Fg0hfM5vQma", "appType": "DEMO", "baseAppId": "A1wo9IAxV5C71gTw", "boothName": "8BJPFctwUMCRdxXO", "categoryPath": "Bu3TWmHDVmCGFoD7", "clazz": "aNFj9wORAVqRuNsX", "displayOrder": 48, "entitlementType": "DURABLE", "ext": {"kVk7F1KKOfFFLvER": {}, "3xqCwUgKa4oCBoJD": {}, "xGa1UuSr4ehnV8Aw": {}}, "features": ["QUwVdPsArkepfK0D", "9m6GvDSE2F7Ad69D", "ln4mqFhgKKcGohdj"], "flexible": true, "images": [{"as": "YLk9DmjJh6PnpTXW", "caption": "AUt8lgqNM4poGEvI", "height": 75, "imageUrl": "HMrv8zABDhYAVxvs", "smallImageUrl": "3ugNvvgI2k1P9nQx", "width": 53}, {"as": "i2uztFNfXg0UvwaZ", "caption": "0py16ShGomFzUapp", "height": 1, "imageUrl": "djjZpFnVLb7xerpj", "smallImageUrl": "VPfktNnl8UYH5kes", "width": 41}, {"as": "EnaycYsKkgX0RMDx", "caption": "vlK9RnTEYv5eDhCx", "height": 45, "imageUrl": "HEAKhp612Y2ncRf7", "smallImageUrl": "tEGzYqRoHm6EtyXq", "width": 87}], "itemIds": ["OK1RqtKYVObVorIV", "WWLaVJwe2KAca1aK", "eXUu9hINqKvoYKio"], "itemQty": {"4M51vuaFyqjQsTGm": 52, "IkuW6jjofc6itDEs": 33, "yivYbMG9LXPbBh2E": 7}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"FchP3zTymfVfny2M": {"description": "0KsS08cY3fjI1YTT", "localExt": {"3qUMd0U73RjVeYSM": {}, "479gn62lizsWGrtI": {}, "gVPb7hoo8YkNPW8m": {}}, "longDescription": "WOJGtdXJGDsxRAR3", "title": "NObYp43YXMHqWeVj"}, "nOURxGvOhz9s7ktW": {"description": "kJDaHg6kDVjxhxRx", "localExt": {"jeDrqCfJEjrqJkFo": {}, "ZFZex0eOw31PXkVn": {}, "etcvAuim14Wdh1qK": {}}, "longDescription": "oSDBbyqlJyfVgaW6", "title": "ziZF6ijZzA3MkosO"}, "coAcV0T2G3vQZNiq": {"description": "aXzRBra3I4K9iBdl", "localExt": {"jXtowifBfAw30kOy": {}, "kBuDJ0IPQeAL4MZw": {}, "EVJe7waGyB6g2M5J": {}}, "longDescription": "iwtMOfDfoMgU2yFB", "title": "TPfnmfN5E20ORMCV"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 47, "duration": 93, "endDate": "1997-05-20T00:00:00Z", "itemId": "YnGcrZHMKoTcIXeK", "itemSku": "ZzZBo6ARaQnNZQ1R", "itemType": "0PGBFVnc37aWVjM3"}, {"count": 18, "duration": 30, "endDate": "1995-08-05T00:00:00Z", "itemId": "Kjr5VDqakKdW767G", "itemSku": "AH1oiS1JuO7MNoFP", "itemType": "tRhYYIpNqVHbbCVw"}, {"count": 2, "duration": 80, "endDate": "1975-03-11T00:00:00Z", "itemId": "tD5tWXZVvjYqrEXK", "itemSku": "UDlmtixw9FtBVAWT", "itemType": "8PxL8674KYMeN2W2"}], "name": "CNqmO8JALtCiDuGQ", "odds": 0.6872558337386987, "type": "REWARD", "weight": 43}, {"lootBoxItems": [{"count": 99, "duration": 29, "endDate": "1995-07-02T00:00:00Z", "itemId": "NSjXUXSMKY09x4TK", "itemSku": "OwsyRNnaLNhw0xGn", "itemType": "Xc29UDQxeiBo2hB9"}, {"count": 41, "duration": 88, "endDate": "1998-01-01T00:00:00Z", "itemId": "v1POCjseK1xaSbMj", "itemSku": "yFrYsITcyT5AhNNH", "itemType": "0Ht1yPtBwXIuYrbP"}, {"count": 95, "duration": 5, "endDate": "1978-06-23T00:00:00Z", "itemId": "g8ps5XknDJZK5gFH", "itemSku": "yIOnLu9WBAS0qUsw", "itemType": "y0AnJZJdKrIn9hHH"}], "name": "Gg1cTZsJp1b5yB8c", "odds": 0.9927192258336223, "type": "PROBABILITY_GROUP", "weight": 21}, {"lootBoxItems": [{"count": 58, "duration": 86, "endDate": "1987-09-16T00:00:00Z", "itemId": "nyPFQHgn9jVE6QGk", "itemSku": "Z8AVzeiaDi67E3rT", "itemType": "wN2LrT85Arfe6Ewe"}, {"count": 73, "duration": 97, "endDate": "1983-03-20T00:00:00Z", "itemId": "WANt1bDay64EnFyF", "itemSku": "eW0oNhddKrrhzwz2", "itemType": "PFXC33KjLNUFQJgC"}, {"count": 100, "duration": 4, "endDate": "1995-04-16T00:00:00Z", "itemId": "dj8I5eVnflH2hnMV", "itemSku": "6Yxtl5DKUhjBy9oW", "itemType": "PcMIQc5lRQojhJgp"}], "name": "XVCubdw0sPrgDKqH", "odds": 0.46068674317793834, "type": "REWARD", "weight": 48}], "rollFunction": "DEFAULT"}, "maxCount": 68, "maxCountPerUser": 24, "name": "TdTLCxJqK7dgsgrn", "optionBoxConfig": {"boxItems": [{"count": 31, "duration": 86, "endDate": "1995-08-02T00:00:00Z", "itemId": "E1acxZoDXdPORkWk", "itemSku": "yTcJzvDUlhTlBNpv", "itemType": "kjg48iVKCqEqeZP1"}, {"count": 58, "duration": 90, "endDate": "1987-04-25T00:00:00Z", "itemId": "aMkJVBkZU3qtk0dM", "itemSku": "4GZGiSutb6wUxEik", "itemType": "RyHC9VWMnzbuNQNJ"}, {"count": 49, "duration": 59, "endDate": "1984-01-11T00:00:00Z", "itemId": "EpR44fWWEsCETqKl", "itemSku": "cFcaL6XOoO3WqBsb", "itemType": "DmsTk9UuiQwezvAr"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 75, "fixedTrialCycles": 15, "graceDays": 73}, "regionData": {"GMOB4HFIzTlGBnpL": [{"currencyCode": "Bd02br9OfMbjgS5W", "currencyNamespace": "jduKixzScfrHzGYC", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1972-10-14T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1977-08-27T00:00:00Z", "expireAt": "1982-08-16T00:00:00Z", "price": 59, "purchaseAt": "1983-07-09T00:00:00Z", "trialPrice": 89}, {"currencyCode": "K6laOkeLBcprByjU", "currencyNamespace": "r7w9w1xKUrLmQSku", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1990-12-19T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1983-10-08T00:00:00Z", "expireAt": "1983-02-06T00:00:00Z", "price": 50, "purchaseAt": "1979-07-24T00:00:00Z", "trialPrice": 31}, {"currencyCode": "rZIV9M22gRLsc6Jw", "currencyNamespace": "t190s6yFiDZs0wyl", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1971-08-27T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1973-09-04T00:00:00Z", "expireAt": "1994-04-14T00:00:00Z", "price": 40, "purchaseAt": "1984-05-29T00:00:00Z", "trialPrice": 92}], "JeRMYUCgn7oklNew": [{"currencyCode": "pAIwtlAooXZ7HDb8", "currencyNamespace": "g2BhzW03O2pp9qVp", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1980-07-30T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1989-05-07T00:00:00Z", "expireAt": "1993-05-18T00:00:00Z", "price": 37, "purchaseAt": "1993-08-14T00:00:00Z", "trialPrice": 54}, {"currencyCode": "WQ7RdYqZaQ8swcFO", "currencyNamespace": "shiWEFDMG99v5LSS", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1976-06-01T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1997-04-22T00:00:00Z", "expireAt": "1991-08-05T00:00:00Z", "price": 47, "purchaseAt": "1971-07-24T00:00:00Z", "trialPrice": 36}, {"currencyCode": "pw6F21uYowkPNGAN", "currencyNamespace": "jli9XZkbrkh3dQNt", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1982-07-01T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1985-04-14T00:00:00Z", "expireAt": "1972-06-19T00:00:00Z", "price": 10, "purchaseAt": "1973-12-13T00:00:00Z", "trialPrice": 98}], "mWjX540aN2pvOi5U": [{"currencyCode": "G7agVhXIgoHE9eEv", "currencyNamespace": "IyV2DqxWhSV3r9vk", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1993-03-06T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1982-03-12T00:00:00Z", "expireAt": "1979-02-11T00:00:00Z", "price": 72, "purchaseAt": "1991-09-13T00:00:00Z", "trialPrice": 73}, {"currencyCode": "HP7HM6JB2P6ZjZh9", "currencyNamespace": "eggvvmXZU7lVGZ6l", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1972-02-10T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1992-08-26T00:00:00Z", "expireAt": "1989-02-13T00:00:00Z", "price": 54, "purchaseAt": "1989-07-10T00:00:00Z", "trialPrice": 37}, {"currencyCode": "srX7OiSRs0z2RYA8", "currencyNamespace": "fTlbfUOSmR4F0p5g", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1991-03-31T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1982-02-19T00:00:00Z", "expireAt": "1992-07-12T00:00:00Z", "price": 48, "purchaseAt": "1995-05-03T00:00:00Z", "trialPrice": 42}]}, "saleConfig": {"currencyCode": "JnAJSu3MX2yYJopK", "price": 48}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "MtXYGoZGkBNXT0fe", "stackable": true, "status": "INACTIVE", "tags": ["7KKPXunBZiqYaReD", "04717oGCmrTUcZy3", "DDSxpWZV6J5QloYC"], "targetCurrencyCode": "aB5ImpxpHJCcuqJR", "targetNamespace": "2TT3HEYBW8Aq2KVQ", "thumbnailUrl": "NFGaJEyBVlQ5iHlT", "useCount": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    '6kOUZXQKRTVR95Iw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'PCb2qOuIRbBL0njC' \
    --body '{"count": 2, "orderNo": "gFcJQkYueQLLJPh6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'HpodpzuBQwTS66qr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '03Mp14S8HG9ID7mZ' \
    '4eKHaAP4PYToJAMg' \
    --body '{"carousel": [{"alt": "JkC8UGlqb7cexeEh", "previewUrl": "Hz7OKYNIMPTFnrby", "thumbnailUrl": "sdru1PotArVtIQyx", "type": "video", "url": "c6onXfoDvjI9jfJF", "videoSource": "youtube"}, {"alt": "6Ar6ZMGUI9Z0Fol6", "previewUrl": "5yD1dLBQJcBsvUaK", "thumbnailUrl": "2iHOkgyhgijqtdzr", "type": "video", "url": "3FQpfFWm8VMHjC8q", "videoSource": "vimeo"}, {"alt": "PqYBJTzlt302k4rd", "previewUrl": "WgWYgFgw3mGmogCJ", "thumbnailUrl": "XjHTGhyemqqwoT44", "type": "image", "url": "DX6xwuD6giqKLavC", "videoSource": "youtube"}], "developer": "Jfe5YAYJeb1GUdtB", "forumUrl": "5G8NITA0g58cqZn7", "genres": ["FreeToPlay", "MassivelyMultiplayer", "Action"], "localizations": {"2grirdqELbdqXaPl": {"announcement": "AMGm4h3PbLHDa7uq", "slogan": "aaxqXPKuNAeKKjcK"}, "gU263PawPB10d4KC": {"announcement": "tC9mqs8uXBZ2Kxk4", "slogan": "a5FeKFm3raYpWl0M"}, "fF3iAQb4Iiy26m51": {"announcement": "AwCv4UKmP7eczfnY", "slogan": "gOqXhJZ6DIokID1Z"}}, "platformRequirements": {"Fk9fRCHfId0Dhnin": [{"additionals": "8RxnO0qs4FykFXDd", "directXVersion": "cUuEE9wh4CEOrPY2", "diskSpace": "9A1L1Xijb7GTIFWc", "graphics": "ZWKcGHG9MBp1AEcN", "label": "UzfWwpdraZO1lfHz", "osVersion": "X5CHNiYaLYUlRZSL", "processor": "j5xwmP8QMJJJn2Lq", "ram": "w6aiKZbUJQ92BTVi", "soundCard": "MMFji1GmfmwhN25x"}, {"additionals": "GSRRZnwlbMGheYVt", "directXVersion": "eLiiIKPjokv6HMQO", "diskSpace": "ekLKHziTw5M3Kvzp", "graphics": "UEcp3cp4fWJlLrbV", "label": "QceKy5JZK1rVpGdp", "osVersion": "zlwFNJyyLozi8eBq", "processor": "PD6pfcv9jGr7b2hH", "ram": "baUEtBnsggbEVNmy", "soundCard": "mBNr5C2BOjUiOQVE"}, {"additionals": "bp3z13pDy371QLVt", "directXVersion": "Db6RZXatSimmKudq", "diskSpace": "URkyz4E3EI1bSCYa", "graphics": "a8JSNQdhrnvuDGFi", "label": "T4U6WQQwsTHCgTvr", "osVersion": "GllrcttK4WgzdUhB", "processor": "2YhKWidqRPQ1hSmS", "ram": "hNaSmVFsmFW74Dka", "soundCard": "bvmYAT6qTg6ZOaTN"}], "C1LAentTXWyBmb2I": [{"additionals": "r2yOaVvE1N52Pwde", "directXVersion": "TQhMz99aZ3fza0rl", "diskSpace": "zqNhVNwgXBCZr4m1", "graphics": "UpizE7fm00IB0YnQ", "label": "5xpjcMxUGokG4VQK", "osVersion": "R0ItcCnXFRjhk7tz", "processor": "IHqZpgJqlw441XUf", "ram": "p7AVnf8BzBBqEvMt", "soundCard": "Jopw2r5pKsXnIYkK"}, {"additionals": "H6MNrEsOlIFw6Fqa", "directXVersion": "6YXBlVXOvZUgW2ZM", "diskSpace": "VJhOyVaO1sgnJF31", "graphics": "EULHtVtkZrE0YPmt", "label": "E6fcv3nPROvD1Fiq", "osVersion": "EUhsD6QxKzbZ7xvb", "processor": "LKNa3OJMFdrQmX2O", "ram": "FLws9RV6lY9IGsZj", "soundCard": "UsSUE7NuCYEOWNkg"}, {"additionals": "Ufe6pVMS5m8aRIev", "directXVersion": "5s4q7UwwraCDr326", "diskSpace": "Q66cxtjNTXsCsfA2", "graphics": "pIWzC6nrUavXt7t0", "label": "llsH39PXWtk222GY", "osVersion": "7L58lP7drhfBjZFg", "processor": "aGUfhy5TZFoyfZ0X", "ram": "fCxPDcH66JWKmTRq", "soundCard": "rvfJIrFQWIDC6PHV"}], "snUueYd49OFDlbdI": [{"additionals": "rxqxAtw8vLsYBHN6", "directXVersion": "M7OpcFqK4FBJG8Bf", "diskSpace": "uSzytkPE6mw3Zv0z", "graphics": "D14WsQt5oimAfS3S", "label": "h33TufYVdPwYmvZk", "osVersion": "T3zo8gxMqM1wUdXs", "processor": "MjUbhRjnDrYWlRfP", "ram": "pgHg36d9NP5nNvzI", "soundCard": "lwtYI9wKX9V1XxF2"}, {"additionals": "CFfEpf0qN2twLYXq", "directXVersion": "4HSEGpaUMmdPXWaJ", "diskSpace": "Rdn3WMdrhlWqCc54", "graphics": "JfyGzMMHiVQ6covY", "label": "DuI4l1d9YaLVuL1m", "osVersion": "LP65pId36F25c13P", "processor": "NqPn7XRlnqiWP9WW", "ram": "QMGmm0biVjE8A3Es", "soundCard": "Oz8LDnxgL0t7Qhdw"}, {"additionals": "4vmSxnJcyaijSCsF", "directXVersion": "a6ipRu1AaFjz0yLe", "diskSpace": "lzMzWiPzugdDu6rx", "graphics": "Iv2ZMtZX5KZK53tX", "label": "2oxmEDDgGBgPWHmO", "osVersion": "LBLlsw2pDJDLeJwz", "processor": "bVEEQ0D6RcLpRxXC", "ram": "StzvOyY1tNKAVWv5", "soundCard": "cGRm3WTx0oyOryce"}]}, "platforms": ["Linux", "Linux", "Linux"], "players": ["Single", "CrossPlatformMulti", "Multi"], "primaryGenre": "Racing", "publisher": "BAZlvnOJeNxZdT1f", "releaseDate": "1997-09-05T00:00:00Z", "websiteUrl": "JTutZpZZn6egDbFD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'XW3N42ccGURTnJUd' \
    'R3MUQnEeANANjqBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'fMMU89e6CIBWn2Q3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'kMtF5tiwPCAxM9oF' \
    'cQUp7hrvKVNdGrr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'TTTiTt8oRoQRf0A1' \
    'eAJUZSjWUPA9vXrq' \
    'LxUCyNQUITTM8jU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'tfr6NkPjb60b0Y8R' \
    'DVgsQzaeOv7xB8Gl' \
    'NYJeVVZQH5C76Gae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'CobrGOAvaYctXd3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'NOlJBjBMsJisMu1k' \
    'QcGm0x3DmUahjPVD' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 39, "comparison": "isGreaterThan", "name": "IeslnM3lJQMDxu7A", "predicateType": "SeasonPassPredicate", "value": "YDgNe1RyydtCBznu", "values": ["3BT2fe68sGXFylcw", "oCMa2D9QtE0TKRHu", "kM2BVMu418S3o2DK"]}, {"anyOf": 24, "comparison": "includes", "name": "Ap8kt8156L7Wl7Uf", "predicateType": "SeasonTierPredicate", "value": "fzK1gMLvJ1KqSZCa", "values": ["pydGfNnNFMfXpIPl", "psDX7CWEoHK3yLZS", "nZaGzamJ8JZ6lV9z"]}, {"anyOf": 5, "comparison": "excludes", "name": "8tiF7mi3iOrnB83a", "predicateType": "SeasonTierPredicate", "value": "h6dNfg9f25YsZ1L6", "values": ["nfHWyBg5c3Wq2dGy", "ULXQMirzwMshTQYU", "IGHuO7u2tOUpmu6z"]}]}, {"operator": "and", "predicates": [{"anyOf": 82, "comparison": "isNot", "name": "o40eCb82j4OhaAiW", "predicateType": "EntitlementPredicate", "value": "g6MaoVcixj92JkMW", "values": ["u88WyRMMRloXySTO", "9W3BEI4eB0PHoEfI", "uFc2x9p8sArSRypv"]}, {"anyOf": 8, "comparison": "isGreaterThan", "name": "FP0QarAdoCQoVI26", "predicateType": "SeasonPassPredicate", "value": "oEptJsPYgvPnAlN2", "values": ["Any29oO2B8osfAcB", "6Pd2uPwzliHiPYuw", "mJeW1LQJ8A7NZLQP"]}, {"anyOf": 94, "comparison": "isGreaterThanOrEqual", "name": "XJrOgVnrneQPU35u", "predicateType": "SeasonPassPredicate", "value": "QGkwoIQo88hLxgR5", "values": ["8GVL2TVivHbcJX1m", "AJVEz4FiSPgU3FLs", "6LbIwwxFBW1RyUyU"]}]}, {"operator": "or", "predicates": [{"anyOf": 72, "comparison": "is", "name": "4BtZCHdlmOzx9Drw", "predicateType": "SeasonTierPredicate", "value": "mHHU4T74NkroVwJF", "values": ["OeLu9OVb7aBijwHP", "vn7MyjPjMUoUC9cU", "RFLnsSyJhQApjt9V"]}, {"anyOf": 51, "comparison": "isLessThan", "name": "2UVRJN0qFJaGDiDm", "predicateType": "EntitlementPredicate", "value": "utBjVUos6ZMGM14H", "values": ["6nMhhSCXGzZMdNwU", "OlHrqyBElA4m1Ywb", "49GbRHeTMH4jK8hW"]}, {"anyOf": 5, "comparison": "isGreaterThanOrEqual", "name": "kFXnGtw8AuvUND3d", "predicateType": "SeasonTierPredicate", "value": "qx2h93yz3Y7YtgdQ", "values": ["rMeP7fy5Y0RiyzWJ", "ZAZHklGmHH8I1l3x", "MhzpcpwawMF0j9Ii"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'goVyEemJDvokY7UU' \
    --body '{"orderNo": "VCHGWcVrHG4ehIhJ"}' \
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
    --body '{"description": "k597xUXpiOLFQFxY", "name": "4AHLzQnClUtkXb0S", "status": "ACTIVE", "tags": ["SK5Yx6dbDNBB9LNz", "iCP1xQygVqAioKka", "1tx56AwxAJU0XOoX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'FpKZ7smOvhTDIdO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'ugOFZPtLUvuPK7wB' \
    --body '{"description": "mEY4lD14f0XIJh3u", "name": "xrBGEumeTG434Dml", "status": "ACTIVE", "tags": ["fnjlMfDJxP4S8TNh", "XBTiwS2sBodn1p1M", "JrZv1itpBPRbtgUM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'FAcxhrY80cxjAXFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'LYQX2ryH4oq6fdhz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'arU0VtmwcYLuVxqv' \
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
    'aL6vdJr0yQVV1r0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'ACcKuAd2SElOn16d' \
    --body '{"description": "w0nzH9XMG2c5BWrz"}' \
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
    --body '{"dryRun": false, "notifyUrl": "J0Lj0VNzr8kTl05o", "privateKey": "iubu5HHlb7VI1cHN"}' \
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
    --body '{"currencyCode": "U3pvbpyJTgwl3ZOM", "currencyNamespace": "pzNQDtQNlDFMazvR", "customParameters": {"X5v3UCobMU8bzcaf": {}, "0Qv0dFMnEcDHueqA": {}, "KTjdRpgYeuitqLYJ": {}}, "description": "7E9mP2Be9WZ9kuWM", "extOrderNo": "nRcGzbD5iC34s0kT", "extUserId": "iXwPjN8E3wXz4Q1L", "itemType": "CODE", "language": "wb_323", "metadata": {"DVUYo37I8Mgh1DJA": "Rpi5KzpbDPfXdGvo", "drl6UOwYZJq3OJhz": "lgtX87XuWOIpQwpt", "cvroohLb6q3F16PO": "9YdwqEszRnwVX2rv"}, "notifyUrl": "Vr6DpLOyrgsLZV9a", "omitNotification": true, "platform": "AD9xM9T3YcYFOYma", "price": 1, "recurringPaymentOrderNo": "JosSHLipk5N6e79z", "region": "CfL2ar4zJmB2wifD", "returnUrl": "A7LpND5zXLhrmEeB", "sandbox": true, "sku": "2hT9UYbm2BWjzlqI", "subscriptionId": "A8csXOpDTl6yIwkT", "targetNamespace": "TCLlRCEQSp3XwOSN", "targetUserId": "JT3B5f3ynPDyKkSY", "title": "IIOqTjadq7tSbuLa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'mxL9Ltl0k2ZOJHBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'YPNYKWhYLsAlPZs4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'v14XFGIVeBHRe7JB' \
    --body '{"extTxId": "lzH9CrXX7cBfnjlf", "paymentMethod": "FFTD6KSEeAEd96gz", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '6EuVZznqQVYO5728' \
    --body '{"description": "Ri3CuA2GelFQyuDW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'vfe4Hp9aCLekZch7' \
    --body '{"amount": 2, "currencyCode": "Znpxmzs0AQYJnB9w", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 21, "vat": 74}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'op7LL7Yqjh4lgGGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Oculus' \
    --body '{"allowedPlatformOrigins": ["Twitch", "Oculus", "Other"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'IOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'GooglePlay' \
    --body '{"allowedBalanceOrigins": ["Steam", "Playstation", "Twitch"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'IOS' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --body '{"appConfig": {"appName": "Yms9fuih2WMLldox"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "LZHiFEo5sDrk8BZ0"}, "extendType": "APP"}' \
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
    --body '{"description": "B86NKZ0tkEWAqM0E", "eventTopic": "ZhtIp1XL7HL2nKoP", "maxAwarded": 52, "maxAwardedPerUser": 47, "namespaceExpression": "xvCGS2mYl0sA87gQ", "rewardCode": "x9kL8a1tEpNGaoJW", "rewardConditions": [{"condition": "jZSpZNjdKHqDX1jG", "conditionName": "g2X6VHZOulL5KfkS", "eventName": "A0amHSK4Sz7fbw7c", "rewardItems": [{"duration": 13, "endDate": "1975-10-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "vIEPvqjKVvPP5x3g", "quantity": 11, "sku": "Q2kChyafmo2nIKr9"}, {"duration": 20, "endDate": "1991-05-22T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "AqnaH49QFksDAGUg", "quantity": 97, "sku": "3PEWI0N4k2W2caqa"}, {"duration": 89, "endDate": "1987-05-05T00:00:00Z", "identityType": "ITEM_ID", "itemId": "YXwE37QpBIY8LEEt", "quantity": 59, "sku": "Uzpliq50demc4rS3"}]}, {"condition": "d2v2ibO04gNmB9r9", "conditionName": "MA5lA6x0lY16PWsr", "eventName": "sxYq77iFOu0ybeoE", "rewardItems": [{"duration": 89, "endDate": "1974-06-05T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "KMCPmtnE1aHAuVZK", "quantity": 80, "sku": "Y16uyKwJ713r4F9W"}, {"duration": 58, "endDate": "1997-11-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "EbburWcSjdGGqd31", "quantity": 77, "sku": "T6MmgebEkQ73QcKQ"}, {"duration": 23, "endDate": "1975-01-31T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "FKvRIguqDEJfdxsQ", "quantity": 96, "sku": "LRJRONKh0R0RXJ6a"}]}, {"condition": "nzAeqD1HlhQ1rqjR", "conditionName": "ECHyhLYGnvEdCjYs", "eventName": "nh0Y0rQluvKziVTC", "rewardItems": [{"duration": 86, "endDate": "1973-08-20T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "0hnoI1dph0xgVXvW", "quantity": 42, "sku": "WC2k23JxAI3kOXwH"}, {"duration": 28, "endDate": "1993-12-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "ESYx49M1JdtImLI5", "quantity": 9, "sku": "vjRIcSa260P2hpjh"}, {"duration": 54, "endDate": "1992-09-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "VT8PkW7ouFIdlTuo", "quantity": 43, "sku": "HfqF5uo9BT2QqCxW"}]}], "userIdExpression": "ZGjDRc27d9a3AaZO"}' \
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
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'ImportRewards' test.out

#- 173 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'Zb0I9Qm4xKek7ZAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'JCk1fizRJy5JoIlH' \
    --body '{"description": "jTZ4mDmXZIBTi05a", "eventTopic": "kxBYozWzUW4RDVM8", "maxAwarded": 45, "maxAwardedPerUser": 84, "namespaceExpression": "CfQOijhEI21znti0", "rewardCode": "3vAJizEosjuIsTXK", "rewardConditions": [{"condition": "AQ4uWLCMgN7rU1yi", "conditionName": "WEODovRwzU7QiANY", "eventName": "IF1YbEZwEzBNPCCn", "rewardItems": [{"duration": 98, "endDate": "1983-10-23T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "p3EQx9pSofiZZNcW", "quantity": 57, "sku": "zGaWok215MnSNTPM"}, {"duration": 90, "endDate": "1979-01-06T00:00:00Z", "identityType": "ITEM_ID", "itemId": "sNW3RHxioyNedQ1E", "quantity": 91, "sku": "lQg6rSZj7yw7aPU0"}, {"duration": 60, "endDate": "1989-05-14T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "hD5agSwSs0ORF2pL", "quantity": 87, "sku": "oCrYrlOXZN7MoQZD"}]}, {"condition": "N1sjuHXDU9ZFHISu", "conditionName": "KMr6e9VKi3lHZdnY", "eventName": "zFYEnOA6gFO3zfSv", "rewardItems": [{"duration": 45, "endDate": "1983-04-09T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "gxlU5MdUdF7gHdIf", "quantity": 62, "sku": "eMd0iVUmBrFwFIES"}, {"duration": 47, "endDate": "1997-04-26T00:00:00Z", "identityType": "ITEM_ID", "itemId": "uFqKtoZiVPtwECFg", "quantity": 4, "sku": "CZiPRCujrja26Ygd"}, {"duration": 94, "endDate": "1984-12-09T00:00:00Z", "identityType": "ITEM_ID", "itemId": "5BielNg6kfRgfnBT", "quantity": 81, "sku": "OdjPnywuIoLpkJEP"}]}, {"condition": "fnaESuOM4olKFVsS", "conditionName": "fgNQjKhrrrStCg99", "eventName": "ejNACAFAJlcWkS5j", "rewardItems": [{"duration": 28, "endDate": "1977-03-01T00:00:00Z", "identityType": "ITEM_SKU", "itemId": "MZsQ8CVsHXHYBx7K", "quantity": 20, "sku": "RoYFks2ULHooisOH"}, {"duration": 14, "endDate": "1981-07-19T00:00:00Z", "identityType": "ITEM_ID", "itemId": "iZyNxeNJcBIePMwB", "quantity": 20, "sku": "IZjtFT6Bs8OO0CVq"}, {"duration": 69, "endDate": "1987-08-22T00:00:00Z", "identityType": "ITEM_ID", "itemId": "bMzRd2Z2WjutGApt", "quantity": 92, "sku": "Trcu36LS6o87DKPL"}]}], "userIdExpression": "LTcjU87C2CAKbiD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'PxA5v9644D4d5jTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'zZ8KpdOxrQ8r5te5' \
    --body '{"payload": {"FkJ58wQyrAb67d9k": {}, "C9MEhGrQVQ3yKCwV": {}, "9chX3evM1seGH9Zw": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'ZcLnJPavRNr3ysEp' \
    --body '{"conditionName": "4sIwslUQociDSNS6", "userId": "hf28TvyyZjEMbPRN"}' \
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
    'KUABS8cyK8SnSvsU' \
    --body '{"active": false, "displayOrder": 78, "endDate": "1980-05-14T00:00:00Z", "ext": {"voF2EgsoZSKOzQID": {}, "Af44vyeNIfF5Ri6y": {}, "doL4tB0FUpx5TLio": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 19, "itemCount": 84, "rule": "SEQUENCE"}, "items": [{"id": "grgVdqSpg9xpXCh7", "sku": "9kxpJyTba2Sx7lPU"}, {"id": "WhfLYtrkZ2V3jzXz", "sku": "ilslRzP96yJ7RbX8"}, {"id": "fkG3hcRbcSuSkd72", "sku": "wzQJjmhy4f9F9usH"}], "localizations": {"1ByGD8DDRW0KNwlK": {"description": "cveutOHZ2aWSL11m", "localExt": {"sU7QpcpkApFODOqz": {}, "4FKRWcvJIwzW53tK": {}, "i9mxhR8RWtFcnNAo": {}}, "longDescription": "xNPXPlSv6kWXBTTo", "title": "dpLcEI0mWFWKlSwI"}, "38LyDyLTQxmA6nDD": {"description": "3EFfeJdwskeVjYAe", "localExt": {"1CNRQX4T37n6lgMV": {}, "9tMXN2kDg7INFTJO": {}, "4FUT152zR0PBTEvM": {}}, "longDescription": "3TgMsAS5t3TYXNAG", "title": "l1xy1H8Ag2XY2Tny"}, "PCVsWzhPIeHkoUSe": {"description": "T3lv51D9Vwsfzatv", "localExt": {"4JzfVNAJbSLBzqs2": {}, "u1EntDzkQLgWQHXc": {}, "3bRYKbJGFP8HZNLJ": {}}, "longDescription": "7aPbRMRrbKjoifZA", "title": "Wt13ISgdwAum4b3t"}}, "name": "1Ph8xHfEAlyda8FP", "rotationType": "FIXED_PERIOD", "startDate": "1981-02-24T00:00:00Z", "viewId": "bAgA4OlQUCJsDilW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'hSc6XIxh1HqBg5Fh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'Y2vclqnTbyZ7fYvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'iZxdNpmibPCLiJaH' \
    'XEyuLQOO6qVUihFz' \
    --body '{"active": false, "displayOrder": 83, "endDate": "1980-11-02T00:00:00Z", "ext": {"4FdUceGtntm6j0Ap": {}, "yricmsku6ryZK7UK": {}, "LhMA3DOG2TuIwxdK": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 30, "itemCount": 29, "rule": "SEQUENCE"}, "items": [{"id": "e9uJ8PAnT6lHom6R", "sku": "Sj2xFFFrIQFWJ2aM"}, {"id": "IxqQycDpbOcYim2s", "sku": "yYc8YuKlQjnj5Qjr"}, {"id": "Vi62ITQp6NklXSUY", "sku": "kHNYqepadIS0zRgi"}], "localizations": {"re2ntrz0FUDXjV0G": {"description": "mcFSjmJGQU5YRHjM", "localExt": {"z3bo23SF3Xkwdkge": {}, "NE7pA2BmAcotg9A9": {}, "VvbcAi4ZmdXz2NXf": {}}, "longDescription": "bCObijIWdRSDSq6o", "title": "IY8wqc2OcvjggLVw"}, "AQMWoB0LkwHKKIT2": {"description": "D8YJKnP2TmDSwAt1", "localExt": {"UGNieMe0c6eA8xCv": {}, "VNgS0wUvETmRwwaH": {}, "21xuey3fB1KN5EzS": {}}, "longDescription": "mB6aO1JqypofIkM1", "title": "Wvc2CcOra4RXenU5"}, "naN6UuNARNfA4hpo": {"description": "NUAwafK1QxxK2sBB", "localExt": {"kQz8nIgoYpZYIYto": {}, "2cpXUnj1kXAEnU9C": {}, "vpIjJ6tB2fqN6D76": {}}, "longDescription": "apW4CsuQx2nME1E8", "title": "lGIgW2AWqhlJfHgW"}}, "name": "SAjBmziLkAEWkqMo", "rotationType": "NONE", "startDate": "1981-01-08T00:00:00Z", "viewId": "v4G0hb2TC5zbxqSM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'Qf3ZXRgmEXKPavNU' \
    'DslWRgXzKcDEz6iv' \
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
    --body '{"defaultLanguage": "QvlpRKagGd8OJWfX", "defaultRegion": "gBkof2DgN1OHBaKI", "description": "f5hoyD0oT4csEU6r", "supportedLanguages": ["wlyAZXRltXTRz9Wt", "MMb9e3S9biXun5fD", "0BBCts02Kgz1gL82"], "supportedRegions": ["ANle3vQP0F7CVBRF", "OlmRZZrSiE7meOUB", "b0ZMyPVBowpLOlv3"], "title": "wNvAi5e5Cp2Id8Pq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'CreateStore' test.out

#- 186 ImportStore
eval_tap 0 186 'ImportStore # SKIP deprecated' test.out

#- 187 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetPublishedStore' test.out

#- 188 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'DeletePublishedStore' test.out

#- 189 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'GetPublishedStoreBackup' test.out

#- 190 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'RollbackPublishedStore' test.out

#- 191 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'gbZMgBinMuWrJOAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'HxG7UhRxqteme7V0' \
    --body '{"defaultLanguage": "mE4XANjqP7L1mgHD", "defaultRegion": "q7oo2SQp9UXJYEGG", "description": "pt55fVsBfrc4OJ06", "supportedLanguages": ["MAINAypeu3ZwgLF3", "XSMYkGVjcYe2wwru", "Eu9pKFWxMrOrO7m2"], "supportedRegions": ["fUVM4vgvN5a9nlua", "2qF5WhoaEpbMKCe8", "F6OE3PKy2vHH6XrT"], "title": "j3i1nC0J9A8DUtbT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '9Nimqnzt0awizcaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'FFkKf2QcbDNp9wVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'loPqugy2zhY3CjOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'LPkNLoeCULsEptE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'wdsebmIkQbE3nPbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    '7YNYQJL8jGfdMvM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'zEHmThs6Oydk9jSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'Y0aqjjeExTo07XGD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '7r4dvtuyipF1FB9R' \
    'NF3G6sPweMmOIXU6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'IcFkTWMTXNI4WIT2' \
    'qYutqii44IKSSMR4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'zJKYxouzcD0pPXkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'CloneStore' test.out

#- 204 ExportStore
eval_tap 0 204 'ExportStore # SKIP deprecated' test.out

#- 205 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'QuerySubscriptions' test.out

#- 206 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'TrLYN48A5DLkL19t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'Xrv2bC14hfBeKISP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '0coyLHG52kcFEHKN' \
    --body '{"orderNo": "66TOzJSyl83HhHTD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'HO8mQoGOS84jEVRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'n0aQHrmMgGX6WiX9' \
    --body '{"count": 99, "orderNo": "aXSgg2yJzaaUc8p8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "GooglePlay", "count": 54, "currencyCode": "TTm092rucPAhnaYq", "expireAt": "1993-11-26T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "hmWshFK5hyfwqkxF", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 74, "entitlementOrigin": "Epic", "itemIdentity": "2HSaUyXEOQUwXDX8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 66, "entitlementId": "ijaR3VVk7nD09WBT"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "System", "count": 83, "currencyCode": "y1AvjH8TO5OIzshG", "expireAt": "1974-12-19T00:00:00Z"}, "debitPayload": {"count": 84, "currencyCode": "4ThugQFOWwlpo3Mn", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 81, "entitlementOrigin": "IOS", "itemIdentity": "yUUdkrKCCEaIUUwP", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 63, "entitlementId": "ILFEno141RnaYhr2"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 59, "currencyCode": "F9eX2LXwaZwDM1CY", "expireAt": "1986-06-10T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "qgr8019aVHHRLK0f", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 35, "entitlementOrigin": "Twitch", "itemIdentity": "6lSL3gAK6QqFlWlA", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "rDQIVwmefiYRytVW"}, "type": "FULFILL_ITEM"}], "userId": "01GcykfqRyXIVnis"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 91, "currencyCode": "TLOwiBSSe1E9DWrT", "expireAt": "1997-07-16T00:00:00Z"}, "debitPayload": {"count": 77, "currencyCode": "2xyajHMUnKflmcC3", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 24, "entitlementOrigin": "Xbox", "itemIdentity": "1Bu8GE15JzEvFlzp", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "nYuSqynNlJACpHVn"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 35, "currencyCode": "Hvwa7cbRj2at5ZJS", "expireAt": "1974-11-06T00:00:00Z"}, "debitPayload": {"count": 20, "currencyCode": "2srNNRw3Y1j6viZb", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 42, "entitlementOrigin": "Xbox", "itemIdentity": "WyHCl9Xs4E416s1O", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 12, "entitlementId": "B0c6hcP5jLY1KxbF"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 34, "currencyCode": "zOePaXR3ub0i4cat", "expireAt": "1973-01-12T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "5gdT3QnV1lkyfpfT", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 59, "entitlementOrigin": "Steam", "itemIdentity": "MX3YvlKKTkjhbq0e", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 43, "entitlementId": "eso9mKjTRboTLjWe"}, "type": "CREDIT_WALLET"}], "userId": "rNUOX0haxwoUd3ez"}, {"operations": [{"creditPayload": {"balanceOrigin": "Playstation", "count": 8, "currencyCode": "dypb6oWXYIQqBIhw", "expireAt": "1999-05-24T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "9FQKCfcu923Ypsdj", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 98, "entitlementOrigin": "Other", "itemIdentity": "RUIv3uIM3CoS6Jah", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 78, "entitlementId": "K1Pr6BT8bcW21yKV"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 95, "currencyCode": "1ChdDIpRn2HgPRev", "expireAt": "1985-03-28T00:00:00Z"}, "debitPayload": {"count": 79, "currencyCode": "eF5vI1QiMb8GRzCE", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 64, "entitlementOrigin": "GooglePlay", "itemIdentity": "ABKOA0L11TgHUfOD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "jZZQUNi4NDzBP7mm"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 29, "currencyCode": "rXjamc3OX9fjEzsc", "expireAt": "1981-09-20T00:00:00Z"}, "debitPayload": {"count": 86, "currencyCode": "AL1og70bKW5QYtGA", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 87, "entitlementOrigin": "Steam", "itemIdentity": "vqyIVadq2JITEaFY", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 22, "entitlementId": "mQEyL35Lh1cCBgg2"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "uTuYNR4hzPkGOuDv"}], "metadata": {"T1kGGvspIGcvW7T4": {}, "dk3MBzfrSZGlXPuk": {}, "j7q5MjU2f4833bcU": {}}, "needPreCheck": false, "transactionId": "fHLoSkvb8lbFBtF0", "type": "ILnxdtDeCtbUIxxT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'Commit' test.out

#- 212 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'GetTradeHistoryByCriteria' test.out

#- 213 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'u6SQF7Bt4rvdiz3Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'JfWFdytTpAVx0pd4' \
    --body '{"achievements": [{"id": "puXNhGU3RmYw0EwP", "value": 61}, {"id": "W3h8ItD6AFXbQvGb", "value": 76}, {"id": "UYP4zKaJuBk11UoF", "value": 39}], "steamUserId": "C0ktvmekdbic6I2n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    '5Hclx6xvlDEhlvzV' \
    'Bqt9fNnODJKrDdt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '0vGd1u3lR0fkCW4f' \
    --body '{"achievements": [{"id": "YJAHmuYyTZt7v3mv", "percentComplete": 85}, {"id": "TIV4pb5hZyPikzEm", "percentComplete": 27}, {"id": "4YMs1JCrpnpPPUyy", "percentComplete": 58}], "serviceConfigId": "ph4Z0KsCWhJPpmpj", "titleId": "ibu6WMYMScWAzVVd", "xboxUserId": "QZznMUlqj2djHHFF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'RxJPvHewpv9IeC6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'AtGzNwZUe0kRnfBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'o030WDtRFRReZoX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'eYwpjuQPo1Bi27Mr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '8QiSBuE8WdxjHSrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'coNi9NFQFpBDG4ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'NqdGxNGcHil6iUOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'Wxf4GH0N4kVmTj68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    '3Ybw4TKyPTxRuzNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'mvBcfNBFiIw9mkjC' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'qXOVUNHtfbgUqbLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    '3WTZF8gP7LgkxhkS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'SID9PxPyXJHsWipv' \
    --body '[{"endDate": "1997-03-25T00:00:00Z", "grantedCode": "ANpRXHVqJaiwkoaB", "itemId": "b8UYH2Pz5V5CtSrc", "itemNamespace": "X7aRP8vZ9a77wOP1", "language": "bB_kYOB", "origin": "Nintendo", "quantity": 87, "region": "pLmiuZGk2Gg0Um3I", "source": "GIFT", "startDate": "1993-09-06T00:00:00Z", "storeId": "OznZA6EVEXEqkFFy"}, {"endDate": "1987-05-22T00:00:00Z", "grantedCode": "p6XhgI2SuEyr4hac", "itemId": "tAHdK0X7OZKu6MmV", "itemNamespace": "xEFptfSFU0F8qXSf", "language": "KRYv", "origin": "Oculus", "quantity": 69, "region": "HhjWxkDQUTY21m19", "source": "REFERRAL_BONUS", "startDate": "1980-03-13T00:00:00Z", "storeId": "IU3IZf93pQmmWWhM"}, {"endDate": "1978-06-10T00:00:00Z", "grantedCode": "RSn6PRk0DwXkYJ6a", "itemId": "X6XRSXg6OXqwh2Uj", "itemNamespace": "0IZZFXv7pY5cNIYd", "language": "StQN", "origin": "GooglePlay", "quantity": 34, "region": "H05hVdagEETj8DNz", "source": "REFERRAL_BONUS", "startDate": "1987-10-11T00:00:00Z", "storeId": "Ywa1VlJBmSCpF2z5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'O9ugNuq4uGu9km7K' \
    'eyQB3SUe4ug9J3KK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'HHaSwFS7fAGmA4gy' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'QBm02aTdgp0WcRdr' \
    'rdOKQbXXiMg5RAaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    '5a0gqyakuryISjsr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'Hy7SSarFsJyanoth' \
    '2jhzr7POOjzRzlmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'mpfmMq65nYpNAwv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'UsvPaX8W0GvPN7gR' \
    '["fsySRn2FX0Ac7Czu", "PXE90ufrBaS458bB", "TbcqQVkSIXLGF8dt"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'k8bqcPfBJ9GOHxUk' \
    'ZCvqVRe3F78EGvZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    '49hW95i4Rm9sBef6' \
    'ymEEU6G6YVa5GGFv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'LtWl66DAEkAvXqNd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'nEfei54fLtFTRx1f' \
    'cfy4uTVbxv0l7RvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'OKq8iNNYLY5oWJPo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'o8QT5EB5GCOCowER' \
    'MveDiI5BYvV5LF22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'GlLe48YQRsZpn4zs' \
    'R2KwSIl0Un3PT2bV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'zOt2J0VxSVRWxJw7' \
    'idbmOx0vyaMbcnly' \
    --body '{"endDate": "1984-12-29T00:00:00Z", "nullFieldList": ["vXdpoYVZKx8oPBJn", "cKdyabXymlDvbcAp", "uoA5PCdXT4YD9fDz"], "origin": "Playstation", "reason": "aYo02pzHannSLeEY", "startDate": "1981-06-13T00:00:00Z", "status": "ACTIVE", "useCount": 20}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'iynwWb01HLrp6OW9' \
    'Y7FIIEJMm4Kizs3N' \
    --body '{"options": ["RbyYMyWPHp8NpreW", "tVtRQu0coThNxwnn", "poM2KSoHlpDFImJN"], "platform": "ovlZq1O6RDUgilQH", "requestId": "Cts6SUNxUWIGSkxj", "useCount": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    '8NQQhBIt2H2PvWFn' \
    'JMiszwcYW9Jy4n5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '4WgYvJS0xuVskVlA' \
    '0TNAcmfUmAzc5JVu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'c5LBd3uXt6TP1AE4' \
    'lqnIwLN2lGYqQSzI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'UdIqmVvmcAsPgT6X' \
    'UEeRKSDbomdWWRi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'OHZeGP4o1Tgbe8J8' \
    'xso71ULeHVV40sjQ' \
    --body '{"reason": "8mtTN08V3MMSrrV6", "useCount": 64}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'YZEoKfBV4CX15snB' \
    'gmflygDW6ab0RoZe' \
    '79' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'XbDbXW9KlfgVvjjj' \
    'ExRk4JHYGa2nnyqv' \
    --body '{"platform": "FCYJOJl9ljs9WPwx", "requestId": "zICEykNJeEn6eios", "useCount": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'qoaoYoHcrIwc6qkD' \
    --body '{"duration": 11, "endDate": "1978-07-14T00:00:00Z", "entitlementOrigin": "Epic", "itemId": "4eJuvLmou5AtB5J9", "itemSku": "XxYqy0HcWUCcahA1", "language": "tjiBugkSmA8prRvn", "metadata": {"uoHm9foRLP4zSxAp": {}, "Je0aplQXEaoGjonw": {}, "KDYwjvKhxwtaxd74": {}}, "order": {"currency": {"currencyCode": "bEkQ8XN3xQ0KaIZ1", "currencySymbol": "ISja5TxqN8RXvgNz", "currencyType": "REAL", "decimals": 16, "namespace": "X14Km851zHcDdphW"}, "ext": {"EIlBnOKyfAbdUB1O": {}, "M5oKTXANlenFuUeR": {}, "c2SCqQ9kgrqAIaKA": {}}, "free": true}, "orderNo": "BfyFCxsJfyos4fOD", "origin": "Steam", "overrideBundleItemQty": {"B14cwUNByHqsS7t8": 100, "BzVmGSholl8uD1hp": 55, "rFWvlE7bmuaFNPCE": 57}, "quantity": 54, "region": "KSzHTT5beKYt4CDl", "source": "REFERRAL_BONUS", "startDate": "1975-05-16T00:00:00Z", "storeId": "tQEriyOLkuGKVQWN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'OUAh5VXa79702d31' \
    --body '{"code": "zPHg6tXTsGmv1XM6", "language": "RVU-197", "region": "UkLLTNMnmlFzzwpE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'ZwbcCEsJIB0JkRcY' \
    --body '{"itemId": "hCT3pUMiOk2aKaj7", "itemSku": "wqr7wwPCgByCnljJ", "quantity": 49}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'CYvapWO5JGco1tRG' \
    --body '{"entitlementOrigin": "Other", "metadata": {"XZUy9H0C213rnYfZ": {}, "8c8zURCckWWVlTYA": {}, "kogbV1bNoJJUhL5p": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "dnYHk1iLtAXL33WC", "namespace": "BnIHoRNWTVvIN7c2"}, "item": {"itemId": "uh7Ls9nxKiaoWmrw", "itemSku": "6n7VYPrZA5UWNq6y", "itemType": "Tj5WST6JF9lLvPS5"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "J58vaRaaxVQeMUb1", "namespace": "kvSj6jcjlxGsLgfr"}, "item": {"itemId": "hBTH1QV91XmB5Z6e", "itemSku": "n6c5d620U9addYCA", "itemType": "tuTx2FKoGRQ2i1n2"}, "quantity": 99, "type": "CURRENCY"}, {"currency": {"currencyCode": "JVJy6yBPVmpbwVG3", "namespace": "MwHy6yQU2RSNGWKn"}, "item": {"itemId": "NDFZOok9snWC9CFi", "itemSku": "RmbELIzawfXvKu5U", "itemType": "suFOUXohEHKCKphT"}, "quantity": 18, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "tyfpZixQMzfhG3hC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    '9Be3Cvn1QymYMLAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'BSViPHKLXkQVWSLb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'AXxxeatall18E5J9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'knaLMlveXWFZqota' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "lpnA_MM", "productId": "UURltNbDbdvc14DU", "region": "jHqRaUZuU9T9SRQF", "transactionId": "fxRIUU3K7sjvHHFm", "type": "APPLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'g65JkaoPuBsuSb0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'ePf5b8MJ94DAh1Mc' \
    --body '{"currencyCode": "7VkHxj8k5KSFtbEo", "currencyNamespace": "Er5LqKRRnKy17sBY", "discountedPrice": 23, "ext": {"49Ah8hoDWRw7XYzZ": {}, "LlLq8lPGFyb34DDy": {}, "qvcwQ3uBzBm355IU": {}}, "itemId": "5aZu5bRvxm9KYr60", "language": "SyfWNB8u5Qlf4KGo", "options": {"skipPriceValidation": false}, "platform": "Oculus", "price": 13, "quantity": 96, "region": "uyxJLe1TkfLiM9Eq", "returnUrl": "yhFh7mq6sgk5cHaJ", "sandbox": false, "sectionId": "GPWWPobC0FiwNmp1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'e9JzR7Bat3pdbjxf' \
    'K1P9wjSBBxjKNvNP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'iwIMR5JsbLCG20BK' \
    'fuTGRLmLwLS7dIB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'aGjtNbryvmkemouO' \
    'e0GhKNxavCN2N47H' \
    --body '{"status": "CHARGEBACK", "statusReason": "atDOVS2F6Is27hn9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'TSwEvJPZcYrXKMnN' \
    'ZIm0ooHCnlq1H5Iu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'OvafRIdOXlxxdySy' \
    'wm5h2pCfHjg41Zhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'eDDG5HJEFQRX4iVg' \
    '8TK1CF9X9mTmMVfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'aiQKdHknLotplfBO' \
    'vsb9aicyajUNH4cy' \
    --body '{"additionalData": {"cardSummary": "uoR5YkRhK1PGfmAn"}, "authorisedTime": "1986-02-09T00:00:00Z", "chargebackReversedTime": "1987-06-05T00:00:00Z", "chargebackTime": "1990-10-05T00:00:00Z", "chargedTime": "1991-04-21T00:00:00Z", "createdTime": "1977-04-13T00:00:00Z", "currency": {"currencyCode": "VbEWajKUr3rx7Sdt", "currencySymbol": "80ugFtH5gSuRJLGk", "currencyType": "REAL", "decimals": 73, "namespace": "jLEJPCdahOY2goEK"}, "customParameters": {"35CZu7WE18eU5rtQ": {}, "UWRLvu3WEfwBn40s": {}, "Jji4hVE3lKNQy2rJ": {}}, "extOrderNo": "xiPPjJk44WHDDNDV", "extTxId": "gExcmm4fkoNMVNk6", "extUserId": "z4A3FI60uUrVMjqw", "issuedAt": "1990-02-08T00:00:00Z", "metadata": {"OHKsqKaw1EmCxOMl": "6uh44gPPfiJZCSkI", "QI1h6OjoUY4QXece": "rXxPodPokDUivfNI", "3KdSIbTi8dxU11tP": "BlMCz6SSpxt0aZZr"}, "namespace": "3SbJHkTstBGTm2OF", "nonceStr": "HVEoRljsGF5AYZlE", "paymentMethod": "YqTVSCLemvpJXl2d", "paymentMethodFee": 35, "paymentOrderNo": "TquwIrGgk3eqgOf7", "paymentProvider": "ADYEN", "paymentProviderFee": 47, "paymentStationUrl": "BOlhg63PduP0G77o", "price": 47, "refundedTime": "1995-08-07T00:00:00Z", "salesTax": 12, "sandbox": true, "sku": "favVPOhaaf5eExcj", "status": "DELETED", "statusReason": "dVBjacY5doQGhc8z", "subscriptionId": "SCeJ4Q8PHY6vGzNf", "subtotalPrice": 84, "targetNamespace": "ICrMr8z6e2UDBycY", "targetUserId": "rDDg5iDNLOJJmzGW", "tax": 100, "totalPrice": 54, "totalTax": 59, "txEndTime": "1993-10-16T00:00:00Z", "type": "MDnaFw1u7BLbxxmg", "userId": "hZp6iVAJ6lYOK3cw", "vat": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ia3QvaFIVfHyAiTe' \
    'DDuvgKTfrZ6TfrQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'FIsYsZ1dTn2pA64F' \
    --body '{"currencyCode": "JuEPymbIAwDAyNBa", "currencyNamespace": "gGD33WMVj7bfdfxy", "customParameters": {"qKQ4YNnTTwZeuX7f": {}, "9iY3skbk25jLP6zS": {}, "6a5C6awft8NPNJCo": {}}, "description": "pJg7IJTeOWoVtcbl", "extOrderNo": "aKlhxMNx5h4l3ogP", "extUserId": "TLlSlGfh2XhfCB53", "itemType": "CODE", "language": "LTcJ_mXbO", "metadata": {"Mxshoo8aHsXJ87yw": "dDtou8Np74s3RLe4", "gpS550eQ5WiZiQUz": "C0vBF108QVF9gKmJ", "BuqEpgnV3xNdP3uQ": "J2ZdCStanvPwuBVi"}, "notifyUrl": "fTkflegYoVHYdQPA", "omitNotification": true, "platform": "nfYNY7ZXicpAJw7C", "price": 40, "recurringPaymentOrderNo": "tHO4xrQvXR88ArNP", "region": "kMbfhbrTb4ZPG4R5", "returnUrl": "dqhreKq9si5LTZGj", "sandbox": false, "sku": "XRBRT78fZc6LpvtY", "subscriptionId": "7Bk3j0Rt5ai8x1JH", "title": "TPfATk2jDkPq7n0V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'qgiBJsxKkXhiEo0R' \
    'XgJkWelLk7pTvUfm' \
    --body '{"description": "ra4esdZ2v5vKHsJ5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'DezdlRlTTSLmDolG' \
    --body '{"code": "db7yXLAgfgESHWCK", "orderNo": "8LccJJmXX0pmy1KD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'Jtg9FwOewtMPXhsC' \
    --body '{"meta": {"deun9QN513GmIqfQ": {}, "8mJbg0TSRxhI4Xnm": {}, "uQN65HKi5qvwLIqg": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "PpdsN55f9R3a5ZvI", "namespace": "k8F6ffaPP2hJSGfW"}, "entitlement": {"entitlementId": "6ap0wsdPdG1EQTyB"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "6pf9Ni5L9Nkvuqwv", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Xbox", "currencyCode": "W4R7V4J46ZNRNpLc", "namespace": "I8Vh4bQO4Nc65zcF"}, "entitlement": {"entitlementId": "KgC0oMEpgLEiStlz"}, "item": {"entitlementOrigin": "Steam", "itemIdentity": "XbKWmraqNIKPX6gP", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 29, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "kZwM8cvObRjKxi25", "namespace": "l9mb1mSJffUaLwOs"}, "entitlement": {"entitlementId": "YRIJearztP7sqwra"}, "item": {"entitlementOrigin": "Epic", "itemIdentity": "n3ZvUrBoqK16btU6", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 28, "type": "CURRENCY"}], "source": "DLC", "transactionId": "oiAtMgNN8B4oo9jF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'mBqiyicQHvr1zREq' \
    --body '{"gameSessionId": "WwsQaxbdG9IxEoxc", "payload": {"gOEmGQpzN4HM3v5w": {}, "AiimBQXCxR1cObsy": {}, "s0SaqnYIBTANshJc": {}}, "scid": "dLEofyiS3dO8j3ta", "sessionTemplateName": "WbShXMN0MRNkMX09"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'nQEwFSce6VsIsSSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'kP3IqaPaXJc57cVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '8tXCteutO2hlDa0v' \
    --body '{"grantDays": 29, "itemId": "jy1ei7AZBrLdMJG9", "language": "12CJx1H9kC6LzFqk", "reason": "7MSt4enxGbQr0GSt", "region": "ncRVLvJm4u9ltRo1", "source": "cXuco8zvapmS8p27"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'dvzUWMz6IheEap1P' \
    'hjtZknu6Ke0rhmQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'BLti0OZtmm5xYReY' \
    '6SgfTy3HUPSrR6V6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'wTNktWOwGcqmkqou' \
    '4IX6ynCg7jZBPZUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'h5Id1WwN3o2LnIKn' \
    '5bM9rW10Xi6WV5MH' \
    --body '{"immediate": true, "reason": "jff0fTRIYip6c9di"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '8JeefXJ2PdIoHdoD' \
    'HgvwcWxlmJoJSnhy' \
    --body '{"grantDays": 11, "reason": "T5By0AqALCR39RH5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'UcRubJZYIgyBXZfT' \
    'mD5U7RTvIuyjoeXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'EFAR7ULC1He2xJmI' \
    'Q7lG3SSfJb7YC46l' \
    --body '{"additionalData": {"cardSummary": "63YRc0T3d9XaFEWX"}, "authorisedTime": "1981-06-29T00:00:00Z", "chargebackReversedTime": "1985-09-06T00:00:00Z", "chargebackTime": "1994-07-05T00:00:00Z", "chargedTime": "1979-10-01T00:00:00Z", "createdTime": "1974-05-04T00:00:00Z", "currency": {"currencyCode": "Ln5lUQ3Mt9iye7Sb", "currencySymbol": "3gSolD6u7wIciVVH", "currencyType": "REAL", "decimals": 76, "namespace": "Ftt4AP9G3HyBugfR"}, "customParameters": {"eiDLdSTRmElGhVQf": {}, "227V7ADaQHt78b3D": {}, "T7qRYPx0W6cXzOdG": {}}, "extOrderNo": "XLsEc8XzmjXX4csM", "extTxId": "laBkq9QHEb66Bo3A", "extUserId": "LdAKAQUoGDOUFK4B", "issuedAt": "1972-04-11T00:00:00Z", "metadata": {"WOxnwerZoIJ2JMtH": "AD8gJdK4CJBY63AS", "IuZtE2WuycIdVm37": "lVyVYhbj7X96t5WM", "Ldod5DYqp6XDPJmY": "DZqWoL8k0jEDj1R6"}, "namespace": "73CfYbn53kIRN1df", "nonceStr": "13EvjSbGYcLQEocU", "paymentMethod": "fUPAI2O4xXXwCsNt", "paymentMethodFee": 20, "paymentOrderNo": "sfcLURAHqkEpmWEr", "paymentProvider": "WALLET", "paymentProviderFee": 52, "paymentStationUrl": "MkbsCK44WEKYCuqx", "price": 48, "refundedTime": "1979-07-27T00:00:00Z", "salesTax": 15, "sandbox": false, "sku": "cL3qt4lUCjplpfxQ", "status": "INIT", "statusReason": "KfuARcHovGUZSzWf", "subscriptionId": "q3hqssnqUPIJabCP", "subtotalPrice": 79, "targetNamespace": "uTJRHgBRpSb3GL7Y", "targetUserId": "AU5AnUkmfVW93ZW1", "tax": 39, "totalPrice": 99, "totalTax": 8, "txEndTime": "1984-11-30T00:00:00Z", "type": "TD7i7fqOSZxwOb5j", "userId": "kz9ihTe86sjHoBLG", "vat": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'hgTvfzwfgRZntMhu' \
    'nn3jSCD2AknCwPe4' \
    --body '{"count": 93, "orderNo": "CNzI10tZr3Ajmwxr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'pjfgamOka0iwQFwq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'JrWlE1xE0Agbtqaw' \
    'rlckTguotHZZnBkb' \
    --body '{"allowOverdraft": true, "amount": 31, "balanceOrigin": "IOS", "balanceSource": "EXPIRATION", "metadata": {"RGzthYJKH9vhOLpo": {}, "WOSJS0kU6fD66yb2": {}, "MtSEiRgh67ylD9xI": {}}, "reason": "b44v71qZ2QmEuNVK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'EmoFSme2B5xb6kbz' \
    'roGyrFwTSdzLOXwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 32, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"0OS1jOq8HtddVhZ7": {}, "lfOiLRYQkDw4MI4S": {}, "EqiXIaji4MOmP494": {}}, "reason": "vGlNtuMUpS3K4kKG", "walletPlatform": "Epic"}' \
    'fwbFJ8VUxv8qZiAL' \
    'IoUy5BK25PGFQBJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'HKR8nXRVh36pW5RF' \
    'N9k93aNy4vvrPXP6' \
    --body '{"amount": 93, "expireAt": "1984-04-21T00:00:00Z", "metadata": {"vkVtA8b9zvOaiSMH": {}, "jVciAVrPuzKV1Wj7": {}, "J3QrgnhZMehNOncX": {}}, "origin": "Xbox", "reason": "26GboaJ63McAoV2w", "source": "OTHER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 62, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"d1kj4Qj6RS5aO256": {}, "ceteBSz425Kp2PGW": {}, "8gpXu2mBdRvF84eD": {}}, "reason": "5m02245YlrGlfgrz", "walletPlatform": "IOS"}' \
    'cP4XMNICniSwlnSY' \
    'TuNVajwq9onI9NBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '48v6DUJRe1LpwuZI' \
    'oLrVS0AcrY9Vdxzm' \
    --body '{"amount": 26, "metadata": {"SnMFP7ijRI315PPt": {}, "ar2LEaQgwjgNbqY9": {}, "SXZMP793iEdDgNGO": {}}, "walletPlatform": "Nintendo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PayWithUserWallet' test.out

#- 296 GetUserWallet
eval_tap 0 296 'GetUserWallet # SKIP deprecated' test.out

#- 297 DebitUserWallet
eval_tap 0 297 'DebitUserWallet # SKIP deprecated' test.out

#- 298 DisableUserWallet
eval_tap 0 298 'DisableUserWallet # SKIP deprecated' test.out

#- 299 EnableUserWallet
eval_tap 0 299 'EnableUserWallet # SKIP deprecated' test.out

#- 300 ListUserWalletTransactions
eval_tap 0 300 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 301 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'ListViews' test.out

#- 302 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'Dfmm8Q8A03ovBcVC' \
    --body '{"displayOrder": 27, "localizations": {"S6c2YCA1r312BKDv": {"description": "A3YyGsBgTJCc6734", "localExt": {"MnrbjAM32RlQ3Wpg": {}, "0XNZCsESCHRPA5OQ": {}, "X8twQrDu49JFXjPc": {}}, "longDescription": "1tJBaHYTZ2IdgUYm", "title": "mt7HXJCUjwNMnmrm"}, "R9dDVbvyNupYCzyY": {"description": "EaMgXsszL7hpsSwA", "localExt": {"QxtDEUm4PnTTyHhB": {}, "vqhixMPjP9lZT5O6": {}, "iUdCh9M0KC9zNZRa": {}}, "longDescription": "WXjMCSId4tDlI96Q", "title": "joaq06aI2zoqmaPg"}, "dCvQwz6hdCMrHgpP": {"description": "D12BS4Q8u6QqK4Ce", "localExt": {"ZXmSBfgrJcwR3qkt": {}, "AdH94tziEpGVXsUv": {}, "ez1lbenagh9kCPNS": {}}, "longDescription": "ZTIlkM5IYJnbFprR", "title": "WLjHPiPqvMMmYJeK"}}, "name": "vshwdE9XuQ8gykJm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '5GMKtZSng8Oi6TDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'SGwc7wXieEOkn4KN' \
    'YWbvsmtsOVvpKYJy' \
    --body '{"displayOrder": 84, "localizations": {"VTvgh23BGEa5ftmS": {"description": "BKQ3zAXk9qVrzEqs", "localExt": {"DwIwRyHKWspPtJlL": {}, "DOjXTWGIrWq2VvH0": {}, "roA20Sfzrc9YYsgv": {}}, "longDescription": "VLN3usfhiyCf1FOd", "title": "dxtE52sFK1jNp3Ow"}, "crNR2jH7Xx7m8IqI": {"description": "RyUqaCbbMa2LqgJO", "localExt": {"AfFwvvgYPIFEVZLG": {}, "zEglEe95LWKrkj7T": {}, "Puigp3RiJofgD4Vy": {}}, "longDescription": "pGT4cTfKNrjPqUk0", "title": "t9aquw2B2UVIQMA6"}, "BOpxtYbmQwS5kNxC": {"description": "PLeKM4cQl8DlY91S", "localExt": {"XBeHwrkPCaAycmEv": {}, "k3rVTLjZT9qayJJt": {}, "W8sqkuIBd1NrGWPV": {}}, "longDescription": "vOhMTdfTjLVxzjyQ", "title": "sgv5n6Vn7Tiakc1R"}}, "name": "zb4MCHH4aATHwPTM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    '0LfcjvOko7332ZZa' \
    '1YfuaQ7gPgiz2EBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 63, "expireAt": "1974-01-18T00:00:00Z", "metadata": {"ikH5iUT9GB4bGcYz": {}, "y0T6Q89155mM6RsY": {}, "xtVcgA1q0sR85Dcn": {}}, "origin": "Steam", "reason": "5fUvb2OK8scK4MyI", "source": "OTHER"}, "currencyCode": "1H5juf5Cq950XtiM", "userIds": ["l1kZWnqjJaGGTFaJ", "xQDIHnPin3vZc9bU", "YgwdNmcpdldDn2Y2"]}, {"creditRequest": {"amount": 69, "expireAt": "1987-01-31T00:00:00Z", "metadata": {"c2P689TFuh1hFoX5": {}, "6gzosv2p6WtLfgPM": {}, "8t1tgWhx94eFnxfK": {}}, "origin": "Epic", "reason": "yIXierPr2qLKBXRY", "source": "IAP"}, "currencyCode": "PuTkhJH0gQxqxmEF", "userIds": ["oXpZ9sy7dEuiT7Or", "A1D8DBtkE9JX7oDF", "ytm0rZGlRUuJ7Hgg"]}, {"creditRequest": {"amount": 89, "expireAt": "1971-01-29T00:00:00Z", "metadata": {"gQ5zPZbllwvt3TjG": {}, "ezRRUjCNiQauO5Cf": {}, "ja0qWoqWrZJAMVQa": {}}, "origin": "Steam", "reason": "haQ30cHb0re0TJwu", "source": "REFUND"}, "currencyCode": "HfaNk1P4hC8wgvaT", "userIds": ["e6apnthJsQpzHxEs", "Intj0rekmCKMOHEh", "iEsZH3UVmVcOxU0G"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "sP6oBsZy1nIeavdW", "request": {"allowOverdraft": false, "amount": 18, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"RcFLzOW7Uz8Gz5TN": {}, "3bJ6UVKAdNp2ReRw": {}, "5WPjohGmJKCjbEtF": {}}, "reason": "KLGvBQOS81LpIh5Q"}, "userIds": ["8K9yVaSV6MkQpPd0", "utGYDVGwpKCkOgcV", "qEOKQXnUYMXvJJrO"]}, {"currencyCode": "rMw1DAaC3oGYmbE9", "request": {"allowOverdraft": true, "amount": 73, "balanceOrigin": "Nintendo", "balanceSource": "PAYMENT", "metadata": {"jh6wMyuNtA5mMerA": {}, "vf2EK1rsQWD1svih": {}, "oAZBd4hkykRLwN2L": {}}, "reason": "HFkXjhDf4RPTS1xm"}, "userIds": ["IM78uco5di3sJNay", "nQqvXAFVKLeOpEjP", "fJakaJtAFsemukeO"]}, {"currencyCode": "JDBPU8LPr0bjy4nF", "request": {"allowOverdraft": false, "amount": 8, "balanceOrigin": "Nintendo", "balanceSource": "OTHER", "metadata": {"8n6PSoXYb9tc6rYy": {}, "OiaUKC8t4GV0JiE7": {}, "ZbWP80ZctunIw8zz": {}}, "reason": "jr1oeY1p4P0xno1l"}, "userIds": ["LiYjJvlKhH1ccnrp", "uSqciM4rfqsoJ7Ak", "3T2fKqq9CzJlj0UG"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'tCqJnqpaur75iSsL' \
    'SqGKfGJDmzFepqpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["IzofQ17bQpOtqU8Y", "63DFSnh5IbdftTLR", "LUGwenKzXRT99U5B"], "apiKey": "5j9CT2YI1qt4AYI5", "authoriseAsCapture": false, "blockedPaymentMethods": ["utgKyddONrCA3C8S", "vqUKqpSaqBWWsEeP", "oWos4O5MRxu5cYFt"], "clientKey": "JZeinW64n9q4asIf", "dropInSettings": "g6qpRvHGYNAfvls7", "liveEndpointUrlPrefix": "pbw9yPFofHSVjTbM", "merchantAccount": "9IHL2JcpnLuindE3", "notificationHmacKey": "Ucg05FtWiuP1xyPe", "notificationPassword": "Wov5pJJdyu2TxbDT", "notificationUsername": "PkZkYfTO2Gg00JcX", "returnUrl": "GaIUaL3FoA27eK2U", "settings": "3IHpgmmQaQj7hyQj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "WqzvHab6b9t7DWTa", "privateKey": "UGBJRTcrm3mIBuPZ", "publicKey": "xqlGGOe2VYsej3cS", "returnUrl": "W6YWXMTlqVrGyQYD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "nbzj7Xg2lcvB7TOu", "secretKey": "2FcuLwU5IJt4pAas"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'TestCheckoutConfig' test.out

#- 314 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'DebugMatchedPaymentMerchantConfig' test.out

#- 315 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "YNW28u3UZ3q6QdMA", "clientSecret": "L9IC4460Wck2oK2m", "returnUrl": "LwkxgJXK2OjNzQ95", "webHookId": "lceIy0lnTniV8j7X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["mR8FUW42wLu5tQBU", "E3k2mUvrQPFxSaRr", "DsF1CKYcMJnrn1I3"], "publishableKey": "ypoEAwuriKcfEber", "secretKey": "KsmttvFw6Ev28mtO", "webhookSecret": "5isAId2vIIeRmFR2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "TQ2rE5Ugf8q6zX7J", "key": "c7TK5xO3LzmzW8Oj", "mchid": "3HDRoKRr6ZZRLgp1", "returnUrl": "djMaw9o5TdLhB2mW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "rW0A29UflIqBalvC", "flowCompletionUrl": "ur3yS6PcP3N8ee3a", "merchantId": 65, "projectId": 33, "projectSecretKey": "SyZkpxzyGW3kHAKN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'zH5cJ1x2IhHEQwW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '4r5yXnevZsdD9Iip' \
    --body '{"allowedPaymentMethods": ["75t7Rgtj7pKnbtPA", "ZsNwKWlHT7wmvO6Y", "DgQ4TLdkZgouTEi1"], "apiKey": "9doNSCRrqi0F1FGx", "authoriseAsCapture": false, "blockedPaymentMethods": ["WMA6zIWiASrarIiI", "LeXO18VYOBdYdQra", "UweJSX5gGRLc0R4v"], "clientKey": "MMPlJqY7ujDDLuoQ", "dropInSettings": "JspLLZbnusI9Nty8", "liveEndpointUrlPrefix": "KpP0RHI8icuY92iM", "merchantAccount": "kPiEKRgT1zZPaKln", "notificationHmacKey": "IY3vGLET05JQWhwi", "notificationPassword": "jC7ydSFRQ4V5Oyyp", "notificationUsername": "fQ5iJtNrVbjnyYER", "returnUrl": "w24T1DBdzzVbhZKn", "settings": "h9FfHsuwhOtgOWtZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'uhAp0yxLpfWB0inH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '8xFDMoqbLU4KGsev' \
    --body '{"appId": "VGPnqXXPustpaZz4", "privateKey": "7mZuZptSindV4Kpi", "publicKey": "fmfS94ybYG4wLaPx", "returnUrl": "hpGODmwJCF4HCv6D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'G2DfogFpQ6h4G1Jw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'gwqyIOpmNMgpfDY1' \
    --body '{"publicKey": "FR9rKaxaWsCGgI79", "secretKey": "Hr331YipwCDOc9FN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    's0rjVHzs9C25B5DY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'IkGcoYjLN4VPTXzk' \
    --body '{"clientID": "nDz9YRB0KErE7XXT", "clientSecret": "kVsvdGlmWWA02nKw", "returnUrl": "O7XUNrraxsHn4uKh", "webHookId": "XVFTTx0TcboB98Gf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '5PcmWICZpV13Vxw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'InWyY5J5tCY01Fkb' \
    --body '{"allowedPaymentMethodTypes": ["WfSwD66Xg5Qbc0Ej", "xxzLQLRh64Y1jopY", "iTRZEzq26aXSjyAQ"], "publishableKey": "2QsMJlAxZUci2CC1", "secretKey": "SEp55TimgFFENNE1", "webhookSecret": "5OyfCm3JLSdyxEkU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'rupaAg8X3qrN4NJQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'HucDPcorTkEhvJJB' \
    --body '{"appId": "HTf7gHQdNqoM8JpO", "key": "KNAU33hDeba57ZY9", "mchid": "YNNrTcdcnzDvUHgR", "returnUrl": "2bX5lx9AjwbpWgnI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'zWRtzH2wWVwIlnX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'PYoF43qdlpBadznE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'opQjdlmCKky8f25O' \
    --body '{"apiKey": "S6EXRpHjQ4hViJ1Z", "flowCompletionUrl": "0GtE9ePlbHeBy2yY", "merchantId": 87, "projectId": 73, "projectSecretKey": "gJrux6tlQDfleFLB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'Kj8h7ZrO4pTU7jAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'bVBcDGudQQm98BKO' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdateXsollaUIConfig' test.out

#- 336 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'QueryPaymentProviderConfig' test.out

#- 337 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "5cs3jEJm9cqIJO6e", "region": "trgPcoqdV16bQzZj", "sandboxTaxJarApiToken": "JiiJFm6K0MsbekvK", "specials": ["STRIPE", "ALIPAY", "ALIPAY"], "taxJarApiToken": "kyXLtDH1ypF3hIsd", "taxJarEnabled": false, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'CreatePaymentProviderConfig' test.out

#- 338 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'GetAggregatePaymentProviders' test.out

#- 339 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'DebugMatchedPaymentProviderConfig' test.out

#- 340 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'GetSpecialPaymentProviders' test.out

#- 341 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'baFfchju2kAuottO' \
    --body '{"aggregate": "XSOLLA", "namespace": "wo884abNDjMPiZHx", "region": "hFeo51XVDI8f5EWn", "sandboxTaxJarApiToken": "dhcek3atmhTw5TDj", "specials": ["ADYEN", "ALIPAY", "PAYPAL"], "taxJarApiToken": "6vW6lvytcmR4QRN7", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    '21mWwtuqNbtaAfDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'DeletePaymentProviderConfig' test.out

#- 343 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'GetPaymentTaxConfig' test.out

#- 344 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "s5MyxW90cMZ9NeyZ", "taxJarApiToken": "5n02q1qbbj3sLmfY", "taxJarEnabled": true, "taxJarProductCodesMapping": {"hsX0E1pSQzkJa95m": "aQLAJLoGMHeP6XZj", "cdrsSt4spX9eT2jw": "H7ODZfqj84XXtngQ", "G9E03eUwSRO9eoka": "5Ufs9UTtAImWjuqi"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'b3nbPkju9PQ5pN0X' \
    'Xmk4owknspUKyKWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'SyncPaymentOrders' test.out

#- 346 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetRootCategories' test.out

#- 347 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'DownloadCategories' test.out

#- 348 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'OaF8En9Ut2qFCzvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'inQCQg8fidwt7qJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'Y75wS8MCmOepp9Tx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetDescendantCategories' test.out

#- 351 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicListCurrencies' test.out

#- 352 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'STEAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'GeDLCDurableRewardShortMap' test.out

#- 353 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetIAPItemMapping' test.out

#- 354 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    '5YPBPqcYNEbLCaeC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItemByAppId' test.out

#- 355 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicQueryItems' test.out

#- 356 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'uMBokWfuz2Zskdg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'b5IpRSAi9TY3ZiKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'pU2gMmaHuaBzeu4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["PuT03UI8xXkOTRPX", "2RbN68q9XjuvxGSB", "mDL91zfHvKnS4TBw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'lGi9OKYqmnMdDOYM' \
    'CkcE680jXshhArmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'rsTXqjhryZuWF0aX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'yAfnT9KMwZkUmivH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'bmYwS4MpDJ1DYOnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "VrhflY3MzIef9mtX", "paymentProvider": "XSOLLA", "returnUrl": "bh3agt9HQKHNhlzY", "ui": "RtA24gRvv870jG3e", "zipCode": "6kpEZmtrpzaLfufF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'oH0vIAAZ3D07rENh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    '4LQyLj7QmX1ijJDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'qjyW5nSpi08dnnmo' \
    --body '{"token": "WGbDOWBzflDPp8sE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '7bcL6xy49IPWxqs6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'CHECKOUT' \
    'pq9UUur5zNNHf53C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'HNLzMNElAaW04oQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'a8waozlr2ftyZklp' \
    'NPl881jOSvCvj20f' \
    'ALIPAY' \
    'OINS631eYxKFwpR5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'ukyHmVB2oTqRWbK0' \
    'WALLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'xy3AZ9Q29c3FLGns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'GetRewardByCode' test.out

#- 375 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'QueryRewards1' test.out

#- 376 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'acdakVuBk3eUIeGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'GetReward1' test.out

#- 377 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicListStores' test.out

#- 378 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicExistsAnyMyActiveEntitlement' test.out

#- 379 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'zqhOBhMJ8BCR0Pr4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'lUceWJidPUCDHoZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'OFJliGQwzPSicmKe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 382 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetEntitlementOwnershipToken' test.out

#- 383 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "5tLTY4T61Ztjv4Hj", "language": "Omw_TL", "region": "FZDsjHNjL304sV2h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    '9pg3yvd9MZqnUseN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'uEx7YDEkdFOw34Zk' \
    --body '{"epicGamesJwtToken": "vghT5B0olJY1qewj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'IDEZedb90DCSoLAg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'eUljuQXNi35z75tQ' \
    --body '{"serviceLabel": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '6GGKXlt1XAswrMMj' \
    --body '{"serviceLabels": [40, 18, 43]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'gqjIaaftddfk3N3F' \
    --body '{"appId": "UGt7hRJWz66woOwu", "steamId": "jZiqrVmhfRRK7peh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'YZgLjFarF9k0U2fu' \
    --body '{"xstsToken": "xYpTLF2CAqFwYdrz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'mGzkvzgJn2pWVs6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'ZRXBAexxsuLkWktc' \
    'Aykay7LItVjr1YSz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'eXfUiXANoRioh11e' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicQueryUserEntitlementsByAppType' test.out

#- 394 PublicGetUserEntitlementByItemId
eval_tap 0 394 'PublicGetUserEntitlementByItemId # SKIP deprecated' test.out

#- 395 PublicGetUserEntitlementBySku
eval_tap 0 395 'PublicGetUserEntitlementBySku # SKIP deprecated' test.out

#- 396 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'KM4KgSaTFkYqyDBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'eKhVWlgMI2a4HuuQ' \
    'iMf3ZtSRaKTvnYQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'QK3OLU5xNeaLjRoN' \
    'MmfyuSugV63aIt0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'DFEcKEQaxvtIGC9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'YvHbX0ptwZqHLOEq' \
    'FcFlBmznrLziwCnn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'ibCjn2uxoSkuKry9' \
    'iZZvtreyTjGpaUSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'jv2AbKgIoGvyLZGy' \
    'V2nNIKGyVatdlj1B' \
    --body '{"options": ["AkRkfD5QI95OctLx", "Gf6SilVAgYAplPOe", "3QpvyaquevE8jhAM"], "requestId": "4C34bBPbifHDiBMs", "useCount": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'HQoxlbhfnh1larFY' \
    'cM0OoFV93hG5GVHr' \
    --body '{"requestId": "cfGpWAuflVB1opvS", "useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'mcgfplQTNIZctTys' \
    --body '{"code": "FM89BCAF2MVozVct", "language": "IAk-TPnB-VX", "region": "jmmxHjjlquESAZpA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'C3MEgBrVUoMCPYZA' \
    --body '{"excludeOldTransactions": true, "language": "CL-tPKJ-bH", "productId": "yU8thUL0rK6YlDgS", "receiptData": "7DF6WHO4xKI3DzXl", "region": "qZ97UEX77J2ZaCgl", "transactionId": "5zfvvm60VIJWtArj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Nf9ClzJiLrK8iwSK' \
    --body '{"epicGamesJwtToken": "wTNINv7MbR3h7N9m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'LvImrGFR73LVKd3l' \
    --body '{"autoAck": true, "language": "RvPN-PWNc-Cb", "orderId": "pBs05S6VCRgcpqzF", "packageName": "0Wdx4tTiOqvd6is3", "productId": "iMkUYXGJ52LhrcYm", "purchaseTime": 81, "purchaseToken": "F4GsByu7ccqHPLY7", "region": "ScjfHWvp5yxoHDN8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'wbZhTBvAeHGP8MEJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'HjkHXgaYcrI47DAB' \
    --body '{"currencyCode": "OUyTgLqcqWj25jcD", "price": 0.6783574227419029, "productId": "7S4nZymFu9HDayb3", "serviceLabel": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'EqRaoWkdV23II0TE' \
    --body '{"currencyCode": "DjWcIzfsSrF9JBbs", "price": 0.899533939185845, "productId": "ioKOVcrfhki2j4K5", "serviceLabels": [80, 34, 68]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'GbnwR8NQy5mWp1i7' \
    --body '{"appId": "XAgvpl6VM46gEFqw", "currencyCode": "JcySobYFsOpqr85x", "language": "VhYC", "price": 0.7610901439908998, "productId": "MOBfFhgytL5jv2cy", "region": "VSXxh4A5aA1bEwNC", "steamId": "WytxJKphKxkJ5Y2q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'Nwo7fOIEm4CCHTji' \
    --body '{"gameId": "JTcJCNU9JxdozQjr", "language": "pe", "region": "vseGTWQwYHbgonXM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'WBgwAHBLENBGh8mz' \
    --body '{"currencyCode": "bI7UUQoj40AF05z6", "price": 0.43985740776489757, "productId": "C0fH4BlyXE2K4uNJ", "xstsToken": "RgQ3CCklU97Kkomn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'jFaT7NQeCqpaKPJk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'OezU2RemXA27tg6b' \
    --body '{"currencyCode": "ypXmwZRpU8Qcrmp4", "discountedPrice": 10, "ext": {"NHHKuQExWorl4PYK": {}, "J1GJKlZ26mxx5rFW": {}, "CDjFeol1Ra8c5c3F": {}}, "itemId": "5otSicHNAFf6XoFj", "language": "QZgh_tohL_jd", "price": 2, "quantity": 42, "region": "JD3ko0KsF8jqH84W", "returnUrl": "95YMkpzkat1qYXph", "sectionId": "VMsbw6Rv3XZ4XgIf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'TmvZDu1OaoVmtgO5' \
    'YP56VohkMQrBSOet' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '1EcW3bKxXuYOn0UL' \
    'O8bwirHmfnBivLKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'nrwTNNliEMZaebfX' \
    'S8gZ4cc4oVqQk9tq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'Gzt1BHwaxrSepYwX' \
    'WbcBNnyBdWMRvISd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'cF4Db7MaqeC6go22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'oGxiuAknxwcqyDyO' \
    'paypal' \
    'XTsh5xydeZADSKQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'v0tnP05L7Nwx1i8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'HEbX4mIdomBVyorR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'K73vbWSNBzkiEHyJ' \
    --body '{"currencyCode": "EOg3iIjU3AAg7WG2", "itemId": "eTsmDaTzm1iyRQNy", "language": "slh-Oy", "region": "Kchq3HFDAp8snTqP", "returnUrl": "81J1c6C2wvWDhsYW", "source": "wX5hKxgCMD1qRyNe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    '4g5DSTBpRPaWHEoC' \
    'nndVYqgBPmwdNn0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'osYXZ8eImgQ2x0Sg' \
    'QXdYwRiDuKo24S6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'geY6mxarVsr09Jpl' \
    'iIbzDdA20g9UeCPS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'EkHvpI9pfGr7q4J4' \
    'HRfPSShguxCFDvHc' \
    --body '{"immediate": true, "reason": "ou9G8lXxC3R0xIfz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'LRFel1aMfEV5Zvvw' \
    'EDVOZ5VOwnn6MrDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'ExIjLvTJkl9WnxI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'c4i8HDHZe4XLK8QP' \
    'EA7MUcU28Tjo0XKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    '5KBD3YwTJ4Hn5XqA' \
    '2kk1A3H3rxXt6ggK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicListUserWalletTransactions' test.out

#- 433 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'QueryItems1' test.out

#- 434 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'ImportStore1' test.out

#- 435 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'wWIYIm0ypwg4VTJp' \
    --body '{"itemIds": ["u64It1R6axg5VLrk", "3KBNBApNgT5fUWdp", "4LE1VnZFgkytfX1N"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'qG3h3imEWxUgMEW1' \
    --body '{"entitlementOrigin": "Oculus", "metadata": {"JMbrmE7zBsX3PYLN": {}, "cayR34iibMmlb6vl": {}, "F1mVrcAyqXXnKEtS": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "MBspeHcHhz8Ok8bg", "namespace": "V76h8tj65I0OW9Dh"}, "item": {"itemId": "wNHdSw93IumFyH8g", "itemSku": "Fezb1WOjy0XInTSZ", "itemType": "SMKJYcE585zPfpDi"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "o4zAj1AgjctQkNA6", "namespace": "tPxcpOjecMqPJvYX"}, "item": {"itemId": "Va6273TGlaOPmEdj", "itemSku": "p63KfNpB5Un5ObPh", "itemType": "Ek6MRN6zzKPZLWVB"}, "quantity": 88, "type": "ITEM"}, {"currency": {"currencyCode": "sqJTdlIm2TA1uiNb", "namespace": "PsWP4dql0EDA4cU4"}, "item": {"itemId": "WstdHC5KGE92n4sF", "itemSku": "IM7AWUdPJvJivl1u", "itemType": "U4DMwBdaNaGlQD7T"}, "quantity": 30, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "lTTR6ePboL66Xhyf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
