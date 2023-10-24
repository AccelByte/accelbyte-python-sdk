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
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-04-22T00:00:00Z", "grantedCode": "8J1nsv4W2OJhtafx", "itemId": "MSJlHeb34sZKHcl5", "itemNamespace": "LLLOexL4fZvWtND2", "language": "eCh_ozqf", "quantity": 45, "region": "NtFEJ7tnkY6Mca5a", "source": "GIFT", "startDate": "1978-03-17T00:00:00Z", "storeId": "zhLVA3kE8jKvgatO"}, {"endDate": "1986-08-14T00:00:00Z", "grantedCode": "OXudXgNne8kJATwl", "itemId": "c6esUp6Sw1I98jeZ", "itemNamespace": "Q7hfxnhLd3Knakno", "language": "GD_nT", "quantity": 84, "region": "wVJnNnN7kAa7j0ri", "source": "REWARD", "startDate": "1979-01-18T00:00:00Z", "storeId": "AdNJOIG36I6tRbRc"}, {"endDate": "1979-08-29T00:00:00Z", "grantedCode": "EveMdAdiPKDUVSC0", "itemId": "0PYeDcagginxnFIn", "itemNamespace": "a3yddcbsPheTH26I", "language": "Jkio-VahH-867", "quantity": 42, "region": "PrIfapq5AAeMe4L3", "source": "OTHER", "startDate": "1974-09-05T00:00:00Z", "storeId": "WgU4pCAKxeE70Cau"}], "userIds": ["8GEXFTlEMEsFzYqw", "nQNxot371W9G4AvQ", "kqsGnmyo5JJTUVmb"]}' --login_with_auth "Bearer foo"
platform-revoke-entitlements --body '["gK1Np5nodqpLm7Fh", "JBNXzAFdO0Khqf6k", "iTdSGv2LFjAKY7Cb"]' --login_with_auth "Bearer foo"
platform-get-entitlement 'gsWqFWZX7kPBom8F' --login_with_auth "Bearer foo"
platform-query-fulfillment-histories --login_with_auth "Bearer foo"
platform-query-iap-clawback-history --login_with_auth "Bearer foo"
platform-mock-play-station-stream-event --body '{"body": {"account": "9GLLTG8phc3n4iLo", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 71, "clientTransactionId": "G9YI89hmguB8FOTj"}, {"amountConsumed": 79, "clientTransactionId": "RaoQomSJC4DdrKF7"}, {"amountConsumed": 91, "clientTransactionId": "VTBcrM8rG0rH0zcs"}], "entitlementId": "wwVeMK6MbGIVIu8v", "usageCount": 44}, {"clientTransaction": [{"amountConsumed": 39, "clientTransactionId": "wLc7KY3uVoJXTIMt"}, {"amountConsumed": 31, "clientTransactionId": "F8ZrQzP4zvtdxdbZ"}, {"amountConsumed": 95, "clientTransactionId": "xbWCYzo8yO2KTK9t"}], "entitlementId": "mmOnYnOpas6ghP1y", "usageCount": 79}, {"clientTransaction": [{"amountConsumed": 16, "clientTransactionId": "IlsHqffnrfsGlfPa"}, {"amountConsumed": 14, "clientTransactionId": "KBwa3Ddb60ufPpzw"}, {"amountConsumed": 18, "clientTransactionId": "rWdTYCfHkIySok5D"}], "entitlementId": "iXZtLW87rGysryod", "usageCount": 7}], "purpose": "X3viLvtEk4mTIpUA"}, "originalTitleName": "9gxo8SV38nEhoXmM", "paymentProductSKU": "2W7l6jHMA2rG3nak", "purchaseDate": "opAywelu01nryEJ0", "sourceOrderItemId": "NqoTow0qiOiC4j0i", "titleName": "ktm0ZPLkLOsp0LZ5"}, "eventDomain": "njN86Hl8kUXzt6bS", "eventSource": "c6bWvgpVyW9dD1kO", "eventType": "mvrAejcq2LgkQuaS", "eventVersion": 54, "id": "RBx3vim02jBOxrZD", "timestamp": "yvpcLYOWA8NjxOna"}' --login_with_auth "Bearer foo"
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
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["3xe5rruJVfLGea0Z", "6nEwnZhsjwJeGwaP", "SDMZz95OYKiqaZD6"], "flexible": true, "images": [{"as": "s7ACC1RgBfoNrHlF", "caption": "i2qJLgmBLE35Yhyi", "height": 61, "imageUrl": "0TQNEI3kfabxJWWS", "smallImageUrl": "I1ECUo1NPpeFhUzt", "width": 14}, {"as": "DgB7n4C97uAPP8PA", "caption": "TLpUpxeJlsBJT6Hh", "height": 83, "imageUrl": "W9nBhvhf8Q0DtJMc", "smallImageUrl": "YQdN66bswAgt65X4", "width": 80}, {"as": "HKWW4fI1IQcoBQEL", "caption": "cNlZkqTZrKgXNwvm", "height": 9, "imageUrl": "aWsQJtRYoagRJK5P", "smallImageUrl": "X9UcOvhPyE11TRT2", "width": 91}], "itemIds": ["B28MpusuhhDJ5slz", "giWZEtyd56LfxnbY", "97jjYgXchCbkXX26"], "itemQty": {"uEdCfQaMAQuTKfC0": 71, "d9yOfIMLds2DbPca": 30, "3DhqciwIeShF9RKb": 9}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"vxuJlhXbWhbwPwTo": {"description": "C6knjVwVnzaqSfJi", "localExt": {"QFC2gXoda0kg16yU": {}, "SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}}, "longDescription": "ByfHZinxNfgPAwkM", "title": "BsznlBUqnLT4AbGp"}, "tKaWNvPbpg7yrRvX": {"description": "fZ6rvgvEY3Hht1Sw", "localExt": {"qTsKKKo37NHDOQe9": {}, "1Ps3ztUIV0dS6hIH": {}, "9c4VfkyrwpuXxbaE": {}}, "longDescription": "RbfgPmi0eHkt1mr9", "title": "EOIFg0dnWIYN2NVL"}, "70Iw157g00jr9b8M": {"description": "uYmmeKTmBNvGYxEQ", "localExt": {"df3ewoGGoY7xmFNA": {}, "mjDDCvs78mcMdiS7": {}, "6YApGJ9ufwLYkqIg": {}}, "longDescription": "LuZS6hsQryiEtOAb", "title": "peUNf26UqkCfgCUY"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 28, "endDate": "1980-06-25T00:00:00Z", "itemId": "xaOBdPF0JmX8qwU1", "itemSku": "cTuHHPB5S3DvPRCz", "itemType": "BrVUxmDOj3cvRFaT"}, {"count": 59, "duration": 15, "endDate": "1998-04-01T00:00:00Z", "itemId": "1W0TGTCm4fZWuk6p", "itemSku": "QxDQpKqxLGeMvr9T", "itemType": "svcMQ7dBsaIecRxI"}, {"count": 38, "duration": 28, "endDate": "1997-06-22T00:00:00Z", "itemId": "SHiWxF0YbuU5ar5q", "itemSku": "TLWUCy0Afgc050XI", "itemType": "ZRW491e94mQjVOOB"}], "name": "nIWhunElqZUodp3I", "odds": 0.12173679964673378, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 58, "duration": 92, "endDate": "1988-12-03T00:00:00Z", "itemId": "y1ei1fIrPvfHnRN0", "itemSku": "6EjRwEQlNapJRfk4", "itemType": "f9Zcw1pEHAyNFxcV"}, {"count": 93, "duration": 74, "endDate": "1978-06-22T00:00:00Z", "itemId": "uMybYGxD9IPmmsLm", "itemSku": "u3kaPj0O4zd8Tb7c", "itemType": "UNGPTBxiFFCrn7dj"}, {"count": 18, "duration": 19, "endDate": "1980-04-03T00:00:00Z", "itemId": "69FTFVGUVhvKhJCm", "itemSku": "eisql14mUHVbMPim", "itemType": "NhcZsU3VAdMDcb4q"}], "name": "lkiFAamqvZI2Kwjq", "odds": 0.6656977665959348, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 18, "duration": 27, "endDate": "1995-11-05T00:00:00Z", "itemId": "Xade41s3rH34mB2y", "itemSku": "PlRpWjmHZAAvKTH8", "itemType": "MuqIg0CzkguwuJCW"}, {"count": 54, "duration": 62, "endDate": "1982-09-03T00:00:00Z", "itemId": "xSvNDlmM5nQFMGzs", "itemSku": "7fzjgyc44mEh9tRk", "itemType": "8knYSV30lnroQehM"}, {"count": 61, "duration": 1, "endDate": "1977-02-03T00:00:00Z", "itemId": "i6t9unQLYXxm09wp", "itemSku": "GAbpEmDY9vLh3u6E", "itemType": "DsUmrV6kH4OotKwG"}], "name": "3UC6XCnnZxF8CmQr", "odds": 0.8659005870062143, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 21, "name": "br34rBBN9tU6TDm5", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 61, "endDate": "1976-05-01T00:00:00Z", "itemId": "MDu87t0ldWf7iSGI", "itemSku": "iKFtWtn4Yr2svKM6", "itemType": "pqLGZ0TBujELAUK6"}, {"count": 25, "duration": 62, "endDate": "1992-04-01T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 4, "fixedTrialCycles": 4, "graceDays": 44}, "regionData": {"cA8wvLsWUNd6lPKv": [{"currencyCode": "qDejvqklTSvDwuOr", "currencyNamespace": "P9lzpiX0VuFpZum7", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["5IQYBQuxLvPuWYvE", "kHBDdSzBXdxapwhd", "E8SohhhuiTnJarYY"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
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
platform-update-item 'X8DD4MYXlrJ81lHv' 'v9rqvEoM8YmVjAkO' --body '{"appId": "3HKsEp6KlqwW4djr", "appType": "DEMO", "baseAppId": "M7tuL81lsR7xxSVp", "boothName": "3Gd2TK0HzYviTgYm", "categoryPath": "x82JVBRLPZ6Iz8tn", "clazz": "e5dbguBF6Gsvvdl8", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"z9x7XZIjU4IK9lOL": {}, "aZaMphKCqTq3EVhe": {}, "JjoEEXBLIxGnNuho": {}}, "features": ["EdqQpoGkUWNizk5U", "JM3WWPvvCiCf33Vi", "cPAGv6c1ESC6hZYT"], "flexible": true, "images": [{"as": "bzf5aANNNs5kgSZZ", "caption": "NUHbIT9szApmWJO5", "height": 45, "imageUrl": "Zn1YXj5zFZeOCOR9", "smallImageUrl": "NvBQZSJPOIKrRBrY", "width": 98}, {"as": "fa2LrnpZxNnLRH36", "caption": "bqS2oFY76PU1AziB", "height": 82, "imageUrl": "sys6GdkDcos5uVJ0", "smallImageUrl": "BJfZ0jvA54CSqZFD", "width": 39}, {"as": "3by2kYSCdnFKLc0x", "caption": "cTjqjdcEfU61OJYM", "height": 26, "imageUrl": "PKVSZCg3XTc9vQe0", "smallImageUrl": "dHJfF6KIuvnRCa9J", "width": 22}], "itemIds": ["lhe98oaFKlQicdrx", "VhrtwSd9QWVMYz7T", "U1TsxsChSclSkb5a"], "itemQty": {"Bi9K9zyv6gFZXI5n": 72, "JgjC56pda3YhtQxp": 58, "dIn7QqXBDXJcrqKm": 60}, "itemType": "EXTENSION", "listable": true, "localizations": {"xoLnWGP1PafIjLX8": {"description": "ce0KbNN7Ycl2JfmQ", "localExt": {"plvGjVQ4aebjfgGu": {}, "472oWJlfglLM4xjf": {}, "kNL4lU6jaGfsD1cf": {}}, "longDescription": "swmeFpvtDtetoQVF", "title": "L8LNW11vtpaTxi7k"}, "489jRCn48bvkCPfK": {"description": "ofwXOIZZQAJza84l", "localExt": {"KKmVOaTS6xBbNrSU": {}, "AW2ak7ISDrBVg6Nu": {}, "DZvPb1kuUfNfUDe4": {}}, "longDescription": "g7q6PHEaqbzHvDDl", "title": "1jiLw3XMGBA6JXDp"}, "A1tIC45C0oaGouFu": {"description": "4hXONgUwJnUpryDe", "localExt": {"RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}, "QcFo9gxOgvDc7xMr": {}}, "longDescription": "RKvw8ISP2WKmCRRX", "title": "BxlalCHtWlKxLpS8"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 76, "endDate": "1982-04-30T00:00:00Z", "itemId": "guycGiq9j2EyIknf", "itemSku": "LDpgHnMOn8nc3gUZ", "itemType": "8ZFyyEr0KBXuJBqK"}, {"count": 87, "duration": 79, "endDate": "1981-09-07T00:00:00Z", "itemId": "8uux9xBomQFPFWy5", "itemSku": "cwNPI6aFo0MVwDZC", "itemType": "IXFNEL3uWVRz3V7Y"}, {"count": 2, "duration": 80, "endDate": "1989-04-03T00:00:00Z", "itemId": "M3bNLWHAbCZixe2c", "itemSku": "Q6O30lpzcBQMAEcN", "itemType": "cJqrKxnMzSYoc4Zj"}], "name": "iMY4H34B6wVd8ipc", "odds": 0.5899514335296582, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 70, "duration": 88, "endDate": "1971-02-10T00:00:00Z", "itemId": "rryHB6GO9zP3Faep", "itemSku": "A3b3YJ9nJM6vtT27", "itemType": "xv85K5MU2qmbeqaV"}, {"count": 8, "duration": 48, "endDate": "1977-12-12T00:00:00Z", "itemId": "INdClpF7OvlBIEgj", "itemSku": "se5kd6GEDo08yq5E", "itemType": "5HleLoog4me2NBFp"}, {"count": 39, "duration": 47, "endDate": "1987-04-05T00:00:00Z", "itemId": "3j9LYdG7xVPqBqe9", "itemSku": "RDQMBSYAFLqp8PF5", "itemType": "hCcoukWpnbz4ys7j"}], "name": "6lxuU3u2HEG0qfKe", "odds": 0.10766913434660086, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 93, "endDate": "1986-07-21T00:00:00Z", "itemId": "sPykS8YLmwtYgWGc", "itemSku": "A0h4G1LZ1HaX5UBM", "itemType": "bsF44VTsLDRzdq22"}, {"count": 5, "duration": 2, "endDate": "1985-04-21T00:00:00Z", "itemId": "F2g7TVtzYEHUodh3", "itemSku": "iUfBthbepUCTWiZ1", "itemType": "uqh7GAi4FEIu44u8"}, {"count": 45, "duration": 77, "endDate": "1999-12-23T00:00:00Z", "itemId": "4ouSgkpK70uJmUL0", "itemSku": "uzElixc023dIvDiA", "itemType": "0tQWlHwBcTtztx3V"}], "name": "Al6tXFbnATCzUOIz", "odds": 0.7622020736079372, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 22, "name": "CZ4AELr5lraa5v5P", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 58, "endDate": "1981-03-18T00:00:00Z", "itemId": "Je32AiwKadEoIVmp", "itemSku": "rwPsa9YD92CX0rIT", "itemType": "ajpwHITGeHTnqRbz"}, {"count": 56, "duration": 91, "endDate": "1985-07-11T00:00:00Z", "itemId": "9ZFgJbQ3Fj1umx4I", "itemSku": "tzkMJ7cudf4r916G", "itemType": "Prhn2etVIQvRkQJA"}, {"count": 39, "duration": 61, "endDate": "1998-09-30T00:00:00Z", "itemId": "4ooQ980ywmg1pWpW", "itemSku": "it1QC7FKe0fnHUlm", "itemType": "U1unGKM0tgfeWy47"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 46, "graceDays": 44}, "regionData": {"MI4gGmvK9gW596Fw": [{"currencyCode": "BNrFXt3TAuKBwBcD", "currencyNamespace": "12ae6r3hHwya4Npd", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-10-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-08-05T00:00:00Z", "expireAt": "1979-08-30T00:00:00Z", "price": 41, "purchaseAt": "1976-01-19T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Hf7dbh2iKNUl0qJq", "currencyNamespace": "zoKMRMG541PAiNjU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "expireAt": "1994-10-28T00:00:00Z", "price": 22, "purchaseAt": "1991-01-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "LMUaDSwwQlnNRZJH", "currencyNamespace": "BSB4fZWEFIZs28Ff", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "expireAt": "1996-12-28T00:00:00Z", "price": 21, "purchaseAt": "1973-06-09T00:00:00Z", "trialPrice": 49}], "f4lhBPbarbWEm8bV": [{"currencyCode": "tZcfVCPdQhim9QKU", "currencyNamespace": "AFTVYelIlGJg9wdc", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "expireAt": "1979-12-25T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}], "o8TWwXWsz9TVmdMK": [{"currencyCode": "EohKzuMYDUTLBeCi", "currencyNamespace": "dXjuGgx8ncXejmeZ", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-03-23T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 24, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "meTrT7cF9oVCh89w", "currencyNamespace": "NOkKYssVejcL3kR3", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-05-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1998-02-13T00:00:00Z", "price": 60, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GAYOHR5BWa9VzIka", "currencyNamespace": "QEl1iUProNB6hI6I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-08-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 14, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "vdRhG9NwV3zDuqVl", "price": 98}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "pcYPK8IxrSZuxWl0", "stackable": false, "status": "ACTIVE", "tags": ["nPS2urJqerobWMZG", "VL5KLTxahWlS6XdB", "4fJIyFAm3DQht4Jw"], "targetCurrencyCode": "aKSLCgOOPXM6XTUh", "targetNamespace": "2dJ90yqHDNacl4F9", "thumbnailUrl": "G6Dl5TFwBY6HKXAb", "useCount": 23}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'rh54CWbYb0Pebyt8' 'b4DGscjwrizsFUgY' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "xHnmSxvkG9UR5q9n", "predicateType": "EntitlementPredicate", "value": "TBjn3d2sFzMS3QaV", "values": ["277Ivjj1A647XQ3k", "jZF7Ax6115Kg9U8v", "rQJXQxoIbVi2CLEk"]}, {"anyOf": 29, "comparison": "excludes", "name": "KMavu4Ul2IaieEbP", "predicateType": "SeasonTierPredicate", "value": "bojDVaZLpx4kEWYk", "values": ["hmWKSSrF35anDGvu", "r19V18oIrUKXttgA", "O6KrKUMhJrASBh61"]}, {"anyOf": 71, "comparison": "includes", "name": "2QdWJFLmoPEgd8EM", "predicateType": "SeasonPassPredicate", "value": "f2HEHvVevhISjbtB", "values": ["TIedV3HyoX4VnO2L", "OU2V9yw94oa8UJ34", "JUK5fE3OufPSX3Pd"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "isNot", "name": "DNp1SZ58aDllwzTR", "predicateType": "SeasonTierPredicate", "value": "gUSMM5au8GJT0mkV", "values": ["17UDb19R6H7r1ta3", "cXXTUIggoH89QNmI", "PI6zUtf3QaJPGrTN"]}, {"anyOf": 25, "comparison": "excludes", "name": "7jK5pxe82pgFiAS6", "predicateType": "EntitlementPredicate", "value": "KxbS7Q2OgRucL1jw", "values": ["me06c6SKLc2mEC3I", "Xl5XCbkOfHaGr5kd", "RXzfjDZZBmOau6sy"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "tvmMB6jzrpRGESmo", "predicateType": "EntitlementPredicate", "value": "XPMqxj4hBgVY3YAx", "values": ["woJcaRMEb15LBlTV", "ZLKbcOdyjqf6Q4oi", "ufc5ZyODR2NVyn4P"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "includes", "name": "TTD81xhNP4t6kYBU", "predicateType": "EntitlementPredicate", "value": "iSNV4qBrt1kcLmRv", "values": ["6EJtl5xWnsb8oWq9", "4RImNWVIJnhhwFDV", "1VitaomvWTzdsW4N"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "cY1HgAnZV4IOglVL", "predicateType": "SeasonPassPredicate", "value": "Yc481dYdvGxJAMDR", "values": ["VBCV9qJhWva2FPBu", "jX0geYCpGJM4sqsP", "A1LF7jdWlekFwO94"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "MiZXXOFwmGWAvNF0", "predicateType": "EntitlementPredicate", "value": "GkwxUNYyNwGiKrkn", "values": ["OadpgegCUjTdi1Eh", "H0Y5mrQgLC6D2qsF", "iQHglUQMZi5WjMZf"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-get-platform-wallet-config 'Epic' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Playstation' --body '{"allowedBalanceOrigins": ["System", "Other", "IOS"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'Xbox' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": false, "strategy": "ALWAYS_REVOKE"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "qeUB7RSayqGFguhh"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "B19VE838c7OydVw0"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "9rW8i8krFWJhe03c", "eventTopic": "oRFok5d3AyGrZO8G", "maxAwarded": 42, "maxAwardedPerUser": 79, "namespaceExpression": "oXNSoVEBG7VbBPUW", "rewardCode": "ipz9C05YabFX4FCK", "rewardConditions": [{"condition": "5ucTFsAFzaO3yJpA", "conditionName": "3KMxBlrRytER1qdT", "eventName": "elFAadM9y66Drf4S", "rewardItems": [{"duration": 91, "endDate": "1986-09-23T00:00:00Z", "itemId": "lgC2nzS9SiGUjVAw", "quantity": 86}, {"duration": 44, "endDate": "1998-10-26T00:00:00Z", "itemId": "q6JRHcn7KaoCEkRd", "quantity": 30}, {"duration": 68, "endDate": "1980-05-14T00:00:00Z", "itemId": "HncR5dShqiBUI9es", "quantity": 91}]}, {"condition": "0vqsL9SomqWsGA76", "conditionName": "yxi0QzZWfmP2sx0K", "eventName": "O5bEJaPnAFjsodyJ", "rewardItems": [{"duration": 87, "endDate": "1992-09-06T00:00:00Z", "itemId": "VBrShGbIIuqK8C40", "quantity": 23}, {"duration": 70, "endDate": "1979-02-21T00:00:00Z", "itemId": "shF9Rh2o7GCQGPCx", "quantity": 46}, {"duration": 93, "endDate": "1986-01-26T00:00:00Z", "itemId": "QHK30EX0FclpDl5H", "quantity": 38}]}, {"condition": "ISArROIodcmM6v2A", "conditionName": "EozWWaYvBLE46bpu", "eventName": "Jip8JyxJ39vrtuWW", "rewardItems": [{"duration": 36, "endDate": "1998-05-10T00:00:00Z", "itemId": "yA7U7dGMjupZkZQY", "quantity": 52}, {"duration": 59, "endDate": "1976-11-24T00:00:00Z", "itemId": "33J34fiTxK63OHpn", "quantity": 95}, {"duration": 62, "endDate": "1985-09-23T00:00:00Z", "itemId": "30YWSgxpKWtdtdtV", "quantity": 99}]}], "userIdExpression": "cb2o1J5euLAbBgej"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'ig8Jg5VByeI3ycMc' --login_with_auth "Bearer foo"
platform-update-reward 'YYBixKJXCISQdwec' --body '{"description": "1m8BusV9tUh74KVo", "eventTopic": "6Xqjz2xUKLNWSmYy", "maxAwarded": 97, "maxAwardedPerUser": 65, "namespaceExpression": "vyelIJ8QgaLMqi83", "rewardCode": "6ULa7cfZl4VuY6rs", "rewardConditions": [{"condition": "Zyo6CBRRnoOikIxX", "conditionName": "KKIR6kPmswm5TCAU", "eventName": "1cKApdJDnE73GLmS", "rewardItems": [{"duration": 35, "endDate": "1977-03-30T00:00:00Z", "itemId": "s5owBhoUg4LsGP6K", "quantity": 78}, {"duration": 31, "endDate": "1992-08-15T00:00:00Z", "itemId": "XkvUv2XiXaBzsmax", "quantity": 20}, {"duration": 9, "endDate": "1994-09-26T00:00:00Z", "itemId": "ZPlLitytGka7Kv5T", "quantity": 1}]}, {"condition": "OZ0b2p3b63KrcwIc", "conditionName": "XMhGy83Xit6boOLG", "eventName": "Ccg16DqwdQPQ9HkS", "rewardItems": [{"duration": 92, "endDate": "1997-01-28T00:00:00Z", "itemId": "IwncZPk82GF3eTC0", "quantity": 44}, {"duration": 70, "endDate": "1984-11-18T00:00:00Z", "itemId": "ZUDj9dzGgGVxo9OH", "quantity": 14}, {"duration": 87, "endDate": "1973-09-11T00:00:00Z", "itemId": "HumyfuBNisecYbcO", "quantity": 32}]}, {"condition": "JfuBs1Vpqn47GVgh", "conditionName": "TH2wToOnq9U5lyW8", "eventName": "9Xwt3wmRTrDCjhnK", "rewardItems": [{"duration": 43, "endDate": "1971-06-03T00:00:00Z", "itemId": "brmgjhWK0x0ZidAJ", "quantity": 58}, {"duration": 34, "endDate": "1994-06-09T00:00:00Z", "itemId": "eD1La16Bw3JbUnUD", "quantity": 15}, {"duration": 19, "endDate": "1993-07-13T00:00:00Z", "itemId": "YldcTpdeCD9XPRi4", "quantity": 3}]}], "userIdExpression": "6Z7rb21A2E9pX0BW"}' --login_with_auth "Bearer foo"
platform-delete-reward 'CMqPsRk5htdM5T3f' --login_with_auth "Bearer foo"
platform-check-event-condition 'DSrSHrkoqv2mM6so' --body '{"payload": {"MaTvQq2a9YdFNtRV": {}, "SO0js0hG9xmSnzd7": {}, "zgUxAogcnGkXk17Q": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record 'PkJHRhmLKQuQVFSK' --body '{"conditionName": "iXl8G2uf6E8EajXL", "userId": "SAS8MKMaxQ1QyJCp"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section 'KedhuzI7G9NCKKXu' --body '{"active": true, "displayOrder": 2, "endDate": "1985-05-16T00:00:00Z", "ext": {"sSDspvgM16sZ6rjn": {}, "kH4ExObppC6CMYDm": {}, "5ge659UDEOF6gp5U": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 92, "itemCount": 24, "rule": "SEQUENCE"}, "items": [{"id": "OfoNewWjwMWDKEt6", "sku": "JhbJ0fwTDaq6b5Rp"}, {"id": "MwhWPtndriXU9loO", "sku": "xpmEuwDVc12r0DVU"}, {"id": "GgGHkapTCafFMdvY", "sku": "iCBuzUUwyI6Vtd4v"}], "localizations": {"9k4fv3kMiuQ3DhsK": {"description": "Lxjt5srPFxBgpFtD", "localExt": {"BmTLH9kP9U53z6jo": {}, "BAhAlJGI2YYb6ajB": {}, "jgq6eY4PBNHKPx62": {}}, "longDescription": "tHxDb06ZFy3uglSp", "title": "2UxvF2uLXWilRD7H"}, "D6LCgdFxRGj00RT6": {"description": "LvcnGMJbJIYLssMv", "localExt": {"y9gkfTMRrXVRcAVR": {}, "DX6gmDfNfPGYYSTu": {}, "nMgt3C8hEguCqlMH": {}}, "longDescription": "iQN3HWJw9zIWsiP2", "title": "JQ24meDrwEuTyM2q"}, "ohglzO8AEl6A9sh2": {"description": "x2ur2ccp7R7OqPqI", "localExt": {"jS4i0N9ytb3c8pVZ": {}, "8GlU8962e6gtn5pU": {}, "ARJM1T8QwMNOAzXm": {}}, "longDescription": "yHEV4g9P6a280S5R", "title": "NB5dVCsB7xL4axSP"}}, "name": "gPCiwLxCFLDixZwV", "rotationType": "FIXED_PERIOD", "startDate": "1985-06-09T00:00:00Z", "viewId": "QBP766LUnBBR84iA"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'O7sBQt6YJ2tWwF7R' --login_with_auth "Bearer foo"
platform-get-section 'nP1oK3c4RVfjB0zi' --login_with_auth "Bearer foo"
platform-update-section '3XrYZUiN24ol1qqb' 'algizL97ycJV5YqE' --body '{"active": false, "displayOrder": 68, "endDate": "1983-02-23T00:00:00Z", "ext": {"Qzl7X9fHr6WvBxmB": {}, "vNj3ktaDf9B22HGg": {}, "xakPt7IYzaZUTmvs": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 67, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "LPnnGsnfmBerp84q", "sku": "jwzWpCF1vyamjsEz"}, {"id": "wtLPxK1os4qR8LaQ", "sku": "zEb39sZTdFfC8x5a"}, {"id": "HLsXHlm1RJTTy9Jr", "sku": "Nz1K5M1qgFddYvif"}], "localizations": {"GHawNx6yhniEHLbE": {"description": "QKc0aUvrKXDIjYC4", "localExt": {"df9qswSlpCI8Dhjl": {}, "xUyrs3OSesE5p0Dw": {}, "Uj2HKUvPYUcQBxMS": {}}, "longDescription": "dOOsn2Nd8Jpa19GJ", "title": "DK46Eehx7xasqMY9"}, "aulsL6NOV5agpS6A": {"description": "5mkufBpWVxIK9D2b", "localExt": {"TcgaKoccaSwWcZmz": {}, "CWGI1cIQcPWAShIh": {}, "ieSKUf3zKbyQk2vQ": {}}, "longDescription": "TYX1xsth28NZZgsX", "title": "ycuQNGIDeHlf6IcX"}, "1K9JrK6Or2xx7rLw": {"description": "rPoWiywnxuDLLuIa", "localExt": {"SxoloIH1gBCWVFrv": {}, "ls0ZwosKhDlLfTKx": {}, "pVOXvGSrdkqddI3e": {}}, "longDescription": "zqu6FB0sL2xt6fX9", "title": "j7rhZCAlDlVKBsLZ"}}, "name": "iBRXszE7CL1cQCSo", "rotationType": "FIXED_PERIOD", "startDate": "1988-01-28T00:00:00Z", "viewId": "vH7g63cOx6yrIw37"}' --login_with_auth "Bearer foo"
platform-delete-section 'pKOLrF5i3gr3Cc4M' '2O7NrTQO7KLdZDGw' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "qx7T3l1ut2oyolli", "defaultRegion": "YsTJUmpscwLcUml3", "description": "KuoMKh7tprnacA34", "supportedLanguages": ["xmIOjFLgKR4LjEWh", "OScvtQ92iD02YMvE", "UNfoL7JCcMo7GxxX"], "supportedRegions": ["dbYCRexPekTsQxMT", "faSot7aohFYy4Vxw", "HIJ9gzxqAw4vBGQA"], "title": "eh0VTiTP4PSrXUS6"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'jYI9lsQFD43Df5qU' --login_with_auth "Bearer foo"
platform-update-store 'ZOFzpFd6b5Jc5TET' --body '{"defaultLanguage": "Hcup8GG0VCMTFJ6s", "defaultRegion": "vTyo9RHget5hzB52", "description": "BDFopxUwkMuSqQnK", "supportedLanguages": ["zDgDAtqE3kuybwTQ", "FYEJjIYwqfSRy8Gg", "Vk77fd1GS5YkyhAi"], "supportedRegions": ["AItnWUmD225fp1eg", "sx3ErheNwqd5pric", "lNNqLyrlzrJ4QHbf"], "title": "nAdtkujxHff7n1ya"}' --login_with_auth "Bearer foo"
platform-delete-store 'NCcjgFhS0URBhl0L' --login_with_auth "Bearer foo"
platform-query-changes '5FCbOn46W2B2uPQL' --login_with_auth "Bearer foo"
platform-publish-all 'rt2t6bVpCgKvPXSD' --login_with_auth "Bearer foo"
platform-publish-selected 'ufmKh783cV54JsVB' --login_with_auth "Bearer foo"
platform-select-all-records 'RB0rY0xfWddACyHS' --login_with_auth "Bearer foo"
platform-get-statistic 'mo4KX9TPO3K1k5ZM' --login_with_auth "Bearer foo"
platform-unselect-all-records '8btmGsgXNXbpqxh7' --login_with_auth "Bearer foo"
platform-select-record '6Af5JSwjw2fE2g6j' 'XV7oai2oDm9FaP0H' --login_with_auth "Bearer foo"
platform-unselect-record 'J98tE4UyoQg0b0sG' 'OkzxVt15LKmkQ7YB' --login_with_auth "Bearer foo"
platform-clone-store 'hsOuJ0ypkkt2G4eF' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription 'h2YNsdoxpLTBM9Q8' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic 't829Ido1JyveSRiB' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale 'q23kyH9jQbHWkcVk' --body '{"orderNo": "0X28GS54vl7gIKBc"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id '7OYTylFRAJKySnC0' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'cfPl3Z2zSBbs4PAV' --body '{"count": 71, "orderNo": "2u8AxE2IQeoxYV4U"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'cYzswAGpXqQxctuV' --body '{"achievements": [{"id": "aqPJGAHEZmuQrZ8G", "value": 1}, {"id": "hJNGZF07lsPP5OfH", "value": 3}, {"id": "Aj6IKSYFdJwgZsRP", "value": 83}], "steamUserId": "j0ZrLQjk4VoYfIks"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'th24cZBpdDFfvzeU' '5iqhx6zv7EURTNIo' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'G1DBdoKH6sREmmfw' --body '{"achievements": [{"id": "UZLZZS7snx0Q2Gd8", "percentComplete": 26}, {"id": "z4bm41oIcV33yjPx", "percentComplete": 18}, {"id": "6SjljNPTXA3qbg55", "percentComplete": 92}], "serviceConfigId": "kFkBtXMU6KRIm5xB", "titleId": "oIi99ctgFXasxp5h", "xboxUserId": "780ktjQw2yXzaQWa"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'F2PqUfbpMpRl6xRy' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'V19cborUHeCpqnZ5' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'NW623WWn2ZJY3QvR' --login_with_auth "Bearer foo"
platform-anonymize-integration 'a7CDRTcsAHzD3dZy' --login_with_auth "Bearer foo"
platform-anonymize-order 'yWbUQpbcv3IwmL7a' --login_with_auth "Bearer foo"
platform-anonymize-payment '1K3zIUYJmdF1YtWN' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'SQlcMzxfppNCrscD' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'PbklTHcmgXsrVj3M' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'jml6BpCODWGOLMmC' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'ZUeelXYyNrXweiCn' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc 'mE3VVsQ1fm9EUdia' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'RjuLsKZoqnpKwhpZ' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'Vdw5UMa8ymxtEFLw' --body '[{"endDate": "1986-04-12T00:00:00Z", "grantedCode": "LCY2vIddlxnA1Vyn", "itemId": "ioJcAPwVHUGcs1AC", "itemNamespace": "MvoY4jWH9dFmOHW0", "language": "CS-qX", "quantity": 63, "region": "q8Tjnxp5Cl8ggaEm", "source": "REFERRAL_BONUS", "startDate": "1971-01-23T00:00:00Z", "storeId": "336uiiMTAductvUf"}, {"endDate": "1995-09-06T00:00:00Z", "grantedCode": "wLahtRedh1SiZlOp", "itemId": "IQ8GL7jBF1R5OexA", "itemNamespace": "PzCG6ZKQClGc1636", "language": "qB-RB", "quantity": 42, "region": "Co941ALznQuHVskf", "source": "REFERRAL_BONUS", "startDate": "1980-03-21T00:00:00Z", "storeId": "0w8LOBxE15JYj4Iq"}, {"endDate": "1996-04-07T00:00:00Z", "grantedCode": "K09l4wkrzahXR1sD", "itemId": "EDVKDINE3HjCiVR1", "itemNamespace": "dQ8kuhb4pUwnGptH", "language": "PLMX-peLA", "quantity": 85, "region": "Kp2oac8QTNEuBbeu", "source": "REFERRAL_BONUS", "startDate": "1979-08-24T00:00:00Z", "storeId": "m9wM7mgTtUdPVcQi"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'jMBhs0kDP6d3nuUZ' '41mSeS9SnGqhJOvy' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'kBcDpzD9zh6dtPK4' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'sE0GHDOFjrfqJcyx' 'T2a7fCFAUzLELiM5' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids '73TdtWjfVciuLnLs' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'BKGsALPuCOyphUUA' 'V95708zaP0wpZgQE' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'vFzox9wHocX3DRWo' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'bEoGr8W97KBedcr6' '["PM51z7i0wQ9egK2t", "46EG8I2lTviKbOgV", "uN3nhkn6QIesNoYq"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'vVsakylHikKkpOjq' 'wgKvfXXs8pDqm31A' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'ZSRkuw6q8FgqG46R' 'sFK7eYlSU3vYcHZZ' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'jFegVnZOn0tk4IAT' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'SIefcqNEn4IZ0Dv6' 'b8WtaMVvLbG04KKn' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'h3jvW0Qp3kTyL4Cs' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'LwiWUMcpxn4B6XoT' 'NMuqZTHwo1IAJQpb' --login_with_auth "Bearer foo"
platform-get-user-entitlement '6r8ZeaSHwQuiH3Oz' 'u4G6bXxp0gYZyF9f' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'JBJkSOrF9Dg4FcDw' 'BGyBiHewZkwEeuzB' --body '{"endDate": "1985-12-27T00:00:00Z", "nullFieldList": ["zp4aEW4GkHG5OIVu", "Gv47XJpkMiopQrVL", "3ZZTVxqa9XM2gY14"], "startDate": "1975-12-04T00:00:00Z", "status": "CONSUMED", "useCount": 82}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement '12Jffk8dwKNPUOHN' 'ZxML3yoBM9qxd6PW' --body '{"options": ["z7sVnMxge2inL8fB", "FP1ABaIKrEt8d3o7", "cTS9OIIMErnNTLXH"], "requestId": "rsOFsbhRow4iaYKy", "useCount": 80}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'IjsDgbJ37DN2lDvd' 'h7okHl1wMht2Izq7' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'TCUJhDsDefAS09Vy' 'QB1vR1mx6K17GL1C' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'rO4ZuoGZSxTzm8oM' 'SPIHPtqzIWIzg8pb' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'jnt1iBV8DpbjGts4' 'UZDTfhAyZKhqilty' --login_with_auth "Bearer foo"
platform-revoke-use-count '9NVlgxUmnfdOAmu1' 'dX1NqD20RUvvYeJZ' --body '{"reason": "w6QZFN7wFCnqpvNe", "useCount": 38}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement '2F6iwkJIYOLarmpW' 'yvib9CDW21ANrlpu' --body '{"requestId": "XD9H1u1CvzWPcZwk", "useCount": 19}' --login_with_auth "Bearer foo"
platform-fulfill-item '6foPPH94SUinY5di' --body '{"duration": 96, "endDate": "1990-03-31T00:00:00Z", "itemId": "HYivmD0ekycMKlwJ", "itemSku": "TNL2UCWUtaAD7ZZx", "language": "1iefATWcDSqGYRMd", "metadata": {"z07xEJ40epssgJJC": {}, "3CX0hpB1ZGMMo5DS": {}, "ozCuFsrBMtoOeLfM": {}}, "order": {"currency": {"currencyCode": "CYxSeeJOlxa395rg", "currencySymbol": "hZwGhdZJkkGhYvXY", "currencyType": "VIRTUAL", "decimals": 68, "namespace": "aEMEqOpwetb82b96"}, "ext": {"rsH73hRfDgl29GWK": {}, "pItMt4GszRufkDFL": {}, "YyNBPlMrkse9SGcM": {}}, "free": true}, "orderNo": "AvvpkAHRJHZyfrXZ", "origin": "Nintendo", "overrideBundleItemQty": {"Q32UznXNd6ve29lq": 34, "KKpJXTLbYWpqeXja": 11, "6LabyDnqXjXKPIcx": 16}, "quantity": 49, "region": "97WrMnJtovSMFw8X", "source": "REFERRAL_BONUS", "startDate": "1985-07-11T00:00:00Z", "storeId": "bgTD9xL07ZzzIs3J"}' --login_with_auth "Bearer foo"
platform-redeem-code 'ke34ZAUuLP897ooM' --body '{"code": "LnemwKAvgDXNrFEE", "language": "uFUI_069", "region": "eHmfoFkUDP864shb"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards 'nQ3bVvuvpsDJXPCW' --body '{"metadata": {"kX4Kpi8CJ88aMPGF": {}, "FAQZbfbmVTEbiRq5": {}, "Juikmpat75rVbN9Z": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "Nnu6OIG1PPLRDEXL", "namespace": "XZWXvqNCHvNpeMjM"}, "item": {"itemId": "zguq6HFIqaqwH9J6", "itemSku": "JLb5f3SBMyJUdwEB", "itemType": "RrHAWUFqTooGGnPE"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "0t7QQWl42byOwXgK", "namespace": "yPhXmcysae8HpWH4"}, "item": {"itemId": "xiz3fWthJSu2pUII", "itemSku": "uPLFAtcWhjAP57Qb", "itemType": "WvSSp71zEPPfmAQi"}, "quantity": 34, "type": "CURRENCY"}, {"currency": {"currencyCode": "RRC2caquMRtQOILc", "namespace": "aDqUITBHQR5ISNoF"}, "item": {"itemId": "R3GUxdMuvmL0UBfw", "itemSku": "zaaeP3Wd0Wrb8s3G", "itemType": "W0CY0vAfbq8xoCur"}, "quantity": 34, "type": "CURRENCY"}], "source": "IAP", "transactionId": "yOUpR3uUdgNlyU4I"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'JnqtrjCOsE8Vjvzh' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders 'JwNX4bhqCjlwrmsS' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'RV86iic1FIMyF7Cc' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'Nu2DYn6E9Gk51kOT' --body '{"itemIdentityType": "ITEM_SKU", "language": "LrVU", "productId": "zAuT7M6OBrNwioKn", "region": "XPVZaDcXsV1TnsZi", "transactionId": "oDiBgprzahPB0FKM", "type": "APPLE"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'gozmco41750xdYQg' --login_with_auth "Bearer foo"
platform-admin-create-user-order '34WUV0WpmsQnp1n4' --body '{"currencyCode": "YGumTKOlDOy5vhSk", "currencyNamespace": "xERZ2AQ1jvXYBar5", "discountedPrice": 90, "ext": {"1kpHcQtnIc9z70LF": {}, "QMI0oZuEjY0rNBbb": {}, "B9txAvtRQvqJacXR": {}}, "itemId": "2Rf4noXDFaEUkPUB", "language": "nB0ZEJH3ebM71Tg9", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 28, "quantity": 56, "region": "lRPrEAYqRBeSc5uS", "returnUrl": "hoj3dGHMeoi5DBOs", "sandbox": false, "sectionId": "0Gax0iX05IT9Agsj"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'l5NmnSHhxNmCe4tx' 'Y0MsPc9EMgf9JCJi' --login_with_auth "Bearer foo"
platform-get-user-order 'EvhL8ZfwCVJW9ysp' 'UOyHC9eKeXzrvzBl' --login_with_auth "Bearer foo"
platform-update-user-order-status 'lwzyC1aTWEmPgoy4' 'TkpEw4Zeid4mRoFN' --body '{"status": "FULFILL_FAILED", "statusReason": "2HQtgzQhO3nR8j8D"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'lP6OGbn8vmfMYGLt' '1AjKhh3JMX7xSrz1' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'EH6X2SM3xzsNrJzW' 'BcdFlo7oAsOlfLB1' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'J19b5rTfiL2P3r1a' '8KIJH33aKkPuWD59' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'MgTy1HA58Jt5NaRO' 'jSKFEuZo2ElXYSS4' --body '{"additionalData": {"cardSummary": "ezBRSiOyReviDaxl"}, "authorisedTime": "1992-03-09T00:00:00Z", "chargebackReversedTime": "1972-09-01T00:00:00Z", "chargebackTime": "1975-09-29T00:00:00Z", "chargedTime": "1982-04-11T00:00:00Z", "createdTime": "1974-01-18T00:00:00Z", "currency": {"currencyCode": "h8BKcLqtRZ93LuR8", "currencySymbol": "OEyICvwgwBFehwtd", "currencyType": "REAL", "decimals": 19, "namespace": "n3R2wo8beVQvgeP9"}, "customParameters": {"qOHaLwYnXxrz7sLm": {}, "P70LxN0f3JA27Qz5": {}, "SjzQfOLYu9O46OOz": {}}, "extOrderNo": "z9p57qSpHerzO87c", "extTxId": "g7TqtMiQgi7Aj28q", "extUserId": "CRbwwZc4ZS1NMkrn", "issuedAt": "1988-08-06T00:00:00Z", "metadata": {"s1Iyhwqk140MolIr": "nlkRVbcX435TDYpk", "k2Gza6DrSycophHw": "3EoEEClTO9SDKnMl", "nKW9jiNMu9QVrMeD": "4bD8gISE34yIAZQe"}, "namespace": "igiA3wBrmBYIlZeh", "nonceStr": "eP72AB8EO3YrlyrW", "paymentMethod": "owUpUDVLlTtuJJsH", "paymentMethodFee": 60, "paymentOrderNo": "VsG6izJZruOJvSRF", "paymentProvider": "XSOLLA", "paymentProviderFee": 89, "paymentStationUrl": "Sdj8elbtHvDU91Dm", "price": 68, "refundedTime": "1993-07-21T00:00:00Z", "salesTax": 34, "sandbox": true, "sku": "rKWYOuITlYS2RYaD", "status": "CHARGEBACK_REVERSED", "statusReason": "WNKGhbLhjz1v0RBI", "subscriptionId": "O2rkJGmPaK6HEVIQ", "subtotalPrice": 73, "targetNamespace": "6zPz3BVHAqp4O9XS", "targetUserId": "jap24esyjh6Wc3mi", "tax": 12, "totalPrice": 10, "totalTax": 47, "txEndTime": "1998-09-13T00:00:00Z", "type": "n6iQyr5cb5YL6fwB", "userId": "iaVPmmn0T5uzlmi2", "vat": 81}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'Hv7Hssd05pHBJX5l' 'n8PZbYVD8RiaTsdD' --login_with_auth "Bearer foo"
platform-create-user-payment-order '4d3kSbTkHPMUvOAU' --body '{"currencyCode": "Xkw36cr2WJQqS7Tq", "currencyNamespace": "4YIyZAFQ6lZfa2jd", "customParameters": {"NvpWf32JS1av9VNp": {}, "VLT0LvqcfSdO1nAj": {}, "Y5FvADb3GUQgci63": {}}, "description": "2w6LUrHuKBoNTpPQ", "extOrderNo": "XDNHto74GcmVf0fb", "extUserId": "CU9QdPuWeMEeL0EJ", "itemType": "OPTIONBOX", "language": "QSGi_rN", "metadata": {"KU5abnqw8fFa30pV": "bhr1BHh1arZAyuLc", "ZoEkPpqKhP2jWnRT": "glw0gdWoE4esuiDr", "quccz4J6fFQezJ5E": "3iYHIknvPcJkjRev"}, "notifyUrl": "VYfiExpAgoK9YDq1", "omitNotification": true, "platform": "EddJtx6GV01vD7lN", "price": 76, "recurringPaymentOrderNo": "KeipIldsgB4hOxb8", "region": "8WgKSLIpneDQCfwu", "returnUrl": "cHRL3o2NstrL6TsJ", "sandbox": false, "sku": "JEKNoMtHvjM7X1fj", "subscriptionId": "zknv2HZMIL2P2bh1", "title": "4LroFTnAuujPeP9N"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order '0vdVB5a2XkS3XQfM' 'uzZh4AhZRe2hgU56' --body '{"description": "xtyJtnbTDXu7Fble"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'SP5PcdOuq0m0rvak' --body '{"code": "R8rcwojLRjhcaJ56", "orderNo": "nGlYZ2tod2BGBXjN"}' --login_with_auth "Bearer foo"
platform-do-revocation 'yRCtPOr1FU3QZy3g' --body '{"meta": {"dDms3kb1htW0UGJp": {}, "wQZlXuzu3m9u67Jj": {}, "CDwg186hGWKfO9Mn": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Nintendo", "currencyCode": "pAJMCxMp2J0hDg2k", "namespace": "MgkvhoQe9gD9tGN0"}, "entitlement": {"entitlementId": "nE7M36mI9u3EeZtL"}, "item": {"itemIdentity": "Qij2JXsqdXfhZTTa", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 25, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "Gv7meuQhJuq1C6JH", "namespace": "kWMSUbqByWN2BCnR"}, "entitlement": {"entitlementId": "z9w2nur0B9jKaunA"}, "item": {"itemIdentity": "cylsau7wRQmL4i3e", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 71, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Nintendo", "currencyCode": "CEDa1I4lwXqwPfq3", "namespace": "VzHQjtolx64w1gyv"}, "entitlement": {"entitlementId": "jacKtGqxMnoAXRlc"}, "item": {"itemIdentity": "q0mYWKQYlqMmu2pv", "itemIdentityType": "ITEM_SKU", "origin": "IOS"}, "quantity": 36, "type": "ENTITLEMENT"}], "source": "ORDER", "transactionId": "bQaq1cT88H6RCW8g"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'JmGzDlqxtLsR2AGO' --body '{"gameSessionId": "iPhNt2IdH8aYYUT6", "payload": {"mma833TDzk66ix88": {}, "sAUrXr7MXxCvyy7c": {}, "axz4MQrODLNlxiEj": {}}, "scid": "QBCZx9DJ4V97SJLl", "sessionTemplateName": "rwXmIGamRCARuFLx"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions '4rV4CXVMrDYKe2eT' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'f1axo16GqT2vSLLi' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription 'Mvcu39YZJypWzpNX' --body '{"grantDays": 13, "itemId": "UbOZ9WNl3apJmNAb", "language": "l1g5ZmTTGYRbP4QV", "reason": "ey9pEz1TV5cUtPBs", "region": "w01i5Mf7WvbNSeeD", "source": "NfUESLlwHv3JgteO"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'LyKp8a1VqxXnRhDd' '9TGkO6aIYqftw1Sr' --login_with_auth "Bearer foo"
platform-get-user-subscription 'M2nhSEanfUYrMU6A' '43UKGpvC1cr5T1PS' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'XhduTWchzXDv3TAt' 'BjP4HSuiYCbG0UyY' --login_with_auth "Bearer foo"
platform-cancel-subscription 'UJmNL8p6AbdtU0CD' 'rlQpKB8qoel2QK3a' --body '{"immediate": false, "reason": "OYdmMDikc3Fjm9Ho"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'QDemtiQvURYZCeF3' '0RT9rBgM8o7lxXq7' --body '{"grantDays": 93, "reason": "scGRWzkCl1ZKuPxj"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'DUGRGcCEPjbUy7F8' '2Adu9BYRHrVTehrq' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'gvEtEs2LpE0qfbvd' 'U8hlDoC9FnxqBlPB' --body '{"additionalData": {"cardSummary": "YJ7X6uVy7FWTSfMi"}, "authorisedTime": "1999-08-14T00:00:00Z", "chargebackReversedTime": "1992-12-04T00:00:00Z", "chargebackTime": "1987-01-02T00:00:00Z", "chargedTime": "1987-07-02T00:00:00Z", "createdTime": "1983-01-23T00:00:00Z", "currency": {"currencyCode": "jcdpdCqVeePMSqb8", "currencySymbol": "y8qJTUQY40Zrpn0v", "currencyType": "VIRTUAL", "decimals": 45, "namespace": "D9YsPeDWrAVQZSvg"}, "customParameters": {"WuCuLsUGrVQAbhS5": {}, "4ZuQHKersDmJLUHA": {}, "KtfXCKOna8DdjtZh": {}}, "extOrderNo": "h6ofsUoRh6r0e0J6", "extTxId": "vyqPw7YlmV3kES0H", "extUserId": "i88UYgSV40OvY7ap", "issuedAt": "1992-12-12T00:00:00Z", "metadata": {"CrN5bEhmuHgKeWiz": "Epw1zN0mOYgGhHMz", "9dddLWJWDuSYtCaI": "v4Lp91wYUJPbvzn8", "TYoMDAaUXSuBQdvd": "hJoT0WK5ngNUxDKf"}, "namespace": "ZYofPGUbSaA00nKx", "nonceStr": "QjYU6KlavIiLxU2I", "paymentMethod": "1GyJS48Hxu8Ju4XS", "paymentMethodFee": 53, "paymentOrderNo": "iPfRQ3rJ0f5lwXvR", "paymentProvider": "XSOLLA", "paymentProviderFee": 27, "paymentStationUrl": "BnmL1KQn77hiP1lz", "price": 21, "refundedTime": "1995-07-27T00:00:00Z", "salesTax": 100, "sandbox": false, "sku": "Xz8dv7BiEUqnzxs2", "status": "AUTHORISED", "statusReason": "y60uRMT1Xw9K9Yb6", "subscriptionId": "8a8ygYx2TqkhlqMn", "subtotalPrice": 61, "targetNamespace": "d3QzXhkrN4pWryt4", "targetUserId": "XTNwpp0ni1YfIgLZ", "tax": 61, "totalPrice": 71, "totalTax": 46, "txEndTime": "1984-02-23T00:00:00Z", "type": "ElrLZOBLHCKmLBaI", "userId": "wlokbAFW8RgBUwBL", "vat": 50}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '8BqM8UzvKqeoTiNK' 'GRUMrimGAz6OhmHO' --body '{"count": 32, "orderNo": "LhMF2Pav11FuU8iX"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'CRz8KgqgwijYxpGh' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'sFArq6lolbj7QKvt' 'VRCPMjr5M3vw1GqU' --body '{"allowOverdraft": false, "amount": 33, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"Fp6R8mYZwKftVqSE": {}, "CsypS42NmYQ8HlHb": {}, "Hnfs4tLVOYQCWMkt": {}}, "reason": "miKd9vLPP0w52JRA"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'ZxMWdoleYNHXeOpa' 'RDwYLge851PbK2MF' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'Kvw5TWjAh4gy41LL' 'zQ2IjY5PeNr4JmYx' --body '{"amount": 69, "expireAt": "1987-05-14T00:00:00Z", "metadata": {"0zCYRVmbfzwUmsy0": {}, "stUmKdXiiTObNdqk": {}, "Wa13g3pgHx6uPf6j": {}}, "origin": "System", "reason": "ZcYerH933X7iXEEM", "source": "REFUND"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'KOusNEHcI95GGdJv' 'ucDbs6UdccuM2ykR' --body '{"amount": 19, "metadata": {"1ilfgff7Et4uY8nl": {}, "BwGNHgfgwZwVMvsh": {}, "Gmsg6ZJYnkHDnHTl": {}}, "walletPlatform": "GooglePlay"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'ugM7a2UZgeesipbP' --body '{"displayOrder": 49, "localizations": {"27okM5E8tAajVSvL": {"description": "Rj306RDuaSixXEdl", "localExt": {"oYZBkatNLc42eq0O": {}, "6VsXtOlQwj5xPvm7": {}, "c5nPR0Y1sffUaZ64": {}}, "longDescription": "dFpiv8o9Gw4QtKgy", "title": "IeySoUxoMrj2J4JG"}, "QZAtyjTxnlmSyjEa": {"description": "FH2DRN6HIEqIFEcS", "localExt": {"0ynIMOYWpUYUQMoo": {}, "iKT57rmbjEnimeR7": {}, "EFBz43E9FkOPVu2f": {}}, "longDescription": "DtOjW1iSYQbcebBd", "title": "5wb5H3qppoCiHMD4"}, "iBK2O7qYtOHV5hnp": {"description": "jc5CNLnnEvo25aEt", "localExt": {"djls5oadseJg7y4Q": {}, "9CU3fjSRaXD4HDmd": {}, "vhMXxiKR29LKIhNU": {}}, "longDescription": "43K8bihdw3prp0UH", "title": "lWUxkBefhxRtrqbv"}}, "name": "56oqwnCLVc2qHZuu"}' --login_with_auth "Bearer foo"
platform-get-view 'edbBOd19DqZJRYV1' --login_with_auth "Bearer foo"
platform-update-view 'oqNLmPAUIMwa2wYq' '6DsUq38bYvaWLoKz' --body '{"displayOrder": 70, "localizations": {"eP7yh0zsKhR60HZw": {"description": "Uwk48XK7MXHbEwAv", "localExt": {"vpEeHhXiJcJqYSxV": {}, "KUYMimVLzAP6aOzs": {}, "TqEFXUhGAwpYq1Uq": {}}, "longDescription": "ZydOB0MThZW6LwcA", "title": "g57BYBVCbi0ifdPy"}, "Kf3SwHekWIz4rXlH": {"description": "5jw99HxCjXWcaXBc", "localExt": {"fXXeV7BXefsSgZxS": {}, "YnVwXqF6K0WA76Kl": {}, "2mHHoz6qBQnEDgX4": {}}, "longDescription": "9n1xTDFcmOm1sqdI", "title": "WU6ERylESgf5dXMr"}, "PoYSohfrLyXMSrC6": {"description": "2xYtDwflNGfufW5c", "localExt": {"Weg6eSCypsceITTk": {}, "JGGCVF6LrILDLviU": {}, "CzmDAaW5xz1c7ZuZ": {}}, "longDescription": "XUCBYnkY0LEBSYBd", "title": "USiTOrhB8hVs29WO"}}, "name": "KmZRTtgycLzXz6lU"}' --login_with_auth "Bearer foo"
platform-delete-view 'MKi5mweMEZo2ZnL1' 'Zg2JfH4f73jAevOn' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 64, "expireAt": "1985-10-10T00:00:00Z", "metadata": {"6YJLlb2AfUEEBbqM": {}, "MKvkOsR1fHUyirMV": {}, "MOFES2J2OzNlJE3u": {}}, "origin": "Oculus", "reason": "rOsJmEwjGYN8VNPX", "source": "REFERRAL_BONUS"}, "currencyCode": "IZVSGQyTzhs9Asy4", "userIds": ["dHvlQKiR7SDQUDav", "d629N4YnolVWA2dW", "xBs056jkPCUuE1pg"]}, {"creditRequest": {"amount": 85, "expireAt": "1982-04-03T00:00:00Z", "metadata": {"npPn8N5xMRgU7cPq": {}, "NZrLCRRUysya4J3r": {}, "vTzMTMSwrNov2GW9": {}}, "origin": "IOS", "reason": "twUWGt6tooHP5kAw", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "JqwKs1mO80L7IOHl", "userIds": ["SAO2n4MZQt753XQB", "f6j8PZOzUiQKZqz5", "NSp0B7LODN3Boi2s"]}, {"creditRequest": {"amount": 15, "expireAt": "1999-03-20T00:00:00Z", "metadata": {"rOW0guPoQbYzc1RD": {}, "Vhs2lhdzxxgibuqU": {}, "uyW3cMz9YyduMomE": {}}, "origin": "System", "reason": "1gzGCbaxw33rNbE4", "source": "ACHIEVEMENT"}, "currencyCode": "Vv0KVpXJTMx3Y8Um", "userIds": ["tbqMFlgHKQIRtLfP", "ngD83roOeqE7fcCA", "1iqehObg3OZ9j0HD"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "eExeQX43LpmdMiZe", "request": {"allowOverdraft": true, "amount": 71, "balanceOrigin": "Steam", "balanceSource": "IAP_REVOCATION", "metadata": {"oc3qNcQFFyHv141N": {}, "PqjRUMKSQjFdjqTa": {}, "ZFsWzbqwTZQIN5jC": {}}, "reason": "6a8mEVCXHmFnrSL0"}, "userIds": ["PJcZQaCeNLYxMID9", "hzylaquioT3QBt29", "pqZ5rryiMMt6fQtL"]}, {"currencyCode": "AiRASsuFM4ahGw7X", "request": {"allowOverdraft": false, "amount": 1, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"1Qwzz606UGXPhoNZ": {}, "lXMef7AvS3TfKx6B": {}, "yTygbtOtcQS4Cmgw": {}}, "reason": "1wRUnIVYxY6Ohdkr"}, "userIds": ["lTpEhjTFYdzsUNvQ", "An2LuMjLqwmVz3zK", "YiCinoVOzo4Plv1I"]}, {"currencyCode": "sfjz1mFkyxoUzfMF", "request": {"allowOverdraft": false, "amount": 98, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"W9ddxzLPV8wDjsny": {}, "Ph5yNbYXmlAOi1SC": {}, "3I1SjkH42LtyZKrT": {}}, "reason": "Jo0L5sHil4Q0mqa8"}, "userIds": ["TvrG1DXZAWlvz3c3", "GatrjbJ5YT7uvqar", "XALMresGFfsH4aXC"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'DhshvEF8rHd250ny' 'ihcUVGHQczI5ZoTR' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["UkjGoRkPs2SO9Xrg", "XNIaU11cBXLwTfop", "qeZtHJnRgaGfLMFb"], "apiKey": "vyI5PZGzVLcmZKKK", "authoriseAsCapture": false, "blockedPaymentMethods": ["ARape2tsNczam4Cd", "d1QYvww4XDokltgq", "2vXtUnY6UhDJ4pe0"], "clientKey": "s0Cuhl3dU9b4seYC", "dropInSettings": "yiB4tDCWx3cEX8wT", "liveEndpointUrlPrefix": "i1v2abpCWytPEi9Z", "merchantAccount": "e0hL9rPkV5GkSrcl", "notificationHmacKey": "2O47XVzU7qlNVk7q", "notificationPassword": "nmBS3XKDhp1OkMcE", "notificationUsername": "rmeH0lX1hj0LaXgQ", "returnUrl": "94flh775AQfzNjQ7", "settings": "IuMSY2epRDJjDyMD"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "KQhuTjtQZyIiAmCL", "privateKey": "8bNTTfqLCv9DYBOP", "publicKey": "roN4UWbQaKFrTv4J", "returnUrl": "WElmOCxqPrq9I3XJ"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "WBxTLcOef8MgIwkr", "secretKey": "KFEtwESJCe2ksG3n"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "ZE13H2fILFzOlAZb", "clientSecret": "DQAEJLbVWH2XLIg3", "returnUrl": "MgmdSvWp3h0xPsVY", "webHookId": "8qNwB2TY4v9NNfQS"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["YLFKSl3FNFFJnt3r", "IwZdW02Su6aCnL81", "6aH6gOBUIMeL0GL3"], "publishableKey": "aefSDME8X2MxILI4", "secretKey": "2BJMPkZmay4Csye3", "webhookSecret": "iJLtjsu6ZJRCoDq3"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "geuHFFaZzPIjETqc", "key": "KN1gaQ4Bn0cPPtKa", "mchid": "Jlw31pdDrXQ47WSG", "returnUrl": "yDCKF0LLhO3lGZ7e"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "GOPj2XoFug8BUQUm", "flowCompletionUrl": "PHnPumcazKAna0ji", "merchantId": 47, "projectId": 2, "projectSecretKey": "4mnYvvlt1es7A4PF"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'duN4gx0UC6eWKCFG' --login_with_auth "Bearer foo"
platform-update-adyen-config 'S97Si6XyLVPrkUxy' --body '{"allowedPaymentMethods": ["Z1OH5Nn4nMT8QOyT", "uUSD9ImtaPAocOQc", "pBWSNrCjSNEAdojk"], "apiKey": "CMmYyTGO07foRZ6F", "authoriseAsCapture": true, "blockedPaymentMethods": ["69PSsquWUafwbFPX", "15633pFgA7i9tqvf", "HmFvUZiUW5Y0CYw5"], "clientKey": "OXSGwQkJuy9oLFcH", "dropInSettings": "HcraLXR2n9JQvq7N", "liveEndpointUrlPrefix": "KWIHYsii3fCh7sie", "merchantAccount": "JjZPAkiWumllU31u", "notificationHmacKey": "XPwYxedGHCIkmt4b", "notificationPassword": "fJOhNaIT0pv7XeqO", "notificationUsername": "8gY3c4SryWB4yRaD", "returnUrl": "xvxwaLM8HkVOW8Pn", "settings": "LkgqkqYZWPZTgKag"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'TzdcYcko7U3gH239' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'LhRx2Laa2RdtVb6V' --body '{"appId": "gA5yFIH3s9UyeaFi", "privateKey": "8OE7BCK4FeVGrl5N", "publicKey": "pUG9zblWEiHaUjyT", "returnUrl": "Hb0sSlstb3slUe94"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'NxhXsVcqTYi1TMBM' --login_with_auth "Bearer foo"
platform-update-checkout-config 'zaOrxuKvtUVtqbDW' --body '{"publicKey": "nJ2i9TRmJOqIl7U1", "secretKey": "2hO5vpk9DOSgbsdG"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'VPLD9A5NmuZDUV3y' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'HurgOfba1XeoHYTN' --body '{"clientID": "oRol84UlkxtP5Vok", "clientSecret": "9sNK1ORg3tChsS3f", "returnUrl": "FpaS1uq1mH3oYfPK", "webHookId": "2QiAUhIfi17YrkWH"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'NxiaNyqBfgw58Hx0' --login_with_auth "Bearer foo"
platform-update-stripe-config 'XYL0fJOPYpnPqGlP' --body '{"allowedPaymentMethodTypes": ["nhBDOWqDU8N3DjVU", "t0n0jfyDbtIXICLk", "K8ZvbnTg3znlg8nm"], "publishableKey": "zQx1RsYhcRlv16Ww", "secretKey": "e8YK3lZFslECI9Qz", "webhookSecret": "uQcsjFehD6uTDYnq"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'yNgN7GoeMsezFZsT' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'BHkgcJ0DcEt23pci' --body '{"appId": "6xEljer6aGJx5OFp", "key": "3jKEx4aSGdwTPX4i", "mchid": "g3NVFFkP7O3F4vso", "returnUrl": "hRWDyGYIVFDbTvRY"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'fpJ4wM9WZfOOxAzm' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'sbhi5QJuc2SNBaOl' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'XfgsgBd7MYLLoPZr' --body '{"apiKey": "kjRm5Ki0orhXrISE", "flowCompletionUrl": "aPZHLQkTHvndQsCK", "merchantId": 54, "projectId": 88, "projectSecretKey": "O2JRz3CGwtujkzxi"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'dLcAQWGVRg6DVso5' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'TJCSugdo4XTm8t1Y' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "SMALL", "theme": "DEFAULT_DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "ADYEN", "namespace": "tjNWXm9sraeMA78Y", "region": "SRS2fPy5fpbbbMIu", "sandboxTaxJarApiToken": "9lu18jIMBUM77Xme", "specials": ["PAYPAL", "ALIPAY", "ADYEN"], "taxJarApiToken": "3mnFSq9jJTVFoFjx", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '7rLoexHBMBMMAYok' --body '{"aggregate": "XSOLLA", "namespace": "wajRGUyklfLVY6g3", "region": "PO4hKAeF4GUV5m96", "sandboxTaxJarApiToken": "qcCJsVOWtu5RPsqd", "specials": ["XSOLLA", "PAYPAL", "STRIPE"], "taxJarApiToken": "BEuhnaxZVf6MD9r1", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'Ihr531Kajxq7lzuV' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "RVEvhKIbrq1xsGpd", "taxJarApiToken": "obYun8hcO55hVjfW", "taxJarEnabled": true, "taxJarProductCodesMapping": {"4ehxNIIlcrZzgame": "T2mLkkAMjHyI0e2A", "xj0nZHjmoKHJngwM": "e1AnQVj6QQjZtkNJ", "CnDSrsSey2BqOxgw": "CymCDYsuff3b7G5F"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'DX4mu0qPHb9Ll2EF' 'Eb8GnsthmQ2Y6ZGO' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'iqrg3lpqN5bOfnqJ' --login_with_auth "Bearer foo"
platform-public-get-child-categories '5bzDRzbhMxfEDE4T' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'rtIHyyMq79EdB9Mx' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'zjv1gSj8kcNhoqcR' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'ZRNATojM7daV0VwR' --login_with_auth "Bearer foo"
platform-public-get-estimated-price '3yNKDtMqMrAGpdyF' --login_with_auth "Bearer foo"
platform-public-bulk-get-items '6WDHn3ePBxQNz2IU' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["EHMzl5jhwVDsuzwJ", "4v50eoaIBrTh0EKk", "JioUpvGnkcHgCfaW"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'zPUvCnfqsPGgJZyR' 'wigaMu07Zek8WObp' --login_with_auth "Bearer foo"
platform-public-get-app 'f0FHYfViEj70KYKI' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'fFt4GYjUt4F1ZVy2' --login_with_auth "Bearer foo"
platform-public-get-item 'qFfSr3psWjOyHLyK' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "e2foqsVIfgBTr8Rc", "paymentProvider": "WALLET", "returnUrl": "AMWqhyyNZH1CducB", "ui": "5y5iMdeBG7REG4me", "zipCode": "KEabfVXBJPIZqZC5"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'd6JuFdcfiNf0DOHK' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'wxDF5GJhCjVHiCn2' --login_with_auth "Bearer foo"
platform-pay 'hTefT8gPFJ4WndMp' --body '{"token": "QhcLK0WTZbtmQkwC"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status '8azx3IRWme3C6p2r' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'ALIPAY' 'D3NQdjrjkX3AMgK3' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'JgZufzssA284mG7u' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'AojLYBsx8oqMzbE0' 'ljQaBtb47V691j0F' 'STRIPE' 'BGdX66DqPTdurR3M' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'Yda0Y0BCO4qPnvxE' 'WALLET' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'WjKasq5zQ6uZNwKj' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'nX7vDIqpcjmaq5KB' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'CsHlwNrfKJrkzwR4' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '0tfd9GFXChtxB10d' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '4Q8nlBthUSu4WNfT' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "vD5UcES1eLMZs9lS", "language": "xjeu-MRxj_229", "region": "tijiNzTUe8KdizXm"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'rmK0sCUsqxKocHom' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'tjoU1kUqRedwIu1T' --body '{"epicGamesJwtToken": "SRr6r8mzfMedpcKh"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'vHPlvYanGqEkn9OE' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory 'VwLWGT4MXhmzvRQb' --body '{"serviceLabel": 32}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'c0vmjWq9fQqzulLG' --body '{"serviceLabels": [100, 88, 12]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'QcmFkkRX6EqadAEI' --body '{"appId": "zxld80Ynss7hc3VU", "steamId": "xxZIgkTLqMeJPCbs"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc '8jWmTteJhwNbwHGG' --body '{"xstsToken": "39YAZJ4HuLfeTfFB"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'TOFFMJ9pq511jZcT' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'K8zmMfyshYk3b5cA' 'FVo85r1b8Yp2Qnuh' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'QuIdvZdj6AspWBfR' 'DLC' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'J8kx1WEeDbql13Ft' 'QMu41rnOzbsFBqg6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'dziWvdNcwfUBMdNu' 'TaiLxFMXRpDP9xut' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'ntU8xHw4yYJOCViH' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'wunQwpC2eCFUAHZa' 'YSvsWiNJtqXltZF6' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'aSRmHU5iR3hXIbzW' 'PKOkzftOgDQAWhul' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'brDf7q4cAnpmLiEu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku '4CNtX2lnqi7cHTSd' 'GoLZbC3UJruU4uIX' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'BZsEYogFWiH9z4E8' 'zmaZ5cg0REtUWY4f' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'VIdqwCWF5wmbOubT' 'xAAeDCowR3MeCNL1' --body '{"options": ["oNrF3SmgudQusJLs", "PlW7ZyORFkN9EbKb", "TbrDzNgVEcw0lxRa"], "requestId": "m16O6v4VjJf40LjU", "useCount": 7}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'EjX867n9PT9fR7mM' 'uBXPDKCriRKzTZ7T' --body '{"requestId": "XAVRnUVbxEJcKHE7", "useCount": 61}' --login_with_auth "Bearer foo"
platform-public-redeem-code '4EwhQfxFKIOGT1WK' --body '{"code": "SmLoA0ILaESC1GJX", "language": "PUc-Hgug", "region": "Xa2j7v3zQJoQLTAl"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'W75icIKUpXazsFrm' --body '{"excludeOldTransactions": false, "language": "hmo", "productId": "Ekvq6SUSt8xd8EgE", "receiptData": "15XNuw6Y7sToQNku", "region": "ZzJ1XBxw01iBBQuk", "transactionId": "gQ94ZvPCWcMX0ov3"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'U2sKjIeyFS97dYD7' --body '{"epicGamesJwtToken": "LkcTKYpCfl6HPy5c"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'JfAV5iOfzwt3bpxR' --body '{"autoAck": false, "language": "oLi", "orderId": "jCPtEKeBWTm78Fn8", "packageName": "TvZVTe4L2lXrVPX6", "productId": "r5ZTcnVVOKMApTcW", "purchaseTime": 38, "purchaseToken": "wEPTvzwwGnpbx8MC", "region": "IjKzylqW8auyseP9"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'wEEyYAnHPp4XzVL5' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'McglFCrjxqqxAYqX' --body '{"currencyCode": "G2V3baMkZ9JCqBIk", "price": 0.7529103628349105, "productId": "ID0EE9InZNLwwAhW", "serviceLabel": 3}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'UnUEOyP0cPZf5Ovo' --body '{"currencyCode": "lfI0mqZctohLheRa", "price": 0.6903287741994375, "productId": "kfMLFW9B7jHZro4h", "serviceLabels": [96, 46, 15]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory '8iYUOtG5gbQSKW2M' --body '{"appId": "dgCH4bWxRF6fBPa6", "currencyCode": "GOuV5z0p8jaJs2du", "language": "xRIA_SwXq", "price": 0.7046844880393746, "productId": "qNbF5yLnYSa8xFLv", "region": "cYexMMMiDFh5RbW0", "steamId": "21cHN3QbzVuJZH3k"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '54cExxWKtdGTW4FI' --body '{"gameId": "Lotv5ycTa0i6ifYP", "language": "XFa", "region": "jsy3VRjX4qA4g9OG"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'oWw1qnCAvdnAcokJ' --body '{"currencyCode": "0rzqX2KJcYHgiFDx", "price": 0.039158328746780935, "productId": "lBXap6j73doCWxhu", "xstsToken": "bMXbxNvT6wAffv4u"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'zKAwiI4wTxNIefCm' --login_with_auth "Bearer foo"
platform-public-create-user-order 'trxWu293551nQBNK' --body '{"currencyCode": "cqCkUXRj8gQHEe4C", "discountedPrice": 83, "ext": {"xoPYvdIBJYyGURjE": {}, "jnslEYM8ngVT1ewV": {}, "xvgAocOqsd5v5n7e": {}}, "itemId": "XCo9gZWdxfIdW8fN", "language": "JnN_654", "price": 74, "quantity": 65, "region": "2Q0WwolQy037hJMO", "returnUrl": "Ev5W0v25yAObZIbr", "sectionId": "A8XAKKWMDebehSjp"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 't0wrfWPXaI1Jb75o' '2MFOa6xgPt69QROG' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'DeJCyHvUsnLvXCSg' 'QHvs25eiQO3oWdgX' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'dm1IxL1OtleUBqBO' '0Ze049k9W6ZLVJzR' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'pUsITfVruDukun42' 'zPZvOd4yZyMKyED3' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'qDO5HXp5oVkhESbH' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'Q7hvTlzf7XwQtVIY' 'paypal' '7NgjDMcJxfMfYFlt' --login_with_auth "Bearer foo"
platform-public-list-active-sections '3JvDgMiyBGygWFTA' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'Y3Th5mOwPCPKVPlO' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'GfFBlu2ZP0IkiYXG' --body '{"currencyCode": "k6BoBmSLi0R7zDFM", "itemId": "oNTQmlS8lMlY8Ujp", "language": "iHI-Hray_219", "region": "rtVJZVhxCVdjPutJ", "returnUrl": "8dkAVOJ5imghdfVh", "source": "jnjd66A1SQmWGSQL"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'AVPAJ7zX5lB80k2s' 'mdkBS2MaIP7PjngE' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'Fggq91cpgvoDBgYf' 'LBdGNAZEvbvxqa0K' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account '7VUbjUnzirnEsxSE' '4vBzG7VK8sWEshmZ' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'f5fEdvjbyJPQ1qdR' 'cJjsme1OukIfIZVH' --body '{"immediate": false, "reason": "q8svV5hMOSfpyJkJ"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'lmJmTkFvB7wkY6nu' 'UEGJ3k0HGtpK43uO' --login_with_auth "Bearer foo"
platform-public-list-views 'RGREOOwTuY8dhNCD' --login_with_auth "Bearer foo"
platform-public-get-wallet 'WWpN3B6tedgFUzBm' '5vGA3itKaF9z3WWu' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'v3j8T9g1f6P3D3rV' 'cC2g6t42jE1Wad23' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 '2YV7A2zHFGbN8AQa' --body '{"itemIds": ["Caw9UF7cdSDd99DQ", "Z7vnTx8HDXTJWiyw", "17ogzmbj4SLYDrZJ"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'vDLGvn6qtroZcp16' --body '{"metadata": {"HKXX1ft5nBA9xNIJ": {}, "VuMz04evSdE2FMcK": {}, "d7c94rEmIYuAT5OA": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "FpULIn21Nf2FNgDW", "namespace": "NC6yh7kgTHlrxKbs"}, "item": {"itemId": "V4XtrI7SFBEgkwHi", "itemSku": "fMHYI581HbF7fMX9", "itemType": "lDXYxGRJM92eX42W"}, "quantity": 100, "type": "ITEM"}, {"currency": {"currencyCode": "2WKf5urEOpASBicX", "namespace": "3ZwzZ7aVhrkmhSOE"}, "item": {"itemId": "ozGOv8D0iVxzrec5", "itemSku": "kNwJAxm0Rdm9l6nI", "itemType": "hG5SilDDIsmj4h62"}, "quantity": 69, "type": "CURRENCY"}, {"currency": {"currencyCode": "U9GcOivIfcCJt4U8", "namespace": "VSgXoi9Fw25b9qXz"}, "item": {"itemId": "lIK2G6AUjBCdf0Rp", "itemSku": "5e5IvFuN1oUsCnBm", "itemType": "GMx5F6EhM3dKvIG9"}, "quantity": 78, "type": "CURRENCY"}], "source": "EXPIRATION", "transactionId": "c1NgZaoYAaCCeRgt"}' --login_with_auth "Bearer foo"
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
echo "1..423"

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
    'stsU3Qecxo4bQZO3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'P2f8TTOVf6jrr1OL' \
    --body '{"grantDays": "606QpqCgxt0NgDSj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    '1T6EdeYFmrLT0Hbv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'S4kSSt3CyDgf6eFA' \
    --body '{"grantDays": "iqSkHi0BR2ElF6z6"}' \
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
    --body '{"clazz": "eJKuOW61akRFizqx", "dryRun": true, "fulfillmentUrl": "R03RovQZhwfjkq9i", "itemType": "LOOTBOX", "purchaseConditionUrl": "b2I2yBJeCJghTrk6"}' \
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
    'FWFzuLBdlrKjUbgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'Qfw6Zys3mN8fIcC9' \
    --body '{"clazz": "CkharfqaoMsGyv1R", "dryRun": true, "fulfillmentUrl": "ntCNiHBRUNCPSre5", "purchaseConditionUrl": "GmZzCQwilS3IxSjl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'yvR9PxG9Lji2Vc88' \
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
    --body '{"description": "W8aLjIxVGpdOqgux", "items": [{"extraSubscriptionDays": 44, "itemId": "fM2mGUUpq3ix7Am7", "itemName": "W1fwJnV94BrMSP31", "quantity": 47}, {"extraSubscriptionDays": 45, "itemId": "AkVH75UcmNXK5Rqc", "itemName": "Io9lpz9oM52vHPlw", "quantity": 99}, {"extraSubscriptionDays": 62, "itemId": "V3jlPKDEYahnlLJa", "itemName": "LCvjRKKX1brmkJDf", "quantity": 6}], "maxRedeemCountPerCampaignPerUser": 3, "maxRedeemCountPerCode": 28, "maxRedeemCountPerCodePerUser": 94, "maxSaleCount": 12, "name": "wBufUorJouduhCEJ", "redeemEnd": "1999-11-05T00:00:00Z", "redeemStart": "1975-08-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["E9YugcupLxVBcRkf", "hRuqkOTHSia7oFd1", "fEmDuyAsQGzwJR5p"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'NIligBrOkBljwREN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'jt04ZpyTTZG1LxLd' \
    --body '{"description": "ySvyVqY8nxBZbHcP", "items": [{"extraSubscriptionDays": 68, "itemId": "hOPVVFqVqxjq1iG3", "itemName": "TySOh8SI75oXbyq8", "quantity": 64}, {"extraSubscriptionDays": 68, "itemId": "Bbur80QwnlgAVfqz", "itemName": "6gQJh8sn0bVWRkvm", "quantity": 55}, {"extraSubscriptionDays": 96, "itemId": "emh8lioBR7xTXcEI", "itemName": "Fod3lCzvjHzDHOrS", "quantity": 73}], "maxRedeemCountPerCampaignPerUser": 21, "maxRedeemCountPerCode": 43, "maxRedeemCountPerCodePerUser": 47, "maxSaleCount": 3, "name": "UAj3jzZvEaY103YU", "redeemEnd": "1988-06-20T00:00:00Z", "redeemStart": "1990-02-01T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["WAFT7l0l1jaOAMCz", "bsoIgmKwwMDQPjUI", "osq1l6xo0D4JRbNq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'O6IuP2PY5hhX6uNa' \
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
    --body '{"appConfig": {"appName": "h9JoHPj7jFWxSv1l"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "PnVeFdy5ezlCU6SG"}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "OLw8C1c5bBB3XZ7C"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "qEmXn6U2VeV2emK3"}, "extendType": "APP"}' \
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
    'GlD40xxIyVwYjn6d' \
    --body '{"categoryPath": "lC9Kfh9gHuloyce0", "localizationDisplayNames": {"cLJu4ljPWlCWTuGO": "8MnfOQu3wdT4Aodp", "95o1RkX7iW7VpCng": "WAv5DAG8dPdkKgQq", "jyzUZR2rFIAuALNh": "NCyscsMBRLsWadk2"}}' \
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
    'OQ421q7Nb1vrKthV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'vU5on065ApCkVN3Q' \
    'chuQ6pntxB648ss7' \
    --body '{"localizationDisplayNames": {"rBnvQHAM8gSdIybK": "UByHBzfvgtRTPPzw", "JmKaLCx3gcidEALW": "e6RG5wWznu5AjwR1", "Z4fU7ICcaQtuuKUw": "3dUwWHhQW3I1y9tj"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'RLVOXBMa0JiIe1AY' \
    '0tUA7EKASk3USNLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'OBlxRBLgohp8ByTi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '2F6AyUX8w77riPlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'gJcLbeQf9MICxX7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'KyCfgwSPz14asyOd' \
    --body '{"quantity": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'Zg30pagfP0FfOMBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'peQT4zYIbU4i9mLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'X46Alt08rrnG8y2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'cXkwjpAp82pGcxvX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'aG9LzHpMS53jllop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'wirRo3A8WxnR0YaM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'sF3f5KLtpTSsPMGD' \
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
    --body '{"currencyCode": "ZTOwEP5Bhh0NStWI", "currencySymbol": "ggmhfAzVdNYP7Ao1", "currencyType": "VIRTUAL", "decimals": 66, "localizationDescriptions": {"FeJM2fWXGk7JObSH": "ksRkabpmvRsc7ZYv", "XCT6m6mRZAlLBczJ": "Veil7GbG1ISBCkcn", "pxKUxLjmxhBS6Yyp": "RW7fNntaIEtDI6Mb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'hxkQdezbmf392ers' \
    --body '{"localizationDescriptions": {"oZ2KbMb5jal0ruZm": "BXlGSp85q6fuGfo5", "wSDHnyabk493I3pv": "HKDaWhTN1qyxpUzW", "IZWJTDzWguhujw1E": "oR58uCVldefonHJZ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'AiX4abmqqi90KTWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    'Zk0HGeJNaBjVdMB5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'kMzKycYrhr4FnNzd' \
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
    --body '{"data": [{"id": "T4pWwIVXp9avUr6I", "rewards": [{"currency": {"currencyCode": "ydpXW0MO0eT9okl6", "namespace": "MlWOl9feWO2bmOik"}, "item": {"itemId": "TBJHTEm5PSeyod5L", "itemSku": "6OooYoQn9iHEqWO1", "itemType": "cVCUIOx90FQdwLi3"}, "quantity": 66, "type": "ITEM"}, {"currency": {"currencyCode": "QkLtpuRNeT1CULEM", "namespace": "PaOU5nukycAUlkUS"}, "item": {"itemId": "ZKUrsxNRzF3NaUuC", "itemSku": "yQyze6zPKu5sE89J", "itemType": "W8UU0RsB6dvrpmIn"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "HYzVVlHGFSwjby6r", "namespace": "MYkVQnZDUAbINRKQ"}, "item": {"itemId": "sxUO1YMxAndOj5O6", "itemSku": "IBwXJjgQjgLoJyqw", "itemType": "FVBd1ZjaRXEdWgS1"}, "quantity": 3, "type": "CURRENCY"}]}, {"id": "EuXQACDDQryNf9VG", "rewards": [{"currency": {"currencyCode": "xbOeJe4n9eUlBQZ2", "namespace": "UGePWXbAyGiXa9nU"}, "item": {"itemId": "sHCVicuJ7onrUXVl", "itemSku": "B6xNel4Bxb9KwFYq", "itemType": "dhEVq3hbsApeASfR"}, "quantity": 84, "type": "CURRENCY"}, {"currency": {"currencyCode": "ZuqdJBi8pkn98VtL", "namespace": "NkaIQJfkFDhSeSGX"}, "item": {"itemId": "tZU5SuIhMSaDRp17", "itemSku": "dUWHcjrb6qNeKpOx", "itemType": "PrlG9svdqsiVTqPb"}, "quantity": 53, "type": "CURRENCY"}, {"currency": {"currencyCode": "Y1yxl7zeEpmSPO6K", "namespace": "wlJQlj9Ii2jARwzo"}, "item": {"itemId": "wk9OoiPdnq9KBqBw", "itemSku": "iNCsnK8CcO1OHbpQ", "itemType": "ZtwW3EwLre1bL4dJ"}, "quantity": 27, "type": "CURRENCY"}]}, {"id": "kRLJbMvOGSd7uMrm", "rewards": [{"currency": {"currencyCode": "Q2SaLd6M7TM3wnJy", "namespace": "Exuo5z9RAcYgYZb7"}, "item": {"itemId": "cAakJpqN6eubdp49", "itemSku": "JFwXG0EvoSHNC97e", "itemType": "EyhnL1QH5AlYRAqC"}, "quantity": 55, "type": "CURRENCY"}, {"currency": {"currencyCode": "C2gy1WF9QLNgDxAk", "namespace": "wgfB8jIecOx5ugNC"}, "item": {"itemId": "Dd6jW6fjtBcO3fWq", "itemSku": "9qfmBv0XgJB6a7uy", "itemType": "kADFpinFcH2ZMSYi"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "Zsf2dvKZyHChRPHv", "namespace": "dkcKW21B5EFtD2pY"}, "item": {"itemId": "aKTz1gcE2XCwTkRU", "itemSku": "IX6IFHNmB9mYBvtO", "itemType": "wxjqyrjDApeN5eAf"}, "quantity": 90, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"gH5xIuBTYOdsvNyk": "52MQFkVVEf36S7yP", "gG48bk6PwH1tdEAJ": "SqXA0Wv0zWGvkc6b", "yp3mvyYT3GuaZVTx": "Blw1IWeXKFT4rfSb"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"BTVmBFZ6TIs9bTi2": "m7eNsYEqKkeuLWDf", "eFeExlOFjRh8mLFT": "JLveQSDWnMQGaYRx", "FWia7yJ2d87XjA0a": "jvb7JcGUFgp6LkyX"}}, {"platform": "OCULUS", "platformDlcIdMap": {"ikq83hqJ7HP63Se6": "kVW5fkl60ImLBv6n", "UU0r1rfX9stpvJUu": "yPdzx8BM2wEgTtLR", "T5stwQFUEbTPQ8p7": "VMlxEXnqHwMyKpwp"}}]}' \
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

#- 61 GrantEntitlements
$PYTHON -m $MODULE 'platform-grant-entitlements' \
    --body '{"entitlementGrantList": [{"endDate": "1974-05-25T00:00:00Z", "grantedCode": "jUXvM1GqMkZ44UXg", "itemId": "dBqtJaRyDlP9qIZJ", "itemNamespace": "5Krx6KkHagEugKJx", "language": "vL-dXqg_Ns", "quantity": 81, "region": "dq8BgAI81k4Gr7jV", "source": "REDEEM_CODE", "startDate": "1996-08-15T00:00:00Z", "storeId": "l3yrH9HR4reG0HwU"}, {"endDate": "1996-07-07T00:00:00Z", "grantedCode": "tdBjKmCBXETZwqdz", "itemId": "AX28DikGk8cWiX44", "itemNamespace": "azSHcwicUVq2XPlj", "language": "BJUU-uNtJ", "quantity": 4, "region": "J4qy4PIKleuV271b", "source": "PURCHASE", "startDate": "1987-01-31T00:00:00Z", "storeId": "4niLSzQnv0C00dtN"}, {"endDate": "1987-09-27T00:00:00Z", "grantedCode": "8vAlmfGg9NO1Z2Dv", "itemId": "nAxH3pS3jyCkGKlt", "itemNamespace": "BNE2UbhNtH3yYg4Q", "language": "OW_Wr", "quantity": 59, "region": "4JI4H7uDzkOHTdnU", "source": "PURCHASE", "startDate": "1979-01-31T00:00:00Z", "storeId": "rkyJFOVaewFcv9h3"}], "userIds": ["dt2K1CzpQWslNGnL", "1YxuZnoSesWpLUHj", "GaIcZN28gH4Cd9xT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["YUYR0yOvJhUjzcMt", "wINUlrhIpnlam2Ee", "fVopbpPhsana0uXG"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    '7GUTV1BwgkLDj4pj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetEntitlement' test.out

#- 64 QueryFulfillmentHistories
$PYTHON -m $MODULE 'platform-query-fulfillment-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'QueryFulfillmentHistories' test.out

#- 65 QueryIAPClawbackHistory
$PYTHON -m $MODULE 'platform-query-iap-clawback-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'QueryIAPClawbackHistory' test.out

#- 66 MockPlayStationStreamEvent
$PYTHON -m $MODULE 'platform-mock-play-station-stream-event' \
    --body '{"body": {"account": "VktyoNSsEHlzyd0S", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 0, "clientTransactionId": "U2xBSEQ8rBKc2K6o"}, {"amountConsumed": 72, "clientTransactionId": "ESFLD8hCc9onSNjb"}, {"amountConsumed": 87, "clientTransactionId": "TKUvR69PImy6Ccwl"}], "entitlementId": "qJ4MO3L8x1H5OgzH", "usageCount": 50}, {"clientTransaction": [{"amountConsumed": 74, "clientTransactionId": "pgsSeKCvtPz7jagB"}, {"amountConsumed": 67, "clientTransactionId": "y3klHuAGnidOyGuS"}, {"amountConsumed": 64, "clientTransactionId": "OG7ohiL2943ClrNh"}], "entitlementId": "Edxd24ZKfvMf1T5F", "usageCount": 53}, {"clientTransaction": [{"amountConsumed": 68, "clientTransactionId": "YMf1jaCgZosntPzP"}, {"amountConsumed": 54, "clientTransactionId": "vXXB92q150WEIetO"}, {"amountConsumed": 39, "clientTransactionId": "Mt37MXy7Fp7lUfQq"}], "entitlementId": "XrqGadwvKlJFX1ZH", "usageCount": 97}], "purpose": "KqfqzeexHA70NgJT"}, "originalTitleName": "xjtzgO7W3taRvJ6l", "paymentProductSKU": "KWJwHO65aOFDwpqy", "purchaseDate": "7XOU3DwglyMGNll4", "sourceOrderItemId": "O8ELahcNJqRjepck", "titleName": "1l0qxRyQ2pi7xuAu"}, "eventDomain": "fJakIPXOQznHZTj8", "eventSource": "oYfWObyNJKVSQsaC", "eventType": "okoGynp6xcqNKJnA", "eventVersion": 15, "id": "AejyQc5Dac7hSLld", "timestamp": "Wx5DyniVESUgrROr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'MockPlayStationStreamEvent' test.out

#- 67 GetAppleIAPConfig
$PYTHON -m $MODULE 'platform-get-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetAppleIAPConfig' test.out

#- 68 UpdateAppleIAPConfig
$PYTHON -m $MODULE 'platform-update-apple-iap-config' \
    --body '{"bundleId": "P1ip3jNG68DByf2U", "password": "MPtigq9zOQOcAqBj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateAppleIAPConfig' test.out

#- 69 DeleteAppleIAPConfig
$PYTHON -m $MODULE 'platform-delete-apple-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAppleIAPConfig' test.out

#- 70 GetEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-get-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetEpicGamesIAPConfig' test.out

#- 71 UpdateEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-update-epic-games-iap-config' \
    --body '{"sandboxId": "0bXhOr9OHt6zx1i2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateEpicGamesIAPConfig' test.out

#- 72 DeleteEpicGamesIAPConfig
$PYTHON -m $MODULE 'platform-delete-epic-games-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'DeleteEpicGamesIAPConfig' test.out

#- 73 GetGoogleIAPConfig
$PYTHON -m $MODULE 'platform-get-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetGoogleIAPConfig' test.out

#- 74 UpdateGoogleIAPConfig
$PYTHON -m $MODULE 'platform-update-google-iap-config' \
    --body '{"applicationName": "W3GY7tdh8hHlQyMl", "serviceAccountId": "gfkTsAThLyflAqqA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateGoogleIAPConfig' test.out

#- 75 DeleteGoogleIAPConfig
$PYTHON -m $MODULE 'platform-delete-google-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteGoogleIAPConfig' test.out

#- 76 UpdateGoogleP12File
$PYTHON -m $MODULE 'platform-update-google-p12-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateGoogleP12File' test.out

#- 77 GetIAPItemConfig
$PYTHON -m $MODULE 'platform-get-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetIAPItemConfig' test.out

#- 78 UpdateIAPItemConfig
$PYTHON -m $MODULE 'platform-update-iap-item-config' \
    --body '{"data": [{"itemIdentity": "P4M78smYdyge6Dro", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ywOxI4G6jZzoYIFA": "vYfT8XQw2EOq6BFj", "mN4OqKGLRpNWzKZt": "Znxgywmr4CYNGm7T", "k1mMyeNRsjQuDEgO": "3MEQNL6ijLRvQOgo"}}, {"itemIdentity": "aBooTawHLMxhx9nC", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"o6pXU5MDJLCB6WbX": "WIRpgjooaBVemsbk", "aXZQ6nTj9rZpkSnt": "uOeaPAyPeEGBepK1", "Ix4SwjCYjCHniVSn": "1gYGal5NrBtT0om9"}}, {"itemIdentity": "OlGzpF25qu98Rhkt", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6qwkXbCLbh8t0zPk": "QWRUlgE0kxzFMq9t", "tbEHAEV7C65Ans9S": "quNSJIay5VdUdYy9", "Y9OCSmmT3WKijbqh": "T3uyQRXvvcUYDeWP"}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateIAPItemConfig' test.out

#- 79 DeleteIAPItemConfig
$PYTHON -m $MODULE 'platform-delete-iap-item-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteIAPItemConfig' test.out

#- 80 GetOculusIAPConfig
$PYTHON -m $MODULE 'platform-get-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetOculusIAPConfig' test.out

#- 81 UpdateOculusIAPConfig
$PYTHON -m $MODULE 'platform-update-oculus-iap-config' \
    --body '{"appId": "Z8yhwQ0gIdj1lTJd", "appSecret": "NLmAvEdEBVAU3rbk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateOculusIAPConfig' test.out

#- 82 DeleteOculusIAPConfig
$PYTHON -m $MODULE 'platform-delete-oculus-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteOculusIAPConfig' test.out

#- 83 GetPlayStationIAPConfig
$PYTHON -m $MODULE 'platform-get-play-station-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPlayStationIAPConfig' test.out

#- 84 UpdatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-update-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "v8V98cupW0L5Wsiu", "backOfficeServerClientSecret": "ITRMSPOUfWQwr4PY", "enableStreamJob": false, "environment": "dKp9q4nXuK0tJAYr", "streamName": "or2XdtSCG7ZExOoI", "streamPartnerName": "pWzacOvwUsnIbQM3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdatePlaystationIAPConfig' test.out

#- 85 DeletePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-delete-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeletePlaystationIAPConfig' test.out

#- 86 ValidateExistedPlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-existed-playstation-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'ValidateExistedPlaystationIAPConfig' test.out

#- 87 ValidatePlaystationIAPConfig
$PYTHON -m $MODULE 'platform-validate-playstation-iap-config' \
    --body '{"backOfficeServerClientId": "ZAtyEWKWoZRUL7wS", "backOfficeServerClientSecret": "3HaMTXAX6y0STTN2", "enableStreamJob": true, "environment": "wgSvsTRmJsOm0wVF", "streamName": "yHvFhRMCFJuA0DEM", "streamPartnerName": "gykqqjoHTpIPMSRA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ValidatePlaystationIAPConfig' test.out

#- 88 GetSteamIAPConfig
$PYTHON -m $MODULE 'platform-get-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetSteamIAPConfig' test.out

#- 89 UpdateSteamIAPConfig
$PYTHON -m $MODULE 'platform-update-steam-iap-config' \
    --body '{"appId": "uPI7mSZQ5UDm1q51", "publisherAuthenticationKey": "PlW2HG8LAiIzuo32"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateSteamIAPConfig' test.out

#- 90 DeleteSteamIAPConfig
$PYTHON -m $MODULE 'platform-delete-steam-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteSteamIAPConfig' test.out

#- 91 GetTwitchIAPConfig
$PYTHON -m $MODULE 'platform-get-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetTwitchIAPConfig' test.out

#- 92 UpdateTwitchIAPConfig
$PYTHON -m $MODULE 'platform-update-twitch-iap-config' \
    --body '{"clientId": "1Ll90IBFsSb3FsV2", "clientSecret": "PnCs9R0D5jZEwxco", "organizationId": "w6L7c3COEP4AZx70"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateTwitchIAPConfig' test.out

#- 93 DeleteTwitchIAPConfig
$PYTHON -m $MODULE 'platform-delete-twitch-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteTwitchIAPConfig' test.out

#- 94 GetXblIAPConfig
$PYTHON -m $MODULE 'platform-get-xbl-iap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetXblIAPConfig' test.out

#- 95 UpdateXblIAPConfig
$PYTHON -m $MODULE 'platform-update-xbl-iap-config' \
    --body '{"relyingPartyCert": "uwV4XgvGTMHkXeEw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateXblIAPConfig' test.out

#- 96 DeleteXblAPConfig
$PYTHON -m $MODULE 'platform-delete-xbl-ap-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'DeleteXblAPConfig' test.out

#- 97 UpdateXblBPCertFile
$PYTHON -m $MODULE 'platform-update-xbl-bp-cert-file' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'UpdateXblBPCertFile' test.out

#- 98 DownloadInvoiceDetails
$PYTHON -m $MODULE 'platform-download-invoice-details' \
    'uFJf7tbq5KikDE7h' \
    'WvT5bzcfzIpL2pWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    '4XsdrxIF6kEAmKGN' \
    'EmFPcUALNziO9Bz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'wx4kDAm8XIleiujt' \
    --body '{"categoryPath": "v2NdQTYoHZogW8lB", "targetItemId": "vniHdARadfSoctA3", "targetNamespace": "GYO94ZOo94gS5DHL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'B65fxQ06GwTmobiB' \
    --body '{"appId": "nfrnq9kOFBWhUTPi", "appType": "DEMO", "baseAppId": "R3qcbHLGplYsS3js", "boothName": "RZffCd00VrgPuNtO", "categoryPath": "v3jbhGBuW8KcyPMf", "clazz": "DWSEEpKoJlmhMQUC", "displayOrder": 49, "entitlementType": "CONSUMABLE", "ext": {"70QjYbzemOTURzzA": {}, "OIBarB7kcer5SvPL": {}, "eQZIpKFXgnsxx3c2": {}}, "features": ["bUsO7FP8RmOstZAG", "DgiVsV2OttwJaMxP", "DIJ5hFQHumFvPKqu"], "flexible": true, "images": [{"as": "GyieBsRUduW5lxSl", "caption": "orWEGN5bPGSOSiiI", "height": 39, "imageUrl": "CsAMTZC37xPXxnfg", "smallImageUrl": "gnZ3EZp6wSAufwYi", "width": 35}, {"as": "aZozM8xCBoaS2FMw", "caption": "fWNCbN5GelVOU0hH", "height": 26, "imageUrl": "gLZ7gEypQf2Pn9A4", "smallImageUrl": "gcbDJ0LmdnOPkIT1", "width": 58}, {"as": "JmzvM6JFKB8ikHpl", "caption": "3sNRaDEC2OkXA3Wq", "height": 51, "imageUrl": "3vkZt9FgWckjNpHh", "smallImageUrl": "M2ZXp4N0ROmUCTrS", "width": 81}], "itemIds": ["Gi9Iigk9vamO7Q2W", "QwSWqSs05rjISy4B", "0X9AJdkT7UYCV8ag"], "itemQty": {"vwOI2LlOQNRN132R": 6, "SQ8Szi1IrGidRmR5": 57, "3qlART9mPPmYUvlk": 57}, "itemType": "COINS", "listable": true, "localizations": {"PJFaFzkABC8zWMcY": {"description": "W5iRrw32FRg8y4rO", "localExt": {"uj7J6ijJbcycXmBc": {}, "rJLb7labyotifVk9": {}, "KyqceGv0CEDTVSjI": {}}, "longDescription": "NYeKLowG7UQB9pXz", "title": "uCK5qd2m8A5axixm"}, "9X9TXNhN8y1PVriI": {"description": "yv9kjuiAGiXx47et", "localExt": {"MikLFggYDc2FMbzZ": {}, "oeKagnKf2Yifzvr9": {}, "OqTsInGzHFpFXYJt": {}}, "longDescription": "HtqwoIwQBeIALI8J", "title": "NIII4jrzrPsuMziN"}, "M8AB7RRxiZH3ngni": {"description": "tURdMjZLYCaeklQc", "localExt": {"FY1QIk1h5EKvMGd6": {}, "hQ2mHjmLu4oFlReH": {}, "y0JyZv7honqeiGTT": {}}, "longDescription": "qpgVsY1kPNdJiJXB", "title": "3yjNUPIfvoXRO0Ck"}}, "lootBoxConfig": {"rewardCount": 100, "rewards": [{"lootBoxItems": [{"count": 94, "duration": 38, "endDate": "1997-11-01T00:00:00Z", "itemId": "cgUSbbnffBWRaJN1", "itemSku": "SjCFLDNJfAhJGwSY", "itemType": "EZjEb0Pv35fEk9s1"}, {"count": 12, "duration": 2, "endDate": "1987-06-01T00:00:00Z", "itemId": "kf7rQJ4Kj7Qyo9tU", "itemSku": "ptiyZzRX8Y4rxRWZ", "itemType": "Pe4ZLAQWuBJwxObZ"}, {"count": 34, "duration": 30, "endDate": "1990-10-10T00:00:00Z", "itemId": "Gxhffy9cHrLYffta", "itemSku": "d99JDcnn7f2d8SOW", "itemType": "P2dw6Uy88WpQalG3"}], "name": "8VOo82aLD9jUjuDI", "odds": 0.7330203607353477, "type": "PROBABILITY_GROUP", "weight": 48}, {"lootBoxItems": [{"count": 16, "duration": 88, "endDate": "1973-02-16T00:00:00Z", "itemId": "WRbmtK7MTxcCWnMi", "itemSku": "CLsjroKHPApA8GsG", "itemType": "wyocvY9NePjLJQJX"}, {"count": 46, "duration": 96, "endDate": "1978-08-10T00:00:00Z", "itemId": "wRFNYxx2dr6DDuDH", "itemSku": "XcfvXPXJURX3XwhO", "itemType": "lgcpcOIxqCMSpZxb"}, {"count": 50, "duration": 5, "endDate": "1999-12-09T00:00:00Z", "itemId": "J9vGOUeSeGb02vDP", "itemSku": "Upv5VEdIG82dpIbf", "itemType": "xVFfdvKQVgPQw3MV"}], "name": "Xe4xBPDWHRHCCVDB", "odds": 0.6989164438638124, "type": "PROBABILITY_GROUP", "weight": 83}, {"lootBoxItems": [{"count": 85, "duration": 29, "endDate": "1994-12-15T00:00:00Z", "itemId": "fvfXF1VsikD3IphQ", "itemSku": "QiRcOtsthUwgQzNH", "itemType": "UZ0l1FRfOjJUmCbi"}, {"count": 83, "duration": 23, "endDate": "1993-03-30T00:00:00Z", "itemId": "PwdzMSmrSvQdsAdT", "itemSku": "UGpd8KFrXKFA2gdj", "itemType": "QCYoE8b0CZetLfpF"}, {"count": 81, "duration": 86, "endDate": "1983-03-29T00:00:00Z", "itemId": "p7375rhOmR4zFjoJ", "itemSku": "ZVKZjOD2ePKAKYjJ", "itemType": "MVnYj2yKqavWpyde"}], "name": "pM3ap069B9Okr0xJ", "odds": 0.9275724296743241, "type": "PROBABILITY_GROUP", "weight": 88}], "rollFunction": "CUSTOM"}, "maxCount": 92, "maxCountPerUser": 97, "name": "4Y2zkGYTr9yJIveX", "optionBoxConfig": {"boxItems": [{"count": 12, "duration": 35, "endDate": "1979-07-14T00:00:00Z", "itemId": "6Inl9VTJB9Al3mn2", "itemSku": "DsHDHzSVJzhU5Z44", "itemType": "zgZ1fieLdl3Y82DO"}, {"count": 20, "duration": 56, "endDate": "1976-11-01T00:00:00Z", "itemId": "PuNRZZaUccuBYep9", "itemSku": "n7b17fsblalJrwQi", "itemType": "U3DD0xZFH1fHFLSr"}, {"count": 77, "duration": 83, "endDate": "1999-08-25T00:00:00Z", "itemId": "rEZTbFDj2L2McvCr", "itemSku": "rR7h9uKLXDaRf3px", "itemType": "KtJbRY5luCwKrt6w"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 65, "fixedTrialCycles": 98, "graceDays": 35}, "regionData": {"xpVrcoXzSOEGEDYf": [{"currencyCode": "iGPYo2K3dN3YBOJf", "currencyNamespace": "vV6SuHovoQlk5wL2", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1996-07-30T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1987-03-20T00:00:00Z", "expireAt": "1998-06-03T00:00:00Z", "price": 19, "purchaseAt": "1985-08-24T00:00:00Z", "trialPrice": 45}, {"currencyCode": "7suvgIUkB2PAGJqO", "currencyNamespace": "rkdlZB246OY0dPVM", "currencyType": "REAL", "discountAmount": 3, "discountExpireAt": "1998-10-31T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-08-28T00:00:00Z", "expireAt": "1975-07-06T00:00:00Z", "price": 98, "purchaseAt": "1983-09-11T00:00:00Z", "trialPrice": 84}, {"currencyCode": "QTpfyAIoF7qsANBb", "currencyNamespace": "EKQrgocpjGNenRlD", "currencyType": "REAL", "discountAmount": 90, "discountExpireAt": "1995-11-05T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1982-02-26T00:00:00Z", "expireAt": "1992-03-06T00:00:00Z", "price": 51, "purchaseAt": "1978-03-20T00:00:00Z", "trialPrice": 94}], "095rDL6lEuB1ZIMI": [{"currencyCode": "s1dFvYokH9t2u8ZZ", "currencyNamespace": "nyHKkk6Gh25tEcX9", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1987-02-21T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1986-07-30T00:00:00Z", "expireAt": "1977-09-05T00:00:00Z", "price": 35, "purchaseAt": "1997-07-13T00:00:00Z", "trialPrice": 52}, {"currencyCode": "R1wLTgjsnB2LFVrZ", "currencyNamespace": "RrOntm2KjbfCOuW3", "currencyType": "REAL", "discountAmount": 60, "discountExpireAt": "1985-10-10T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1997-09-14T00:00:00Z", "expireAt": "1974-07-06T00:00:00Z", "price": 92, "purchaseAt": "1994-03-21T00:00:00Z", "trialPrice": 83}, {"currencyCode": "6suS90ZbDdmjU11Q", "currencyNamespace": "IZtkSn8QRbA5V4gj", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1995-08-26T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1984-02-22T00:00:00Z", "expireAt": "1972-05-17T00:00:00Z", "price": 27, "purchaseAt": "1982-08-15T00:00:00Z", "trialPrice": 91}], "vtPd7ibBA3sd51mD": [{"currencyCode": "ooH53vibq3Qcrtt8", "currencyNamespace": "L5dIebsw7EjkMnJS", "currencyType": "VIRTUAL", "discountAmount": 17, "discountExpireAt": "1986-10-08T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1972-02-12T00:00:00Z", "expireAt": "1999-10-18T00:00:00Z", "price": 100, "purchaseAt": "1983-05-11T00:00:00Z", "trialPrice": 66}, {"currencyCode": "IMJdrqHIsJ98WRjq", "currencyNamespace": "YieXRthQZvzRi7pq", "currencyType": "REAL", "discountAmount": 72, "discountExpireAt": "1971-12-27T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1988-07-24T00:00:00Z", "expireAt": "1986-10-09T00:00:00Z", "price": 68, "purchaseAt": "1974-06-06T00:00:00Z", "trialPrice": 72}, {"currencyCode": "9TIkcnrJ64BOKqyw", "currencyNamespace": "S6DKNSeb2UMWOgVe", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1985-08-18T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1978-05-13T00:00:00Z", "expireAt": "1987-05-16T00:00:00Z", "price": 39, "purchaseAt": "1983-12-02T00:00:00Z", "trialPrice": 8}]}, "saleConfig": {"currencyCode": "5pEVG7sNihxpuuL7", "price": 61}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "5LijlQTVq8Bh1p0N", "stackable": true, "status": "ACTIVE", "tags": ["112byTYCDBnAvf8J", "WNkLU5ty3uQa7Fl3", "ZhSMLtrwnjTJVDlh"], "targetCurrencyCode": "pFuJSZistM75544P", "targetNamespace": "DlVK8taScpV0NtCx", "thumbnailUrl": "DDz5rxt6LflBJjok", "useCount": 78}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'twEYX55pJNTX1sDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetItemByAppId' test.out

#- 103 QueryItems
$PYTHON -m $MODULE 'platform-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'QueryItems' test.out

#- 104 ListBasicItemsByFeatures
$PYTHON -m $MODULE 'platform-list-basic-items-by-features' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'ListBasicItemsByFeatures' test.out

#- 105 GetItems
$PYTHON -m $MODULE 'platform-get-items' \
    'SWiSXsV5rJ8eZXZ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'TLMZnNL3DQK45IAt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'byUDDSJSV8pzl1lf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    'IR7jnetIJPGObyWC' \
    'LyFPHaxkKxEDvSoi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    '2X9SygvMG8QAaWUh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'GetItemIdBySku' test.out

#- 110 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetBulkItemIdBySkus' test.out

#- 111 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    'IguMvKDOrx0wQXKE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'BulkGetLocaleItems' test.out

#- 112 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'GetAvailablePredicateTypes' test.out

#- 113 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'royKz2reP63EVHT7' \
    --body '{"itemIds": ["2VuhoGP2IFXGU5hu", "jEfCMt95DEjxqhgY", "qmMqIdlRrQmuILke"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'RUafUDP5b6BWfm7c' \
    --body '{"changes": [{"itemIdentities": ["YCpDIJG42ILhUoCh", "8lmKKocC5Ea29Jhf", "FGN964J8WOgsAj2R"], "itemIdentityType": "ITEM_ID", "regionData": {"8unXv1iE7YgEZspO": [{"currencyCode": "J0NiZl6OVLxKtkBp", "currencyNamespace": "aCG8Nu5m4ctwUNV8", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1972-08-28T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-01-15T00:00:00Z", "discountedPrice": 14, "expireAt": "1971-03-27T00:00:00Z", "price": 73, "purchaseAt": "1998-08-29T00:00:00Z", "trialPrice": 1}, {"currencyCode": "CuIeEStt3PbyctX7", "currencyNamespace": "HC2haQwVWONEpAPe", "currencyType": "REAL", "discountAmount": 69, "discountExpireAt": "1984-10-11T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1998-07-29T00:00:00Z", "discountedPrice": 97, "expireAt": "1972-07-29T00:00:00Z", "price": 24, "purchaseAt": "1979-05-17T00:00:00Z", "trialPrice": 66}, {"currencyCode": "iyEJIQcbZJJ3Ahkr", "currencyNamespace": "Mi0bnppEJFISze88", "currencyType": "VIRTUAL", "discountAmount": 68, "discountExpireAt": "1988-09-05T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1979-04-28T00:00:00Z", "discountedPrice": 4, "expireAt": "1986-03-12T00:00:00Z", "price": 52, "purchaseAt": "1976-11-14T00:00:00Z", "trialPrice": 73}], "mMgoMxZZ9AutWDfV": [{"currencyCode": "OINhql9CdDX4xiHp", "currencyNamespace": "dfKH35RWUUVEHCB5", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1984-09-11T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-04-25T00:00:00Z", "discountedPrice": 39, "expireAt": "1990-10-10T00:00:00Z", "price": 70, "purchaseAt": "1994-05-19T00:00:00Z", "trialPrice": 44}, {"currencyCode": "AwjAsgo51XHJBG2P", "currencyNamespace": "myeFaBiT3SyLHXZS", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1996-03-17T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1977-03-28T00:00:00Z", "discountedPrice": 100, "expireAt": "1982-04-12T00:00:00Z", "price": 26, "purchaseAt": "1976-06-01T00:00:00Z", "trialPrice": 11}, {"currencyCode": "9SPaHlqtDPry2vMO", "currencyNamespace": "N7sdhlilfpDT8o2i", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1977-06-13T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1987-02-12T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-01-10T00:00:00Z", "price": 57, "purchaseAt": "1980-01-18T00:00:00Z", "trialPrice": 75}], "rvsV2I4X26p21iDB": [{"currencyCode": "ZGJ8ZMLwPJ871nV5", "currencyNamespace": "ALS7cneNLItUJgh7", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1983-10-11T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1983-03-25T00:00:00Z", "discountedPrice": 55, "expireAt": "1994-10-03T00:00:00Z", "price": 90, "purchaseAt": "1976-07-14T00:00:00Z", "trialPrice": 59}, {"currencyCode": "VhCbXbeBEoTlfR33", "currencyNamespace": "jqIRoXcCPaLXJM2B", "currencyType": "REAL", "discountAmount": 79, "discountExpireAt": "1995-04-27T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1975-08-09T00:00:00Z", "discountedPrice": 21, "expireAt": "1991-05-31T00:00:00Z", "price": 99, "purchaseAt": "1987-10-10T00:00:00Z", "trialPrice": 75}, {"currencyCode": "T9TLnuMLNJAEk3A6", "currencyNamespace": "A6rYiIu8eLdWykhB", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1990-05-02T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1977-04-11T00:00:00Z", "discountedPrice": 74, "expireAt": "1971-04-24T00:00:00Z", "price": 38, "purchaseAt": "1993-01-19T00:00:00Z", "trialPrice": 59}]}}, {"itemIdentities": ["ayqmp7vhz1T6cSrZ", "L2CgHxdmYDj9vZNg", "fI1AeYHe8WPQGPcl"], "itemIdentityType": "ITEM_SKU", "regionData": {"HphqjHGGAhfWaXqk": [{"currencyCode": "A5fuVYOsMFo9tnqa", "currencyNamespace": "4LEWGg1r4nW4pBcP", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1992-03-07T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-11-19T00:00:00Z", "discountedPrice": 16, "expireAt": "1978-11-15T00:00:00Z", "price": 13, "purchaseAt": "1972-05-28T00:00:00Z", "trialPrice": 80}, {"currencyCode": "xUjGPKKLMoAy1stm", "currencyNamespace": "xPFz0i1IK3QzkcRw", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1971-05-12T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1996-03-24T00:00:00Z", "discountedPrice": 67, "expireAt": "1996-04-02T00:00:00Z", "price": 22, "purchaseAt": "1988-12-29T00:00:00Z", "trialPrice": 90}, {"currencyCode": "xtY97TMJH8bO4GDH", "currencyNamespace": "T6ZaUUkvlTKAhrxq", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1976-02-14T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-01-14T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-10-12T00:00:00Z", "price": 81, "purchaseAt": "1985-03-20T00:00:00Z", "trialPrice": 13}], "zlcxXsmGGcJhauxf": [{"currencyCode": "hVKIbRvUnyElHPuQ", "currencyNamespace": "E3Gc8bY4IH0OXHZP", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1979-05-23T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1981-09-01T00:00:00Z", "discountedPrice": 69, "expireAt": "1996-11-10T00:00:00Z", "price": 96, "purchaseAt": "1994-10-06T00:00:00Z", "trialPrice": 81}, {"currencyCode": "dkv8vxyg6giNKzeF", "currencyNamespace": "nlgGRgYK3SeYvULY", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1980-06-19T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1992-07-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1987-10-16T00:00:00Z", "price": 25, "purchaseAt": "1972-02-20T00:00:00Z", "trialPrice": 73}, {"currencyCode": "ofq7nlF5Ch8J2Qs9", "currencyNamespace": "90APOU4hcdwlnsTa", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1994-10-19T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1979-09-30T00:00:00Z", "discountedPrice": 4, "expireAt": "1981-06-08T00:00:00Z", "price": 27, "purchaseAt": "1997-01-12T00:00:00Z", "trialPrice": 76}], "1sZnYF3hWmCCIrP0": [{"currencyCode": "lJXexseo2e6BCNJT", "currencyNamespace": "TRIHDKdVfOUr14yZ", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1998-04-13T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1981-11-13T00:00:00Z", "discountedPrice": 46, "expireAt": "1980-12-27T00:00:00Z", "price": 10, "purchaseAt": "1975-04-25T00:00:00Z", "trialPrice": 0}, {"currencyCode": "m4MnOqnqNerQoHiD", "currencyNamespace": "IJayvSNt8EQXsMbY", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1998-07-19T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1983-10-13T00:00:00Z", "discountedPrice": 50, "expireAt": "1986-01-22T00:00:00Z", "price": 16, "purchaseAt": "1986-06-09T00:00:00Z", "trialPrice": 43}, {"currencyCode": "yhjZSeDCKT4ilZB8", "currencyNamespace": "apDTR3aL9sunWp7V", "currencyType": "VIRTUAL", "discountAmount": 59, "discountExpireAt": "1994-10-31T00:00:00Z", "discountPercentage": 49, "discountPurchaseAt": "1977-07-22T00:00:00Z", "discountedPrice": 0, "expireAt": "1977-02-20T00:00:00Z", "price": 64, "purchaseAt": "1975-01-06T00:00:00Z", "trialPrice": 56}]}}, {"itemIdentities": ["JMIjgzU02nZWwBdE", "FpfccauYDc86pxK9", "KhF4KRVPoIuzAuQN"], "itemIdentityType": "ITEM_ID", "regionData": {"bI0NDshb7ZzQuBPy": [{"currencyCode": "Ni1GhZHEj6p5grjk", "currencyNamespace": "5wzdksOUku8dtQoI", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1980-06-27T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1997-11-08T00:00:00Z", "discountedPrice": 40, "expireAt": "1998-02-14T00:00:00Z", "price": 8, "purchaseAt": "1996-12-18T00:00:00Z", "trialPrice": 51}, {"currencyCode": "UV5SMZ8GUvWZvoCm", "currencyNamespace": "prkv7A8MRutCKCsq", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1983-05-12T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1984-12-09T00:00:00Z", "discountedPrice": 36, "expireAt": "1977-03-11T00:00:00Z", "price": 46, "purchaseAt": "1991-12-16T00:00:00Z", "trialPrice": 67}, {"currencyCode": "w8J7na1POTXhXLRU", "currencyNamespace": "5prAdqnnPOiTVzAe", "currencyType": "REAL", "discountAmount": 34, "discountExpireAt": "1981-03-18T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1997-04-19T00:00:00Z", "discountedPrice": 15, "expireAt": "1996-10-17T00:00:00Z", "price": 10, "purchaseAt": "1978-05-06T00:00:00Z", "trialPrice": 65}], "Yoe2uHaWnO98YwqH": [{"currencyCode": "ZnEDkfmNbDTMGgET", "currencyNamespace": "2yS6C8a8L0vQDS4E", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1985-04-12T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1980-01-29T00:00:00Z", "discountedPrice": 95, "expireAt": "1977-07-27T00:00:00Z", "price": 50, "purchaseAt": "1983-03-12T00:00:00Z", "trialPrice": 21}, {"currencyCode": "Gr4XEm0uYYuAmqhf", "currencyNamespace": "tIfe2zdqZ7ht1vUi", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1976-11-15T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1978-07-21T00:00:00Z", "discountedPrice": 62, "expireAt": "1996-05-02T00:00:00Z", "price": 38, "purchaseAt": "1993-11-15T00:00:00Z", "trialPrice": 15}, {"currencyCode": "oHNalwgvju62rPFM", "currencyNamespace": "bE1cW57GaNZLT1z0", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1982-03-13T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1987-02-13T00:00:00Z", "discountedPrice": 25, "expireAt": "1980-02-05T00:00:00Z", "price": 69, "purchaseAt": "1984-11-30T00:00:00Z", "trialPrice": 37}], "hVy48YYg1AkRh3Nm": [{"currencyCode": "bRhMxKeIgwq1NZmx", "currencyNamespace": "a0ghRG020QpWTNKs", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1977-10-29T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1996-09-03T00:00:00Z", "discountedPrice": 27, "expireAt": "1995-05-05T00:00:00Z", "price": 72, "purchaseAt": "1995-12-27T00:00:00Z", "trialPrice": 4}, {"currencyCode": "6GKY0BrHiWs0B0Rh", "currencyNamespace": "xQtgVgbN8kr872hJ", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1989-11-28T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1985-01-25T00:00:00Z", "discountedPrice": 6, "expireAt": "1997-07-29T00:00:00Z", "price": 32, "purchaseAt": "1986-02-16T00:00:00Z", "trialPrice": 70}, {"currencyCode": "2RHt3uQ5nFrPXwxJ", "currencyNamespace": "ZQpkeDHr0hjKBpDM", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1989-06-27T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1991-02-13T00:00:00Z", "discountedPrice": 65, "expireAt": "1992-10-18T00:00:00Z", "price": 31, "purchaseAt": "1993-12-11T00:00:00Z", "trialPrice": 36}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'IcYMBktqqAAF6YG1' \
    'dD1vECBb01VFFhO5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'SearchItems' test.out

#- 116 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'QueryUncategorizedItems' test.out

#- 117 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'FcdTvIDQI2uIi2SN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'ZKqlJZsdnY04DIyo' \
    'sprZPBaERb7U9kK4' \
    --body '{"appId": "VctUmDhFVNa0JYzT", "appType": "DEMO", "baseAppId": "3Y0EshaG0uDiJNUu", "boothName": "xK22saWaGvrzBdLv", "categoryPath": "FUBZDnVrcwbsD0RD", "clazz": "LxWgEWwoHpV8E1xQ", "displayOrder": 77, "entitlementType": "DURABLE", "ext": {"a7Kw77UpCxNyx1jj": {}, "dxNePPAJ6Z9UzqIh": {}, "ZZiK0QEG6C9w4lVR": {}}, "features": ["NOF1Bg6OHZzvdZHo", "Im4tKNhPjNIQGFxG", "wgnSiZtChE0uof77"], "flexible": true, "images": [{"as": "y9ahS7h7XVlmc5Rs", "caption": "5FVQSIqObR55tV0B", "height": 23, "imageUrl": "MeG3qYJr6PuCVK9W", "smallImageUrl": "mDAdpLVTVsj9pDiy", "width": 50}, {"as": "CUREDdoGatGQ1SeO", "caption": "Xsg4jofp9PvlQ1xd", "height": 24, "imageUrl": "vOSvpmZZdlNXdx2k", "smallImageUrl": "WmSqodNZgfQyDVVk", "width": 21}, {"as": "aWj58Othvd3jzMDA", "caption": "f40gKSizvmxts5HS", "height": 87, "imageUrl": "yIwgQS9kVFUbeTeB", "smallImageUrl": "9KgnFZQ9lVMNyCiy", "width": 40}], "itemIds": ["jV7NTRYld9FJJ10g", "oNq8uq79Du28SRRA", "MaQFEzppeticckSU"], "itemQty": {"on7awfol07696uxp": 57, "ieMjjOfFSx3AJN97": 21, "vbC9NfLTFJGOzAIA": 34}, "itemType": "COINS", "listable": true, "localizations": {"os6QiHyrcGeRv27h": {"description": "j73EtufHuNIp0GXp", "localExt": {"M4nbG7aww2TANW1O": {}, "r7TvLoL0wwHoRMNe": {}, "xBOron8wIdUbp7xV": {}}, "longDescription": "MKfbAJfW4iMIC52N", "title": "UedhhkME18qGpSsy"}, "EPDWHcqfYp2EFxEa": {"description": "EHCGtg812NQb5Glh", "localExt": {"8srTlTj61WdV2XUo": {}, "1BO1rE7E12Fapao5": {}, "jo9nJoKEb8tHmFwL": {}}, "longDescription": "Gan2SrKckNxLWH6r", "title": "jhRL9uxoV5Oe8ktl"}, "ePEo1xBuRSv6Vizg": {"description": "tOXZy9cQ6B074dTJ", "localExt": {"ZqeOllKQNwJUGtC0": {}, "tAhxn1ay6ruu7PYW": {}, "HODRb6skOj0lfYFG": {}}, "longDescription": "nQCAWidWPjYgyebU", "title": "6rHFirnUpZ9UJ4N7"}}, "lootBoxConfig": {"rewardCount": 34, "rewards": [{"lootBoxItems": [{"count": 75, "duration": 68, "endDate": "1975-12-20T00:00:00Z", "itemId": "Gdn7gE4bwLzDEw2P", "itemSku": "Yt8x9SSaOZcEvG6K", "itemType": "Zh954BmtuIFllfSU"}, {"count": 28, "duration": 47, "endDate": "1971-09-18T00:00:00Z", "itemId": "hC4x11AS2jTKoTYe", "itemSku": "HaCuN7zpX9vp4QJd", "itemType": "Crwkz0nw2oxKye8j"}, {"count": 23, "duration": 34, "endDate": "1976-03-19T00:00:00Z", "itemId": "kBxiXf8OBQRqXWXQ", "itemSku": "3JdXdFz8pc0EEziE", "itemType": "5yIvijq9ix16vo60"}], "name": "jgvwV3C9hJ1kSZon", "odds": 0.5879359503798786, "type": "PROBABILITY_GROUP", "weight": 46}, {"lootBoxItems": [{"count": 99, "duration": 66, "endDate": "1988-09-18T00:00:00Z", "itemId": "gccuzuc6QDRMGdBP", "itemSku": "bUyHTYPS8CGKXGon", "itemType": "2ecc65YAFLweD9Z7"}, {"count": 95, "duration": 10, "endDate": "1999-11-28T00:00:00Z", "itemId": "lNkorrw9QH3rNhDe", "itemSku": "pQum4Dj7pR05RTGX", "itemType": "GRkYXifTd5nAOF9V"}, {"count": 97, "duration": 44, "endDate": "1989-02-17T00:00:00Z", "itemId": "PwZjydyzGDZM4zTT", "itemSku": "YI6O8coYDWUfcL1q", "itemType": "segBsrNqeW5BxVe8"}], "name": "iW7sGELnMdXRqdGP", "odds": 0.4182838616805121, "type": "REWARD", "weight": 12}, {"lootBoxItems": [{"count": 81, "duration": 43, "endDate": "1981-06-05T00:00:00Z", "itemId": "PtrhjeVBnTrsYihh", "itemSku": "gbeAZoFncMUdmf8h", "itemType": "D3nL1saQxLYrz08j"}, {"count": 16, "duration": 79, "endDate": "1994-07-14T00:00:00Z", "itemId": "apPMc8ZR3bPCJ5n5", "itemSku": "s6DODBmrqEhGlkEm", "itemType": "GdCbwodVRjZJWuCQ"}, {"count": 31, "duration": 4, "endDate": "1975-06-18T00:00:00Z", "itemId": "hf6nGCnPjiIbJifs", "itemSku": "0arKxCcNv8FQCyQB", "itemType": "qKxayGvw7MqOsypC"}], "name": "JmfRnW0spgvjt7eC", "odds": 0.5990592800885515, "type": "REWARD", "weight": 23}], "rollFunction": "DEFAULT"}, "maxCount": 2, "maxCountPerUser": 35, "name": "PA3PRnQtB410iWT0", "optionBoxConfig": {"boxItems": [{"count": 92, "duration": 18, "endDate": "1988-01-05T00:00:00Z", "itemId": "LVGXCWRucRpP1Tq7", "itemSku": "uYXhB6FPfF5DvveM", "itemType": "dBsPt19V2FkBPk0Q"}, {"count": 76, "duration": 23, "endDate": "1981-08-14T00:00:00Z", "itemId": "fK6eiT38raaRG1Fg", "itemSku": "0hfM5vQmahJlT5OU", "itemType": "DEMwAjgNZgto2EhO"}, {"count": 22, "duration": 46, "endDate": "1977-06-04T00:00:00Z", "itemId": "MCRdxXOBu3TWmHDV", "itemSku": "mCGFoD7aNFj9wORA", "itemType": "VqRuNsXxRu4EQqR3"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 99, "fixedTrialCycles": 64, "graceDays": 40}, "regionData": {"FLvER3xqCwUgKa4o": [{"currencyCode": "CBoJDxGa1UuSr4eh", "currencyNamespace": "nV8Aw9m6GvDSE2F7", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1972-06-04T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1986-04-03T00:00:00Z", "expireAt": "1985-04-15T00:00:00Z", "price": 97, "purchaseAt": "1977-10-27T00:00:00Z", "trialPrice": 33}, {"currencyCode": "iWkbdpGqWQIPK6mV", "currencyNamespace": "ytM5mBRT39gKYLk9", "currencyType": "VIRTUAL", "discountAmount": 85, "discountExpireAt": "1977-03-21T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1989-04-18T00:00:00Z", "expireAt": "1974-05-11T00:00:00Z", "price": 14, "purchaseAt": "1992-04-15T00:00:00Z", "trialPrice": 28}, {"currencyCode": "vAWBSOr7zljUKyhK", "currencyNamespace": "kD7wAHMrv8zABDhY", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1995-08-05T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1981-06-26T00:00:00Z", "expireAt": "1971-06-04T00:00:00Z", "price": 56, "purchaseAt": "1999-08-21T00:00:00Z", "trialPrice": 41}], "dhzXb6cBMPNMmjMi": [{"currencyCode": "2uztFNfXg0UvwaZ0", "currencyNamespace": "py16ShGomFzUappa", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1992-03-13T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1997-04-30T00:00:00Z", "expireAt": "1971-09-20T00:00:00Z", "price": 27, "purchaseAt": "1995-11-05T00:00:00Z", "trialPrice": 53}, {"currencyCode": "b7xerpjVPfktNnl8", "currencyNamespace": "UYH5kesuOtYHLqcd", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1998-12-17T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1990-05-09T00:00:00Z", "expireAt": "1986-01-28T00:00:00Z", "price": 47, "purchaseAt": "1987-06-21T00:00:00Z", "trialPrice": 28}, {"currencyCode": "lK9RnTEYv5eDhCxw", "currencyNamespace": "y85vlhWw1RCgHr3f", "currencyType": "VIRTUAL", "discountAmount": 96, "discountExpireAt": "1987-05-10T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1987-09-22T00:00:00Z", "expireAt": "1979-08-24T00:00:00Z", "price": 89, "purchaseAt": "1982-04-27T00:00:00Z", "trialPrice": 37}], "Hm6EtyXqQbKWMJ0a": [{"currencyCode": "ODiWn6bPmSa85Riu", "currencyNamespace": "1alaVEhjJZbwMHkF", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1989-06-20T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1978-04-16T00:00:00Z", "expireAt": "1997-08-01T00:00:00Z", "price": 74, "purchaseAt": "1996-03-05T00:00:00Z", "trialPrice": 55}, {"currencyCode": "o4M51vuaFyqjQsTG", "currencyNamespace": "mzItJIOkEIRsSWOV", "currencyType": "VIRTUAL", "discountAmount": 76, "discountExpireAt": "1979-07-19T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1972-06-30T00:00:00Z", "expireAt": "1988-02-12T00:00:00Z", "price": 3, "purchaseAt": "1996-11-05T00:00:00Z", "trialPrice": 66}, {"currencyCode": "G9LXPbBh2E3wFchP", "currencyNamespace": "3zTymfVfny2M0KsS", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1987-07-10T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1974-03-23T00:00:00Z", "expireAt": "1987-10-06T00:00:00Z", "price": 36, "purchaseAt": "1998-04-20T00:00:00Z", "trialPrice": 94}]}, "saleConfig": {"currencyCode": "lO10RAyIZs2VfCRh", "price": 52}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "gn62lizsWGrtIgVP", "stackable": false, "status": "ACTIVE", "tags": ["UVTfDc3w1tAXRrQt", "Hkm0Tthcx9W7PkFN", "Va7czD4wybVjqOKr"], "targetCurrencyCode": "qYGxcBxfjLUZHK0O", "targetNamespace": "O1yQsMBQAdOfrtHW", "thumbnailUrl": "yGg5TU3INkMgjsnP", "useCount": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'itevmjTJjj5tfFQv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    '384ri6A7z0hsW0IH' \
    --body '{"count": 71, "orderNo": "lJyfVgaW6ziZF6ij"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'ZzA3MkosOcoAcV0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    '2G3vQZNiqaXzRBra' \
    '3I4K9iBdljXtowif' \
    --body '{"carousel": [{"alt": "BfAw30kOykBuDJ0I", "previewUrl": "PQeAL4MZwEVJe7wa", "thumbnailUrl": "GyB6g2M5JiwtMOfD", "type": "image", "url": "0RW0qgxO0Y6TFpFS", "videoSource": "vimeo"}, {"alt": "E20ORMCVBTrkvObs", "previewUrl": "iHQgt7OfL6AcBPjU", "thumbnailUrl": "YURB3Rsrc0qvV8Gq", "type": "image", "url": "cw3ytGWVKPoA1aKR", "videoSource": "vimeo"}, {"alt": "M1Ot0PWppB2H0G8X", "previewUrl": "ko9l5J0IOZmnpzwH", "thumbnailUrl": "hig9d6vdgfrNiGrH", "type": "image", "url": "XZVvjYqrEXKUDlmt", "videoSource": "generic"}], "developer": "8T9pQjnGB83yonud", "forumUrl": "f21g0NhuYvwCATIU", "genres": ["Adventure", "Sports", "Indie"], "localizations": {"ALtCiDuGQQsvWV3N": {"announcement": "SjXUXSMKY09x4TKO", "slogan": "wsyRNnaLNhw0xGnX"}, "c29UDQxeiBo2hB9u": {"announcement": "1v1POCjseK1xaSbM", "slogan": "jyFrYsITcyT5AhNN"}, "H0Ht1yPtBwXIuYrb": {"announcement": "PUcvEOJ4PghksbaT", "slogan": "hW37NTbz8HiRmukn"}}, "platformRequirements": {"vXiTP0KrWQ3pgbHM": [{"additionals": "0Svy3GRenDzwlTE9", "directXVersion": "Czhnck3GnyPFQHgn", "diskSpace": "9jVE6QGkZ8AVzeia", "graphics": "Di67E3rTwN2LrT85", "label": "Arfe6EweJxWANt1b", "osVersion": "Day64EnFyFeW0oNh", "processor": "ddKrrhzwz2PFXC33", "ram": "KjLNUFQJgCWV7dj8", "soundCard": "I5eVnflH2hnMV6Yx"}, {"additionals": "tl5DKUhjBy9oWPcM", "directXVersion": "IQc5lRQojhJgpXVC", "diskSpace": "ubdw0sPrgDKqHCs5", "graphics": "GTdTLCxJqK7dgsgr", "label": "npVE1acxZoDXdPOR", "osVersion": "kWkyTcJzvDUlhTlB", "processor": "Npvkjg48iVKCqEqe", "ram": "ZP1CFaMkJVBkZU3q", "soundCard": "tk0dM4GZGiSutb6w"}, {"additionals": "UxEikRyHC9VWMnzb", "directXVersion": "uNQNJxCbLEhfrPxI", "diskSpace": "RdbUwkN6Tr6vRneC", "graphics": "9JYmpKyZGtqWw67L", "label": "heLDvwZjthGMOB4H", "osVersion": "FIzTlGBnpLBd02br", "processor": "9OfMbjgS5WjduKix", "ram": "zScfrHzGYC1TdLVD", "soundCard": "BDxK6laOkeLBcprB"}], "yjUr7w9w1xKUrLmQ": [{"additionals": "SkuEMRzyerpya2oB", "directXVersion": "jbgBhOdXE8y1PNIz", "diskSpace": "bnPB5wG65f3ACfS3", "graphics": "A8JeRMYUCgn7oklN", "label": "ewpAIwtlAooXZ7HD", "osVersion": "b8g2BhzW03O2pp9q", "processor": "VpZbsppRsBWQ7RdY", "ram": "qZaQ8swcFOshiWEF", "soundCard": "DMG99v5LSSkkEoAa"}, {"additionals": "rkgZ773cdzYhgH24", "directXVersion": "VR4hJnsU1m6zryXm", "diskSpace": "vvvPmueVVC0ymY7A", "graphics": "BWgZVxM4rAqxlnHL", "label": "AFNEwXBsCkfqzKlz", "osVersion": "lLgHPF5iRWnREifO", "processor": "FJQwGPy5zGebVw9n", "ram": "LvVm8UeFUbaGb5on", "soundCard": "2kvdeu5DfAxsrX7O"}, {"additionals": "iSRs0z2RYA8fTlbf", "directXVersion": "UOSmR4F0p5g7b3Me", "diskSpace": "gxV9JnAJSu3MX2yY", "graphics": "JopKxd9MtXYGoZGk", "label": "BNXT0feu7KKPXunB", "osVersion": "ZiqYaReD04717oGC", "processor": "mrTUcZy3DDSxpWZV", "ram": "6J5QloYCaB5Impxp", "soundCard": "HJCcuqJR2TT3HEYB"}], "W8Aq2KVQNFGaJEyB": [{"additionals": "VlQ5iHlTqgMzvj8s", "directXVersion": "HLF7s3hgmxOOzP7v", "diskSpace": "teUYzMZzggFcJQkY", "graphics": "ueQLLJPh6Hpodpzu", "label": "BQwTS66qr03Mp14S", "osVersion": "8HG9ID7mZ4eKHaAP", "processor": "4PYToJAMgJkC8UGl", "ram": "qb7cexeEhHz7OKYN", "soundCard": "IMPTFnrbysdru1Po"}, {"additionals": "tArVtIQyxp17b8SH", "directXVersion": "vRIiJgGrdz6Ar6ZM", "diskSpace": "GUI9Z0Fol65yD1dL", "graphics": "BQJcBsvUaK2iHOkg", "label": "yhgijqtdzrvCDzH5", "osVersion": "ACyLXmLsHXWPqYBJ", "processor": "Tzlt302k4rdWgWYg", "ram": "Fgw3mGmogCJXjHTG", "soundCard": "hyemqqwoT441DX6x"}, {"additionals": "wuD6giqKLavCF9yV", "directXVersion": "eJJwyaY7Ho61RoV0", "diskSpace": "VH7thk8lnCROZodh", "graphics": "1gbkbnRcIufk5WE4", "label": "zPvxA5061CF9079h", "osVersion": "QA91csvlQSS6PyDb", "processor": "3vKbCw9eAGmM6lPA", "ram": "JMizukBmcy1kbAWD", "soundCard": "Uac65Jdlm1JJwmCA"}]}, "platforms": ["IOS", "IOS", "Linux"], "players": ["MMO", "LocalCoop", "Single"], "primaryGenre": "Racing", "publisher": "b4Iiy26m51AwCv4U", "releaseDate": "1989-04-07T00:00:00Z", "websiteUrl": "cQgXeZnKRP6Gdv2Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'Y9BadKJj4HkL0mk4' \
    'HHDzXcKJowQbOrgv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'eLe4hYQEGcivibNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'S0tBFxzru1A3Obca' \
    'ijxlHrcqzwGgl1Sy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'rFazP5g67zq7XCHk' \
    'Jzmy6DtxvO3nUiVM' \
    '7UfbH7Qv0Eyy6G3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '83Sb2WXmcXtuUYtY' \
    'kPAHldms0Nwlx85u' \
    'nvbUiBJfyM9bc1hg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'FvKO2erV4ccUhiQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'HGDNXw2L4mp580sU' \
    'SlEfC6ckbV2y32kG' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 86, "comparison": "is", "name": "npxYa2jDp3LzelXa", "predicateType": "SeasonPassPredicate", "value": "z9AKozXBA29DPhYa", "values": ["KqQ4ToqWjpaECYi7", "8Ksjfnk7HKSWULkE", "fBJaU43PzOITmqjr"]}, {"anyOf": 4, "comparison": "isLessThan", "name": "VEbp3z13pDy371QL", "predicateType": "EntitlementPredicate", "value": "tDb6RZXatSimmKud", "values": ["qURkyz4E3EI1bSCY", "aa8JSNQdhrnvuDGF", "iT4U6WQQwsTHCgTv"]}, {"anyOf": 35, "comparison": "isNot", "name": "GllrcttK4WgzdUhB", "predicateType": "EntitlementPredicate", "value": "U1e8C1HnrPGydCRG", "values": ["Zgpx0HtzCgr8ybpA", "PXLKNNfCxcAJoMhS", "O0Pgh6Uenz7FjcRR"]}]}, {"operator": "and", "predicates": [{"anyOf": 6, "comparison": "isLessThan", "name": "VvsormCNHH08vEf2", "predicateType": "EntitlementPredicate", "value": "SsLchLBElch9a9Kn", "values": ["5hchXzG4ffz0lXBD", "bBGrYGleamVgjm0x", "c6glMjwg8OWAT7d6"]}, {"anyOf": 33, "comparison": "is", "name": "jhk7tzIHqZpgJqlw", "predicateType": "SeasonPassPredicate", "value": "41XUfp7AVnf8BzBB", "values": ["w6Fqa6YXBlVXOvZU", "qEvMtJopw2r5pKsX", "nIYkKH6MNrEsOlIF"]}, {"anyOf": 13, "comparison": "excludes", "name": "W2ZMVJhOyVaO1sgn", "predicateType": "SeasonTierPredicate", "value": "T13nFPxMy9YNTBZT", "values": ["R5tZmaZGxrhAPoRE", "kREJXucN3IEt8vZS", "vGmmbGW3SttwZrmK"]}]}, {"operator": "or", "predicates": [{"anyOf": 14, "comparison": "is", "name": "Lws9RV6lY9IGsZjU", "predicateType": "SeasonPassPredicate", "value": "lM52jb80Nlw8icwW", "values": ["RvvZB46NCiqdleq2", "jCNZAKjBlI9fsL6H", "EOiPcSKlQDo4ih35"]}, {"anyOf": 100, "comparison": "isLessThanOrEqual", "name": "f5RXgVFrsR55cpOV", "predicateType": "SeasonTierPredicate", "value": "9PXWtk222GY7L58l", "values": ["y5TZFoyfZ0XfCxPD", "cH66JWKmTRqrvfJI", "P7drhfBjZFgaGUfh"]}, {"anyOf": 36, "comparison": "isLessThan", "name": "FQWIDC6PHVsnUueY", "predicateType": "EntitlementPredicate", "value": "EJ3R0cuQGjCShSTN", "values": ["zWKQdVExukcKDUzh", "KKARjqJSWImXvaLX", "yM9yuMOFavgMWyxi"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'kvZvwk0v0OKy45dq' \
    --body '{"orderNo": "Id3gXUWVAmaDjrn0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'ReturnItem' test.out

#- 131 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'QueryKeyGroups' test.out

#- 132 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "iZsIfqeLfl0wacx4", "name": "istsfrFqHu6f54mL", "status": "ACTIVE", "tags": ["NP5nNvzIlwtYI9wK", "X9V1XxF2CFfEpf0q", "N2twLYXq4HSEGpaU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'MmdPXWaJRdn3WMdr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'hlWqCc54JfyGzMMH' \
    --body '{"description": "iVQ6covYDuI4l1d9", "name": "YaLVuL1mLP65pId3", "status": "INACTIVE", "tags": ["c13PNqPn7XRlnqiW", "P9WWQMGmm0biVjE8", "A3EsOz8LDnxgL0t7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'Qhdw4vmSxnJcyaij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'SCsFa6ipRu1AaFjz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '0yLelzMzWiPzugdD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'UploadKeys' test.out

#- 139 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'QueryOrders' test.out

#- 140 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'GetOrderStatistics' test.out

#- 141 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'u6rxIv2ZMtZX5KZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    '53tX2oxmEDDgGBgP' \
    --body '{"description": "WHmOLBLlsw2pDJDL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RefundOrder' test.out

#- 143 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'GetPaymentCallbackConfig' test.out

#- 144 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "JPOcRFJTeKbAMIJC", "privateKey": "hPyIhVPmMs1zqz6e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdatePaymentCallbackConfig' test.out

#- 145 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'QueryPaymentNotifications' test.out

#- 146 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'QueryPaymentOrders' test.out

#- 147 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "xSNhnabXGs0qawVM", "currencyNamespace": "pRu5wP9CTLKxi1Bj", "customParameters": {"FMOIsJO7EUYasMTH": {}, "GgaQ2UErhcMpuZW4": {}, "KtmXptKHAev0UqYp": {}}, "description": "D2R7YqidgD0wxHpQ", "extOrderNo": "yntHsI11lC6BXyQW", "extUserId": "3eG0BvuCoP1hIpdI", "itemType": "SEASON", "language": "xK-226", "metadata": {"Tt8oRoQRf0A1eAJU": "ZSjWUPA9vXrqLxUC", "yNQUITTM8jU9tfr6": "NkPjb60b0Y8RDVgs", "QzaeOv7xB8GlNYJe": "VVZQH5C76GaeCobr"}, "notifyUrl": "GOAvaYctXd3jNOlJ", "omitNotification": true, "platform": "7jdrPdkMMoylrI7D", "price": 31, "recurringPaymentOrderNo": "x3DmUahjPVDOEmwp", "region": "WiJYxvvQCHIreoYD", "returnUrl": "gNe1RyydtCBznu3B", "sandbox": true, "sku": "2fe68sGXFylcwoCM", "subscriptionId": "a2D9QtE0TKRHukM2", "targetNamespace": "BVMu418S3o2DKmAp", "targetUserId": "8kt8156L7Wl7UfG3", "title": "PbsgYDgJ0JRrcPbe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    '1REA4kpxN9tCjk58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'n5fBl9xiCZH2KBHw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'uAW3jLkVq9bAefBF' \
    --body '{"extTxId": "8tiF7mi3iOrnB83a", "paymentMethod": "6h6dNfg9f25YsZ1L", "paymentProvider": "PAYPAL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'IGHuO7u2tOUpmu6z' \
    --body '{"description": "ULXQMirzwMshTQYU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'nfHWyBg5c3Wq2dGy' \
    --body '{"amount": 14, "currencyCode": "NCQEtOnYVE7i77NK", "notifyType": "CHARGE", "paymentProvider": "WXPAY", "salesTax": 21, "vat": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    '4TKx1WRjiCokzg7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Xbox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Epic' \
    --body '{"allowedBalanceOrigins": ["Epic", "Xbox", "Other"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'ResetPlatformWalletConfig' test.out

#- 157 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'GetRevocationConfig' test.out

#- 158 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'UpdateRevocationConfig' test.out

#- 159 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'DeleteRevocationConfig' test.out

#- 160 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'QueryRevocationHistories' test.out

#- 161 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetRevocationPluginConfig' test.out

#- 162 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "ArSRypvu88WyRMMR"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "UanMI437Ne6WvRNt"}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UpdateRevocationPluginConfig' test.out

#- 163 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'DeleteRevocationPluginConfig' test.out

#- 164 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'UploadRevocationPluginConfigCert' test.out

#- 165 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "PHoEfIdFP0QarAdo", "eventTopic": "CQoVI26D2IdXV2RN", "maxAwarded": 27, "maxAwardedPerUser": 43, "namespaceExpression": "CRn6spzE0Dj97Arj", "rewardCode": "pd7IRveArOFED1MA", "rewardConditions": [{"condition": "fVZhADFM15pfl1N2", "conditionName": "CNDu3DpGXJrOgVnr", "eventName": "neQPU35uuCoR3Wc6", "rewardItems": [{"duration": 19, "endDate": "1999-02-23T00:00:00Z", "itemId": "qRICnmZxob6vepvg", "quantity": 100}, {"duration": 96, "endDate": "1999-09-11T00:00:00Z", "itemId": "mnz3WsgPS6R3Uev7", "quantity": 3}, {"duration": 49, "endDate": "1985-05-29T00:00:00Z", "itemId": "8GVL2TVivHbcJX1m", "quantity": 34}]}, {"condition": "4inDP7o0Aeler4oE", "conditionName": "JEmHHU4T74NkroVw", "eventName": "JFRFLnsSyJhQApjt", "rewardItems": [{"duration": 57, "endDate": "1995-06-22T00:00:00Z", "itemId": "B2vTyC482FeT76mW", "quantity": 50}, {"duration": 9, "endDate": "1986-11-04T00:00:00Z", "itemId": "rmG0FHQOjtRg7ST2", "quantity": 94}, {"duration": 79, "endDate": "1995-09-07T00:00:00Z", "itemId": "RJN0qFJaGDiDmatC", "quantity": 44}]}, {"condition": "jVUos6ZMGM14H49G", "conditionName": "bRHeTMH4jK8hWOlH", "eventName": "rqyBElA4m1Ywb6nM", "rewardItems": [{"duration": 16, "endDate": "1972-03-01T00:00:00Z", "itemId": "Q4wXeArPe089cqMu", "quantity": 98}, {"duration": 27, "endDate": "1987-11-14T00:00:00Z", "itemId": "tw8AuvUND3dJ4hbx", "quantity": 28}, {"duration": 70, "endDate": "1983-06-20T00:00:00Z", "itemId": "z3Y7YtgdQMhzpcpw", "quantity": 1}]}], "userIdExpression": "mllqqWYgDWbrtw6q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'CreateReward' test.out

#- 166 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'QueryRewards' test.out

#- 167 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'ExportRewards' test.out

#- 168 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'ImportRewards' test.out

#- 169 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'Y0RiyzWJZAZHklGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'HH8I1l3xgoVyEemJ' \
    --body '{"description": "DvokY7UUVCHGWcVr", "eventTopic": "HG4ehIhJk597xUXp", "maxAwarded": 16, "maxAwardedPerUser": 84, "namespaceExpression": "HCyo70kyuutjjQDf", "rewardCode": "dr0GXMgSK5Yx6dbD", "rewardConditions": [{"condition": "NBB9LNziCP1xQygV", "conditionName": "qAioKka1tx56AwxA", "eventName": "JU0XOoXFpKZ7smOv", "rewardItems": [{"duration": 15, "endDate": "1988-08-28T00:00:00Z", "itemId": "sqjfua9x08SJmn2g", "quantity": 79}, {"duration": 75, "endDate": "1999-05-11T00:00:00Z", "itemId": "wBmEY4lD14f0XIJh", "quantity": 42}, {"duration": 61, "endDate": "1983-08-23T00:00:00Z", "itemId": "rBGEumeTG434Dmlb", "quantity": 47}]}, {"condition": "njlMfDJxP4S8TNhX", "conditionName": "BTiwS2sBodn1p1MJ", "eventName": "rZv1itpBPRbtgUMF", "rewardItems": [{"duration": 54, "endDate": "1993-01-14T00:00:00Z", "itemId": "8GRgWKOBJYYXgFmE", "quantity": 21}, {"duration": 35, "endDate": "1996-07-14T00:00:00Z", "itemId": "tzrSIfMjxzBwWKzJ", "quantity": 24}, {"duration": 47, "endDate": "1972-01-19T00:00:00Z", "itemId": "pqtAlzVR0WqkbKYS", "quantity": 36}]}, {"condition": "QVV1r0LACcKuAd2S", "conditionName": "ElOn16dw0nzH9XMG", "eventName": "2c5BWrzKJ0Lj0VNz", "rewardItems": [{"duration": 35, "endDate": "1998-03-24T00:00:00Z", "itemId": "1DExMK4z32P13aQR", "quantity": 93}, {"duration": 71, "endDate": "1991-07-30T00:00:00Z", "itemId": "cHNU3pvbpyJTgwl3", "quantity": 29}, {"duration": 84, "endDate": "1990-07-28T00:00:00Z", "itemId": "pzNQDtQNlDFMazvR", "quantity": 44}]}], "userIdExpression": "0ZKnX3Inv5lG8WEk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'lkFFkJPn2yomTQth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '1iJOyDZJCwufYAUR' \
    --body '{"payload": {"yXVoJ9qEel6x5O5o": {}, "tpujfw64GJDWklFk": {}, "qhGFAoxfL2vrevlU": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'aCgxl01oVwoWAbcs' \
    --body '{"conditionName": "kuBfcvcoAMPzCXwp", "userId": "gD8MOfYXcljy6EB8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'DeleteRewardConditionRecord' test.out

#- 174 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'QuerySections' test.out

#- 175 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'dB8wCiYq2y16Jp7H' \
    --body '{"active": false, "displayOrder": 83, "endDate": "1992-10-05T00:00:00Z", "ext": {"DG07XwughkPLKDhd": {}, "Mf1o4pweyQyv10mR": {}, "O0tK1CH6ozETFSgu": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 14, "itemCount": 35, "rule": "SEQUENCE"}, "items": [{"id": "TxBgnOqH9lyv8wx2", "sku": "JosSHLipk5N6e79z"}, {"id": "CfL2ar4zJmB2wifD", "sku": "A7LpND5zXLhrmEeB"}, {"id": "wTzs9QmLReEZ0r6n", "sku": "6anryoVkl4tChuDi"}], "localizations": {"bBIH1dyZPHtYHKqp": {"description": "l1Xk1CdFvYqfoYzB", "localExt": {"c16XXXuoJGXCyzA8": {}, "a5uh1LdVOaWOjRin": {}, "mMTxEz6bdDFDqRMy": {}}, "longDescription": "TZOXYRC3gIRiYFpD", "title": "lAEyVuvyXITMn2F8"}, "6xZRHxnOP02x00Sv": {"description": "R2yNPms1DdUL5bc6", "localExt": {"QMB9TtHXqeaYlaYm": {}, "2XGN51wxYTCHYaW7": {}, "BAFZnpxmzs0AQYJn": {}}, "longDescription": "B9w4rkop7LL7Yqjh", "title": "4lgGGsrJv0EyLkZe"}, "j5voHh0KRDJjPEF1": {"description": "LpvoOxT54t5Ffna7", "localExt": {"2ji4B86NKZ0tkEWA": {}, "qM0EZhtIp1XL7HL2": {}, "nKoPXxLMtU6hLliy": {}}, "longDescription": "7em6ox8O9f2ojEQr", "title": "Z645LOpaGFJniJl9"}}, "name": "RPULWpWw5UQBldfn", "rotationType": "NONE", "startDate": "1987-10-22T00:00:00Z", "viewId": "2X9wbQz3euR4MhLQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    's8XliOoWqixFdv5a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'DRSnCrIQ2kChyafm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'o2nIKr9krylalbZW' \
    'uO0OVwGUgR3PEWI0' \
    --body '{"active": false, "displayOrder": 96, "endDate": "1976-10-30T00:00:00Z", "ext": {"2W2caqaRVdR05rSi": {}, "lF29Lpg0zAUzpliq": {}, "50demc4rS3d2v2ib": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 13, "itemCount": 80, "rule": "SEQUENCE"}, "items": [{"id": "0XQWCZXaPi8oY6Vk", "sku": "ZP57PyBLX7knj7y5"}, {"id": "qEOp7hzPCxvetFhA", "sku": "gAkkEhd3Y16uyKwJ"}, {"id": "713r4F9WC342Uggy", "sku": "r64isEfxbFEabmT6"}], "localizations": {"MmgebEkQ73QcKQld": {"description": "xIqMgf2PaNJqIMDW", "localExt": {"JUW3I4SKjp0NOc5d": {}, "WAES7S7wBqBe4F2z": {}, "2u3wwUBB3KkzIBx4": {}}, "longDescription": "VA9ZxbKQDqG7UJEM", "title": "eseC0hnoI1dph0xg"}, "VXvWuSKhoOQCljoy": {"description": "Zp9rrR7RJbkDwkEj", "localExt": {"OWWCzn2paEvjRIcS": {}, "a260P2hpjhYQEdyL": {}, "RX3etMjv8jskCHfq": {}}, "longDescription": "F5uo9BT2QqCxWZGj", "title": "DRc27d9a3AaZO1Vc"}, "AqwHJEyMrwNINM4z": {"description": "HFF9ucrEcYD5hjgr", "localExt": {"xoEVEIkvpWupGhta": {}, "U3oC1Ly7xHbAN2Bd": {}, "v1CfQOijhEI21znt": {}}, "longDescription": "i03vAJizEosjuIsT", "title": "XKAQ4uWLCMgN7rU1"}}, "name": "yiWEODovRwzU7QiA", "rotationType": "NONE", "startDate": "1973-10-12T00:00:00Z", "viewId": "x4luTsEk9TNqSiFJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'yMByoRKUrvfixr7U' \
    'FzLzGaWok215MnSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'DeleteSection' test.out

#- 180 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'ListStores' test.out

#- 181 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "TPMRaYf8Chh5tiLs", "defaultRegion": "XIOSE2JSDRlSX5uO", "description": "gZ3Msm86Jr35oZQ3", "supportedLanguages": ["WcFld5DKwJoCrYrl", "OXZN7MoQZDN1sjuH", "XDU9ZFHISuKMr6e9"], "supportedRegions": ["VKi3lHZdnYzFYEnO", "A6gFO3zfSvvmLgxl", "U5MdUdF7gHdIf6eM"], "title": "d0iVUmBrFwFIESxo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'CreateStore' test.out

#- 182 ImportStore
eval_tap 0 182 'ImportStore # SKIP deprecated' test.out

#- 183 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStore' test.out

#- 184 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'DeletePublishedStore' test.out

#- 185 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetPublishedStoreBackup' test.out

#- 186 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'RollbackPublishedStore' test.out

#- 187 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    '8uFqKtoZiVPtwECF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'gcQRsqYFtxbpKYKp' \
    --body '{"defaultLanguage": "18TPWOixbTLfdOF3", "defaultRegion": "VtCUZ0wN81CLC324", "description": "P82gdsOb5Jp6oxvv", "supportedLanguages": ["tB4aireJSZc7Cojp", "07DFR7IvEhnKAMSw", "1WGHPO22mCj7yFmb"], "supportedRegions": ["pItmTcMVUlRoYFks", "2ULHooisOHhyiZyN", "xeNJcBIePMwBjK11"], "title": "IFRybWjjYkFvEHCn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'Q2BiPScmfoBQ1VO5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    'Trcu36LS6o87DKPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'LTcjU87C2CAKbiD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'PxA5v9644D4d5jTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'zZ8KpdOxrQ8r5te5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'FkJ58wQyrAb67d9k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'C9MEhGrQVQ3yKCwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    '9chX3evM1seGH9Zw' \
    'ZcLnJPavRNr3ysEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    '4sIwslUQociDSNS6' \
    'hf28TvyyZjEMbPRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'KUABS8cyK8SnSvsU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'CloneStore' test.out

#- 199 ExportStore
eval_tap 0 199 'ExportStore # SKIP deprecated' test.out

#- 200 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'QuerySubscriptions' test.out

#- 201 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'GLqYJevKKJR5KWRg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    'HuLJEAS7pSDlIS4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    '3VRydtvWZZFDNIc8' \
    --body '{"orderNo": "6TKj3grgVdqSpg9x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'pXCh79kxpJyTba2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'x7lPUWhfLYtrkZ2V' \
    --body '{"count": 66, "orderNo": "jzXzilslRzP96yJ7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'RbX8fkG3hcRbcSuS' \
    --body '{"achievements": [{"id": "kd72wzQJjmhy4f9F", "value": 95}, {"id": "usH1ByGD8DDRW0KN", "value": 45}, {"id": "5Ll9C3fSnntsqrUK", "value": 90}], "steamUserId": "1msU7QpcpkApFODO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'UnlockSteamUserAchievement' test.out

#- 207 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'qz4FKRWcvJIwzW53' \
    'tKi9mxhR8RWtFcnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetXblUserAchievements' test.out

#- 208 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'AoxNPXPlSv6kWXBT' \
    --body '{"achievements": [{"id": "TodpLcEI0mWFWKlS", "percentComplete": 45}, {"id": "bCcD2bQLuFwHyfWs", "percentComplete": 61}, {"id": "J4OjFm6OQMQgWL3h", "percentComplete": 25}], "serviceConfigId": "1CNRQX4T37n6lgMV", "titleId": "9tMXN2kDg7INFTJO", "xboxUserId": "4FUT152zR0PBTEvM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'UpdateXblUserAchievement' test.out

#- 209 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    '3TgMsAS5t3TYXNAG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeCampaign' test.out

#- 210 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'l1xy1H8Ag2XY2Tny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeEntitlement' test.out

#- 211 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'PCVsWzhPIeHkoUSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeFulfillment' test.out

#- 212 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'T3lv51D9Vwsfzatv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeIntegration' test.out

#- 213 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    '4JzfVNAJbSLBzqs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeOrder' test.out

#- 214 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'u1EntDzkQLgWQHXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AnonymizePayment' test.out

#- 215 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    '3bRYKbJGFP8HZNLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeRevocation' test.out

#- 216 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    '7aPbRMRrbKjoifZA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeSubscription' test.out

#- 217 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'Wt13ISgdwAum4b3t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AnonymizeWallet' test.out

#- 218 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    '1Ph8xHfEAlyda8FP' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'GetUserDLCByPlatform' test.out

#- 219 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    '7gSO3GHo6ESwn8ot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GetUserDLC' test.out

#- 220 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'u3o1B2P8cdPJAnmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'QueryUserEntitlements' test.out

#- 221 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'FUZdH9CHHozRud9g' \
    --body '[{"endDate": "1998-04-10T00:00:00Z", "grantedCode": "5dSBhpLRxydIE1CQ", "itemId": "FSQS3RD8Q6YcgyTt", "itemNamespace": "SOU4FdUceGtntm6j", "language": "bB-RIuC_252", "quantity": 35, "region": "j1bUAIrKYw673JvA", "source": "PURCHASE", "startDate": "1980-10-14T00:00:00Z", "storeId": "tZ6FN0omme6HiOrb"}, {"endDate": "1981-05-13T00:00:00Z", "grantedCode": "lHom6RSj2xFFFrIQ", "itemId": "FWJ2aMIxqQycDpbO", "itemNamespace": "cYim2syYc8YuKlQj", "language": "NJ", "quantity": 87, "region": "1k2W89U6PA5Byr1V", "source": "PROMOTION", "startDate": "1976-11-22T00:00:00Z", "storeId": "HNYqepadIS0zRgir"}, {"endDate": "1973-03-10T00:00:00Z", "grantedCode": "2ntrz0FUDXjV0Gmc", "itemId": "FSjmJGQU5YRHjMz3", "itemNamespace": "bo23SF3XkwdkgeNE", "language": "PbN_BC", "quantity": 24, "region": "otg9A9VvbcAi4Zmd", "source": "PROMOTION", "startDate": "1984-11-22T00:00:00Z", "storeId": "wW5HLYxM5DN6DJmn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GrantUserEntitlement' test.out

#- 222 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'jBd7q6U3V1i7ip9i' \
    'bQlReTecqcbggfeY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserAppEntitlementByAppId' test.out

#- 223 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'n1FnvTuTrRI8Z87U' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlementsByAppType' test.out

#- 224 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'Y5R6IUWUGWDcgSJ2' \
    '9TqsnbtXNBeq2uoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementByItemId' test.out

#- 225 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'HWsw0m7ZY46mjkOA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserActiveEntitlementsByItemIds' test.out

#- 226 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    '84jougrIsaMHmzaf' \
    'NaxCNIzvOh61wCAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'GetUserEntitlementBySku' test.out

#- 227 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    's9Qae7TEBnzFuxHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'ExistsAnyUserActiveEntitlement' test.out

#- 228 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'rR3PiHyAFfiwIi9b' \
    '["I2X8C6xnSImJqwyG", "zE1BMLJmTvUJIV0W", "2K8alZaxyEak02r4"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 229 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'dRvrKr07n72icTrg' \
    '8RyI3bDBIKGiLSqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 230 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'VnEtbqHnY6D1Z2oK' \
    'GmRbhR6rnSjFQf69' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipByItemId' test.out

#- 231 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    '9gOqEWjr9T9UhsGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetUserEntitlementOwnershipByItemIds' test.out

#- 232 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'J3NLSVOdqFxY9j8P' \
    '8IFwNKh0Zni7P6Zf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserEntitlementOwnershipBySku' test.out

#- 233 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'RFkQolDEtyxyMGw4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RevokeAllEntitlements' test.out

#- 234 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'ZEIMYFaIEr69zjnP' \
    'KVLZ59QuwBbW2xX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'RevokeUserEntitlements' test.out

#- 235 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '6TmFiMrqZaZSR4SA' \
    'MIG5DRP307xNIxMn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlement' test.out

#- 236 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'iv6VDtGhPQu5IgTl' \
    'vO4wr8D7APHhihwd' \
    --body '{"endDate": "1991-11-24T00:00:00Z", "nullFieldList": ["SBKpqJ8V1kQHisGl", "dXgqa99UNyHIlnrL", "OesUoAwwCO2c7aEA"], "startDate": "1988-08-01T00:00:00Z", "status": "ACTIVE", "useCount": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'UpdateUserEntitlement' test.out

#- 237 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'pdx91UabvNvRaUrU' \
    'qTcFsGXxjR7vTeNd' \
    --body '{"options": ["fPVWmEdVFXX02sJs", "Xg7AKOu2Xk8T0sqd", "mD20rolfU1yEokwo"], "requestId": "BSfRPMdPXru40VmH", "useCount": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'ConsumeUserEntitlement' test.out

#- 238 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'Eu9pKFWxMrOrO7m2' \
    'fUVM4vgvN5a9nlua' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'DisableUserEntitlement' test.out

#- 239 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    '2qF5WhoaEpbMKCe8' \
    'F6OE3PKy2vHH6XrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'EnableUserEntitlement' test.out

#- 240 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'j3i1nC0J9A8DUtbT' \
    '9Nimqnzt0awizcaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetUserEntitlementHistories' test.out

#- 241 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'FFkKf2QcbDNp9wVg' \
    'loPqugy2zhY3CjOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'RevokeUserEntitlement' test.out

#- 242 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'LPkNLoeCULsEptE9' \
    'wdsebmIkQbE3nPbd' \
    --body '{"reason": "7YNYQJL8jGfdMvM0", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RevokeUseCount' test.out

#- 243 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'YHGmKeMnGn3hXTX6' \
    '5W9y7jKRgCFKj2fp' \
    --body '{"requestId": "aEDgvMXedU0CtjH3", "useCount": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'SellUserEntitlement' test.out

#- 244 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'F3G6sPweMmOIXU6I' \
    --body '{"duration": 4, "endDate": "1971-09-18T00:00:00Z", "itemId": "9Aa9QMoQgjOf0byu", "itemSku": "j8Uxptb2o5jdTreV", "language": "Kh6flE9FaNdFDCH0", "metadata": {"BMCufX5Ln9YKDyW9": {}, "wNSXGvHGabfCgecN": {}, "knWoEbRoZQ4VuKeT": {}}, "order": {"currency": {"currencyCode": "QQXDNtjgypGgBtsG", "currencySymbol": "OxHfW3WBHUGCPEvc", "currencyType": "VIRTUAL", "decimals": 36, "namespace": "DKDBhngmXpNaXSgg"}, "ext": {"2yJzaaUc8p87eTTm": {}, "092rucPAhnaYqSLk": {}, "r3tlvhwbpOwvWyVZ": {}}, "free": false}, "orderNo": "2HSaUyXEOQUwXDX8", "origin": "Twitch", "overrideBundleItemQty": {"QUG1gDFutWedPpbB": 46, "BTm7Hy1AvjH8TO5O": 70, "Y9DbSYPsKMU8ah8N": 73}, "quantity": 24, "region": "xYKZWUVW9NyUUdkr", "source": "OTHER", "startDate": "1985-08-24T00:00:00Z", "storeId": "FIkcZk3UEaPstaXt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'FulfillItem' test.out

#- 245 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'LCGf6Pjb7W28XF9e' \
    --body '{"code": "X2LXwaZwDM1CYDLm", "language": "Rr-AdwW_qW", "region": "7rLa2XTR4IEvU0JE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RedeemCode' test.out

#- 246 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    '2kLOQb2CBEoV5Nm1' \
    --body '{"metadata": {"82ykfY01GcykfqRy": {}, "XIVnis4SKjpYMZV5": {}, "AVm0vOTpy2xyajHM": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "nKflmcC3pOWLT8ck", "namespace": "Ey2SMQcmxebThGYr"}, "item": {"itemId": "gNOimVrZzkyKHvwa", "itemSku": "7cbRj2at5ZJSh02s", "itemType": "rNNRw3Y1j6viZbWe"}, "quantity": 42, "type": "CURRENCY"}, {"currency": {"currencyCode": "yHCl9Xs4E416s1Oq", "namespace": "4B0c6hcP5jLY1Kxb"}, "item": {"itemId": "FbyzOePaXR3ub0i4", "itemSku": "catfNOlhlYHQh4Vg", "itemType": "YhBaVDBRlLxoAzlj"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "hdaWNQoeso9mKjTR", "namespace": "boTLjWe4LfJee5PI"}, "item": {"itemId": "5dFv5buhIZ4eMnCD", "itemSku": "QFCYcyYCi2g6s9FQ", "itemType": "KCfcu923YpsdjtVR"}, "quantity": 96, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "v3uIM3CoS6JahcK1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'FulfillRewards' test.out

#- 247 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'Pr6BT8bcW21yKVRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPOrders' test.out

#- 248 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'AUf5lebfPenWUEBZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'QueryAllUserIAPOrders' test.out

#- 249 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'C8keF5vI1QiMb8GR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'QueryUserIAPConsumeHistory' test.out

#- 250 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'zCETFWSfJvAnpvMc' \
    --body '{"itemIdentityType": "ITEM_SKU", "language": "iGXi_pXes_Sn", "productId": "QUNi4NDzBP7mmM4Z", "region": "rXjamc3OX9fjEzsc", "transactionId": "uFPv5tNXWb8n1xyB", "type": "XBOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'MockFulfillIAPItem' test.out

#- 251 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'MxbBG0waudrudTuI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'QueryUserOrders' test.out

#- 252 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'y3VLkd3YGg9Bzi8u' \
    --body '{"currencyCode": "luQOBuTuYNR4hzPk", "currencyNamespace": "GOuDvT1kGGvspIGc", "discountedPrice": 44, "ext": {"y0912axRFeMgIQdJ": {}, "Nm52k6wEP9rj7lO6": {}, "vs4tMfHLoSkvb8lb": {}}, "itemId": "FBtF0ILnxdtDeCtb", "language": "UIxxTu6SQF7Bt4rv", "options": {"skipPriceValidation": false}, "platform": "Xbox", "price": 18, "quantity": 0, "region": "z3ZJfWFdytTpAVx0", "returnUrl": "pd4puXNhGU3RmYw0", "sandbox": true, "sectionId": "NX6W3h8ItD6AFXbQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AdminCreateUserOrder' test.out

#- 253 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'vGbKVlE5VulHAZZ2' \
    'SKo1C0ktvmekdbic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'CountOfPurchasedItem' test.out

#- 254 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    '6I2n5Hclx6xvlDEh' \
    'lvzVBqt9fNnODJKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetUserOrder' test.out

#- 255 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'Ddt60vGd1u3lR0fk' \
    'CW4fYJAHmuYyTZt7' \
    --body '{"status": "FULFILLED", "statusReason": "UFiMTIV4pb5hZyPi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'UpdateUserOrderStatus' test.out

#- 256 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'kzEmnmdOWGrvu5JZ' \
    'sUPqtph4Z0KsCWhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'FulfillUserOrder' test.out

#- 257 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'Ppmpjibu6WMYMScW' \
    'AzVVdQZznMUlqj2d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrderGrant' test.out

#- 258 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'jHHFFRxJPvHewpv9' \
    'IeC6LAtGzNwZUe0k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'GetUserOrderHistories' test.out

#- 259 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'RnfBio030WDtRFRR' \
    'eZoX0eYwpjuQPo1B' \
    --body '{"additionalData": {"cardSummary": "i27Mr8QiSBuE8Wdx"}, "authorisedTime": "1976-10-04T00:00:00Z", "chargebackReversedTime": "1990-04-16T00:00:00Z", "chargebackTime": "1979-10-07T00:00:00Z", "chargedTime": "1976-01-22T00:00:00Z", "createdTime": "1992-04-21T00:00:00Z", "currency": {"currencyCode": "xqK7yxoQHX7Xexjv", "currencySymbol": "W4rZ57Ra4Wlon8Zz", "currencyType": "REAL", "decimals": 10, "namespace": "HgabbmT81jfik6Sh"}, "customParameters": {"LjJbf174MCR5Zpvl": {}, "WXRfEoUuNmQrq6p7": {}, "WrYOBpl77LsKN46X": {}}, "extOrderNo": "LNfQ0SXyMTygZRBz", "extTxId": "JUpXr5ZkwYPLnvik", "extUserId": "Bnp1ILBujZh8S62G", "issuedAt": "1992-08-21T00:00:00Z", "metadata": {"H2Pz5V5CtSrcX7aR": "P8vZ9a77wOP10Abp", "bjZo2dQM3ZXq9ati": "jyFT8B6hECr4zqhZ", "9lpllwasnryjxylw": "RVcy18iHO0dKNHWB"}, "namespace": "FM13F37X9HTu6c4m", "nonceStr": "MUdJoKmyaU7qTgHx", "paymentMethod": "GQ4Dm2YoSLUIzzQs", "paymentMethodFee": 70, "paymentOrderNo": "qpyu9P7Yh6ERWyed", "paymentProvider": "WALLET", "paymentProviderFee": 89, "paymentStationUrl": "6rkPxW72ya2ruQci", "price": 22, "refundedTime": "1994-10-02T00:00:00Z", "salesTax": 88, "sandbox": true, "sku": "SXg6OXqwh2Uj0IZZ", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "X634iuF8pqhqsqRF", "subscriptionId": "4kqMbz4sxPUl2WbQ", "subtotalPrice": 81, "targetNamespace": "NzQF9Ywa1VlJBmSC", "targetUserId": "pF2z5O9ugNuq4uGu", "tax": 69, "totalPrice": 22, "totalTax": 26, "txEndTime": "1990-10-25T00:00:00Z", "type": "0T6fVxvK30nHMYxf", "userId": "8xOR1DEgYR3iOynL", "vat": 77}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'ProcessUserOrderNotification' test.out

#- 260 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    '2QBm02aTdgp0WcRd' \
    'rrdOKQbXXiMg5RAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'DownloadUserOrderReceipt' test.out

#- 261 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'D5a0gqyakuryISjs' \
    --body '{"currencyCode": "rHy7SSarFsJyanot", "currencyNamespace": "h2jhzr7POOjzRzlm", "customParameters": {"VmpfmMq65nYpNAwv": {}, "9UsvPaX8W0GvPN7g": {}, "RfsySRn2FX0Ac7Cz": {}}, "description": "uPXE90ufrBaS458b", "extOrderNo": "BTbcqQVkSIXLGF8d", "extUserId": "tk8bqcPfBJ9GOHxU", "itemType": "CODE", "language": "Tdv_Owps", "metadata": {"hewthszMsYOEmQiF": "1OsXfJG3psjIBzja", "FmN0MInvVPAPEovH": "VVguusvVUxkCG4IG", "PYHaRvV3JGi5l0G5": "NBtXVTXK1JdoClQQ"}, "notifyUrl": "GLneKl3iXOvSGgZz", "omitNotification": true, "platform": "5GCOCowERMveDiI5", "price": 56, "recurringPaymentOrderNo": "DcUuWC1NgHaxQlxs", "region": "2MPGkLeY5CedGPB0", "returnUrl": "iJF96NG7vODPmfnV", "sandbox": false, "sku": "VRWxJw7idbmOx0vy", "subscriptionId": "aMbcnlyBvXdpoYVZ", "title": "Kx8oPBJncKdyabXy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CreateUserPaymentOrder' test.out

#- 262 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'mlDvbcApuoA5PCdX' \
    'T4YD9fDzx1WPpvLB' \
    --body '{"description": "MMNJG6TuQ90jhJCr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'RefundUserPaymentOrder' test.out

#- 263 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'rsBPvGhWiPLLd5eC' \
    --body '{"code": "hF7cgujItr2ZFjL5", "orderNo": "qUyimmVzOJYebI5E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'ApplyUserRedemption' test.out

#- 264 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'gye4CkNIFSC7Icfd' \
    --body '{"meta": {"qOCaqFaXYK6AzVrp": {}, "3wn2BlIfmyT5owJE": {}, "G08jO7JMvkh08NQQ": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "P6WeXWf3dBAVfIM2", "namespace": "oLFaTIhv5XrQvTAd"}, "entitlement": {"entitlementId": "isxP0DyxqSYeCl4g"}, "item": {"itemIdentity": "EZgIMDALa4nsITUe", "itemIdentityType": "ITEM_SKU", "origin": "Xbox"}, "quantity": 16, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "TP1AE4lqnIwLN2lG", "namespace": "YqQSzIUdIqmVvmcA"}, "entitlement": {"entitlementId": "sPgT6XUEeRKSDbom"}, "item": {"itemIdentity": "dWWRi7OHZeGP4o1T", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 8, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "HXZ5yuJsfxI3zuYw", "namespace": "CYQw4Rr3lmeyijwD"}, "entitlement": {"entitlementId": "3pYZEoKfBV4CX15s"}, "item": {"itemIdentity": "nBgmflygDW6ab0Ro", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 27, "type": "ITEM"}], "source": "DLC", "transactionId": "FYmEraqGPOCMPGtR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'DoRevocation' test.out

#- 265 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'g0HGzSGs8nBUQVBs' \
    --body '{"gameSessionId": "F03D5vkAkZ8CS09f", "payload": {"FrbdregZfA6pBIXq": {}, "oaoYoHcrIwc6qkDf": {}, "3ciuVB7vM6wSqwns": {}}, "scid": "2XJfUl3uiEO9E03J", "sessionTemplateName": "k5kBnuo4jR1HYLJj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'RegisterXblSessions' test.out

#- 266 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'nydxAGgqH3ytkroZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'QueryUserSubscriptions' test.out

#- 267 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '2tfFjNF99VixS5Es' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetUserSubscriptionActivities' test.out

#- 268 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    '3u4km3iKiNLRNa01' \
    --body '{"grantDays": 91, "itemId": "4bEkQ8XN3xQ0KaIZ", "language": "1ISja5TxqN8RXvgN", "reason": "zoX14Km851zHcDdp", "region": "hWEIlBnOKyfAbdUB", "source": "1OM5oKTXANlenFuU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformSubscribeSubscription' test.out

#- 269 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'eRc2SCqQ9kgrqAIa' \
    'KAUBfyFCxsJfyos4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 270 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'fOD6B14cwUNByHqs' \
    'S7t8WUpg0equIg7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscription' test.out

#- 271 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'Iz8o3rFWvlE7bmua' \
    'FNPCECKSzHTT5beK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'DeleteUserSubscription' test.out

#- 272 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'Yt4CDlWZzqpJeQd6' \
    'tN5oH4E7JosGEpOK' \
    --body '{"immediate": false, "reason": "FWLtsLf278ybCNhF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'CancelSubscription' test.out

#- 273 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    '9RCyMn5VX87u49Hs' \
    'q4hLUkLLTNMnmlFz' \
    --body '{"grantDays": 51, "reason": "rz4HAGIJOSxoJdII"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GrantDaysToSubscription' test.out

#- 274 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'w70J2JeqNTxshoZJ' \
    'nsAkX5sxny0WLYMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'GetUserSubscriptionBillingHistories' test.out

#- 275 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'b0QsxPlx64IQUpST' \
    'oD0bb0SXZUy9H0C2' \
    --body '{"additionalData": {"cardSummary": "13rnYfZ8c8zURCck"}, "authorisedTime": "1995-03-28T00:00:00Z", "chargebackReversedTime": "1981-03-23T00:00:00Z", "chargebackTime": "1984-06-06T00:00:00Z", "chargedTime": "1976-03-14T00:00:00Z", "createdTime": "1978-08-04T00:00:00Z", "currency": {"currencyCode": "gbV1bNoJJUhL5p56", "currencySymbol": "dnYHk1iLtAXL33WC", "currencyType": "VIRTUAL", "decimals": 27, "namespace": "0vEOIxc25vtorwrF"}, "customParameters": {"6HtcJbqjCZkEvdWN": {}, "k2SHYsva1jk545vt": {}, "1Vu7dsmzSUsCVLjw": {}}, "extOrderNo": "2QHwjLRnoGxE4QuZ", "extTxId": "eQkRBv8hh81CTYPY", "extUserId": "D0WHJ0JzaJpqg9Jg", "issuedAt": "1986-07-19T00:00:00Z", "metadata": {"c5d620U9addYCAtu": "Tx2FKoGRQ2i1n2WJ", "VJy6yBPVmpbwVG3M": "wHy6yQU2RSNGWKnN", "DFZOok9snWC9CFiR": "mbELIzawfXvKu5Us"}, "namespace": "uFOUXohEHKCKphTi", "nonceStr": "ityfpZixQMzfhG3h", "paymentMethod": "C9Be3Cvn1QymYMLA", "paymentMethodFee": 6, "paymentOrderNo": "jEKW31SlSm20DzdK", "paymentProvider": "CHECKOUT", "paymentProviderFee": 53, "paymentStationUrl": "8FlVcy0hcEMFRkn8", "price": 91, "refundedTime": "1977-08-06T00:00:00Z", "salesTax": 0, "sandbox": false, "sku": "MlveXWFZqotaiZN3", "status": "REFUNDED", "statusReason": "abgb0l3UURltNbDb", "subscriptionId": "dvc14DUjHqRaUZuU", "subtotalPrice": 78, "targetNamespace": "T9SRQFfxRIUU3K7s", "targetUserId": "jvHHFmaUGIprrzf5", "tax": 13, "totalPrice": 37, "totalTax": 100, "txEndTime": "1981-11-24T00:00:00Z", "type": "Sb0LePf5b8MJ94DA", "userId": "h1Mc7VkHxj8k5KSF", "vat": 39}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'ProcessUserSubscriptionNotification' test.out

#- 276 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'twMX4QAE2aV1l1P0' \
    'cjdc49Ah8hoDWRw7' \
    --body '{"count": 80, "orderNo": "YzZLlLq8lPGFyb34"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'AcquireUserTicket' test.out

#- 277 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'DDyqvcwQ3uBzBm35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'QueryUserCurrencyWallets' test.out

#- 278 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    '5IU5aZu5bRvxm9KY' \
    'r60SyfWNB8u5Qlf4' \
    --body '{"allowOverdraft": true, "amount": 31, "balanceOrigin": "Playstation", "balanceSource": "PAYMENT", "metadata": {"gs7YuyxJLe1TkfLi": {}, "M9EqyhFh7mq6sgk5": {}, "cHaJYkzClqPty2kx": {}}, "reason": "gyry1MM9eo43Qi5c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'DebitUserWalletByCurrencyCode' test.out

#- 279 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'RehBB7o24lw21Z3n' \
    'E04Cbkpn0yX44aL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'ListUserCurrencyTransactions' test.out

#- 280 CheckWallet
eval_tap 0 280 'CheckWallet # SKIP deprecated' test.out

#- 281 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'f0QyO5YXVhTiaE4W' \
    'KnEeaUdAmgmnzKSV' \
    --body '{"amount": 25, "expireAt": "1973-04-17T00:00:00Z", "metadata": {"sRNMykbnHTrHLmaT": {}, "GFI1atDOVS2F6Is2": {}, "7hn9TSwEvJPZcYrX": {}}, "origin": "Twitch", "reason": "5T5rvBRXJxUvm1xI", "source": "IAP_CHARGEBACK_REVERSED"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'CreditUserWallet' test.out

#- 282 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '5IuOvafRIdOXlxxd' \
    'ySywm5h2pCfHjg41' \
    --body '{"amount": 72, "metadata": {"hheDDG5HJEFQRX4i": {}, "Vg8TK1CF9X9mTmMV": {}, "fQaiQKdHknLotplf": {}}, "walletPlatform": "Steam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PayWithUserWallet' test.out

#- 283 GetUserWallet
eval_tap 0 283 'GetUserWallet # SKIP deprecated' test.out

#- 284 DebitUserWallet
eval_tap 0 284 'DebitUserWallet # SKIP deprecated' test.out

#- 285 DisableUserWallet
eval_tap 0 285 'DisableUserWallet # SKIP deprecated' test.out

#- 286 EnableUserWallet
eval_tap 0 286 'EnableUserWallet # SKIP deprecated' test.out

#- 287 ListUserWalletTransactions
eval_tap 0 287 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 288 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'ListViews' test.out

#- 289 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'wb9JgVZofu7lNuwr' \
    --body '{"displayOrder": 91, "localizations": {"yuoR5YkRhK1PGfmA": {"description": "nDGtInmyZkHQxUB5", "localExt": {"U4Qk0fD8GqtXguE8": {}, "Xvdv1azJ2OSkJGMD": {}, "AkWOP9y3eP20aRJV": {}}, "longDescription": "XYPkIGnj7nGzgSkT", "title": "y0cIm2Tc4sbYVp7a"}, "myDRQk3QGp0uzzvA": {"description": "fa6BW7oGw2U9LoHW", "localExt": {"S4koauo9jkTEI52B": {}, "8LI9vMEB8OHKsqKa": {}, "w1EmCxOMl6uh44gP": {}}, "longDescription": "PfiJZCSkIQI1h6Oj", "title": "oUY4QXecerXxPodP"}, "okDUivfNI3KdSIbT": {"description": "i8dxU11tPBlMCz6S", "localExt": {"Spxt0aZZr3SbJHkT": {}, "stBGTm2OFHVEoRlj": {}, "sGF5AYZlEYqTVSCL": {}}, "longDescription": "emvpJXl2drfGIgu0", "title": "ksPtzdXjtRaBOlhg"}}, "name": "63PduP0G77oZV8BG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreateView' test.out

#- 290 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'favVPOhaaf5eExcj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetView' test.out

#- 291 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'ABRx8qNMv4XLW0xl' \
    'b6yLTssmZXLvxRhf' \
    --body '{"displayOrder": 84, "localizations": {"ICrMr8z6e2UDBycY": {"description": "rDDg5iDNLOJJmzGW", "localExt": {"9AQMDnaFw1u7BLbx": {}, "xmghZp6iVAJ6lYOK": {}, "3cwO9ln34fiLxPN5": {}}, "longDescription": "xKoNNYd5p2yVsBAv", "title": "2ZVlrnlY8y91hD1Z"}, "Hh1VjLqa0AODLarM": {"description": "crlOCtMCyPHnS8ue", "localExt": {"PyiByYQOgKKv9kQY": {}, "aSI3bbqZQkXAns7V": {}, "rdNH8v1oP98hanhE": {}}, "longDescription": "18UbY1Zkrfk0Xn6j", "title": "wfR02GfMrXzI7oWD"}, "1mZ9rW6QdtPe4Yle": {"description": "Mg5NGs1Pmz6Amebh", "localExt": {"0FbOWyhAnMP6BdBw": {}, "6d4UOI7Tr9NHcXeE": {}, "WIpyYx9wOuNquv2q": {}}, "longDescription": "kqRR9Nwd8OrgT5HM", "title": "aelKs3hdNcCPnrmZ"}}, "name": "DNctQe0IM586qYdN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'UpdateView' test.out

#- 292 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'vmRITEU7usHknnfY' \
    'NY7ZXicpAJw7Ct9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'DeleteView' test.out

#- 293 QueryWallets
eval_tap 0 293 'QueryWallets # SKIP deprecated' test.out

#- 294 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 26, "expireAt": "1986-07-10T00:00:00Z", "metadata": {"oUNlmQjebaV8c13F": {}, "ZxX6qNntgmml0ts1": {}, "uw7WvaRDN6waXRBR": {}}, "origin": "Xbox", "reason": "8fZc6LpvtY7Bk3j0", "source": "REFUND"}, "currencyCode": "q98jWszWZxmbhMr5", "userIds": ["wC4MOmSF5ZPpYXTb", "aDNyd7VDhThmXAsB", "gh3hVKyU97N87zJH"]}, {"creditRequest": {"amount": 98, "expireAt": "1999-06-30T00:00:00Z", "metadata": {"v5vKHsJ5DezdlRlT": {}, "TSLmDolGdb7yXLAg": {}, "fgESHWCK8LccJJmX": {}}, "origin": "GooglePlay", "reason": "0pmy1KDJtg9FwOew", "source": "IAP"}, "currencyCode": "WutrpjBOnBeqwBnF", "userIds": ["6ePpjPG4iKj1VxNo", "dy01mQjVblM1GnFG", "FLwY2aYPpdsN55f9"]}, {"creditRequest": {"amount": 89, "expireAt": "1986-01-04T00:00:00Z", "metadata": {"5hKdn2Ay5KgtWue3": {}, "XkqcMKE9l0uRkf5R": {}, "xDdVVe0VvPmen8ke": {}}, "origin": "Other", "reason": "vuqwvTTB6lW4R7V4", "source": "REDEEM_CODE"}, "currencyCode": "IneqddStnBNigsnB", "userIds": ["IynEaAcX7fXbKWmr", "pu24ga0d3NvXvIgv", "aqNIKPX6gPHT29wk"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'BulkCredit' test.out

#- 295 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "ZwM8cvObRjKxi25l", "request": {"allowOverdraft": false, "amount": 26, "balanceOrigin": "Epic", "balanceSource": "EXPIRATION", "metadata": {"mSJffUaLwOsYRIJe": {}, "arztP7sqwracbiPr": {}, "T7cARnySCNlQCocW": {}}, "reason": "Bq1VspKjs4jxjTNe"}, "userIds": ["3vK6XXKdJ9YgLSRy", "KHle3po9nK2MnWIS", "jx0xgbEuoPqi79JL"]}, {"currencyCode": "Z8LUxYanMQUFaZF7", "request": {"allowOverdraft": false, "amount": 4, "balanceOrigin": "Oculus", "balanceSource": "DLC_REVOCATION", "metadata": {"nYIBTANshJcdLEof": {}, "yiS3dO8j3taWbShX": {}, "MN0MRNkMX09nQEwF": {}}, "reason": "Sce6VsIsSSdkP3Iq"}, "userIds": ["aPaXJc57cVP8tXCt", "eutO2hlDa0voH7Al", "8vuxWTaiUJpIgLrb"]}, {"currencyCode": "lSQiwrmWKb8IhCNJ", "request": {"allowOverdraft": true, "amount": 9, "balanceOrigin": "Other", "balanceSource": "EXPIRATION", "metadata": {"CtGvxKwuL3MuhHXz": {}, "y6WjNeNYuVWrqxrN": {}, "Dhsaw4vbDPKG9aUu": {}}, "reason": "Cw1ys0BxLbujuXwW"}, "userIds": ["olxRGH5sQmA6XL9p", "21wulz8cb64KjGDH", "EJUvl8k6CNRAfp1s"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'BulkDebit' test.out

#- 296 GetWallet
eval_tap 0 296 'GetWallet # SKIP deprecated' test.out

#- 297 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '83Led5r4J7MEwKxt' \
    'P0SkagDcL89Pjvtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'SyncOrders' test.out

#- 298 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["aUDi2fDyXlYJu8bI", "kkFh5LqxA2jff0fT", "RIYip6c9di8JeefX"], "apiKey": "J2PdIoHdoDHgvwcW", "authoriseAsCapture": true, "blockedPaymentMethods": ["5RIJjlQAk4T5By0A", "qALCR39RH5UcRubJ", "ZYIgyBXZfTmD5U7R"], "clientKey": "TvIuyjoeXOEFAR7U", "dropInSettings": "LC1He2xJmIQ7lG3S", "liveEndpointUrlPrefix": "SfJb7YC46l63YRc0", "merchantAccount": "T3d9XaFEWXtvTExH", "notificationHmacKey": "o1HliWVA9kYxDaeg", "notificationPassword": "AgXI2ciZ5FWoyqYl", "notificationUsername": "8KD0zlFtltcFGPdV", "returnUrl": "e0VJQksEtHq5KHA9", "settings": "baTP1jNjpn8azMyT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestAdyenConfig' test.out

#- 299 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "BLnxtGnH0h3Tvkyn", "privateKey": "RdR0cTxgD0WOWAsT", "publicKey": "hZ6Ln6xBAApmumWx", "returnUrl": "YTfEEm2g8JpfOhv1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'TestAliPayConfig' test.out

#- 300 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "dFmmwcX8cRQpNggD", "secretKey": "qIfB0DPn1CZrBaO9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestCheckoutConfig' test.out

#- 301 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'DebugMatchedPaymentMerchantConfig' test.out

#- 302 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "y4CHHaydtaKJNujT", "clientSecret": "vCDwyDu1QGAcJRAK", "returnUrl": "1mgNt0pudyASz9qb", "webHookId": "HEsbgt8Nb6qoNGzj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'TestPayPalConfig' test.out

#- 303 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["QQDw2Sc4DTbergyu", "PtRgn6fWMWqZYmAv", "VETTsjp3kTD5DUdB"], "publishableKey": "vhgsfcLURAHqkEpm", "secretKey": "WErwMkbsCK44WEKY", "webhookSecret": "Cuqx8xzh9bTsHGm5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestStripeConfig' test.out

#- 304 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "hk6Ypn8KsMKfuARc", "key": "HovGUZSzWfq3hqss", "mchid": "nqUPIJabCPMhqOeD", "returnUrl": "Xc5LH8xN38dVbdD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'TestWxPayConfig' test.out

#- 305 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "L9eqq8PstBnVeYTD", "flowCompletionUrl": "7i7fqOSZxwOb5jkz", "merchantId": 18, "projectId": 14, "projectSecretKey": "P1GbEQA6nI1VhgTv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'TestXsollaConfig' test.out

#- 306 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'fzwfgRZntMhunn3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'GetPaymentMerchantConfig' test.out

#- 307 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'SCD2AknCwPe4TX4C' \
    --body '{"allowedPaymentMethods": ["K4IBY01KuFbs8Iv2", "Ij9B7VD3SyR3UCMU", "tsTLoeVLjxbwUQUV"], "apiKey": "EWE0xtN3v8DgFUrj", "authoriseAsCapture": true, "blockedPaymentMethods": ["23RrmGI0fa4tSghR", "EoTAvCltzrUTJgBj", "WwZMcxIcmhutMHEe"], "clientKey": "UDIyZ6bUl6Q4DAwz", "dropInSettings": "eZS20lWbIy7iWsAE", "liveEndpointUrlPrefix": "Y3T2YDXuJSzkSZfZ", "merchantAccount": "5duijZETizaQixMg", "notificationHmacKey": "pWQ9PgUcB3N69aWe", "notificationPassword": "qMy8NAiT9jmCgwDP", "notificationUsername": "gvbhdCorBgPIEGgJ", "returnUrl": "fwbFJ8VUxv8qZiAL", "settings": "IoUy5BK25PGFQBJJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'UpdateAdyenConfig' test.out

#- 308 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'HKR8nXRVh36pW5RF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'TestAdyenConfigById' test.out

#- 309 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'N9k93aNy4vvrPXP6' \
    --body '{"appId": "Snc4UqgNJcVC0MQn", "privateKey": "jUphnyKSPgLrITdq", "publicKey": "gHGJd9AlCqccvcf4", "returnUrl": "aG26GboaJ63McAoV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdateAliPayConfig' test.out

#- 310 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '2wACiUOAYJUhwTgl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'TestAliPayConfigById' test.out

#- 311 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    '0tvWir64fqpyffEz' \
    --body '{"publicKey": "0xbTHKA2YqU0FWbY", "secretKey": "Oy7zpSeyGBLauvij"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'UpdateCheckoutConfig' test.out

#- 312 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    'I1vUPcP4XMNICniS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestCheckoutConfigById' test.out

#- 313 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'wlnSYTuNVajwq9on' \
    --body '{"clientID": "I9NBO48v6DUJRe1L", "clientSecret": "pwuZIoLrVS0AcrY9", "returnUrl": "Vdxzm1SnMFP7ijRI", "webHookId": "315PPtar2LEaQgwj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdatePayPalConfig' test.out

#- 314 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    'gNbqY9SXZMP793iE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestPayPalConfigById' test.out

#- 315 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'dDgNGO3Dfmm8Q8A0' \
    --body '{"allowedPaymentMethodTypes": ["3ovBcVCnifE0YS9K", "hgP8rRhISjcIvS4I", "6tzdbpIKoQhtOlKv"], "publishableKey": "npfkWv9kQ9FRDgAE", "secretKey": "VfEZshgoviRWdasw", "webhookSecret": "UzfV36Hwf7gG4iNZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'UpdateStripeConfig' test.out

#- 316 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'fEJ6PGvsYDnaTT5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestStripeConfigById' test.out

#- 317 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    '0e2LY7yB5EiqQhvZ' \
    --body '{"appId": "mCSswSPGcfasR2Nr", "key": "rm0JBGkT1hNjHr2i", "mchid": "cYZYjakKtgPfJHbu", "returnUrl": "wF3aZQrVPWyZpnVj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'UpdateWxPayConfig' test.out

#- 318 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'bpotD8HTOOdvA4Uh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'UpdateWxPayConfigCert' test.out

#- 319 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'dTY2DNsFuGcD5vra' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'TestWxPayConfigById' test.out

#- 320 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'J3WftgZ43r4ZLb7i' \
    --body '{"apiKey": "2SZkIaANvZ0I2EGV", "flowCompletionUrl": "DWs67zwXLLDtNRfm", "merchantId": 30, "projectId": 5, "projectSecretKey": "1w8aAcuRQzdYhuES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaConfig' test.out

#- 321 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    '7BncXfilyRfU4YHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'TestXsollaConfigById' test.out

#- 322 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'MpHxEcJG7c76ATou' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'UpdateXsollaUIConfig' test.out

#- 323 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'QueryPaymentProviderConfig' test.out

#- 324 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "prRWLjHPiPqvMMmY", "region": "JeKvshwdE9XuQ8gy", "sandboxTaxJarApiToken": "kJm5GMKtZSng8Oi6", "specials": ["XSOLLA", "ALIPAY", "STRIPE"], "taxJarApiToken": "GK1wINqvFrAsrmYY", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'CreatePaymentProviderConfig' test.out

#- 325 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetAggregatePaymentProviders' test.out

#- 326 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'DebugMatchedPaymentProviderConfig' test.out

#- 327 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'GetSpecialPaymentProviders' test.out

#- 328 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'w6szojkvjtacFSVT' \
    --body '{"aggregate": "XSOLLA", "namespace": "UiqcJ2Jldy73ukTx", "region": "jfHXQQVmxHmCVmuz", "sandboxTaxJarApiToken": "oO2qep49tDHFl18c", "specials": ["PAYPAL", "XSOLLA", "ALIPAY"], "taxJarApiToken": "IrWq2VvH0roA20Sf", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'UpdatePaymentProviderConfig' test.out

#- 329 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'rc9YYsgvVLN3usfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'DeletePaymentProviderConfig' test.out

#- 330 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'GetPaymentTaxConfig' test.out

#- 331 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "iyCf1FOddxtE52sF", "taxJarApiToken": "K1jNp3OwcrNR2jH7", "taxJarEnabled": true, "taxJarProductCodesMapping": {"bcvyxtTxuptcOYST": "j2AWA5f61ztkSpGm", "f8BXosNylCwcf2iV": "xv9QtivQqeRyPorh", "TuFn3W0qApZ98a9g": "9AjLDQL5jZbyjCnT"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'UpdatePaymentTaxConfig' test.out

#- 332 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'kYE0HYHfBc64zDQa' \
    'wQPbbbHLcaHmXRdP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'SyncPaymentOrders' test.out

#- 333 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRootCategories' test.out

#- 334 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'DownloadCategories' test.out

#- 335 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'vQLVuKpiiZ4Imogp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetCategory' test.out

#- 336 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    '7RKEcLehyAowu72o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetChildCategories' test.out

#- 337 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'CUdMES0mVVI1Filc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetDescendantCategories' test.out

#- 338 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicListCurrencies' test.out

#- 339 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'GeDLCDurableRewardShortMap' test.out

#- 340 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'GetIAPItemMapping' test.out

#- 341 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'pajEhkRLMvZnYZKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetItemByAppId' test.out

#- 342 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicQueryItems' test.out

#- 343 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'k0zbREElwdZORocH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicGetItemBySku' test.out

#- 344 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'SHulJHhAnY7QeDSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetEstimatedPrice' test.out

#- 345 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'roVkXb4xPPUmUifQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicBulkGetItems' test.out

#- 346 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["vfoZ7n3eRMzJEQYw", "NGRl2gcWdDmIy4Ia", "2UtS4T1v2y9Je7ap"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicValidateItemPurchaseCondition' test.out

#- 347 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'QfNdDyT3a0EGpHgG' \
    'LUqdG3kBfGvwjwtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicSearchItems' test.out

#- 348 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'ys4GvDvs1H5juf5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetApp' test.out

#- 349 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'q950XtiMxQDIHnPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetItemDynamicData' test.out

#- 350 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'n3vZc9bUYgwdNmcp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetItem' test.out

#- 351 GetPaymentCustomization
eval_tap 0 351 'GetPaymentCustomization # SKIP deprecated' test.out

#- 352 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "dldDn2Y2l1kZWnqj", "paymentProvider": "XSOLLA", "returnUrl": "aGGTFaJHecFy9m5s", "ui": "6oIWMnk88GXMrS82", "zipCode": "vN0N2236tI7v0x9S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetPaymentUrl' test.out

#- 353 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    't2EFfU2FbyIXierP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetPaymentMethods' test.out

#- 354 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'r2qLKBXRYt7v7Wfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetUnpaidPaymentOrder' test.out

#- 355 Pay
$PYTHON -m $MODULE 'platform-pay' \
    '2omS11YyIWGPc92P' \
    --body '{"token": "cmK9zTgGQs1FIKxC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'Pay' test.out

#- 356 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'XUhNdJ4cK7rz2VPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicCheckPaymentOrderPaidStatus' test.out

#- 357 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    'dEuiT7OrRdHjzNhf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'GetPaymentPublicConfig' test.out

#- 358 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'c3uokglAmxb5eaYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetQRCode' test.out

#- 359 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'dXkBqt2UfrBE1JhO' \
    'OdYFVxYR0XhaQ30c' \
    'STRIPE' \
    'b0re0TJwuS3NPZi6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'PublicNormalizePaymentReturnUrl' test.out

#- 360 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'h1nN0txahdhp0tmV' \
    'CHECKOUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'GetPaymentTaxValue' test.out

#- 361 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'jjIkC8lqpB9cbsDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'GetRewardByCode' test.out

#- 362 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'QueryRewards1' test.out

#- 363 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'reKfjfpUz3jtg1bK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'GetReward1' test.out

#- 364 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicListStores' test.out

#- 365 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicExistsAnyMyActiveEntitlement' test.out

#- 366 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'aDBROm6TJ2qMul8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 367 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'l55U4RB2xVHiARcF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 368 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'LzOW7Uz8Gz5TN3bJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 369 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicGetEntitlementOwnershipToken' test.out

#- 370 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "6UVKAdNp2ReRw5WP", "language": "bO", "region": "JRGwBPZ82ML7i85x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'SyncTwitchDropsEntitlement' test.out

#- 371 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'AiG2FleXiqNPeymX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyWallet' test.out

#- 372 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'gMK8gaxYcDDZjCrk' \
    --body '{"epicGamesJwtToken": "lUdoPRrSlMOoEllC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'SyncEpicGameDLC' test.out

#- 373 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'itDiZDBLqmmiE0hD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncOculusDLC' test.out

#- 374 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    '2A6L9zZJpI7J4njh' \
    --body '{"serviceLabel": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicSyncPsnDlcInventory' test.out

#- 375 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'wMyuNtA5mMerAvf2' \
    --body '{"serviceLabels": [97, 75, 62]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 376 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'vQkoqOZIFeJQSrnP' \
    --body '{"appId": "scIMJRStF3LRa7q4", "steamId": "9EdmhBpI13Mh9tHY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'SyncSteamDLC' test.out

#- 377 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'QilnHrNI7XsRCD3Y' \
    --body '{"xstsToken": "OzMK1ZWOxnVMpyEz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'SyncXboxDLC' test.out

#- 378 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'iAPi9dBg5J0me0Bh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicQueryUserEntitlements' test.out

#- 379 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'vZVrOsZSqQjmdJGa' \
    '6AahLvhIfKDFkuld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicGetUserAppEntitlementByAppId' test.out

#- 380 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'V3vhNCAUQUVGJTsE' \
    'SOFTWARE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicQueryUserEntitlementsByAppType' test.out

#- 381 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'P80ZctunIw8zzjr1' \
    'oeY1p4P0xno1luSq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementByItemId' test.out

#- 382 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'ciM4rfqsoJ7AkLiY' \
    'jJvlKhH1ccnrp3T2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementBySku' test.out

#- 383 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'fKqq9CzJlj0UGtCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicExistsAnyUserActiveEntitlement' test.out

#- 384 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'Jnqpaur75iSsLSqG' \
    'KfGJDmzFepqpoIzo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 385 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'fQ17bQpOtqU8Y63D' \
    'FSnh5IbdftTLRLUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 386 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'wenKzXRT99U5B5j9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 387 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'CT2YI1qt4AYI54fg' \
    'XlDCLFwNGzR7zvW3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 388 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    '3BLQ5NyteBZg7IM9' \
    '3LGdMKko1WdXcuqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserEntitlement' test.out

#- 389 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'nyBh936FR7fT7f00' \
    'EZw65iq4fnnFA4ie' \
    --body '{"options": ["AeG0JcWHLxYckKH0", "j3mmJ2Y5FsP84rgl", "0AQlBikeTeA9eq8h"], "requestId": "IKrzAUsKqpjQGHI3", "useCount": 100}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicConsumeUserEntitlement' test.out

#- 390 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'ZkYfTO2Gg00JcXGa' \
    'IUaL3FoA27eK2U3I' \
    --body '{"requestId": "HpgmmQaQj7hyQjWq", "useCount": 52}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicSellUserEntitlement' test.out

#- 391 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'KhR4x3pYj5be9x03' \
    --body '{"code": "hTzeUaFK6P6yxOlF", "language": "hD-Rmws_Kf", "region": "cSW6YWXMTlqVrGyQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicRedeemCode' test.out

#- 392 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'YDnbzj7Xg2lcvB7T' \
    --body '{"excludeOldTransactions": false, "language": "ugy", "productId": "uLwU5IJt4pAasYNW", "receiptData": "28u3UZ3q6QdMAL9I", "region": "C4460Wck2oK2mLwk", "transactionId": "xgJXK2OjNzQ95lce"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicFulfillAppleIAPItem' test.out

#- 393 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'Iy0lnTniV8j7XmR8' \
    --body '{"epicGamesJwtToken": "FUW42wLu5tQBUE3k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'SyncEpicGamesInventory' test.out

#- 394 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '2mUvrQPFxSaRrDsF' \
    --body '{"autoAck": false, "language": "mlh", "orderId": "0zQqYmGkk8Pcq83l", "packageName": "2hWOuqsilAWXNFfx", "productId": "IWM9jL08jtCIr8ST", "purchaseTime": 99, "purchaseToken": "IIeRmFR2TQ2rE5Ug", "region": "f8q6zX7Jc7TK5xO3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicFulfillGoogleIAPItem' test.out

#- 395 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'LzmzW8Oj3HDRoKRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'SyncOculusConsumableEntitlements' test.out

#- 396 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '6ZZRLgp1djMaw9o5' \
    --body '{"currencyCode": "TdLhB2mWrW0A29Uf", "price": 0.19090802114939842, "productId": "IqBalvCur3yS6PcP", "serviceLabel": 17}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicReconcilePlayStationStore' test.out

#- 397 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'N8ee3aFSyZkpxzyG' \
    --body '{"currencyCode": "W3kHAKNzH5cJ1x2I", "price": 0.11952484773899352, "productId": "HEQwW44r5yXnevZs", "serviceLabels": [61, 6, 7]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 398 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'mqgWRmPnXpH8xifq' \
    --body '{"appId": "avEfKK0Dei3ChLwk", "currencyCode": "IGKtgDjDah0UewhS", "language": "vUf", "price": 0.34101728519109453, "productId": "mbqHpLDqY64bsfWM", "region": "A6zIWiASrarIiILe", "steamId": "XO18VYOBdYdQraUw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SyncSteamInventory' test.out

#- 399 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'eJSX5gGRLc0R4vMM' \
    --body '{"gameId": "PlJqY7ujDDLuoQJs", "language": "Tm-BaOB-UT", "region": "y8KpP0RHI8icuY92"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'SyncTwitchDropsEntitlement1' test.out

#- 400 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'iMkPiEKRgT1zZPaK' \
    --body '{"currencyCode": "lnIY3vGLET05JQWh", "price": 0.3632316695812685, "productId": "ijC7ydSFRQ4V5Oyy", "xstsToken": "pfQ5iJtNrVbjnyYE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'SyncXboxInventory' test.out

#- 401 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'Rw24T1DBdzzVbhZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicQueryUserOrders' test.out

#- 402 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'nh9FfHsuwhOtgOWt' \
    --body '{"currencyCode": "ZuhAp0yxLpfWB0in", "discountedPrice": 68, "ext": {"cE5vUWRlOGzgjngh": {}, "EeYuTA3fZ9naIn2E": {}, "hpBnamOqQfF1i9lD": {}}, "itemId": "i17TuzOCkfreVXF3", "language": "HPhA_Xglc-788", "price": 64, "quantity": 20, "region": "DfogFpQ6h4G1Jwgw", "returnUrl": "qyIOpmNMgpfDY1FR", "sectionId": "9rKaxaWsCGgI79Hr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicCreateUserOrder' test.out

#- 403 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    '331YipwCDOc9FNs0' \
    'rjVHzs9C25B5DYIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserOrder' test.out

#- 404 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'GcoYjLN4VPTXzknD' \
    'z9YRB0KErE7XXTkV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicCancelUserOrder' test.out

#- 405 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'svdGlmWWA02nKwO7' \
    'XUNrraxsHn4uKhXV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserOrderHistories' test.out

#- 406 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'FTTx0TcboB98Gf5P' \
    'cmWICZpV13Vxw1In' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicDownloadUserOrderReceipt' test.out

#- 407 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'WyY5J5tCY01FkbWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetPaymentAccounts' test.out

#- 408 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'SwD66Xg5Qbc0Ejxx' \
    'paypal' \
    'x6LtOu3SAtYQcZ2M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicDeletePaymentAccount' test.out

#- 409 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    '0m2eu4s6Vt77Z7VY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicListActiveSections' test.out

#- 410 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'CzMbz1C3ZtjGu9Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicQueryUserSubscriptions' test.out

#- 411 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'aM7nweO9MSckJNZe' \
    --body '{"currencyCode": "DhfW7AVHVE6Tamht", "itemId": "DUacOPwPczqMDbsg", "language": "eA", "region": "xIpP9oAICocQql5Y", "returnUrl": "fBZVQcDD4zf1BZvQ", "source": "IrbCQWs1jZYqrf4b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicSubscribeSubscription' test.out

#- 412 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'xOoikruHKYKNEVJS' \
    'zeli2Uey4fuSj1kS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 413 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'eWA3702McnnKWV37' \
    'CLHYvul2IsFExmn4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetUserSubscription' test.out

#- 414 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'GV4MH5mOZyTMMDaz' \
    'z0zG1FmCCywXfHj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicChangeSubscriptionBillingAccount' test.out

#- 415 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '29WcNk8k8qK4gJru' \
    'x6tlQDfleFLBKj8h' \
    --body '{"immediate": true, "reason": "i1EP6ekQzrmDqC82"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCancelSubscription' test.out

#- 416 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    '7Ayw8HdDdyIIR5cs' \
    '3jEJm9cqIJO6etrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicGetUserSubscriptionBillingHistories' test.out

#- 417 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'PcoqdV16bQzZjJii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicListViews' test.out

#- 418 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'JFm6K0MsbekvKte7' \
    'LEbOajs9HWygfQVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetWallet' test.out

#- 419 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'PqE6XNxmrOFx6Aen' \
    'NJCzeLqjOhHMsieB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicListUserWalletTransactions' test.out

#- 420 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'QueryItems1' test.out

#- 421 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'ImportStore1' test.out

#- 422 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'zDBhi6oZhjEnbkZp' \
    --body '{"itemIds": ["3ZHkJnKJ2ksygYZV", "yQIUbI6vW6lvytcm", "R4QRN7ybL3lT1Ois"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'ExportStore1' test.out

#- 423 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '7OsTElVV8XJ7Jg2J' \
    --body '{"metadata": {"P8JKQ1Fia4jQzEGs": {}, "QTmKTeq9hsX0E1pS": {}, "QzkJa95maQLAJLoG": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "V658ZBVGgxlpGxhD", "namespace": "9kKX2uBUIh1pfP8b"}, "item": {"itemId": "RBVoq807roCNo3Qw", "itemSku": "4Z54sNMs82e3yxhk", "itemType": "TFfQHB8O5ke34NGu"}, "quantity": 79, "type": "ITEM"}, {"currency": {"currencyCode": "iPaGqelc3lbrPkW2", "namespace": "foKqIz9z80ICxp4M"}, "item": {"itemId": "7Opf9oRlvBsYj4Ic", "itemSku": "bdUz2cBWKIUuPLfv", "itemType": "TFl9DbHQLYWCwsAV"}, "quantity": 5, "type": "ITEM"}, {"currency": {"currencyCode": "Q0VGEUxlcNQWOpRL", "namespace": "ETWMAv0uJ30L51Tx"}, "item": {"itemId": "rdknW52x2o1yDO6b", "itemSku": "wcKYeFoxUWdvEBTw", "itemType": "Uyzq5bzdNEHv6Gma"}, "quantity": 29, "type": "CURRENCY"}], "source": "REWARD", "transactionId": "OIadEDAmp524IRpl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
