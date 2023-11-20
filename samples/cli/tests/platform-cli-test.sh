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
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-04-22T00:00:00Z", "grantedCode": "8J1nsv4W2OJhtafx", "itemId": "MSJlHeb34sZKHcl5", "itemNamespace": "LLLOexL4fZvWtND2", "language": "eCh_ozqf", "quantity": 45, "region": "NtFEJ7tnkY6Mca5a", "source": "GIFT", "startDate": "1978-03-17T00:00:00Z", "storeId": "zhLVA3kE8jKvgatO"}, {"endDate": "1986-08-14T00:00:00Z", "grantedCode": "OXudXgNne8kJATwl", "itemId": "c6esUp6Sw1I98jeZ", "itemNamespace": "Q7hfxnhLd3Knakno", "language": "GD_nT", "quantity": 84, "region": "wVJnNnN7kAa7j0ri", "source": "REWARD", "startDate": "1979-01-18T00:00:00Z", "storeId": "AdNJOIG36I6tRbRc"}, {"endDate": "1979-08-29T00:00:00Z", "grantedCode": "EveMdAdiPKDUVSC0", "itemId": "0PYeDcagginxnFIn", "itemNamespace": "a3yddcbsPheTH26I", "language": "Jkio-VahH-867", "quantity": 42, "region": "PrIfapq5AAeMe4L3", "source": "OTHER", "startDate": "1974-09-05T00:00:00Z", "storeId": "WgU4pCAKxeE70Cau"}], "userIds": ["kqsGnmyo5JJTUVmb", "nQNxot371W9G4AvQ", "8GEXFTlEMEsFzYqw"]}' --login_with_auth "Bearer foo"
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
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["SDMZz95OYKiqaZD6", "6nEwnZhsjwJeGwaP", "3xe5rruJVfLGea0Z"], "flexible": true, "images": [{"as": "s7ACC1RgBfoNrHlF", "caption": "i2qJLgmBLE35Yhyi", "height": 61, "imageUrl": "0TQNEI3kfabxJWWS", "smallImageUrl": "I1ECUo1NPpeFhUzt", "width": 14}, {"as": "DgB7n4C97uAPP8PA", "caption": "TLpUpxeJlsBJT6Hh", "height": 83, "imageUrl": "W9nBhvhf8Q0DtJMc", "smallImageUrl": "YQdN66bswAgt65X4", "width": 80}, {"as": "HKWW4fI1IQcoBQEL", "caption": "cNlZkqTZrKgXNwvm", "height": 9, "imageUrl": "aWsQJtRYoagRJK5P", "smallImageUrl": "X9UcOvhPyE11TRT2", "width": 91}], "itemIds": ["B28MpusuhhDJ5slz", "giWZEtyd56LfxnbY", "97jjYgXchCbkXX26"], "itemQty": {"uEdCfQaMAQuTKfC0": 71, "d9yOfIMLds2DbPca": 30, "3DhqciwIeShF9RKb": 9}, "itemType": "INGAMEITEM", "listable": true, "localizations": {"vxuJlhXbWhbwPwTo": {"description": "C6knjVwVnzaqSfJi", "localExt": {"QFC2gXoda0kg16yU": {}, "SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}}, "longDescription": "ByfHZinxNfgPAwkM", "title": "BsznlBUqnLT4AbGp"}, "tKaWNvPbpg7yrRvX": {"description": "fZ6rvgvEY3Hht1Sw", "localExt": {"qTsKKKo37NHDOQe9": {}, "1Ps3ztUIV0dS6hIH": {}, "9c4VfkyrwpuXxbaE": {}}, "longDescription": "RbfgPmi0eHkt1mr9", "title": "EOIFg0dnWIYN2NVL"}, "70Iw157g00jr9b8M": {"description": "uYmmeKTmBNvGYxEQ", "localExt": {"df3ewoGGoY7xmFNA": {}, "mjDDCvs78mcMdiS7": {}, "6YApGJ9ufwLYkqIg": {}}, "longDescription": "LuZS6hsQryiEtOAb", "title": "peUNf26UqkCfgCUY"}}, "lootBoxConfig": {"rewardCount": 56, "rewards": [{"lootBoxItems": [{"count": 0, "duration": 28, "endDate": "1980-06-25T00:00:00Z", "itemId": "xaOBdPF0JmX8qwU1", "itemSku": "cTuHHPB5S3DvPRCz", "itemType": "BrVUxmDOj3cvRFaT"}, {"count": 59, "duration": 15, "endDate": "1998-04-01T00:00:00Z", "itemId": "1W0TGTCm4fZWuk6p", "itemSku": "QxDQpKqxLGeMvr9T", "itemType": "svcMQ7dBsaIecRxI"}, {"count": 38, "duration": 28, "endDate": "1997-06-22T00:00:00Z", "itemId": "SHiWxF0YbuU5ar5q", "itemSku": "TLWUCy0Afgc050XI", "itemType": "ZRW491e94mQjVOOB"}], "name": "nIWhunElqZUodp3I", "odds": 0.12173679964673378, "type": "REWARD", "weight": 31}, {"lootBoxItems": [{"count": 58, "duration": 92, "endDate": "1988-12-03T00:00:00Z", "itemId": "y1ei1fIrPvfHnRN0", "itemSku": "6EjRwEQlNapJRfk4", "itemType": "f9Zcw1pEHAyNFxcV"}, {"count": 93, "duration": 74, "endDate": "1978-06-22T00:00:00Z", "itemId": "uMybYGxD9IPmmsLm", "itemSku": "u3kaPj0O4zd8Tb7c", "itemType": "UNGPTBxiFFCrn7dj"}, {"count": 18, "duration": 19, "endDate": "1980-04-03T00:00:00Z", "itemId": "69FTFVGUVhvKhJCm", "itemSku": "eisql14mUHVbMPim", "itemType": "NhcZsU3VAdMDcb4q"}], "name": "lkiFAamqvZI2Kwjq", "odds": 0.6656977665959348, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 18, "duration": 27, "endDate": "1995-11-05T00:00:00Z", "itemId": "Xade41s3rH34mB2y", "itemSku": "PlRpWjmHZAAvKTH8", "itemType": "MuqIg0CzkguwuJCW"}, {"count": 54, "duration": 62, "endDate": "1982-09-03T00:00:00Z", "itemId": "xSvNDlmM5nQFMGzs", "itemSku": "7fzjgyc44mEh9tRk", "itemType": "8knYSV30lnroQehM"}, {"count": 61, "duration": 1, "endDate": "1977-02-03T00:00:00Z", "itemId": "i6t9unQLYXxm09wp", "itemSku": "GAbpEmDY9vLh3u6E", "itemType": "DsUmrV6kH4OotKwG"}], "name": "3UC6XCnnZxF8CmQr", "odds": 0.8659005870062143, "type": "REWARD_GROUP", "weight": 100}], "rollFunction": "CUSTOM"}, "maxCount": 11, "maxCountPerUser": 21, "name": "br34rBBN9tU6TDm5", "optionBoxConfig": {"boxItems": [{"count": 67, "duration": 61, "endDate": "1976-05-01T00:00:00Z", "itemId": "MDu87t0ldWf7iSGI", "itemSku": "iKFtWtn4Yr2svKM6", "itemType": "pqLGZ0TBujELAUK6"}, {"count": 25, "duration": 62, "endDate": "1992-04-01T00:00:00Z", "itemId": "iZgbwwm5iGzXtckn", "itemSku": "rgidKupvXO6aj4hC", "itemType": "mTC34jxW4pIDwdqX"}, {"count": 31, "duration": 26, "endDate": "1985-12-20T00:00:00Z", "itemId": "poBCbyJsF5IjF1c0", "itemSku": "W338HS6CBgVRyihY", "itemType": "NZ84CVhziXV8HwSm"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 4, "fixedTrialCycles": 4, "graceDays": 44}, "regionData": {"cA8wvLsWUNd6lPKv": [{"currencyCode": "qDejvqklTSvDwuOr", "currencyNamespace": "P9lzpiX0VuFpZum7", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["E8SohhhuiTnJarYY", "5IQYBQuxLvPuWYvE", "kHBDdSzBXdxapwhd"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
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
platform-update-item 'X8DD4MYXlrJ81lHv' 'v9rqvEoM8YmVjAkO' --body '{"appId": "3HKsEp6KlqwW4djr", "appType": "DEMO", "baseAppId": "M7tuL81lsR7xxSVp", "boothName": "3Gd2TK0HzYviTgYm", "categoryPath": "x82JVBRLPZ6Iz8tn", "clazz": "e5dbguBF6Gsvvdl8", "displayOrder": 20, "entitlementType": "DURABLE", "ext": {"z9x7XZIjU4IK9lOL": {}, "aZaMphKCqTq3EVhe": {}, "JjoEEXBLIxGnNuho": {}}, "features": ["cPAGv6c1ESC6hZYT", "EdqQpoGkUWNizk5U", "JM3WWPvvCiCf33Vi"], "flexible": true, "images": [{"as": "bzf5aANNNs5kgSZZ", "caption": "NUHbIT9szApmWJO5", "height": 45, "imageUrl": "Zn1YXj5zFZeOCOR9", "smallImageUrl": "NvBQZSJPOIKrRBrY", "width": 98}, {"as": "fa2LrnpZxNnLRH36", "caption": "bqS2oFY76PU1AziB", "height": 82, "imageUrl": "sys6GdkDcos5uVJ0", "smallImageUrl": "BJfZ0jvA54CSqZFD", "width": 39}, {"as": "3by2kYSCdnFKLc0x", "caption": "cTjqjdcEfU61OJYM", "height": 26, "imageUrl": "PKVSZCg3XTc9vQe0", "smallImageUrl": "dHJfF6KIuvnRCa9J", "width": 22}], "itemIds": ["lhe98oaFKlQicdrx", "VhrtwSd9QWVMYz7T", "U1TsxsChSclSkb5a"], "itemQty": {"Bi9K9zyv6gFZXI5n": 72, "JgjC56pda3YhtQxp": 58, "dIn7QqXBDXJcrqKm": 60}, "itemType": "EXTENSION", "listable": true, "localizations": {"xoLnWGP1PafIjLX8": {"description": "ce0KbNN7Ycl2JfmQ", "localExt": {"plvGjVQ4aebjfgGu": {}, "472oWJlfglLM4xjf": {}, "kNL4lU6jaGfsD1cf": {}}, "longDescription": "swmeFpvtDtetoQVF", "title": "L8LNW11vtpaTxi7k"}, "489jRCn48bvkCPfK": {"description": "ofwXOIZZQAJza84l", "localExt": {"KKmVOaTS6xBbNrSU": {}, "AW2ak7ISDrBVg6Nu": {}, "DZvPb1kuUfNfUDe4": {}}, "longDescription": "g7q6PHEaqbzHvDDl", "title": "1jiLw3XMGBA6JXDp"}, "A1tIC45C0oaGouFu": {"description": "4hXONgUwJnUpryDe", "localExt": {"RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}, "QcFo9gxOgvDc7xMr": {}}, "longDescription": "RKvw8ISP2WKmCRRX", "title": "BxlalCHtWlKxLpS8"}}, "lootBoxConfig": {"rewardCount": 10, "rewards": [{"lootBoxItems": [{"count": 39, "duration": 76, "endDate": "1982-04-30T00:00:00Z", "itemId": "guycGiq9j2EyIknf", "itemSku": "LDpgHnMOn8nc3gUZ", "itemType": "8ZFyyEr0KBXuJBqK"}, {"count": 87, "duration": 79, "endDate": "1981-09-07T00:00:00Z", "itemId": "8uux9xBomQFPFWy5", "itemSku": "cwNPI6aFo0MVwDZC", "itemType": "IXFNEL3uWVRz3V7Y"}, {"count": 2, "duration": 80, "endDate": "1989-04-03T00:00:00Z", "itemId": "M3bNLWHAbCZixe2c", "itemSku": "Q6O30lpzcBQMAEcN", "itemType": "cJqrKxnMzSYoc4Zj"}], "name": "iMY4H34B6wVd8ipc", "odds": 0.5899514335296582, "type": "REWARD", "weight": 46}, {"lootBoxItems": [{"count": 70, "duration": 88, "endDate": "1971-02-10T00:00:00Z", "itemId": "rryHB6GO9zP3Faep", "itemSku": "A3b3YJ9nJM6vtT27", "itemType": "xv85K5MU2qmbeqaV"}, {"count": 8, "duration": 48, "endDate": "1977-12-12T00:00:00Z", "itemId": "INdClpF7OvlBIEgj", "itemSku": "se5kd6GEDo08yq5E", "itemType": "5HleLoog4me2NBFp"}, {"count": 39, "duration": 47, "endDate": "1987-04-05T00:00:00Z", "itemId": "3j9LYdG7xVPqBqe9", "itemSku": "RDQMBSYAFLqp8PF5", "itemType": "hCcoukWpnbz4ys7j"}], "name": "6lxuU3u2HEG0qfKe", "odds": 0.10766913434660086, "type": "REWARD", "weight": 26}, {"lootBoxItems": [{"count": 65, "duration": 93, "endDate": "1986-07-21T00:00:00Z", "itemId": "sPykS8YLmwtYgWGc", "itemSku": "A0h4G1LZ1HaX5UBM", "itemType": "bsF44VTsLDRzdq22"}, {"count": 5, "duration": 2, "endDate": "1985-04-21T00:00:00Z", "itemId": "F2g7TVtzYEHUodh3", "itemSku": "iUfBthbepUCTWiZ1", "itemType": "uqh7GAi4FEIu44u8"}, {"count": 45, "duration": 77, "endDate": "1999-12-23T00:00:00Z", "itemId": "4ouSgkpK70uJmUL0", "itemSku": "uzElixc023dIvDiA", "itemType": "0tQWlHwBcTtztx3V"}], "name": "Al6tXFbnATCzUOIz", "odds": 0.7622020736079372, "type": "PROBABILITY_GROUP", "weight": 12}], "rollFunction": "DEFAULT"}, "maxCount": 63, "maxCountPerUser": 22, "name": "CZ4AELr5lraa5v5P", "optionBoxConfig": {"boxItems": [{"count": 23, "duration": 58, "endDate": "1981-03-18T00:00:00Z", "itemId": "Je32AiwKadEoIVmp", "itemSku": "rwPsa9YD92CX0rIT", "itemType": "ajpwHITGeHTnqRbz"}, {"count": 56, "duration": 91, "endDate": "1985-07-11T00:00:00Z", "itemId": "9ZFgJbQ3Fj1umx4I", "itemSku": "tzkMJ7cudf4r916G", "itemType": "Prhn2etVIQvRkQJA"}, {"count": 39, "duration": 61, "endDate": "1998-09-30T00:00:00Z", "itemId": "4ooQ980ywmg1pWpW", "itemSku": "it1QC7FKe0fnHUlm", "itemType": "U1unGKM0tgfeWy47"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 57, "fixedTrialCycles": 46, "graceDays": 44}, "regionData": {"MI4gGmvK9gW596Fw": [{"currencyCode": "BNrFXt3TAuKBwBcD", "currencyNamespace": "12ae6r3hHwya4Npd", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1974-10-30T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1975-08-05T00:00:00Z", "expireAt": "1979-08-30T00:00:00Z", "price": 41, "purchaseAt": "1976-01-19T00:00:00Z", "trialPrice": 1}, {"currencyCode": "Hf7dbh2iKNUl0qJq", "currencyNamespace": "zoKMRMG541PAiNjU", "currencyType": "REAL", "discountAmount": 37, "discountExpireAt": "1983-10-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1995-04-14T00:00:00Z", "expireAt": "1994-10-28T00:00:00Z", "price": 22, "purchaseAt": "1991-01-21T00:00:00Z", "trialPrice": 41}, {"currencyCode": "LMUaDSwwQlnNRZJH", "currencyNamespace": "BSB4fZWEFIZs28Ff", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1997-05-03T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1998-06-22T00:00:00Z", "expireAt": "1996-12-28T00:00:00Z", "price": 21, "purchaseAt": "1973-06-09T00:00:00Z", "trialPrice": 49}], "f4lhBPbarbWEm8bV": [{"currencyCode": "tZcfVCPdQhim9QKU", "currencyNamespace": "AFTVYelIlGJg9wdc", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1975-01-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1979-03-03T00:00:00Z", "expireAt": "1978-03-23T00:00:00Z", "price": 36, "purchaseAt": "1973-10-11T00:00:00Z", "trialPrice": 32}, {"currencyCode": "pfcFBUsnnDJlmD1i", "currencyNamespace": "EokbUiYzCQh2iNTw", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1977-11-07T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-03-02T00:00:00Z", "expireAt": "1972-10-13T00:00:00Z", "price": 6, "purchaseAt": "1980-11-16T00:00:00Z", "trialPrice": 43}, {"currencyCode": "zMTQ9P7sYLDWAJOA", "currencyNamespace": "75K4BYJ2fkqYJoF2", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1977-07-21T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-12-14T00:00:00Z", "expireAt": "1979-12-25T00:00:00Z", "price": 45, "purchaseAt": "1984-05-20T00:00:00Z", "trialPrice": 5}], "o8TWwXWsz9TVmdMK": [{"currencyCode": "EohKzuMYDUTLBeCi", "currencyNamespace": "dXjuGgx8ncXejmeZ", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1984-06-04T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1979-03-23T00:00:00Z", "expireAt": "1983-08-23T00:00:00Z", "price": 24, "purchaseAt": "1972-06-12T00:00:00Z", "trialPrice": 38}, {"currencyCode": "meTrT7cF9oVCh89w", "currencyNamespace": "NOkKYssVejcL3kR3", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1985-05-24T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1981-11-22T00:00:00Z", "expireAt": "1998-02-13T00:00:00Z", "price": 60, "purchaseAt": "1971-03-08T00:00:00Z", "trialPrice": 73}, {"currencyCode": "GAYOHR5BWa9VzIka", "currencyNamespace": "QEl1iUProNB6hI6I", "currencyType": "VIRTUAL", "discountAmount": 28, "discountExpireAt": "1987-08-25T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1992-04-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 14, "purchaseAt": "1989-09-10T00:00:00Z", "trialPrice": 96}]}, "saleConfig": {"currencyCode": "vdRhG9NwV3zDuqVl", "price": 98}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "pcYPK8IxrSZuxWl0", "stackable": false, "status": "ACTIVE", "tags": ["nPS2urJqerobWMZG", "4fJIyFAm3DQht4Jw", "VL5KLTxahWlS6XdB"], "targetCurrencyCode": "aKSLCgOOPXM6XTUh", "targetNamespace": "2dJ90yqHDNacl4F9", "thumbnailUrl": "G6Dl5TFwBY6HKXAb", "useCount": 23}' --login_with_auth "Bearer foo"
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
platform-update-item-purchase-condition 'rh54CWbYb0Pebyt8' 'b4DGscjwrizsFUgY' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "excludes", "name": "xHnmSxvkG9UR5q9n", "predicateType": "EntitlementPredicate", "value": "TBjn3d2sFzMS3QaV", "values": ["277Ivjj1A647XQ3k", "rQJXQxoIbVi2CLEk", "jZF7Ax6115Kg9U8v"]}, {"anyOf": 29, "comparison": "excludes", "name": "KMavu4Ul2IaieEbP", "predicateType": "SeasonTierPredicate", "value": "bojDVaZLpx4kEWYk", "values": ["hmWKSSrF35anDGvu", "r19V18oIrUKXttgA", "O6KrKUMhJrASBh61"]}, {"anyOf": 71, "comparison": "includes", "name": "2QdWJFLmoPEgd8EM", "predicateType": "SeasonPassPredicate", "value": "f2HEHvVevhISjbtB", "values": ["OU2V9yw94oa8UJ34", "JUK5fE3OufPSX3Pd", "TIedV3HyoX4VnO2L"]}]}, {"operator": "or", "predicates": [{"anyOf": 52, "comparison": "isNot", "name": "DNp1SZ58aDllwzTR", "predicateType": "SeasonTierPredicate", "value": "gUSMM5au8GJT0mkV", "values": ["cXXTUIggoH89QNmI", "17UDb19R6H7r1ta3", "PI6zUtf3QaJPGrTN"]}, {"anyOf": 25, "comparison": "excludes", "name": "7jK5pxe82pgFiAS6", "predicateType": "EntitlementPredicate", "value": "KxbS7Q2OgRucL1jw", "values": ["Xl5XCbkOfHaGr5kd", "me06c6SKLc2mEC3I", "RXzfjDZZBmOau6sy"]}, {"anyOf": 0, "comparison": "isLessThanOrEqual", "name": "tvmMB6jzrpRGESmo", "predicateType": "EntitlementPredicate", "value": "XPMqxj4hBgVY3YAx", "values": ["woJcaRMEb15LBlTV", "ZLKbcOdyjqf6Q4oi", "ufc5ZyODR2NVyn4P"]}]}, {"operator": "or", "predicates": [{"anyOf": 67, "comparison": "includes", "name": "TTD81xhNP4t6kYBU", "predicateType": "EntitlementPredicate", "value": "iSNV4qBrt1kcLmRv", "values": ["6EJtl5xWnsb8oWq9", "4RImNWVIJnhhwFDV", "1VitaomvWTzdsW4N"]}, {"anyOf": 47, "comparison": "isLessThan", "name": "cY1HgAnZV4IOglVL", "predicateType": "SeasonPassPredicate", "value": "Yc481dYdvGxJAMDR", "values": ["VBCV9qJhWva2FPBu", "A1LF7jdWlekFwO94", "jX0geYCpGJM4sqsP"]}, {"anyOf": 80, "comparison": "isGreaterThanOrEqual", "name": "MiZXXOFwmGWAvNF0", "predicateType": "EntitlementPredicate", "value": "GkwxUNYyNwGiKrkn", "values": ["OadpgegCUjTdi1Eh", "H0Y5mrQgLC6D2qsF", "iQHglUQMZi5WjMZf"]}]}]}}' --login_with_auth "Bearer foo"
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
platform-commit --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 13, "currencyCode": "YzswAGpXqQxctuVa", "expireAt": "1979-06-17T00:00:00Z"}, "debitPayload": {"count": 85, "currencyCode": "3iNvn7vLZ7h6alhJ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 65, "itemIdentity": "nDodm4TNs8mAj6IK", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 73, "entitlementId": "uyzZo1rj0ZrLQjk4"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 43, "currencyCode": "fIksth24cZBpdDFf", "expireAt": "1982-11-29T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "dJagEmTuaxlxgywk", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 71, "itemIdentity": "dOsyxX1tfW488oYU", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 95, "entitlementId": "jyCVJ0V8obTlGVTh"}, "type": "REVOKE_ENTITLEMENT"}, {"creditPayload": {"balanceOrigin": "Epic", "count": 25, "currencyCode": "wiNloJfey3HXL6Sj", "expireAt": "1977-02-18T00:00:00Z"}, "debitPayload": {"count": 18, "currencyCode": "F7JkjCVpZKMxkFkB", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 57, "itemIdentity": "XMU6KRIm5xBoIi99", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "tgFXasxp5h780ktj"}, "type": "FULFILL_ITEM"}], "userId": "yHvEqpJSrDXVwCkh"}, {"operations": [{"creditPayload": {"balanceOrigin": "Xbox", "count": 79, "currencyCode": "Q161TFjROYJm75VI", "expireAt": "1981-02-03T00:00:00Z"}, "debitPayload": {"count": 59, "currencyCode": "CpqnZ5NW623WWn2Z", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 75, "itemIdentity": "QvRa7CDRTcsAHzD3", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 81, "entitlementId": "ZyyWbUQpbcv3IwmL"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 13, "currencyCode": "K3zIUYJmdF1YtWNS", "expireAt": "1993-09-21T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "YH4ijqOVM50tCqkZ", "walletPlatform": "GooglePlay"}, "fulFillItemPayload": {"count": 23, "itemIdentity": "sSxAbDJ7sHCLup8p", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "EosOXglQwwdeLVpm"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Playstation", "count": 46, "currencyCode": "NrXweiCnDldRPRfd", "expireAt": "1973-04-14T00:00:00Z"}, "debitPayload": {"count": 25, "currencyCode": "LZ0GTJwEjoZrRtae", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 75, "itemIdentity": "KwhpZVdw5UMa8ymx", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 53, "entitlementId": "EFLwELCY2vIddlxn"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "wFVKUC2ecnpUDqvL"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 17, "currencyCode": "1ACMvoY4jWH9dFmO", "expireAt": "1988-05-13T00:00:00Z"}, "debitPayload": {"count": 68, "currencyCode": "j9suukPE4JwQONQ2", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 23, "itemIdentity": "CbMn0Oia336uiiMT", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "ductvUfVwLahtRed"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Oculus", "count": 3, "currencyCode": "SiZlOpIQ8GL7jBF1", "expireAt": "1993-03-05T00:00:00Z"}, "debitPayload": {"count": 75, "currencyCode": "OexAPzCG6ZKQClGc", "walletPlatform": "Other"}, "fulFillItemPayload": {"count": 27, "itemIdentity": "36nbfM3J9G40Y62b", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 62, "entitlementId": "o941ALznQuHVskfC"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Other", "count": 75, "currencyCode": "8LOBxE15JYj4IqWK", "expireAt": "1998-04-07T00:00:00Z"}, "debitPayload": {"count": 23, "currencyCode": "u1KiTTiz7yrIvQj2", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 61, "itemIdentity": "sN7bRwcr16lW5Ywg", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 31, "entitlementId": "b4pUwnGptHUplxza"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "kQiKp2oac8QTNEuB"}], "metadata": {"beuQqm9wM7mgTtUd": {}, "PVcQijMBhs0kDP6d": {}, "3nuUZ41mSeS9SnGq": {}}, "needPreCheck": false, "transactionId": "LdbYEknHPKrZ7TiN", "type": "BE0HRsE0GHDOFjrf"}' --login_with_auth "Bearer foo"
platform-get-trade-history-by-criteria --login_with_auth "Bearer foo"
platform-get-trade-history-by-transaction-id 'qJcyxT2a7fCFAUzL' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'ELiM573TdtWjfVci' --body '{"achievements": [{"id": "uLnLsBKGsALPuCOy", "value": 31}, {"id": "igIxAhbFMZfxaznl", "value": 59}, {"id": "ZgQEvFzox9wHocX3", "value": 60}], "steamUserId": "H4URx3NkKQBYrlUa"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements 'MiFEWUT8cAFO5zEw' '8GENEJYPKxxOw7xN' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'Q98IEbc9YITN98j4' --body '{"achievements": [{"id": "P2AGeidXRRnIAJfK", "percentComplete": 97}, {"id": "OjqwgKvfXXs8pDqm", "percentComplete": 96}, {"id": "1AZSRkuw6q8FgqG4", "percentComplete": 90}], "serviceConfigId": "iGa5mkZjnRXVcg6A", "titleId": "ByNpBo2JYkwLdmR9", "xboxUserId": "7u9MVUii4KpYcb1A"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'UsESaBOTHnbX9tC9' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'PQlFAGbMtEybfcAl' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment '0mnsAkRT2k0AzdgI' --login_with_auth "Bearer foo"
platform-anonymize-integration 'unRkTxsGdrpNELM8' --login_with_auth "Bearer foo"
platform-anonymize-order 'Lfkut0wnT24wh59R' --login_with_auth "Bearer foo"
platform-anonymize-payment 'GSbBMh7jpszuVk6i' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'PdJ2boQqCCyJfThv' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'CJieqRSGN8Mm74Hl' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'SZzp4aEW4GkHG5OI' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'VuGv47XJpkMiopQr' 'XBOX' --login_with_auth "Bearer foo"
platform-get-user-dlc 'UV48Oh6I45X7HvUt' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'PYONZdFk75lkjQNH' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'rjaboGomguUqeuZh' --body '[{"endDate": "1979-12-07T00:00:00Z", "grantedCode": "trRbNnGejdTGvZgN", "itemId": "5hshSe5YmZXKEQLk", "itemNamespace": "M6o3eGSP4Htmr90T", "language": "ihR-092", "quantity": 90, "region": "ibJMmRgoxNwp1lGk", "source": "OTHER", "startDate": "1979-08-30T00:00:00Z", "storeId": "8HP1TM0tefVQPWX1"}, {"endDate": "1991-06-07T00:00:00Z", "grantedCode": "PO5Wn7rNG8rGp7Fa", "itemId": "dvo5EzpX0IttsRez", "itemNamespace": "yY9GB5sf94ALBmvd", "language": "aC", "quantity": 29, "region": "cZb8cWdVH9bww15z", "source": "ACHIEVEMENT", "startDate": "1980-03-20T00:00:00Z", "storeId": "aYrJAe5Kd5QB96nd"}, {"endDate": "1976-11-27T00:00:00Z", "grantedCode": "DTfhAyZKhqilty9N", "itemId": "VlgxUmnfdOAmu1dX", "itemNamespace": "1NqD20RUvvYeJZw6", "language": "WRgl-gjdp", "quantity": 43, "region": "qpvNesGiVnt9p2to", "source": "ACHIEVEMENT", "startDate": "1996-05-23T00:00:00Z", "storeId": "ja1soDE1K0SvGrMY"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'wPmPXC2LfL2m5rP2' 'A20t6foPPH94SUin' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'Y5diUlqgvY7dPPya' 'DEMO' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'MKlwJTNL2UCWUtaA' 'D7ZZx1iefATWcDSq' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'GYRMdz07xEJ40eps' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'sgJJC3CX0hpB1ZGM' 'Mo5DSozCuFsrBMto' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'OeLfMCYxSeeJOlxa' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids '395rghZwGhdZJkkG' '["hYvXYMIyaEMEqOpw", "etb82b96rsH73hRf", "Dgl29GWKpItMt4Gs"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'zRufkDFLYyNBPlMr' 'kse9SGcMuV5phhU3' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id '15LUC6HSMQ32UznX' 'Nd6ve29lqqtcLJW9' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'eTJvKNDFrx6LabyD' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'nqXjXKPIcxh0x7T6' 'RQGnnW4ugGX6mKBb' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements 'gTD9xL07ZzzIs3Jk' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements 'e34ZAUuLP897ooML' 'nemwKAvgDXNrFEE4' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'Jf4hQpsLOcLtZw0e' 'fmEVcW7mxbS5UOoI' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'CxQMit8555Niy4NN' 'FpRE5pS85yTIRWvL' --body '{"endDate": "1993-01-10T00:00:00Z", "nullFieldList": ["y58UKWPv3F7S0wCV", "lYQi9cfMCeNnu6OI", "G1PPLRDEXLXZWXvq"], "startDate": "1991-10-01T00:00:00Z", "status": "REVOKED", "useCount": 82}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'HvNpeMjMzguq6HFI' 'qaqwH9J6JLb5f3SB' --body '{"options": ["MyJUdwEBRrHAWUFq", "TooGGnPEgY0t7QQW", "l42byOwXgKyPhXmc"], "requestId": "ysae8HpWH4xiz3fW", "useCount": 39}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement 'GnMt625bWHb5sbX6' 'asrjV7XJUOtHlzXN' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'HEPpzlMlx7b2H2TH' 'LwZGikW7TFA9gE6S' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 'rYKq6lcVOhPJIcEH' 'biKHW7flVolAWEMm' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement 'QSPDTRqjlvwnnCA5' 'tfK5ushaKTPVjyOU' --login_with_auth "Bearer foo"
platform-revoke-use-count 'pR3uUdgNlyU4IJnq' 'trjCOsE8VjvzhJwN' --body '{"reason": "X4bhqCjlwrmsSRV8", "useCount": 18}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'hUnIzIpUM8KK1kGF' 'N0NUNGKxdlAUDFQu' --body '{"requestId": "GPzAuT7M6OBrNwio", "useCount": 75}' --login_with_auth "Bearer foo"
platform-fulfill-item 'jSb4Vt2vKQ5vlCdI' --body '{"duration": 16, "endDate": "1998-04-28T00:00:00Z", "itemId": "9Pf2iogwxM5DZM0d", "itemSku": "gozmco41750xdYQg", "language": "34WUV0WpmsQnp1n4", "metadata": {"YGumTKOlDOy5vhSk": {}, "xERZ2AQ1jvXYBar5": {}, "RMmmGdWl0wpj5tVf": {}}, "order": {"currency": {"currencyCode": "KU3D8WVPh0Z7YiGE", "currencySymbol": "2cyzTMBY7Xd0OoEN", "currencyType": "REAL", "decimals": 89, "namespace": "Lw7uepmahXojVZYz"}, "ext": {"2zMU9jLzNV3GaG43": {}, "R6nlRPrEAYqRBeSc": {}, "5uShoj3dGHMeoi5D": {}}, "free": true}, "orderNo": "ZgIn4lPghHyMEHBz", "origin": "Playstation", "overrideBundleItemQty": {"gsjl5NmnSHhxNmCe": 12, "txY0MsPc9EMgf9JC": 74, "JU2wEzUYUTmZ8JSM": 9}, "quantity": 32, "region": "NmRocp400RZe8Bzx", "source": "IAP", "startDate": "1971-07-06T00:00:00Z", "storeId": "GEI22BTCZs97TJI8"}' --login_with_auth "Bearer foo"
platform-redeem-code 'GPrM24F3celFgM62' --body '{"code": "HQtgzQhO3nR8j8Dl", "language": "Vzpu", "region": "3sI0x2hc8vaN1Off"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards '5gRZZMW3huAIzBPW' --body '{"metadata": {"BYKAEFTdlKNh6GTz": {}, "KjsCqxx24QM35bSk": {}, "FrvGciNHb7OY5YIp": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "3aKkPuWD59MgTy1H", "namespace": "A58Jt5NaROjSKFEu"}, "item": {"itemId": "Zo2ElXYSS4ezBRSi", "itemSku": "OyReviDaxlPdhwmc", "itemType": "H03yoMxzRR6xd9rT"}, "quantity": 14, "type": "ITEM"}, {"currency": {"currencyCode": "3ureaIbxM3Wev9pZ", "namespace": "QjWAN0tny16ZHZtu"}, "item": {"itemId": "SJGQCrM7JEMRPkdT", "itemSku": "cAzkIlndN5xeayr3", "itemType": "vUKMuIiz2MiAAKcv"}, "quantity": 54, "type": "ITEM"}, {"currency": {"currencyCode": "XnxnH0QIhoJRY807", "namespace": "VmBT4wZXQZZrSsuY"}, "item": {"itemId": "iIPei0pXglJYnKko", "itemSku": "CAZuolAWnxkImVbD", "itemType": "P0QX31gI7VmnGIRM"}, "quantity": 43, "type": "CURRENCY"}], "source": "IAP", "transactionId": "e6BiphIFe2bzr6qQ"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'w6fSESkM19OPMBb1' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '2gpmShlmIt2nfhUa' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'ZGqjslu59GT2E6Aa' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'cmZRXZm626POXWVj' --body '{"itemIdentityType": "ITEM_SKU", "language": "cy_cMwZ_Uw", "productId": "Qm307IORTyHnLYDA", "region": "Ag1YA4kZURmoGgxV", "transactionId": "RMPf8g1rbhfIMStM", "type": "OCULUS"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'HzwiqVPCJ5j18Ou3' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'aY8nceFU5GKmcEKp' --body '{"currencyCode": "8AQwqgJs6O0Qj0cc", "currencyNamespace": "Mkdz6zPz3BVHAqp4", "discountedPrice": 83, "ext": {"fo4nWVZZbKFsKOmg": {}, "EhjH2wFzCpxxJLfA": {}, "g5cFT0gHAkltcR3e": {}}, "itemId": "HFbiAluHv7Hssd05", "language": "pHBJX5ln8PZbYVD8", "options": {"skipPriceValidation": true}, "platform": "IOS", "price": 0, "quantity": 30, "region": "TsdD4d3kSbTkHPMU", "returnUrl": "vOAUXkw36cr2WJQq", "sandbox": true, "sectionId": "4Jy6yCSXBqJqjAbV"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'wSaoj1ugjr8mPkr3' 'tZ506ERSVy5M3rrk' --login_with_auth "Bearer foo"
platform-get-user-order 'xu0U9h9gCNVZxHGx' 'hZqNXJ6JXSh0Z3SW' --login_with_auth "Bearer foo"
platform-update-user-order-status 'ISs1dYrJKmx1BT6i' 'LFQejNZJNF2hm0Tq' --body '{"status": "INIT", "statusReason": "G67g4W1eAmDxP23q"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'stMuikKc6VNU8570' 'siWm3V9sirE0JOQx' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'WeHypqCWMDPRI2cC' 'k8zHR8VyCC0EQwE0' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'cXokXbwKDtVmrYQu' '7hZvHfiT9s9pK8Hu' --login_with_auth "Bearer foo"
platform-process-user-order-notification 'UY1QQHQ0NCEddJtx' '6GV01vD7lNLxlpvq' --body '{"additionalData": {"cardSummary": "aB9P9GaukfCEIeSB"}, "authorisedTime": "1990-10-10T00:00:00Z", "chargebackReversedTime": "1974-05-07T00:00:00Z", "chargebackTime": "1994-04-15T00:00:00Z", "chargedTime": "1973-02-08T00:00:00Z", "createdTime": "1983-09-01T00:00:00Z", "currency": {"currencyCode": "igzHcRuJgYaj4I8D", "currencySymbol": "zyh1N0JEKNoMtHvj", "currencyType": "VIRTUAL", "decimals": 10, "namespace": "TkUCqbbHGJGOTvKK"}, "customParameters": {"RTHDntaFiufH2YR6": {}, "QU7fj6w17arNs12h": {}, "OoLVM7UFnuJDzeEk": {}}, "extOrderNo": "DxaVogxHrOon2OW4", "extTxId": "Zw5QwVKWNy2tnF2M", "extUserId": "ifJR4hr4gdJDujYn", "issuedAt": "1995-04-19T00:00:00Z", "metadata": {"nGlYZ2tod2BGBXjN": "yRCtPOr1FU3QZy3g", "dDms3kb1htW0UGJp": "wQZlXuzu3m9u67Jj", "CDwg186hGWKfO9Mn": "oT3t99HmcxzjDhTr"}, "namespace": "cBKtU956hOg8oukD", "nonceStr": "VdweG0sFHxTHa2k6", "paymentMethod": "0SzCqUgq1gLbcIMe", "paymentMethodFee": 44, "paymentOrderNo": "CeqGv7meuQhJuq1C", "paymentProvider": "CHECKOUT", "paymentProviderFee": 73, "paymentStationUrl": "INFTtERAXT2h3hcQ", "price": 88, "refundedTime": "1982-07-28T00:00:00Z", "salesTax": 97, "sandbox": true, "sku": "ZbBTnNQnVUhA5Wnz", "status": "REQUEST_FOR_INFORMATION", "statusReason": "sau7wRQmL4i3eRyI", "subscriptionId": "ECEDa1I4lwXqwPfq", "subtotalPrice": 97, "targetNamespace": "FVHevCjthJUb7jKu", "targetUserId": "MrFaoLulzp3sZxIm", "tax": 98, "totalPrice": 75, "totalTax": 25, "txEndTime": "1997-07-13T00:00:00Z", "type": "WKQYlqMmu2pvF6rP", "userId": "03bQaq1cT88H6RCW", "vat": 3}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'gJmGzDlqxtLsR2AG' 'OiPhNt2IdH8aYYUT' --login_with_auth "Bearer foo"
platform-create-user-payment-order '6mma833TDzk66ix8' --body '{"currencyCode": "8sAUrXr7MXxCvyy7", "currencyNamespace": "caxz4MQrODLNlxiE", "customParameters": {"jQBCZx9DJ4V97SJL": {}, "lrwXmIGamRCARuFL": {}, "x4rV4CXVMrDYKe2e": {}}, "description": "Tf1axo16GqT2vSLL", "extOrderNo": "iMvcu39YZJypWzpN", "extUserId": "XgnoKIz8O8NglJtZ", "itemType": "APP", "language": "LG_Lvgv_rj", "metadata": {"4QVey9pEz1TV5cUt": "PBsw01i5Mf7WvbNS", "eeDNfUESLlwHv3Jg": "teOLyKp8a1VqxXnR", "hDd9TGkO6aIYqftw": "1SrM2nhSEanfUYrM"}, "notifyUrl": "U6A43UKGpvC1cr5T", "omitNotification": true, "platform": "PSXhduTWchzXDv3T", "price": 54, "recurringPaymentOrderNo": "xzvYwv7atn9EQv2O", "region": "j8TFNeGtJGjKbMgC", "returnUrl": "euAYuzrmbWofEaKS", "sandbox": true, "sku": "aSOYdmMDikc3Fjm9", "subscriptionId": "HoQDemtiQvURYZCe", "title": "F30RT9rBgM8o7lxX"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'q7TkdM7FVDCBcvVe' 'grZddP8lLQo6tHj4' --body '{"description": "z4cAM4LMJfWNZIxA"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'gBpeubprKX68jTyR' --body '{"code": "d3LrR1x6U1v6zSLj", "orderNo": "m9zmzUW0vPj90jmL"}' --login_with_auth "Bearer foo"
platform-do-revocation 'Tt5YQGawcomPoiYo' --body '{"meta": {"Q1f1AYq306Pysv4V": {}, "PaZWolXypwucUqqq": {}, "ff2iWi4yP3uqNcig": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "YcDA8Z3g62oGYwkr", "namespace": "jLI4EHJEEWgki9fb"}, "entitlement": {"entitlementId": "dvUMDZeO4U55wdCp"}, "item": {"itemIdentity": "VpnENiTc9NESV22e", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 98, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "IOS", "currencyCode": "kES0Hi88UYgSV40O", "namespace": "vY7apPCrN5bEhmuH"}, "entitlement": {"entitlementId": "gKeWizEpw1zN0mOY"}, "item": {"itemIdentity": "gGhHMz9dddLWJWDu", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 44, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "aIv4Lp91wYUJPbvz", "namespace": "n8TYoMDAaUXSuBQd"}, "entitlement": {"entitlementId": "vdhJoT0WK5ngNUxD"}, "item": {"itemIdentity": "KfZYofPGUbSaA00n", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 87, "type": "ITEM"}], "source": "IAP", "transactionId": "b0ceCbphW4YMhJ0S"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions '50bez9ZLHW882rii' --body '{"gameSessionId": "PfRQ3rJ0f5lwXvRN", "payload": {"DBnmL1KQn77hiP1l": {}, "zkzjYDw6mLBordrJ": {}, "kD6vy60uRMT1Xw9K": {}}, "scid": "9Yb68a8ygYx2Tqkh", "sessionTemplateName": "lqMnE9Wj90EQzOid"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'rWnLrXqImgDf3GaJ' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'sdCZND0wgYOilX1e' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '1825iasunESjcgr2' --body '{"grantDays": 7, "itemId": "8RgBUwBL28BqM8Uz", "language": "vKqeoTiNKGRUMrim", "reason": "GAz6OhmHOpCdr3Wz", "region": "Dm3hJdd6uaO9TiTP", "source": "nIh2iaIBpYC4txul"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id '6VKYlNYYlHPwKDpJ' 'mkeoAkp3Z4pgyJYw' --login_with_auth "Bearer foo"
platform-get-user-subscription 'clb4gd4QgQut2hiP' 'uDdOPHcN9drwqyti' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'eXpIZfr5XDq9dGLH' 'jtgE2bTXJxCCFqPN' --login_with_auth "Bearer foo"
platform-cancel-subscription 'DqWrpkWnnova15WV' 'uE5cYVP9tQSa27Bn' --body '{"immediate": true, "reason": "jAh4gy41LLzQ2IjY"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription '5PeNr4JmYxH2qs28' 'hePJjMp0TKKUBfPN' --body '{"grantDays": 71, "reason": "KdXiiTObNdqkWa13"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'g3pgHx6uPf6jQZcY' 'erH933X7iXEEM2KO' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'usNEHcI95GGdJvuc' 'Dbs6UdccuM2ykRj3' --body '{"additionalData": {"cardSummary": "WnyAaUaQBKFedL2u"}, "authorisedTime": "1972-09-25T00:00:00Z", "chargebackReversedTime": "1981-11-18T00:00:00Z", "chargebackTime": "1996-09-25T00:00:00Z", "chargedTime": "1982-02-19T00:00:00Z", "createdTime": "1997-02-09T00:00:00Z", "currency": {"currencyCode": "UbQQ13FhD3NExUFi", "currencySymbol": "pJsUiDawAjgHFQk0", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "geesipbP027okM5E"}, "customParameters": {"8tAajVSvLRj306RD": {}, "uaSixXEdloYZBkat": {}, "NLc42eq0O6VsXtOl": {}}, "extOrderNo": "Qwj5xPvm7c5nPR0Y", "extTxId": "1sffUaZ64dFpiv8o", "extUserId": "9Gw4QtKgyIeySoUx", "issuedAt": "1978-11-15T00:00:00Z", "metadata": {"ezfwc3H0qSbMq4GL": "j8aGsH0qE5p601ak", "59yFSfdZIv8oYWPU": "S4Zu0SbTt6M2Xizi", "kCh6q0yq2WAHtL7I": "WE3MFqvfDG5jvMOa"}, "namespace": "XrDlEX42U0syrGNh", "nonceStr": "BmgT2q0kIbrJ2S5P", "paymentMethod": "f1Lvg8kYEVylINJp", "paymentMethodFee": 47, "paymentOrderNo": "vo25aEtdjls5oads", "paymentProvider": "ALIPAY", "paymentProviderFee": 71, "paymentStationUrl": "Jg7y4Q9CU3fjSRaX", "price": 61, "refundedTime": "1994-10-20T00:00:00Z", "salesTax": 69, "sandbox": true, "sku": "uB0zypjJiu7BIimN", "status": "CHARGE_FAILED", "statusReason": "NU43K8bihdw3prp0", "subscriptionId": "UHlWUxkBefhxRtrq", "subtotalPrice": 2, "targetNamespace": "LoWCGf0dZEeXBd6m", "targetUserId": "GG6SHcZbX2wNnT6A", "tax": 53, "totalPrice": 30, "totalTax": 30, "txEndTime": "1979-05-30T00:00:00Z", "type": "NLmPAUIMwa2wYq6D", "userId": "sUq38bYvaWLoKzHn", "vat": 26}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket '7yh0zsKhR60HZwUw' 'k48XK7MXHbEwAvvp' --body '{"count": 63, "orderNo": "zHhvxc4xAPZ86WNn"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'QOhusPn4466u8agb' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code '5HPsBU0Eo6QJ9vBR' 'J4UP09fabC01Thm9' --body '{"allowOverdraft": false, "amount": 58, "balanceOrigin": "Playstation", "balanceSource": "ORDER_REVOCATION", "metadata": {"WpyiKVT3OvEujx5y": {}, "jtQSCJaOHzpb623E": {}, "ciYoYOPVg6DLEZ6D": {}}, "reason": "xpwBm2N8PdQ5mQaG"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions 'XEbnmWR0H3EkrHqa' 'LNdfKszYZzOg113h' --login_with_auth "Bearer foo"
platform-credit-user-wallet '6fIaHSx5bClxUOBm' 'Mwv5pmiIVnhlLoMe' --body '{"amount": 27, "expireAt": "1973-06-04T00:00:00Z", "metadata": {"rLyXMSrC62xYtDwf": {}, "lNGfufW5cWeg6eSC": {}, "ypsceITTkJGGCVF6": {}}, "origin": "Twitch", "reason": "7HMbJhNwZgf5nlMD", "source": "REFERRAL_BONUS"}' --login_with_auth "Bearer foo"
platform-debit-by-wallet-platform 'xz1c7ZuZXUCBYnkY' '0LEBSYBdUSiTOrhB' --body '{"amount": 40, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"NAVOYqSH533YlJ93": {}, "CCGBXv4fP4VPzhcH": {}, "4UJrrCKvrOAi7lMg": {}}, "reason": "kVWJYzSCIDxWUxgO", "walletPlatform": "Playstation"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'fUEEBbqMMKvkOsR1' 'fHUyirMVMOFES2J2' --body '{"amount": 82, "metadata": {"YKTmUnKlrOsJmEwj": {}, "GYN8VNPXNsmwTV8i": {}, "mJHNI0l6jJVzF1Oi": {}}, "walletPlatform": "Nintendo"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'sQuWUBBHZonSmzF8' --body '{"displayOrder": 58, "localizations": {"1vlCiZAZHCWMXxVh": {"description": "8HTrKqVwnpPn8N5x", "localExt": {"MRgU7cPqNZrLCRRU": {}, "ysya4J3rvTzMTMSw": {}, "rNov2GW9i54JY23A": {}}, "longDescription": "UWFTLq0W1JqwKs1m", "title": "O80L7IOHlf6j8PZO"}, "zUiQKZqz5NSp0B7L": {"description": "ODN3Boi2sSAO2n4M", "localExt": {"ZQt753XQB93rOW0g": {}, "uPoQbYzc1RDVhs2l": {}, "hdzxxgibuqUuyW3c": {}}, "longDescription": "Mz9YyduMomEHcU15", "title": "St4v8ry8IyqNVv0K"}, "VpXJTMx3Y8Um1iqe": {"description": "hObg3OZ9j0HDtbqM", "localExt": {"FlgHKQIRtLfPngD8": {}, "3roOeqE7fcCAeExe": {}, "QX43LpmdMiZeyIrA": {}}, "longDescription": "4QUKSJgECzvaWUCA", "title": "7wKru7ry3AQ2sEHv"}}, "name": "SxjWoM1rNJLM0OOV"}' --login_with_auth "Bearer foo"
platform-get-view 'G5cG6XxENbWqlX7i' --login_with_auth "Bearer foo"
platform-update-view 'dzjpKDfwl6XlCF6Y' 'xFMD8tJQwZvUVIno' --body '{"displayOrder": 37, "localizations": {"ylaquioT3QBt29Ai": {"description": "RASsuFM4ahGw7XcF", "localExt": {"1Qwzz606UGXPhoNZ": {}, "lXMef7AvS3TfKx6B": {}, "yTygbtOtcQS4Cmgw": {}}, "longDescription": "1wRUnIVYxY6Ohdkr", "title": "YiCinoVOzo4Plv1I"}, "lTpEhjTFYdzsUNvQ": {"description": "An2LuMjLqwmVz3zK", "localExt": {"sfjz1mFkyxoUzfMF": {}, "oXCOguSq2A4R3wDd": {}, "SkNfHJtA3QiX9Zvt": {}}, "longDescription": "ydbaVb0scd97A0GP", "title": "6djn2Ps3IVT5hUZ3"}, "cnDq0ddZG0EpfGAq": {"description": "HKcSxUc2YgRpk2IF", "localExt": {"GIgIpscUpVAciu2X": {}, "PPUxzXHUvxhvTZcv": {}, "RKoaM4ozSAg8FTLr": {}}, "longDescription": "ByWOJhbocoGlPzdf", "title": "xcC3rpWhSpq0InxM"}}, "name": "LpP7n7M3JXjEvsj5"}' --login_with_auth "Bearer foo"
platform-delete-view 'WcQ99M1yuXeqV31L' 'X2ehcMnM6QtjzQjD' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 24, "expireAt": "1994-08-16T00:00:00Z", "metadata": {"MCGnxZwak7KHnzGA": {}, "SmVzePIroz41oQCu": {}, "XeTRyJQrNLTcqLVT": {}}, "origin": "Xbox", "reason": "CyiB4tDCWx3cEX8w", "source": "REFUND"}, "currencyCode": "of79zVTWIfgdNphq", "userIds": ["4kiIFgS4fLqlrKGi", "e9fS1m77MAg4KoZQ", "PLhDSJx9jzxaRKph"]}, {"creditRequest": {"amount": 93, "expireAt": "1980-04-09T00:00:00Z", "metadata": {"XxjkyNfj3XgTRTjI": {}, "9oNBzgQ4CRwg0sKV": {}, "eSpMny0GrvKI5EVB": {}}, "origin": "GooglePlay", "reason": "ZFzLNsjdCFtKY0Ks", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "TTfqLCv9DYBOProN", "userIds": ["mOCxqPrq9I3XJWBx", "TLcOef8MgIwkrKFE", "4UWbQaKFrTv4JWEl"]}, {"creditRequest": {"amount": 42, "expireAt": "1983-07-06T00:00:00Z", "metadata": {"dxB5kvtM8ah9bPsk": {}, "sceGUEX8ERZcKSYL": {}, "o6y7yJMowQ6LpHCv": {}}, "origin": "Steam", "reason": "vWp3h0xPsVY8qNwB", "source": "SELL_BACK"}, "currencyCode": "pUUv7qefNMFsZAIq", "userIds": ["GJUgU8bD5mGFFmKT", "ak1zi0JSa5cRn31D", "8ubfdXi7BycDPcke"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "TUxG0mpmFxxDNXGl", "request": {"allowOverdraft": false, "amount": 44, "balanceOrigin": "Epic", "balanceSource": "OTHER", "metadata": {"y4Csye3iJLtjsu6Z": {}, "JRCoDq3geuHFFaZz": {}, "PIjETqcKN1gaQ4Bn": {}}, "reason": "0cPPtKaJlw31pdDr"}, "userIds": ["XQ47WSGyDCKF0LLh", "O3lGZ7eGOPj2XoFu", "g8BUQUmPHnPumcaz"]}, {"currencyCode": "KAna0ji757aNDFeK", "request": {"allowOverdraft": false, "amount": 25, "balanceOrigin": "Oculus", "balanceSource": "PAYMENT", "metadata": {"1es7A4PFduN4gx0U": {}, "C6eWKCFGS97Si6Xy": {}, "LVPrkUxyZ1OH5Nn4": {}}, "reason": "nMT8QOyTuUSD9Imt"}, "userIds": ["aPAocOQcpBWSNrCj", "07foRZ6FujpIWo0q", "SNEAdojkCMmYyTGO"]}, {"currencyCode": "Jtqp4Q6XgICLgMHc", "request": {"allowOverdraft": true, "amount": 10, "balanceOrigin": "IOS", "balanceSource": "ORDER_REVOCATION", "metadata": {"9tqvfHmFvUZiUW5Y": {}, "0CYw5OXSGwQkJuy9": {}, "oLFcHHcraLXR2n9J": {}}, "reason": "Qvq7NKWIHYsii3fC"}, "userIds": ["kmt4bfJOhNaIT0pv", "lU31uXPwYxedGHCI", "h7sieJjZPAkiWuml"]}]' --login_with_auth "Bearer foo"
platform-sync-orders '7XeqO8gY3c4SryWB' '4yRaDxvxwaLM8HkV' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["OW8PnLkgqkqYZWPZ", "TgKagTzdcYcko7U3", "gH239LhRx2Laa2Rd"], "apiKey": "tVb6VgA5yFIH3s9U", "authoriseAsCapture": true, "blockedPaymentMethods": ["8UjgyCUpM1JBcTzf", "4dz1BojPoQg97640", "9vFd5z9r4nJWUvLp"], "clientKey": "1wxGF747468MXUq3", "dropInSettings": "uIffkIpPmrWVxNZU", "liveEndpointUrlPrefix": "vkiU2jXSwsBBRopV", "merchantAccount": "l38d4NZGtk6EmWxC", "notificationHmacKey": "75M88TKhFYkA9aRN", "notificationPassword": "De2IoPMSQKcg0OTT", "notificationUsername": "9JA0ll1RimBCiQwu", "returnUrl": "yrI87uSyXP6C0jXS", "settings": "8au2wcWYyj3JvHqX"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "p4JR7xI59Z9tfGVs", "privateKey": "glnOxOXBfgBLuglk", "publicKey": "d9LIoshGnFSuHmrq", "returnUrl": "ej8PRppYY1vlV0M2"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "g6oreqyBzWzCgMMW", "secretKey": "ZuD6tmIR28xVxbtp"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "SKOfiIP3S6pypZqI", "clientSecret": "Sn3msrykQFtW8QGK", "returnUrl": "FZLrIfqrZuu7IwKc", "webHookId": "T7sAsv2TKCbYMVkX"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["EHmsHwIGGsusS0zZ", "RODEKPdudZsLaf8a", "ZrXW84dt0TSTmy7X"], "publishableKey": "F26K2U7xttUz8nWK", "secretKey": "Jjv06PuffHghAQfA", "webhookSecret": "sYXVzBenLtaAoYyR"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "fiCWrm3s1Ah3TII7", "key": "0MIcBMJ04508jKed", "mchid": "x0CVRpd7SwZw2Ukj", "returnUrl": "DzJ4NuMMgI13nplX"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "aUQV5QEvKElLfbB7", "flowCompletionUrl": "gwwAR1xFrnyirw3i", "merchantId": 73, "projectId": 60, "projectSecretKey": "t5iA3JS2xeaJ08Jr"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'SHPqdhKHn6ZjZMdr' --login_with_auth "Bearer foo"
platform-update-adyen-config '1C2TIQzRJY7UfYSr' --body '{"allowedPaymentMethods": ["dN0JVz4U43EcV1FR", "yeeqehMNeRYKeMbL", "0G4v5D6ylZguO918"], "apiKey": "X7rLoexHBMBMMAYo", "authoriseAsCapture": false, "blockedPaymentMethods": ["0SQAfYIyzHL8jxak", "uVu5r5B08VZxI4TU", "3apnZXoJ4gI4EQKO"], "clientKey": "8xC4D0FsUo3IB2kX", "dropInSettings": "5REQZsHyXzoIXNf0", "liveEndpointUrlPrefix": "KbL9HyJttdgfLGO3", "merchantAccount": "ummpllnV6B62P1Ka", "notificationHmacKey": "zg73c6UpmA4ehxNI", "notificationPassword": "IlcrZzgameT2mLkk", "notificationUsername": "AMjHyI0e2Axj0nZH", "returnUrl": "jmoKHJngwMe1AnQV", "settings": "j6QQjZtkNJCnDSrs"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'Sey2BqOxgwCymCDY' --login_with_auth "Bearer foo"
platform-update-ali-pay-config 'suff3b7G5FDX4mu0' --body '{"appId": "qPHb9Ll2EFEb8Gns", "privateKey": "thmQ2Y6ZGOiqrg3l", "publicKey": "pqN5bOfnqJ5bzDRz", "returnUrl": "bhMxfEDE4TrtIHyy"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'Mq79EdB9MxaF8QHG' --login_with_auth "Bearer foo"
platform-update-checkout-config 'M2IuQYBO8m0HgTth' --body '{"publicKey": "479W8rXqwGVIRWgT", "secretKey": "NHCka3Wb5kH1BrLW"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'UetP7nmESQDV3BD1' --login_with_auth "Bearer foo"
platform-update-pay-pal-config 'nnEzoUlUWqP4ElzL' --body '{"clientID": "44KEm3uHBMCP5ckj", "clientSecret": "phURs4ksgsKJ2R6J", "returnUrl": "acwwu8W1zvrKMRPv", "webHookId": "wA9k6yJz03NETdyw"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id 'PqYerrpOm4M2pM4f' --login_with_auth "Bearer foo"
platform-update-stripe-config 'IfcHBWZM50aHbPXR' --body '{"allowedPaymentMethodTypes": ["ns3qwYL6LwGlZGF7", "XQPLAcIL7FvAMWqh", "yyNZH1CducB5y5iM"], "publishableKey": "deBG7REG4meKEabf", "secretKey": "VXBJPIZqZC5d6JuF", "webhookSecret": "dcfiNf0DOHKwxDF5"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'GJhCjVHiCn2hTefT' --login_with_auth "Bearer foo"
platform-update-wx-pay-config '8gPFJ4WndMpQhcLK' --body '{"appId": "0WTZbtmQkwC8azx3", "key": "IRWme3C6p2r4D3NQ", "mchid": "djrjkX3AMgK3JgZu", "returnUrl": "fzssA284mG7uAojL"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'YBsx8oqMzbE0ljQa' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'Btb47V691j0FZp2v' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'jOXptxzx6kkaZYpl' --body '{"apiKey": "52sQR9Znp5d1eSwr", "flowCompletionUrl": "G2GBBEWrDbQ1ZzhD", "merchantId": 41, "projectId": 77, "projectSecretKey": "vDIqpcjmaq5KBCsH"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'lwNrfKJrkzwR40tf' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'd9GFXChtxB10d4Q8' --body '{"device": "DESKTOP", "showCloseButton": true, "size": "LARGE", "theme": "DEFAULT"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "WdEyOVYrTdDq7Iqb", "region": "TVv8BLsqQW8HSrEm", "sandboxTaxJarApiToken": "5Y7jI232SjktijiN", "specials": ["WXPAY", "ALIPAY", "PAYPAL"], "taxJarApiToken": "e8KdizXmrmK0sCUs", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config '2523OTvOmfVNJNDa' --body '{"aggregate": "ADYEN", "namespace": "O3FEkk4It6V8Bu7r", "region": "IjGrxUMKbv60ixUu", "sandboxTaxJarApiToken": "UhopdqGrqRZ124P7", "specials": ["WXPAY", "ADYEN", "WALLET"], "taxJarApiToken": "uXTrpWAjwatSvtPb", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config 'Fn8oWQcmFkkRX6Eq' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "adAEIzxld80Ynss7", "taxJarApiToken": "hc3VUxxZIgkTLqMe", "taxJarEnabled": true, "taxJarProductCodesMapping": {"fksp8VQhYSFeBOp0": "ilGQFwHUtZugblT3", "aIDKn9qJXncm5igp": "AewbmnWk0E7YaPbl", "cWEyNgvs5LEZrQXz": "SQRWRs9EGnRPgYlJ"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'ElgJ8kx1WEeDbql1' '3FtQMu41rnOzbsFB' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'qg6dziWvdNcwfUBM' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'dNuTaiLxFMXRpDP9' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'xutntU8xHw4yYJOC' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-ge-dlc-durable-reward-short-map 'EPICGAMES' --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'iHwunQwpC2eCFUAH' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'ZaYSvsWiNJtqXltZ' --login_with_auth "Bearer foo"
platform-public-get-estimated-price 'F6aSRmHU5iR3hXIb' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'zWPKOkzftOgDQAWh' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["ulbrDf7q4cAnpmLi", "Eu4CNtX2lnqi7cHT", "SdGoLZbC3UJruU4u"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'IXBZsEYogFWiH9z4' 'E8zmaZ5cg0REtUWY' --login_with_auth "Bearer foo"
platform-public-get-app '4fVIdqwCWF5wmbOu' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'bTxAAeDCowR3MeCN' --login_with_auth "Bearer foo"
platform-public-get-item 'L1oNrF3SmgudQusJ' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "LsPlW7ZyORFkN9Eb", "paymentProvider": "WALLET", "returnUrl": "bTbrDzNgVEcw0lxR", "ui": "am16O6v4VjJf40Lj", "zipCode": "UdORELVXUFQyVlt9"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'jmxmxpfp41k1uDg5' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order '9PhdUXShabwyYCxT' --login_with_auth "Bearer foo"
platform-pay 'HrDel8oThvr8CUEz' --body '{"token": "w4zL1QeR3EYXBFpU"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'X9y4tY7o5FFi1n10' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'WALLET' 'v3zQJoQLTAlW75ic' --login_with_auth "Bearer foo"
platform-public-get-qr-code 'IKUpXazsFrmaGNoi' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url '3RPTgWotLNz0u8yS' 'xA0yrjz4q7e0EJnA' 'XSOLLA' 'zJ1XBxw01iBBQukg' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'Q94ZvPCWcMX0ov3U' 'WXPAY' --login_with_auth "Bearer foo"
platform-get-reward-by-code 'sKjIeyFS97dYD7Lk' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 'cTKYpCfl6HPy5cJf' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'AV5iOfzwt3bpxRNt' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id '6lKoMjCPtEKeBWTm' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku '78Fn8TvZVTe4L2lX' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "rVPX6r5ZTcnVVOKM", "language": "SQV", "region": "WsFRUlWBp4gBs9Uu"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'fgsVbG6TUe3jbuQ7' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'HMPO4ozK705ykRqS' --body '{"epicGamesJwtToken": "PYZgPm4JLsXVtBOE"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc 'etHsxAJ8Ny1LRkPU' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '9hrl5nkpEdBe8bYW' --body '{"serviceLabel": 7}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'hW2b5OHKtUv4lTkQ' --body '{"serviceLabels": [80, 19, 84]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'volfI0mqZctohLhe' --body '{"appId": "RaQkfMLFW9B7jHZr", "steamId": "o4hhwnANAGp8zGqN"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'GrcQyoA1TWPcy83i' --body '{"xstsToken": "XfYXNdMkdg9TMwxN"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'cQ6CkVi8fqVPRqNb' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'F5yLnYSa8xFLvcYe' 'xMMMiDFh5RbW021c' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'HN3QbzVuJZH3k54c' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'lzhPm7RmaOr6TLwV' 'yE42ApAb7CKt79wA' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 'opZL9Cw6K9h55mwU' 'vhdBOgumV4wAsd4i' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'fGd0bkWrlhtfTywR' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'W4fmg6btk3mAO4Et' 'B0hn2x1oTOX5gBQl' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'VDx9neFHWhDRJtyY' 'Et7ygZleAoUuVKne' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids 'oO10ytPdJ8SY3qoo' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'gOxoPYvdIBJYyGUR' 'jEjnslEYM8ngVT1e' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'wVxvgAocOqsd5v5n' '7eXCo9gZWdxfIdW8' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'fNAM5YdHivK2Q0Ww' 'olQy037hJMOEv5W0' --body '{"options": ["v25yAObZIbrA8XAK", "KWMDebehSjpt0wrf", "WPXaI1Jb75o2MFOa"], "requestId": "6xgPt69QROGDeJCy", "useCount": 69}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'L4yx5I0euBsccHPA' '2v9XP9enfEX7lloL' --body '{"requestId": "gIYqxFfSNJlHCjxL", "useCount": 80}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'k9W6ZLVJzRpUsITf' --body '{"code": "VruDukun42zPZvOd", "language": "IZM_752", "region": "qDO5HXp5oVkhESbH"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item 'Q7hvTlzf7XwQtVIY' --body '{"excludeOldTransactions": true, "language": "ou", "productId": "Bq5bcfPW4pPZB9YX", "receiptData": "ltCxyztUnj17t3gH", "region": "BXvjvziexzOLbOWb", "transactionId": "tcJUxM3AWyDkA5Lm"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'ART6kulpM4SRtUE5' --body '{"epicGamesJwtToken": "P4kxmHtFbjqurHix"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item '0QYycDH5we2Mx0sY' --body '{"autoAck": true, "language": "Hz-IKqM-902", "orderId": "kAVOJ5imghdfVhjn", "packageName": "jd66A1SQmWGSQLAV", "productId": "PAJ7zX5lB80k2smd", "purchaseTime": 22, "purchaseToken": "hQqptccNorRls7EC", "region": "3nDnhFvDlFd7iyZp"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements 'vWVJFK6ZuvlzGCII' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store '156hIg0g8HIxpzm9' --body '{"currencyCode": "AcFhH4ZlYY3rEuHM", "price": 0.7778887934263783, "productId": "wQNmCQmGCF963Cbs", "serviceLabel": 83}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'me1OukIfIZVH8q8s' --body '{"currencyCode": "vV5hMOSfpyJkJlmJ", "price": 0.20194210699599158, "productId": "TkFvB7wkY6nuUEGJ", "serviceLabels": [16, 77, 22]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'HGtpK43uORGREOOw' --body '{"appId": "TuY8dhNCDWWpN3B6", "currencyCode": "tedgFUzBm5vGA3it", "language": "RAGg-xkVd-260", "price": 0.10478987919752936, "productId": "1f6P3D3rVcC2g6t4", "region": "2jE1Wad232YV7A2z", "steamId": "HFGbN8AQaCaw9UF7"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 'cdSDd99DQZ7vnTx8' --body '{"gameId": "HDXTJWiyw17ogzmb", "language": "bt-dShc_984", "region": "vn6qtroZcp16HKXX"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory '1ft5nBA9xNIJVuMz' --body '{"currencyCode": "04evSdE2FMcKd7c9", "price": 0.912526679968997, "productId": "rEmIYuAT5OAcUwYH", "xstsToken": "GmG5rNDBF1oU37vj"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'fyX5YLaM0wmi0i1W' --login_with_auth "Bearer foo"
platform-public-create-user-order 'ABBbq8IzZsMFLX9Z' --body '{"currencyCode": "hFXcFtfBS3ZIHofh", "discountedPrice": 47, "ext": {"GRJM92eX42WW2WKf": {}, "5urEOpASBicX3Zwz": {}, "Z7aVhrkmhSOEozGO": {}}, "itemId": "v8D0iVxzrec5kNwJ", "language": "fYT-339", "price": 24, "quantity": 97, "region": "nIhG5SilDDIsmj4h", "returnUrl": "625dIsMKWBxF9RAI", "sectionId": "rI81ZR2kNzh60RQN"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'aTEhMXMepgzY9jLi' 'AdMiQ7eDMkeBRMur' --login_with_auth "Bearer foo"
platform-public-cancel-user-order '18nCxiV9bQMHpPbv' 'flI3LkRc1NgZaoYA' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'aCCeRgtstsU3Qecx' 'o4bQZO3P2f8TTOVf' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt '6jrr1OL606QpqCgx' 't0NgDSj1T6EdeYFm' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts 'rLT0HbvS4kSSt3Cy' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'Dgf6eFAiqSkHi0BR' 'card' 'ElF6z6eJKuOW61ak' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'RFizqxCmudSXivAL' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions '3n478mhb2I2yBJeC' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'JghTrk68FWFzuLBd' --body '{"currencyCode": "lrKjUbgZQfw6Zys3", "itemId": "mN8fIcC9Ckharfqa", "language": "Fo-015", "region": "ntCNiHBRUNCPSre5", "returnUrl": "GmZzCQwilS3IxSjl", "source": "yvR9PxG9Lji2Vc88"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'W8aLjIxVGpdOqgux' 'vRwI9ZBTipMRlhK9' --login_with_auth "Bearer foo"
platform-public-get-user-subscription 'DMMaI4ryVDvNaruZ' 'xwTfh9gEs6GF247c' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'bBLjUr5z03wxB3E9' 'hrE9f9COFrOr6wJD' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'BwIDsJHNg6TvNGjw' 'I4TbTwBufUorJoud' --body '{"immediate": true, "reason": "4Z8IW2MAL9gYHEV3"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories 'wnTZTvYYf4ZFuV6L' '2AldoWWRN5wNYlFi' --login_with_auth "Bearer foo"
platform-public-list-views 'liYmBrqrOc0NIlig' --login_with_auth "Bearer foo"
platform-public-get-wallet 'BrOkBljwRENjt04Z' 'pyTTZG1LxLdySvyV' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'qY8nxBZbHcPHEFuE' 'VP9bF07gnWDULkJP' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'QR0UJMr8ouccGH0B' --body '{"itemIds": ["4LCe2h0iFCCZgFWs", "5s0nT89A88GDOUCl", "GyzYgnYTdim6PkRo"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 'q5TO65KWh8ztRJkX' --body '{"metadata": {"xUAj3jzZvEaY103Y": {}, "UIMuSjDHz0zPWMZQ": {}, "NNP2JqQqhISTBT1G": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "QPjUIosq1l6xo0D4", "namespace": "JRbNqO6IuP2PY5hh"}, "item": {"itemId": "X6uNah9JoHPj7jFW", "itemSku": "xSv1lYylYAiZ8c7Z", "itemType": "d7EUoezOLw8C1c5b"}, "quantity": 56, "type": "CURRENCY"}, {"currency": {"currencyCode": "B3XZ7ColKwlsNvtF", "namespace": "uunQsvdXGlD40xxI"}, "item": {"itemId": "yVwYjn6dlC9Kfh9g", "itemSku": "Huloyce0cLJu4ljP", "itemType": "WlCWTuGO8MnfOQu3"}, "quantity": 47, "type": "CURRENCY"}, {"currency": {"currencyCode": "JZJjIRtCfqDHSlo5", "namespace": "4zSnRN0zGMworzym"}, "item": {"itemId": "1z3ZdetOic9AQOFW", "itemSku": "pdItLBhvKJq9tWz9", "itemType": "yui8a6jOflFJlZEh"}, "quantity": 53, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "QDeh05hj92bwVVxJ"}' --login_with_auth "Bearer foo"
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
echo "1..427"

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
    '62Q5AOAOyL65cPaO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'ZA8BG8KcVWOX9n3Y' \
    --body '{"grantDays": "sjJexnFA9Umz3KPI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'Cya5Fk5TPaEbX29c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'V8v7MXctihtxMnIr' \
    --body '{"grantDays": "4b7jyfL3zMkklGCP"}' \
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
    --body '{"clazz": "ISlsnVA6z0uSfNNp", "dryRun": true, "fulfillmentUrl": "UYzJxnOyvqmswrTo", "itemType": "LOOTBOX", "purchaseConditionUrl": "1AY0tUA7EKASk3US"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateItemTypeConfig' test.out

#- 9 SearchItemTypeConfig
$PYTHON -m $MODULE 'platform-search-item-type-config' \
    'SUBSCRIPTION' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'SearchItemTypeConfig' test.out

#- 10 GetItemTypeConfig
$PYTHON -m $MODULE 'platform-get-item-type-config' \
    'zYM97ebZcYqwfIHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'WMkOmrT5HL16jMwE' \
    --body '{"clazz": "CnmwJv4rpqtzDaz0", "dryRun": true, "fulfillmentUrl": "JlBCHzJ2v9K8c1zO", "purchaseConditionUrl": "lZg30pagfP0FfOMB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    'OpeQT4zYIbU4i9mL' \
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
    --body '{"description": "yX46Alt08rrnG8y2", "items": [{"extraSubscriptionDays": 91, "itemId": "2WQrHTkJT1VkChD3", "itemName": "n0c1ryAkRvdPR8gx", "quantity": 46}, {"extraSubscriptionDays": 35, "itemId": "irRo3A8WxnR0YaMs", "itemName": "F3f5KLtpTSsPMGDZ", "quantity": 94}, {"extraSubscriptionDays": 45, "itemId": "OwEP5Bhh0NStWIgg", "itemName": "mhfAzVdNYP7Ao1z7", "quantity": 65}], "maxRedeemCountPerCampaignPerUser": 16, "maxRedeemCountPerCode": 9, "maxRedeemCountPerCodePerUser": 54, "maxSaleCount": 72, "name": "fKDcDG5bMTba1tUl", "redeemEnd": "1987-03-25T00:00:00Z", "redeemStart": "1986-12-30T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["P6eL7EpWtPifmO0J", "K4dP1aZFiSkmhwVV", "MGkXNwMYwFyljy5b"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'QdQ87hUHA0FJZwP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'GslMpx3m7lEXTmnT' \
    --body '{"description": "btjK9RsyoqT3adB4", "items": [{"extraSubscriptionDays": 73, "itemId": "jal0ruZmBXlGSp85", "itemName": "q6fuGfo5wSDHnyab", "quantity": 21}, {"extraSubscriptionDays": 70, "itemId": "493I3pvHKDaWhTN1", "itemName": "qyxpUzWIZWJTDzWg", "quantity": 42}, {"extraSubscriptionDays": 78, "itemId": "hujw1EoR58uCVlde", "itemName": "fonHJZAiX4abmqqi", "quantity": 92}], "maxRedeemCountPerCampaignPerUser": 53, "maxRedeemCountPerCode": 76, "maxRedeemCountPerCodePerUser": 94, "maxSaleCount": 7, "name": "WwZk0HGeJNaBjVdM", "redeemEnd": "1985-01-27T00:00:00Z", "redeemStart": "1975-03-30T00:00:00Z", "redeemType": "ITEM", "status": "INACTIVE", "tags": ["dlk2A2jHbAPNGInv", "bnf4ewKFFLoGggX4", "gQWyZocvYfr0Rnl0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    '2R1IVNnaK6KS71Xs' \
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
    --body '{"appConfig": {"appName": "1BphA9BXpKYgF9Ou"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "oYoQn9iHEqWO1cVC"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "IOx90FQdwLi3GOQk"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "tpuRNeT1CULEMPaO"}, "extendType": "CUSTOM"}' \
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
    '5nukycAUlkUSZKUr' \
    --body '{"categoryPath": "sxNRzF3NaUuCyQyz", "localizationDisplayNames": {"e6zPKu5sE89JW8UU": "0RsB6dvrpmInhHYz", "VVlHGFSwjby6rMYk": "VQnZDUAbINRKQsxU", "O1YMxAndOj5O6IBw": "XJjgQjgLoJyqwFVB"}}' \
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
    'd1ZjaRXEdWgS12bS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'bPgOCWUogizeWOPU' \
    'MrqgEIsMwNbfti0L' \
    --body '{"localizationDisplayNames": {"oTBcNzyoCSw1t653": "G3ydYmGzvx9bSqqy", "APha5b6PQTPTytHe": "eXo7gOFVLZCBWuVI", "ROZuqdJBi8pkn98V": "tLNkaIQJfkFDhSeS"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'GXtZU5SuIhMSaDRp' \
    '17dUWHcjrb6qNeKp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'OxPrlG9svdqsiVTq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    'PbzY1yxl7zeEpmSP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'O6KwlJQlj9Ii2jAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'wzowk9OoiPdnq9KB' \
    --body '{"quantity": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'J4irvZ9tktWLtDdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'mVGK6iolEw6IIpDc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    '9X5ijmtDGvd9ESdY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    '0eTkBWA44Qqsi5yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    'jvl5sRN2ENn1RLi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'iMPnbg7o1zYpqUsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'iPyXZGYIW5ZDtWbd' \
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
    --body '{"currencyCode": "kzPP47RcUIi2CoNj", "currencySymbol": "4EG2emxKQk8cBrt5", "currencyType": "VIRTUAL", "decimals": 61, "localizationDescriptions": {"8k8rzDZ08j6ICP75": "cm8YDChFi3zLvfQW", "C85MxWxvW0veFl3u": "U1aMD0mczWxc8f1s", "2QPMMZsf2dvKZyHC": "hRPHvdkcKW21B5EF"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'tD2pYaKTz1gcE2XC' \
    --body '{"localizationDescriptions": {"wTkRUIX6IFHNmB9m": "YBvtOwxjqyrjDApe", "N5eAfRqSgH5xIuBT": "YOdsvNyk52MQFkVV", "Ef36S7yPgG48bk6P": "wH1tdEAJSqXA0Wv0"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'zWGvkc6byp3mvyYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '3GuaZVTxBlw1IWeX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    'KFT4rfSbbSlDPGf9' \
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
    --body '{"data": [{"id": "Fn32SJNPZkEfkAcJ", "rewards": [{"currency": {"currencyCode": "TMS4pVRcCHIGfmCM", "namespace": "Tr9ACnI2sMrEgl7Z"}, "item": {"itemId": "R1HCkf2Sw78lLGKj", "itemSku": "DHuXt358gzqRMuMP", "itemType": "rIekxq58fikq83hq"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "HP63Se6kVW5fkl60", "namespace": "ImLBv6nUU0r1rfX9"}, "item": {"itemId": "stpvJUuyPdzx8BM2", "itemSku": "wEgTtLRT5stwQFUE", "itemType": "bTPQ8p7VMlxEXnqH"}, "quantity": 45, "type": "ITEM"}, {"currency": {"currencyCode": "yKpwphjUXvM1GqMk", "namespace": "Z44UXgdBqtJaRyDl"}, "item": {"itemId": "P9qIZJ5Krx6KkHag", "itemSku": "EugKJxkU8Y58COtT", "itemType": "NjnNSikJDg6ujKvq"}, "quantity": 58, "type": "CURRENCY"}]}, {"id": "Ia1YCK9PlMeQprfg", "rewards": [{"currency": {"currencyCode": "LGkHX1tdBjKmCBXE", "namespace": "TZwqdzAX28DikGk8"}, "item": {"itemId": "cWiX44azSHcwicUV", "itemSku": "q2XPljTZj5R0yZSV", "itemType": "Q8SSeJ4qy4PIKleu"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "UGeDavCKradJmJFU", "namespace": "sU418vAlmfGg9NO1"}, "item": {"itemId": "Z2DvnAxH3pS3jyCk", "itemSku": "GKltBNE2UbhNtH3y", "itemType": "Yg4Qnn2uhdw7C9Bx"}, "quantity": 70, "type": "ITEM"}, {"currency": {"currencyCode": "OTCbAPLC3iqrkyJF", "namespace": "OVaewFcv9h31YxuZ"}, "item": {"itemId": "noSesWpLUHjGaIcZ", "itemSku": "N28gH4Cd9xTdt2K1", "itemType": "CzpQWslNGnLYUYR0"}, "quantity": 51, "type": "ITEM"}]}, {"id": "4kiU3N8556ll2LQW", "rewards": [{"currency": {"currencyCode": "pdESOBV7wZJsg7wS", "namespace": "v9lyRyTdYBUljvBz"}, "item": {"itemId": "vYNEtfgBFikt18cQ", "itemSku": "677SotDEtU2xBSEQ", "itemType": "8rBKc2K6oJXxVEfn"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "qX8NuZtRUTKUvR69", "namespace": "PImy6CcwlqJ4MO3L"}, "item": {"itemId": "8x1H5OgzHypgsSeK", "itemSku": "CvtPz7jagBG9a1TZ", "itemType": "87ltClc3RDXF5055"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "UlenimjIbm0riCaN", "namespace": "p8dUBDinAB6HqIWI"}, "item": {"itemId": "i5Bvb1rcuEtWAF76", "itemSku": "3kci7lT62BOHaso5", "itemType": "3W3U2Mu9ZGMWou1U"}, "quantity": 67, "type": "CURRENCY"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Cf3gMWDAodCKqfqz": "eexHA70NgJTxjtzg", "O7W3taRvJ6lKWJwH": "O65aOFDwpqy7XOU3", "DwglyMGNll4O8ELa": "hcNJqRjepck1l0qx"}}, {"platform": "STEAM", "platformDlcIdMap": {"RpcfEQn0O6D8PGQu": "azAypgWhTED5YmPT", "BUkm2FyvdguCYVqF": "yIKh1YtTY4AejyQc", "5Dac7hSLldWx5Dyn": "iVESUgrROrP1ip3j"}}, {"platform": "PSN", "platformDlcIdMap": {"G68DByf2UMPtigq9": "zOQOcAqBj0bXhOr9", "OHt6zx1i2W3GY7td": "h8hHlQyMlgfkTsAT", "hLyflAqqAP4M78sm": "Ydyge6DroOywOxI4"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1987-11-07T00:00:00Z", "grantedCode": "6jZzoYIFAvYfT8XQ", "itemId": "w2EOq6BFjmN4OqKG", "itemNamespace": "LRpNWzKZtZnxgywm", "language": "uJd_xpuh", "quantity": 0, "region": "1mMyeNRsjQuDEgO3", "source": "REFERRAL_BONUS", "startDate": "1976-12-17T00:00:00Z", "storeId": "sfm7hcIFdkdrwAcK"}, {"endDate": "1998-03-31T00:00:00Z", "grantedCode": "awHLMxhx9nC3o6pX", "itemId": "U5MDJLCB6WbXWIRp", "itemNamespace": "gjooaBVemsbkaXZQ", "language": "NAul", "quantity": 61, "region": "rZpkSntuOeaPAyPe", "source": "REFERRAL_BONUS", "startDate": "1989-09-23T00:00:00Z", "storeId": "vD0lL7aZUY9d1Idu"}, {"endDate": "1972-04-24T00:00:00Z", "grantedCode": "8bjYeBVMr7zHYmRE", "itemId": "4X36KUOdfEmoIYwS", "itemNamespace": "xxAsfwDMivWqHHGl", "language": "Ub-790", "quantity": 23, "region": "eTEqYudHlA4AxeEI", "source": "GIFT", "startDate": "1986-07-11T00:00:00Z", "storeId": "7C65Ans9SquNSJIa"}], "userIds": ["T3WKijbqhT3uyQRX", "vvcUYDeWPZ8yhwQ0", "y5VdUdYy9Y9OCSmm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["gIdj1lTJdNLmAvEd", "EBVAU3rbkv8V98cu", "pW0L5WsiuITRMSPO"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'UfWQwr4PYf48r66M' \
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
    --body '{"body": {"account": "aToxBiliy2vtRkpq", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 76, "clientTransactionId": "CG7ZExOoIpWzacOv"}, {"amountConsumed": 47, "clientTransactionId": "YPQ5bk5IeuAi3zWF"}, {"amountConsumed": 67, "clientTransactionId": "oZRUL7wS3HaMTXAX"}], "entitlementId": "6y0STTN2sBEijjjp", "usageCount": 44}, {"clientTransaction": [{"amountConsumed": 72, "clientTransactionId": "SzGkED0oweFYDBPy"}, {"amountConsumed": 8, "clientTransactionId": "JuA0DEMgykqqjoHT"}, {"amountConsumed": 32, "clientTransactionId": "EQS4871QSmsspn5s"}], "entitlementId": "NfifK65tvaH9jwcO", "usageCount": 70}, {"clientTransaction": [{"amountConsumed": 53, "clientTransactionId": "pthyYpBJDHIIxTIG"}, {"amountConsumed": 72, "clientTransactionId": "FsV2PnCs9R0D5jZE"}, {"amountConsumed": 47, "clientTransactionId": "glVgxjOGQGlHm8VT"}], "entitlementId": "N56tJKwD8O07L9GG", "usageCount": 8}], "purpose": "uenDihceaLdgPZI0"}, "originalTitleName": "fKW8LeQxItaK6s3H", "paymentProductSKU": "ha69MgxjGJx62mkf", "purchaseDate": "Vlu4bGB1pyk0PpxX", "sourceOrderItemId": "ZDy5Pmbu7RrD9a5m", "titleName": "dlXTCL467xHbAiD3"}, "eventDomain": "Pr3mXZO1PnbSlfVR", "eventSource": "lAI8F2f3mEv09kAA", "eventType": "5hnQtd4bcivHGIEp", "eventVersion": 23, "id": "iBnfrnq9kOFBWhUT", "timestamp": "PiKR3qcbHLGplYsS"}' \
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
    --body '{"bundleId": "3jsRZffCd00VrgPu", "password": "NtOv3jbhGBuW8Kcy"}' \
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
    --body '{"sandboxId": "PMfDWSEEpKoJlmhM"}' \
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
    --body '{"applicationName": "QUCx70QjYbzemOTU", "serviceAccountId": "RzzAOIBarB7kcer5"}' \
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
    --body '{"data": [{"itemIdentity": "SvPLeQZIpKFXgnsx", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"0gxcoaH6u9TVf4Dv": "EzpoPRiClZ6rlwX9", "9AHMLHqguYykVWzN": "wPcvGyieBsRUduW5", "lxSlorWEGN5bPGSO": "SiiItrSrEJMBAIwT"}}, {"itemIdentity": "LkrMDFQfpQ9o0GJM", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"fqRRaZozM8xCBoaS": "2FMwfWNCbN5GelVO", "U0hHnsCl5k6Jxh5m": "kmQzKg0jWCjpGwh7", "pLAi5JmzvM6JFKB8": "ikHpl3sNRaDEC2Ok"}}, {"itemIdentity": "XA3WqypoOw0H2s0s", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"jNpHhM2ZXp4N0ROm": "UCTrS7Gi9Iigk9va", "mO7Q2WQwSWqSs05r": "jISy4B0X9AJdkT7U", "YCV8agvwOI2LlOQN": "RN132RdgwMXv9olK"}}]}' \
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
    --body '{"appId": "pRyWQim3qlART9mP", "appSecret": "PmYUvlkBGPJFaFzk"}' \
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
    --body '{"backOfficeServerClientId": "ABC8zWMcYW5iRrw3", "backOfficeServerClientSecret": "2FRg8y4rOuj7J6ij", "enableStreamJob": false, "environment": "bcycXmBcrJLb7lab", "streamName": "yotifVk9KyqceGv0", "streamPartnerName": "CEDTVSjINYeKLowG"}' \
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
    --body '{"backOfficeServerClientId": "7UQB9pXzuCK5qd2m", "backOfficeServerClientSecret": "8A5axixm9X9TXNhN", "enableStreamJob": false, "environment": "y1PVriIyv9kjuiAG", "streamName": "iXx47etMikLFggYD", "streamPartnerName": "c2FMbzZoeKagnKf2"}' \
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
    --body '{"appId": "Yifzvr9OqTsInGzH", "publisherAuthenticationKey": "FpFXYJtHtqwoIwQB"}' \
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
    --body '{"clientId": "eIALI8JNIII4jrzr", "clientSecret": "PsuMziNM8AB7RRxi", "organizationId": "ZH3ngnitURdMjZLY"}' \
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
    --body '{"relyingPartyCert": "CaeklQcFY1QIk1h5"}' \
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
    'EKvMGd6hQ2mHjmLu' \
    '4oFlReHy0JyZv7ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'nqeiGTTqpgVsY1kP' \
    'NdJiJXB3yjNUPIfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'oXRO0CkW1ZcgUSbb' \
    --body '{"categoryPath": "nffBWRaJN1SjCFLD", "targetItemId": "NJfAhJGwSYEZjEb0", "targetNamespace": "Pv35fEk9s11bFXkf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    '7rQJ4Kj7Qyo9tUpt' \
    --body '{"appId": "iyZzRX8Y4rxRWZPe", "appType": "GAME", "baseAppId": "LAQWuBJwxObZqMGx", "boothName": "hffy9cHrLYfftad9", "categoryPath": "9JDcnn7f2d8SOWP2", "clazz": "dw6Uy88WpQalG38V", "displayOrder": 84, "entitlementType": "DURABLE", "ext": {"o82aLD9jUjuDITji": {}, "fWRbmtK7MTxcCWnM": {}, "iCLsjroKHPApA8Gs": {}}, "features": ["XwUApJWohXn01RB7", "pu7BaONXyE5fIDbs", "GwyocvY9NePjLJQJ"], "flexible": true, "images": [{"as": "i48xOYVvEcEm53BY", "caption": "MBacQBIuDVs7U0AJ", "height": 39, "imageUrl": "2vDPUpv5VEdIG82d", "smallImageUrl": "pIbfxVFfdvKQVgPQ", "width": 46}, {"as": "ClkR3M6Twpwq3nLw", "caption": "xnJKjOo9fvfXF1Vs", "height": 17, "imageUrl": "JlDDJ7z4Pb5jyGID", "smallImageUrl": "39Ung1D57FjYKlJi", "width": 90}, {"as": "jJUmCbi2llksf6GA", "caption": "8vTt92kldCoyRdiO", "height": 16, "imageUrl": "rXKFA2gdjQCYoE8b", "smallImageUrl": "0CZetLfpFNyp7375", "width": 36}], "itemIds": ["z72PKXjShM2Dvesm", "MIbiQfaHxl2YUNRL", "RjgKqSSYgZnVfa8g"], "itemQty": {"ovttlpFAq8oebnS4": 47, "2zkGYTr9yJIveX52": 35, "x3mfB5ZwV25N7NAv": 61}, "itemType": "APP", "listable": true, "localizations": {"GuyYEYZE3KaGSdhE": {"description": "GKcp6g1A8O9N9cbY", "localExt": {"BK6XOBDpR7SH93AE": {}, "1Toj5vygVvLSJvds": {}, "GpmmUeMikW3s54zf": {}}, "longDescription": "fAL2DZ7gBhy77iRV", "title": "FfFvWenMNV00KVuL"}, "F9WDnGO3bpQWmnS5": {"description": "2ZuuuI7F1xpVrcoX", "localExt": {"zSOEGEDYfiGPYo2K": {}, "3dN3YBOJfvV6SuHo": {}, "voQlk5wL2oXDZ20B": {}}, "longDescription": "w2H4tz6KUC4jXGj2", "title": "G0GZ3JBYi9bBKBRp"}, "dbLCiwxOx2XQn94x": {"description": "PqXhqeNMDGA3O5hQ", "localExt": {"Al6U2g9imVMh3i7j": {}, "095rDL6lEuB1ZIMI": {}, "s1dFvYokH9t2u8ZZ": {}}, "longDescription": "nyHKkk6Gh25tEcX9", "title": "GegDnrYz0GFpSVdx"}}, "lootBoxConfig": {"rewardCount": 64, "rewards": [{"lootBoxItems": [{"count": 57, "duration": 37, "endDate": "1999-11-02T00:00:00Z", "itemId": "Ap1roclyXllFitPa", "itemSku": "mSKRzDIZgSk6suS9", "itemType": "0ZbDdmjU11QIZtkS"}, {"count": 28, "duration": 67, "endDate": "1992-12-20T00:00:00Z", "itemId": "KeD7QJQEEVDAg045", "itemSku": "BvtPd7ibBA3sd51m", "itemType": "DooH53vibq3Qcrtt"}, {"count": 52, "duration": 76, "endDate": "1999-10-26T00:00:00Z", "itemId": "dIebsw7EjkMnJSzi", "itemSku": "EA43WqIMJdrqHIsJ", "itemType": "98WRjqYieXRthQZv"}], "name": "zRi7pqpajYEHs9TI", "odds": 0.16130754648920964, "type": "PROBABILITY_GROUP", "weight": 28}, {"lootBoxItems": [{"count": 35, "duration": 56, "endDate": "1989-02-23T00:00:00Z", "itemId": "64BOKqywS6DKNSeb", "itemSku": "2UMWOgVeYkCvqq0t", "itemType": "O15pEVG7sNihxpuu"}, {"count": 77, "duration": 64, "endDate": "1986-07-06T00:00:00Z", "itemId": "JCxvzZnh8oBAk1MN", "itemSku": "CAUmdnLaVRUu5Vbj", "itemType": "wPa9rYgHaxeTT3eb"}, {"count": 43, "duration": 60, "endDate": "1971-04-07T00:00:00Z", "itemId": "YPNBp9wA4LxO2n7W", "itemSku": "JQFzBCD9S03D7JLs", "itemType": "IM3VOMRvvqkXDMPz"}], "name": "OB08tpk0qhZath4b", "odds": 0.9128853244124608, "type": "REWARD_GROUP", "weight": 78}, {"lootBoxItems": [{"count": 40, "duration": 54, "endDate": "1982-01-06T00:00:00Z", "itemId": "EYX55pJNTX1sDjSW", "itemSku": "iSXsV5rJ8eZXZ1TL", "itemType": "MZnNL3DQK45IAtby"}, {"count": 96, "duration": 7, "endDate": "1986-09-19T00:00:00Z", "itemId": "DSJSV8pzl1lfIR7j", "itemSku": "netIJPGObyWCLyFP", "itemType": "HaxkKxEDvSoi2X9S"}, {"count": 49, "duration": 19, "endDate": "1974-02-24T00:00:00Z", "itemId": "vMG8QAaWUhIguMvK", "itemSku": "DOrx0wQXKEroyKz2", "itemType": "reP63EVHT72VuhoG"}], "name": "P2IFXGU5hujEfCMt", "odds": 0.9966852466295573, "type": "REWARD", "weight": 60}], "rollFunction": "CUSTOM"}, "maxCount": 61, "maxCountPerUser": 29, "name": "jxqhgYqmMqIdlRrQ", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 12, "endDate": "1981-06-13T00:00:00Z", "itemId": "ILkeRUafUDP5b6BW", "itemSku": "fm7cYCpDIJG42ILh", "itemType": "UoCh8lmKKocC5Ea2"}, {"count": 72, "duration": 14, "endDate": "1978-02-16T00:00:00Z", "itemId": "7UC7y1MKYVeoGFrD", "itemSku": "b8unXv1iE7YgEZsp", "itemType": "OJ0NiZl6OVLxKtkB"}, {"count": 31, "duration": 65, "endDate": "1971-08-18T00:00:00Z", "itemId": "CG8Nu5m4ctwUNV8n", "itemSku": "cebaJ0DCuIeEStt3", "itemType": "PbyctX7HC2haQwVW"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 62, "fixedTrialCycles": 4, "graceDays": 31}, "regionData": {"bVr6HSiXVzrG4EdK": [{"currencyCode": "n8eypTzI497DG0ZN", "currencyNamespace": "oJvvi4Ys50iE7IjZ", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1986-03-12T00:00:00Z", "discountPercentage": 52, "discountPurchaseAt": "1976-11-14T00:00:00Z", "expireAt": "1989-04-11T00:00:00Z", "price": 100, "purchaseAt": "1990-02-28T00:00:00Z", "trialPrice": 14}, {"currencyCode": "aW6jNsM94E2FQb6S", "currencyNamespace": "0VmaTR7E3mkDSQkg", "currencyType": "REAL", "discountAmount": 77, "discountExpireAt": "1993-01-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1990-09-29T00:00:00Z", "expireAt": "1995-09-07T00:00:00Z", "price": 79, "purchaseAt": "1988-04-19T00:00:00Z", "trialPrice": 58}, {"currencyCode": "NSKd0KStITvGQtzw", "currencyNamespace": "jGtGTr238G8Aevk3", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1998-07-15T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1995-10-02T00:00:00Z", "expireAt": "1999-04-24T00:00:00Z", "price": 80, "purchaseAt": "1993-04-25T00:00:00Z", "trialPrice": 51}], "3X4m6wms9SPaHlqt": [{"currencyCode": "DPry2vMON7sdhlil", "currencyNamespace": "fpDT8o2iFrYtGfCZ", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1972-10-31T00:00:00Z", "discountPercentage": 35, "discountPurchaseAt": "1986-06-24T00:00:00Z", "expireAt": "1989-05-30T00:00:00Z", "price": 7, "purchaseAt": "1995-02-06T00:00:00Z", "trialPrice": 30}, {"currencyCode": "I4X26p21iDBZGJ8Z", "currencyNamespace": "MLwPJ871nV5ALS7c", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1973-07-09T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1975-11-03T00:00:00Z", "expireAt": "1992-10-05T00:00:00Z", "price": 56, "purchaseAt": "1981-01-04T00:00:00Z", "trialPrice": 96}, {"currencyCode": "GdS41VRIyAHjYxVh", "currencyNamespace": "CbXbeBEoTlfR33jq", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1996-07-06T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1979-08-25T00:00:00Z", "expireAt": "1983-12-05T00:00:00Z", "price": 50, "purchaseAt": "1971-11-11T00:00:00Z", "trialPrice": 75}], "XJM2B9bMohkWsFKI": [{"currencyCode": "dycYHQcu7JkKBcLF", "currencyNamespace": "Rf50Y7ME2QmYiYqa", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1977-04-11T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1971-04-24T00:00:00Z", "expireAt": "1980-01-23T00:00:00Z", "price": 59, "purchaseAt": "1971-07-27T00:00:00Z", "trialPrice": 50}, {"currencyCode": "qmp7vhz1T6cSrZL2", "currencyNamespace": "CgHxdmYDj9vZNgfI", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1989-02-06T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1996-07-25T00:00:00Z", "expireAt": "1988-01-03T00:00:00Z", "price": 10, "purchaseAt": "1989-09-25T00:00:00Z", "trialPrice": 61}, {"currencyCode": "PQGPclChxLfbXrH6", "currencyNamespace": "f2GDrNbLOjGz34ct", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1981-06-05T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1978-02-09T00:00:00Z", "expireAt": "1979-10-03T00:00:00Z", "price": 1, "purchaseAt": "1999-11-03T00:00:00Z", "trialPrice": 46}]}, "saleConfig": {"currencyCode": "EWGg1r4nW4pBcPPa", "price": 17}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "Mc4NbiJWP5r9EwbI", "stackable": true, "status": "INACTIVE", "tags": ["GJ70P9IqAyNlZ2Ow", "FSebBkXkaxtY97TM", "JH8bO4GDHT6ZaUUk"], "targetCurrencyCode": "vlTKAhrxqHw7f813", "targetNamespace": "qNjzlcxXsmGGcJha", "thumbnailUrl": "uxfhVKIbRvUnyElH", "useCount": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    '7QhC8hgSgytNEojK' \
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
    '3YgWH9l7rv6XUSIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetItems' test.out

#- 106 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'd4keCeiw7P2PtUrP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetItemBySku' test.out

#- 107 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'awQPaHARrhjbEU5n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetLocaleItemBySku' test.out

#- 108 GetEstimatedPrice
$PYTHON -m $MODULE 'platform-get-estimated-price' \
    '0PNuFyKW95dJsGoB' \
    'IjCKlD3axSivItV1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetEstimatedPrice' test.out

#- 109 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'txLINmdHTGLtX6TN' \
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
    '5ctYX1sZnYF3hWmC' \
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
    'CIrP0lJXexseo2e6' \
    --body '{"itemIds": ["BCNJTTRIHDKdVfOU", "r14yZH00n8MsRjaB", "8iurBWW5jSJi0see"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'ValidateItemPurchaseCondition' test.out

#- 114 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'GJIqnatME8GnNWfA' \
    --body '{"changes": [{"itemIdentities": ["Y1yY6D1Euusf0eOz", "oSyKttYwUUlMRG8v", "O0OSsJmhOJDUyyag"], "itemIdentityType": "ITEM_ID", "regionData": {"aJMIjgzU02nZWwBd": [{"currencyCode": "EFpfccauYDc86pxK", "currencyNamespace": "9KhF4KRVPoIuzAuQ", "currencyType": "REAL", "discountAmount": 20, "discountExpireAt": "1971-08-09T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1973-06-29T00:00:00Z", "discountedPrice": 80, "expireAt": "1991-08-28T00:00:00Z", "price": 63, "purchaseAt": "1980-03-01T00:00:00Z", "trialPrice": 4}, {"currencyCode": "b7ZzQuBPyNi1GhZH", "currencyNamespace": "Ej6p5grjk5wzdksO", "currencyType": "REAL", "discountAmount": 93, "discountExpireAt": "1981-03-27T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1972-06-07T00:00:00Z", "discountedPrice": 5, "expireAt": "1992-04-11T00:00:00Z", "price": 29, "purchaseAt": "1978-10-13T00:00:00Z", "trialPrice": 53}, {"currencyCode": "rpvmM19X4zFOvdRT", "currencyNamespace": "pGmBUjfEU9vL8H96", "currencyType": "VIRTUAL", "discountAmount": 79, "discountExpireAt": "1981-12-27T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1981-02-14T00:00:00Z", "discountedPrice": 39, "expireAt": "1993-08-22T00:00:00Z", "price": 46, "purchaseAt": "1989-08-16T00:00:00Z", "trialPrice": 70}], "sqmx2zriOGB8b5qT": [{"currencyCode": "Fp3cIxOI33nt54i5", "currencyNamespace": "hdAezedcppbujZh1", "currencyType": "REAL", "discountAmount": 30, "discountExpireAt": "1997-05-01T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1996-04-23T00:00:00Z", "discountedPrice": 89, "expireAt": "1973-12-27T00:00:00Z", "price": 41, "purchaseAt": "1984-10-03T00:00:00Z", "trialPrice": 1}, {"currencyCode": "HVP2Y9WqSRiwV3UZ", "currencyNamespace": "g0UJLPMkeUwa6OVK", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1990-11-09T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1982-06-19T00:00:00Z", "discountedPrice": 87, "expireAt": "1973-09-04T00:00:00Z", "price": 91, "purchaseAt": "1992-09-08T00:00:00Z", "trialPrice": 37}, {"currencyCode": "VpBmsUzx64Gr4XEm", "currencyNamespace": "0uYYuAmqhftIfe2z", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1980-03-27T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1975-04-14T00:00:00Z", "discountedPrice": 41, "expireAt": "1993-03-19T00:00:00Z", "price": 43, "purchaseAt": "1995-03-07T00:00:00Z", "trialPrice": 26}], "J7jBXy8psNoHNalw": [{"currencyCode": "gvju62rPFMbE1cW5", "currencyNamespace": "7GaNZLT1z0GqDZN7", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1980-02-05T00:00:00Z", "discountPercentage": 69, "discountPurchaseAt": "1984-11-30T00:00:00Z", "discountedPrice": 37, "expireAt": "1974-12-21T00:00:00Z", "price": 98, "purchaseAt": "1991-07-16T00:00:00Z", "trialPrice": 68}, {"currencyCode": "8YYg1AkRh3NmbRhM", "currencyNamespace": "xKeIgwq1NZmxa0gh", "currencyType": "REAL", "discountAmount": 66, "discountExpireAt": "1982-08-22T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1997-02-13T00:00:00Z", "discountedPrice": 87, "expireAt": "1978-05-04T00:00:00Z", "price": 57, "purchaseAt": "1995-03-05T00:00:00Z", "trialPrice": 94}, {"currencyCode": "jpbMblGWnp94a6GK", "currencyNamespace": "Y0BrHiWs0B0RhxQt", "currencyType": "REAL", "discountAmount": 44, "discountExpireAt": "1995-10-31T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1994-01-09T00:00:00Z", "discountedPrice": 73, "expireAt": "1991-07-25T00:00:00Z", "price": 22, "purchaseAt": "1982-05-27T00:00:00Z", "trialPrice": 73}]}}, {"itemIdentities": ["72hJvrOCdAEZ2RHt", "3uQ5nFrPXwxJZQpk", "eDHr0hjKBpDMIvK4"], "itemIdentityType": "ITEM_SKU", "regionData": {"OFJ5RrFZYcwfQ1Q2": [{"currencyCode": "BbcjSpv6Nt1oz4td", "currencyNamespace": "gfKu4bmK8kOKcEoC", "currencyType": "REAL", "discountAmount": 18, "discountExpireAt": "1993-10-17T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1976-11-19T00:00:00Z", "discountedPrice": 86, "expireAt": "1997-10-21T00:00:00Z", "price": 34, "purchaseAt": "1978-04-04T00:00:00Z", "trialPrice": 73}, {"currencyCode": "2OS9iGNElTpMlvRD", "currencyNamespace": "ZSIuM0OXOHPluvsr", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1974-08-05T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1990-11-18T00:00:00Z", "discountedPrice": 1, "expireAt": "1983-11-29T00:00:00Z", "price": 73, "purchaseAt": "1974-08-01T00:00:00Z", "trialPrice": 14}, {"currencyCode": "TbdnOnEarWP4nrJ5", "currencyNamespace": "fNESRVGeswvkzLNI", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1987-10-21T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1987-03-17T00:00:00Z", "discountedPrice": 60, "expireAt": "1977-09-15T00:00:00Z", "price": 98, "purchaseAt": "1997-05-19T00:00:00Z", "trialPrice": 1}], "cwbsD0RDLxWgEWwo": [{"currencyCode": "HpV8E1xQZLa7Kw77", "currencyNamespace": "UpCxNyx1jjdxNePP", "currencyType": "VIRTUAL", "discountAmount": 45, "discountExpireAt": "1989-11-15T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1997-09-01T00:00:00Z", "discountedPrice": 82, "expireAt": "1994-07-27T00:00:00Z", "price": 34, "purchaseAt": "1979-10-12T00:00:00Z", "trialPrice": 15}, {"currencyCode": "rI0T97qA1OiblWlz", "currencyNamespace": "2LXQNqcONcJIsYRQ", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1977-02-14T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1993-10-22T00:00:00Z", "discountedPrice": 99, "expireAt": "1991-10-07T00:00:00Z", "price": 15, "purchaseAt": "1998-11-29T00:00:00Z", "trialPrice": 19}, {"currencyCode": "eNP3Y2nWlS9Sfjh0", "currencyNamespace": "htyVaGj4y9ahS7h7", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1977-05-05T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1988-12-19T00:00:00Z", "discountedPrice": 37, "expireAt": "1980-11-01T00:00:00Z", "price": 82, "purchaseAt": "1987-09-02T00:00:00Z", "trialPrice": 98}], "Grfy9qHKufJfk0Me": [{"currencyCode": "G3qYJr6PuCVK9WmD", "currencyNamespace": "AdpLVTVsj9pDiyyb", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1982-01-26T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1989-09-23T00:00:00Z", "discountedPrice": 89, "expireAt": "1971-09-16T00:00:00Z", "price": 39, "purchaseAt": "1990-09-19T00:00:00Z", "trialPrice": 90}, {"currencyCode": "Q1SeOXsg4jofp9Pv", "currencyNamespace": "lQ1xdmr4JDpvZgvP", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1983-03-24T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1995-11-14T00:00:00Z", "discountedPrice": 26, "expireAt": "1994-05-03T00:00:00Z", "price": 34, "purchaseAt": "1990-04-30T00:00:00Z", "trialPrice": 6}, {"currencyCode": "fSods1zdVT0aWj58", "currencyNamespace": "Othvd3jzMDAf40gK", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1984-06-27T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1977-07-14T00:00:00Z", "discountedPrice": 59, "expireAt": "1980-12-06T00:00:00Z", "price": 38, "purchaseAt": "1975-02-27T00:00:00Z", "trialPrice": 69}]}}, {"itemIdentities": ["mUyIwgQS9kVFUbeT", "eB9KgnFZQ9lVMNyC", "iytnfMoO1I3KISTb"], "itemIdentityType": "ITEM_ID", "regionData": {"0goNq8uq79Du28SR": [{"currencyCode": "RAMaQFEzppeticck", "currencyNamespace": "SUon7awfol07696u", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1979-02-08T00:00:00Z", "discountPercentage": 57, "discountPurchaseAt": "1975-11-12T00:00:00Z", "discountedPrice": 8, "expireAt": "1990-11-05T00:00:00Z", "price": 19, "purchaseAt": "1982-03-18T00:00:00Z", "trialPrice": 53}, {"currencyCode": "OfFSx3AJN97kUjwi", "currencyNamespace": "CmWQvbrxQpUSnos6", "currencyType": "REAL", "discountAmount": 17, "discountExpireAt": "1987-09-29T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1983-05-28T00:00:00Z", "discountedPrice": 35, "expireAt": "1972-05-30T00:00:00Z", "price": 66, "purchaseAt": "1973-06-20T00:00:00Z", "trialPrice": 90}, {"currencyCode": "1VUuLmenyxTQVkEg", "currencyNamespace": "5wouUKa35m8oH9zC", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1982-04-12T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1985-05-20T00:00:00Z", "discountedPrice": 80, "expireAt": "1976-01-17T00:00:00Z", "price": 44, "purchaseAt": "1982-11-01T00:00:00Z", "trialPrice": 91}], "oL0wwHoRMNexBOro": [{"currencyCode": "n8wIdUbp7xVMKfbA", "currencyNamespace": "JfW4iMIC52NUedhh", "currencyType": "REAL", "discountAmount": 47, "discountExpireAt": "1991-07-07T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1974-04-26T00:00:00Z", "discountedPrice": 78, "expireAt": "1979-10-07T00:00:00Z", "price": 67, "purchaseAt": "1985-05-03T00:00:00Z", "trialPrice": 90}, {"currencyCode": "SsyEPDWHcqfYp2EF", "currencyNamespace": "xEaEHCGtg812NQb5", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1978-03-06T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1987-05-30T00:00:00Z", "discountedPrice": 64, "expireAt": "1979-04-02T00:00:00Z", "price": 45, "purchaseAt": "1994-08-13T00:00:00Z", "trialPrice": 18}, {"currencyCode": "6Um7ir0n6O3vbYVj", "currencyNamespace": "rcErgoApAxyDnHjA", "currencyType": "VIRTUAL", "discountAmount": 62, "discountExpireAt": "1972-05-25T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1994-09-25T00:00:00Z", "discountedPrice": 43, "expireAt": "1977-02-03T00:00:00Z", "price": 64, "purchaseAt": "1982-07-06T00:00:00Z", "trialPrice": 77}], "WVDSMNr23LV7xZEE": [{"currencyCode": "v7O1lwxVTRll0GIE", "currencyNamespace": "UJtMC8NyV2HLHZT3", "currencyType": "REAL", "discountAmount": 40, "discountExpireAt": "1997-11-22T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1996-04-02T00:00:00Z", "discountedPrice": 59, "expireAt": "1983-03-10T00:00:00Z", "price": 5, "purchaseAt": "1973-12-16T00:00:00Z", "trialPrice": 72}, {"currencyCode": "B074dTJZqeOllKQN", "currencyNamespace": "wJUGtC0tAhxn1ay6", "currencyType": "VIRTUAL", "discountAmount": 24, "discountExpireAt": "1981-06-17T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1992-05-27T00:00:00Z", "discountedPrice": 100, "expireAt": "1981-09-30T00:00:00Z", "price": 58, "purchaseAt": "1991-06-14T00:00:00Z", "trialPrice": 60}, {"currencyCode": "4F9IgDT2tq2V2lMz", "currencyNamespace": "fIQHCZ90DqQgP6yn", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1992-03-04T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1980-04-20T00:00:00Z", "discountedPrice": 68, "expireAt": "1995-05-03T00:00:00Z", "price": 81, "purchaseAt": "1997-03-28T00:00:00Z", "trialPrice": 95}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'BulkUpdateRegionData' test.out

#- 115 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'oTnRa0KiQWPxd1gq' \
    'lwx9CE4WcsmYtCkI' \
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
    'gcwiDWQFghmIi6fp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'GetItem' test.out

#- 118 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'hDw3p9QWqwTF2pOJ' \
    'sY86xAf5y1iy01Fk' \
    --body '{"appId": "EEXlKiTIDgP7wuXQ", "appType": "DEMO", "baseAppId": "0nw2oxKye8jZqj7k", "boothName": "0YiLqOUSBuwR388R", "categoryPath": "EDRuYBnWiEsOnDfI", "clazz": "AN04f5kSONmw1BDq", "displayOrder": 34, "entitlementType": "DURABLE", "ext": {"SctLL4WfGq8JCDnw": {}, "GWgccuzuc6QDRMGd": {}, "BPbUyHTYPS8CGKXG": {}}, "features": ["NhDepQum4Dj7pR05", "Z7U2lNkorrw9QH3r", "on2ecc65YAFLweD9"], "flexible": true, "images": [{"as": "TGXGRkYXifTd5nAO", "caption": "F9VV7JgCOm4wL729", "height": 69, "imageUrl": "ZM4zTTYI6O8coYDW", "smallImageUrl": "UfcL1qsegBsrNqeW", "width": 84}, {"as": "BxVe8iW7sGELnMdX", "caption": "RqdGPzxXvZPtrhje", "height": 98, "imageUrl": "kw98x3tMM1bFFDIq", "smallImageUrl": "KD8HJ4X0DetCeJ4x", "width": 88}, {"as": "wf5mQx6Hs7M5apPM", "caption": "c8ZR3bPCJ5n5s6DO", "height": 61, "imageUrl": "4twReM5DcHde3fkH", "smallImageUrl": "f7tH8WTOTeBOcYhf", "width": 31}], "itemIds": ["nGCnPjiIbJifs0ar", "KxCcNv8FQCyQBqKx", "ayGvw7MqOsypCJmf"], "itemQty": {"RnW0spgvjt7eCLDu": 35, "PA3PRnQtB410iWT0": 92, "iac6vLeoIULJlWXm": 86}, "itemType": "OPTIONBOX", "listable": true, "localizations": {"lef1tSHJf6sVpwAA": {"description": "KKqmTy0ZSyJ7IIUX", "localExt": {"lBlZMQeSnOg5gf1S": {}, "wrbpmoF4DvNA1wo9": {}, "IAxV5C71gTw8BJPF": {}}, "longDescription": "ctwUMCRdxXOBu3TW", "title": "mHDVmCGFoD7aNFj9"}, "wORAVqRuNsXxRu4E": {"description": "QqR3KbYWtFzplXVk", "localExt": {"36IpbGquPnIPwR1B": {}, "inZ4ULwAKO8n42Uu": {}, "xEyfzZJsZd9sB6CV": {}}, "longDescription": "9KiWkbdpGqWQIPK6", "title": "mVytM5mBRT39gKYL"}, "k9DmjJh6PnpTXWAU": {"description": "t8lgqNM4poGEvIKC", "localExt": {"e3MrLxmnjmlAuaBC": {}, "dhzXb6cBMPNMmjMi": {}, "2uztFNfXg0UvwaZ0": {}}, "longDescription": "py16ShGomFzUappa", "title": "aODZaZ6Vzztnntox"}}, "lootBoxConfig": {"rewardCount": 46, "rewards": [{"lootBoxItems": [{"count": 85, "duration": 38, "endDate": "1973-11-26T00:00:00Z", "itemId": "ktNnl8UYH5kesuOt", "itemSku": "YHLqcdy05YrqdFn8", "itemType": "sQ7yc8xLKyBfGLHE"}, {"count": 53, "duration": 74, "endDate": "1981-03-05T00:00:00Z", "itemId": "lhWw1RCgHr3f6UqF", "itemSku": "GCvsMFEFlXHBOK1R", "itemType": "qtKYVObVorIVWWLa"}, {"count": 99, "duration": 88, "endDate": "1989-03-05T00:00:00Z", "itemId": "we2KAca1aKeXUu9h", "itemSku": "INqKvoYKio4M51vu", "itemType": "aFyqjQsTGmzItJIO"}], "name": "kEIRsSWOV8LyivYb", "odds": 0.6148894169736177, "type": "REWARD_GROUP", "weight": 22}, {"lootBoxItems": [{"count": 77, "duration": 85, "endDate": "1999-01-10T00:00:00Z", "itemId": "GERdJdphepF9dfsn", "itemSku": "g9FGGjJ0hRPUBFxM", "itemType": "2Fr3olO10RAyIZs2"}, {"count": 97, "duration": 19, "endDate": "1973-08-28T00:00:00Z", "itemId": "eYSM479gn62lizsW", "itemSku": "GrtIgVPb7hoo8YkN", "itemType": "PW8mWOJGtdXJGDsx"}, {"count": 88, "duration": 5, "endDate": "1984-07-09T00:00:00Z", "itemId": "R3NObYp43YXMHqWe", "itemSku": "VjnOURxGvOhz9s7k", "itemType": "tWkJDaHg6kDVjxhx"}], "name": "RxjeDrqCfJEjrqJk", "odds": 0.5068639231479429, "type": "PROBABILITY_GROUP", "weight": 79}, {"lootBoxItems": [{"count": 12, "duration": 64, "endDate": "1976-06-02T00:00:00Z", "itemId": "ex0eOw31PXkVnetc", "itemSku": "vAuim14Wdh1qKoSD", "itemType": "BbyqlJyfVgaW6ziZ"}, {"count": 64, "duration": 14, "endDate": "1976-03-08T00:00:00Z", "itemId": "5zqkzEu41hVfVC7e", "itemSku": "LVWGk0GjYReIZaDC", "itemType": "2Au2bEpymbJ4dPJm"}, {"count": 21, "duration": 11, "endDate": "1972-08-16T00:00:00Z", "itemId": "vyuDHFFstLhZzlet", "itemSku": "Cqa3lJMQ1sGlfqjD", "itemType": "BzOjNeq8JJhbi7QD"}], "name": "0RW0qgxO0Y6TFpFS", "odds": 0.4666793681385323, "type": "REWARD", "weight": 35}], "rollFunction": "CUSTOM"}, "maxCount": 82, "maxCountPerUser": 92, "name": "RMCVBTrkvObsiHQg", "optionBoxConfig": {"boxItems": [{"count": 39, "duration": 93, "endDate": "1972-11-30T00:00:00Z", "itemId": "IXeKZzZBo6ARaQnN", "itemSku": "ZQ1R0PGBFVnc37aW", "itemType": "VjM3iVKjr5VDqakK"}, {"count": 6, "duration": 84, "endDate": "1996-04-29T00:00:00Z", "itemId": "67GAH1oiS1JuO7MN", "itemSku": "oFPtRhYYIpNqVHbb", "itemType": "CVwbitD5tWXZVvjY"}, {"count": 34, "duration": 31, "endDate": "1979-02-16T00:00:00Z", "itemId": "EXKUDlmtixw9FtBV", "itemSku": "AWT8PxL8674KYMeN", "itemType": "2W2CNqmO8JALtCiD"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 66, "fixedTrialCycles": 88, "graceDays": 87}, "regionData": {"I03oSwCfYpN9jkLC": [{"currencyCode": "sMYyyhEyBfFFZwkC", "currencyNamespace": "1PRjBWzTuXttDRED", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1999-11-23T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-11T00:00:00Z", "expireAt": "1999-07-09T00:00:00Z", "price": 41, "purchaseAt": "1993-01-02T00:00:00Z", "trialPrice": 45}, {"currencyCode": "raaEVt3vsBCXpIgQ", "currencyNamespace": "zkWzcBqVcuTTrIk6", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1995-06-02T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1983-05-13T00:00:00Z", "expireAt": "1992-01-26T00:00:00Z", "price": 40, "purchaseAt": "1982-08-15T00:00:00Z", "trialPrice": 56}, {"currencyCode": "wXIuYrbPUcvEOJ4P", "currencyNamespace": "ghksbaThW37NTbz8", "currencyType": "REAL", "discountAmount": 99, "discountExpireAt": "1993-08-07T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1984-06-13T00:00:00Z", "expireAt": "1994-03-23T00:00:00Z", "price": 27, "purchaseAt": "1979-06-24T00:00:00Z", "trialPrice": 96}], "XiTP0KrWQ3pgbHM0": [{"currencyCode": "Svy3GRenDzwlTE9C", "currencyNamespace": "zhnck3GnyPFQHgn9", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1996-09-01T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1992-09-25T00:00:00Z", "expireAt": "1992-03-24T00:00:00Z", "price": 94, "purchaseAt": "1997-08-12T00:00:00Z", "trialPrice": 13}, {"currencyCode": "AVzeiaDi67E3rTwN", "currencyNamespace": "2LrT85Arfe6EweJx", "currencyType": "REAL", "discountAmount": 55, "discountExpireAt": "1990-11-19T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1981-01-06T00:00:00Z", "expireAt": "1998-09-13T00:00:00Z", "price": 2, "purchaseAt": "1973-09-04T00:00:00Z", "trialPrice": 66}, {"currencyCode": "ay64EnFyFeW0oNhd", "currencyNamespace": "dKrrhzwz2PFXC33K", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1995-11-16T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1987-08-10T00:00:00Z", "expireAt": "1992-12-13T00:00:00Z", "price": 73, "purchaseAt": "1997-02-17T00:00:00Z", "trialPrice": 59}], "TcZnHoYaII5c5UqV": [{"currencyCode": "vKR3ydSEb2trPjql", "currencyNamespace": "B5c8a78gp4BGN4NA", "currencyType": "VIRTUAL", "discountAmount": 73, "discountExpireAt": "1972-02-22T00:00:00Z", "discountPercentage": 3, "discountPurchaseAt": "1979-09-26T00:00:00Z", "expireAt": "1995-02-18T00:00:00Z", "price": 58, "purchaseAt": "1983-06-21T00:00:00Z", "trialPrice": 65}, {"currencyCode": "bdw0sPrgDKqHCs5G", "currencyNamespace": "TdTLCxJqK7dgsgrn", "currencyType": "REAL", "discountAmount": 86, "discountExpireAt": "1995-08-02T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1988-11-20T00:00:00Z", "expireAt": "1971-02-22T00:00:00Z", "price": 4, "purchaseAt": "1995-07-06T00:00:00Z", "trialPrice": 38}, {"currencyCode": "ZoDXdPORkWkyTcJz", "currencyNamespace": "vDUlhTlBNpvkjg48", "currencyType": "REAL", "discountAmount": 65, "discountExpireAt": "1995-10-26T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1985-05-16T00:00:00Z", "expireAt": "1995-09-07T00:00:00Z", "price": 88, "purchaseAt": "1979-04-22T00:00:00Z", "trialPrice": 9}]}, "saleConfig": {"currencyCode": "AexrRomTZFHX4cgt", "price": 21}, "seasonType": "TIER", "sectionExclusive": true, "sellable": false, "sku": "Ex6tlxks0yGW8qDW", "stackable": false, "status": "INACTIVE", "tags": ["G9qYAEpR44fWWEsC", "r7MF8Ptq10XBhcJf", "ETqKlcFcaL6XOoO3"], "targetCurrencyCode": "WqBsbDmsTk9UuiQw", "targetNamespace": "ezvArAKJwZGVyknp", "thumbnailUrl": "OhuGhAnlnjyPBj7h", "useCount": 79}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'UpdateItem' test.out

#- 119 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'hncU5vgL62RA2BI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'DeleteItem' test.out

#- 120 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'knizQ4Jx8In4w8yR' \
    --body '{"count": 64, "orderNo": "6laOkeLBcprByjUr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AcquireItem' test.out

#- 121 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    '7w9w1xKUrLmQSkuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'GetApp' test.out

#- 122 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'MRzyerpya2oBjbgB' \
    'hOdXE8y1PNIzbnPB' \
    --body '{"carousel": [{"alt": "5wG65f3ACfS3A8Je", "previewUrl": "RMYUCgn7oklNewpA", "thumbnailUrl": "IwtlAooXZ7HDb8g2", "type": "video", "url": "oG1oZArFJBUmMx7n", "videoSource": "vimeo"}, {"alt": "ppRsBWQ7RdYqZaQ8", "previewUrl": "swcFOshiWEFDMG99", "thumbnailUrl": "v5LSSkkEoAarkgZ7", "type": "video", "url": "cdzYhgH24VR4hJns", "videoSource": "youtube"}, {"alt": "brkh3dQNtIEwCcfP", "previewUrl": "mWjX540aN2pvOi5U", "thumbnailUrl": "G7agVhXIgoHE9eEv", "type": "video", "url": "yV2DqxWhSV3r9vk4", "videoSource": "youtube"}], "developer": "WnREifOFJQwGPy5z", "forumUrl": "GebVw9nLvVm8UeFU", "genres": ["Action", "Action", "Simulation"], "localizations": {"lVGZ6lIs17PXJ8Ks": {"announcement": "gqGNM6sO7IUwIv84", "slogan": "zQjc88fKtDQSbDQN"}, "21JlwPxpuUZm1GVu": {"announcement": "I2Eihx6IJwMzUqM1", "slogan": "6MYY2MVvo3MMCL4a"}, "V6oMUzpMmsvvKTlj": {"announcement": "WspMrC4TeRTNUYz7", "slogan": "N4wHLHx7FCWn7iOm"}}, "platformRequirements": {"KIN2roJNZmgEGzqD": [{"additionals": "HdLpDjLIhvCNlBRc", "directXVersion": "Fsa03Nqu13LgD6kO", "diskSpace": "UZXQKRTVR95IwPCb", "graphics": "2qOuIRbBL0njCbit", "label": "EJNHwfW76v6GPVwW", "osVersion": "jIfhOXemeTgiENbh", "processor": "dRohucoiX0GAQZEb", "ram": "Nr6VtQiKwKuIHMji", "soundCard": "IjX7Eu0WCXd8GX7y"}, {"additionals": "gT5qlBekxw9pO3vy", "directXVersion": "RviPljDYddTDwgc6", "diskSpace": "onXfoDvjI9jfJFTH", "graphics": "cHvAfosnCXqJplcw", "label": "aBHILlCC7ovjEbjK", "osVersion": "rZ2d6IbWTfPplY43", "processor": "FQpfFWm8VMHjC8qr", "ram": "xvZsJd3RBYL4PAqd", "soundCard": "viBvToSQ7EqHUhHn"}, {"additionals": "1qP3G2kSIurSOWI2", "directXVersion": "donULQokdCSsp87x", "diskSpace": "6Jfe5YAYJeb1GUdt", "graphics": "B5G8NITA0g58cqZn", "label": "79u2grirdqELbdqX", "osVersion": "aPlAMGm4h3PbLHDa", "processor": "7uqaaxqXPKuNAeKK", "ram": "jcKgU263PawPB10d", "soundCard": "4KCtC9mqs8uXBZ2K"}], "xk4a5FeKFm3raYpW": [{"additionals": "l0MfF3iAQb4Iiy26", "directXVersion": "m51AwCv4UKmP7ecz", "diskSpace": "fnYgOqXhJZ6DIokI", "graphics": "D1ZFk9fRCHfId0Dh", "label": "nin8RxnO0qs4FykF", "osVersion": "XDdcUuEE9wh4CEOr", "processor": "PY29A1L1Xijb7GTI", "ram": "FWcZWKcGHG9MBp1A", "soundCard": "EcNUzfWwpdraZO1l"}, {"additionals": "fHzX5CHNiYaLYUlR", "directXVersion": "ZSLj5xwmP8QMJJJn", "diskSpace": "2Lqw6aiKZbUJQ92B", "graphics": "TViMMFji1GmfmwhN", "label": "25xGSRRZnwlbMGhe", "osVersion": "YVteLiiIKPjokv6H", "processor": "MQOekLKHziTw5M3K", "ram": "vzpUEcp3cp4fWJlL", "soundCard": "rbVQceKy5JZK1rVp"}, {"additionals": "GdpzlwFNJyyLozi8", "directXVersion": "eBqPD6pfcv9jGr7b", "diskSpace": "2hHbaUEtBnsggbEV", "graphics": "NmymBNr5C2BOjUiO", "label": "QVEbp3z13pDy371Q", "osVersion": "LVtDb6RZXatSimmK", "processor": "udqURkyz4E3EI1bS", "ram": "CYaa8JSNQdhrnvuD", "soundCard": "GFiT4U6WQQwsTHCg"}], "TvrGllrcttK4Wgzd": [{"additionals": "UhB2YhKWidqRPQ1h", "directXVersion": "SmShNaSmVFsmFW74", "diskSpace": "DkabvmYAT6qTg6ZO", "graphics": "aTNC1LAentTXWyBm", "label": "b2Ir2yOaVvE1N52P", "osVersion": "wdeTQhMz99aZ3fza", "processor": "0rlzqNhVNwgXBCZr", "ram": "4m1UpizE7fm00IB0", "soundCard": "YnQ5xpjcMxUGokG4"}, {"additionals": "VQKR0ItcCnXFRjhk", "directXVersion": "7tzIHqZpgJqlw441", "diskSpace": "XUfp7AVnf8BzBBqE", "graphics": "vMtJopw2r5pKsXnI", "label": "YkKH6MNrEsOlIFw6", "osVersion": "Fqa6YXBlVXOvZUgW", "processor": "2ZMVJhOyVaO1sgnJ", "ram": "F31EULHtVtkZrE0Y", "soundCard": "PmtE6fcv3nPROvD1"}, {"additionals": "FiqEUhsD6QxKzbZ7", "directXVersion": "xvbLKNa3OJMFdrQm", "diskSpace": "X2OFLws9RV6lY9IG", "graphics": "sZjUsSUE7NuCYEOW", "label": "NkgUfe6pVMS5m8aR", "osVersion": "Iev5s4q7UwwraCDr", "processor": "326Q66cxtjNTXsCs", "ram": "fA2pIWzC6nrUavXt", "soundCard": "7t0llsH39PXWtk22"}]}, "platforms": ["Windows", "IOS", "Windows"], "players": ["CrossPlatformMulti", "MMO", "MMO"], "primaryGenre": "Casual", "publisher": "dumMW9HWHfZ3bFTq", "releaseDate": "1996-07-14T00:00:00Z", "websiteUrl": "qdzpP7Rk1qbFWhtw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'UpdateApp' test.out

#- 123 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'NaVCqf0vP284yQAb' \
    'udR95sQ1FygQvoX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'DisableItem' test.out

#- 124 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'pEJ3R0cuQGjCShST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'GetItemDynamicData' test.out

#- 125 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'NyM9yuMOFavgMWyx' \
    'izWKQdVExukcKDUz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'EnableItem' test.out

#- 126 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'hKKARjqJSWImXvaL' \
    'XkvZvwk0v0OKy45d' \
    'qId3gXUWVAmaDjrn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'FeatureItem' test.out

#- 127 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    '0iZsIfqeLfl0wacx' \
    '4istsfrFqHu6f54m' \
    'L4hAfiqX3ThREYkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'DefeatureItem' test.out

#- 128 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'dZIrjnjuCHkx8hm2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'GetLocaleItem' test.out

#- 129 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    '178A4NUDAdwt7cj6' \
    'v5DLEk9RkumkrnY4' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 21, "comparison": "isGreaterThanOrEqual", "name": "sFD2le3UGhQnnmMg", "predicateType": "EntitlementPredicate", "value": "iVQ6covYDuI4l1d9", "values": ["6F25c13PNqPn7XRl", "YaLVuL1mLP65pId3", "nqiWP9WWQMGmm0bi"]}, {"anyOf": 98, "comparison": "includes", "name": "jE8A3EsOz8LDnxgL", "predicateType": "SeasonPassPredicate", "value": "t7Qhdw4vmSxnJcya", "values": ["jz0yLelzMzWiPzug", "ijSCsFa6ipRu1AaF", "dDu6rxIv2ZMtZX5K"]}, {"anyOf": 21, "comparison": "isGreaterThan", "name": "53tX2oxmEDDgGBgP", "predicateType": "SeasonPassPredicate", "value": "HmOLBLlsw2pDJDLe", "values": ["xXCStzvOyY1tNKAV", "Wv5cGRm3WTx0oyOr", "JwzbVEEQ0D6RcLpR"]}]}, {"operator": "or", "predicates": [{"anyOf": 90, "comparison": "excludes", "name": "u5wP9CTLKxi1BjFM", "predicateType": "SeasonTierPredicate", "value": "ZdT1fZJTutZpZZn6", "values": ["ANjqBdfMMU89e6CI", "RTnJUdR3MUQnEeAN", "egDbFDXW3N42ccGU"]}, {"anyOf": 57, "comparison": "isGreaterThanOrEqual", "name": "n2Q3kMtF5tiwPCAx", "predicateType": "SeasonTierPredicate", "value": "vuCoP1hIpdIWajZT", "values": ["GunPxVvWyQvciFGx", "9cu1ZdRIZ1hHCpAp", "yB7k7Q9zNJHkXmHB"]}, {"anyOf": 73, "comparison": "is", "name": "NOaveGzkTPehZVmZ", "predicateType": "EntitlementPredicate", "value": "8RDVgsQzaeOv7xB8", "values": ["aeCobrGOAvaYctXd", "3jNOlJBjBMsJisMu", "GlNYJeVVZQH5C76G"]}]}, {"operator": "or", "predicates": [{"anyOf": 22, "comparison": "is", "name": "QcGm0x3DmUahjPVD", "predicateType": "SeasonTierPredicate", "value": "XtIeslnM3lJQMDxu", "values": ["7Auj8cqdtNaFO3AB", "y1AeDryAFewcN6U8", "vRJ3ebbfa3ep8cKN"]}, {"anyOf": 23, "comparison": "excludes", "name": "ukM2BVMu418S3o2D", "predicateType": "SeasonTierPredicate", "value": "qhPmlYgFAu9gD8vs", "values": ["iDfzK1gMLvJ1KqSZ", "9zpsDX7CWEoHK3yL", "CanZaGzamJ8JZ6lV"]}, {"anyOf": 56, "comparison": "isGreaterThanOrEqual", "name": "wuAW3jLkVq9bAefB", "predicateType": "SeasonTierPredicate", "value": "aufemZ4xlGtWc5Uc", "values": ["GIGpI8YhyHkINdPY", "amt1NNvdmy7qa1St", "MbwcUsu3gJ0yHA6K"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'UpdateItemPurchaseCondition' test.out

#- 130 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    'DH87AmGMvChuhxZJ' \
    --body '{"orderNo": "sDNCQEtOnYVE7i77"}' \
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
    --body '{"description": "NKczg6MaoVcixj92", "name": "JkMWuFc2x9p8sArS", "status": "ACTIVE", "tags": ["ypvu88WyRMMRloXy", "STO9W3BEI4eB0PHo", "EfIdFP0QarAdoCQo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'CreateKeyGroup' test.out

#- 133 GetKeyGroupByBoothName
eval_tap 0 133 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 134 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'VI26D2IdXV2RNnCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroup' test.out

#- 135 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'n6spzE0Dj97Arjpd' \
    --body '{"description": "7IRveArOFED1MAfV", "name": "ZhADFM15pfl1N2CN", "status": "INACTIVE", "tags": ["PYuwUtR55gCTACz3", "aLd0f0QGkwoIQo88", "hLxgR5AJVEz4FiSP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'UpdateKeyGroup' test.out

#- 136 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'gU3FLs6LbIwwxFBW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'GetKeyGroupDynamic' test.out

#- 137 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    '1RyUyU8GVL2TVivH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'ListKeys' test.out

#- 138 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    'bcJX1mqJ4BtZCHdl' \
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
    'mOzx9DrwT5dJMDgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetOrder' test.out

#- 142 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'PQtuRIVY69dhSr3J' \
    --body '{"description": "iNweUidBVB2vTyC4"}' \
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
    --body '{"dryRun": false, "notifyUrl": "eT76mWyDrmG0FHQO", "privateKey": "jtRg7ST2UVRJN0qF"}' \
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
    --body '{"currencyCode": "JaGDiDmatCvCembJ", "currencyNamespace": "FNyIwxPt19hjyI7A", "customParameters": {"LyZHQ8V4AejtUM6l": {}, "lcl5hdZoPhVcQ4wX": {}, "eArPe089cqMuV8ML": {}}, "description": "xiTO3GhLJ2qx2h93", "extOrderNo": "yz3Y7YtgdQMhzpcp", "extUserId": "wawMF0j9IirMeP7f", "itemType": "LOOTBOX", "language": "Jsv", "metadata": {"yzWJZAZHklGmHH8I": "1l3xgoVyEemJDvok", "Y7UUVCHGWcVrHG4e": "hIhJk597xUXpiOLF", "QFxY4AHLzQnClUtk": "Xb0SoMLqijtgLSGT"}, "notifyUrl": "nWHCZ6XwqnOeIUKA", "omitNotification": false, "platform": "vQjUxtk82oOOkHmC", "price": 65, "recurringPaymentOrderNo": "OoXFpKZ7smOvhTDI", "region": "dO6ugOFZPtLUvuPK", "returnUrl": "7wBmEY4lD14f0XIJ", "sandbox": false, "sku": "a7DCVegPEDDuHxwE", "subscriptionId": "bPLfnjlMfDJxP4S8", "targetNamespace": "TNhXBTiwS2sBodn1", "targetUserId": "p1MJrZv1itpBPRbt", "title": "gUMFAcxhrY80cxjA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'CreatePaymentOrderByDedicated' test.out

#- 148 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'XFOLYQX2ryH4oq6f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ListExtOrderNoByExtTxId' test.out

#- 149 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'dhzarU0VtmwcYLuV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'GetPaymentOrder' test.out

#- 150 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'xqvaL6vdJr0yQVV1' \
    --body '{"extTxId": "r0LACcKuAd2SElOn", "paymentMethod": "16dw0nzH9XMG2c5B", "paymentProvider": "STRIPE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'ChargePaymentOrder' test.out

#- 151 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    'rzKJ0Lj0VNzr8kTl' \
    --body '{"description": "05oiubu5HHlb7VI1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'RefundPaymentOrderByDedicated' test.out

#- 152 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'cHNU3pvbpyJTgwl3' \
    --body '{"amount": 29, "currencyCode": "OMpzNQDtQNlDFMaz", "notifyType": "REFUND", "paymentProvider": "STRIPE", "salesTax": 90, "vat": 33}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'SimulatePaymentOrderNotification' test.out

#- 153 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'X5v3UCobMU8bzcaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'GetPaymentOrderChargeStatus' test.out

#- 154 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Steam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'GetPlatformWalletConfig' test.out

#- 155 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'IOS' \
    --body '{"allowedBalanceOrigins": ["Other", "Nintendo", "IOS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'UpdatePlatformWalletConfig' test.out

#- 156 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'Epic' \
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
    --body '{"entitlement": {"consumable": {"enabled": false, "strategy": "CUSTOM"}, "durable": {"enabled": true, "strategy": "CUSTOM"}}, "wallet": {"enabled": false, "strategy": "CUSTOM"}}' \
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
    --body '{"appConfig": {"appName": "2yomTQth1iJOyDZJ"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "tqLYJ7E9mP2Be9WZ"}, "extendType": "APP"}' \
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
    --body '{"description": "kuWMnRcGzbD5iC34", "eventTopic": "s0kTiXwPjN8E3wXz", "maxAwarded": 44, "maxAwardedPerUser": 86, "namespaceExpression": "revlUaCgxl01oVwo", "rewardCode": "WAbcskuBfcvcoAMP", "rewardConditions": [{"condition": "zCXwpgD8MOfYXclj", "conditionName": "y6EB8dB8wCiYq2y1", "eventName": "6Jp7HjPDG07Xwugh", "rewardItems": [{"duration": 22, "endDate": "1978-12-11T00:00:00Z", "itemId": "hLb6q3F16PO9Ydwq", "quantity": 62}, {"duration": 43, "endDate": "1980-07-24T00:00:00Z", "itemId": "0mRO0tK1CH6ozETF", "quantity": 92}, {"duration": 36, "endDate": "1974-02-22T00:00:00Z", "itemId": "u96JYKhAD9xM9T3Y", "quantity": 4}]}, {"condition": "lyv8wx2JosSHLipk", "conditionName": "5N6e79zCfL2ar4zJ", "eventName": "mB2wifDA7LpND5zX", "rewardItems": [{"duration": 77, "endDate": "1974-10-15T00:00:00Z", "itemId": "rmEeBwTzs9QmLReE", "quantity": 18}, {"duration": 52, "endDate": "1980-04-01T00:00:00Z", "itemId": "6n6anryoVkl4tChu", "quantity": 61}, {"duration": 20, "endDate": "1975-01-14T00:00:00Z", "itemId": "TCLlRCEQSp3XwOSN", "quantity": 73}]}, {"condition": "1Xk1CdFvYqfoYzBc", "conditionName": "16XXXuoJGXCyzA8a", "eventName": "5uh1LdVOaWOjRinm", "rewardItems": [{"duration": 78, "endDate": "1992-11-19T00:00:00Z", "itemId": "xEz6bdDFDqRMyTZO", "quantity": 64}, {"duration": 89, "endDate": "1987-08-19T00:00:00Z", "itemId": "IVeBHRe7JBlzH9Cr", "quantity": 50}, {"duration": 70, "endDate": "1972-08-17T00:00:00Z", "itemId": "Mn2F86xZRHxnOP02", "quantity": 48}]}], "userIdExpression": "d96gzUY6EuVZznqQ"}' \
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
    'O5728Ri3CuA2GelF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'GetReward' test.out

#- 170 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    'QyuDWvfe4Hp9aCLe' \
    --body '{"description": "kZch7a3b0hFYqZQA", "eventTopic": "Um9m9ht4JsrC6ho0", "maxAwarded": 19, "maxAwardedPerUser": 90, "namespaceExpression": "h4lgGGsrJv0EyLkZ", "rewardCode": "ej5voHh0KRDJjPEF", "rewardConditions": [{"condition": "1LpvoOxT54t5Ffna", "conditionName": "72ji4B86NKZ0tkEW", "eventName": "AqM0EZhtIp1XL7HL", "rewardItems": [{"duration": 28, "endDate": "1984-10-23T00:00:00Z", "itemId": "HmDzxvCGS2mYl0sA", "quantity": 25}, {"duration": 14, "endDate": "1978-12-19T00:00:00Z", "itemId": "x8O9f2ojEQrZ645L", "quantity": 84}, {"duration": 19, "endDate": "1978-01-02T00:00:00Z", "itemId": "SpZNjdKHqDX1jGg2", "quantity": 95}]}, {"condition": "VHZOulL5KfkSA0am", "conditionName": "HSK4Sz7fbw7cgHHv", "eventName": "IEPvqjKVvPP5x3gf", "rewardItems": [{"duration": 68, "endDate": "1976-04-20T00:00:00Z", "itemId": "Chyafmo2nIKr9kry", "quantity": 23}, {"duration": 33, "endDate": "1971-04-25T00:00:00Z", "itemId": "lbZWuO0OVwGUgR3P", "quantity": 63}, {"duration": 6, "endDate": "1996-07-28T00:00:00Z", "itemId": "I0N4k2W2caqaRVdR", "quantity": 46}]}, {"condition": "5rSilF29Lpg0zAUz", "conditionName": "pliq50demc4rS3d2", "eventName": "v2ibO04gNmB9r9MA", "rewardItems": [{"duration": 0, "endDate": "1976-12-11T00:00:00Z", "itemId": "A6x0lY16PWsrsxYq", "quantity": 21}, {"duration": 18, "endDate": "1977-09-15T00:00:00Z", "itemId": "j7y5qEOp7hzPCxve", "quantity": 40}, {"duration": 27, "endDate": "1987-09-07T00:00:00Z", "itemId": "hAgAkkEhd3Y16uyK", "quantity": 46}]}], "userIdExpression": "nO4RNjvO8rZ5NL7E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'UpdateReward' test.out

#- 171 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'bburWcSjdGGqd31L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteReward' test.out

#- 172 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    '6KqJTL11T4vlBRDj' \
    --body '{"payload": {"j3FKvRIguqDEJfdx": {}, "sQXLRJRONKh0R0RX": {}, "J6anzAeqD1HlhQ1r": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'CheckEventCondition' test.out

#- 173 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'qjRECHyhLYGnvEdC' \
    --body '{"conditionName": "jYsnh0Y0rQluvKzi", "userId": "VTCPTrqHc7vqaXxx"}' \
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
    'iGOrXbWC2k23JxAI' \
    --body '{"active": true, "displayOrder": 20, "endDate": "1997-11-25T00:00:00Z", "ext": {"p9rrR7RJbkDwkEjO": {}, "WWCzn2paEvjRIcSa": {}, "260P2hpjhYQEdyLR": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 30, "itemCount": 40, "rule": "SEQUENCE"}, "items": [{"id": "Mjv8jskCHfqF5uo9", "sku": "BT2QqCxWZGjDRc27"}, {"id": "d9a3AaZO1VcAqwHJ", "sku": "EyMrwNINM4zHFF9u"}, {"id": "crEcYD5hjgrxoEVE", "sku": "IkvpWupGhtaU3oC1"}], "localizations": {"Ly7xHbAN2Bdv1CfQ": {"description": "OijhEI21znti03vA", "localExt": {"JizEosjuIsTXKAQ4": {}, "uWLCMgN7rU1yiWEO": {}, "DovRwzU7QiANYIF1": {}}, "longDescription": "YbEZwEzBNPCCnVKY", "title": "p3EQx9pSofiZZNcW"}, "BxK2ScBMbpsjgGDm": {"description": "xpN0sNW3RHxioyNe", "localExt": {"dQ1E2lQg6rSZj7yw": {}, "7aPU0DqhD5agSwSs": {}, "0ORF2pLQCqPGUmF8": {}}, "longDescription": "pQCrEqdstmoPJurb", "title": "0FVZK7sonuzTm1gs"}, "eYPsB00G8moKbti7": {"description": "cqKdwnwTyTyr1XXD", "localExt": {"YClbgXA2XATEcyKt": {}, "Sz6QsS6BHqs2Z5ak": {}, "npCHXIr8JndNzIiC": {}}, "longDescription": "ZiPRCujrja26Ygd7", "title": "A1555BielNg6kfRg"}}, "name": "fnBT7OdjPnywuIoL", "rotationType": "CUSTOM", "startDate": "1974-03-27T00:00:00Z", "viewId": "dsOb5Jp6oxvvtB4a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'CreateSection' test.out

#- 176 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'ireJSZc7Cojp07DF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'PurgeExpiredSection' test.out

#- 177 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'R7IvEhnKAMSw1WGH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'GetSection' test.out

#- 178 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'PO22mCj7yFmbpItm' \
    'TcMVUlRoYFks2ULH' \
    --body '{"active": false, "displayOrder": 82, "endDate": "1978-03-13T00:00:00Z", "ext": {"oKf7tdmVppuu6acp": {}, "Udn8X5IZjtFT6Bs8": {}, "OO0CVqXF6bMzRd2Z": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 100, "itemCount": 11, "rule": "SEQUENCE"}, "items": [{"id": "oBQ1VO5Trcu36LS6", "sku": "o87DKPLLTcjU87C2"}, {"id": "CAKbiD5PxA5v9644", "sku": "D4d5jTjzZ8KpdOxr"}, {"id": "Q8r5te5FkJ58wQyr", "sku": "Ab67d9kC9MEhGrQV"}], "localizations": {"Q3yKCwV9chX3evM1": {"description": "seGH9ZwZcLnJPavR", "localExt": {"Nr3ysEp4sIwslUQo": {}, "ciDSNS6hf28TvyyZ": {}, "jEMbPRNKUABS8cyK": {}}, "longDescription": "8SnSvsUGLqYJevKK", "title": "JR5KWRgHuLJEAS7p"}, "SDlIS4N3VRydtvWZ": {"description": "ZFDNIc86TKj3grgV", "localExt": {"dqSpg9xpXCh79kxp": {}, "JyTba2Sx7lPUWhfL": {}, "YtrkZ2V3jzXzilsl": {}}, "longDescription": "RzP96yJ7RbX8fkG3", "title": "hcRbcSuSkd72wzQJ"}, "jmhy4f9F9usH1ByG": {"description": "D8DDRW0KNwlKcveu", "localExt": {"tOHZ2aWSL11msU7Q": {}, "pcpkApFODOqz4FKR": {}, "WcvJIwzW53tKi9mx": {}}, "longDescription": "hR8RWtFcnNAoxNPX", "title": "PlSv6kWXBTTodpLc"}}, "name": "EI0mWFWKlSwI38Ly", "rotationType": "FIXED_PERIOD", "startDate": "1993-07-15T00:00:00Z", "viewId": "LuFwHyfWs9J4OjFm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'UpdateSection' test.out

#- 179 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    '6OQMQgWL3hmjUyds' \
    'gdt98KfbaQpgEAKK' \
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
    --body '{"defaultLanguage": "LcKbPxGvL2c7KalL", "defaultRegion": "FWBzkHql6eJa7PZ2", "description": "MvexshOyL8KXBfLq", "supportedLanguages": ["1zWLmtFhefMqfbE0", "DZBwK4s4YGhc9qjs", "GzedPNuJ4GH001y8"], "supportedRegions": ["DGO7yuqGFaSZmLnl", "13NthHP0LDshHSWt", "yrOFmeGGIRRLbsmg"], "title": "DO0TIQbgg12LHWqV"}' \
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
    'dQIiLCN04Qo69tjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'GetStore' test.out

#- 188 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'Ce7O061ScAQ7gSO3' \
    --body '{"defaultLanguage": "GHo6ESwn8otu3o1B", "defaultRegion": "2P8cdPJAnmCFUZdH", "description": "9CHHozRud9g15dSB", "supportedLanguages": ["hpLRxydIE1CQFSQS", "3RD8Q6YcgyTtSOU4", "FdUceGtntm6j0Apy"], "supportedRegions": ["ricmsku6ryZK7UKL", "hMA3DOG2TuIwxdK6", "goe9uJ8PAnT6lHom"], "title": "6RSj2xFFFrIQFWJ2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'UpdateStore' test.out

#- 189 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    'aMIxqQycDpbOcYim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'DeleteStore' test.out

#- 190 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '2syYc8YuKlQjnj5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'QueryChanges' test.out

#- 191 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'jrVi62ITQp6NklXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'PublishAll' test.out

#- 192 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'UYkHNYqepadIS0zR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'PublishSelected' test.out

#- 193 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'gire2ntrz0FUDXjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'SelectAllRecords' test.out

#- 194 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    '0GmcFSjmJGQU5YRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'GetStatistic' test.out

#- 195 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    'jMz3bo23SF3Xkwdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UnselectAllRecords' test.out

#- 196 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'geNE7pA2BmAcotg9' \
    'A9VvbcAi4ZmdXz2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'SelectRecord' test.out

#- 197 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'XfbCObijIWdRSDSq' \
    '6oIY8wqc2OcvjggL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'UnselectRecord' test.out

#- 198 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'VwAQMWoB0LkwHKKI' \
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
    'T2D8YJKnP2TmDSwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'RecurringChargeSubscription' test.out

#- 202 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    't1UGNieMe0c6eA8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetTicketDynamic' test.out

#- 203 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'CvVNgS0wUvETmRww' \
    --body '{"orderNo": "aH21xuey3fB1KN5E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'DecreaseTicketSale' test.out

#- 204 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'zSmB6aO1JqypofIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'GetTicketBoothID' test.out

#- 205 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'M1Wvc2CcOra4RXen' \
    --body '{"count": 96, "orderNo": "s9Qae7TEBnzFuxHz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'IncreaseTicketSale' test.out

#- 206 Commit
$PYTHON -m $MODULE 'platform-commit' \
    --body '{"actions": [{"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 30, "currencyCode": "R3PiHyAFfiwIi9bI", "expireAt": "1998-03-19T00:00:00Z"}, "debitPayload": {"count": 87, "currencyCode": "8C6xnSImJqwyGzE1", "walletPlatform": "Steam"}, "fulFillItemPayload": {"count": 32, "itemIdentity": "MLJmTvUJIV0W2K8a", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 19, "entitlementId": "ZaxyEak02r4dRvrK"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Steam", "count": 38, "currencyCode": "7n72icTrg8RyI3bD", "expireAt": "1985-08-05T00:00:00Z"}, "debitPayload": {"count": 71, "currencyCode": "WqhlJfHgWSAjBmzi", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 61, "itemIdentity": "AEWkqMo2uv4G0hb2", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 88, "entitlementId": "5zbxqSMQf3ZXRgmE"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "Twitch", "count": 66, "currencyCode": "PavNUDslWRgXzKcD", "expireAt": "1986-12-06T00:00:00Z"}, "debitPayload": {"count": 52, "currencyCode": "8IFwNKh0Zni7P6Zf", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 10, "itemIdentity": "kQolDEtyxyMGw4ZE", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 65, "entitlementId": "hoyD0oT4csEU6rwl"}, "type": "REVOKE_ENTITLEMENT"}], "userId": "QuwBbW2xX96TmFiM"}, {"operations": [{"creditPayload": {"balanceOrigin": "Oculus", "count": 34, "currencyCode": "e3S9biXun5fD0BBC", "expireAt": "1980-06-02T00:00:00Z"}, "debitPayload": {"count": 47, "currencyCode": "2Kgz1gL82ANle3vQ", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 64, "itemIdentity": "gTlvO4wr8D7APHhi", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 45, "entitlementId": "meOUBb0ZMyPVBowp"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 7, "currencyCode": "v3wNvAi5e5Cp2Id8", "expireAt": "1992-02-02T00:00:00Z"}, "debitPayload": {"count": 33, "currencyCode": "sUoAwwCO2c7aEAHc", "walletPlatform": "Nintendo"}, "fulFillItemPayload": {"count": 68, "itemIdentity": "dx91UabvNvRaUrUq", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 5, "entitlementId": "4XANjqP7L1mgHDq7"}, "type": "DEBIT_WALLET"}, {"creditPayload": {"balanceOrigin": "Nintendo", "count": 25, "currencyCode": "2SQp9UXJYEGGpt55", "expireAt": "1973-12-01T00:00:00Z"}, "debitPayload": {"count": 98, "currencyCode": "u2Xk8T0sqdmD20ro", "walletPlatform": "IOS"}, "fulFillItemPayload": {"count": 31, "itemIdentity": "fU1yEokwoBSfRPMd", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 4, "entitlementId": "ru40VmHvpaJ6EFG9"}, "type": "FULFILL_ITEM"}], "userId": "rOrO7m2fUVM4vgvN"}, {"operations": [{"creditPayload": {"balanceOrigin": "Epic", "count": 1, "currencyCode": "Rc0I82pjV4UBb0pZ", "expireAt": "1980-11-14T00:00:00Z"}, "debitPayload": {"count": 69, "currencyCode": "KCe8F6OE3PKy2vHH", "walletPlatform": "Epic"}, "fulFillItemPayload": {"count": 51, "itemIdentity": "rTj3i1nC0J9A8DUt", "itemIdentityType": "ITEM_ID"}, "revokeEntitlementPayload": {"count": 83, "entitlementId": "T9Nimqnzt0awizca"}, "type": "FULFILL_ITEM"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 60, "currencyCode": "Kf2QcbDNp9wVgloP", "expireAt": "1979-04-29T00:00:00Z"}, "debitPayload": {"count": 41, "currencyCode": "0vZqaSrHfwrqqHXH", "walletPlatform": "Oculus"}, "fulFillItemPayload": {"count": 30, "itemIdentity": "PnC56p62cEYBMPDD", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 21, "entitlementId": "uy4MWHW8YW1euC0u"}, "type": "CREDIT_WALLET"}, {"creditPayload": {"balanceOrigin": "IOS", "count": 98, "currencyCode": "GfdMvM0zEHmThs6O", "expireAt": "1983-04-20T00:00:00Z"}, "debitPayload": {"count": 6, "currencyCode": "3hXTX65W9y7jKRgC", "walletPlatform": "Xbox"}, "fulFillItemPayload": {"count": 75, "itemIdentity": "7XGD7r4dvtuyipF1", "itemIdentityType": "ITEM_SKU"}, "revokeEntitlementPayload": {"count": 57, "entitlementId": "jH3UPJy3CnYG5ypx"}, "type": "CREDIT_WALLET"}], "userId": "b9Aa9QMoQgjOf0by"}], "metadata": {"uj8Uxptb2o5jdTre": {}, "VKh6flE9FaNdFDCH": {}, "0BMCufX5Ln9YKDyW": {}}, "needPreCheck": true, "transactionId": "wNSXGvHGabfCgecN", "type": "knWoEbRoZQ4VuKeT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'Commit' test.out

#- 207 GetTradeHistoryByCriteria
$PYTHON -m $MODULE 'platform-get-trade-history-by-criteria' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'GetTradeHistoryByCriteria' test.out

#- 208 GetTradeHistoryByTransactionId
$PYTHON -m $MODULE 'platform-get-trade-history-by-transaction-id' \
    'QQXDNtjgypGgBtsG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'GetTradeHistoryByTransactionId' test.out

#- 209 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'OxHfW3WBHUGCPEvc' \
    --body '{"achievements": [{"id": "97uDKDBhngmXpNaX", "value": 91}, {"id": "EwP8KagnEKkfRnTA", "value": 59}, {"id": "Tm092rucPAhnaYqS", "value": 77}], "steamUserId": "hmWshFK5hyfwqkxF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'UnlockSteamUserAchievement' test.out

#- 210 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'eK2HSaUyXEOQUwXD' \
    'X8MGlijaR3VVk7nD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'GetXblUserAchievements' test.out

#- 211 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    '09WBTm7Hy1AvjH8T' \
    --body '{"achievements": [{"id": "O5OIzshGgQ4ThugQ", "percentComplete": 65}, {"id": "h8NJxYKZWUVW9NyU", "percentComplete": 96}, {"id": "Lt8CrUFIkcZk3UEa", "percentComplete": 85}], "serviceConfigId": "FEno141RnaYhr2WJ", "titleId": "yqCvAfWi7mDpF9Ux", "xboxUserId": "mjutqgr8019aVHHR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'UpdateXblUserAchievement' test.out

#- 212 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'LK0fv936lSL3gAK6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizeCampaign' test.out

#- 213 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'QqFlWlAR1frDQIVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeEntitlement' test.out

#- 214 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    'mefiYRytVWtyJI7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeFulfillment' test.out

#- 215 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'jeL0gjx8jAfmTLOw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeIntegration' test.out

#- 216 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'iBSSe1E9DWrTYLcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AnonymizeOrder' test.out

#- 217 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'OMWy0wefl1KKxNl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AnonymizePayment' test.out

#- 218 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Bu8GE15JzEvFlzpD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AnonymizeRevocation' test.out

#- 219 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'nYuSqynNlJACpHVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AnonymizeSubscription' test.out

#- 220 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'drAR7z9J0bNuepqW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AnonymizeWallet' test.out

#- 221 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'sDLjzow7MvJGnWbc' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'GetUserDLCByPlatform' test.out

#- 222 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'qeQS68NcKrOSqAvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserDLC' test.out

#- 223 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'mNXdNoD6gTOf0jHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'QueryUserEntitlements' test.out

#- 224 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'c8PGncBz3SqYUIQn' \
    --body '[{"endDate": "1982-12-20T00:00:00Z", "grantedCode": "GbMTiA96lnb5gdT3", "itemId": "QnV1lkyfpfTo2MX3", "itemNamespace": "YvlKKTkjhbq0eRvk", "language": "PyM_mJ", "quantity": 94, "region": "We4LfJee5PI5dFv5", "source": "ACHIEVEMENT", "startDate": "1972-06-19T00:00:00Z", "storeId": "3ezYAdypb6oWXYIQ"}, {"endDate": "1979-08-24T00:00:00Z", "grantedCode": "BIhw3NQXGJDWtQNJ", "itemId": "FHNbgt9uaoCeP9rZ", "itemNamespace": "K0m4whjNMB89Aoh6", "language": "BKCy-cH", "quantity": 22, "region": "dDIpRn2HgPRevBMj", "source": "GIFT", "startDate": "1977-06-29T00:00:00Z", "storeId": "pE90i47qjDQAAvYZ"}, {"endDate": "1997-02-05T00:00:00Z", "grantedCode": "ABKOA0L11TgHUfOD", "itemId": "RocsLmBbV1sCNpAD", "itemNamespace": "wypkoh2Ufv88v1ng", "language": "fka-zVuh-100", "quantity": 74, "region": "n1xyB1MxbBG0waud", "source": "PROMOTION", "startDate": "1979-06-17T00:00:00Z", "storeId": "2JITEaFYCmQEyL35"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GrantUserEntitlement' test.out

#- 225 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'Lh1cCBgg2D4HUqIh' \
    'XDNwseD5BbL13OgH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'GetUserAppEntitlementByAppId' test.out

#- 226 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'Zysyny0912axRFeM' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'QueryUserEntitlementsByAppType' test.out

#- 227 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'rSZGlXPukj7q5MjU' \
    '2f4833bcUoBfWLjR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserEntitlementByItemId' test.out

#- 228 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'XOqaoDBgsPHcNg0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserActiveEntitlementsByItemIds' test.out

#- 229 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'apd2WF3ACWSPCOIe' \
    'jZfSnIavouuFpqcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementBySku' test.out

#- 230 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    '4Gd9fk7fhp8GNMEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'ExistsAnyUserActiveEntitlement' test.out

#- 231 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    '4Ps5vorNX6W3h8It' \
    '["D6AFXbQvGbKVlE5V", "ulHAZZ2SKo1C0ktv", "mekdbic6I2n5Hclx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 232 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    '6xvlDEhlvzVBqt9f' \
    'NnODJKrDdt60vGd1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 233 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'u3lR0fkCW4fYJAHm' \
    'uYyTZt7v3mvPolaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlementOwnershipByItemId' test.out

#- 234 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'eEWrqYB9hLG74YMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'GetUserEntitlementOwnershipByItemIds' test.out

#- 235 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    '1JCrpnpPPUyyCN4M' \
    'FXqnFzR6C20jVL8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'GetUserEntitlementOwnershipBySku' test.out

#- 236 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'eTq0Wmf80d7wzxTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'RevokeAllEntitlements' test.out

#- 237 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'cIyIFNDIRhPIRCNW' \
    '8MLBfGHJseAA3xQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RevokeUserEntitlements' test.out

#- 238 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    '5zPNH4eYMWbtvk7O' \
    'oIixOGXwFzXjpSLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlement' test.out

#- 239 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'jqaJnmx4p5ShR3fI' \
    '6ZeDWbxHSLn6kQxq' \
    --body '{"endDate": "1990-11-20T00:00:00Z", "nullFieldList": ["yxoQHX7XexjvW4rZ", "57Ra4Wlon8ZzeHga", "bbmT81jfik6ShLjJ"], "startDate": "1971-10-26T00:00:00Z", "status": "ACTIVE", "useCount": 51}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserEntitlement' test.out

#- 240 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    '174MCR5ZpvlWXRfE' \
    'oUuNmQrq6p7WrYOB' \
    --body '{"options": ["pl77LsKN46XLNfQ0", "SXyMTygZRBzJUpXr", "5ZkwYPLnvikBnp1I"], "requestId": "LBujZh8S62GO32C7", "useCount": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'ConsumeUserEntitlement' test.out

#- 241 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'RnfIDxg4DkmnJtxZ' \
    'gIUMxGfQHmg4I1PJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'DisableUserEntitlement' test.out

#- 242 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'ybUmpLmiuZGk2Gg0' \
    'Um3ITROznZA6EVEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'EnableUserEntitlement' test.out

#- 243 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'EqkFFyGp6XhgI2Su' \
    'Eyr4hactAHdK0X7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetUserEntitlementHistories' test.out

#- 244 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'ZKu6MmVxEFptfSFU' \
    '0F8qXSfSkxhrHhjW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserEntitlement' test.out

#- 245 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'xkDQUTY21m19Eiqp' \
    'yu9P7Yh6ERWyedt6' \
    --body '{"reason": "rkPxW72ya2ruQcik", "useCount": 92}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RevokeUseCount' test.out

#- 246 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'XRSXg6OXqwh2Uj0I' \
    'ZZFXv7pY5cNIYdQR' \
    --body '{"requestId": "ni6IfH05hVdagEET", "useCount": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'SellUserEntitlement' test.out

#- 247 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'bQNFNB2IE43MBCGN' \
    --body '{"duration": 50, "endDate": "1993-03-12T00:00:00Z", "itemId": "CpF2z5O9ugNuq4uG", "itemSku": "u9km7KeyQB3SUe4u", "language": "g9J3KKHHaSwFS7fA", "metadata": {"GmA4gy2QBm02aTdg": {}, "p0WcRdrrdOKQbXXi": {}, "Mg5RAaD5a0gqyaku": {}}, "order": {"currency": {"currencyCode": "ryISjsrHy7SSarFs", "currencySymbol": "Jyanoth2jhzr7POO", "currencyType": "REAL", "decimals": 53, "namespace": "tn8XayBI734jCTSn"}, "ext": {"RqHTWC4NCbltixkX": {}, "wXO0XemKHsUC5w7f": {}, "mzF80bbGhU1pjVwM": {}}, "free": true}, "orderNo": "458bBTbcqQVkSIXL", "origin": "System", "overrideBundleItemQty": {"462Mnwchld3LWFhC": 68, "kBUvsUcnOXhewths": 53, "vZd49hW95i4Rm9sB": 10}, "quantity": 12, "region": "psjIBzjaFmN0MInv", "source": "PURCHASE", "startDate": "1992-11-04T00:00:00Z", "storeId": "APEovHVVguusvVUx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'FulfillItem' test.out

#- 248 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    'kCG4IGPYHaRvV3JG' \
    --body '{"code": "i5l0G5NBtXVTXK1J", "language": "lO-Isor", "region": "Y5oWJPoo8QT5EB5G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'RedeemCode' test.out

#- 249 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'COCowERMveDiI5BY' \
    --body '{"metadata": {"vV5LF22GlLe48YQR": {}, "sZpn4zsR2KwSIl0U": {}, "n3PT2bVzOt2J0VxS": {}}, "origin": "Xbox", "rewards": [{"currency": {"currencyCode": "RWxJw7idbmOx0vya", "namespace": "MbcnlyBvXdpoYVZK"}, "item": {"itemId": "x8oPBJncKdyabXym", "itemSku": "lDvbcApuoA5PCdXT", "itemType": "4YD9fDzx1WPpvLBM"}, "quantity": 78, "type": "CURRENCY"}, {"currency": {"currencyCode": "NJG6TuQ90jhJCrrs", "namespace": "BPvGhWiPLLd5eChF"}, "item": {"itemId": "7cgujItr2ZFjL5qU", "itemSku": "yimmVzOJYebI5Egy", "itemType": "e4CkNIFSC7IcfdqO"}, "quantity": 59, "type": "CURRENCY"}, {"currency": {"currencyCode": "lpDFImJNovlZq1O6", "namespace": "RDUgilQHCts6SUNx"}, "item": {"itemId": "UWIGSkxjKL3EiP6W", "itemSku": "eXWf3dBAVfIM2oLF", "itemType": "aTIhv5XrQvTAdisx"}, "quantity": 86, "type": "ITEM"}], "source": "PROMOTION", "transactionId": "DyxqSYeCl4gEZgIM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'FulfillRewards' test.out

#- 250 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'DALa4nsITUeFKNh8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'QueryUserIAPOrders' test.out

#- 251 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    'kgmMjBxD74LujtGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'QueryAllUserIAPOrders' test.out

#- 252 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'D9sT5LHkWjFIo6Vb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'QueryUserIAPConsumeHistory' test.out

#- 253 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    'U9gwMgZPR9Q5Lsto' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "yE", "productId": "i7OHZeGP4o1Tgbe8", "region": "J8xso71ULeHVV40s", "transactionId": "jQ8mtTN08V3MMSrr", "type": "OCULUS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'MockFulfillIAPItem' test.out

#- 254 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'FB8DFwD7WXkw7te8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'QueryUserOrders' test.out

#- 255 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'pQfvxY5zPZKMd5It' \
    --body '{"currencyCode": "nXbDbXW9KlfgVvjj", "currencyNamespace": "jExRk4JHYGa2nnyq", "discountedPrice": 44, "ext": {"BsF03D5vkAkZ8CS0": {}, "9fFrbdregZfA6pBI": {}, "XqoaoYoHcrIwc6qk": {}}, "itemId": "Df3ciuVB7vM6wSqw", "language": "ns2XJfUl3uiEO9E0", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 22, "quantity": 40, "region": "kBnuo4jR1HYLJjny", "returnUrl": "dxAGgqH3ytkroZ2t", "sandbox": false, "sectionId": "e0aplQXEaoGjonwK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'AdminCreateUserOrder' test.out

#- 256 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'DYwjvKhxwtaxd74b' \
    'EkQ8XN3xQ0KaIZ1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'CountOfPurchasedItem' test.out

#- 257 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'Sja5TxqN8RXvgNzo' \
    'X14Km851zHcDdphW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'GetUserOrder' test.out

#- 258 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'EIlBnOKyfAbdUB1O' \
    'M5oKTXANlenFuUeR' \
    --body '{"status": "CHARGEBACK", "statusReason": "hAhwAc8mPZRlleng"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'UpdateUserOrderStatus' test.out

#- 259 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    'CdfKGCBZMAbJnqDK' \
    'uBGWmZti7VJ7O7dN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'FulfillUserOrder' test.out

#- 260 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    'zDBzVmGSholl8uD1' \
    'hpBtpd4eLc1PpHJm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'GetUserOrderGrant' test.out

#- 261 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    'rL7AZ1MKcHBB1Afy' \
    'SUMZOWhtQEriyOLk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'GetUserOrderHistories' test.out

#- 262 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'uGKVQWNOUAh5VXa7' \
    '9702d31zPHg6tXTs' \
    --body '{"additionalData": {"cardSummary": "Gmv1XM6sr8tSaA0g"}, "authorisedTime": "1998-02-26T00:00:00Z", "chargebackReversedTime": "1991-11-06T00:00:00Z", "chargebackTime": "1985-10-10T00:00:00Z", "chargedTime": "1976-09-09T00:00:00Z", "createdTime": "1990-12-10T00:00:00Z", "currency": {"currencyCode": "LTNMnmlFzzwpEZwb", "currencySymbol": "cCEsJIB0JkRcYhCT", "currencyType": "VIRTUAL", "decimals": 31, "namespace": "NTxshoZJnsAkX5sx"}, "customParameters": {"ny0WLYMNb0QsxPlx": {}, "64IQUpSToD0bb0SX": {}, "ZUy9H0C213rnYfZ8": {}}, "extOrderNo": "c8zURCckWWVlTYAk", "extTxId": "ogbV1bNoJJUhL5p5", "extUserId": "6dnYHk1iLtAXL33W", "issuedAt": "1985-08-20T00:00:00Z", "metadata": {"BnIHoRNWTVvIN7c2": "uh7Ls9nxKiaoWmrw", "6n7VYPrZA5UWNq6y": "Tj5WST6JF9lLvPS5", "jJ58vaRaaxVQeMUb": "1kvSj6jcjlxGsLgf"}, "namespace": "rhBTH1QV91XmB5Z6", "nonceStr": "en6c5d620U9addYC", "paymentMethod": "AtuTx2FKoGRQ2i1n", "paymentMethodFee": 83, "paymentOrderNo": "WJVJy6yBPVmpbwVG", "paymentProvider": "WALLET", "paymentProviderFee": 27, "paymentStationUrl": "Hy6yQU2RSNGWKnND", "price": 64, "refundedTime": "1997-11-13T00:00:00Z", "salesTax": 83, "sandbox": false, "sku": "QPxPe1HYkf4KjUJV", "status": "REFUNDED", "statusReason": "zawfXvKu5UsuFOUX", "subscriptionId": "ohEHKCKphTiityfp", "subtotalPrice": 68, "targetNamespace": "ixQMzfhG3hC9Be3C", "targetUserId": "vn1QymYMLAdBSViP", "tax": 68, "totalPrice": 91, "totalTax": 75, "txEndTime": "1977-11-04T00:00:00Z", "type": "Sm20DzdKk8FlVcy0", "userId": "hcEMFRkn8SAQhtiW", "vat": 55}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'ProcessUserOrderNotification' test.out

#- 263 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'XWFZqotaiZN3MPuY' \
    'Wk5lHvw9RXrx8aUB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'DownloadUserOrderReceipt' test.out

#- 264 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    '1xXuK2MwrRJukMTk' \
    --body '{"currencyCode": "O00KLgddr0UUiy5j", "currencyNamespace": "m1w2g65JkaoPuBsu", "customParameters": {"Sb0LePf5b8MJ94DA": {}, "h1Mc7VkHxj8k5KSF": {}, "tbEoEr5LqKRRnKy1": {}}, "description": "7sBYlx7rzEm3km2j", "extOrderNo": "jNrqEmuEf6JRpqZE", "extUserId": "UH2Rr5lkfHjqVCMp", "itemType": "INGAMEITEM", "language": "ak", "metadata": {"kf8Y5ksiqVvcGZxT": "P7pduqX3e9tt0zz5", "gs7YuyxJLe1TkfLi": "M9EqyhFh7mq6sgk5", "cHaJYkzClqPty2kx": "gyry1MM9eo43Qi5c"}, "notifyUrl": "RehBB7o24lw21Z3n", "omitNotification": true, "platform": "KNvNPiwIMR5JsbLC", "price": 67, "recurringPaymentOrderNo": "0QyO5YXVhTiaE4WK", "region": "nEeaUdAmgmnzKSVl", "returnUrl": "XsRNMykbnHTrHLma", "sandbox": false, "sku": "atDOVS2F6Is27hn9", "subscriptionId": "TSwEvJPZcYrXKMnN", "title": "ZIm0ooHCnlq1H5Iu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CreateUserPaymentOrder' test.out

#- 265 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'OvafRIdOXlxxdySy' \
    'wm5h2pCfHjg41Zhh' \
    --body '{"description": "eDDG5HJEFQRX4iVg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'RefundUserPaymentOrder' test.out

#- 266 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    '8TK1CF9X9mTmMVfQ' \
    --body '{"code": "aiQKdHknLotplfBO", "orderNo": "vsb9aicyajUNH4cy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'ApplyUserRedemption' test.out

#- 267 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'uoR5YkRhK1PGfmAn' \
    --body '{"meta": {"DGtInmyZkHQxUB5U": {}, "4Qk0fD8GqtXguE8X": {}, "vdv1azJ2OSkJGMDA": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "IOS", "currencyCode": "Y2goEK35CZu7WE18", "namespace": "eU5rtQUWRLvu3WEf"}, "entitlement": {"entitlementId": "wBn40sJji4hVE3lK"}, "item": {"itemIdentity": "NQy2rJxiPPjJk44W", "itemIdentityType": "ITEM_SKU", "origin": "Steam"}, "quantity": 60, "type": "ITEM"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "oGw2U9LoHWS4koau", "namespace": "o9jkTEI52B8LI9vM"}, "entitlement": {"entitlementId": "EB8OHKsqKaw1EmCx"}, "item": {"itemIdentity": "OMl6uh44gPPfiJZC", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 71, "type": "ITEM"}, {"currency": {"balanceOrigin": "System", "currencyCode": "I1h6OjoUY4QXecer", "namespace": "XxPodPokDUivfNI3"}, "entitlement": {"entitlementId": "KdSIbTi8dxU11tPB"}, "item": {"itemIdentity": "lMCz6SSpxt0aZZr3", "itemIdentityType": "ITEM_ID", "origin": "Steam"}, "quantity": 73, "type": "ITEM"}], "source": "IAP", "transactionId": "kTstBGTm2OFHVEoR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'DoRevocation' test.out

#- 268 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'ljsGF5AYZlEYqTVS' \
    --body '{"gameSessionId": "CLemvpJXl2drfGIg", "payload": {"u0ksPtzdXjtRaBOl": {}, "hg63PduP0G77oZV8": {}, "BGfavVPOhaaf5eEx": {}}, "scid": "cjABRx8qNMv4XLW0", "sessionTemplateName": "xlb6yLTssmZXLvxR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RegisterXblSessions' test.out

#- 269 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'hf6ICrMr8z6e2UDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'QueryUserSubscriptions' test.out

#- 270 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    'ycYrDDg5iDNLOJJm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetUserSubscriptionActivities' test.out

#- 271 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'zGW9AQMDnaFw1u7B' \
    --body '{"grantDays": 78, "itemId": "5vj0V2ccQ60lub80", "language": "7E0PGhia3QvaFIVf", "reason": "HyAiTeDDuvgKTfrZ", "region": "6TfrQrFIsYsZ1dTn", "source": "2pA64FJuEPymbIAw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PlatformSubscribeSubscription' test.out

#- 272 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'DAyNBagGD33WMVj7' \
    'bfdfxyqKQ4YNnTTw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 273 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'ZeuX7f9iY3skbk25' \
    'jLP6zS6a5C6awft8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'GetUserSubscription' test.out

#- 274 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    'NPNJCopJg7IJTeOW' \
    'oVtcblaKlhxMNx5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'DeleteUserSubscription' test.out

#- 275 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    '4l3ogPTLlSlGfh2X' \
    'hfCB53jlBjzXLwoM' \
    --body '{"immediate": true, "reason": "bh0FbOWyhAnMP6Bd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'CancelSubscription' test.out

#- 276 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'Bw6d4UOI7Tr9NHcX' \
    'eEWIpyYx9wOuNquv' \
    --body '{"grantDays": 45, "reason": "qkqRR9Nwd8OrgT5H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'GrantDaysToSubscription' test.out

#- 277 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'MaelKs3hdNcCPnrm' \
    'ZDNctQe0IM586qYd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'GetUserSubscriptionBillingHistories' test.out

#- 278 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'NvmRITEU7usHknnf' \
    'YNY7ZXicpAJw7Ct9' \
    --body '{"additionalData": {"cardSummary": "AmEoUNlmQjebaV8c"}, "authorisedTime": "1998-01-09T00:00:00Z", "chargebackReversedTime": "1999-02-06T00:00:00Z", "chargebackTime": "1987-02-28T00:00:00Z", "chargedTime": "1997-01-04T00:00:00Z", "createdTime": "1983-05-24T00:00:00Z", "currency": {"currencyCode": "X6qNntgmml0ts1uw", "currencySymbol": "7WvaRDN6waXRBRT7", "currencyType": "REAL", "decimals": 65, "namespace": "c6LpvtY7Bk3j0Rt5"}, "customParameters": {"ai8x1JHTPfATk2jD": {}, "kPq7n0VqgiBJsxKk": {}, "XhiEo0RXgJkWelLk": {}}, "extOrderNo": "7pTvUfmra4esdZ2v", "extTxId": "5vKHsJ5DezdlRlTT", "extUserId": "SLmDolGdb7yXLAgf", "issuedAt": "1974-03-06T00:00:00Z", "metadata": {"ESHWCK8LccJJmXX0": "pmy1KDJtg9FwOewt", "MPXhsCdeun9QN513": "GmIqfQ8mJbg0TSRx", "hI4XnmuQN65HKi5q": "vwLIqgfXvKjhXcfK"}, "namespace": "E45hKdn2Ay5KgtWu", "nonceStr": "e3XkqcMKE9l0uRkf", "paymentMethod": "5RxDdVVe0VvPmen8", "paymentMethodFee": 20, "paymentOrderNo": "NkvuqwvTTB6lW4R7", "paymentProvider": "XSOLLA", "paymentProviderFee": 73, "paymentStationUrl": "IneqddStnBNigsnB", "price": 30, "refundedTime": "1991-06-13T00:00:00Z", "salesTax": 82, "sandbox": false, "sku": "ga0d3NvXvIgvIynE", "status": "AUTHORISED", "statusReason": "iStlzCMldcic4UcT", "subscriptionId": "KpdyvGEAo7B9gTsb", "subtotalPrice": 45, "targetNamespace": "9YBTADJQdJJb27jR", "targetUserId": "m1nyjO60S3gf5tl2", "tax": 45, "totalPrice": 51, "totalTax": 69, "txEndTime": "1981-10-26T00:00:00Z", "type": "P7sqwracbiPrT7cA", "userId": "RnySCNlQCocWBq1V", "vat": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'ProcessUserSubscriptionNotification' test.out

#- 279 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'NN8B4oo9jFmBqiyi' \
    'cQHvr1zREqWwsQax' \
    --body '{"count": 2, "orderNo": "bEuoPqi79JLKHle3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'AcquireUserTicket' test.out

#- 280 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'po9nK2MnWISZ8LUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'QueryUserCurrencyWallets' test.out

#- 281 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'YanMQUFaZF74RbeE' \
    'i4WAntBdOLVnsl61' \
    --body '{"allowOverdraft": true, "amount": 92, "balanceOrigin": "Playstation", "balanceSource": "IAP_REVOCATION", "metadata": {"dO8j3taWbShXMN0M": {}, "RNkMX09nQEwFSce6": {}, "VsIsSSdkP3IqaPaX": {}}, "reason": "Jc57cVP8tXCteutO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'DebitUserWalletByCurrencyCode' test.out

#- 282 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    '2hlDa0voH7Al8vux' \
    'WTaiUJpIgLrblSQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'ListUserCurrencyTransactions' test.out

#- 283 CheckWallet
eval_tap 0 283 'CheckWallet # SKIP deprecated' test.out

#- 284 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'wrmWKb8IhCNJqtCt' \
    'GvxKwuL3MuhHXzy6' \
    --body '{"amount": 100, "expireAt": "1981-03-15T00:00:00Z", "metadata": {"9ltRo1cXuco8zvap": {}, "mS8p27dvzUWMz6Ih": {}, "eEap1PhjtZknu6Ke": {}}, "origin": "IOS", "reason": "rhmQrBLti0OZtmm5", "source": "IAP_CHARGEBACK_REVERSED"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CreditUserWallet' test.out

#- 285 DebitByWalletPlatform
$PYTHON -m $MODULE 'platform-debit-by-wallet-platform' \
    'z8cb64KjGDHolxRG' \
    'H5sQmA6XL9p83Led' \
    --body '{"amount": 22, "debitBalanceSource": "IAP_REVOCATION", "metadata": {"qou4IX6ynCg7jZBP": {}, "ZUjh5Id1WwN3o2Ln": {}, "IKn5bM9rW10Xi6WV": {}}, "reason": "5MHuvBu2QQOXQatB", "walletPlatform": "Steam"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'DebitByWalletPlatform' test.out

#- 286 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '9di8JeefXJ2PdIoH' \
    'doDHgvwcWxlmJoJS' \
    --body '{"amount": 27, "metadata": {"Ak4T5By0AqALCR39": {}, "RH5UcRubJZYIgyBX": {}, "ZfTmD5U7RTvIuyjo": {}}, "walletPlatform": "GooglePlay"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PayWithUserWallet' test.out

#- 287 GetUserWallet
eval_tap 0 287 'GetUserWallet # SKIP deprecated' test.out

#- 288 DebitUserWallet
eval_tap 0 288 'DebitUserWallet # SKIP deprecated' test.out

#- 289 DisableUserWallet
eval_tap 0 289 'DisableUserWallet # SKIP deprecated' test.out

#- 290 EnableUserWallet
eval_tap 0 290 'EnableUserWallet # SKIP deprecated' test.out

#- 291 ListUserWalletTransactions
eval_tap 0 291 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 292 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'ListViews' test.out

#- 293 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'YajtvdiqyZzxREBS' \
    --body '{"displayOrder": 37, "localizations": {"mIQ7lG3SSfJb7YC4": {"description": "6l63YRc0T3d9XaFE", "localExt": {"WXtvTExHo1HliWVA": {}, "9kYxDaegAgXI2ciZ": {}, "5FWoyqYl8KD0zlFt": {}}, "longDescription": "ltcFGPdVe0VJQksE", "title": "tHq5KHA9baTP1jNj"}, "pn8azMyTBLnxtGnH": {"description": "0h3TvkynRdR0cTxg", "localExt": {"D0WOWAsThZ6Ln6xB": {}, "AApmumWxYTfEEm2g": {}, "8JpfOhv1dFmmwcX8": {}}, "longDescription": "cRQpNggDqIfB0DPn", "title": "1CZrBaO9y4CHHayd"}, "taKJNujTvCDwyDu1": {"description": "QGAcJRAK1mgNt0pu", "localExt": {"dyASz9qbHEsbgt8N": {}, "b6qoNGzjQQDw2Sc4": {}, "DTbergyuPtRgn6fW": {}}, "longDescription": "MWqZYmAvVETTsjp3", "title": "kTD5DUdBvhgsfcLU"}}, "name": "RAHqkEpmWErwMkbs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'CreateView' test.out

#- 294 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    'CK44WEKYCuqx8xzh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'GetView' test.out

#- 295 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    '9bTsHGm5hk6Ypn8K' \
    'sMKfuARcHovGUZSz' \
    --body '{"displayOrder": 87, "localizations": {"fq3hqssnqUPIJabC": {"description": "PMhqOeDXc5LH8xN3", "localExt": {"8dVbdD5L9eqq8Pst": {}, "BnVeYTD7i7fqOSZx": {}, "wOb5jkz9ihTe86sj": {}}, "longDescription": "HoBLGz2Km7DEtivD", "title": "Sv0mmNGIWjV9L9aA"}, "57kR2ACNzI10tZr3": {"description": "AjmwxrpjfgamOka0", "localExt": {"iwQFwqJrWlE1xE0A": {}, "gbtqawrlckTguotH": {}, "ZZnBkb1WomHQ23Rr": {}}, "longDescription": "mGI0fa4tSghREoTA", "title": "vCltzrUTJgBjWwZM"}, "cxIcmhutMHEeUDIy": {"description": "Z6bUl6Q4DAwzeZS2", "localExt": {"0lWbIy7iWsAEY3T2": {}, "YDXuJSzkSZfZ5dui": {}, "jZETizaQixMgpWQ9": {}}, "longDescription": "PgUcB3N69aWeqMy8", "title": "NAiT9jmCgwDPgvbh"}}, "name": "dCorBgPIEGgJfwbF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'UpdateView' test.out

#- 296 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'J8VUxv8qZiALIoUy' \
    '5BK25PGFQBJJHKR8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'DeleteView' test.out

#- 297 QueryWallets
eval_tap 0 297 'QueryWallets # SKIP deprecated' test.out

#- 298 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 28, "expireAt": "1994-12-23T00:00:00Z", "metadata": {"if17nsndhy0Gtga4": {}, "xRRNit3ApyAvkVtA": {}, "8b9zvOaiSMHjVciA": {}}, "origin": "Oculus", "reason": "PgLrITdqgHGJd9Al", "source": "PROMOTION"}, "currencyCode": "ZMehNOncXNM18ZiB", "userIds": ["Sz425Kp2PGW8gpXu", "Laa5iN5b6ODd1kj4", "Qj6RS5aO256ceteB"]}, {"creditRequest": {"amount": 35, "expireAt": "1977-08-11T00:00:00Z", "metadata": {"0FWbYOy7zpSeyGBL": {}, "auvijI1vUPcP4XMN": {}, "ICniSwlnSYTuNVaj": {}}, "origin": "Other", "reason": "4T9TmQupOzuaRV8V", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "Re1LpwuZIoLrVS0A", "userIds": ["crY9Vdxzm1SnMFP7", "ijRI315PPtar2LEa", "QgwjgNbqY9SXZMP7"]}, {"creditRequest": {"amount": 81, "expireAt": "1999-02-03T00:00:00Z", "metadata": {"iEdDgNGO3Dfmm8Q8": {}, "A03ovBcVCnifE0YS": {}, "9KhgP8rRhISjcIvS": {}}, "origin": "GooglePlay", "reason": "I6tzdbpIKoQhtOlK", "source": "IAP_CHARGEBACK_REVERSED"}, "currencyCode": "2RlQ3Wpg0XNZCsES", "userIds": ["Z2IdgUYmmt7HXJCU", "49JFXjPc1tJBaHYT", "CHRPA5OQX8twQrDu"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'BulkCredit' test.out

#- 299 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "jwNMnmrmR9dDVbvy", "request": {"allowOverdraft": false, "amount": 43, "balanceOrigin": "Steam", "balanceSource": "EXPIRATION", "metadata": {"SswSPGcfasR2Nrrm": {}, "0JBGkT1hNjHr2icY": {}, "ZYjakKtgPfJHbuwF": {}}, "reason": "3aZQrVPWyZpnVjbp"}, "userIds": ["Y2DNsFuGcD5vraJ3", "WftgZ43r4ZLb7i2S", "otD8HTOOdvA4UhdT"]}, {"currencyCode": "ZkIaANvZ0I2EGVDW", "request": {"allowOverdraft": true, "amount": 35, "balanceOrigin": "Twitch", "balanceSource": "ORDER_REVOCATION", "metadata": {"CeZXmSBfgrJcwR3q": {}, "ktAdH94tziEpGVXs": {}, "Uvez1lbenagh9kCP": {}}, "reason": "NSZTIlkM5IYJnbFp"}, "userIds": ["eKvshwdE9XuQ8gyk", "Jm5GMKtZSng8Oi6T", "rRWLjHPiPqvMMmYJ"]}, {"currencyCode": "DpSGwc7wXieEOkn4", "request": {"allowOverdraft": true, "amount": 4, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"6szojkvjtacFSVTv": {}, "gh23BGEa5ftmSBKQ": {}, "3zAXk9qVrzEqsDwI": {}}, "reason": "wRyHKWspPtJlLDOj"}, "userIds": ["20Sfzrc9YYsgvVLN", "XTWGIrWq2VvH0roA", "3usfhiyCf1FOddxt"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'BulkDebit' test.out

#- 300 GetWallet
eval_tap 0 300 'GetWallet # SKIP deprecated' test.out

#- 301 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    'E52sFK1jNp3OwcrN' \
    'R2jH7Xx7m8IqIRyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'SyncOrders' test.out

#- 302 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["qaCbbMa2LqgJOAfF", "wvvgYPIFEVZLGzEg", "lEe95LWKrkj7TPui"], "apiKey": "gp3RiJofgD4VypGT", "authoriseAsCapture": false, "blockedPaymentMethods": ["98a9g9AjLDQL5jZb", "yjCnTkYE0HYHfBc6", "4zDQawQPbbbHLcaH"], "clientKey": "mXRdPvQLVuKpiiZ4", "dropInSettings": "Imogp7RKEcLehyAo", "liveEndpointUrlPrefix": "wu72oCUdMES0mVVI", "merchantAccount": "1FilcO4pajEhkRLM", "notificationHmacKey": "vZnYZKCk0zbREElw", "notificationPassword": "dZORocHSHulJHhAn", "notificationUsername": "Y7QeDSRroVkXb4xP", "returnUrl": "PUmUifQvfoZ7n3eR", "settings": "MzJEQYwNGRl2gcWd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'TestAdyenConfig' test.out

#- 303 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "DmIy4Ia2UtS4T1v2", "privateKey": "y9Je7apQfNdDyT3a", "publicKey": "0EGpHgGLUqdG3kBf", "returnUrl": "Gvwjwttys4GvDvs1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestAliPayConfig' test.out

#- 304 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "H5juf5Cq950XtiMx", "secretKey": "QDIHnPin3vZc9bUY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'TestCheckoutConfig' test.out

#- 305 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'DebugMatchedPaymentMerchantConfig' test.out

#- 306 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "gwdNmcpdldDn2Y2l", "clientSecret": "1kZWnqjJaGGTFaJH", "returnUrl": "ecFy9m5s6oIWMnk8", "webHookId": "8GXMrS82vN0N2236"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'TestPayPalConfig' test.out

#- 307 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["tI7v0x9St2EFfU2F", "byIXierPr2qLKBXR", "Yt7v7Wfg2omS11Yy"], "publishableKey": "IWGPc92PcmK9zTgG", "secretKey": "Qs1FIKxCXUhNdJ4c", "webhookSecret": "K7rz2VPJ8AZ9i1ml"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'TestStripeConfig' test.out

#- 308 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "0sbgQ5zPZbllwvt3", "key": "TjGezRRUjCNiQauO", "mchid": "5Cfja0qWoqWrZJAM", "returnUrl": "VQaCd4UgSRsFc8FK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'TestWxPayConfig' test.out

#- 309 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "z1j1HfaNk1P4hC8w", "flowCompletionUrl": "gvaTIntj0rekmCKM", "merchantId": 83, "projectId": 69, "projectSecretKey": "lqpB9cbsDlreKfjf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'TestXsollaConfig' test.out

#- 310 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'pUz3jtg1bKaDBROm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'GetPaymentMerchantConfig' test.out

#- 311 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    '6TJ2qMul8cl55U4R' \
    --body '{"allowedPaymentMethods": ["B2xVHiARcFLzOW7U", "z8Gz5TN3bJ6UVKAd", "Np2ReRw5WPjohGmJ"], "apiKey": "KCjbEtFKLGvBQOS8", "authoriseAsCapture": false, "blockedPaymentMethods": ["pIh5QqEOKQXnUYMX", "vJJrO8K9yVaSV6Mk", "QpPd0utGYDVGwpKC"], "clientKey": "kOgcVrMw1DAaC3oG", "dropInSettings": "YmbE9E87RTBvlu7l", "liveEndpointUrlPrefix": "o1foXU28IE7EVvQk", "merchantAccount": "oqOZIFeJQSrnPscI", "notificationHmacKey": "MJRStF3LRa7q49Ed", "notificationPassword": "mhBpI13Mh9tHYQil", "notificationUsername": "nHrNI7XsRCD3YOzM", "returnUrl": "K1ZWOxnVMpyEziAP", "settings": "i9dBg5J0me0BhvZV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'UpdateAdyenConfig' test.out

#- 312 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'rOsZSqQjmdJGa6Aa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestAdyenConfigById' test.out

#- 313 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    'hLvhIfKDFkuldV3v' \
    --body '{"appId": "hNCAUQUVGJTsED5t", "privateKey": "FgDMluY685drsUwa", "publicKey": "WMLdLGDjtirdqDck", "returnUrl": "0QFovelKxdFe87vT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdateAliPayConfig' test.out

#- 314 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    'bT1ykevWiIoubexJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestAliPayConfigById' test.out

#- 315 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'Q22uV5cRj529cEGl' \
    --body '{"publicKey": "YlBTFD4MBzAgdtJf", "secretKey": "aktaCbkIORjbuZi7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'UpdateCheckoutConfig' test.out

#- 316 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '6GDzksM1Iq82IG59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'TestCheckoutConfigById' test.out

#- 317 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    '8WdAhvjsHqU3mTbQ' \
    --body '{"clientID": "zxkHXSiDFpwgjtHk", "clientSecret": "Qyb5yoi3fhBKutgK", "returnUrl": "yddONrCA3C8SvqUK", "webHookId": "qpSaqBWWsEePoWos"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'UpdatePayPalConfig' test.out

#- 318 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '4O5MRxu5cYFtJZei' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'TestPayPalConfigById' test.out

#- 319 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'nW64n9q4asIfg6qp' \
    --body '{"allowedPaymentMethodTypes": ["RvHGYNAfvls7pbw9", "yPFofHSVjTbM9IHL", "2JcpnLuindE3Ucg0"], "publishableKey": "5FtWiuP1xyPeWov5", "secretKey": "pJJdyu2TxbDTPkZk", "webhookSecret": "YfTO2Gg00JcXGaIU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'UpdateStripeConfig' test.out

#- 320 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'aL3FoA27eK2U3IHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'TestStripeConfigById' test.out

#- 321 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'gmmQaQj7hyQjWqzv' \
    --body '{"appId": "Hab6b9t7DWTaUGBJ", "key": "RTcrm3mIBuPZxqlG", "mchid": "GOe2VYsej3cSW6YW", "returnUrl": "XMTlqVrGyQYDnbzj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'UpdateWxPayConfig' test.out

#- 322 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    '7Xg2lcvB7TOu2Fcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'UpdateWxPayConfigCert' test.out

#- 323 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'LwU5IJt4pAasYNW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'TestWxPayConfigById' test.out

#- 324 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    '8u3UZ3q6QdMAL9IC' \
    --body '{"apiKey": "4460Wck2oK2mLwkx", "flowCompletionUrl": "gJXK2OjNzQ95lceI", "merchantId": 51, "projectId": 43, "projectSecretKey": "0lnTniV8j7XmR8FU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'UpdateXsollaConfig' test.out

#- 325 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'W42wLu5tQBUE3k2m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'TestXsollaConfigById' test.out

#- 326 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    'UvrQPFxSaRrDsF1C' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "SMALL", "theme": "DEFAULT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdateXsollaUIConfig' test.out

#- 327 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'QueryPaymentProviderConfig' test.out

#- 328 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "qYmGkk8Pcq83l2hW", "region": "OuqsilAWXNFfxIWM", "sandboxTaxJarApiToken": "9jL08jtCIr8STWui", "specials": ["WXPAY", "WXPAY", "PAYPAL"], "taxJarApiToken": "2eOgny7d8WVlcOTK", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'CreatePaymentProviderConfig' test.out

#- 329 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'GetAggregatePaymentProviders' test.out

#- 330 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'DebugMatchedPaymentProviderConfig' test.out

#- 331 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'GetSpecialPaymentProviders' test.out

#- 332 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'Jc7TK5xO3LzmzW8O' \
    --body '{"aggregate": "ADYEN", "namespace": "lY6AX1ksmS6Cm75y", "region": "FZVt1HZPcFbl4XrK", "sandboxTaxJarApiToken": "UphPevxFz1b7Q3Nw", "specials": ["WALLET", "PAYPAL", "STRIPE"], "taxJarApiToken": "8PU8JfFPiZpcqq8q", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'UpdatePaymentProviderConfig' test.out

#- 333 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'R9K5kA67H3XOJlQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'DeletePaymentProviderConfig' test.out

#- 334 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'GetPaymentTaxConfig' test.out

#- 335 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "OCN2keFNIQusmcAY", "taxJarApiToken": "WBLZg00dmqgWRmPn", "taxJarEnabled": true, "taxJarProductCodesMapping": {"gtj7pKnbtPAZsNwK": "WlHT7wmvO6YDgQ4T", "LdkZgouTEi19doNS": "CRrqi0F1FGxhrYsz", "qB4U4xH3NpxEEE1x": "E1teY5Ma16Sr2B13"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'UpdatePaymentTaxConfig' test.out

#- 336 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    '7kVZhkISgONgrrEl' \
    'IGGV8sY9ZaFaHBtE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'SyncPaymentOrders' test.out

#- 337 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetRootCategories' test.out

#- 338 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'DownloadCategories' test.out

#- 339 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'tzzbIbJ6nsmYALYA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetCategory' test.out

#- 340 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'as29PBhKjKkXDnEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetChildCategories' test.out

#- 341 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'VzzBDNoUXOIkGhmA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicGetDescendantCategories' test.out

#- 342 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicListCurrencies' test.out

#- 343 GeDLCDurableRewardShortMap
$PYTHON -m $MODULE 'platform-ge-dlc-durable-reward-short-map' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'GeDLCDurableRewardShortMap' test.out

#- 344 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'GetIAPItemMapping' test.out

#- 345 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'gJu6c1uzCA657ulA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemByAppId' test.out

#- 346 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicQueryItems' test.out

#- 347 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'rgYuyjFEveRvl0xj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'PublicGetItemBySku' test.out

#- 348 PublicGetEstimatedPrice
$PYTHON -m $MODULE 'platform-public-get-estimated-price' \
    'oSZYArBlpKXpe1zY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetEstimatedPrice' test.out

#- 349 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'zna0T42qYhPsMMX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicBulkGetItems' test.out

#- 350 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["Dg6kBhhmAmGWgONb", "saq6FR89FVcE5vUW", "RlOGzgjnghEeYuTA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicValidateItemPurchaseCondition' test.out

#- 351 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    '3fZ9naIn2EhpBnam' \
    'OqQfF1i9lDi17Tuz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'PublicSearchItems' test.out

#- 352 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'OCkfreVXF3F57a8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicGetApp' test.out

#- 353 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    '8FBQVq8F8UHFjnV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'PublicGetItemDynamicData' test.out

#- 354 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'a8qkT208c4Eqnacz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetItem' test.out

#- 355 GetPaymentCustomization
eval_tap 0 355 'GetPaymentCustomization # SKIP deprecated' test.out

#- 356 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "anLg5zKTtaPmN6tW", "paymentProvider": "WALLET", "returnUrl": "qV1V78ZIjg1EtBZb", "ui": "AWeHGdU9mllRGwL1", "zipCode": "hP0ILR0Ela7ZLwTA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'PublicGetPaymentUrl' test.out

#- 357 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    '0wt5op6F6Z1a1sBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'PublicGetPaymentMethods' test.out

#- 358 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'UaCx3pnw2UqOcXFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'PublicGetUnpaidPaymentOrder' test.out

#- 359 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'D0pboKkDZJufSvoX' \
    --body '{"token": "Gyr43yZ4vipgYCZi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'Pay' test.out

#- 360 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    'VhuUlRF8bgS0Z3T7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicCheckPaymentOrderPaidStatus' test.out

#- 361 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'XSOLLA' \
    'ZpV13Vxw1InWyY5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'GetPaymentPublicConfig' test.out

#- 362 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    '5tCY01FkbWfSwD66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetQRCode' test.out

#- 363 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'Xg5Qbc0EjxxzLQLR' \
    'h64Y1jopYiTRZEzq' \
    'STRIPE' \
    'aXSjyAQ2QsMJlAxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicNormalizePaymentReturnUrl' test.out

#- 364 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'Uci2CC1SEp55Timg' \
    'XSOLLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'GetPaymentTaxValue' test.out

#- 365 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    'SckJNZeDhfW7AVHV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'GetRewardByCode' test.out

#- 366 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'QueryRewards1' test.out

#- 367 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'E6TamhtDUacOPwPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'GetReward1' test.out

#- 368 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'PublicListStores' test.out

#- 369 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'PublicExistsAnyMyActiveEntitlement' test.out

#- 370 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'zqMDbsgiaaxIpP9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 371 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    'AICocQql5YfBZVQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 372 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    'DD4zf1BZvQIrbCQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 373 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicGetEntitlementOwnershipToken' test.out

#- 374 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "s1jZYqrf4bxOoikr", "language": "wii", "region": "EVJSzeli2Uey4fuS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'SyncTwitchDropsEntitlement' test.out

#- 375 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'j1kSeWA3702McnnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetMyWallet' test.out

#- 376 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    'WV37CLHYvul2IsFE' \
    --body '{"epicGamesJwtToken": "xmn4GV4MH5mOZyTM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'SyncEpicGameDLC' test.out

#- 377 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'MDazz0zG1FmCCywX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'SyncOculusDLC' test.out

#- 378 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'fHj329WcNk8k8qK4' \
    --body '{"serviceLabel": 13}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicSyncPsnDlcInventory' test.out

#- 379 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'sEZNAnUcJCHbaM8I' \
    --body '{"serviceLabels": [64, 19, 38]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 380 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'h7ZrO4pTU7jATbVB' \
    --body '{"appId": "cDGudQQm98BKOdso", "steamId": "aTqFhdLfBWZeRFQv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'SyncSteamDLC' test.out

#- 381 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'rB1lsWaPGfJVUla8' \
    --body '{"xstsToken": "UlMM4Cc3k5J2qbHY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'SyncXboxDLC' test.out

#- 382 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'NekyXLtDH1ypF3hI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicQueryUserEntitlements' test.out

#- 383 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'sdFXbbaFfchju2kA' \
    'uottOSwo884abNDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserAppEntitlementByAppId' test.out

#- 384 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'MPiZHxhFeo51XVDI' \
    'DLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicQueryUserEntitlementsByAppType' test.out

#- 385 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'f5EWndhcek3atmhT' \
    'w5TDjWYgm2yGvhR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserEntitlementByItemId' test.out

#- 386 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'HS643vgPdN21mWwt' \
    'uqNbtaAfDzs5MyxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGetUserEntitlementBySku' test.out

#- 387 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    '90cMZ9NeyZ5n02q1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicExistsAnyUserActiveEntitlement' test.out

#- 388 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'qbbj3sLmfYzDVAVh' \
    'Xts4CdsniSJKrJ4B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 389 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'rdfV658ZBVGgxlpG' \
    'xhD9kKX2uBUIh1pf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 390 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    'P8bRBVoq807roCNo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 391 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    '3Qw4Z54sNMs82e3y' \
    'xhkTFfQHB8O5ke34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 392 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'NGuMLQ7iPaGqelc3' \
    'lbrPkW2foKqIz9z8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetUserEntitlement' test.out

#- 393 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    '0ICxp4M7Opf9oRlv' \
    'BsYj4IcbdUz2cBWK' \
    --body '{"options": ["IUuPLfvTFl9DbHQL", "YWCwsAVcQ0VGEUxl", "cNQWOpRLETWMAv0u"], "requestId": "J30L51TxrdknW52x", "useCount": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicConsumeUserEntitlement' test.out

#- 394 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'o1yDO6bwcKYeFoxU' \
    'WdvEBTwUyzq5bzdN' \
    --body '{"requestId": "EHv6GmaokUOIadED", "useCount": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicSellUserEntitlement' test.out

#- 395 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'fHvKnS4TBwlGi9OK' \
    --body '{"code": "YqmnMdDOYMCkcE68", "language": "KVz-GHbP-BS", "region": "E8ulWHoG1zC1K7oT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicRedeemCode' test.out

#- 396 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    '3iNe5yhZbqmAgI6L' \
    --body '{"excludeOldTransactions": false, "language": "zV_QfeO", "productId": "DYOnlVrhflY3MzIe", "receiptData": "f9mtXHbh3agt9HQK", "region": "HNhlzYRtA24gRvv8", "transactionId": "70jG3e6kpEZmtrpz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicFulfillAppleIAPItem' test.out

#- 397 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'aLfufFoH0vIAAZ3D' \
    --body '{"epicGamesJwtToken": "07rENh4LQyLj7QmX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'SyncEpicGamesInventory' test.out

#- 398 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    '1ijJDLqjyW5nSpi0' \
    --body '{"autoAck": false, "language": "Nk", "orderId": "moWGbDOWBzflDPp8", "packageName": "sE7bcL6xy49IPWxq", "productId": "s6jAQJWL8Yc3AKtQ", "purchaseTime": 11, "purchaseToken": "3CHNLzMNElAaW04o", "region": "QXa8waozlr2ftyZk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicFulfillGoogleIAPItem' test.out

#- 399 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    'lpNPl881jOSvCvj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'SyncOculusConsumableEntitlements' test.out

#- 400 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    '0fgU419HQGug3Api' \
    --body '{"currencyCode": "XAivNHSVq7Hy14PW", "price": 0.6900566338743123, "productId": "gyxy3AZ9Q29c3FLG", "serviceLabel": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicReconcilePlayStationStore' test.out

#- 401 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    '1NZANUG3XywOPxcL' \
    --body '{"currencyCode": "TU0y3maqZGwBZAsz", "price": 0.28920180281173535, "productId": "s6F6qWE8F5UT7Jy1", "serviceLabels": [72, 64, 84]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 402 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'W4BcrVEEfr25k1H2' \
    --body '{"appId": "s4V2KN0PLlR8cmHo", "currencyCode": "3XR1GqcOtFZDsjHN", "language": "km-PxRP", "price": 0.15999976533876747, "productId": "50ibuYM4wRG0lN0X", "region": "5kMcmOdLuSZLYkIA", "steamId": "BWq6LMyqmJBIayJY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'SyncSteamInventory' test.out

#- 403 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'IYPCQLT4UtcQmxMn' \
    --body '{"gameId": "H608ZzCha8xLBGlN", "language": "hR", "region": "t1XAswrMMjtufusA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'SyncTwitchDropsEntitlement1' test.out

#- 404 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'BAiEcZPc54ZoDD56' \
    --body '{"currencyCode": "c8ZJFga6qXT56186", "price": 0.0042122808256224165, "productId": "DmZpx6FpqFAR1FP2", "xstsToken": "qDxqukQGmZ8QPR4r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'SyncXboxInventory' test.out

#- 405 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'rBu0xMLSZM2reG0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicQueryUserOrders' test.out

#- 406 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'UsKe4gH8U04S5FCp' \
    --body '{"currencyCode": "mYeCJwMPHx5qbq2e", "discountedPrice": 37, "ext": {"LItVjr1YSzeXfUiX": {}, "ANoRioh11etL7rvP": {}, "zXTBq3cXU8GYxE0O": {}}, "itemId": "hdSVFcSQWMXN21fc", "language": "LshA", "price": 45, "quantity": 28, "region": "IJnwUyJDPc4Bi2BT", "returnUrl": "8WWMNZ7MQ0xXiAUp", "sectionId": "37WFZG1bPREFnLFv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateUserOrder' test.out

#- 407 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'djVz0bF4f5a8wwsX' \
    'bVcGQFcH3a88llB2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicGetUserOrder' test.out

#- 408 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'KCetfPNaSebuaBm4' \
    '2ZRTd7otFS5xUblp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicCancelUserOrder' test.out

#- 409 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    '0GJFHhDBbjdusCtK' \
    'Yo61c23RG7T7E4yK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserOrderHistories' test.out

#- 410 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'JUPzM18zammJN39l' \
    'hBPiRxSSC369UVGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicDownloadUserOrderReceipt' test.out

#- 411 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'nts7qK33YCsDe0la' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetPaymentAccounts' test.out

#- 412 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    '83cvnj5Ut4YTxIBM' \
    'card' \
    'BMsRy1ZmFMVlAhaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicDeletePaymentAccount' test.out

#- 413 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'sIMEFd3SDQ0zyrZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicListActiveSections' test.out

#- 414 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'Mqd75oCp2u2A2ZLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicQueryUserSubscriptions' test.out

#- 415 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'keWbmcgfplQTNIZc' \
    --body '{"currencyCode": "tTysFM89BCAF2MVo", "itemId": "zVctDaMus5bsovjm", "language": "yY", "region": "b3lBnY61oiTLHdBC", "returnUrl": "lY8kIt120hKXclue", "source": "pkD2cjAyU8thUL0r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicSubscribeSubscription' test.out

#- 416 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'K6YlDgS7DF6WHO4x' \
    'KI3DzXlqZ97UEX77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 417 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'J2ZaCgl5zfvvm60V' \
    'IJWtArjNf9ClzJiL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserSubscription' test.out

#- 418 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'rK8iwSKwTNINv7Mb' \
    'R3h7N9mLvImrGFR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicChangeSubscriptionBillingAccount' test.out

#- 419 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    '3LVKd3lHIIZTnzts' \
    'wBHIOUcpBs05S6VC' \
    --body '{"immediate": false, "reason": "gcpqzF0Wdx4tTiOq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicCancelSubscription' test.out

#- 420 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'vd6is3iMkUYXGJ52' \
    'LhrcYmNqU8FNr2Sf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicGetUserSubscriptionBillingHistories' test.out

#- 421 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    '2vnHOZhdmTd8ENVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicListViews' test.out

#- 422 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'ZH8lmeTjzHxgwKaM' \
    'jUptGDH129SPAGK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetWallet' test.out

#- 423 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'QxsXGgAK3QR9g0C7' \
    'nE1t58LdpQQXSvH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicListUserWalletTransactions' test.out

#- 424 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'QueryItems1' test.out

#- 425 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'ImportStore1' test.out

#- 426 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'kwH9PKAIEqRaoWkd' \
    --body '{"itemIds": ["V23II0TEDjWcIzfs", "SrF9JBbs3ioKOVcr", "fhki2j4K5qHkvYSU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'ExportStore1' test.out

#- 427 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    '2i8wpPg4f6CytNOp' \
    --body '{"metadata": {"Tcy8nFxnyUhq8QCA": {}, "Cdn9QBrEBZ0FGcSF": {}, "09VMOBfFhgytL5jv": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "cyVSXxh4A5aA1bEw", "namespace": "NCWytxJKphKxkJ5Y"}, "item": {"itemId": "2qNwo7fOIEm4CCHT", "itemSku": "jiJTcJCNU9JxdozQ", "itemType": "jrd9h3KvseGTWQwY"}, "quantity": 68, "type": "CURRENCY"}, {"currency": {"currencyCode": "eXJrzNrt0fkjelr7", "namespace": "hVgkvQdto2PuC14L"}, "item": {"itemId": "u2G4Mw4Mo4TirGDZ", "itemSku": "6OUYrf6N5BjG6bEL", "itemType": "ZwjEmKgZXlgbV3dB"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "rK8hpKlmw63co2er", "namespace": "bchkQ7n0C9lJb5Wl"}, "item": {"itemId": "mAWYUtevQ8XsaIOT", "itemSku": "UAVhHL0RrUev0iu9", "itemType": "PIqi1GB1ZASgNbyI"}, "quantity": 14, "type": "CURRENCY"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "DNNIekar0ZUahrGZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
