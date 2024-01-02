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
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["3xe5rruJVfLGea0Z", "SDMZz95OYKiqaZD6", "6nEwnZhsjwJeGwaP"], "flexible": true, "images": [{"as": "s7ACC1RgBfoNrHlF", "caption": "i2qJLgmBLE35Yhyi", "height": 61, "imageUrl": "0TQNEI3kfabxJWWS", "smallImageUrl": "I1ECUo1NPpeFhUzt", "width": 14}, {"as": "DgB7n4C97uAPP8PA", "caption": "TLpUpxeJlsBJT6Hh", "height": 83, "imageUrl": "W9nBhvhf8Q0DtJMc", "smallImageUrl": "YQdN66bswAgt65X4", "width": 80}, {"as": "HKWW4fI1IQcoBQEL", "caption": "cNlZkqTZrKgXNwvm", "height": 9, "imageUrl": "aWsQJtRYoagRJK5P", "smallImageUrl": "X9UcOvhPyE11TRT2", "width": 91}], "itemIds": ["B28MpusuhhDJ5slz", "giWZEtyd56LfxnbY", "97jjYgXchCbkXX26"], "itemQty": {"uEdCfQaMAQuTKfC0": 71, "d9yOfIMLds2DbPca": 30, "3DhqciwIeShF9RKb": 9}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"vxuJlhXbWhbwPwTo": {"description": "C6knjVwVnzaqSfJi", "localExt": {"QFC2gXoda0kg16yU": {}, "SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}}, "longDescription": "ByfHZinxNfgPAwkM", "title": "BsznlBUqnLT4AbGp"}, "tKaWNvPbpg7yrRvX": {"description": "fZ6rvgvEY3Hht1Sw", "localExt": {"qTsKKKo37NHDOQe9": {}, "1Ps3ztUIV0dS6hIH": {}, "9c4VfkyrwpuXxbaE": {}}, "longDescription": "RbfgPmi0eHkt1mr9", "title": "EOIFg0dnWIYN2NVL"}, "70Iw157g00jr9b8M": {"description": "uYmmeKTmBNvGYxEQ", "localExt": {"df3ewoGGoY7xmFNA": {}, "mjDDCvs78mcMdiS7": {}, "6YApGJ9ufwLYkqIg": {}}, "longDescription": "LuZS6hsQryiEtOAb", "title": "peUNf26UqkCfgCUY"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 28, "endDate": "1980-06-25T00:00:00Z", "itemId": "xaOBdPF0JmX8qwU1", "itemSku": "cTuHHPB5S3DvPRCz", "itemType": "BrVUxmDOj3cvRFaT"}, {"count": 59, "duration": 15, "endDate": "1998-04-01T00:00:00Z", "itemId": "1W0TGTCm4fZWuk6p", "itemSku": "QxDQpKqxLGeMvr9T", "itemType": "svcMQ7dBsaIecRxI"}, {"count": 38, "duration": 28, "endDate": "1997-06-22T00:00:00Z", "itemId": "SHiWxF0YbuU5ar5q", "itemSku": "TLWUCy0Afgc050XI", "itemType": "ZRW491e94mQjVOOB"}], "name": "nIWhunElqZUodp3I", "odds": 0.12173679964673378, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 58, "duration": 92, "endDate": "1988-12-03T00:00:00Z", "itemId": "y1ei1fIrPvfHnRN0", "itemSku": "6EjRwEQlNapJRfk4", "itemType": "f9Zcw1pEHAyNFxcV"}, {"count": 93, "duration": 74, "endDate": "1978-06-22T00:00:00Z", "itemId": "uMybYGxD9IPmmsLm", "itemSku": "u3kaPj0O4zd8Tb7c", "itemType": "UNGPTBxiFFCrn7dj"}, {"count": 18, "duration": 19, "endDate": "1980-04-03T00:00:00Z", "itemId": "69FTFVGUVhvKhJCm", "itemSku": "eisql14mUHVbMPim", "itemType": "NhcZsU3VAdMDcb4q"}], "name": "lkiFAamqvZI2Kwjq", "odds": 0.6656977665959348, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 18, "duration": 27, "endDate": "1995-11-05T00:00:00Z", "itemId": "Xade41s3rH34mB2y", "itemSku": "PlRpWjmHZAAvKTH8", "itemType": "MuqIg0CzkguwuJCW"}, {"count": 54, "duration": 62, "endDate": "1982-09-03T00:00:00Z", "itemId": "xSvNDlmM5nQFMGzs", "itemSku": "7fzjgyc44mEh9tRk", "itemType": "8knYSV30lnroQehM"}, {"count": 61, "duration": 1, "endDate": "1977-02-03T00:00:00Z", "itemId": "i6t9unQLYXxm09wp", "itemSku": "GAbpEmDY9vLh3u6E", "itemType": "DsUmrV6kH4OotKwG"}], "name": "3UC6XCnnZxF8CmQr", "odds": 0.8659005870062143, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 21, "name": "br34rBBN9tU6TDm5", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 61, "endDate": "1976-05-01T00:00:00Z", "itemId": "MDu87t0ldWf7iSGI", "itemSku": "iKFtWtn4Yr2svKM6", "itemType": "pqLGZ0TBujELAUK6"}, {"count": 25, "duration": 62, "endDate": "1992-04-01T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 4, "fixedTrialCycles": 4, "graceDays": 44}, "regionData": {"cA8wvLsWUNd6lPKv": [{"currencyCode": "qDejvqklTSvDwuOr", "currencyNamespace": "P9lzpiX0VuFpZum7", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["5IQYBQuxLvPuWYvE", "E8SohhhuiTnJarYY", "kHBDdSzBXdxapwhd"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
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
platform-update-item 'X8DD4MYXlrJ81lHv' 'v9rqvEoM8YmVjAkO' --body '{"appId": "3HKsEp6KlqwW4djr", "appType": "DEMO", "baseAppId": "M7tuL81lsR7xxSVp", "boothName": "3Gd2TK0HzYviTgYm", "categoryPath": "x82JVBRLPZ6Iz8tn", "clazz": "e5dbguBF6Gsvvdl8", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"z9x7XZIjU4IK9lOL": {}, "aZaMphKCqTq3EVhe": {}, "JjoEEXBLIxGnNuho": {}}, "features": ["EdqQpoGkUWNizk5U", "cPAGv6c1ESC6hZYT", "JM3WWPvvCiCf33Vi"], "flexible": true, "images": [{"as": "bzf5aANNNs5kgSZZ", "caption": "NUHbIT9szApmWJO5", "height": 45, "imageUrl": "Zn1YXj5zFZeOCOR9", "smallImageUrl": "NvBQZSJPOIKrRBrY", "width": 98}, {"as": "fa2LrnpZxNnLRH36", "caption": "bqS2oFY76PU1AziB", "height": 82, "imageUrl": "sys6GdkDcos5uVJ0", "smallImageUrl": "BJfZ0jvA54CSqZFD", "width": 39}, {"as": "3by2kYSCdnFKLc0x", "caption": "cTjqjdcEfU61OJYM", "height": 26, "imageUrl": "PKVSZCg3XTc9vQe0", "smallImageUrl": "dHJfF6KIuvnRCa9J", "width": 22}], "itemIds": ["lhe98oaFKlQicdrx", "VhrtwSd9QWVMYz7T", "U1TsxsChSclSkb5a"], "itemQty": {"Bi9K9zyv6gFZXI5n": 72, "JgjC56pda3YhtQxp": 58, "dIn7QqXBDXJcrqKm": 60}, "itemType": "EXTENSION", "listable": true, "localizations": {"xoLnWGP1PafIjLX8": {"description": "ce0KbNN7Ycl2JfmQ", "localExt": {"plvGjVQ4aebjfgGu": {}, "472oWJlfglLM4xjf": {}, "kNL4lU6jaGfsD1cf": {}}, "longDescription": "swmeFpvtDtetoQVF", "title": "L8LNW11vtpaTxi7k"}, "489jRCn48bvkCPfK": {"description": "ofwXOIZZQAJza84l", "localExt": {"KKmVOaTS6xBbNrSU": {}, "AW2ak7ISDrBVg6Nu": {}, "DZvPb1kuUfNfUDe4": {}}, "longDescription": "g7q6PHEaqbzHvDDl", "title": "1jiLw3XMGBA6JXDp"}, "A1tIC45C0oaGouFu": {"description": "4hXONgUwJnUpryDe", "localExt": {"RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}, "QcFo9gxOgvDc7xMr": {}}, "longDescription": "RKvw8ISP2WKmCRRX", "title": "BxlalCHtWlKxLpS8"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 76, "endDate": "1982-04-30T00:00:00Z", "itemId": "guycGiq9j2EyIknf", "itemSku": "LDpgHnMOn8nc3gUZ", "itemType": "8ZFyyEr0KBXuJBqK"}, {"count": 87, "duration": 79, "endDate": "1981-09-07T00:00:00Z", "itemId": "8uux9xBomQFPFWy5", "itemSku": "cwNPI6aFo0MVwDZC", "itemType": "IXFNEL3uWVRz3V7Y"}, {"count": 2, "duration": 80, "endDate": "1989-04-03T00:00:00Z", "itemId": "M3bNLWHAbCZixe2c", "itemSku": "Q6O30lpzcBQMAEcN", "itemType": "cJqrKxnMzSYoc4Zj"}], "name": "iMY4H34B6wVd8ipc", "odds": 0.5899514335296582, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 70, "duration": 88, "endDate": "1971-02-10T00:00:00Z", "itemId": "rryHB6GO9zP3Faep", "itemSku": "A3b3YJ9nJM6vtT27", "itemType": "xv85K5MU2qmbeqaV"}, {"count": 8, "duration": 48, "endDate": "1977-12-12T00:00:00Z", "itemId": "INdClpF7OvlBIEgj", "itemSku": "se5kd6GEDo08yq5E", "itemType": "5HleLoog4me2NBFp"}, {"count": 39, "duration": 47, "endDate": "1987-04-05T00:00:00Z", "itemId": "3j9LYdG7xVPqBqe9", "itemSku": "RDQMBSYAFLqp8PF5", "itemType": "hCcoukWpnbz4ys7j"}], "name": "6lxuU3u2HEG0qfKe", "odds": 0.10766913434660086, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 93, "endDate": "1986-07-21T00:00:00Z", "itemId": "sPykS8YLmwtYgWGc", "itemSku": "A0h4G1LZ1HaX5UBM", "itemType": "bsF44VTsLDRzdq22"}, {"count": 5, "duration": 2, "endDate": "1985-04-21T00:00:00Z", "itemId": "F2g7TVtzYEHUodh3", "itemSku": "iUfBthbepUCTWiZ1", "itemType": "uqh7GAi4FEIu44u8"}, {"count": 45, "duration": 77, "endDate": "1999-12-23T00:00:00Z", "itemId": "4ouSgkpK70uJmUL0", "itemSku": "uzElixc023dIvDiA", "itemType": "0tQWlHwBcTtztx3V"}], "name": "Al6tXFbnATCzUOIz", "odds": 0.7622020736079372, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 22, "name": "CZ4AELr5lraa5v5P", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 58, "endDate": "1981-03-18T00:00:00Z", "itemId": "Je32AiwKadEoIVmp", "itemSku": "rwPsa9YD92CX0rIT", "itemType": "ajpwHITGeHTnqRbz"}, {"count": 56, "duration": 91, "endDate": "1985-07-11T00:00:00Z", "itemId": "9ZFgJbQ3Fj1umx4I", "itemSku": "tzkMJ7cudf4r916G", "itemType": "Prhn2etVIQvRkQJA"}, {"count": 39, "duration": 61, "endDate": "1998-09-30T00:00:00Z", "itemId": "4ooQ980ywmg1pWpW", "itemSku": "it1QC7FKe0fnHUlm", "itemType": "U1unGKM0tgfeWy47"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 46, "graceDays": 44}, "regionData": {"MI4gGmvK9gW596Fw": [{"currencyCode": "BNrFXt3TAuKBwBcD", "currencyNamespace": "12ae6r3hHwya4Npd", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-10-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-08-05T00:00:00Z", "expireAt": "1979-08-30T00:00:00Z", "price": 41, "purchaseAt": "1976-01-19T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Hf7dbh2iKNUl0qJq", "currencyNamespace": "zoKMRMG541PAiNjU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "expireAt": "1994-10-28T00:00:00Z", "price": 22, "purchaseAt": "1991-01-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "LMUaDSwwQlnNRZJH", "currencyNamespace": "BSB4fZWEFIZs28Ff", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "expireAt": "1996-12-28T00:00:00Z", "price": 21, "purchaseAt": "1973-06-09T00:00:00Z", "trialPrice": 49}], "f4lhBPbarbWEm8bV": [{"currencyCode": "tZcfVCPdQhim9QKU", "currencyNamespace": "AFTVYelIlGJg9wdc", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "expireAt": "1979-12-25T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}], "o8TWwXWsz9TVmdMK": [{"currencyCode": "EohKzuMYDUTLBeCi", "currencyNamespace": "dXjuGgx8ncXejmeZ", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-03-23T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 24, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "meTrT7cF9oVCh89w", "currencyNamespace": "NOkKYssVejcL3kR3", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-05-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1998-02-13T00:00:00Z", "price": 60, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GAYOHR5BWa9VzIka", "currencyNamespace": "QEl1iUProNB6hI6I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-08-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 14, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "vdRhG9NwV3zDuqVl", "price": 98}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "pcYPK8IxrSZuxWl0", "stackable": false, "status": "ACTIVE", "tags": ["nPS2urJqerobWMZG", "4fJIyFAm3DQht4Jw", "VL5KLTxahWlS6XdB"], "targetCurrencyCode": "aKSLCgOOPXM6XTUh", "targetNamespace": "2dJ90yqHDNacl4F9", "thumbnailUrl": "G6Dl5TFwBY6HKXAb", "useCount": 23}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'rh54CWbYb0Pebyt8' 'b4DGscjwrizsFUgY' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "xHnmSxvkG9UR5q9n", "predicateType": "EntitlementPredicate", "value": "TBjn3d2sFzMS3QaV", "values": ["jZF7Ax6115Kg9U8v", "277Ivjj1A647XQ3k", "rQJXQxoIbVi2CLEk"]}, {"anyOf": 29, "comparison": "excludes", "name": "KMavu4Ul2IaieEbP", "predicateType": "SeasonTierPredicate", "value": "bojDVaZLpx4kEWYk", "values": ["hmWKSSrF35anDGvu", "O6KrKUMhJrASBh61", "r19V18oIrUKXttgA"]}, {"anyOf": 71, "comparison": "includes", "name": "2QdWJFLmoPEgd8EM", "predicateType": "SeasonPassPredicate", "value": "f2HEHvVevhISjbtB", "values": ["JUK5fE3OufPSX3Pd", "OU2V9yw94oa8UJ34", "TIedV3HyoX4VnO2L"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "isNot", "name": "DNp1SZ58aDllwzTR", "predicateType": "SeasonTierPredicate", "value": "gUSMM5au8GJT0mkV", "values": ["PI6zUtf3QaJPGrTN", "17UDb19R6H7r1ta3", "cXXTUIggoH89QNmI"]}, {"anyOf": 25, "comparison": "excludes", "name": "7jK5pxe82pgFiAS6", "predicateType": "EntitlementPredicate", "value": "KxbS7Q2OgRucL1jw", "values": ["me06c6SKLc2mEC3I", "Xl5XCbkOfHaGr5kd", "RXzfjDZZBmOau6sy"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "tvmMB6jzrpRGESmo", "predicateType": "EntitlementPredicate", "value": "XPMqxj4hBgVY3YAx", "values": ["ufc5ZyODR2NVyn4P", "woJcaRMEb15LBlTV", "ZLKbcOdyjqf6Q4oi"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "includes", "name": "TTD81xhNP4t6kYBU", "predicateType": "EntitlementPredicate", "value": "iSNV4qBrt1kcLmRv", "values": ["6EJtl5xWnsb8oWq9", "1VitaomvWTzdsW4N", "4RImNWVIJnhhwFDV"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "cY1HgAnZV4IOglVL", "predicateType": "SeasonPassPredicate", "value": "Yc481dYdvGxJAMDR", "values": ["VBCV9qJhWva2FPBu", "jX0geYCpGJM4sqsP", "A1LF7jdWlekFwO94"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "MiZXXOFwmGWAvNF0", "predicateType": "EntitlementPredicate", "value": "GkwxUNYyNwGiKrkn", "values": ["OadpgegCUjTdi1Eh", "H0Y5mrQgLC6D2qsF", "iQHglUQMZi5WjMZf"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-create-reward --body '{"description": "8i8krFWJhe03coRF", "eventTopic": "ok5d3AyGrZO8GuoX", "maxAwarded": 80, "maxAwardedPerUser": 21, "namespaceExpression": "SoVEBG7VbBPUWipz", "rewardCode": "9C05YabFX4FCK5uc", "rewardConditions": [{"condition": "TFsAFzaO3yJpA3KM", "conditionName": "xBlrRytER1qdTelF", "eventName": "AadM9y66Drf4SSGG", "rewardItems": [{"duration": 39, "endDate": "1985-11-16T00:00:00Z", "itemId": "nzS9SiGUjVAw4v3q", "quantity": 58}, {"duration": 74, "endDate": "1986-12-22T00:00:00Z", "itemId": "uH1mMIfOCDyVAHrH", "quantity": 28}, {"duration": 5, "endDate": "1988-12-22T00:00:00Z", "itemId": "ZWnXqQ1oHFJ9Q0vq", "quantity": 38}]}, {"condition": "gSEhrPpK2q8kxR4B", "conditionName": "uEksS2A9VOA8H9Ve", "eventName": "Hv0L2Acm960EYQEu", "rewardItems": [{"duration": 66, "endDate": "1979-10-21T00:00:00Z", "itemId": "ShGbIIuqK8C403Hg", "quantity": 30}, {"duration": 15, "endDate": "1996-09-14T00:00:00Z", "itemId": "CR6XOMXwKdfqk8T4", "quantity": 88}, {"duration": 22, "endDate": "1988-07-21T00:00:00Z", "itemId": "K30EX0FclpDl5Hsu", "quantity": 35}]}, {"condition": "ArROIodcmM6v2AEo", "conditionName": "zWWaYvBLE46bpuJi", "eventName": "p8JyxJ39vrtuWWrq", "rewardItems": [{"duration": 93, "endDate": "1984-01-08T00:00:00Z", "itemId": "U7dGMjupZkZQY8CN", "quantity": 51}, {"duration": 94, "endDate": "1989-03-22T00:00:00Z", "itemId": "4fiTxK63OHpnUCGB", "quantity": 97}, {"duration": 11, "endDate": "1995-05-04T00:00:00Z", "itemId": "SgxpKWtdtdtVW9an", "quantity": 62}]}], "userIdExpression": "1J5euLAbBgejqc0a"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'false' --login_with_auth "Bearer foo"
platform-get-reward 'g5VByeI3ycMcYYBi' --login_with_auth "Bearer foo"
platform-update-reward 'xKJXCISQdwec1m8B' --body '{"description": "usV9tUh74KVo6Xqj", "eventTopic": "z2xUKLNWSmYyVvye", "maxAwarded": 23, "maxAwardedPerUser": 39, "namespaceExpression": "IJ8QgaLMqi836ULa", "rewardCode": "7cfZl4VuY6rsZyo6", "rewardConditions": [{"condition": "CBRRnoOikIxXKKIR", "conditionName": "6kPmswm5TCAU1cKA", "eventName": "pdJDnE73GLmSZns5", "rewardItems": [{"duration": 29, "endDate": "1988-07-01T00:00:00Z", "itemId": "Rn0znIKzAEAHQpBO", "quantity": 13}, {"duration": 43, "endDate": "1988-09-07T00:00:00Z", "itemId": "v2XiXaBzsmaxjTZP", "quantity": 24}, {"duration": 99, "endDate": "1990-11-23T00:00:00Z", "itemId": "itytGka7Kv5TacQK", "quantity": 64}]}, {"condition": "2p3b63KrcwIcXMhG", "conditionName": "y83Xit6boOLGCcg1", "eventName": "6DqwdQPQ9HkSSV8e", "rewardItems": [{"duration": 46, "endDate": "1990-04-17T00:00:00Z", "itemId": "gTTLS2FgarY903IN", "quantity": 66}, {"duration": 95, "endDate": "1988-08-25T00:00:00Z", "itemId": "yEfRBEj7qms9AGQE", "quantity": 47}, {"duration": 42, "endDate": "1992-04-09T00:00:00Z", "itemId": "hgr9gGfC0GjvpgJf", "quantity": 41}]}, {"condition": "5VDlvSc0Mr7ImwCw", "conditionName": "GqOf0bNs97KvKyj3", "eventName": "MqS7Dcmtfh50eObb", "rewardItems": [{"duration": 35, "endDate": "1973-04-10T00:00:00Z", "itemId": "zWTqgYPixtHk6lWq", "quantity": 41}, {"duration": 9, "endDate": "1986-08-27T00:00:00Z", "itemId": "eUmU96FLEak0mJqj", "quantity": 89}, {"duration": 49, "endDate": "1997-09-21T00:00:00Z", "itemId": "ldcTpdeCD9XPRi4b", "quantity": 54}]}], "userIdExpression": "Z7rb21A2E9pX0BWC"}' --login_with_auth "Bearer foo"
platform-delete-reward 'MqPsRk5htdM5T3fD' --login_with_auth "Bearer foo"
platform-check-event-condition 'SrSHrkoqv2mM6soM' --body '{"payload": {"aTvQq2a9YdFNtRVS": {}, "O0js0hG9xmSnzd7z": {}, "gUxAogcnGkXk17QP": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'kJHRhmLKQuQVFSKi' --body '{"conditionName": "Xl8G2uf6E8EajXLS", "userId": "AS8MKMaxQ1QyJCpK"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'edhuzI7G9NCKKXu1' --body '{"active": false, "displayOrder": 59, "endDate": "1979-06-02T00:00:00Z", "ext": {"I2M5PmXfKnQ7BYGj": {}, "CUDMOrbmoRvWnfmG": {}, "Fy0eUoOBd90h9EDq": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 94, "itemCount": 20, "rule": "SEQUENCE"}, "items": [{"id": "foNewWjwMWDKEt6J", "sku": "hbJ0fwTDaq6b5RpM"}, {"id": "whWPtndriXU9loOx", "sku": "pmEuwDVc12r0DVUG"}, {"id": "gGHkapTCafFMdvYi", "sku": "CBuzUUwyI6Vtd4v9"}], "localizations": {"k4fv3kMiuQ3DhsKL": {"description": "xjt5srPFxBgpFtDB", "localExt": {"mTLH9kP9U53z6joB": {}, "AhAlJGI2YYb6ajBj": {}, "gq6eY4PBNHKPx62t": {}}, "longDescription": "HxDb06ZFy3uglSp2", "title": "UxvF2uLXWilRD7HD"}, "6LCgdFxRGj00RT6L": {"description": "vcnGMJbJIYLssMvy", "localExt": {"9gkfTMRrXVRcAVRD": {}, "X6gmDfNfPGYYSTun": {}, "Mgt3C8hEguCqlMHi": {}}, "longDescription": "QN3HWJw9zIWsiP2J", "title": "Q24meDrwEuTyM2qo"}, "hglzO8AEl6A9sh2x": {"description": "2ur2ccp7R7OqPqIj", "localExt": {"S4i0N9ytb3c8pVZ8": {}, "GlU8962e6gtn5pUA": {}, "RJM1T8QwMNOAzXmy": {}}, "longDescription": "HEV4g9P6a280S5RN", "title": "B5dVCsB7xL4axSPg"}}, "name": "PCiwLxCFLDixZwVt", "rotationType": "FIXED_PERIOD", "startDate": "1992-08-13T00:00:00Z", "viewId": "RVTl0tR00oQgcHdG"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'GK3x76U1EIcklttm' --login_with_auth "Bearer foo"
platform-get-section 'rpgF5szl0sMY8es3' --login_with_auth "Bearer foo"
platform-update-section '6r1FgR70eNLHkVrE' 'Fd8xArWJuCAIfNBS' --body '{"active": true, "displayOrder": 13, "endDate": "1992-05-07T00:00:00Z", "ext": {"zl7X9fHr6WvBxmBv": {}, "Nj3ktaDf9B22HGgx": {}, "akPt7IYzaZUTmvsE": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 42, "itemCount": 76, "rule": "SEQUENCE"}, "items": [{"id": "PnnGsnfmBerp84qj", "sku": "wzWpCF1vyamjsEzw"}, {"id": "tLPxK1os4qR8LaQz", "sku": "Eb39sZTdFfC8x5aH"}, {"id": "LsXHlm1RJTTy9JrN", "sku": "z1K5M1qgFddYvifG"}], "localizations": {"HawNx6yhniEHLbEQ": {"description": "Kc0aUvrKXDIjYC4d", "localExt": {"f9qswSlpCI8Dhjlx": {}, "Uyrs3OSesE5p0DwU": {}, "j2HKUvPYUcQBxMSd": {}}, "longDescription": "OOsn2Nd8Jpa19GJD", "title": "K46Eehx7xasqMY9a"}, "ulsL6NOV5agpS6A5": {"description": "mkufBpWVxIK9D2bT", "localExt": {"cgaKoccaSwWcZmzC": {}, "WGI1cIQcPWAShIhi": {}, "eSKUf3zKbyQk2vQT": {}}, "longDescription": "YX1xsth28NZZgsXy", "title": "cuQNGIDeHlf6IcX1"}, "K9JrK6Or2xx7rLwr": {"description": "PoWiywnxuDLLuIaS", "localExt": {"xoloIH1gBCWVFrvl": {}, "s0ZwosKhDlLfTKxp": {}, "VOXvGSrdkqddI3ez": {}}, "longDescription": "qu6FB0sL2xt6fX9j", "title": "7rhZCAlDlVKBsLZi"}}, "name": "BRXszE7CL1cQCSoq", "rotationType": "NONE", "startDate": "1972-06-28T00:00:00Z", "viewId": "rgkDuWS05m0pGzaz"}' --login_with_auth "Bearer foo"
platform-delete-section 'M2BUXnzUEWTiKMJA' 'f6AgbiEDMfCckWog' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "E5gcfF8AMGZ2FBS9", "defaultRegion": "3Mg6TKwdRMraDLrw", "description": "h3d0ykRGkgqUNIbJ", "supportedLanguages": ["MJ9ABbKVWO2YEDiq", "kwKbpdk7wlDngNiP", "PjpSAlZwFGpea5Ob"], "supportedRegions": ["BB49Km4ClIQmkIdL", "CvNhZ6P8aqZ2yfrC", "1V7ZpJZPHCMqvcYm"], "title": "eDLYEzs2SQUdKr6v"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'gqkjycqclNlBORlC' --login_with_auth "Bearer foo"
platform-update-store '8ZkjsxYtgxplHTPL' --body '{"defaultLanguage": "zynjFZgF3erw7Usy", "defaultRegion": "Hq4bBb0n1JhPUS8B", "description": "RPGV9n769zLJdKMe", "supportedLanguages": ["xeJc7NvgTSgKjCxZ", "jKf8NA4cGUaDfy9X", "nH2r0EKrk5VlnKsW"], "supportedRegions": ["CPccAFn5CEPoH6op", "K5DSO8JyX4IE1z3r", "DwZ1HKsOpyq8agQu"], "title": "z86nc6jLF9DIW2nc"}' --login_with_auth "Bearer foo"
platform-delete-store 'JJKpqmgvUTr8XAtp' --login_with_auth "Bearer foo"
platform-query-changes 'OqUQxzqJZiWi3KQf' --login_with_auth "Bearer foo"
platform-publish-all 'fT5Tn61A1xW6okIq' --login_with_auth "Bearer foo"
platform-publish-selected 'md87ir9op4YfGTno' --login_with_auth "Bearer foo"
platform-select-all-records '5oHzqY3DgykA8zBJ' --login_with_auth "Bearer foo"
platform-select-all-records-by-criteria 'X0rkOHUkY5aSlqhY' --login_with_auth "Bearer foo"
platform-get-statistic 'oSXbn6l5xAzc1nc3' --login_with_auth "Bearer foo"
platform-unselect-all-records 'eFm950dtVAo7w4e3' --login_with_auth "Bearer foo"
platform-select-record 'v5mh6Rum5pbgEt39' 'uJQpgEtchTe3nt7t' --login_with_auth "Bearer foo"
platform-unselect-record '9ztprSfW9OutADrN' 'GBWSJ1zQKxVmRTaw' --login_with_auth "Bearer foo"
platform-clone-store 'jiZPMoZZcyGEHxAK' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'DQher3usApPdJPn9' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 'eIdhIBvTTupABJ4R' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'wH3EdKmYtbqQHNfI' --body '{"orderNo": "ZwrMxf3EnzZVnkLT"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '0Lb85nmpdN26BY5Y' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'I0jeO2zMDSy4kyqy' --body '{"count": 75, "orderNo": "cYzswAGpXqQxctuV"}' --login_with_auth "Bearer foo"
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 35, "currencyCode": "u3iNvn7vLZ7h6alh", "expireAt": "1989-11-19T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "GZF07lsPP5OfHbXz", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 27, "entitlementOrigin": "Twitch", "itemIdentity": "VO2U4uyzZo1rj0Zr", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "Gl1A2vaNeDiSqTfm"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 97, "currencyCode": "dDFfvzeU5iqhx6zv", "expireAt": "1983-09-04T00:00:00Z"}, "debitPayload": {"count": 13, "currencyCode": "URTNIoG1DBdoKH6s", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 28, "entitlementOrigin": "Nintendo", "itemIdentity": "YUT4jyCVJ0V8obTl", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 94, "entitlementId": "8m7Y3wiNloJfey3H"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 18, "currencyCode": "6SjljNPTXA3qbg55", "expireAt": "1994-03-19T00:00:00Z"}, "debitPayload": {"count": 51, "currencyCode": "FkBtXMU6KRIm5xBo", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 63, "entitlementOrigin": "IOS", "itemIdentity": "gBFzG8tlkxWKCU1X", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 40, "entitlementId": "gl7yHvEqpJSrDXVw"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "fbpMpRl6xRyV19cb"}, {"operations": [{"creditPayload": {"balanceOrigin": "Nintendo", "count": 35, "currencyCode": "VIuCOCkt2W1DfI8Q", "expireAt": "1981-04-18T00:00:00Z"}, "debitPayload": {"count": 14, "currencyCode": "2ZJY3QvRa7CDRTcs", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 51, "entitlementOrigin": "System", "itemIdentity": "lWdaNV1VaZTkbbuW", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 71, "entitlementId": "iA4UTDgS2SVEo5M8"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 99, "currencyCode": "ku9GYH4ijqOVM50t", "expireAt": "1985-08-30T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "PbklTHcmgXsrVj3M", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 32, "entitlementOrigin": "Nintendo", "itemIdentity": "8pmEosOXglQwwdeL", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "elXYyNrXweiCnDld"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 87, "currencyCode": "d6mLZ0GTJwEjoZrR", "expireAt": "1981-04-30T00:00:00Z"}, "debitPayload": {"count": 0, "currencyCode": "qnpKwhpZVdw5UMa8", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 35, "entitlementOrigin": "Nintendo", "itemIdentity": "FEzEt8umj5XhKnw7", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 70, "entitlementId": "nA1VynioJcAPwVHU"}, "type": "CREDIT_WALLET"}], "userId": "QixPKVSmWa8TGko1"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 68, "currencyCode": "TqHc0cM7ixq8Tjnx", "expireAt": "1978-12-13T00:00:00Z"}, "debitPayload": {"count": 58, "currencyCode": "vCbMn0Oia336uiiM", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 54, "entitlementOrigin": "Steam", "itemIdentity": "ductvUfVwLahtRed", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 32, "entitlementId": "1SiZlOpIQ8GL7jBF"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 83, "currencyCode": "cF0bkfjcTEFXcTwE", "expireAt": "1981-04-20T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "6nbfM3J9G40Y62bC", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 55, "entitlementOrigin": "Other", "itemIdentity": "ALznQuHVskfCjUK8", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 56, "entitlementId": "X4Q0B2Cj0oOmBmXu"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 21, "currencyCode": "iTTiz7yrIvQj2isN", "expireAt": "1986-01-11T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "HjCiVR1dQ8kuhb4p", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 39, "entitlementOrigin": "Nintendo", "itemIdentity": "PWg8217m7qNkQiKp", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 29, "entitlementId": "u31d8eOdtrfq6ECD"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "wM7mgTtUdPVcQijM"}], "metadata": {"Bhs0kDP6d3nuUZ41": {}, "mSeS9SnGqhJOvykB": {}, "cDpzD9zh6dtPK4fV": {}}, "needPreCheck": true, "transactionId": "DOFjrfqJcyxT2a7f", "type": "CFAUzLELiM573Tdt"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'WjfVciuLnLsBKGsA' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'LPuCOyphUUAV9570' --body '{"achievements": [{"id": "8zaP0wpZgQEvFzox", "value": 45}, {"id": "yUonirH4URx3NkKQ", "value": 56}, {"id": "97KBedcr6PM51z7i", "value": 82}], "steamUserId": "wQ9egK2t46EG8I2l"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'TviKbOgVuN3nhkn6' 'QIesNoYqvVsakylH' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'ikKkpOjqwgKvfXXs' --body '{"achievements": [{"id": "8pDqm31AZSRkuw6q", "percentComplete": 17}, {"id": "FgqG46RsFK7eYlSU", "percentComplete": 45}, {"id": "Vcg6AByNpBo2JYkw", "percentComplete": 78}], "serviceConfigId": "k4IATSIefcqNEn4I", "titleId": "Z0Dv6b8WtaMVvLbG", "xboxUserId": "04KKnh3jvW0Qp3kT"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'yL4CsLwiWUMcpxn4' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'B6XoTNMuqZTHwo1I' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'AJQpb6r8ZeaSHwQu' --login_with_auth "Bearer foo"
platform-anonymize-integration 'iH3Ozu4G6bXxp0gY' --login_with_auth "Bearer foo"
platform-anonymize-order 'ZyF9fJBJkSOrF9Dg' --login_with_auth "Bearer foo"
platform-anonymize-payment '4FcDwBGyBiHewZkw' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'EeuzBBRSknxyWkZO' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'buvig8sMuss76ezT' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'rsDZNYUV48Oh6I45' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'X7HvUtPYONZdFk75' 'OCULUS' --login_with_auth "Bearer foo"
platform-get-user-dlc 'dwKNPUOHNZxML3yo' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'BM9qxd6PWz7sVnMx' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'ge2inL8fBFP1ABaI' --body '[{"endDate": "1989-05-23T00:00:00Z", "grantedCode": "XKEQLkM6o3eGSP4H", "itemId": "tmr90TqGf0OyqJ9i", "itemNamespace": "bJMmRgoxNwp1lGkY", "language": "Qe-TE", "origin": "Nintendo", "quantity": 10, "region": "kHl1wMht2Izq7TCU", "source": "IAP", "startDate": "1979-09-03T00:00:00Z", "storeId": "Gp7Fadvo5EzpX0It"}, {"endDate": "1981-04-15T00:00:00Z", "grantedCode": "sRezyY9GB5sf94AL", "itemId": "BmvdncQkcZb8cWdV", "itemNamespace": "H9bww15zZsaYrJAe", "language": "eDQB-027", "origin": "IOS", "quantity": 10, "region": "PGC9RhzMC7V8BEph", "source": "OTHER", "startDate": "1982-12-22T00:00:00Z", "storeId": "UmnfdOAmu1dX1NqD"}, {"endDate": "1999-12-07T00:00:00Z", "grantedCode": "0RUvvYeJZw6QZFN7", "itemId": "wFCnqpvNesGiVnt9", "itemNamespace": "p2to7Yja1soDE1K0", "language": "yWhR-LqPM-597", "origin": "Nintendo", "quantity": 43, "region": "5rP2A20t6foPPH94", "source": "REFERRAL_BONUS", "startDate": "1994-03-07T00:00:00Z", "storeId": "OBj7v8LHYivmD0ek"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'ycMKlwJTNL2UCWUt' 'aAD7ZZx1iefATWcD' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'SqGYRMdz07xEJ40e' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'h0gpABFBER6WNcDO' 'sRzBkf9A6HjCnFRd' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'SihcvszzQLZBktk0' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'siMup01kyaFwwD7w' 'ecuQb4GNQHVZMKGB' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'nzh4suaGIzttTncV' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'Bf5g3oeuHiNyLkfP' '["QPmjUkvSs5YmIejo", "zmG5HlrIfMAvvpkA", "HRJHZyfrXZmiJX4C"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'jKCeIRIr997KKpJX' 'TLbYWpqeXjaf1f5f' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'jNMZjKJ05puX3197' 'WrMnJtovSMFw8X4z' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'xbdfXgunt1oMNZ68' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'eovHSH3xV3URIRVD' 'YBd6hMB0l7sg7IfM' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'H5Tu1ky1ZYvyeHmf' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'oFkUDP864shbnQ3b' 'VvuvpsDJXPCWkX4K' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'pi8CJ88aMPGFFAQZ' 'bfbmVTEbiRq5Juik' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'mpat75rVbN9ZBtzJ' '33tCwv8H1f451FVZ' --body '{"endDate": "1981-05-13T00:00:00Z", "nullFieldList": ["0HNBYZSrz7pMjESL", "LMPKDXLki6Oz5Byg", "t8Q0RjSf1srB7hGw"], "origin": "System", "reason": "FqTooGGnPEgY0t7Q", "startDate": "1992-02-24T00:00:00Z", "status": "CONSUMED", "useCount": 65}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '42byOwXgKyPhXmcy' 'sae8HpWH4xiz3fWt' --body '{"options": ["hJSu2pUIIuPLFAtc", "WhjAP57QbWvSSp71", "zEPPfmAQiqRRC2ca"], "platform": "quMRtQOILcaDqUIT", "requestId": "BHQR5ISNoFR3GUxd", "useCount": 79}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'iKHW7flVolAWEMmQ' 'SPDTRqjlvwnnCA5t' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'fK5ushaKTPVjyOUp' 'R3uUdgNlyU4IJnqt' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'rjCOsE8VjvzhJwNX' '4bhqCjlwrmsSRV86' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'iic1FIMyF7CcNu2D' 'Yn6E9Gk51kOTJZlu' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement-by-use-count 'TekDMCGUJvERxNg8' 'djSb4Vt2vKQ5vlCd' --body '{"reason": "I519Pf2iogwxM5DZ", "useCount": 78}' --login_with_auth "Bearer foo"
platform-pre-check-revoke-user-entitlement-by-use-count 'KMa0YeyNBQWUHDBn' 'BeePkqg6Zt1Lr5Bl' '82' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'n4YGumTKOlDOy5vh' 'SkxERZ2AQ1jvXYBa' --body '{"platform": "r5RMmmGdWl0wpj5t", "requestId": "VfKU3D8WVPh0Z7Yi", "useCount": 67}' --login_with_auth "Bearer foo"
platform-fulfill-item 'bbB9txAvtRQvqJac' --body '{"duration": 80, "endDate": "1993-02-19T00:00:00Z", "entitlementOrigin": "Twitch", "itemId": "f4noXDFaEUkPUBnB", "itemSku": "0ZEJH3ebM71Tg922", "language": "xiBgHSka0Pz7I1Wk", "metadata": {"Ia0oZ1nXpW1l70pc": {}, "ZgIn4lPghHyMEHBz": {}, "ArbyW10NkJFQxuMH": {}}, "order": {"currency": {"currencyCode": "nfOlX6HYVEiaereF", "currencySymbol": "CPJU2wEzUYUTmZ8J", "currencyType": "VIRTUAL", "decimals": 80, "namespace": "spUOyHC9eKeXzrvz"}, "ext": {"BllwzyC1aTWEmPgo": {}, "y4TkpEw4Zeid4mRo": {}, "FNxv10ckMQVjKk3b": {}}, "free": true}, "orderNo": "0ZuYSe3sI0x2hc8v", "origin": "Epic", "overrideBundleItemQty": {"1AjKhh3JMX7xSrz1": 62, "IzBPWBYKAEFTdlKN": 15, "cdFlo7oAsOlfLB1J": 3}, "quantity": 4, "region": "SkFrvGciNHb7OY5Y", "source": "OTHER", "startDate": "1999-11-28T00:00:00Z", "storeId": "3aKkPuWD59MgTy1H"}' --login_with_auth "Bearer foo"
platform-redeem-code 'A58Jt5NaROjSKFEu' --body '{"code": "Zo2ElXYSS4ezBRSi", "language": "KZDt_WQIV-IL", "region": "UiDGXgh8BKcLqtRZ"}' --login_with_auth "Bearer foo"
platform-pre-check-fulfill-item '93LuR8OEyICvwgwB' --body '{"itemId": "FehwtdJLdn3R2wo8", "itemSku": "beVQvgeP9qOHaLwY", "quantity": 28}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'EMRPkdTcAzkIlndN' --body '{"entitlementOrigin": "Playstation", "metadata": {"JA27Qz5SjzQfOLYu": {}, "9O46OOzz9p57qSpH": {}, "erzO87cg7TqtMiQg": {}}, "origin": "IOS", "rewards": [{"currency": {"currencyCode": "ZrSsuYiIPei0pXgl", "namespace": "JYnKkoCAZuolAWnx"}, "item": {"itemId": "kImVbDP0QX31gI7V", "itemSku": "mnGIRMvXe6BiphIF", "itemType": "e2bzr6qQw6fSESkM"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "PMBb12gpmShlmIt2", "namespace": "nfhUaZGqjslu59GT"}, "item": {"itemId": "2E6AacmZRXZm626P", "itemSku": "OXWVj3KP1mX0iYHX", "itemType": "BU3Uk2tQm307IORT"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "sHZVsG6izJZruOJv", "namespace": "SRFLDSdj8elbtHvD"}, "item": {"itemId": "U91DmHzwiqVPCJ5j", "itemSku": "18Ou3aY8nceFU5GK", "itemType": "mcEKp8AQwqgJs6O0"}, "quantity": 88, "type": "CURRENCY"}], "source": "IAP", "transactionId": "K6HEVIQJd3930TGe"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'wjRyfo4nWVZZbKFs' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'KOmgEhjH2wFzCpxx' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'JLfAg5cFT0gHAklt' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'cR3eHFbiAluHv7Hs' --body '{"itemIdentityType": "ITEM_SKU", "language": "Dq", "productId": "g3pXjmtpNfCrIj9n", "region": "tYo3dupUHNu8abrV", "transactionId": "VOKxr9Pa315FKDjG", "type": "STEAM"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'qS7Tq4YIyZAFQ6lZ' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'fa2jdNvpWf32JS1a' --body '{"currencyCode": "v9VNpVLT0LvqcfSd", "currencyNamespace": "O1nAjY5FvADb3GUQ", "discountedPrice": 13, "ext": {"xHGxhZqNXJ6JXSh0": {}, "Z3SWISs1dYrJKmx1": {}, "BT6iLFQejNZJNF2h": {}}, "itemId": "m0TqBQprHn3whPKU", "language": "5abnqw8fFa30pVbh", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 69, "quantity": 14, "region": "siWm3V9sirE0JOQx", "returnUrl": "WeHypqCWMDPRI2cC", "sandbox": false, "sectionId": "oE4esuiDrquccz4J"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item '6fFQezJ5E3iYHIkn' 'vPcJkjRevVYfiExp' --login_with_auth "Bearer foo"
platform-get-user-order 'AgoK9YDq1x3dkbJF' 'DEBEOOvJ5BKeipIl' --login_with_auth "Bearer foo"
platform-update-user-order-status 'dsgB4hOxb88WgKSL' 'IpneDQCfwucHRL3o' --body '{"status": "REFUND_FAILED", "statusReason": "I8Dzyh1N0JEKNoMt"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'HvjM7X1fjzknv2HZ' 'MIL2P2bh14LroFTn' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'AuujPeP9N0vdVB5a' '2XkS3XQfMuzZh4Ah' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'ZRe2hgU56xtyJtnb' 'TDXu7FbleSP5PcdO' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'uq0m0rvakR8rcwoj' 'LRjhcaJ56nGlYZ2t' --body '{"additionalData": {"cardSummary": "od2BGBXjNyRCtPOr"}, "authorisedTime": "1998-04-04T00:00:00Z", "chargebackReversedTime": "1987-12-19T00:00:00Z", "chargebackTime": "1994-11-23T00:00:00Z", "chargedTime": "1999-10-08T00:00:00Z", "createdTime": "1993-05-10T00:00:00Z", "currency": {"currencyCode": "Zy3gdDms3kb1htW0", "currencySymbol": "UGJpwQZlXuzu3m9u", "currencyType": "VIRTUAL", "decimals": 11, "namespace": "JjCDwg186hGWKfO9"}, "customParameters": {"MnoT3t99HmcxzjDh": {}, "TrcBKtU956hOg8ou": {}, "kDVdweG0sFHxTHa2": {}}, "extOrderNo": "k60SzCqUgq1gLbcI", "extTxId": "MevTmC631p7q794b", "extUserId": "u49lINFTtERAXT2h", "issuedAt": "1999-03-01T00:00:00Z", "metadata": {"BCnRz9w2nur0B9jK": "aunAcylsau7wRQmL", "4i3eRyIECEDa1I4l": "wXqwPfq3VzHQjtol", "x64w1gyvjacKtGqx": "MnoAXRlcq0mYWKQY"}, "namespace": "lqMmu2pvF6rP03bQ", "nonceStr": "aq1cT88H6RCW8gJm", "paymentMethod": "GzDlqxtLsR2AGOiP", "paymentMethodFee": 14, "paymentOrderNo": "s9DQ0VU1HED9CGo9", "paymentProvider": "ADYEN", "paymentProviderFee": 96, "paymentStationUrl": "33TDzk66ix88sAUr", "price": 35, "refundedTime": "1981-11-11T00:00:00Z", "salesTax": 72, "sandbox": true, "sku": "xCvyy7caxz4MQrOD", "status": "REFUNDED", "statusReason": "PuQZX5KjdNrEwfWo", "subscriptionId": "2MwulLg4bsO4YHEY", "subtotalPrice": 76, "targetNamespace": "ARuFLx4rV4CXVMrD", "targetUserId": "YKe2eTf1axo16GqT", "tax": 51, "totalPrice": 43, "totalTax": 64, "txEndTime": "1994-03-13T00:00:00Z", "type": "LLiMvcu39YZJypWz", "userId": "pNXgnoKIz8O8NglJ", "vat": 40}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'NAbl1g5ZmTTGYRbP' '4QVey9pEz1TV5cUt' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'PBsw01i5Mf7WvbNS' --body '{"currencyCode": "eeDNfUESLlwHv3Jg", "currencyNamespace": "teOLyKp8a1VqxXnR", "customParameters": {"hDd9TGkO6aIYqftw": {}, "1SrM2nhSEanfUYrM": {}, "U6A43UKGpvC1cr5T": {}}, "description": "1PSXhduTWchzXDv3", "extOrderNo": "TAtBjP4HSuiYCbG0", "extUserId": "UyYUJmNL8p6AbdtU", "itemType": "MEDIA", "language": "EeV-rVQa-Ry", "metadata": {"oel2QK3aSOYdmMDi": "kc3Fjm9HoQDemtiQ", "vURYZCeF30RT9rBg": "M8o7lxXq7TkdM7FV", "DCBcvVegrZddP8lL": "Qo6tHj4z4cAM4LMJ"}, "notifyUrl": "fWNZIxAgBpeubprK", "omitNotification": false, "platform": "8jTyRd3LrR1x6U1v", "price": 28, "recurringPaymentOrderNo": "zSLjm9zmzUW0vPj9", "region": "0jmLTt5YQGawcomP", "returnUrl": "oiYoQ1f1AYq306Py", "sandbox": true, "sku": "TUQY40Zrpn0vAD9Y", "subscriptionId": "sPeDWrAVQZSvgWuC", "title": "uLsUGrVQAbhS54Zu"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'QHKersDmJLUHAKtf' 'XCKOna8DdjtZhh6o' --body '{"description": "fsUoRh6r0e0J6vyq"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'Pw7YlmV3kES0Hi88' --body '{"code": "UYgSV40OvY7apPCr", "orderNo": "N5bEhmuHgKeWizEp"}' --login_with_auth "Bearer foo"
platform-do-revocation 'w1zN0mOYgGhHMz9d' --body '{"meta": {"ddLWJWDuSYtCaIv4": {}, "Lp91wYUJPbvzn8TY": {}, "oMDAaUXSuBQdvdhJ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "e0Z2G2N09VIbbsz2", "namespace": "4fQKDZX6plErw0Gb"}, "entitlement": {"entitlementId": "0ceCbphW4YMhJ0S5"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "bez9ZLHW882riiPf", "itemIdentityType": "ITEM_SKU", "origin": "Oculus"}, "quantity": 73, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "f5lwXvRNDBnmL1KQ", "namespace": "n77hiP1lzkzjYDw6"}, "entitlement": {"entitlementId": "mLBordrJkD6vy60u"}, "item": {"entitlementOrigin": "Twitch", "itemIdentity": "AJIHEZv5zyUUyNJk", "itemIdentityType": "ITEM_SKU", "origin": "Playstation"}, "quantity": 54, "type": "ITEM"}, {"currency": {"balanceOrigin": "Playstation", "currencyCode": "qkhlqMnE9Wj90EQz", "namespace": "OidrWnLrXqImgDf3"}, "entitlement": {"entitlementId": "GaJsdCZND0wgYOil"}, "item": {"entitlementOrigin": "Xbox", "itemIdentity": "1e1825iasunESjcg", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 100, "type": "CURRENCY"}], "source": "ORDER", "transactionId": "RgBUwBL28BqM8Uzv"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'KqeoTiNKGRUMrimG' --body '{"gameSessionId": "Az6OhmHOpCdr3WzD", "payload": {"m3hJdd6uaO9TiTPn": {}, "Ih2iaIBpYC4txul6": {}, "VKYlNYYlHPwKDpJm": {}}, "scid": "keoAkp3Z4pgyJYwc", "sessionTemplateName": "lb4gd4QgQut2hiPu"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'DdOPHcN9drwqytie' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'XpIZfr5XDq9dGLHj' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'tgE2bTXJxCCFqPND' --body '{"grantDays": 33, "itemId": "leYNHXeOpaRDwYLg", "language": "e851PbK2MFKvw5TW", "reason": "jAh4gy41LLzQ2IjY", "region": "5PeNr4JmYxH2qs28", "source": "hePJjMp0TKKUBfPN"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'I9f2oLWDPSZexfKV' 'xqdxmh5QWxuQuI7g' --login_with_auth "Bearer foo"
platform-get-user-subscription 'dDTDb3WdnOpzTrRz' 'CCafADJfWBspT3ML' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'wJZquMQSPp5XD4S1' 'ilfgff7Et4uY8nlB' --login_with_auth "Bearer foo"
platform-cancel-subscription 'wGNHgfgwZwVMvshG' 'msg6ZJYnkHDnHTlR' --body '{"immediate": true, "reason": "HFQk0VzWRNFNiUn2"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'yXMSCcHADYpS861c' '0CJ7LzpFvOSF6xKA' --body '{"grantDays": 29, "reason": "yrnvXY5dDwneac75"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'C6S2eHsH4Y84hL75' 'QboMHCtzEF9FSeg6' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'WYgtfuqJHrs4e3Rn' 'WR30MdBZezfwc3H0' --body '{"additionalData": {"cardSummary": "qSbMq4GLj8aGsH0q"}, "authorisedTime": "1986-10-02T00:00:00Z", "chargebackReversedTime": "1999-05-04T00:00:00Z", "chargebackTime": "1986-12-22T00:00:00Z", "chargedTime": "1997-11-18T00:00:00Z", "createdTime": "1997-12-28T00:00:00Z", "currency": {"currencyCode": "HIEqIFEcS0ynIMOY", "currencySymbol": "WpUYUQMooiKT57rm", "currencyType": "REAL", "decimals": 16, "namespace": "jEnimeR7EFBz43E9"}, "customParameters": {"FkOPVu2fDtOjW1iS": {}, "YQbcebBd5wb5H3qp": {}, "poCiHMD4iBK2O7qY": {}}, "extOrderNo": "tOHV5hnpjc5CNLnn", "extTxId": "Evo25aEtdjls5oad", "extUserId": "seJg7y4Q9CU3fjSR", "issuedAt": "1971-09-19T00:00:00Z", "metadata": {"XD4HDmdvhMXxiKR2": "9LKIhNU43K8bihdw", "3prp0UHlWUxkBefh": "xRtrqbv56oqwnCLV", "c2qHZuuedbBOd19D": "qZJRYV1oqNLmPAUI"}, "namespace": "Mwa2wYq6DsUq38bY", "nonceStr": "vaWLoKzHnngdfFnO", "paymentMethod": "fY9stXH6LYXXMndx", "paymentMethodFee": 55, "paymentOrderNo": "XHbEwAvvpEeHhXiJ", "paymentProvider": "ADYEN", "paymentProviderFee": 48, "paymentStationUrl": "JqYSxVKUYMimVLzA", "price": 85, "refundedTime": "1971-11-29T00:00:00Z", "salesTax": 41, "sandbox": true, "sku": "8agb5HPsBU0Eo6QJ", "status": "CHARGED", "statusReason": "vBRJ4UP09fabC01T", "subscriptionId": "hm9f4AWpyiKVT3Ov", "subtotalPrice": 62, "targetNamespace": "Kf3SwHekWIz4rXlH", "targetUserId": "5jw99HxCjXWcaXBc", "tax": 10, "totalPrice": 77, "totalTax": 63, "txEndTime": "1996-02-05T00:00:00Z", "type": "6DxpwBm2N8PdQ5mQ", "userId": "aGXEbnmWR0H3EkrH", "vat": 33}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'oz6qBQnEDgX49n1x' 'TDFcmOm1sqdIWU6E' --body '{"count": 88, "orderNo": "mMwv5pmiIVnhlLoM"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'emsp7o3F2LQw7Y2V' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'dSxgXez7VvS0C9JL' 'VQQPa7PPx4Zi6WaC' --body '{"allowOverdraft": true, "amount": 22, "balanceOrigin": "Twitch", "balanceSource": "IAP_REVOCATION", "metadata": {"HMbJhNwZgf5nlMDO": {}, "RYuXnPNJgayPFcyU": {}, "nKXA3mcyMmX6WF8j": {}}, "reason": "tNAVOYqSH533YlJ9"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '3CCGBXv4fP4VPzhc' 'H4UJrrCKvrOAi7lM' --login_with_auth "Bearer foo"
platform-check-balance '{"amount": 14, "debitBalanceSource": "EXPIRATION", "metadata": {"jAevOnES6YJLlb2A": {}, "fUEEBbqMMKvkOsR1": {}, "fHUyirMVMOFES2J2": {}}, "reason": "OzNlJE3uqZz574g3", "walletPlatform": "Xbox"}' 'cA0PwZxTIZVSGQyT' 'zhs9Asy4d629N4Yn' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'olVWA2dWxBs056jk' 'PCUuE1pgdHvlQKiR' --body '{"amount": 16, "expireAt": "1994-08-26T00:00:00Z", "metadata": {"HTrKqVwnpPn8N5xM": {}, "RgU7cPqNZrLCRRUy": {}, "sya4J3rvTzMTMSwr": {}}, "origin": "Xbox", "reason": "PQPEp5UtwUWGt6to", "source": "GIFT"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform '{"amount": 65, "debitBalanceSource": "OTHER", "metadata": {"TLq0W1JqwKs1mO80": {}, "L7IOHlf6j8PZOzUi": {}, "QKZqz5NSp0B7LODN": {}}, "reason": "3Boi2sSAO2n4MZQt", "walletPlatform": "Epic"}' '53XQB93rOW0guPoQ' 'bYzc1RDVhs2lhdzx' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'xgibuqUuyW3cMz9Y' 'yduMomEHcU15St4v' --body '{"amount": 35, "metadata": {"3rNbE4bbDU4FMTbQ": {}, "aANJOODGerDCWcl3": {}, "VSJENQopeHD6iKBG": {}}, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'IRtLfPngD83roOeq' --body '{"displayOrder": 63, "localizations": {"vN8pRGoUtmbWZbEj": {"description": "Pyq35BWDoc3qNcQF", "localExt": {"FyHv141NPqjRUMKS": {}, "QjFdjqTaZFsWzbqw": {}, "TZQIN5jC6a8mEVCX": {}}, "longDescription": "HmFnrSL0PJcZQaCe", "title": "NLYxMID9pqZ5rryi"}, "MMt6fQtLhzylaqui": {"description": "oT3QBt29AiRASsuF", "localExt": {"M4ahGw7XcF1Qwzz6": {}, "06UGXPhoNZlXMef7": {}, "AvS3TfKx6ByTygbt": {}}, "longDescription": "OtcQS4Cmgw1wRUnI", "title": "VYxY6OhdkrYiCino"}, "VOzo4Plv1IlTpEhj": {"description": "TFYdzsUNvQAn2LuM", "localExt": {"jLqwmVz3zKsfjz1m": {}, "FkyxoUzfMFoXCOgu": {}, "Sq2A4R3wDdSkNfHJ": {}}, "longDescription": "tA3QiX9ZvtydbaVb", "title": "0scd97A0GP6djn2P"}}, "name": "s3IVT5hUZ3cnDq0d"}' --login_with_auth "Bearer foo"
platform-get-view 'dZG0EpfGAqHKcSxU' --login_with_auth "Bearer foo"
platform-update-view 'c2YgRpk2IFGIgIps' 'cUpVAciu2XPPUxzX' --body '{"displayOrder": 69, "localizations": {"vEF8rHd250nyihcU": {"description": "VGHQczI5ZoTRUkjG", "localExt": {"oRkPs2SO9XrgXNIa": {}, "U11cBXLwTfopqeZt": {}, "HJnRgaGfLMFbvyI5": {}}, "longDescription": "PZGzVLcmZKKKYARa", "title": "pe2tsNczam4Cdd1Q"}, "Yvww4XDokltgq2vX": {"description": "tUnY6UhDJ4pe0s0C", "localExt": {"uhl3dU9b4seYCyiB": {}, "4tDCWx3cEX8wTi1v": {}, "2abpCWytPEi9Ze0h": {}}, "longDescription": "L9rPkV5GkSrcl2O4", "title": "7XVzU7qlNVk7qnmB"}, "S3XKDhp1OkMcErme": {"description": "H0lX1hj0LaXgQ94f", "localExt": {"lh775AQfzNjQ7IuM": {}, "SY2epRDJjDyMDKQh": {}, "uTjtQZyIiAmCL8bN": {}}, "longDescription": "TTfqLCv9DYBOProN", "title": "4UWbQaKFrTv4JWEl"}}, "name": "mOCxqPrq9I3XJWBx"}' --login_with_auth "Bearer foo"
platform-delete-view 'TLcOef8MgIwkrKFE' 'twESJCe2ksG3nZE1' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 22, "expireAt": "1988-05-27T00:00:00Z", "metadata": {"2fILFzOlAZbDQAEJ": {}, "LbVWH2XLIg3MgmdS": {}, "vWp3h0xPsVY8qNwB": {}}, "origin": "Nintendo", "reason": "TY4v9NNfQSYLFKSl", "source": "TRADE"}, "currencyCode": "k1zi0JSa5cRn31D8", "userIds": ["ubfdXi7BycDPckeG", "JUgU8bD5mGFFmKTT", "UxG0mpmFxxDNXGlG"]}, {"creditRequest": {"amount": 73, "expireAt": "1977-06-24T00:00:00Z", "metadata": {"ay4Csye3iJLtjsu6": {}, "ZJRCoDq3geuHFFaZ": {}, "zPIjETqcKN1gaQ4B": {}}, "origin": "Nintendo", "reason": "tjWpJAlKHF0ebxhJ", "source": "SELL_BACK"}, "currencyCode": "XQ47WSGyDCKF0LLh", "userIds": ["KAna0ji757aNDFeK", "O3lGZ7eGOPj2XoFu", "g8BUQUmPHnPumcaz"]}, {"creditRequest": {"amount": 28, "expireAt": "1977-12-19T00:00:00Z", "metadata": {"t1es7A4PFduN4gx0": {}, "UC6eWKCFGS97Si6X": {}, "yLVPrkUxyZ1OH5Nn": {}}, "origin": "Epic", "reason": "nMT8QOyTuUSD9Imt", "source": "ACHIEVEMENT"}, "currencyCode": "HR6xbcVVonwz27DW", "userIds": ["fGRVhbZTvCPrrZCT", "U5WUJizF69PSsquW", "UafwbFPX15633pFg"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "A7i9tqvfHmFvUZiU", "request": {"allowOverdraft": true, "amount": 46, "balanceOrigin": "Steam", "balanceSource": "PAYMENT", "metadata": {"OXSGwQkJuy9oLFcH": {}, "HcraLXR2n9JQvq7N": {}, "KWIHYsii3fCh7sie": {}}, "reason": "JjZPAkiWumllU31u"}, "userIds": ["fJOhNaIT0pv7XeqO", "XPwYxedGHCIkmt4b", "8gY3c4SryWB4yRaD"]}, {"currencyCode": "xvxwaLM8HkVOW8Pn", "request": {"allowOverdraft": true, "amount": 23, "balanceOrigin": "Twitch", "balanceSource": "DLC_REVOCATION", "metadata": {"mzJbdkykVAnmnRfU": {}, "ilcKA84d9pMsl7zr": {}, "NJvDiP2hNNEI8QrQ": {}}, "reason": "6H1ro5CtU8UjgyCU"}, "userIds": ["r4nJWUvLp1wxGF74", "pM1JBcTzf4dz1Boj", "PoQg976409vFd5z9"]}, {"currencyCode": "7468MXUq3uIffkIp", "request": {"allowOverdraft": true, "amount": 26, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"uKvtUVtqbDWnJ2i9": {}, "TRmJOqIl7U12hO5v": {}, "pk9DOSgbsdGVPLD9": {}}, "reason": "A5NmuZDUV3yHurgO"}, "userIds": ["ORg3tChsS3fFpaS1", "fba1XeoHYTNoRol8", "4UlkxtP5Vok9sNK1"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'uq1mH3oYfPK2QiAU' 'hIfi17YrkWHNxiaN' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["yqBfgw58Hx0XYL0f", "JOPYpnPqGlPnhBDO", "WqDU8N3DjVUt0n0j"], "apiKey": "fyDbtIXICLkK8Zvb", "authoriseAsCapture": false, "blockedPaymentMethods": ["xVxbtpSKOfiIP3S6", "pypZqISn3msrykQF", "tW8QGKFZLrIfqrZu"], "clientKey": "u7IwKcT7sAsv2TKC", "dropInSettings": "bYMVkXEHmsHwIGGs", "liveEndpointUrlPrefix": "usS0zZRODEKPdudZ", "merchantAccount": "sLaf8aZrXW84dt0T", "notificationHmacKey": "STmy7XF26K2U7xtt", "notificationPassword": "Uz8nWKJjv06PuffH", "notificationUsername": "ghAQfAsYXVzBenLt", "returnUrl": "aAoYyRfiCWrm3s1A", "settings": "h3TII70MIcBMJ045"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "08jKedx0CVRpd7Sw", "privateKey": "Zw2UkjDzJ4NuMMgI", "publicKey": "13nplXaUQV5QEvKE", "returnUrl": "lLfbB7gwwAR1xFrn"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "yirw3iJt5iA3JS2x", "secretKey": "eaJ08JrSHPqdhKHn"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "6ZjZMdr1C2TIQzRJ", "clientSecret": "Y7UfYSrdN0JVz4U4", "returnUrl": "3EcV1FRyeeqehMNe", "webHookId": "RYKeMbL0G4v5D6yl"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["ZguO918X7rLoexHB", "MBMMAYokSWFwajRG", "UyklfLVY6g3PO4hK"], "publishableKey": "AeF4GUV5m96qcCJs", "secretKey": "VOWtu5RPsqd66ImB", "webhookSecret": "EuhnaxZVf6MD9r1y"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "5Ihr531Kajxq7lzu", "key": "VRVEvhKIbrq1xsGp", "mchid": "dobYun8hcO55hVjf", "returnUrl": "WyK02w5QytAmkanu"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "kAzAMaRvIUhUwguG", "flowCompletionUrl": "gbLLN3O7CEYjxqEl", "merchantId": 86, "projectId": 79, "projectSecretKey": "5lA2FJ0iGLRTXGsC"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config '5mxxse4eeuMgEctV' --login_with_auth "Bearer foo"
platform-update-adyen-config 'Eux2MSuwsEHlwdeJ' --body '{"allowedPaymentMethods": ["yhsHS6YqPudWviQs", "ULL1txfX9tqFSkGX", "oIcFN5JL9M53Mg0M"], "apiKey": "zWS9usxxnMhjv66D", "authoriseAsCapture": true, "blockedPaymentMethods": ["rtIHyyMq79EdB9Mx", "aF8QHGM2IuQYBO8m", "0HgTth479W8rXqwG"], "clientKey": "VIRWgTNHCka3Wb5k", "dropInSettings": "H1BrLWUetP7nmESQ", "liveEndpointUrlPrefix": "DV3BD1nnEzoUlUWq", "merchantAccount": "P4ElzL44KEm3uHBM", "notificationHmacKey": "CP5ckjphURs4ksgs", "notificationPassword": "KJ2R6Jacwwu8W1zv", "notificationUsername": "rKMRPvwA9k6yJz03", "returnUrl": "NETdywPqYerrpOm4", "settings": "M2pM4fIfcHBWZM50"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'aHbPXRns3qwYL6Lw' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'GlZGF7XQPLAcIL7F' --body '{"appId": "vAMWqhyyNZH1Cduc", "privateKey": "B5y5iMdeBG7REG4m", "publicKey": "eKEabfVXBJPIZqZC", "returnUrl": "5d6JuFdcfiNf0DOH"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'KwxDF5GJhCjVHiCn' --login_with_auth "Bearer foo"
platform-update-checkout-config '2hTefT8gPFJ4WndM' --body '{"publicKey": "pQhcLK0WTZbtmQkw", "secretKey": "C8azx3IRWme3C6p2"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'r4D3NQdjrjkX3AMg' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'K3JgZufzssA284mG' --body '{"clientID": "7uAojLYBsx8oqMzb", "clientSecret": "E0ljQaBtb47V691j", "returnUrl": "0FZp2vjOXptxzx6k", "webHookId": "kaZYpl52sQR9Znp5"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'd1eSwrG2GBBEWrDb' --login_with_auth "Bearer foo"
platform-update-stripe-config 'Q1ZzhDuLHq9LTBst' --body '{"allowedPaymentMethodTypes": ["guOdN0O7l3GbKPHd", "DTQDEEE2mTsn1NwJ", "71szsNmnqZSWdEyO"], "publishableKey": "VYrTdDq7IqbTVv8B", "secretKey": "LsqQW8HSrEm5Y7jI", "webhookSecret": "232SjktijiNzTUe8"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'KdizXmrmK0sCUsqx' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'KocHomtjoU1kUqRe' --body '{"appId": "dwIu1TSRr6r8mzfM", "key": "edpcKhvHPlvYanGq", "mchid": "Ekn9OEVwLWGT4MXh", "returnUrl": "mzvRQb7c0vmjWq9f"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'QqzulLGfQMqSLQDl' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'RFYMVfiAMa6Pco7M' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'fvikslpyL9BYLVVz' --body '{"apiKey": "nF6hMYfksp8VQhYS", "flowCompletionUrl": "FeBOp0ilGQFwHUtZ", "merchantId": 41, "projectId": 42, "projectSecretKey": "gblT3aIDKn9qJXnc"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'm5igpAewbmnWk0E7' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'YaPblcWEyNgvs5LE' --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "nuhQuIdvZdj6AspW", "region": "BfRnLcLbp7OmcrDJ", "sandboxTaxJarApiToken": "7u1rrRPcnG89rnNW", "specials": ["STRIPE", "ALIPAY", "CHECKOUT"], "taxJarApiToken": "6dziWvdNcwfUBMdN", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'TaiLxFMXRpDP9xut' --body '{"aggregate": "ADYEN", "namespace": "WALpToj9rgr5RffM", "region": "5JXvPdzEpDln04F8", "sandboxTaxJarApiToken": "BQjzobhDa8VxKOrf", "specials": ["ALIPAY", "XSOLLA", "PAYPAL"], "taxJarApiToken": "RIfkStOqdXqhDMQ6", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'BLljC7gcT3M1DArk' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "4L80aXFY7SQkym9K", "taxJarApiToken": "vKMHK5fbqioeoRIp", "taxJarEnabled": false, "taxJarProductCodesMapping": {"C3UJruU4uIXBZsEY": "ogFWiH9z4E8zmaZ5", "cg0REtUWY4fVIdqw": "CWF5wmbOubTxAAeD", "CowR3MeCNL1oNrF3": "SmgudQusJLsPlW7Z"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'yORFkN9EbKbTbrDz' 'NgVEcw0lxRam16O6' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'v4VjJf40LjUdOREL' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'VXUFQyVlt9jmxmxp' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'fp41k1uDg59PhdUX' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'VbxEJcKHE764EwhQ' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'fxFKIOGT1WKSmLoA' --login_with_auth "Bearer foo"
platform-public-get-estimated-price '0ILaESC1GJXsoBwq' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'h0TQXa2j7v3zQJoQ' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["LTAlW75icIKUpXaz", "sFrmaGNoi3RPTgWo", "tLNz0u8ySxA0yrjz"]}' --login_with_auth "Bearer foo"
platform-public-search-items '4q7e0EJnADXC2y0D' 'Y1E1SMK9oA4vK56d' --login_with_auth "Bearer foo"
platform-public-get-app 'sYI5SKV5pDANyJ18' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data '4miBhdVJt81fmLSy' --login_with_auth "Bearer foo"
platform-public-get-item 'Guu5rbJVIwRMtwAp' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "GbXnR3yC6f2MHGGe", "paymentProvider": "ADYEN", "returnUrl": "CPtEKeBWTm78Fn8T", "ui": "vZVTe4L2lXrVPX6r", "zipCode": "5ZTcnVVOKMApTcWs"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'FRUlWBp4gBs9Uufg' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'sVbG6TUe3jbuQ7HM' --login_with_auth "Bearer foo"
platform-pay 'PO4ozK705ykRqSPY' --body '{"token": "ZgPm4JLsXVtBOEet"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'HsxAJ8Ny1LRkPU9h' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'STRIPE' 'ID0EE9InZNLwwAhW' --login_with_auth "Bearer foo"
platform-public-get-qr-code '2b5OHKtUv4lTkQNj' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'xhXdj1CG0EBgst9Q' 'u8Ofl2oB8VTjF0pD' 'ALIPAY' 'HU8iYUOtG5gbQSKW' --login_with_auth "Bearer foo"
platform-get-payment-tax-value '2MdgCH4bWxRF6fBP' 'ADYEN' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'XNdMkdg9TMwxNcQ6' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'CkVi8fqVPRqNbF5y' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'LnYSa8xFLvcYexMM' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'MiDFh5RbW021cHN3' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'QbzVuJZH3k54cExx' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "WKtdGTW4FILotv5y", "language": "ua", "region": "0i6ifYP1zfgjsy3V"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'RjX4qA4g9OGoWw1q' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'nCAvdnAcokJ0rzqX' --body '{"epicGamesJwtToken": "2KJcYHgiFDxclBXa"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'p6j73doCWxhubMXb' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'xNvT6wAffv4uzKAw' --body '{"serviceLabel": 17}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'FHWhDRJtyYEt7ygZ' --body '{"serviceLabels": [9, 22, 55]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc '3551nQBNKcqCkUXR' --body '{"appId": "j8gQHEe4CO370Osb", "steamId": "zRKKPd6mjzLxllUr"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'FYn7cSuO7NxKHUHg' --body '{"xstsToken": "0c4X7fHdITmN9opa"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'F0kh3pCRB3infEVx' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'ArF7TB6A6a71zAJp' 'aPeudUtKPJUmAvxB' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'xJNPlvvYZw4MWzWF' 'DLC' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'uNPf5JCSDyYy4e5q' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'oTZxSoZbQUnUxS6m' '68WL3HDL4yx5I0eu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'BsccHPA2v9XP9enf' 'EX7lloLgIYqxFfSN' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'JlHCjxLNnYUlGQsF' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'py9ZVlLIFwLgT78n' 'ootfUs9559ilm3ca' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'uhrw9Yn2z5cnbm7z' '2Aa24yBTw3wfNGyW' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'f3VujS7Bq5bcfPW4' 'pPZB9YXltCxyztUn' --body '{"options": ["j17t3gHBXvjvziex", "zOLbOWbtcJUxM3AW", "yDkA5LmART6kulpM"], "requestId": "4SRtUE5P4kxmHtFb", "useCount": 18}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'UjprhCxhzW6ZM7Lk' 'TVrtVJZVhxCVdjPu' --body '{"requestId": "tJ8dkAVOJ5imghdf", "useCount": 98}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'QEzz5N5osRYO7wbY' --body '{"code": "h7q02W8tkTURUFmq", "language": "TCMD_csuQ-jC", "region": "P7PjngEFggq91cpg"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'voDBgYfLBdGNAZEv' --body '{"excludeOldTransactions": false, "language": "UXW_ahld", "productId": "56hIg0g8HIxpzm9A", "receiptData": "cFhH4ZlYY3rEuHMW", "region": "wQNmCQmGCF963Cbs", "transactionId": "OawlRBQJH6fNekhk"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory '077gxaj55huTA6Av' --body '{"epicGamesJwtToken": "mW0567BFqbrPIuxK"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'mBXLi6GpnqAeMvg3' --body '{"autoAck": true, "language": "pgq-nHou-027", "orderId": "Kdva2UREoBSFtCLy", "packageName": "2CqgCG7JwJCDqkzO", "productId": "dFwLJpIPxzLE1V9U", "purchaseTime": 81, "purchaseToken": "2jE1Wad232YV7A2z", "region": "HFGbN8AQaCaw9UF7"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'cdSDd99DQZ7vnTx8' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'HDXTJWiyw17ogzmb' --body '{"currencyCode": "j4SLYDrZJvDLGvn6", "price": 0.26684064276653174, "productId": "troZcp16HKXX1ft5", "serviceLabel": 27}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels '1TGZJmgWNHWnvOBR' --body '{"currencyCode": "Ct4onqRo2PnMSRar", "price": 0.5884444849281922, "productId": "g4coy3AFpULIn21N", "serviceLabels": [82, 11, 61]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'FNgDWNC6yh7kgTHl' --body '{"appId": "rxKbsV4XtrI7SFBE", "currencyCode": "gkwHifMHYI581HbF", "language": "Guo_YX", "price": 0.5195132747482332, "productId": "RJM92eX42WW2WKf5", "region": "urEOpASBicX3ZwzZ", "steamId": "7aVhrkmhSOEozGOv"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '8D0iVxzrec5kNwJA' --body '{"gameId": "xm0Rdm9l6nIhG5Si", "language": "pe-TuMo", "region": "5KeVNHU9GcOivIfc"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'CJt4U8VSgXoi9Fw2' --body '{"currencyCode": "5b9qXzlIK2G6AUjB", "price": 0.4605870813738677, "productId": "df0Rp5e5IvFuN1oU", "xstsToken": "sCnBmGMx5F6EhM3d"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'KvIG9MR0hTINvq1V' --login_with_auth "Bearer foo"
platform-public-create-user-order 'R9SJUfQEX996Mh1s' --body '{"currencyCode": "Q3Dw3uyjgQNAs918", "discountedPrice": 10, "ext": {"Qm3W1De2McGd10we": {}, "fF0CJlH55RLEgeAs": {}, "SpQdcmGHZuRVQ8tz": {}}, "itemId": "wqMayP8A3HGNI3Bf", "language": "Lf", "price": 64, "quantity": 80, "region": "z6eJKuOW61akRFiz", "returnUrl": "qxCmudSXivAL3n47", "sectionId": "8mhb2I2yBJeCJghT"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'rk68FWFzuLBdlrKj' 'UbgZQfw6Zys3mN8f' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'IcC9CkharfqaoMsG' 'yv1RuSNdycDssUeH' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'iVDXzSJ8kbFAyidb' 'nXdMSwmkBkKC1h6h' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '45u0wuh9pY0011jS' 'mHFTtfM2mGUUpq3i' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'x7Am7W1fwJnV94Br' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'MSP31wAkVH75UcmN' 'card' 'qcIo9lpz9oM52vHP' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'lwVV3jlPKDEYahnl' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'LJaLCvjRKKX1brmk' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'JDfdngbQD3pO8U3W' --body '{"currencyCode": "94Z8IW2MAL9gYHEV", "itemId": "3wnTZTvYYf4ZFuV6", "language": "qubj", "region": "ia7oFd1fEmDuyAsQ", "returnUrl": "GzwJR5poI718RQnj", "source": "4imu6XFfRcWDXhq1"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'YmGeygr2S4Yw8NmP' 'aBeryzX2hOPVVFqV' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'qxjq1iG3TySOh8SI' '75oXbyq8FBbur80Q' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'wnlgAVfqz6gQJh8s' 'n0bVWRkvmAemh8li' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'oBR7xTXcEIFod3lC' 'zvjHzDHOrSJ1vbB7' --body '{"immediate": false, "reason": "Hd96dGLgkfrZveFM"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'WAFT7l0l1jaOAMCz' 'bsoIgmKwwMDQPjUI' --login_with_auth "Bearer foo"
platform-public-list-views 'osq1l6xo0D4JRbNq' --login_with_auth "Bearer foo"
platform-public-get-wallet 'O6IuP2PY5hhX6uNa' 'h9JoHPj7jFWxSv1l' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'YylYAiZ8c7Zd7EUo' 'ezOLw8C1c5bBB3XZ' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '7ColKwlsNvtFuunQ' --body '{"itemIds": ["svdXGlD40xxIyVwY", "jn6dlC9Kfh9gHulo", "yce0cLJu4ljPWlCW"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'TuGO8MnfOQu3wdT4' --body '{"entitlementOrigin": "Playstation", "metadata": {"jIRtCfqDHSlo54zS": {}, "nRN0zGMworzym1z3": {}, "ZdetOic9AQOFWpdI": {}}, "origin": "Oculus", "rewards": [{"currency": {"currencyCode": "LNhNCyscsMBRLsWa", "namespace": "dk2OQ421q7Nb1vrK"}, "item": {"itemId": "thVvU5on065ApCkV", "itemSku": "N3QchuQ6pntxB648", "itemType": "ss7rBnvQHAM8gSdI"}, "quantity": 50, "type": "CURRENCY"}, {"currency": {"currencyCode": "exnFA9Umz3KPICya", "namespace": "5Fk5TPaEbX29cV8v"}, "item": {"itemId": "7MXctihtxMnIr4b7", "itemSku": "jyfL3zMkklGCPISl", "itemType": "snVA6z0uSfNNpJUY"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "JxnOyvqmswrToyBI", "namespace": "QumxDfAxNqCUtizY"}, "item": {"itemId": "M97ebZcYqwfIHPWM", "itemSku": "kOmrT5HL16jMwECn", "itemType": "mwJv4rpqtzDaz0WU"}, "quantity": 73, "type": "CURRENCY"}], "source": "REDEEM_CODE", "transactionId": "BCHzJ2v9K8c1zOlZ"}' --login_with_auth "Bearer foo"
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
    'g30pagfP0FfOMBOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'eQT4zYIbU4i9mLyX' \
    --body '{"grantDays": "46Alt08rrnG8y2Sc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'XkwjpAp82pGcxvXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'G9LzHpMS53jllopw' \
    --body '{"grantDays": "irRo3A8WxnR0YaMs"}' \
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
    --body '{"clazz": "F3f5KLtpTSsPMGDZ", "dryRun": true, "fulfillmentUrl": "OwEP5Bhh0NStWIgg", "itemType": "COINS", "purchaseConditionUrl": "O1VdtMSews1TrU4F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'CODE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'eJM2fWXGk7JObSHk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'sRkabpmvRsc7ZYvX' \
    --body '{"clazz": "CT6m6mRZAlLBczJV", "dryRun": false, "fulfillmentUrl": "hwVVMGkXNwMYwFyl", "purchaseConditionUrl": "jy5bYQdQ87hUHA0F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'JZwP8GslMpx3m7lE' \
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
    --body '{"description": "XTmnTbtjK9RsyoqT", "items": [{"extraSubscriptionDays": 1, "itemId": "KbMb5jal0ruZmBXl", "itemName": "GSp85q6fuGfo5wSD", "quantity": 69}, {"extraSubscriptionDays": 49, "itemId": "nyabk493I3pvHKDa", "itemName": "WhTN1qyxpUzWIZWJ", "quantity": 93}, {"extraSubscriptionDays": 68, "itemId": "DzWguhujw1EoR58u", "itemName": "CVldefonHJZAiX4a", "quantity": 2}], "maxRedeemCountPerCampaignPerUser": 51, "maxRedeemCountPerCode": 25, "maxRedeemCountPerCodePerUser": 92, "maxSaleCount": 33, "name": "e36SA5dxATLv5PkL", "redeemEnd": "1982-01-02T00:00:00Z", "redeemStart": "1980-08-13T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["RzChdjDGdlk2A2jH", "bAPNGInvbnf4ewKF", "FLoGggX4gQWyZocv"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'okl6MlWOl9feWO2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'mOikTBJHTEm5PSey' \
    --body '{"description": "od5L6OooYoQn9iHE", "items": [{"extraSubscriptionDays": 34, "itemId": "j2BrdCAm3slCwaBq", "itemName": "HpE55sjxBGijw0dQ", "quantity": 40}, {"extraSubscriptionDays": 59, "itemId": "ZNonMrPkzUe9SglA", "itemName": "JGyZS0I8FevJiT98", "quantity": 69}, {"extraSubscriptionDays": 1, "itemId": "UBp56Q4WETxtGMs5", "itemName": "tPKPuK0K4PiMDTR7", "quantity": 78}], "maxRedeemCountPerCampaignPerUser": 24, "maxRedeemCountPerCode": 48, "maxRedeemCountPerCodePerUser": 71, "maxSaleCount": 18, "name": "nhHYzVVlHGFSwjby", "redeemEnd": "1971-05-24T00:00:00Z", "redeemStart": "1991-11-12T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["eASX83SLiIbAP2qy", "UnHnfrEdDfY4TTxu", "8goZgsX4RwfM4qnU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'dcQqZ9F1uivPob0Y' \
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
    --body '{"appConfig": {"appName": "ZEuXQACDDQryNf9V"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "rqgEIsMwNbfti0Lo"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "ePWXbAyGiXa9nUsH"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "dYmGzvx9bSqqyAPh"}, "extendType": "APP"}' \
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
    'Nel4Bxb9KwFYqdhE' \
    --body '{"categoryPath": "Vq3hbsApeASfR0lj", "localizationDisplayNames": {"KxqZcLuhwNDvValv": "3bkoMXNzl1ywEPiu", "nixlEAHZzHs8x5oP": "SkZFIV2feXnTRlzA", "Jy9oFOHB2KEsIdto": "zVltBhoXE4wgcYT5"}}' \
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
    'CdjaJuUzFIeqaVr1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'CE1gu6cYuzC77J4i' \
    'rvZ9tktWLtDdlmVG' \
    --body '{"localizationDisplayNames": {"K6iolEw6IIpDc9X5": "ijmtDGvd9ESdY0eT", "kBWA44Qqsi5yOjvl": "5sRN2ENn1RLi5iMP", "nbg7o1zYpqUsliPy": "XZGYIW5ZDtWbdkzP"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'P47RcUIi2CoNj4EG' \
    '2emxKQk8cBrt5E8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    '8rzDZ08j6ICP75cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '8YDChFi3zLvfQWC8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    '5MxWxvW0veFl3uU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'aMD0mczWxc8f1s2Q' \
    --body '{"quantity": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'ijqEuMfuYFUS079t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'OpZYM1XV0Op0damy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'cnTUOoMkOppZNOkq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'xc42HKv5wvtPJVsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'zaBciSxwzuIpGBYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'THoSVxgQCbpZx5yM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'GIQ1ZxVIefYlKBJy' \
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
    --body '{"currencyCode": "QMqUEfDikX6yOlgZ", "currencySymbol": "rn0I6T0hvcAFTaSW", "currencyType": "VIRTUAL", "decimals": 21, "localizationDescriptions": {"VOGIY7hM6uhonkAe": "0FdTSSEluBxM47BT", "ww3nBTVmBFZ6TIs9": "bTi2m7eNsYEqKkeu", "LWDfeFeExlOFjRh8": "mLFTJLveQSDWnMQG"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'aYRxFWia7yJ2d87X' \
    --body '{"localizationDescriptions": {"jA0ajvb7JcGUFgp6": "LkyXpxJeFxhgTwyO", "51CUpcdxL0a9VDhr": "qWCTXOxQUpyFgZhN", "pOTE4toH57yr01N3": "3p1Gha8HwpagvERZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'I6CqhcknhecNv2Tw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '6YKhVrYkMqXkQ7ql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'aJjSYEseBYCFGoKp' \
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
    --body '{"data": [{"id": "Xx60GmEX9x2BYpyK", "rewards": [{"currency": {"currencyCode": "EBQ7TW7lZvDbwFJJ", "namespace": "hBRdq8BgAI81k4Gr"}, "item": {"itemId": "7jVVx5l3yrH9HR4r", "itemSku": "eG0HwUXxQTf5YpDU", "itemType": "GYsJBEkYUrLv4qUi"}, "quantity": 94, "type": "CURRENCY"}, {"currency": {"currencyCode": "cWiX44azSHcwicUV", "namespace": "q2XPljTZj5R0yZSV"}, "item": {"itemId": "Q8SSeJ4qy4PIKleu", "itemSku": "V271bwZ4niLSzQnv", "itemType": "0C00dtNGGzbGYSYo"}, "quantity": 10, "type": "ITEM"}, {"currency": {"currencyCode": "Z2DvnAxH3pS3jyCk", "namespace": "GKltBNE2UbhNtH3y"}, "item": {"itemId": "Yg4Qnn2uhdw7C9Bx", "itemSku": "1LQOTCbAPLC3iqrk", "itemType": "yJFOVaewFcv9h31Y"}, "quantity": 48, "type": "CURRENCY"}]}, {"id": "uZnoSesWpLUHjGaI", "rewards": [{"currency": {"currencyCode": "cZN28gH4Cd9xTdt2", "namespace": "K1CzpQWslNGnLYUY"}, "item": {"itemId": "R0yOvJhUjzcMtwIN", "itemSku": "UlrhIpnlam2EefVo", "itemType": "pbpPhsana0uXG7GU"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "V1BwgkLDj4pjVkty", "namespace": "oNSsEHlzyd0Sarkh"}, "item": {"itemId": "ltUxgbN5eElQNESF", "itemSku": "LD8hCc9onSNjbQEq", "itemType": "FGwnDG8kz4kvEv6t"}, "quantity": 81, "type": "CURRENCY"}, {"currency": {"currencyCode": "O3L8x1H5OgzHypgs", "namespace": "SeKCvtPz7jagBG9a"}, "item": {"itemId": "1TZ87ltClc3RDXF5", "itemSku": "055tUlenimjIbm0r", "itemType": "iCaNp8dUBDinAB6H"}, "quantity": 33, "type": "CURRENCY"}]}, {"id": "WIi5Bvb1rcuEtWAF", "rewards": [{"currency": {"currencyCode": "763kci7lT62BOHas", "namespace": "o53W3U2Mu9ZGMWou"}, "item": {"itemId": "1U0RVCf3gMWDAodC", "itemSku": "KqfqzeexHA70NgJT", "itemType": "xjtzgO7W3taRvJ6l"}, "quantity": 75, "type": "CURRENCY"}, {"currency": {"currencyCode": "WJwHO65aOFDwpqy7", "namespace": "XOU3DwglyMGNll4O"}, "item": {"itemId": "8ELahcNJqRjepck1", "itemSku": "l0qxRyQ2pi7xuAuf", "itemType": "JakIPXOQznHZTj8o"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"currencyCode": "ObyNJKVSQsaCokoG", "namespace": "ynp6xcqNKJnAhrSt"}, "item": {"itemId": "96OaARAjHLGV3sNx", "itemSku": "S8uLBZiVRYIyQLcs", "itemType": "lTEqgVNG8Aqktgvj"}, "quantity": 46, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "PSN", "platformDlcIdMap": {"JAwIpEy2ZNpojZ24": "I2n25smsrmJFHGiY", "nyhbqxLuTZIxgiUa": "iyy0aWrshpmb1C9A", "l7eWrbNRE0xyYPUZ": "HyLGQ52IjGpRJCUJ"}}, {"platform": "OCULUS", "platformDlcIdMap": {"XQw2EOq6BFjmN4Oq": "KGLRpNWzKZtZnxgy", "wmr4CYNGm7Tk1mMy": "eNRsjQuDEgO3MEQN", "L6ijLRvQOgoaBooT": "awHLMxhx9nC3o6pX"}}, {"platform": "STEAM", "platformDlcIdMap": {"5MDJLCB6WbXWIRpg": "jooaBVemsbkaXZQ6", "nTj9rZpkSntuOeaP": "AyPeEGBepK1Ix4Sw", "jCYjCHniVSn1gYGa": "l5NrBtT0om9OlGzp"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1987-04-14T00:00:00Z", "grantedCode": "25qu98RhktX6qwkX", "itemId": "bCLbh8t0zPkQWRUl", "itemNamespace": "gE0kxzFMq9ttbEHA", "language": "vwY-tOoT-519", "origin": "Nintendo", "quantity": 70, "region": "Gn46fGvodt413MRd", "source": "REWARD", "startDate": "1977-05-12T00:00:00Z", "storeId": "3WKijbqhT3uyQRXv"}, {"endDate": "1981-01-17T00:00:00Z", "grantedCode": "v5SgcJPZPUh2nHQw", "itemId": "pWi8HZ6C0VJ0fK2m", "itemNamespace": "6lQ5Ao8TITYiHSR2", "language": "mfly_810", "origin": "Xbox", "quantity": 7, "region": "SPOUfWQwr4PYf48r", "source": "PROMOTION", "startDate": "1990-04-14T00:00:00Z", "storeId": "aToxBiliy2vtRkpq"}, {"endDate": "1990-08-18T00:00:00Z", "grantedCode": "6KrVcNz83J57t6Oc", "itemId": "YPQ5bk5IeuAi3zWF", "itemNamespace": "GorCbncoj5RvEtXi", "language": "ZZvh", "origin": "Xbox", "quantity": 80, "region": "2sBEijjjpvSzGkED", "source": "REWARD", "startDate": "1978-07-20T00:00:00Z", "storeId": "weFYDBPyd1jJBxbr"}], "userIds": ["QSmsspn5sNfifK65", "buFay9PXgEQS4871", "tvaH9jwcO48pthyY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GrantEntitlements' test.out

#- 64 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["pBJDHIIxTIGI5Ess", "YllIqjJzuQ8GglVg", "xjOGQGlHm8VTN56t"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RevokeEntitlements' test.out

#- 65 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'JKwD8O07L9GG1uen' \
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
    --body '{"body": {"account": "DihceaLdgPZI0fKW", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 45, "clientTransactionId": "LeQxItaK6s3Hha69"}, {"amountConsumed": 79, "clientTransactionId": "sdrxIF6kEAmKGNEm"}, {"amountConsumed": 64, "clientTransactionId": "GB1pyk0PpxXZDy5P"}], "entitlementId": "mbu7RrD9a5mdlXTC", "usageCount": 78}, {"clientTransaction": [{"amountConsumed": 7, "clientTransactionId": "467xHbAiD3Pr3mXZ"}, {"amountConsumed": 83, "clientTransactionId": "dARadfSoctA3GYO9"}, {"amountConsumed": 24, "clientTransactionId": "Oo94gS5DHLB65fxQ"}], "entitlementId": "06GwTmobiBnfrnq9", "usageCount": 22}, {"clientTransaction": [{"amountConsumed": 29, "clientTransactionId": "OFBWhUTPiKR3qcbH"}, {"amountConsumed": 77, "clientTransactionId": "Tl4UiJSCbG4UmG3T"}, {"amountConsumed": 20, "clientTransactionId": "0VrgPuNtOv3jbhGB"}], "entitlementId": "uW8KcyPMfDWSEEpK", "usageCount": 28}], "purpose": "5jqeKssQpme6eyM4"}, "originalTitleName": "8tE7eJRsXNeveQXq", "paymentProductSKU": "nFRYmEIX40XOUoLO", "purchaseDate": "a7oDz00gxcoaH6u9", "sourceOrderItemId": "TVf4DvEzpoPRiClZ", "titleName": "6rlwX99AHMLHqguY"}, "eventDomain": "ykVWzNwPcvGyieBs", "eventSource": "RUduW5lxSlorWEGN", "eventType": "5bPGSOSiiItrSrEJ", "eventVersion": 79, "id": "C37xPXxnfggnZ3EZ", "timestamp": "p6wSAufwYirs9lwv"}' \
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
    --body '{"bundleId": "PKd925u3fFLV0YeM", "password": "rVaYSTRYGFzgLZ7g"}' \
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
    --body '{"sandboxId": "EypQf2Pn9A4gcbDJ"}' \
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
    --body '{"applicationName": "0LmdnOPkIT1C6KGT", "serviceAccountId": "pA7JZ6xullPROSfi"}' \
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
    --body '{"data": [{"itemIdentity": "W9zcxmgNfTHu3vkZ", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0H2s0sibQNBz81zR": "Pntxpgi7tXIcNEcG", "JjOCXpuix5vnPeTu": "9evbRov7Bm40CtZi", "Axk43DGV1SCkw8U0": "d4FvVmPMtpRMWSQ8"}}, {"itemIdentity": "Szi1IrGidRmR5BGR", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"hFwxmkGfPI3j4luX": "QuuLtYa86kvL6cBZ", "QssUUXOsXMNdvW1h": "bvGenRbm3QtsY5Wa", "KM5YY6pYrmeMIHLS": "8egV8XhgDjbrum8U"}}, {"itemIdentity": "xcutmVg8APWKxoj6", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"8VuKDoklYmkytCAH": "8Jiqe7gfV1G6bYgI", "bVKp4Kgew2mHDksA": "6Mv9Nzs19eBq9a1L", "8S1yduOwscICro6P": "8FWIPeqaBeD2uBAv"}}]}' \
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
    --body '{"appId": "IXEc2CCgYcFo9A93", "appSecret": "o22UgObCOiBWdw2b"}' \
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
    --body '{"backOfficeServerClientId": "031dm4N41MOpmm04", "backOfficeServerClientSecret": "BlZUAlYnCT11qD03", "enableStreamJob": false, "environment": "k1h5EKvMGd6hQ2mH", "streamName": "jmLu4oFlReHy0JyZ", "streamPartnerName": "v7honqeiGTTqpgVs"}' \
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
    --body '{"backOfficeServerClientId": "Y1kPNdJiJXB3yjNU", "backOfficeServerClientSecret": "PIfvoXRO0CkW1Zcg", "enableStreamJob": true, "environment": "SbbnffBWRaJN1SjC", "streamName": "FLDNJfAhJGwSYEZj", "streamPartnerName": "Eb0Pv35fEk9s11bF"}' \
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
    --body '{"appId": "Xkf7rQJ4Kj7Qyo9t", "publisherAuthenticationKey": "UptiyZzRX8Y4rxRW"}' \
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
    --body '{"clientId": "ZPe4ZLAQWuBJwxOb", "clientSecret": "ZqMGxhffy9cHrLYf", "organizationId": "ftad99JDcnn7f2d8"}' \
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
    --body '{"relyingPartyCert": "SOWP2dw6Uy88WpQa"}' \
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
    'lG38VOo82aLD9jUj' \
    'uDITjifWRbmtK7MT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'DownloadInvoiceDetails' test.out

#- 101 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'xcCWnMiCLsjroKHP' \
    'ApA8GsGwyocvY9Ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GenerateInvoiceSummary' test.out

#- 102 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'PjLJQJXwUApJWohX' \
    --body '{"categoryPath": "n01RB7pu7BaONXyE", "targetItemId": "5fIDbsMi48xOYVvE", "targetNamespace": "cEm53BYMBacQBIuD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'SyncInGameItem' test.out

#- 103 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'Vs7U0AJtWPRteszM' \
    --body '{"appId": "Td0R5Fsrf9xbVfgv", "appType": "GAME", "baseAppId": "617GmxzClkR3M6Tw", "boothName": "pwq3nLwxnJKjOo9f", "categoryPath": "vfXF1VsikD3IphQQ", "clazz": "iRcOtsthUwgQzNHU", "displayOrder": 65, "entitlementType": "CONSUMABLE", "ext": {"l1FRfOjJUmCbi2ll": {}, "ksf6GA8vTt92kldC": {}, "oyRdiOikUdqGocLY": {}}, "features": ["PkqiTKzz72PKXjSh", "BaRC7T5qSl7WN3nc", "M2DvesmMIbiQfaHx"], "flexible": false, "images": [{"as": "JMVnYj2yKqavWpyd", "caption": "epM3ap069B9Okr0x", "height": 73, "imageUrl": "oebnS4Y2zkGYTr9y", "smallImageUrl": "JIveX52r6Inl9VTJ", "width": 56}, {"as": "25N7NAvZdGuyYEYZ", "caption": "E3KaGSdhEGKcp6g1", "height": 54, "imageUrl": "l3Y82DOj5kPuNRZZ", "smallImageUrl": "aUccuBYep9n7b17f", "width": 39}, {"as": "VvLSJvdsGpmmUeMi", "caption": "kW3s54zffAL2DZ7g", "height": 56, "imageUrl": "bFDj2L2McvCrrR7h", "smallImageUrl": "9uKLXDaRf3pxKtJb", "width": 89}], "itemIds": ["pQWmnS52ZuuuI7F1", "xpVrcoXzSOEGEDYf", "iGPYo2K3dN3YBOJf"], "itemQty": {"vV6SuHovoQlk5wL2": 29, "gAFjtjC7suvgIUkB": 85, "jXGj2G0GZ3JBYi9b": 57}, "itemType": "SEASON", "listable": false, "localizations": {"BRpdbLCiwxOx2XQn": {"description": "94xPqXhqeNMDGA3O", "localExt": {"5hQAl6U2g9imVMh3": {}, "i7j095rDL6lEuB1Z": {}, "IMIs1dFvYokH9t2u": {}}, "longDescription": "8ZZnyHKkk6Gh25tE", "title": "cX9GegDnrYz0GFpS"}, "VdxFsXAp1roclyXl": {"description": "lFitPamSKRzDIZgS", "localExt": {"k6suS90ZbDdmjU11": {}, "QIZtkSn8QRbA5V4g": {}, "jWv1W6cqnvSuKswQ": {}}, "longDescription": "7vH8GScnP5QzRBY1", "title": "UrefgmVFBVz4KRCU"}, "0p4jIt01gzH17Icf": {"description": "JyGulmByN5rcDA3W", "localExt": {"cv9ouALjgLZZzLU9": {}, "w8MJRIzIgJKg9y86": {}, "BgnBQtm5AilVhASF": {}}, "longDescription": "lYMVJtE2dAeC7pF7", "title": "3y9eALKWinUJ7bAu"}}, "lootBoxConfig": {"rewardCount": 95, "rewards": [{"lootBoxItems": [{"count": 42, "duration": 74, "endDate": "1990-09-10T00:00:00Z", "itemId": "DJCxvzZnh8oBAk1M", "itemSku": "NCAUmdnLaVRUu5Vb", "itemType": "jwPa9rYgHaxeTT3e"}, {"count": 3, "duration": 98, "endDate": "1981-08-28T00:00:00Z", "itemId": "aYPNBp9wA4LxO2n7", "itemSku": "WJQFzBCD9S03D7JL", "itemType": "sIM3VOMRvvqkXDMP"}, {"count": 52, "duration": 58, "endDate": "1991-07-11T00:00:00Z", "itemId": "B08tpk0qhZath4b4", "itemSku": "HtwEYX55pJNTX1sD", "itemType": "jSWiSXsV5rJ8eZXZ"}], "name": "1TLMZnNL3DQK45IA", "odds": 0.3172473844350925, "type": "PROBABILITY_GROUP", "weight": 29}, {"lootBoxItems": [{"count": 51, "duration": 59, "endDate": "1995-01-24T00:00:00Z", "itemId": "DDSJSV8pzl1lfIR7", "itemSku": "jnetIJPGObyWCLyF", "itemType": "PHaxkKxEDvSoi2X9"}, {"count": 91, "duration": 43, "endDate": "1983-03-17T00:00:00Z", "itemId": "gvMG8QAaWUhIguMv", "itemSku": "KDOrx0wQXKEroyKz", "itemType": "2reP63EVHT72Vuho"}, {"count": 67, "duration": 86, "endDate": "1988-04-21T00:00:00Z", "itemId": "IFXGU5hujEfCMt95", "itemSku": "DEjxqhgYqmMqIdlR", "itemType": "rQmuILkeRUafUDP5"}], "name": "b6BWfm7cYCpDIJG4", "odds": 0.8838812142134931, "type": "REWARD_GROUP", "weight": 39}, {"lootBoxItems": [{"count": 77, "duration": 38, "endDate": "1974-03-07T00:00:00Z", "itemId": "UoCh8lmKKocC5Ea2", "itemSku": "9JhfFGN964J8WOgs", "itemType": "Aj2Rmf1DXvAIkzTR"}, {"count": 81, "duration": 88, "endDate": "1980-05-10T00:00:00Z", "itemId": "yeEGu1ICOCmLAmca", "itemSku": "EFBKgy92LYqtQcDN", "itemType": "7OMCehk42acy8wsW"}, {"count": 1, "duration": 39, "endDate": "1992-07-17T00:00:00Z", "itemId": "PbyctX7HC2haQwVW", "itemSku": "ONEpAPedzI2Adlqi", "itemType": "yEJIQcbZJJ3AhkrM"}], "name": "i0bnppEJFISze88r", "odds": 0.5321457129447099, "type": "REWARD", "weight": 19}], "rollFunction": "DEFAULT"}, "maxCount": 29, "maxCountPerUser": 4, "name": "DzMmMgoMxZZ9AutW", "optionBoxConfig": {"boxItems": [{"count": 59, "duration": 65, "endDate": "1973-12-18T00:00:00Z", "itemId": "VOINhql9CdDX4xiH", "itemSku": "pdfKH35RWUUVEHCB", "itemType": "5wzF6oLIrAwjAsgo"}, {"count": 39, "duration": 67, "endDate": "1996-09-27T00:00:00Z", "itemId": "r238G8Aevk3k1478", "itemSku": "2W2oNo3X4m6wms9S", "itemType": "PaHlqtDPry2vMON7"}, {"count": 38, "duration": 70, "endDate": "1972-10-15T00:00:00Z", "itemId": "hlilfpDT8o2iFrYt", "itemSku": "GfCZCcrvsV2I4X26", "itemType": "p21iDBZGJ8ZMLwPJ"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 65, "fixedTrialCycles": 27, "graceDays": 22}, "regionData": {"V5ALS7cneNLItUJg": [{"currencyCode": "h74tyxkTR8ZCVJtk", "currencyNamespace": "xjBJrNeQRsqkkKK2", "currencyType": "VIRTUAL", "discountAmount": 48, "discountExpireAt": "1972-05-20T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1983-12-05T00:00:00Z", "expireAt": "1982-12-30T00:00:00Z", "price": 78, "purchaseAt": "1989-10-18T00:00:00Z", "trialPrice": 54}, {"currencyCode": "M2B9bMohkWsFKIdy", "currencyNamespace": "cYHQcu7JkKBcLFRf", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1997-06-10T00:00:00Z", "discountPercentage": 79, "discountPurchaseAt": "1973-09-07T00:00:00Z", "expireAt": "1990-01-24T00:00:00Z", "price": 87, "purchaseAt": "1996-04-05T00:00:00Z", "trialPrice": 49}, {"currencyCode": "YiYqap7masUcayqm", "currencyNamespace": "p7vhz1T6cSrZL2Cg", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1993-01-20T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-01-28T00:00:00Z", "expireAt": "1997-09-04T00:00:00Z", "price": 61, "purchaseAt": "1974-03-17T00:00:00Z", "trialPrice": 81}], "vZNgfI1AeYHe8WPQ": [{"currencyCode": "GPclChxLfbXrH6f2", "currencyNamespace": "GDrNbLOjGz34ct0c", "currencyType": "VIRTUAL", "discountAmount": 39, "discountExpireAt": "1986-04-20T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1979-10-03T00:00:00Z", "expireAt": "1971-11-10T00:00:00Z", "price": 46, "purchaseAt": "1986-06-17T00:00:00Z", "trialPrice": 67}, {"currencyCode": "LnI7cTzIUERPlQI9", "currencyNamespace": "9hMc4NbiJWP5r9Ew", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1988-09-23T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1990-06-11T00:00:00Z", "expireAt": "1987-04-12T00:00:00Z", "price": 72, "purchaseAt": "1983-12-11T00:00:00Z", "trialPrice": 65}, {"currencyCode": "P9IqAyNlZ2OwFSeb", "currencyNamespace": "BkXkaxtY97TMJH8b", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1983-08-30T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1988-04-17T00:00:00Z", "expireAt": "1994-08-05T00:00:00Z", "price": 33, "purchaseAt": "1997-07-13T00:00:00Z", "trialPrice": 1}], "vjBy0NXg7zd6SFpk": [{"currencyCode": "V7cAICgWFJZGnNa5", "currencyNamespace": "yOM68r4W1fDZL80o", "currencyType": "VIRTUAL", "discountAmount": 87, "discountExpireAt": "1977-10-06T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-06-10T00:00:00Z", "expireAt": "1992-12-13T00:00:00Z", "price": 15, "purchaseAt": "1986-08-25T00:00:00Z", "trialPrice": 68}, {"currencyCode": "hgSgytNEojK3YgWH", "currencyNamespace": "9l7rv6XUSINd4keC", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1975-02-24T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1974-12-07T00:00:00Z", "expireAt": "1975-11-19T00:00:00Z", "price": 86, "purchaseAt": "1989-06-03T00:00:00Z", "trialPrice": 52}, {"currencyCode": "UrPawQPaHARrhjbE", "currencyNamespace": "U5n0PNuFyKW95dJs", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-04-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1976-03-23T00:00:00Z", "expireAt": "1987-08-25T00:00:00Z", "price": 76, "purchaseAt": "1985-03-31T00:00:00Z", "trialPrice": 16}]}, "saleConfig": {"currencyCode": "D3axSivItV1txLIN", "price": 25}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "HTGLtX6TN5ctYX1s", "stackable": false, "status": "ACTIVE", "tags": ["dVfOUr14yZH00n8M", "3hWmCCIrP0lJXexs", "eo2e6BCNJTTRIHDK"], "targetCurrencyCode": "sRjaB8iurBWW5jSJ", "targetNamespace": "i0seeGJIqnatME8G", "thumbnailUrl": "nNWfAY1yY6D1Euus", "useCount": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'CreateItem' test.out

#- 104 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'ZSeDCKT4ilZB8apD' \
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
    'TR3aL9sunWp7V1s8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItems' test.out

#- 108 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'LmXm0FaJMIjgzU02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetItemBySku' test.out

#- 109 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'nZWwBdEFpfccauYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetLocaleItemBySku' test.out

#- 110 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'c86pxK9KhF4KRVPo' \
    'IuzAuQNjAfvOE2cV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetEstimatedPrice' test.out

#- 111 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'jFp1CeCEfaV4ZGGw' \
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
    'bqOB4mD3E7AFHqlT' \
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
    'TkL8cmpA0sZ0tgeR' \
    --body '{"itemIds": ["4UV5SMZ8GUvWZvoC", "mprkv7A8MRutCKCs", "qmx2zriOGB8b5qTF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'ValidateItemPurchaseCondition' test.out

#- 116 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'p3cIxOI33nt54i5h' \
    --body '{"changes": [{"itemIdentities": ["dAezedcppbujZh1f", "YXF6R9Rz3HVP2Y9W", "qSRiwV3UZg0UJLPM"], "itemIdentityType": "ITEM_ID", "regionData": {"ET2yS6C8a8L0vQDS": [{"currencyCode": "4EVpBmsUzx64Gr4X", "currencyNamespace": "Em0uYYuAmqhftIfe", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1997-01-27T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1980-03-27T00:00:00Z", "discountedPrice": 29, "expireAt": "1975-04-14T00:00:00Z", "price": 41, "purchaseAt": "1993-03-19T00:00:00Z", "trialPrice": 43}, {"currencyCode": "52mAIMo6EW9QhzU8", "currencyNamespace": "FwQtZpfUoyoiUjmq", "currencyType": "VIRTUAL", "discountAmount": 88, "discountExpireAt": "1987-01-02T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1977-11-20T00:00:00Z", "discountedPrice": 25, "expireAt": "1997-09-14T00:00:00Z", "price": 76, "purchaseAt": "1974-10-05T00:00:00Z", "trialPrice": 31}, {"currencyCode": "z0GqDZN7ftHOhVy4", "currencyNamespace": "8YYg1AkRh3NmbRhM", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1989-03-04T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1986-10-08T00:00:00Z", "discountedPrice": 13, "expireAt": "1972-07-01T00:00:00Z", "price": 18, "purchaseAt": "1979-06-06T00:00:00Z", "trialPrice": 80}], "VeOFBDA3gvCRfoBi": [{"currencyCode": "jpbMblGWnp94a6GK", "currencyNamespace": "Y0BrHiWs0B0RhxQt", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1995-10-31T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1994-01-09T00:00:00Z", "discountedPrice": 73, "expireAt": "1991-07-25T00:00:00Z", "price": 22, "purchaseAt": "1982-05-27T00:00:00Z", "trialPrice": 73}, {"currencyCode": "72hJvrOCdAEZ2RHt", "currencyNamespace": "3uQ5nFrPXwxJZQpk", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1986-09-28T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1980-03-03T00:00:00Z", "discountedPrice": 18, "expireAt": "1994-10-23T00:00:00Z", "price": 56, "purchaseAt": "1988-05-03T00:00:00Z", "trialPrice": 60}, {"currencyCode": "XsZyvZOFJ5RrFZYc", "currencyNamespace": "wfQ1Q2BbcjSpv6Nt", "currencyType": "VIRTUAL", "discountAmount": 30, "discountExpireAt": "1985-07-23T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1998-06-05T00:00:00Z", "discountedPrice": 7, "expireAt": "1995-02-19T00:00:00Z", "price": 64, "purchaseAt": "1973-09-21T00:00:00Z", "trialPrice": 75}], "hO5FcdTvIDQI2uIi": [{"currencyCode": "2SNZKqlJZsdnY04D", "currencyNamespace": "IyosprZPBaERb7U9", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1989-12-04T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1995-06-18T00:00:00Z", "discountedPrice": 4, "expireAt": "1982-06-10T00:00:00Z", "price": 37, "purchaseAt": "1995-05-22T00:00:00Z", "trialPrice": 26}, {"currencyCode": "y8AKSZxOhUhl3Y0E", "currencyNamespace": "shaG0uDiJNUuxK22", "currencyType": "VIRTUAL", "discountAmount": 66, "discountExpireAt": "1971-02-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1980-01-04T00:00:00Z", "discountedPrice": 46, "expireAt": "1988-06-22T00:00:00Z", "price": 44, "purchaseAt": "1976-05-25T00:00:00Z", "trialPrice": 52}, {"currencyCode": "zBdLvFUBZDnVrcwb", "currencyNamespace": "sD0RDLxWgEWwoHpV", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1983-03-04T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1977-11-05T00:00:00Z", "discountedPrice": 58, "expireAt": "1971-10-27T00:00:00Z", "price": 73, "purchaseAt": "1982-09-12T00:00:00Z", "trialPrice": 84}]}}, {"itemIdentities": ["7UpCxNyx1jjdxNeP", "PAJ6Z9UzqIhZZiK0", "QEG6C9w4lVRNOF1B"], "itemIdentityType": "ITEM_ID", "regionData": {"cONcJIsYRQz97fRW": [{"currencyCode": "I17eNP3Y2nWlS9Sf", "currencyNamespace": "jh0htyVaGj4y9ahS", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1992-02-03T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1995-07-22T00:00:00Z", "discountedPrice": 23, "expireAt": "1977-05-05T00:00:00Z", "price": 5, "purchaseAt": "1988-12-19T00:00:00Z", "trialPrice": 37}, {"currencyCode": "s5FVQSIqObR55tV0", "currencyNamespace": "BlN1iFvw0GSLBmie", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1986-01-18T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1976-02-01T00:00:00Z", "discountedPrice": 92, "expireAt": "1978-12-21T00:00:00Z", "price": 76, "purchaseAt": "1971-06-24T00:00:00Z", "trialPrice": 94}, {"currencyCode": "7hgmUm7RVCUREDdo", "currencyNamespace": "GatGQ1SeOXsg4jof", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1978-12-10T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1982-05-22T00:00:00Z", "discountedPrice": 23, "expireAt": "1991-12-10T00:00:00Z", "price": 0, "purchaseAt": "1998-03-25T00:00:00Z", "trialPrice": 48}], "KGvOSvpmZZdlNXdx": [{"currencyCode": "2kWmSqodNZgfQyDV", "currencyNamespace": "VkkqiMiRf2yCyM0T", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1984-09-26T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1989-10-02T00:00:00Z", "discountedPrice": 68, "expireAt": "1974-01-15T00:00:00Z", "price": 74, "purchaseAt": "1980-12-29T00:00:00Z", "trialPrice": 78}, {"currencyCode": "izvmxts5HSQvRAPG", "currencyNamespace": "9JoVSLrbs5niXkjp", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1991-02-18T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1993-08-20T00:00:00Z", "discountedPrice": 80, "expireAt": "1985-11-18T00:00:00Z", "price": 51, "purchaseAt": "1979-08-26T00:00:00Z", "trialPrice": 11}, {"currencyCode": "iytnfMoO1I3KISTb", "currencyNamespace": "n4yEa2AaBRalz5HE", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1984-09-23T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1971-01-09T00:00:00Z", "discountedPrice": 26, "expireAt": "1992-06-08T00:00:00Z", "price": 64, "purchaseAt": "1986-01-04T00:00:00Z", "trialPrice": 52}], "qjKzWDAauqLKarcL": [{"currencyCode": "QRQtC927GneBM8Lv", "currencyNamespace": "zgyIVzGFBLJ5vbC9", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1977-11-04T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1994-12-10T00:00:00Z", "discountedPrice": 64, "expireAt": "1982-10-15T00:00:00Z", "price": 3, "purchaseAt": "1987-05-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "xQpUSnos6QiHyrcG", "currencyNamespace": "eRv27hj73EtufHuN", "currencyType": "REAL", "discountAmount": 31, "discountExpireAt": "1998-06-25T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1978-06-16T00:00:00Z", "discountedPrice": 33, "expireAt": "1994-11-11T00:00:00Z", "price": 75, "purchaseAt": "1971-04-24T00:00:00Z", "trialPrice": 3}, {"currencyCode": "5m8oH9zCfw7mCMkb", "currencyNamespace": "vSIm7JROcwVmGyrB", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1977-04-18T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-07-01T00:00:00Z", "discountedPrice": 65, "expireAt": "1988-01-24T00:00:00Z", "price": 98, "purchaseAt": "1994-05-23T00:00:00Z", "trialPrice": 3}]}}, {"itemIdentities": ["RiFSPs2ZMcVFcrix", "ULzSeTnUWGxxfnMI", "DSCPr1m1Fg6tc250"], "itemIdentityType": "ITEM_ID", "regionData": {"FxEaEHCGtg812NQb": [{"currencyCode": "5Glh8srTlTj61WdV", "currencyNamespace": "2XUo1BO1rE7E12Fa", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1971-05-07T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1984-07-12T00:00:00Z", "discountedPrice": 18, "expireAt": "1983-04-28T00:00:00Z", "price": 61, "purchaseAt": "1977-04-22T00:00:00Z", "trialPrice": 68}, {"currencyCode": "JoKEb8tHmFwLGan2", "currencyNamespace": "SrKckNxLWH6rjhRL", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1983-07-10T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1978-12-25T00:00:00Z", "discountedPrice": 24, "expireAt": "1991-04-05T00:00:00Z", "price": 8, "purchaseAt": "1998-09-20T00:00:00Z", "trialPrice": 22}, {"currencyCode": "IEUJtMC8NyV2HLHZ", "currencyNamespace": "T3oYJlC4ie3InnSA", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1973-01-10T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1977-05-19T00:00:00Z", "discountedPrice": 22, "expireAt": "1996-10-21T00:00:00Z", "price": 86, "purchaseAt": "1983-11-20T00:00:00Z", "trialPrice": 72}], "wJUGtC0tAhxn1ay6": [{"currencyCode": "ruu7PYWHODRb6skO", "currencyNamespace": "j0lfYFGnQCAWidWP", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1974-05-18T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1993-01-29T00:00:00Z", "discountedPrice": 13, "expireAt": "1971-12-08T00:00:00Z", "price": 96, "purchaseAt": "1983-05-20T00:00:00Z", "trialPrice": 27}, {"currencyCode": "HFirnUpZ9UJ4N78q", "currencyNamespace": "HTGdn7gE4bwLzDEw", "currencyType": "REAL", "discountAmount": 38, "discountExpireAt": "1981-04-08T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-08-19T00:00:00Z", "discountedPrice": 90, "expireAt": "1976-12-30T00:00:00Z", "price": 70, "purchaseAt": "1971-02-28T00:00:00Z", "trialPrice": 83}, {"currencyCode": "cwiDWQFghmIi6fph", "currencyNamespace": "Dw3p9QWqwTF2pOJs", "currencyType": "VIRTUAL", "discountAmount": 92, "discountExpireAt": "1999-07-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1984-02-16T00:00:00Z", "discountedPrice": 75, "expireAt": "1978-07-24T00:00:00Z", "price": 93, "purchaseAt": "1998-03-09T00:00:00Z", "trialPrice": 8}], "y01FkEEXlKiTIDgP": [{"currencyCode": "7wuXQdfW99JglSco", "currencyNamespace": "OlkkBxiXf8OBQRqX", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1996-08-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1993-09-17T00:00:00Z", "discountedPrice": 41, "expireAt": "1984-08-11T00:00:00Z", "price": 32, "purchaseAt": "1977-01-21T00:00:00Z", "trialPrice": 99}, {"currencyCode": "0EEziE5yIvijq9ix", "currencyNamespace": "16vo60jgvwV3C9hJ", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1987-05-11T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-04-20T00:00:00Z", "discountedPrice": 59, "expireAt": "1989-08-25T00:00:00Z", "price": 28, "purchaseAt": "1999-06-30T00:00:00Z", "trialPrice": 99}, {"currencyCode": "GWgccuzuc6QDRMGd", "currencyNamespace": "BPbUyHTYPS8CGKXG", "currencyType": "REAL", "discountAmount": 41, "discountExpireAt": "1978-03-30T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1973-01-20T00:00:00Z", "discountedPrice": 4, "expireAt": "1975-05-23T00:00:00Z", "price": 3, "purchaseAt": "1984-02-13T00:00:00Z", "trialPrice": 64}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'BulkUpdateRegionData' test.out

#- 117 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'BuKBco1AeO3yvvBL' \
    'ZPBuekeBe4Tvb3fH' \
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
    'CIJZkwEcCRi2U7s2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetItem' test.out

#- 120 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'ZQAarwH0c87v0PwZ' \
    'jydyzGDZM4zTTYI6' \
    --body '{"appId": "O8coYDWUfcL1qseg", "appType": "SOFTWARE", "baseAppId": "496H02yOVN1h41jI", "boothName": "POMXufZPWSe20JfN", "categoryPath": "vtNcWtpUkw98x3tM", "clazz": "M1bFFDIqKD8HJ4X0", "displayOrder": 61, "entitlementType": "CONSUMABLE", "ext": {"etCeJ4x0wf5mQx6H": {}, "s7M5apPMc8ZR3bPC": {}, "J5n5s6DODBmrqEhG": {}}, "features": ["VWlRFnIekrQ99ecm", "WuCQpjuJzpPO7BPx", "lkEmGdCbwodVRjZJ"], "flexible": false, "images": [{"as": "FQCyQBqKxayGvw7M", "caption": "qOsypCJmfRnW0spg", "height": 43, "imageUrl": "4mCShMFlbrRGjoBQ", "smallImageUrl": "45Za4JR4S3iac6vL", "width": 9}, {"as": "WRucRpP1Tq7uYXhB", "caption": "6FPfF5DvveMdBsPt", "height": 50, "imageUrl": "9V2FkBPk0QLufK6e", "smallImageUrl": "iT38raaRG1Fg0hfM", "width": 65}, {"as": "vQmahJlT5OUDEMwA", "caption": "jgNZgto2EhOlnsuD", "height": 28, "imageUrl": "dxXOBu3TWmHDVmCG", "smallImageUrl": "FoD7aNFj9wORAVqR", "width": 43}], "itemIds": ["Qxos58kVk7F1KKOf", "FFLvER3xqCwUgKa4", "oCBoJDxGa1UuSr4e"], "itemQty": {"hnV8Aw9m6GvDSE2F": 54, "d9sB6CV9KiWkbdpG": 33, "ohdjQUwVdPsArkep": 10}, "itemType": "SEASON", "listable": false, "localizations": {"DE3IibPSQnphnvAW": {"description": "BSOr7zljUKyhKkD7", "localExt": {"wAHMrv8zABDhYAVx": {}, "vs3ugNvvgI2k1P9n": {}, "Qxzj3AnmpWfje5cA": {}}, "longDescription": "tTDvwFHcoODi5oF1", "title": "pccdjjZpFnVLb7xe"}, "rpjVPfktNnl8UYH5": {"description": "kesuOtYHLqcdy05Y", "localExt": {"rqdFn8sQ7yc8xLKy": {}, "BfGLHEAKhp612Y2n": {}, "cRf7tEGzYqRoHm6E": {}}, "longDescription": "tyXqQbKWMJ0aODiW", "title": "n6bPmSa85Riu1ala"}, "VEhjJZbwMHkFWLSz": {"description": "mAXAruYrVjX4HRTv", "localExt": {"m3Qr9IkuW6jjofc6": {}, "itDEsq0dHfYG6k85": {}, "3GERdJdphepF9dfs": {}}, "longDescription": "ng9FGGjJ0hRPUBFx", "title": "M2Fr3olO10RAyIZs"}}, "lootBoxConfig": {"rewardCount": 90, "rewards": [{"lootBoxItems": [{"count": 97, "duration": 19, "endDate": "1973-08-28T00:00:00Z", "itemId": "eYSM479gn62lizsW", "itemSku": "GrtIgVPb7hoo8YkN", "itemType": "PW8mWOJGtdXJGDsx"}, {"count": 88, "duration": 5, "endDate": "1984-07-09T00:00:00Z", "itemId": "R3NObYp43YXMHqWe", "itemSku": "VjnOURxGvOhz9s7k", "itemType": "tWkJDaHg6kDVjxhx"}, {"count": 89, "duration": 8, "endDate": "1983-12-03T00:00:00Z", "itemId": "jeDrqCfJEjrqJkFo", "itemSku": "ZFZex0eOw31PXkVn", "itemType": "etcvAuim14Wdh1qK"}], "name": "oSDBbyqlJyfVgaW6", "odds": 0.4095790126200364, "type": "PROBABILITY_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 67, "duration": 64, "endDate": "1974-04-06T00:00:00Z", "itemId": "ijZzA3MkosOcoAcV", "itemSku": "0T2G3vQZNiqaXzRB", "itemType": "ra3I4K9iBdljXtow"}, {"count": 18, "duration": 21, "endDate": "1973-01-28T00:00:00Z", "itemId": "BfAw30kOykBuDJ0I", "itemSku": "PQeAL4MZwEVJe7wa", "itemType": "GyB6g2M5JiwtMOfD"}, {"count": 11, "duration": 29, "endDate": "1993-11-09T00:00:00Z", "itemId": "W0qgxO0Y6TFpFSCs", "itemSku": "rhSGeeExZYnGcrZH", "itemType": "MKoTcIXeKZzZBo6A"}], "name": "RaQnNZQ1R0PGBFVn", "odds": 0.038839179048613226, "type": "REWARD", "weight": 1}, {"lootBoxItems": [{"count": 40, "duration": 100, "endDate": "1987-03-21T00:00:00Z", "itemId": "VKPoA1aKRZM1Ot0P", "itemSku": "WppB2H0G8Xko9l5J", "itemType": "0IOZmnpzwHhig9d6"}, {"count": 44, "duration": 2, "endDate": "1972-08-26T00:00:00Z", "itemId": "gfrNiGrH0hDjH6IY", "itemSku": "pfINzNjk5V8T9pQj", "itemType": "nGB83yonudf21g0N"}, {"count": 16, "duration": 81, "endDate": "1981-06-25T00:00:00Z", "itemId": "2CNqmO8JALtCiDuG", "itemSku": "QQsvWV3NSjXUXSMK", "itemType": "Y09x4TKOwsyRNnaL"}], "name": "Nhw0xGnXc29UDQxe", "odds": 0.13560955582384993, "type": "REWARD", "weight": 99}], "rollFunction": "CUSTOM"}, "maxCount": 2, "maxCountPerUser": 83, "name": "hB9u1v1POCjseK1x", "optionBoxConfig": {"boxItems": [{"count": 0, "duration": 91, "endDate": "1978-01-13T00:00:00Z", "itemId": "IgQzkWzcBqVcuTTr", "itemSku": "Ik6hU0mqdwBJax1j", "itemType": "Bd6Yng8ps5XknDJZ"}, {"count": 74, "duration": 93, "endDate": "1974-02-26T00:00:00Z", "itemId": "W37NTbz8HiRmuknv", "itemSku": "XiTP0KrWQ3pgbHM0", "itemType": "Svy3GRenDzwlTE9C"}, {"count": 52, "duration": 14, "endDate": "1972-04-21T00:00:00Z", "itemId": "9gCPFDZh6JfJfg4X", "itemSku": "1dZOTBgYwLjPGFqk", "itemType": "bTL8ifUAMUekrD0J"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 42, "fixedTrialCycles": 46, "graceDays": 72}, "regionData": {"eJxWANt1bDay64En": [{"currencyCode": "FyFeW0oNhddKrrhz", "currencyNamespace": "wz2PFXC33KjLNUFQ", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1994-01-13T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1997-04-15T00:00:00Z", "expireAt": "1973-10-06T00:00:00Z", "price": 19, "purchaseAt": "1978-10-14T00:00:00Z", "trialPrice": 1}, {"currencyCode": "5eVnflH2hnMV6Yxt", "currencyNamespace": "l5DKUhjBy9oWPcMI", "currencyType": "VIRTUAL", "discountAmount": 4, "discountExpireAt": "1985-04-06T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1993-11-14T00:00:00Z", "expireAt": "1992-04-24T00:00:00Z", "price": 82, "purchaseAt": "1976-08-08T00:00:00Z", "trialPrice": 16}, {"currencyCode": "ydb6GgyFczEOMXF1", "currencyNamespace": "T1sU9xsmACLFHrXW", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1971-02-26T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1980-04-23T00:00:00Z", "expireAt": "1974-08-28T00:00:00Z", "price": 36, "purchaseAt": "1976-04-24T00:00:00Z", "trialPrice": 11}], "pVE1acxZoDXdPORk": [{"currencyCode": "WkyTcJzvDUlhTlBN", "currencyNamespace": "pvkjg48iVKCqEqeZ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1985-12-24T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1978-01-01T00:00:00Z", "expireAt": "1977-11-16T00:00:00Z", "price": 94, "purchaseAt": "1976-10-19T00:00:00Z", "trialPrice": 65}, {"currencyCode": "VBkZU3qtk0dM4GZG", "currencyNamespace": "iSutb6wUxEikRyHC", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1998-11-12T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1984-07-26T00:00:00Z", "expireAt": "1975-01-12T00:00:00Z", "price": 4, "purchaseAt": "1981-10-16T00:00:00Z", "trialPrice": 81}, {"currencyCode": "fG9qYAEpR44fWWEs", "currencyNamespace": "CETqKlcFcaL6XOoO", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1978-08-16T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1980-07-22T00:00:00Z", "expireAt": "1971-08-30T00:00:00Z", "price": 66, "purchaseAt": "1977-06-08T00:00:00Z", "trialPrice": 37}], "qWw67LheLDvwZjth": [{"currencyCode": "GMOB4HFIzTlGBnpL", "currencyNamespace": "Bd02br9OfMbjgS5W", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1972-06-19T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1993-03-09T00:00:00Z", "expireAt": "1984-07-08T00:00:00Z", "price": 53, "purchaseAt": "1984-10-11T00:00:00Z", "trialPrice": 5}, {"currencyCode": "7knizQ4Jx8In4w8y", "currencyNamespace": "RFOLeTQyplscfsZv", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1995-05-02T00:00:00Z", "discountPercentage": 45, "discountPurchaseAt": "1985-11-08T00:00:00Z", "expireAt": "1982-10-15T00:00:00Z", "price": 89, "purchaseAt": "1982-04-04T00:00:00Z", "trialPrice": 76}, {"currencyCode": "iFCmFC9uUxSxI4yy", "currencyNamespace": "rZIV9M22gRLsc6Jw", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1991-10-05T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1984-01-14T00:00:00Z", "expireAt": "1983-04-22T00:00:00Z", "price": 64, "purchaseAt": "1992-03-10T00:00:00Z", "trialPrice": 57}]}, "saleConfig": {"currencyCode": "DZs0wyldbDDntsSQ", "price": 90}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "UCgn7oklNewpAIwt", "stackable": false, "status": "INACTIVE", "tags": ["RAYvvynDPJ9SMRzS", "TVV2QmlqRK5roG1o", "ZArFJBUmMx7nzK8r"], "targetCurrencyCode": "o0RzUoSen8CjEhtR", "targetNamespace": "cnVsYOwypw6F21uY", "thumbnailUrl": "owkPNGANjli9XZkb", "useCount": 36}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdateItem' test.out

#- 121 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'm6zryXmvvvPmueVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'DeleteItem' test.out

#- 122 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'C0ymY7ABWgZVxM4r' \
    --body '{"count": 55, "orderNo": "agVhXIgoHE9eEvIy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AcquireItem' test.out

#- 123 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'V2DqxWhSV3r9vk4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'GetApp' test.out

#- 124 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'QDiwqJUZHP7HM6JB' \
    '2P6ZjZh9eggvvmXZ' \
    --body '{"carousel": [{"alt": "U7lVGZ6lIs17PXJ8", "previewUrl": "KsgqGNM6sO7IUwIv", "thumbnailUrl": "84zQjc88fKtDQSbD", "type": "image", "url": "N21JlwPxpuUZm1GV", "videoSource": "vimeo"}, {"alt": "MX2yYJopKxd9MtXY", "previewUrl": "GoZGkBNXT0feu7KK", "thumbnailUrl": "PXunBZiqYaReD047", "type": "video", "url": "oGCmrTUcZy3DDSxp", "videoSource": "vimeo"}, {"alt": "ZV6J5QloYCaB5Imp", "previewUrl": "xpHJCcuqJR2TT3HE", "thumbnailUrl": "YBW8Aq2KVQNFGaJE", "type": "video", "url": "03Nqu13LgD6kOUZX", "videoSource": "youtube"}], "developer": "sHLF7s3hgmxOOzP7", "forumUrl": "vteUYzMZzggFcJQk", "genres": ["MassivelyMultiplayer", "MassivelyMultiplayer", "Adventure"], "localizations": {"eQLLJPh6HpodpzuB": {"announcement": "QwTS66qr03Mp14S8", "slogan": "HG9ID7mZ4eKHaAP4"}, "PYToJAMgJkC8UGlq": {"announcement": "b7cexeEhHz7OKYNI", "slogan": "MPTFnrbysdru1Pot"}, "ArVtIQyxp17b8SHv": {"announcement": "RIiJgGrdz6Ar6ZMG", "slogan": "UI9Z0Fol65yD1dLB"}}, "platformRequirements": {"QJcBsvUaK2iHOkgy": [{"additionals": "hgijqtdzrvCDzH5A", "directXVersion": "CyLXmLsHXWPqYBJT", "diskSpace": "zlt302k4rdWgWYgF", "graphics": "gw3mGmogCJXjHTGh", "label": "yemqqwoT441DX6xw", "osVersion": "uD6giqKLavCF9yVe", "processor": "JJwyaY7Ho61RoV0V", "ram": "H7thk8lnCROZodh1", "soundCard": "gbkbnRcIufk5WE4z"}, {"additionals": "PvxA5061CF9079hQ", "directXVersion": "A91csvlQSS6PyDb3", "diskSpace": "vKbCw9eAGmM6lPAJ", "graphics": "MizukBmcy1kbAWDU", "label": "ac65Jdlm1JJwmCAj", "osVersion": "TwtCqKdh92wuH9hL", "processor": "kAg90cQgXeZnKRP6", "ram": "Gdv2QY9BadKJj4Hk", "soundCard": "L0mk4HHDzXcKJowQ"}, {"additionals": "bOrgveLe4hYQEGci", "directXVersion": "vibNKS0tBFxzru1A", "diskSpace": "3ObcaijxlHrcqzwG", "graphics": "gl1SyrFazP5g67zq", "label": "7XCHkJzmy6DtxvO3", "osVersion": "nUiVM7UfbH7Qv0Ey", "processor": "y6G3n83Sb2WXmcXt", "ram": "uUYtYkPAHldms0Nw", "soundCard": "lx85unvbUiBJfyM9"}], "bc1hgFvKO2erV4cc": [{"additionals": "UhiQnHGDNXw2L4mp", "directXVersion": "580sUSlEfC6ckbV2", "diskSpace": "y32kG5QTZnpxYa2j", "graphics": "Dp3LzelXaUz9AKoz", "label": "XBA29DPhYa8Ksjfn", "osVersion": "k7HKSWULkEKqQ4To", "processor": "qWjpaECYi7fBJaU4", "ram": "3PzOITmqjrcuIH9i", "soundCard": "4ICwRHM518oPa2gl"}, {"additionals": "j6rHbkWMDSiPRcEy", "directXVersion": "fbUswXLyVVZqZpYA", "diskSpace": "dyPafGBlwnYRpUkT", "graphics": "KjXxvgslvMllaEVu", "label": "gbCEifQCe5eN88Z7", "osVersion": "U1e8C1HnrPGydCRG", "processor": "PXLKNNfCxcAJoMhS", "ram": "Zgpx0HtzCgr8ybpA", "soundCard": "O0Pgh6Uenz7FjcRR"}, {"additionals": "IKcTVvsormCNHH08", "directXVersion": "vEf2WSsLchLBElch", "diskSpace": "9a9Knc6glMjwg8OW", "graphics": "AT7d65hchXzG4ffz", "label": "0lXBDbBGrYGleamV", "osVersion": "gjm0xqJhfraXwzn0", "processor": "bbNK5rhgy51k1e1g", "ram": "Z8QCEx41nhN2NMDX", "soundCard": "EHz2uROYqy72xPht"}], "IM8Rw0xHZOUW3jlX": [{"additionals": "Yz8azHYdzaYe7Wjw", "directXVersion": "oU21EdgoOvT13nFP", "diskSpace": "xMy9YNTBZTR5tZma", "graphics": "ZGxrhAPoREvGmmbG", "label": "W3SttwZrmKkREJXu", "osVersion": "cN3IEt8vZSqh6SjL", "processor": "dDyVf6irpvxpCXFl", "ram": "M52jb80Nlw8icwWR", "soundCard": "vvZB46NCiqdleq2j"}, {"additionals": "CNZAKjBlI9fsL6HE", "directXVersion": "OiPcSKlQDo4ih358", "diskSpace": "Lf5RXgVFrsR55cpO", "graphics": "V3Qg6eU0Mc21ZZli", "label": "CydumMW9HWHfZ3bF", "osVersion": "TqXqdzpP7Rk1qbFW", "processor": "htwNaVCqf0vP284y", "ram": "QAbudR95sQ1FygQv", "soundCard": "oX9pEJ3R0cuQGjCS"}, {"additionals": "hSTNyM9yuMOFavgM", "directXVersion": "WyxizWKQdVExukcK", "diskSpace": "DUzhKKARjqJSWImX", "graphics": "vaLXkvZvwk0v0OKy", "label": "45dqId3gXUWVAmaD", "osVersion": "jrn0iZsIfqeLfl0w", "processor": "acx4istsfrFqHu6f", "ram": "54mL4hAfiqX3ThRE", "soundCard": "YkndZIrjnjuCHkx8"}]}, "platforms": ["IOS", "MacOS", "IOS"], "players": ["LocalCoop", "Coop", "LocalCoop"], "primaryGenre": "Strategy", "publisher": "A4NUDAdwt7cj6v5D", "releaseDate": "1990-04-12T00:00:00Z", "websiteUrl": "Ek9RkumkrnY4LksF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'UpdateApp' test.out

#- 125 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'D2le3UGhQnnmMgk0' \
    'WYv2NTpSejfbYniL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DisableItem' test.out

#- 126 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'mi1GQTjQVaJ9ioRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetItemDynamicData' test.out

#- 127 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    '1HvMCIXTQG7AUUES' \
    '36bRVaiOL6Q5N2eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'EnableItem' test.out

#- 128 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'LXRiNNV5Fy4ilLbK' \
    'zQFBHQ0FHWOul5WK' \
    'kzjzRnLLFKGFSUC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'FeatureItem' test.out

#- 129 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'sZtVitkoRyEXWrhL' \
    'NPUvlrOA50xGdlq3' \
    'Dkm52TA4zLBSh2QJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'DefeatureItem' test.out

#- 130 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'WgWvIZGJOPkJvsZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'GetLocaleItem' test.out

#- 131 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'fMwJPOcRFJTeKbAM' \
    'IJChPyIhVPmMs1zq' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 76, "comparison": "isLessThanOrEqual", "name": "exSNhnabXGs0qawV", "predicateType": "SeasonTierPredicate", "value": "rycewrnLBAZlvnOJ", "values": ["Zn6egDbFDXW3N42c", "eNxZdT1fZJTutZpZ", "cGURTnJUdR3MUQnE"]}, {"anyOf": 10, "comparison": "isNot", "name": "ANANjqBdfMMU89e6", "predicateType": "SeasonPassPredicate", "value": "ntHsI11lC6BXyQW3", "values": ["ajZTyB7k7Q9zNJHk", "eG0BvuCoP1hIpdIW", "XmHB9cu1ZdRIZ1hH"]}, {"anyOf": 59, "comparison": "isGreaterThanOrEqual", "name": "A9vXrqLxUCyNQUIT", "predicateType": "SeasonTierPredicate", "value": "GxJNOaveGzkTPehZ", "values": ["yiGkJR30lAinKfKX", "VmZi1UYM7BApA1YB", "qYE8GuKFRwAkAyYY"]}]}, {"operator": "or", "predicates": [{"anyOf": 15, "comparison": "excludes", "name": "NUTpzSm7jdrPdkMM", "predicateType": "EntitlementPredicate", "value": "1kQcGm0x3DmUahjP", "values": ["HIreoYDgNe1Ryydt", "CBznu3BT2fe68sGX", "VDOEmwpWiJYxvvQC"]}, {"anyOf": 65, "comparison": "isLessThanOrEqual", "name": "8vRJ3ebbfa3ep8cK", "predicateType": "SeasonTierPredicate", "value": "RHukM2BVMu418S3o", "values": ["RrcPbe1REA4kpxN9", "2DKmAp8kt8156L7W", "l7UfG3PbsgYDgJ0J"]}, {"anyOf": 41, "comparison": "is", "name": "Cjk58n5fBl9xiCZH", "predicateType": "SeasonTierPredicate", "value": "KBHwuAW3jLkVq9bA", "values": ["B83a6h6dNfg9f25Y", "sZ1L6IGHuO7u2tOU", "efBF8tiF7mi3iOrn"]}]}, {"operator": "and", "predicates": [{"anyOf": 26, "comparison": "isLessThan", "name": "tMbwcUsu3gJ0yHA6", "predicateType": "SeasonTierPredicate", "value": "YUnfHWyBg5c3Wq2d", "values": ["GygLo40eCb82j4Oh", "kzg7q7bMwxVAujRx", "aAiWk4TKx1WRjiCo"]}, {"anyOf": 89, "comparison": "isGreaterThan", "name": "ypvu88WyRMMRloXy", "predicateType": "SeasonTierPredicate", "value": "I437Ne6WvRNtbN9E", "values": ["Nqw2oEptJsPYgvPn", "os8o1PdTDqm0SXzX", "AlN2mJeW1LQJ8A7N"]}, {"anyOf": 72, "comparison": "isLessThan", "name": "PAny29oO2B8osfAc", "predicateType": "SeasonPassPredicate", "value": "FM15pfl1N2CNDu3D", "values": ["pGXJrOgVnrneQPU3", "CnmZxob6vepvgW3V", "5uuCoR3Wc6j3UqRI"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'UpdateItemPurchaseCondition' test.out

#- 132 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'mnz3WsgPS6R3Uev7' \
    --body '{"orderNo": "bCsylPZDz1fiXmZR"}' \
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
    --body '{"description": "eVZ4inDP7o0Aeler", "name": "4oEJEmHHU4T74Nkr", "status": "ACTIVE", "tags": ["RIVY69dhSr3JiNwe", "UidBVB2vTyC482Fe", "T76mWyDrmG0FHQOj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'CreateKeyGroup' test.out

#- 135 GetKeyGroupByBoothName
eval_tap 0 135 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 136 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'tRg7ST2UVRJN0qFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroup' test.out

#- 137 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'aGDiDmatCvCembJF' \
    --body '{"description": "NyIwxPt19hjyI7AL", "name": "yZHQ8V4AejtUM6ll", "status": "ACTIVE", "tags": ["4m1Ywb6nMhhSCXGz", "ZMdNwUYOkFXnGtw8", "AuvUND3dJ4hbxnIu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'UpdateKeyGroup' test.out

#- 138 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'xtrWKvmz0RzwVRhR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetKeyGroupDynamic' test.out

#- 139 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'mllqqWYgDWbrtw6q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'ListKeys' test.out

#- 140 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'iRU6n8IKPZ1kpSeR' \
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
    'ooa84wgi9Qjy4Ltk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetOrder' test.out

#- 144 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'YsyCJFj0ayzojVNI' \
    --body '{"description": "rqZCtbJmJSU0agO0"}' \
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
    --body '{"dryRun": false, "notifyUrl": "XHCyo70kyuutjjQD", "privateKey": "fdr0GXMgSK5Yx6db"}' \
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
    --body '{"currencyCode": "DNBB9LNziCP1xQyg", "currencyNamespace": "VqAioKka1tx56Awx", "customParameters": {"AJU0XOoXFpKZ7smO": {}, "vhTDIdO6ugOFZPtL": {}, "UvuPK7wBmEY4lD14": {}}, "description": "f0XIJh3uxrBGEume", "extOrderNo": "TG434DmlbwWuZpKP", "extUserId": "B4rzvo2R5Q7tM4Yb", "itemType": "SUBSCRIPTION", "language": "SOg", "metadata": {"3KhfoL7PlFt47mQA": "QQzQAxQ8GRgWKOBJ", "YYXgFmEZ8kWtzrSI": "fMjxzBwWKzJldpqt", "AlzVR0WqkbKYSr7I": "Vc2WJyX67v7JTcrp"}, "notifyUrl": "pNGl78VMGk3b5E1G", "omitNotification": false, "platform": "BWrzKJ0Lj0VNzr8k", "price": 93, "recurringPaymentOrderNo": "DExMK4z32P13aQRT", "region": "MzFLsBDzdO8IwGdL", "returnUrl": "KPo5zR4q58Tka2qL", "sandbox": false, "sku": "azvRX5v3UCobMU8b", "subscriptionId": "zcaf0Qv0dFMnEcDH", "targetNamespace": "ueqAKTjdRpgYeuit", "targetUserId": "qLYJ7E9mP2Be9WZ9", "title": "kuWMnRcGzbD5iC34"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'CreatePaymentOrderByDedicated' test.out

#- 150 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    's0kTiXwPjN8E3wXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ListExtOrderNoByExtTxId' test.out

#- 151 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    '4Q1L3hAG9xOOi4DV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrder' test.out

#- 152 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'UYo37I8Mgh1DJARp' \
    --body '{"extTxId": "i5KzpbDPfXdGvodr", "paymentMethod": "l6UOwYZJq3OJhzlg", "paymentProvider": "WALLET"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'ChargePaymentOrder' test.out

#- 153 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '16Jp7HjPDG07Xwug' \
    --body '{"description": "hkPLKDhdMf1o4pwe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'RefundPaymentOrderByDedicated' test.out

#- 154 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'yQyv10mRO0tK1CH6' \
    --body '{"amount": 28, "currencyCode": "DpLOyrgsLZV9arTx", "notifyType": "REFUND", "paymentProvider": "WXPAY", "salesTax": 12, "vat": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'SimulatePaymentOrderNotification' test.out

#- 155 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'nOqH9lyv8wx2JosS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetPaymentOrderChargeStatus' test.out

#- 156 GetPlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-get-platform-entitlement-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'GetPlatformEntitlementConfig' test.out

#- 157 UpdatePlatformEntitlementConfig
$PYTHON -m $MODULE 'platform-update-platform-entitlement-config' \
    'Nintendo' \
    --body '{"allowedPlatformOrigins": ["Twitch", "System", "IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdatePlatformEntitlementConfig' test.out

#- 158 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Oculus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'GetPlatformWalletConfig' test.out

#- 159 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'IOS' \
    --body '{"allowedBalanceOrigins": ["IOS", "System", "Xbox"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'UpdatePlatformWalletConfig' test.out

#- 160 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
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
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' \
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
    --body '{"appConfig": {"appName": "pHRQcJzso1tgoqsy"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "A7LpND5zXLhrmEeB"}, "extendType": "CUSTOM"}' \
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
    --body '{"description": "2hT9UYbm2BWjzlqI", "eventTopic": "A8csXOpDTl6yIwkT", "maxAwarded": 93, "maxAwardedPerUser": 57, "namespaceExpression": "CLlRCEQSp3XwOSNJ", "rewardCode": "T3B5f3ynPDyKkSYI", "rewardConditions": [{"condition": "IOqTjadq7tSbuLam", "conditionName": "xL9Ltl0k2ZOJHBnY", "eventName": "PNYKWhYLsAlPZs4v", "rewardItems": [{"duration": 84, "endDate": "1996-09-08T00:00:00Z", "itemId": "RC3gIRiYFpDlAEyV", "quantity": 42}, {"duration": 36, "endDate": "1981-07-19T00:00:00Z", "itemId": "X7cBfnjlfFFTD6KS", "quantity": 63}, {"duration": 85, "endDate": "1973-08-09T00:00:00Z", "itemId": "2x00SvR2yNPms1Dd", "quantity": 96}]}, {"condition": "QVYO5728Ri3CuA2G", "conditionName": "elFQyuDWvfe4Hp9a", "eventName": "CLekZch7a3b0hFYq", "rewardItems": [{"duration": 54, "endDate": "1993-12-12T00:00:00Z", "itemId": "AUm9m9ht4JsrC6ho", "quantity": 34}, {"duration": 19, "endDate": "1993-02-27T00:00:00Z", "itemId": "sR3HPQNrtkf3M9oI", "quantity": 20}, {"duration": 49, "endDate": "1977-06-29T00:00:00Z", "itemId": "Yms9fuih2WMLldox", "quantity": 29}]}, {"condition": "LZHiFEo5sDrk8BZ0", "conditionName": "jnV4jAAxGZ794ngD", "eventName": "Qya3dvyjxR120zHm", "rewardItems": [{"duration": 61, "endDate": "1996-07-24T00:00:00Z", "itemId": "xLMtU6hLliy7em6o", "quantity": 48}, {"duration": 47, "endDate": "1991-03-23T00:00:00Z", "itemId": "9f2ojEQrZ645LOpa", "quantity": 67}, {"duration": 31, "endDate": "1987-10-20T00:00:00Z", "itemId": "NjdKHqDX1jGg2X6V", "quantity": 69}]}], "userIdExpression": "BldfnMF2X9wbQz3e"}' \
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
    'K4Sz7fbw7cgHHvIE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'GetReward' test.out

#- 174 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'PvqjKVvPP5x3gf1H' \
    --body '{"description": "nOzyuw55KAICc0N5", "eventTopic": "AqnaH49QFksDAGUg", "maxAwarded": 97, "maxAwardedPerUser": 5, "namespaceExpression": "PEWI0N4k2W2caqaR", "rewardCode": "VdR05rSilF29Lpg0", "rewardConditions": [{"condition": "zAUzpliq50demc4r", "conditionName": "S3d2v2ibO04gNmB9", "eventName": "r9MA5lA6x0lY16PW", "rewardItems": [{"duration": 37, "endDate": "1979-12-04T00:00:00Z", "itemId": "sxYq77iFOu0ybeoE", "quantity": 89}, {"duration": 15, "endDate": "1980-07-25T00:00:00Z", "itemId": "KMCPmtnE1aHAuVZK", "quantity": 80}, {"duration": 1, "endDate": "1998-10-22T00:00:00Z", "itemId": "6uyKwJ713r4F9WC3", "quantity": 82}]}, {"condition": "2Uggyr64isEfxbFE", "conditionName": "abmT6MmgebEkQ73Q", "eventName": "cKQldxIqMgf2PaNJ", "rewardItems": [{"duration": 34, "endDate": "1973-10-14T00:00:00Z", "itemId": "dxsQXLRJRONKh0R0", "quantity": 89}, {"duration": 4, "endDate": "1996-10-16T00:00:00Z", "itemId": "dWAES7S7wBqBe4F2", "quantity": 53}, {"duration": 20, "endDate": "1999-12-22T00:00:00Z", "itemId": "u3wwUBB3KkzIBx4V", "quantity": 53}]}, {"condition": "nh0Y0rQluvKziVTC", "conditionName": "PTrqHc7vqaXxxiGO", "eventName": "rXbWC2k23JxAI3kO", "rewardItems": [{"duration": 45, "endDate": "1979-10-01T00:00:00Z", "itemId": "rR7RJbkDwkEjOWWC", "quantity": 53}, {"duration": 70, "endDate": "1978-04-11T00:00:00Z", "itemId": "2paEvjRIcSa260P2", "quantity": 15}, {"duration": 51, "endDate": "1978-05-01T00:00:00Z", "itemId": "jhYQEdyLRX3etMjv", "quantity": 24}]}], "userIdExpression": "jskCHfqF5uo9BT2Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'UpdateReward' test.out

#- 175 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'qCxWZGjDRc27d9a3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'DeleteReward' test.out

#- 176 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'AaZO1VcAqwHJEyMr' \
    --body '{"payload": {"wNINM4zHFF9ucrEc": {}, "YD5hjgrxoEVEIkvp": {}, "WupGhtaU3oC1Ly7x": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'CheckEventCondition' test.out

#- 177 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'HbAN2Bdv1CfQOijh' \
    --body '{"conditionName": "EI21znti03vAJizE", "userId": "osjuIsTXKAQ4uWLC"}' \
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
    'MgN7rU1yiWEODovR' \
    --body '{"active": true, "displayOrder": 25, "endDate": "1984-02-13T00:00:00Z", "ext": {"U7QiANYIF1YbEZwE": {}, "zBNPCCnVKYp3EQx9": {}, "pSofiZZNcWBxK2Sc": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 80, "itemCount": 3, "rule": "SEQUENCE"}, "items": [{"id": "MnSNTPMRaYf8Chh5", "sku": "tiLsXIOSE2JSDRlS"}, {"id": "X5uOgZ3Msm86Jr35", "sku": "oZQ3WcFld5DKwJoC"}, {"id": "rYrlOXZN7MoQZDN1", "sku": "sjuHXDU9ZFHISuKM"}], "localizations": {"r6e9VKi3lHZdnYzF": {"description": "YEnOA6gFO3zfSvvm", "localExt": {"LgxlU5MdUdF7gHdI": {}, "f6eMd0iVUmBrFwFI": {}, "ESxo8uFqKtoZiVPt": {}}, "longDescription": "wECFgcQRsqYFtxbp", "title": "KYKp18TPWOixbTLf"}, "dOF3VtCUZ0wN81CL": {"description": "C324P82gdsOb5Jp6", "localExt": {"oxvvtB4aireJSZc7": {}, "Cojp07DFR7IvEhnK": {}, "AMSw1WGHPO22mCj7": {}}, "longDescription": "yFmbpItmTcMVUlRo", "title": "YFks2ULHooisOHhy"}, "iZyNxeNJcBIePMwB": {"description": "jK11IFRybWjjYkFv", "localExt": {"EHCnQ2BiPScmfoBQ": {}, "1VO5Trcu36LS6o87": {}, "DKPLLTcjU87C2CAK": {}}, "longDescription": "biD5PxA5v9644D4d", "title": "5jTjzZ8KpdOxrQ8r"}}, "name": "5te5FkJ58wQyrAb6", "rotationType": "FIXED_PERIOD", "startDate": "1972-03-29T00:00:00Z", "viewId": "VgyzvujT8aEay0LM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'CreateSection' test.out

#- 180 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    '1IpMDZuDLXNscwbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'PurgeExpiredSection' test.out

#- 181 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'gdwQnMuReen3aYjh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetSection' test.out

#- 182 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'ar5GRzOAfOXbaEHF' \
    'X0sySxhkhCpV5A2Z' \
    --body '{"active": true, "displayOrder": 56, "endDate": "1998-01-18T00:00:00Z", "ext": {"LS9dYe42oicsvoF2": {}, "EgsoZSKOzQIDAf44": {}, "vyeNIfF5Ri6ydoL4": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 100, "itemCount": 55, "rule": "SEQUENCE"}, "items": [{"id": "px5TLiooOqRm1Mxf", "sku": "3NfjnW9axvejxDQg"}, {"id": "dz6GmSzMPzB5ZP4m", "sku": "dsjnGGtbn27LOqX7"}, {"id": "FWHHlsxNkfgF88XO", "sku": "EWI4jARIQkIiA44z"}], "localizations": {"jyRqefUM764xXmCk": {"description": "JL9p2OQ5Ll9C3fSn", "localExt": {"ntsqrUKREAt8zG7M": {}, "wy6qt1KRlDGxhO1Y": {}, "bPoWmG714ZA04yxG": {}}, "longDescription": "cMcYyromMVFEaTLz", "title": "3hmDX1C9gHM8SS73"}, "LrEja3XlbCcD2bQL": {"description": "uFwHyfWs9J4OjFm6", "localExt": {"OQMQgWL3hmjUydsg": {}, "dt98KfbaQpgEAKKL": {}, "cKbPxGvL2c7KalLF": {}}, "longDescription": "WBzkHql6eJa7PZ2M", "title": "vexshOyL8KXBfLq1"}, "zWLmtFhefMqfbE0D": {"description": "ZBwK4s4YGhc9qjsG", "localExt": {"zedPNuJ4GH001y8D": {}, "GO7yuqGFaSZmLnl1": {}, "3NthHP0LDshHSWty": {}}, "longDescription": "rOFmeGGIRRLbsmgD", "title": "O0TIQbgg12LHWqVd"}}, "name": "QIiLCN04Qo69tjPC", "rotationType": "CUSTOM", "startDate": "1986-08-02T00:00:00Z", "viewId": "O061ScAQ7gSO3GHo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'UpdateSection' test.out

#- 183 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '6ESwn8otu3o1B2P8' \
    'cdPJAnmCFUZdH9CH' \
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
    --body '{"defaultLanguage": "HozRud9g15dSBhpL", "defaultRegion": "RxydIE1CQFSQS3RD", "description": "8Q6YcgyTtSOU4FdU", "supportedLanguages": ["ceGtntm6j0Apyric", "msku6ryZK7UKLhMA", "3DOG2TuIwxdK6goe"], "supportedRegions": ["9uJ8PAnT6lHom6RS", "j2xFFFrIQFWJ2aMI", "xqQycDpbOcYim2sy"], "title": "Yc8YuKlQjnj5QjrV"}' \
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
    'i62ITQp6NklXSUYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetStore' test.out

#- 192 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'HNYqepadIS0zRgir' \
    --body '{"defaultLanguage": "e2ntrz0FUDXjV0Gm", "defaultRegion": "cFSjmJGQU5YRHjMz", "description": "3bo23SF3XkwdkgeN", "supportedLanguages": ["E7pA2BmAcotg9A9V", "vbcAi4ZmdXz2NXfb", "CObijIWdRSDSq6oI"], "supportedRegions": ["Y8wqc2OcvjggLVwA", "QMWoB0LkwHKKIT2D", "8YJKnP2TmDSwAt1U"], "title": "GNieMe0c6eA8xCvV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'UpdateStore' test.out

#- 193 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'NgS0wUvETmRwwaH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'DeleteStore' test.out

#- 194 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '1xuey3fB1KN5EzSm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'QueryChanges' test.out

#- 195 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'B6aO1JqypofIkM1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'PublishAll' test.out

#- 196 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'vc2CcOra4RXenU5n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'PublishSelected' test.out

#- 197 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'aN6UuNARNfA4hpoN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'SelectAllRecords' test.out

#- 198 SelectAllRecordsByCriteria
$PYTHON -m $MODULE 'platform-select-all-records-by-criteria' \
    'UAwafK1QxxK2sBBk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'SelectAllRecordsByCriteria' test.out

#- 199 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'Qz8nIgoYpZYIYto2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'GetStatistic' test.out

#- 200 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'cpXUnj1kXAEnU9Cv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'UnselectAllRecords' test.out

#- 201 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'pIjJ6tB2fqN6D76a' \
    'pW4CsuQx2nME1E8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'SelectRecord' test.out

#- 202 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'GIgW2AWqhlJfHgWS' \
    'AjBmziLkAEWkqMo2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'UnselectRecord' test.out

#- 203 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'uv4G0hb2TC5zbxqS' \
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
    'MQf3ZXRgmEXKPavN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'RecurringChargeSubscription' test.out

#- 207 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'UDslWRgXzKcDEz6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetTicketDynamic' test.out

#- 208 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'vQvlpRKagGd8OJWf' \
    --body '{"orderNo": "XgBkof2DgN1OHBaK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'DecreaseTicketSale' test.out

#- 209 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'If5hoyD0oT4csEU6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'GetTicketBoothID' test.out

#- 210 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'rwlyAZXRltXTRz9W' \
    --body '{"count": 40, "orderNo": "FiMrqZaZSR4SAMIG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'IncreaseTicketSale' test.out

#- 211 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Steam", "count": 56, "currencyCode": "RP307xNIxMniv6VD", "expireAt": "1981-04-04T00:00:00Z"}, "debitPayload": {"count": 66, "currencyCode": "e3vQP0F7CVBRFOlm", "walletPlatform": "Playstation"}, "fulFillItemPayload": {"count": 85, "entitlementOrigin": "Oculus", "itemIdentity": "HhihwdNSBKpqJ8V1", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "QHisGldXgqa99UNy"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 32, "currencyCode": "lnrLOesUoAwwCO2c", "expireAt": "1995-12-29T00:00:00Z"}, "debitPayload": {"count": 36, "currencyCode": "EAHcpdx91UabvNvR", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 9, "entitlementOrigin": "Oculus", "itemIdentity": "V0mE4XANjqP7L1mg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 60, "entitlementId": "fPVWmEdVFXX02sJs"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "GooglePlay", "count": 40, "currencyCode": "7AKOu2Xk8T0sqdmD", "expireAt": "1999-10-03T00:00:00Z"}, "debitPayload": {"count": 82, "currencyCode": "rolfU1yEokwoBSfR", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 79, "entitlementOrigin": "System", "itemIdentity": "dPXru40VmHvpaJ6E", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 79, "entitlementId": "wLOlD7N2GNQs0IgM"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "5a9nlua2qF5WhoaE"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 3, "currencyCode": "rHFxE9EAcMe8RHXn", "expireAt": "1980-10-03T00:00:00Z"}, "debitPayload": {"count": 48, "currencyCode": "6XrTj3i1nC0J9A8D", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 33, "entitlementOrigin": "Epic", "itemIdentity": "OEqdEcHbFrNLqqyB", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 85, "entitlementId": "FFkKf2QcbDNp9wVg"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Xbox", "count": 30, "currencyCode": "39o0vZqaSrHfwrqq", "expireAt": "1988-03-28T00:00:00Z"}, "debitPayload": {"count": 81, "currencyCode": "HpPnC56p62cEYBMP", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 2, "entitlementOrigin": "Steam", "itemIdentity": "mIkQbE3nPbd7YNYQ", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 3, "entitlementId": "jGfdMvM0zEHmThs6"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 6, "currencyCode": "3hXTX65W9y7jKRgC", "expireAt": "1987-10-26T00:00:00Z"}, "debitPayload": {"count": 19, "currencyCode": "XGD7r4dvtuyipF1F", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 20, "entitlementOrigin": "System", "itemIdentity": "RNF3G6sPweMmOIXU", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 2, "entitlementId": "FkTWMTXNI4WIT2qY"}, "type": "FULFILL_ITEM"}], "userId": "j8Uxptb2o5jdTreV"}, {"operations": [{"creditPayload": {"balanceOrigin": "Twitch", "count": 15, "currencyCode": "xouzcD0pPXkdTrLY", "expireAt": "1991-08-19T00:00:00Z"}, "debitPayload": {"count": 42, "currencyCode": "8A5DLkL19tXrv2bC", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 45, "entitlementOrigin": "GooglePlay", "itemIdentity": "HGabfCgecNknWoEb", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 30, "entitlementId": "cFEHKN66TOzJSyl8"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "System", "count": 31, "currencyCode": "hHTDHO8mQoGOS84j", "expireAt": "1986-09-21T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "CPEvc97uDKDBhngm", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 80, "entitlementOrigin": "Epic", "itemIdentity": "PUEwP8KagnEKkfRn", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 54, "entitlementId": "TTm092rucPAhnaYq"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 26, "currencyCode": "r3tlvhwbpOwvWyVZ", "expireAt": "1971-10-06T00:00:00Z"}, "debitPayload": {"count": 90, "currencyCode": "gvJKjvhZn4m8rgQU", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 17, "entitlementOrigin": "IOS", "itemIdentity": "gDFutWedPpbBwcmR", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 100, "entitlementId": "1AvjH8TO5OIzshGg"}, "type": "FULFILL_ITEM"}], "userId": "ThugQFOWwlpo3MnS"}], "metadata": {"MNdjVtLt8CrUFIkc": {}, "Zk3UEaPstaXtLCGf": {}, "6Pjb7W28XF9eX2LX": {}}, "needPreCheck": true, "transactionId": "DpF9Uxmjutqgr801", "type": "9aVHHRLK0fv936lS"}' \
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
    'L3gAK6QqFlWlAR1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'GetTradeHistoryByTransactionId' test.out

#- 214 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'rDQIVwmefiYRytVW' \
    --body '{"achievements": [{"id": "tyJI7ujeL0gjx8jA", "value": 10}, {"id": "4SKjpYMZV5AVm0vO", "value": 93}, {"id": "TYLcDOMWy0wefl1K", "value": 75}], "steamUserId": "C3pOWLT8ckEy2SMQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'UnlockSteamUserAchievement' test.out

#- 215 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'cmxebThGYrgNOimV' \
    'rZzkyKHvwa7cbRj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'GetXblUserAchievements' test.out

#- 216 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'at5ZJSh02srNNRw3' \
    --body '{"achievements": [{"id": "Y1j6viZbWeu0WyHC", "percentComplete": 24}, {"id": "SqAvumNXdNoD6gTO", "percentComplete": 11}, {"id": "6hcP5jLY1KxbFbyz", "percentComplete": 83}], "serviceConfigId": "UIQnwGbMTiA96lnb", "titleId": "5gdT3QnV1lkyfpfT", "xboxUserId": "o2MX3YvlKKTkjhbq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'UpdateXblUserAchievement' test.out

#- 217 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '0eRvkBW48O77tNIB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeCampaign' test.out

#- 218 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'YTFfPUrNUOX0haxw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeEntitlement' test.out

#- 219 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'oUd3ezYAdypb6oWX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeFulfillment' test.out

#- 220 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'YIQqBIhw3NQXGJDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeIntegration' test.out

#- 221 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'tQNJFHNbgt9uaoCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AnonymizeOrder' test.out

#- 222 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'P9rZK0m4whjNMB89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AnonymizePayment' test.out

#- 223 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Aoh6Jk84k7R0603b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AnonymizeRevocation' test.out

#- 224 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '1ChdDIpRn2HgPRev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AnonymizeSubscription' test.out

#- 225 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'BMjempE90i47qjDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AnonymizeWallet' test.out

#- 226 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'AAvYZZABKOA0L11T' \
    'EPICGAMES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserDLCByPlatform' test.out

#- 227 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'wA9mw8ujZZQUNi4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserDLC' test.out

#- 228 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'DzBP7mmM4ZrXjamc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'QueryUserEntitlements' test.out

#- 229 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    '3OX9fjEzscuFPv5t' \
    --body '[{"endDate": "1991-02-16T00:00:00Z", "grantedCode": "XWb8n1xyB1MxbBG0", "itemId": "waudrudTuIy3VLkd", "itemNamespace": "3YGg9Bzi8uluQOBu", "language": "iVvz_eaoq_757", "origin": "Steam", "quantity": 45, "region": "bL13OgHZysyny091", "source": "ACHIEVEMENT", "startDate": "1971-04-01T00:00:00Z", "storeId": "xRFeMgIQdJNm52k6"}, {"endDate": "1982-05-17T00:00:00Z", "grantedCode": "EP9rj7lO6vs4tMfH", "itemId": "LoSkvb8lbFBtF0IL", "itemNamespace": "nxdtDeCtbUIxxTu6", "language": "dspg_453", "origin": "Epic", "quantity": 71, "region": "iz3ZJfWFdytTpAVx", "source": "OTHER", "startDate": "1973-01-28T00:00:00Z", "storeId": "hp8GNMEX4Ps5vorN"}, {"endDate": "1996-12-01T00:00:00Z", "grantedCode": "6W3h8ItD6AFXbQvG", "itemId": "bKVlE5VulHAZZ2SK", "itemNamespace": "o1C0ktvmekdbic6I", "language": "NW_bZ", "origin": "Playstation", "quantity": 24, "region": "vlDEhlvzVBqt9fNn", "source": "REFERRAL_BONUS", "startDate": "1989-10-18T00:00:00Z", "storeId": "dFhRNswdEfL1i3SL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GrantUserEntitlement' test.out

#- 230 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    '7JlQ0WmwgELy9cxg' \
    'DaEUFiMTIV4pb5hZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserAppEntitlementByAppId' test.out

#- 231 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'yPikzEmnmdOWGrvu' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'QueryUserEntitlementsByAppType' test.out

#- 232 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'JZsUPqtph4Z0KsCW' \
    'hJPpmpjibu6WMYMS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementByItemId' test.out

#- 233 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'cWAzVVdQZznMUlqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserActiveEntitlementsByItemIds' test.out

#- 234 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '2djHHFFRxJPvHewp' \
    'v9IeC6LAtGzNwZUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementBySku' test.out

#- 235 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '0kRnfBio030WDtRF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'ExistsAnyUserActiveEntitlement' test.out

#- 236 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'RReZoX0eYwpjuQPo' \
    '["1Bi27Mr8QiSBuE8W", "dxjHSrIcoNi9NFQF", "pBDG4baNqdGxNGcH"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 237 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'il6iUOTWxf4GH0N4' \
    'kVmTj683Ybw4TKyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 238 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'TxRuzNfmvBcfNBFi' \
    'Iw9mkjC9qXOVUNHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementOwnershipByItemId' test.out

#- 239 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'fbgUqbLQ3WTZF8gP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'GetUserEntitlementOwnershipByItemIds' test.out

#- 240 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '7LgkxhkSSID9PxPy' \
    'XJHsWipvZANpRXHV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementOwnershipBySku' test.out

#- 241 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'qJaiwkoaBb8UYH2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RevokeAllEntitlements' test.out

#- 242 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'z5V5CtSrcX7aRP8v' \
    'Z9a77wOP10AbpbjZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RevokeUserEntitlements' test.out

#- 243 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'o2dQM3ZXq9atijyF' \
    'T8B6hECr4zqhZ9lp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlement' test.out

#- 244 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'llwasnryjxylwRVc' \
    'y18iHO0dKNHWBFM1' \
    --body '{"endDate": "1999-10-23T00:00:00Z", "nullFieldList": ["F37X9HTu6c4mMUdJ", "oKmyaU7qTgHxGQ4D", "m2YoSLUIzzQsIU3I"], "origin": "GooglePlay", "reason": "P7Yh6ERWyedt6rkP", "startDate": "1983-12-24T00:00:00Z", "status": "CONSUMED", "useCount": 61}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'UpdateUserEntitlement' test.out

#- 245 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'ya2ruQcikSHwHPfy' \
    'NRUhMXX7FiB3X634' \
    --body '{"options": ["iuF8pqhqsqRF4kqM", "bz4sxPUl2WbQNFNB", "2IE43MBCGNyjqnDu"], "platform": "WD1qiZzXQxSDgH9L", "requestId": "20T6fVxvK30nHMYx", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ConsumeUserEntitlement' test.out

#- 246 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'KHHaSwFS7fAGmA4g' \
    'y2QBm02aTdgp0WcR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'DisableUserEntitlement' test.out

#- 247 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'drrdOKQbXXiMg5RA' \
    'aD5a0gqyakuryISj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'EnableUserEntitlement' test.out

#- 248 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'srHy7SSarFsJyano' \
    'th2jhzr7POOjzRzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetUserEntitlementHistories' test.out

#- 249 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'mVmpfmMq65nYpNAw' \
    'v9UsvPaX8W0GvPN7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'RevokeUserEntitlement' test.out

#- 250 RevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-revoke-user-entitlement-by-use-count' \
    'gRfsySRn2FX0Ac7C' \
    'zuPXE90ufrBaS458' \
    --body '{"reason": "bBTbcqQVkSIXLGF8", "useCount": 7}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'RevokeUserEntitlementByUseCount' test.out

#- 251 PreCheckRevokeUserEntitlementByUseCount
$PYTHON -m $MODULE 'platform-pre-check-revoke-user-entitlement-by-use-count' \
    'Mnwchld3LWFhC1kB' \
    'UvsUcnOXhewthszM' \
    '37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PreCheckRevokeUserEntitlementByUseCount' test.out

#- 252 RevokeUseCount
eval_tap 0 252 'RevokeUseCount # SKIP deprecated' test.out

#- 253 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'd49hW95i4Rm9sBef' \
    '6ymEEU6G6YVa5GGF' \
    --body '{"platform": "vLtWl66DAEkAvXqN", "requestId": "dnEfei54fLtFTRx1", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'SellUserEntitlement' test.out

#- 254 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'Gi5l0G5NBtXVTXK1' \
    --body '{"duration": 72, "endDate": "1992-01-26T00:00:00Z", "entitlementOrigin": "Twitch", "itemId": "oClQQGLneKl3iXOv", "itemSku": "SGgZzuoTiOgT4AtB", "language": "ZJsMBPDcUuWC1NgH", "metadata": {"axQlxs2MPGkLeY5C": {}, "edGPB0iJF96NG7vO": {}, "DPmfnV8dOr38jFYj": {}}, "order": {"currency": {"currencyCode": "FRDj47EZTCCwz8ya", "currencySymbol": "wNImZdPzt9koNSL3", "currencyType": "VIRTUAL", "decimals": 74, "namespace": "qGgJOWkI0sHphIU3"}, "ext": {"KaP7nk9iEaqudy3a": {}, "Yo02pzHannSLeEYv": {}, "uciynwWb01HLrp6O": {}}, "free": false}, "orderNo": "7FIIEJMm4Kizs3NR", "origin": "Epic", "overrideBundleItemQty": {"jL5qUyimmVzOJYeb": 71, "tRQu0coThNxwnnpo": 78, "fdqOCaqFaXYK6AzV": 35}, "quantity": 31, "region": "q1O6RDUgilQHCts6", "source": "PURCHASE", "startDate": "1976-11-28T00:00:00Z", "storeId": "WIGSkxjKL3EiP6We"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'FulfillItem' test.out

#- 255 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'XWf3dBAVfIM2oLFa' \
    --body '{"code": "TIhv5XrQvTAdisxP", "language": "exY-RxuM_610", "region": "EZgIMDALa4nsITUe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RedeemCode' test.out

#- 256 PreCheckFulfillItem
$PYTHON -m $MODULE 'platform-pre-check-fulfill-item' \
    'FKNh8kgmMjBxD74L' \
    --body '{"itemId": "ujtGQD9sT5LHkWjF", "itemSku": "Io6VbU9gwMgZPR9Q", "quantity": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PreCheckFulfillItem' test.out

#- 257 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'Lstog0ehjEmcjJzk' \
    --body '{"entitlementOrigin": "GooglePlay", "metadata": {"4o1Tgbe8J8xso71U": {}, "LeHVV40sjQ8mtTN0": {}, "8V3MMSrrV6FB8DFw": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "BV4CX15snBgmflyg", "namespace": "DW6ab0RoZeMIFYmE"}, "item": {"itemId": "raqGPOCMPGtRg0HG", "itemSku": "zSGs8nBUQVBsF03D", "itemType": "5vkAkZ8CS09fFrbd"}, "quantity": 37, "type": "CURRENCY"}, {"currency": {"currencyCode": "JeEn6eiosoCvrGeD", "namespace": "ygOZbA1UGLox4eJu"}, "item": {"itemId": "vLmou5AtB5J9XxYq", "itemSku": "y0HcWUCcahA1tjiB", "itemType": "ugkSmA8prRvnuoHm"}, "quantity": 12, "type": "CURRENCY"}, {"currency": {"currencyCode": "qH3ytkroZ2tfFjNF", "namespace": "99VixS5Es3u4km3i"}, "item": {"itemId": "KiNLRNa01SihgZby", "itemSku": "9mBdGrJY5J0e9jWc", "itemType": "VTCNxjdv8GxhJoB4"}, "quantity": 24, "type": "ITEM"}], "source": "IAP", "transactionId": "1zHcDdphWEIlBnOK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'FulfillRewards' test.out

#- 258 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'yfAbdUB1OM5oKTXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'QueryUserIAPOrders' test.out

#- 259 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'NlenFuUeRc2SCqQ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'QueryAllUserIAPOrders' test.out

#- 260 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'kgrqAIaKAUBfyFCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'QueryUserIAPConsumeHistory' test.out

#- 261 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'sJfyos4fOD6B14cw' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "cwYk-pTae-381", "productId": "Sholl8uD1hpBtpd4", "region": "eLc1PpHJmrL7AZ1M", "transactionId": "KcHBB1AfySUMZOWh", "type": "STADIA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'MockFulfillIAPItem' test.out

#- 262 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'pJeQd6tN5oH4E7Jo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'QueryUserOrders' test.out

#- 263 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'sGEpOKUFWLtsLf27' \
    --body '{"currencyCode": "8ybCNhF9RCyMn5VX", "currencyNamespace": "87u49Hsq4hLUkLLT", "discountedPrice": 82, "ext": {"4pHU7Kjrz4HAGIJO": {}, "SxoJdIIw70J2JeqN": {}, "TxshoZJnsAkX5sxn": {}}, "itemId": "y0WLYMNb0QsxPlx6", "language": "4IQUpSToD0bb0SXZ", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 88, "quantity": 69, "region": "THKPcc8Z82Wtwcih", "returnUrl": "C87O1U2uYktiAFqI", "sandbox": true, "sectionId": "bNoJJUhL5p56dnYH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'AdminCreateUserOrder' test.out

#- 264 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'k1iLtAXL33WCBnIH' \
    'oRNWTVvIN7c2uh7L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CountOfPurchasedItem' test.out

#- 265 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    's9nxKiaoWmrw6n7V' \
    'YPrZA5UWNq6yTj5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserOrder' test.out

#- 266 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'ST6JF9lLvPS5jJ58' \
    'vaRaaxVQeMUb1kvS' \
    --body '{"status": "CHARGED", "statusReason": "RBv8hh81CTYPYD0W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'UpdateUserOrderStatus' test.out

#- 267 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'HJ0JzaJpqg9JgEy7' \
    'Iad7fAMCaXsZoyeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'FulfillUserOrder' test.out

#- 268 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'N5ouEcXRhWbROnhO' \
    'USnN2KpfXJ96sJUn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserOrderGrant' test.out

#- 269 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'v5BwzKyxJqBCaof9' \
    '6NNQPxPe1HYkf4Kj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'GetUserOrderHistories' test.out

#- 270 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'UJVMedBEWe14kmPI' \
    'GCrJozIio8nWa64x' \
    --body '{"additionalData": {"cardSummary": "5pJSHZCzyWKP30Ku"}, "authorisedTime": "1980-08-10T00:00:00Z", "chargebackReversedTime": "1983-02-07T00:00:00Z", "chargebackTime": "1982-01-07T00:00:00Z", "chargedTime": "1985-03-06T00:00:00Z", "createdTime": "1982-06-11T00:00:00Z", "currency": {"currencyCode": "n1QymYMLAdBSViPH", "currencySymbol": "KLXkQVWSLbAXxxea", "currencyType": "VIRTUAL", "decimals": 0, "namespace": "hcEMFRkn8SAQhtiW"}, "customParameters": {"A2DHIocFR98KOabg": {}, "b0l3UURltNbDbdvc": {}, "14DUjHqRaUZuU9T9": {}}, "extOrderNo": "SRQFfxRIUU3K7sjv", "extTxId": "HHFmaUGIprrzf5gW", "extUserId": "Nxqxl2qgslinTPbY", "issuedAt": "1998-02-28T00:00:00Z", "metadata": {"473RFPlwtoen6TTQ": "twMX4QAE2aV1l1P0", "cjdc49Ah8hoDWRw7": "XYzZLlLq8lPGFyb3", "4DDyqvcwQ3uBzBm3": "55IU5aZu5bRvxm9K"}, "namespace": "Yr60SyfWNB8u5Qlf", "nonceStr": "4KGo0N4g7UWRzPsM", "paymentMethod": "d90Jrkh4kaHSpxt9", "paymentMethodFee": 58, "paymentOrderNo": "6sgk5cHaJYkzClqP", "paymentProvider": "STRIPE", "paymentProviderFee": 2, "paymentStationUrl": "y2kxgyry1MM9eo43", "price": 86, "refundedTime": "1971-03-13T00:00:00Z", "salesTax": 40, "sandbox": false, "sku": "pdbjxfK1P9wjSBBx", "status": "CHARGEBACK", "statusReason": "E04Cbkpn0yX44aL9", "subscriptionId": "f0QyO5YXVhTiaE4W", "subtotalPrice": 76, "targetNamespace": "7dIB0aGjtNbryvmk", "targetUserId": "emouOe0GhKNxavCN", "tax": 94, "totalPrice": 82, "totalTax": 67, "txEndTime": "1987-10-13T00:00:00Z", "type": "HbR5lY76lAzKbyHp", "userId": "hqwB5Iehzt3ErL5T", "vat": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'ProcessUserOrderNotification' test.out

#- 271 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'rvBRXJxUvm1xIvCy' \
    'wA95KVla3LCTgTkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DownloadUserOrderReceipt' test.out

#- 272 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'tcVfRHox2lJjo1I9' \
    --body '{"currencyCode": "gluGDrbO6CoGGaGB", "currencyNamespace": "bMIhMZL5o3htHW6G", "customParameters": {"x9FaoDIwGJ3pRyNw": {}, "b9JgVZofu7lNuwrS": {}, "7xf7BiZI9Jujxs7G": {}}, "description": "Kf2LOlVbEWajKUr3", "extOrderNo": "rx7Sdt80ugFtH5gS", "extUserId": "uRJLGkijLEJPCdah", "itemType": "SUBSCRIPTION", "language": "zx", "metadata": {"9y3eP20aRJVXYPkI": "Gnj7nGzgSkTy0cIm", "2Tc4sbYVp7amyDRQ": "k3QGp0uzzvAfa6BW", "7oGw2U9LoHWS4koa": "uo9jkTEI52B8LI9v"}, "notifyUrl": "MEB8OHKsqKaw1EmC", "omitNotification": true, "platform": "Z56H3l3jc1060kqF", "price": 75, "recurringPaymentOrderNo": "SkIQI1h6OjoUY4QX", "region": "ecerXxPodPokDUiv", "returnUrl": "fNI3KdSIbTi8dxU1", "sandbox": false, "sku": "tPBlMCz6SSpxt0aZ", "subscriptionId": "Zr3SbJHkTstBGTm2", "title": "OFHVEoRljsGF5AYZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'CreateUserPaymentOrder' test.out

#- 273 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'lEYqTVSCLemvpJXl' \
    '2drfGIgu0ksPtzdX' \
    --body '{"description": "jtRaBOlhg63PduP0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'RefundUserPaymentOrder' test.out

#- 274 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'G77oZV8BGfavVPOh' \
    --body '{"code": "aaf5eExcjABRx8qN", "orderNo": "Mv4XLW0xlb6yLTss"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'ApplyUserRedemption' test.out

#- 275 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'mZXLvxRhf6ICrMr8' \
    --body '{"meta": {"z6e2UDBycYrDDg5i": {}, "DNLOJJmzGW9AQMDn": {}, "aFw1u7BLbxxmghZp": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "0lub807E0PGhia3Q", "namespace": "vaFIVfHyAiTeDDuv"}, "entitlement": {"entitlementId": "gKTfrZ6TfrQrFIsY"}, "item": {"entitlementOrigin": "Oculus", "itemIdentity": "8y91hD1ZHh1VjLqa", "itemIdentityType": "ITEM_ID", "origin": "Playstation"}, "quantity": 2, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "DLarMcrlOCtMCyPH", "namespace": "nS8uePyiByYQOgKK"}, "entitlement": {"entitlementId": "v9kQYaSI3bbqZQkX"}, "item": {"entitlementOrigin": "Playstation", "itemIdentity": "25jLP6zS6a5C6awf", "itemIdentityType": "ITEM_SKU", "origin": "Epic"}, "quantity": 27, "type": "ITEM"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "PNJCopJg7IJTeOWo", "namespace": "VtcblaKlhxMNx5h4"}, "entitlement": {"entitlementId": "l3ogPTLlSlGfh2Xh"}, "item": {"entitlementOrigin": "GooglePlay", "itemIdentity": "eMg5NGs1Pmz6Ameb", "itemIdentityType": "ITEM_ID", "origin": "GooglePlay"}, "quantity": 29, "type": "ITEM"}], "source": "IAP", "transactionId": "bOWyhAnMP6BdBw6d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'DoRevocation' test.out

#- 276 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    '4UOI7Tr9NHcXeEWI' \
    --body '{"gameSessionId": "pyYx9wOuNquv2qkq", "payload": {"RR9Nwd8OrgT5HMae": {}, "lKs3hdNcCPnrmZDN": {}, "ctQe0IM586qYdNvm": {}}, "scid": "RITEU7usHknnfYNY", "sessionTemplateName": "7ZXicpAJw7Ct9AmE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'RegisterXblSessions' test.out

#- 277 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'oUNlmQjebaV8c13F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'QueryUserSubscriptions' test.out

#- 278 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'ZxX6qNntgmml0ts1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'GetUserSubscriptionActivities' test.out

#- 279 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'uw7WvaRDN6waXRBR' \
    --body '{"grantDays": 93, "itemId": "RPR9FWa3sAlKnzZ5", "language": "Joq98jWszWZxmbhM", "reason": "r5aDNyd7VDhThmXA", "region": "sBwC4MOmSF5ZPpYX", "source": "Tbgh3hVKyU97N87z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PlatformSubscribeSubscription' test.out

#- 280 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'JHVwE86VYnuoHevg' \
    'j9ralh2tjIEDpjLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 281 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'D7E0dh077pXU34wa' \
    'IIRxeTkl27M6Aggz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'GetUserSubscription' test.out

#- 282 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'KZ3nqWutrpjBOnBe' \
    'qwBnFdy01mQjVblM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'DeleteUserSubscription' test.out

#- 283 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '1GnFG6ePpjPG4iKj' \
    '1VxNoFLwY2aYPpds' \
    --body '{"immediate": false, "reason": "55f9R3a5ZvIk8F6f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'CancelSubscription' test.out

#- 284 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'faPP2hJSGfW6ap0w' \
    'sdPdG1EQTyBW6pf9' \
    --body '{"grantDays": 82, "reason": "men8keuXuWuitb85"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'GrantDaysToSubscription' test.out

#- 285 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'Ns7DhXCIneqddStn' \
    'BNigsnBpu24ga0d3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'GetUserSubscriptionBillingHistories' test.out

#- 286 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'NvXvIgvIynEaAcX7' \
    'fXbKWmraqNIKPX6g' \
    --body '{"additionalData": {"cardSummary": "PHT29wkZwM8cvObR"}, "authorisedTime": "1976-08-08T00:00:00Z", "chargebackReversedTime": "1989-08-30T00:00:00Z", "chargebackTime": "1982-10-16T00:00:00Z", "chargedTime": "1975-12-21T00:00:00Z", "createdTime": "1998-01-27T00:00:00Z", "currency": {"currencyCode": "5l9mb1mSJffUaLwO", "currencySymbol": "sYRIJearztP7sqwr", "currencyType": "REAL", "decimals": 4, "namespace": "n3ZvUrBoqK16btU6"}, "customParameters": {"SoaoiAtMgNN8B4oo": {}, "9jFmBqiyicQHvr1z": {}, "REqWwsQaxbdG9IxE": {}}, "extOrderNo": "oxcgOEmGQpzN4HM3", "extTxId": "v5wAiimBQXCxR1cO", "extUserId": "bsys0SaqnYIBTANs", "issuedAt": "1974-01-29T00:00:00Z", "metadata": {"JcdLEofyiS3dO8j3": "taWbShXMN0MRNkMX", "09nQEwFSce6VsIsS": "SdkP3IqaPaXJc57c", "VP8tXCteutO2hlDa": "0voH7Al8vuxWTaiU"}, "namespace": "JpIgLrblSQiwrmWK", "nonceStr": "b8IhCNJqtCtGvxKw", "paymentMethod": "uL3MuhHXzy6WjNeN", "paymentMethodFee": 29, "paymentOrderNo": "uVWrqxrNDhsaw4vb", "paymentProvider": "XSOLLA", "paymentProviderFee": 86, "paymentStationUrl": "dvzUWMz6IheEap1P", "price": 15, "refundedTime": "1981-03-14T00:00:00Z", "salesTax": 20, "sandbox": true, "sku": "uXwWEJUvl8k6CNRA", "status": "AUTHORISE_FAILED", "statusReason": "i0OZtmm5xYReY6Sg", "subscriptionId": "fTy3HUPSrR6V6wTN", "subtotalPrice": 21, "targetNamespace": "L9p83Led5r4J7MEw", "targetUserId": "KxtP0SkagDcL89Pj", "tax": 43, "totalPrice": 41, "totalTax": 99, "txEndTime": "1982-07-03T00:00:00Z", "type": "aUDi2fDyXlYJu8bI", "userId": "kkFh5LqxA2jff0fT", "vat": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ProcessUserSubscriptionNotification' test.out

#- 287 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'OXQatBE5QBIDADPT' \
    'gsgo0iTCIEKHYwj8' \
    --body '{"count": 24, "orderNo": "RIJjlQAk4T5By0Aq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'AcquireUserTicket' test.out

#- 288 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'ALCR39RH5UcRubJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'QueryUserCurrencyWallets' test.out

#- 289 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'YIgyBXZfTmD5U7RT' \
    'vIuyjoeXOEFAR7UL' \
    --body '{"allowOverdraft": true, "amount": 53, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"REBSrOk54EyWalLj": {}, "CH6xr3vtL9JTQ5CW": {}, "aR2DvfAXB1SrgLn5": {}}, "reason": "lUQ3Mt9iye7Sb3gS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'DebitUserWalletByCurrencyCode' test.out

#- 290 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'olD6u7wIciVVHoFt' \
    't4AP9G3HyBugfRei' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'ListUserCurrencyTransactions' test.out

#- 291 CheckBalance
$PYTHON -m $MODULE 'platform-check-balance' \
    '{"amount": 62, "debitBalanceSource": "PAYMENT", "metadata": {"LdSTRmElGhVQf227": {}, "V7ADaQHt78b3DT7q": {}, "RYPx0W6cXzOdGXLs": {}}, "reason": "Ec8XzmjXX4csMlaB", "walletPlatform": "IOS"}' \
    '6xBAApmumWxYTfEE' \
    'm2g8JpfOhv1dFmmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CheckBalance' test.out

#- 292 CheckWallet
eval_tap 0 292 'CheckWallet # SKIP deprecated' test.out

#- 293 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'cX8cRQpNggDqIfB0' \
    'DPn1CZrBaO9y4CHH' \
    --body '{"amount": 2, "expireAt": "1981-07-22T00:00:00Z", "metadata": {"E2WuycIdVm37lVyV": {}, "Yhbj7X96t5WMLdod": {}, "5DYqp6XDPJmYDZqW": {}}, "origin": "Nintendo", "reason": "Nb6qoNGzjQQDw2Sc", "source": "TRADE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'CreditUserWallet' test.out

#- 294 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    '{"amount": 4, "debitBalanceSource": "ORDER_REVOCATION", "metadata": {"n53kIRN1df13EvjS": {}, "bGYcLQEocUfUPAI2": {}, "O4xXXwCsNtkQh3rU": {}}, "reason": "UKaN66Rjkt9zWkx2", "walletPlatform": "IOS"}' \
    '44WEKYCuqx8xzh9b' \
    'TsHGm5hk6Ypn8KsM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'DebitByWalletPlatform' test.out

#- 295 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    'KfuARcHovGUZSzWf' \
    'q3hqssnqUPIJabCP' \
    --body '{"amount": 79, "metadata": {"uTJRHgBRpSb3GL7Y": {}, "AU5AnUkmfVW93ZW1": {}, "tXAOpK37SfSPivmY": {}}, "walletPlatform": "Playstation"}' \
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
    'b5jkz9ihTe86sjHo' \
    --body '{"displayOrder": 55, "localizations": {"I1VhgTvfzwfgRZnt": {"description": "Mhunn3jSCD2AknCw", "localExt": {"Pe4TX4CK4IBY01Ku": {}, "Fbs8Iv2Ij9B7VD3S": {}, "yR3UCMUtsTLoeVLj": {}}, "longDescription": "xbwUQUVEWE0xtN3v", "title": "8DgFUrjRGzthYJKH"}, "9vhOLpoWOSJS0kU6": {"description": "fD66yb2MtSEiRgh6", "localExt": {"7ylD9xIb44v71qZ2": {}, "QmEuNVKEmoFSme2B": {}, "5xb6kbzroGyrFwTS": {}}, "longDescription": "dzLOXwPp0OS1jOq8", "title": "HtddVhZ7lfOiLRYQ"}, "kDw4MI4SEqiXIaji": {"description": "4MOmP494vGlNtuMU", "localExt": {"pS3K4kKGKct8SZQK": {}, "7TEK4sZzj7oPP3Oe": {}, "ZVILEaXbHnhR8gT3": {}}, "longDescription": "if17nsndhy0Gtga4", "title": "xRRNit3ApyAvkVtA"}}, "name": "8b9zvOaiSMHjVciA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'CreateView' test.out

#- 303 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'VrPuzKV1Wj7J3Qrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'GetView' test.out

#- 304 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'nhZMehNOncXNM18Z' \
    'iBLaa5iN5b6ODd1k' \
    --body '{"displayOrder": 20, "localizations": {"AYJUhwTgl0tvWir6": {"description": "4fqpyffEz0xbTHKA", "localExt": {"2YqU0FWbYOy7zpSe": {}, "yGBLauvijI1vUPcP": {}, "4XMNICniSwlnSYTu": {}}, "longDescription": "NVajwq9onI9NBO48", "title": "v6DUJRe1LpwuZIoL"}, "rVS0AcrY9Vdxzm1S": {"description": "nMFP7ijRI315PPta", "localExt": {"r2LEaQgwjgNbqY9S": {}, "XZMP793iEdDgNGO3": {}, "Dfmm8Q8A03ovBcVC": {}}, "longDescription": "nifE0YS9KhgP8rRh", "title": "ISjcIvS4I6tzdbpI"}, "KoQhtOlKvnpfkWv9": {"description": "kQ9FRDgAEVfEZshg", "localExt": {"oviRWdaswUzfV36H": {}, "wf7gG4iNZfEJ6PGv": {}, "sYDnaTT5U0e2LY7y": {}}, "longDescription": "B5EiqQhvZmCSswSP", "title": "GcfasR2Nrrm0JBGk"}}, "name": "T1hNjHr2icYZYjak"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'UpdateView' test.out

#- 305 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'KtgPfJHbuwF3aZQr' \
    'VPWyZpnVjbpotD8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'DeleteView' test.out

#- 306 QueryWallets
eval_tap 0 306 'QueryWallets # SKIP deprecated' test.out

#- 307 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 95, "expireAt": "1996-11-28T00:00:00Z", "metadata": {"XjMCSId4tDlI96Qj": {}, "oaq06aI2zoqmaPgd": {}, "CvQwz6hdCMrHgpPD": {}}, "origin": "Steam", "reason": "I2EGVDWs67zwXLLD", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "BfgrJcwR3qktAdH9", "userIds": ["benagh9kCPNSZTIl", "kM5IYJnbFprRWLjH", "4tziEpGVXsUvez1l"]}, {"creditRequest": {"amount": 87, "expireAt": "1992-03-10T00:00:00Z", "metadata": {"dtHZPKb8CPLdIk4I": {}, "9TU6FvvEdqHzEDtl": {}, "5oR9m1dm3fGK1wIN": {}}, "origin": "Oculus", "reason": "XieEOkn4KNYWbvsm", "source": "IAP"}, "currencyCode": "ojkvjtacFSVTvgh2", "userIds": ["Xk9qVrzEqsDwIwRy", "HKWspPtJlLDOjXTW", "3BGEa5ftmSBKQ3zA"]}, {"creditRequest": {"amount": 67, "expireAt": "1974-10-10T00:00:00Z", "metadata": {"KFmN851YX8ylpv3h": {}, "DDLL1n4On03mToMh": {}, "BjPD6aztTyMQghPW": {}}, "origin": "Xbox", "reason": "K1jNp3OwcrNR2jH7", "source": "REWARD"}, "currencyCode": "VbcvyxtTxuptcOYS", "userIds": ["Tj2AWA5f61ztkSpG", "Vxv9QtivQqeRyPor", "mf8BXosNylCwcf2i"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'BulkCredit' test.out

#- 308 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "hTuFn3W0qApZ98a9", "request": {"allowOverdraft": false, "amount": 36, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"PqUk0t9aquw2B2UV": {}, "IQMA6BOpxtYbmQwS": {}, "5kNxCPLeKM4cQl8D": {}}, "reason": "lY91SXBeHwrkPCaA"}, "userIds": ["rGWPVvOhMTdfTjLV", "ycmEvk3rVTLjZT9q", "ayJJtW8sqkuIBd1N"]}, {"currencyCode": "xzjyQsgv5n6Vn7Ti", "request": {"allowOverdraft": false, "amount": 93, "balanceOrigin": "IOS", "balanceSource": "OTHER", "metadata": {"c1Rzb4MCHH4aATHw": {}, "PTM0LfcjvOko7332": {}, "ZZa1YfuaQ7gPgiz2": {}}, "reason": "EBME5ikH5iUT9GB4"}, "userIds": ["M6RsYxtVcgA1q0sR", "bGcYzy0T6Q89155m", "85DcnV5fUvb2OK8s"]}, {"currencyCode": "cK4MyIy9F8aBXzn8", "request": {"allowOverdraft": true, "amount": 16, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"iMxQDIHnPin3vZc9": {}, "bUYgwdNmcpdldDn2": {}, "Y2l1kZWnqjJaGGTF": {}}, "reason": "aJHecFy9m5s6oIWM"}, "userIds": ["U2FbyIXierPr2qLK", "236tI7v0x9St2EFf", "nk88GXMrS82vN0N2"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'BulkDebit' test.out

#- 309 GetWallet
eval_tap 0 309 'GetWallet # SKIP deprecated' test.out

#- 310 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'BXRYt7v7Wfg2omS1' \
    '1YyIWGPc92PcmK9z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'SyncOrders' test.out

#- 311 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["TgGQs1FIKxCXUhNd", "J4cK7rz2VPJ8AZ9i", "1ml0sbgQ5zPZbllw"], "apiKey": "vt3TjGezRRUjCNiQ", "authoriseAsCapture": false, "blockedPaymentMethods": ["qt2UfrBE1JhOOdYF", "VxYR0XhaQ30cHb0r", "e0TJwuS3NPZi6h1n"], "clientKey": "N0txahdhp0tmV4jj", "dropInSettings": "IkC8lqpB9cbsDlre", "liveEndpointUrlPrefix": "KfjfpUz3jtg1bKaD", "merchantAccount": "BROm6TJ2qMul8cl5", "notificationHmacKey": "5U4RB2xVHiARcFLz", "notificationPassword": "OW7Uz8Gz5TN3bJ6U", "notificationUsername": "VKAdNp2ReRw5WPjo", "returnUrl": "hGmJKCjbEtFKLGvB", "settings": "QOS81LpIh5QqEOKQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'TestAdyenConfig' test.out

#- 312 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "XnUYMXvJJrO8K9yV", "privateKey": "aSV6MkQpPd0utGYD", "publicKey": "VGwpKCkOgcVrMw1D", "returnUrl": "AaC3oGYmbE9E87RT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestAliPayConfig' test.out

#- 313 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "Bvlu7lo1foXU28IE", "secretKey": "7EVvQkoqOZIFeJQS"}' \
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
    --body '{"clientID": "rnPscIMJRStF3LRa", "clientSecret": "7q49EdmhBpI13Mh9", "returnUrl": "tHYQilnHrNI7XsRC", "webHookId": "D3YOzMK1ZWOxnVMp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'TestPayPalConfig' test.out

#- 316 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["yEziAPi9dBg5J0me", "0BhvZVrOsZSqQjmd", "JGa6AahLvhIfKDFk"], "publishableKey": "uldV3vhNCAUQUVGJ", "secretKey": "TsED5tFgDMluY685", "webhookSecret": "drsUwaWMLdLGDjti"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfig' test.out

#- 317 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "rdqDck0QFovelKxd", "key": "Fe87vTbT1ykevWiI", "mchid": "oubexJQ22uV5cRj5", "returnUrl": "29cEGlYlBTFD4MBz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfig' test.out

#- 318 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "AgdtJfaktaCbkIOR", "flowCompletionUrl": "jbuZi76GDzksM1Iq", "merchantId": 71, "projectId": 61, "projectSecretKey": "G598WdAhvjsHqU3m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestXsollaConfig' test.out

#- 319 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'TbQzxkHXSiDFpwgj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'GetPaymentMerchantConfig' test.out

#- 320 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'tHkQyb5yoi3fhBKu' \
    --body '{"allowedPaymentMethods": ["tgKyddONrCA3C8Sv", "qUKqpSaqBWWsEePo", "Wos4O5MRxu5cYFtJ"], "apiKey": "ZeinW64n9q4asIfg", "authoriseAsCapture": true, "blockedPaymentMethods": ["qpRvHGYNAfvls7pb", "w9yPFofHSVjTbM9I", "HL2JcpnLuindE3Uc"], "clientKey": "g05FtWiuP1xyPeWo", "dropInSettings": "v5pJJdyu2TxbDTPk", "liveEndpointUrlPrefix": "ZkYfTO2Gg00JcXGa", "merchantAccount": "IUaL3FoA27eK2U3I", "notificationHmacKey": "HpgmmQaQj7hyQjWq", "notificationPassword": "zvHab6b9t7DWTaUG", "notificationUsername": "BJRTcrm3mIBuPZxq", "returnUrl": "lGGOe2VYsej3cSW6", "settings": "YWXMTlqVrGyQYDnb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdateAdyenConfig' test.out

#- 321 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'zj7Xg2lcvB7TOu2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestAdyenConfigById' test.out

#- 322 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'cuLwU5IJt4pAasYN' \
    --body '{"appId": "W28u3UZ3q6QdMAL9", "privateKey": "IC4460Wck2oK2mLw", "publicKey": "kxgJXK2OjNzQ95lc", "returnUrl": "eIy0lnTniV8j7XmR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'UpdateAliPayConfig' test.out

#- 323 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '8FUW42wLu5tQBUE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestAliPayConfigById' test.out

#- 324 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'k2mUvrQPFxSaRrDs' \
    --body '{"publicKey": "F1CKYcMJnrn1I3yp", "secretKey": "oEAwuriKcfEberKs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'UpdateCheckoutConfig' test.out

#- 325 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'mttvFw6Ev28mtO5i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestCheckoutConfigById' test.out

#- 326 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'sAId2vIIeRmFR2TQ' \
    --body '{"clientID": "2rE5Ugf8q6zX7Jc7", "clientSecret": "TK5xO3LzmzW8Oj3H", "returnUrl": "DRoKRr6ZZRLgp1dj", "webHookId": "Maw9o5TdLhB2mWrW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdatePayPalConfig' test.out

#- 327 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '0A29UflIqBalvCur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'TestPayPalConfigById' test.out

#- 328 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    '3yS6PcP3N8ee3aFS' \
    --body '{"allowedPaymentMethodTypes": ["yZkpxzyGW3kHAKNz", "H5cJ1x2IhHEQwW44", "r5yXnevZsdD9Iip7"], "publishableKey": "5t7Rgtj7pKnbtPAZ", "secretKey": "sNwKWlHT7wmvO6YD", "webhookSecret": "gQ4TLdkZgouTEi19"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'UpdateStripeConfig' test.out

#- 329 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'doNSCRrqi0F1FGxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'TestStripeConfigById' test.out

#- 330 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'rYszqB4U4xH3NpxE' \
    --body '{"appId": "EE1xE1teY5Ma16Sr", "key": "2B137kVZhkISgONg", "mchid": "rrElIGGV8sY9ZaFa", "returnUrl": "HBtEtzzbIbJ6nsmY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'UpdateWxPayConfig' test.out

#- 331 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'ALYAas29PBhKjKkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdateWxPayConfigCert' test.out

#- 332 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'DnEXVzzBDNoUXOIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'TestWxPayConfigById' test.out

#- 333 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'GhmAMgJu6c1uzCA6' \
    --body '{"apiKey": "57ulArgYuyjFEveR", "flowCompletionUrl": "vl0xjoSZYArBlpKX", "merchantId": 31, "projectId": 8, "projectSecretKey": "4T1DBdzzVbhZKnh9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpdateXsollaConfig' test.out

#- 334 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'FfHsuwhOtgOWtZuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'TestXsollaConfigById' test.out

#- 335 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'Ap0yxLpfWB0inH8x' \
    --body '{"device": "MOBILE", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' \
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
    --body '{"aggregate": "ADYEN", "namespace": "RlOGzgjnghEeYuTA", "region": "3fZ9naIn2EhpBnam", "sandboxTaxJarApiToken": "OqQfF1i9lDi17Tuz", "specials": ["WXPAY", "XSOLLA", "ADYEN"], "taxJarApiToken": "kfreVXF3F57a8i8F", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
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
    'QVq8F8UHFjnV4a8q' \
    --body '{"aggregate": "ADYEN", "namespace": "6h4G1JwgwqyIOpmN", "region": "MgpfDY1FR9rKaxaW", "sandboxTaxJarApiToken": "sCGgI79Hr331Yipw", "specials": ["XSOLLA", "XSOLLA", "ADYEN"], "taxJarApiToken": "c9FNs0rjVHzs9C25", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'UpdatePaymentProviderConfig' test.out

#- 342 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'DYIkGcoYjLN4VPTX' \
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
    --body '{"sandboxTaxJarApiToken": "zknDz9YRB0KErE7X", "taxJarApiToken": "XTkVsvdGlmWWA02n", "taxJarEnabled": true, "taxJarProductCodesMapping": {"JufSvoXGyr43yZ4v": "ipgYCZiVhuUlRF8b", "gS0Z3T7DC5TO5zuE": "OtCw7S3b8oIW8rdu", "VEpRjbhlZ8rATgmf": "iV8x6LtOu3SAtYQc"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'UpdatePaymentTaxConfig' test.out

#- 345 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'Z2M0m2eu4s6Vt77Z' \
    '7VYCzMbz1C3ZtjGu' \
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
    '9CxaM7nweO9MSckJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetCategory' test.out

#- 349 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'NZeDhfW7AVHVE6Ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetChildCategories' test.out

#- 350 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'mhtDUacOPwPczqMD' \
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
    'EPICGAMES' \
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
    'HucDPcorTkEhvJJB' \
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
    'HTf7gHQdNqoM8JpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetItemBySku' test.out

#- 357 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'KNAU33hDeba57ZY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetEstimatedPrice' test.out

#- 358 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'YNNrTcdcnzDvUHgR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicBulkGetItems' test.out

#- 359 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["2bX5lx9AjwbpWgnI", "zWRtzH2wWVwIlnX0", "PYoF43qdlpBadznE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicValidateItemPurchaseCondition' test.out

#- 360 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'opQjdlmCKky8f25O' \
    'S6EXRpHjQ4hViJ1Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicSearchItems' test.out

#- 361 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    '0GtE9ePlbHeBy2yY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicGetApp' test.out

#- 362 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'QJsEZNAnUcJCHbaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetItemDynamicData' test.out

#- 363 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    '8I2sFnR0i1EP6ekQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetItem' test.out

#- 364 GetPaymentCustomization
eval_tap 0 364 'GetPaymentCustomization # SKIP deprecated' test.out

#- 365 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "zrmDqC827Ayw8HdD", "paymentProvider": "ADYEN", "returnUrl": "OdsoaTqFhdLfBWZe", "ui": "RFQvrB1lsWaPGfJV", "zipCode": "Ula8UlMM4Cc3k5J2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetPaymentUrl' test.out

#- 366 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'qbHYNekyXLtDH1yp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetPaymentMethods' test.out

#- 367 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'F3hIsdFXbbaFfchj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetUnpaidPaymentOrder' test.out

#- 368 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'u2kAuottOSwo884a' \
    --body '{"token": "bNDjMPiZHxhFeo51"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'Pay' test.out

#- 369 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'XVDI8f5EWndhcek3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicCheckPaymentOrderPaidStatus' test.out

#- 370 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'ADYEN' \
    'ksygYZVyQIUbI6vW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GetPaymentPublicConfig' test.out

#- 371 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '6lvytcmR4QRN7ybL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetQRCode' test.out

#- 372 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    '3lT1Ois7OsTElVV8' \
    'XJ7Jg2JP8JKQ1Fia' \
    'CHECKOUT' \
    '2q1qbbj3sLmfYzDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicNormalizePaymentReturnUrl' test.out

#- 373 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'AVhXts4CdsniSJKr' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'GetPaymentTaxValue' test.out

#- 374 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '4BrdfV658ZBVGgxl' \
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
    'pGxhD9kKX2uBUIh1' \
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
    'pfP8bRBVoq807roC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 380 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'No3Qw4Z54sNMs82e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 381 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '3yxhkTFfQHB8O5ke' \
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
    --body '{"gameId": "34NGuMLQ7iPaGqel", "language": "OX", "region": "brPkW2foKqIz9z80"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'SyncTwitchDropsEntitlement' test.out

#- 384 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'ICxp4M7Opf9oRlvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetMyWallet' test.out

#- 385 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'sYj4IcbdUz2cBWKI' \
    --body '{"epicGamesJwtToken": "UuPLfvTFl9DbHQLY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'SyncEpicGameDLC' test.out

#- 386 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'WCwsAVcQ0VGEUxlc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SyncOculusDLC' test.out

#- 387 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'NQWOpRLETWMAv0uJ' \
    --body '{"serviceLabel": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicSyncPsnDlcInventory' test.out

#- 388 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    '0L51TxrdknW52x2o' \
    --body '{"serviceLabels": [42, 51, 69]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 389 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'DO6bwcKYeFoxUWdv' \
    --body '{"appId": "EBTwUyzq5bzdNEHv", "steamId": "6GmaokUOIadEDAmp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'SyncSteamDLC' test.out

#- 390 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    '524IRplmKcwvGguz' \
    --body '{"xstsToken": "7SAcGvV4lCJgcrAu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'SyncXboxDLC' test.out

#- 391 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    't2gYpuKbE8ulWHoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicQueryUserEntitlements' test.out

#- 392 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    '1zC1K7oT3iNe5yhZ' \
    'bqmAgI6LUauh1GlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserAppEntitlementByAppId' test.out

#- 393 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'o4faeHIeXSROEb0i' \
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
    'ef9mtXHbh3agt9HQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicExistsAnyUserActiveEntitlement' test.out

#- 397 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'KHNhlzYRtA24gRvv' \
    '870jG3e6kpEZmtrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 398 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'zaLfufFoH0vIAAZ3' \
    'D07rENh4LQyLj7Qm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 399 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'X1ijJDLqjyW5nSpi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 400 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '08dnnmoWGbDOWBzf' \
    'lDPp8sE7bcL6xy49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 401 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'IPWxqs6jAQJWL8Yc' \
    '3AKtQffBJPNo4VIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserEntitlement' test.out

#- 402 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'CxIBQt7BEsLhZnLr' \
    'MlvvXDmz8vDIkHRM' \
    --body '{"options": ["j2pIYdQhOINS631e", "YxKFwpR5ukyHmVB2", "oTqRWbK0ubDt08F3"], "requestId": "Ptynki71NZANUG3X", "useCount": 50}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicConsumeUserEntitlement' test.out

#- 403 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'k3eUIeGfzqhOBhMJ' \
    '8BCR0Pr4lUceWJid' \
    --body '{"requestId": "PUCDHoZPOFJliGQw", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicSellUserEntitlement' test.out

#- 404 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'Efr25k1H2s4V2KN0' \
    --body '{"code": "PLlR8cmHo3XR1Gqc", "language": "WTLg-284", "region": "jL304sV2h9pg3yvd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicRedeemCode' test.out

#- 405 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '9MZqnUseNuEx7YDE' \
    --body '{"excludeOldTransactions": false, "language": "DUgu_bVbG", "productId": "q6LMyqmJBIayJYIY", "receiptData": "PCQLT4UtcQmxMnH6", "region": "08ZzCha8xLBGlN6G", "transactionId": "GKXlt1XAswrMMjtu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicFulfillAppleIAPItem' test.out

#- 406 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'fusABAiEcZPc54Zo' \
    --body '{"epicGamesJwtToken": "DD56c8ZJFga6qXT5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'SyncEpicGamesInventory' test.out

#- 407 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '6186aDmZpx6FpqFA' \
    --body '{"autoAck": false, "language": "mrJg_SYgR_FV", "orderId": "8QPR4rrBu0xMLSZM", "packageName": "2reG0eUsKe4gH8U0", "productId": "4S5FCpmYeCJwMPHx", "purchaseTime": 54, "purchaseToken": "qbq2es6TWDRr2bTP", "region": "UxXfvsOwNGBX5w0C"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicFulfillGoogleIAPItem' test.out

#- 408 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'KM4KgSaTFkYqyDBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'SyncOculusConsumableEntitlements' test.out

#- 409 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'eKhVWlgMI2a4HuuQ' \
    --body '{"currencyCode": "iMf3ZtSRaKTvnYQc", "price": 0.6845096479951799, "productId": "K3OLU5xNeaLjRoNM", "serviceLabel": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicReconcilePlayStationStore' test.out

#- 410 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'Z7MQ0xXiAUp37WFZ' \
    --body '{"currencyCode": "G1bPREFnLFvdjVz0", "price": 0.0281142707254034, "productId": "F4f5a8wwsXbVcGQF", "serviceLabels": [24, 69, 5]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 411 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'BmznrLziwCnnibCj' \
    --body '{"appId": "n2uxoSkuKry9iZZv", "currencyCode": "treyTjGpaUSGjv2A", "language": "Bm", "price": 0.0621804040460453, "productId": "usCtKYo61c23RG7T", "region": "7E4yKJUPzM18zamm", "steamId": "JN39lhBPiRxSSC36"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'SyncSteamInventory' test.out

#- 412 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    '9UVGTnts7qK33YCs' \
    --body '{"gameId": "De0la83cvnj5Ut4Y", "language": "IXFj-AcZn-632", "region": "FMVlAhaDsIMEFd3S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'SyncTwitchDropsEntitlement1' test.out

#- 413 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'DQ0zyrZOMqd75oCp' \
    --body '{"currencyCode": "2u2A2ZLrkeWbmcgf", "price": 0.25607170878080576, "productId": "lQTNIZctTysFM89B", "xstsToken": "CAF2MVozVctDaMus"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'SyncXboxInventory' test.out

#- 414 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    '5bsovjmmxHjjlquE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserOrders' test.out

#- 415 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'SAZpAC3MEgBrVUoM' \
    --body '{"currencyCode": "CPYZARtb3TsS5jOB", "discountedPrice": 89, "ext": {"jAyU8thUL0rK6YlD": {}, "gS7DF6WHO4xKI3Dz": {}, "XlqZ97UEX77J2ZaC": {}}, "itemId": "gl5zfvvm60VIJWtA", "language": "uJp_xdkM_nS", "price": 51, "quantity": 75, "region": "B9JEYLPl0Rjsq0yR", "returnUrl": "uQRarSVoIleZ7Ptb", "sectionId": "bcriinQEr7oILTom"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateUserOrder' test.out

#- 416 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'zVEdqAFGjuRaB4cc' \
    'MpIH8Lan5Ny9rMiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserOrder' test.out

#- 417 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    '8seoTU64hQTXu9Mi' \
    'xCLkCkF4GsByu7cc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicCancelUserOrder' test.out

#- 418 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'qHPLY7ScjfHWvp5y' \
    'xoHDN8wbZhTBvAeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetUserOrderHistories' test.out

#- 419 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'GP8MEJHjkHXgaYcr' \
    'I47DABOUyTgLqcqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicDownloadUserOrderReceipt' test.out

#- 420 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'j25jcDQ7S4nZymFu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetPaymentAccounts' test.out

#- 421 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '9HDayb3pUN53xwUD' \
    'card' \
    '23II0TEDjWcIzfsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicDeletePaymentAccount' test.out

#- 422 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'rF9JBbs3ioKOVcrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicListActiveSections' test.out

#- 423 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'hki2j4K5qHkvYSU2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicQueryUserSubscriptions' test.out

#- 424 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'i8wpPg4f6CytNOpT' \
    --body '{"currencyCode": "cy8nFxnyUhq8QCAC", "itemId": "dn9QBrEBZ0FGcSF0", "language": "wn-GqgP", "region": "lqmdu4KlKLptx5DK", "returnUrl": "FWYNaRNbzpFsjJLs", "source": "zOiHFs5xAVg39H5h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicSubscribeSubscription' test.out

#- 425 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'noP20tlphew85KPy' \
    'j4EGRMQTeDUODYJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 426 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'L3GEb7CgXWeXJrzN' \
    'rt0fkjelr7hVgkvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserSubscription' test.out

#- 427 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'dto2PuC14Lu2G4Mw' \
    '4Mo4TirGDZ6OUYrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicChangeSubscriptionBillingAccount' test.out

#- 428 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '6N5BjG6bELZwjEmK' \
    'gZXlgbV3dBwrK8hp' \
    --body '{"immediate": false, "reason": "ezU2RemXA27tg6by"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicCancelSubscription' test.out

#- 429 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'pXmwZRpU8Qcrmp46' \
    'NHHKuQExWorl4PYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 429 'PublicGetUserSubscriptionBillingHistories' test.out

#- 430 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'J1GJKlZ26mxx5rFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicListViews' test.out

#- 431 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'CDjFeol1Ra8c5c3F' \
    '5otSicHNAFf6XoFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGetWallet' test.out

#- 432 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'TyGzUy7Gy3lIbJD3' \
    'ko0KsF8jqH84W95Y' \
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
    'Mkpzkat1qYXphVMs' \
    --body '{"itemIds": ["bw6Rv3XZ4XgIfTmv", "ZDu1OaoVmtgO5YP5", "6VohkMQrBSOet1Ec"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'ExportStore1' test.out

#- 436 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'W3bKxXuYOn0ULO8b' \
    --body '{"entitlementOrigin": "Other", "metadata": {"2uFpz174OkRp3Bkd": {}, "VbqgNrZPytIR58rT": {}, "LNpt4RpqpKk9toEL": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "S24cMw2Lh6XTFr1d", "namespace": "0v5MiCVrY2QOMJmN"}, "item": {"itemId": "bAv9VCU7hdDbGzcJ", "itemSku": "Ka1wsM434xCGXTsh", "itemType": "5xydeZADSKQFv0tn"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "5L7Nwx1i8sHEbX4m", "namespace": "IdomBVyorRK73vbW"}, "item": {"itemId": "SNBzkiEHyJEOg3iI", "itemSku": "jU3AAg7WG2eTsmDa", "itemType": "Tzm1iyRQNy7RFRXu"}, "quantity": 52, "type": "CURRENCY"}, {"currency": {"currencyCode": "S7oKchq3HFDAp8sn", "namespace": "TqP81J1c6C2wvWDh"}, "item": {"itemId": "sYWwX5hKxgCMD1qR", "itemSku": "yNe4g5DSTBpRPaWH", "itemType": "EoCnndVYqgBPmwdN"}, "quantity": 28, "type": "ITEM"}], "source": "OTHER", "transactionId": "VP1MHJQhmZHHktlL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
