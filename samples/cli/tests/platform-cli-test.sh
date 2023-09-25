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
platform-grant-entitlements --body '{"entitlementGrantList": [{"endDate": "1973-04-22T00:00:00Z", "grantedCode": "8J1nsv4W2OJhtafx", "itemId": "MSJlHeb34sZKHcl5", "itemNamespace": "LLLOexL4fZvWtND2", "language": "eCh_ozqf", "quantity": 45, "region": "NtFEJ7tnkY6Mca5a", "source": "GIFT", "startDate": "1978-03-17T00:00:00Z", "storeId": "zhLVA3kE8jKvgatO"}, {"endDate": "1986-08-14T00:00:00Z", "grantedCode": "OXudXgNne8kJATwl", "itemId": "c6esUp6Sw1I98jeZ", "itemNamespace": "Q7hfxnhLd3Knakno", "language": "GD_nT", "quantity": 84, "region": "wVJnNnN7kAa7j0ri", "source": "REWARD", "startDate": "1979-01-18T00:00:00Z", "storeId": "AdNJOIG36I6tRbRc"}, {"endDate": "1979-08-29T00:00:00Z", "grantedCode": "EveMdAdiPKDUVSC0", "itemId": "0PYeDcagginxnFIn", "itemNamespace": "a3yddcbsPheTH26I", "language": "Jkio-VahH-867", "quantity": 42, "region": "PrIfapq5AAeMe4L3", "source": "OTHER", "startDate": "1974-09-05T00:00:00Z", "storeId": "WgU4pCAKxeE70Cau"}], "userIds": ["nQNxot371W9G4AvQ", "8GEXFTlEMEsFzYqw", "kqsGnmyo5JJTUVmb"]}' --login_with_auth "Bearer foo"
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
platform-create-item '3ZOokZB4cXnAXyuG' --body '{"appId": "z6LlxHv8SwyagYvD", "appType": "DLC", "baseAppId": "w3UNgIGj2jZtEYT8", "boothName": "sIPSE1XXPzySa0sZ", "categoryPath": "oFS6xCOWMpyh9pMs", "clazz": "Qgb64ELbzDMwyo4n", "displayOrder": 72, "entitlementType": "DURABLE", "ext": {"RysQdbufXjYnSoIF": {}, "eouC2m38kXrDZWlG": {}, "VE9sJ4NpUtKp6M9I": {}}, "features": ["6nEwnZhsjwJeGwaP", "SDMZz95OYKiqaZD6", "3xe5rruJVfLGea0Z"], "images": [{"as": "tlzUcuHAXz0UV31M", "caption": "fuGaXsAuGsZaSHev", "height": 83, "imageUrl": "DV90SeI5yppBHoyt", "smallImageUrl": "VznCgNyx9fbT63Sh", "width": 63}, {"as": "XDgB7n4C97uAPP8P", "caption": "ATLpUpxeJlsBJT6H", "height": 14, "imageUrl": "P0W9nBhvhf8Q0DtJ", "smallImageUrl": "McYQdN66bswAgt65", "width": 53}, {"as": "4N1LQZmB61JMdtwC", "caption": "VUrYQue84dwmbwFE", "height": 27, "imageUrl": "m4e5GX6H742Oixht", "smallImageUrl": "AoKiVm6URT95XhnU", "width": 4}], "itemIds": ["T2SKseoe8VLie0LB", "a36KNzjf005CXNGe", "hQ2aTjTDfKFDXC7e"], "itemQty": {"GL5YhJDWh9YWqc0q": 13, "C0I2kNjCMDtDMren": 41, "caoMdtRLTmSvTkQQ": 13}, "itemType": "SEASON", "listable": true, "localizations": {"b9vvxuJlhXbWhbwP": {"description": "wToC6knjVwVnzaqS", "localExt": {"fJiQFC2gXoda0kg1": {}, "6yUSpSOAjHJWwfCj": {}, "YwWkLob9gKLqs2nE": {}}, "longDescription": "ZhpByfHZinxNfgPA", "title": "wkMBsznlBUqnLT4A"}, "bGptKaWNvPbpg7yr": {"description": "RvXfZ6rvgvEY3Hht", "localExt": {"1SwqTsKKKo37NHDO": {}, "Qe91Ps3ztUIV0dS6": {}, "hIH9c4VfkyrwpuXx": {}}, "longDescription": "baERbfgPmi0eHkt1", "title": "mr9EOIFg0dnWIYN2"}, "NVL70Iw157g00jr9": {"description": "b8MuYmmeKTmBNvGY", "localExt": {"xEQdf3ewoGGoY7xm": {}, "FNAmjDDCvs78mcMd": {}, "iS76YApGJ9ufwLYk": {}}, "longDescription": "qIgLuZS6hsQryiEt", "title": "OAbpeUNf26UqkCfg"}}, "lootBoxConfig": {"rewardCount": 58, "rewards": [{"lootBoxItems": [{"count": 12, "duration": 95, "endDate": "1977-12-28T00:00:00Z", "itemId": "Bn2xaOBdPF0JmX8q", "itemSku": "wU1cTuHHPB5S3DvP", "itemType": "RCzBrVUxmDOj3cvR"}, {"count": 64, "duration": 51, "endDate": "1971-07-13T00:00:00Z", "itemId": "TC11W0TGTCm4fZWu", "itemSku": "k6pQxDQpKqxLGeMv", "itemType": "r9TsvcMQ7dBsaIec"}, {"count": 89, "duration": 89, "endDate": "1982-10-12T00:00:00Z", "itemId": "Nn3SHiWxF0YbuU5a", "itemSku": "r5qTLWUCy0Afgc05", "itemType": "0XIZRW491e94mQjV"}], "name": "OOBnIWhunElqZUod", "odds": 0.24506281900690108, "type": "REWARD_GROUP", "weight": 57}, {"lootBoxItems": [{"count": 15, "duration": 84, "endDate": "1980-05-04T00:00:00Z", "itemId": "CSHy1ei1fIrPvfHn", "itemSku": "RN06EjRwEQlNapJR", "itemType": "fk4f9Zcw1pEHAyNF"}, {"count": 48, "duration": 4, "endDate": "1972-01-22T00:00:00Z", "itemId": "VTKuAQTGh5BxjWOo", "itemSku": "zGoDtsUuYo5p8ED5", "itemType": "QZAufwNa8lzfjv9o"}, {"count": 79, "duration": 7, "endDate": "1996-03-11T00:00:00Z", "itemId": "MjlVHY1AHwF3vGoa", "itemSku": "v7MK0PcLnEkcokKw", "itemType": "cQ0baDT9OyJ2h23G"}], "name": "US2amU7syGlElXdE", "odds": 0.4202946808815393, "type": "REWARD_GROUP", "weight": 34}, {"lootBoxItems": [{"count": 36, "duration": 85, "endDate": "1995-08-11T00:00:00Z", "itemId": "SnLocLVVYamQc4wc", "itemSku": "G5nDBLJoJHbiQ5du", "itemType": "E5p4cfs2E41cK8QT"}, {"count": 47, "duration": 58, "endDate": "1975-10-13T00:00:00Z", "itemId": "7EEFB67AODbi9Bzu", "itemSku": "pBsFpYc77GtRUcCF", "itemType": "eY5g4XgBsbfzqxBP"}, {"count": 82, "duration": 14, "endDate": "1973-11-18T00:00:00Z", "itemId": "8ae1Il4aAtEbu4Ij", "itemSku": "GdqthRxTjQ7gkZEY", "itemType": "8rG0q0Q2Qd2JzRbk"}], "name": "F2I03dIjvBbA6bfb", "odds": 0.8101328289958338, "type": "PROBABILITY_GROUP", "weight": 36}], "rollFunction": "DEFAULT"}, "maxCount": 74, "maxCountPerUser": 100, "name": "jfk2TUvn95FhO7VW", "optionBoxConfig": {"boxItems": [{"count": 24, "duration": 25, "endDate": "1971-09-28T00:00:00Z", "itemId": "DVMDu87t0ldWf7iS", "itemSku": "GIiKFtWtn4Yr2svK", "itemType": "M6pqLGZ0TBujELAU"}, {"count": 76, "duration": 59, "endDate": "1992-04-09T00:00:00Z", "itemId": "E1li3Bg7Jxc9pUnZ", "itemSku": "mvhidwCkZwqjYLfT", "itemType": "iCO1NDBvQvRPnAz4"}, {"count": 97, "duration": 33, "endDate": "1984-05-05T00:00:00Z", "itemId": "0CpoBCbyJsF5IjF1", "itemSku": "c0W338HS6CBgVRyi", "itemType": "hYNZ84CVhziXV8Hw"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 51, "fixedTrialCycles": 4, "graceDays": 4}, "regionData": {"vcDKF19yVRafCjOu": [{"currencyCode": "SYht83AdvBaagTiR", "currencyNamespace": "J8daGTVX3Bb7jlz5", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1984-09-29T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1974-02-08T00:00:00Z", "expireAt": "1989-03-17T00:00:00Z", "price": 81, "purchaseAt": "1988-12-06T00:00:00Z", "trialPrice": 52}, {"currencyCode": "mwJSrN8jkIykR2zb", "currencyNamespace": "aI6PD7fEscShnGUG", "currencyType": "VIRTUAL", "discountAmount": 40, "discountExpireAt": "1995-07-05T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1996-10-11T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 54, "purchaseAt": "1977-09-22T00:00:00Z", "trialPrice": 22}, {"currencyCode": "DbLNwjm3FK0nnX2p", "currencyNamespace": "oMfZ1hDHtbh4HtMl", "currencyType": "VIRTUAL", "discountAmount": 14, "discountExpireAt": "1982-06-28T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1991-08-05T00:00:00Z", "expireAt": "1986-05-09T00:00:00Z", "price": 32, "purchaseAt": "1999-03-13T00:00:00Z", "trialPrice": 90}], "inFpnQ5xF9wwbvMZ": [{"currencyCode": "yeDeRnVfPUa6xVVB", "currencyNamespace": "cq3wZpFIYeAg79Hc", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1977-07-08T00:00:00Z", "discountPercentage": 31, "discountPurchaseAt": "1995-10-09T00:00:00Z", "expireAt": "1998-01-27T00:00:00Z", "price": 10, "purchaseAt": "1981-09-16T00:00:00Z", "trialPrice": 55}, {"currencyCode": "7aUyrdt4XSpWBAet", "currencyNamespace": "sanzqP8oxfrtbECD", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1992-06-30T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1971-08-10T00:00:00Z", "expireAt": "1975-07-16T00:00:00Z", "price": 57, "purchaseAt": "1989-08-02T00:00:00Z", "trialPrice": 36}, {"currencyCode": "xfYL8Avt70ZUT2fS", "currencyNamespace": "k3LL0calqxEewuGS", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1999-01-24T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1992-09-18T00:00:00Z", "expireAt": "1998-05-27T00:00:00Z", "price": 100, "purchaseAt": "1984-10-30T00:00:00Z", "trialPrice": 67}], "t4sUmanYxM0UHZVN": [{"currencyCode": "YzGMNIpWoSLkUrfu", "currencyNamespace": "f4U3WeYeA9t2ENKK", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1987-04-04T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1984-09-27T00:00:00Z", "expireAt": "1982-10-08T00:00:00Z", "price": 24, "purchaseAt": "1975-08-27T00:00:00Z", "trialPrice": 42}, {"currencyCode": "MgKAOG5iDcCR5PbC", "currencyNamespace": "vDLil8wj9cKM3Ar6", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1974-10-25T00:00:00Z", "discountPercentage": 58, "discountPurchaseAt": "1974-09-09T00:00:00Z", "expireAt": "1973-12-25T00:00:00Z", "price": 15, "purchaseAt": "1986-04-19T00:00:00Z", "trialPrice": 72}, {"currencyCode": "GmWGgTJfHlJl4tHG", "currencyNamespace": "a4XfZcd9CVnGqMX9", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1973-03-17T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1973-09-13T00:00:00Z", "expireAt": "1989-05-28T00:00:00Z", "price": 74, "purchaseAt": "1980-07-24T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "EUl07bhwntCVqiYO", "price": 72}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "wMZQjzvjSozv6CTR", "stackable": true, "status": "ACTIVE", "tags": ["5IQYBQuxLvPuWYvE", "kHBDdSzBXdxapwhd", "E8SohhhuiTnJarYY"], "targetCurrencyCode": "3fsNy9Z9OhxXvCp9", "targetNamespace": "y7fLD2qfCXnlUnqx", "thumbnailUrl": "T1WsRNMZcA92hzC7", "useCount": 80}' --login_with_auth "Bearer foo"
platform-get-item-by-app-id 'HZ3sIhzOx2CXKlvI' --login_with_auth "Bearer foo"
platform-query-items --login_with_auth "Bearer foo"
platform-list-basic-items-by-features --login_with_auth "Bearer foo"
platform-get-item-by-sku 'omU3pIxM9n8D2eLM' --login_with_auth "Bearer foo"
platform-get-locale-item-by-sku 'e3lt9qfx2UDcgVE7' --login_with_auth "Bearer foo"
platform-get-item-id-by-sku 'L9FK6e0MrPc4vtxk' --login_with_auth "Bearer foo"
platform-get-bulk-item-id-by-skus --login_with_auth "Bearer foo"
platform-bulk-get-locale-items '9hVKlG56HlzGr7Xj' --login_with_auth "Bearer foo"
platform-get-available-predicate-types --login_with_auth "Bearer foo"
platform-validate-item-purchase-condition 'dyRJunZPkp6ccIBn' --body '{"itemIds": ["WyPw8mj7gyQ7XdIs", "zGRj46COPipH1MWV", "THG0qHJCWEfOJpZm"]}' --login_with_auth "Bearer foo"
platform-bulk-update-region-data '9yEYWNGMy2pgSGSU' --body '{"changes": [{"itemIdentities": ["OK68eqGJtWf1Ybgg", "8rdwY9bmrvHmO07K", "NqX9LM2IwEsdOGBX"], "itemIdentityType": "ITEM_SKU", "regionData": {"TTbtefXWznDe4LQd": [{"currencyCode": "XfFBii2RAMEX5RMj", "currencyNamespace": "BFVZGYzQqV8d9mDd", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1999-03-08T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1988-10-14T00:00:00Z", "discountedPrice": 12, "expireAt": "1987-11-22T00:00:00Z", "price": 34, "purchaseAt": "1983-03-14T00:00:00Z", "trialPrice": 42}, {"currencyCode": "r8fS79En3wYowBdk", "currencyNamespace": "aZ3y6i38XQjLDRqk", "currencyType": "REAL", "discountAmount": 19, "discountExpireAt": "1975-09-21T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1990-07-18T00:00:00Z", "discountedPrice": 63, "expireAt": "1985-03-05T00:00:00Z", "price": 40, "purchaseAt": "1980-03-08T00:00:00Z", "trialPrice": 95}, {"currencyCode": "Q272Uo9UBJWodpdw", "currencyNamespace": "sX1jorcyR0x3YiHF", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1999-07-06T00:00:00Z", "discountPercentage": 67, "discountPurchaseAt": "1994-12-01T00:00:00Z", "discountedPrice": 40, "expireAt": "1993-04-06T00:00:00Z", "price": 87, "purchaseAt": "1992-08-07T00:00:00Z", "trialPrice": 65}], "CgIs1Q2lzxl0yF5m": [{"currencyCode": "77TTh4gUoj8u2WRc", "currencyNamespace": "LiEtzVlnkflfn7pH", "currencyType": "VIRTUAL", "discountAmount": 3, "discountExpireAt": "1987-03-18T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1973-12-28T00:00:00Z", "discountedPrice": 22, "expireAt": "1995-02-05T00:00:00Z", "price": 34, "purchaseAt": "1977-12-24T00:00:00Z", "trialPrice": 26}, {"currencyCode": "H48aJuALEcSqcE15", "currencyNamespace": "u6D31DjOsrs3CUYA", "currencyType": "VIRTUAL", "discountAmount": 6, "discountExpireAt": "1980-05-12T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-12-11T00:00:00Z", "discountedPrice": 5, "expireAt": "1988-02-21T00:00:00Z", "price": 3, "purchaseAt": "1973-05-18T00:00:00Z", "trialPrice": 33}, {"currencyCode": "iqOkNeATj7eGjodd", "currencyNamespace": "7CcJUrI6MAugK5ky", "currencyType": "VIRTUAL", "discountAmount": 51, "discountExpireAt": "1991-05-14T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1992-05-03T00:00:00Z", "discountedPrice": 37, "expireAt": "1999-11-10T00:00:00Z", "price": 27, "purchaseAt": "1987-09-12T00:00:00Z", "trialPrice": 47}], "e9FmN86sK5LOq4ft": [{"currencyCode": "5jGcMICPUYnfG6jl", "currencyNamespace": "9U4jReteIMgzISom", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1980-10-30T00:00:00Z", "discountPercentage": 30, "discountPurchaseAt": "1975-01-26T00:00:00Z", "discountedPrice": 54, "expireAt": "1989-05-17T00:00:00Z", "price": 88, "purchaseAt": "1974-12-17T00:00:00Z", "trialPrice": 100}, {"currencyCode": "OmqFHLbyXmgCNiXH", "currencyNamespace": "8uenbC5CphgMweex", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1989-08-01T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1992-09-04T00:00:00Z", "discountedPrice": 94, "expireAt": "1981-12-25T00:00:00Z", "price": 69, "purchaseAt": "1979-11-05T00:00:00Z", "trialPrice": 54}, {"currencyCode": "jBJ9iqMcBL4BzhDU", "currencyNamespace": "jhKPwbwcvQU5kG8b", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1998-09-10T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1977-12-07T00:00:00Z", "discountedPrice": 86, "expireAt": "1999-07-29T00:00:00Z", "price": 38, "purchaseAt": "1977-06-03T00:00:00Z", "trialPrice": 83}]}}, {"itemIdentities": ["iJ66OzOj84O6tgoh", "jtC7bzjPpucddXJ5", "zifF8y959anrNSle"], "itemIdentityType": "ITEM_SKU", "regionData": {"4CxyQrUpIFvORxTi": [{"currencyCode": "79DpSjb39ukcR6c2", "currencyNamespace": "E2r3vk3IfAKEbqcN", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1986-08-24T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1985-06-23T00:00:00Z", "discountedPrice": 80, "expireAt": "1987-04-24T00:00:00Z", "price": 84, "purchaseAt": "1982-11-23T00:00:00Z", "trialPrice": 84}, {"currencyCode": "mdpcJgF88ySNq4Mj", "currencyNamespace": "7mulP4tQ6R1OqKVO", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1975-03-23T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1988-02-24T00:00:00Z", "discountedPrice": 21, "expireAt": "1990-03-05T00:00:00Z", "price": 37, "purchaseAt": "1978-11-19T00:00:00Z", "trialPrice": 83}, {"currencyCode": "hdgQ0JWZjNRSzOTq", "currencyNamespace": "cVNX3ahvxw9gwwhT", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1975-07-10T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1977-01-23T00:00:00Z", "discountedPrice": 45, "expireAt": "1981-10-29T00:00:00Z", "price": 61, "purchaseAt": "1997-09-23T00:00:00Z", "trialPrice": 88}], "W4y3f0R9s2kndhhZ": [{"currencyCode": "hwAiLsZs4pmLDIQc", "currencyNamespace": "h4IjDq9aT3qZyI0r", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1996-11-01T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1990-01-14T00:00:00Z", "discountedPrice": 88, "expireAt": "1984-07-19T00:00:00Z", "price": 22, "purchaseAt": "1991-05-25T00:00:00Z", "trialPrice": 51}, {"currencyCode": "VJbXi7eRZa7WwIc8", "currencyNamespace": "95ImqK6tVsaUq3st", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1989-06-01T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1996-09-20T00:00:00Z", "discountedPrice": 18, "expireAt": "1998-08-13T00:00:00Z", "price": 82, "purchaseAt": "1975-12-30T00:00:00Z", "trialPrice": 70}, {"currencyCode": "AylX5cS0IeHpWCug", "currencyNamespace": "mfOL0QQpxsuD8PGq", "currencyType": "REAL", "discountAmount": 89, "discountExpireAt": "1981-07-23T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1973-02-10T00:00:00Z", "discountedPrice": 66, "expireAt": "1997-10-15T00:00:00Z", "price": 49, "purchaseAt": "1980-07-23T00:00:00Z", "trialPrice": 84}], "ZeHAWGgJUbUJRMbk": [{"currencyCode": "cTglbU86FyOjApNH", "currencyNamespace": "BVfNOURcjY3YYT9o", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1999-04-04T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1973-05-23T00:00:00Z", "discountedPrice": 70, "expireAt": "1977-06-17T00:00:00Z", "price": 51, "purchaseAt": "1985-07-12T00:00:00Z", "trialPrice": 99}, {"currencyCode": "34luLdvtsTKXMjiw", "currencyNamespace": "6gYPvfn2Qt9iyq3N", "currencyType": "VIRTUAL", "discountAmount": 21, "discountExpireAt": "1994-10-06T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1992-01-15T00:00:00Z", "discountedPrice": 42, "expireAt": "1990-10-24T00:00:00Z", "price": 17, "purchaseAt": "1999-09-13T00:00:00Z", "trialPrice": 10}, {"currencyCode": "QoLDvumfqrgSfnx2", "currencyNamespace": "h61X9dN1MGRXBJ6m", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1992-09-24T00:00:00Z", "discountPercentage": 34, "discountPurchaseAt": "1990-03-19T00:00:00Z", "discountedPrice": 42, "expireAt": "1991-01-23T00:00:00Z", "price": 77, "purchaseAt": "1972-07-07T00:00:00Z", "trialPrice": 48}]}}, {"itemIdentities": ["vI8JdiY3RRiLilmO", "GF6dLLIeIVIjMcdl", "bdRXTGIrdNL5gJPq"], "itemIdentityType": "ITEM_SKU", "regionData": {"AjgqaTHf1ANTJ9Yk": [{"currencyCode": "997XkGOdC6ItxDT8", "currencyNamespace": "p4n4XCFkD1AJLCws", "currencyType": "VIRTUAL", "discountAmount": 77, "discountExpireAt": "1972-06-16T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1983-01-02T00:00:00Z", "discountedPrice": 42, "expireAt": "1976-10-05T00:00:00Z", "price": 87, "purchaseAt": "1993-11-15T00:00:00Z", "trialPrice": 12}, {"currencyCode": "1MpOs1RVFrcg2CXx", "currencyNamespace": "epx78fvsyhE2BKty", "currencyType": "VIRTUAL", "discountAmount": 42, "discountExpireAt": "1994-12-15T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1992-11-06T00:00:00Z", "discountedPrice": 70, "expireAt": "1986-04-13T00:00:00Z", "price": 31, "purchaseAt": "1976-04-28T00:00:00Z", "trialPrice": 26}, {"currencyCode": "r7t1aJLNNz6QIVC9", "currencyNamespace": "Mfuc8VOsnmnlVljd", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1987-09-05T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1990-12-26T00:00:00Z", "discountedPrice": 8, "expireAt": "1998-09-19T00:00:00Z", "price": 58, "purchaseAt": "1979-01-27T00:00:00Z", "trialPrice": 44}], "b92B4vEgj3HOmhcW": [{"currencyCode": "m428XejRF94NIY9n", "currencyNamespace": "MrBZo0lNUBDShHD3", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1995-06-18T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1990-03-16T00:00:00Z", "discountedPrice": 27, "expireAt": "1978-09-16T00:00:00Z", "price": 19, "purchaseAt": "1992-10-24T00:00:00Z", "trialPrice": 46}, {"currencyCode": "MEmtbiWsAQHbMrKY", "currencyNamespace": "i0Zxs5SWCqZXHLLa", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1978-12-13T00:00:00Z", "discountPercentage": 88, "discountPurchaseAt": "1994-02-09T00:00:00Z", "discountedPrice": 87, "expireAt": "1994-08-07T00:00:00Z", "price": 95, "purchaseAt": "1990-05-03T00:00:00Z", "trialPrice": 27}, {"currencyCode": "FJUAJsyAfeKOufV4", "currencyNamespace": "f15NohXu6opxQGRt", "currencyType": "VIRTUAL", "discountAmount": 35, "discountExpireAt": "1992-03-28T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1976-07-01T00:00:00Z", "discountedPrice": 77, "expireAt": "1985-08-09T00:00:00Z", "price": 7, "purchaseAt": "1978-03-15T00:00:00Z", "trialPrice": 88}], "SwCUsTag4MLAo3m6": [{"currencyCode": "1P2xaNfmn8Onb1a9", "currencyNamespace": "gMz0F2UBRmMhAbUW", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1987-08-09T00:00:00Z", "discountPercentage": 16, "discountPurchaseAt": "1974-01-28T00:00:00Z", "discountedPrice": 14, "expireAt": "1997-09-23T00:00:00Z", "price": 77, "purchaseAt": "1979-08-02T00:00:00Z", "trialPrice": 66}, {"currencyCode": "Muv3zkUY0n0BAZkw", "currencyNamespace": "bYkBLyO6A0Fqfhna", "currencyType": "VIRTUAL", "discountAmount": 69, "discountExpireAt": "1999-09-20T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1996-10-21T00:00:00Z", "discountedPrice": 22, "expireAt": "1991-06-17T00:00:00Z", "price": 6, "purchaseAt": "1999-11-22T00:00:00Z", "trialPrice": 94}, {"currencyCode": "VuOzhxHmnrrV9ZGW", "currencyNamespace": "rZ05sxe6A6RpmKDe", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1991-01-10T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1978-07-17T00:00:00Z", "discountedPrice": 28, "expireAt": "1976-04-28T00:00:00Z", "price": 3, "purchaseAt": "1981-07-22T00:00:00Z", "trialPrice": 5}]}}]}' --login_with_auth "Bearer foo"
platform-search-items 'nkgT9vayLLiizac7' 'Ge6zKJdlt7rjF5Ra' --login_with_auth "Bearer foo"
platform-query-uncategorized-items --login_with_auth "Bearer foo"
platform-get-item 'JwvkWVco2LTo5ijl' --login_with_auth "Bearer foo"
platform-update-item 'vDF8qBWCQ9dLWYyS' '8zdhMeBXH8x6HdVf' --body '{"appId": "ZVDAiU6iJOF7JKZF", "appType": "DLC", "baseAppId": "ryY91lX8DD4MYXlr", "boothName": "J81lHvv9rqvEoM8Y", "categoryPath": "mVjAkO3HKsEp6Klq", "clazz": "wW4djrexcbHdEtoQ", "displayOrder": 44, "entitlementType": "CONSUMABLE", "ext": {"xxSVp3Gd2TK0HzYv": {}, "iTgYmx82JVBRLPZ6": {}, "Iz8tne5dbguBF6Gs": {}}, "features": ["vvdl8jHz9x7XZIjU", "Tq3EVheJjoEEXBLI", "4IK9lOLaZaMphKCq"], "images": [{"as": "xGnNuhoJM3WWPvvC", "caption": "iCf33ViEdqQpoGkU", "height": 100, "imageUrl": "WLNfHRD3V15QaGGL", "smallImageUrl": "46LuxJF3sbeqWBdQ", "width": 42}, {"as": "Ns5kgSZZNUHbIT9s", "caption": "zApmWJO5vzzXZj08", "height": 0, "imageUrl": "FZeOCOR9NvBQZSJP", "smallImageUrl": "OIKrRBrYVzi9ui3l", "width": 43}, {"as": "xNnLRH36bqS2oFY7", "caption": "6PU1AziBOHEAj1cT", "height": 5, "imageUrl": "u6Zc2FbrTFznTgDI", "smallImageUrl": "wZIRWf6T3by2kYSC", "width": 6}], "itemIds": ["1SMfQVQa6blj9Rdd", "85bdYUumPKVSZCg3", "XTc9vQe0dHJfF6KI"], "itemQty": {"uvnRCa9JktyBdxkZ": 74, "KlQicdrxVhrtwSd9": 88, "77ci0vfWVZoRRMPi": 5}, "itemType": "CODE", "listable": true, "localizations": {"kb5aBi9K9zyv6gFZ": {"description": "XI5nXJ7hLi6Hwewe", "localExt": {"Rmyo91dIn7QqXBDX": {}, "JcrqKmXDwoEV6tCd": {}, "rxw1KOPhuvHuYrGW": {}}, "longDescription": "DK41uMOC0mRvSoaG", "title": "k4ktF5wnJDg9Q3WX"}, "iydCOInVolsr6CHm": {"description": "j763vLwtYEJTSiXj", "localExt": {"cY5ZPkv90lyKSTWL": {}, "xSFZ0LpupEi5DbkV": {}, "s3qFTi1t530Wj1Wf": {}}, "longDescription": "zIvc3VlSXrA3XUGu", "title": "d4tVjmxEf4XvVhFJ"}, "TxFHITBg9x4unq3e": {"description": "OMHIKeTyBG5dCUoE", "localExt": {"xnKfV3869IN4V1Od": {}, "hH4GVU7Exlkmc4xY": {}, "iLjLyZrXr9Bhtzn8": {}}, "longDescription": "jAdTn6xBhrciryLm", "title": "67rkadH5Y41SLjCP"}}, "lootBoxConfig": {"rewardCount": 35, "rewards": [{"lootBoxItems": [{"count": 48, "duration": 65, "endDate": "1973-01-04T00:00:00Z", "itemId": "5n9Lx3QcFo9gxOgv", "itemSku": "Dc7xMrRKvw8ISP2W", "itemType": "KmCRRXBxlalCHtWl"}, {"count": 75, "duration": 13, "endDate": "1983-05-28T00:00:00Z", "itemId": "LpS8fLWoQ5nuJhat", "itemSku": "QPxR7dvBVC5zgOKL", "itemType": "TDmHe8c1eJ9sde7R"}, {"count": 51, "duration": 57, "endDate": "1980-06-16T00:00:00Z", "itemId": "udIv22M18uux9xBo", "itemSku": "mQFPFWy5cwNPI6aF", "itemType": "o0MVwDZCIXFNEL3u"}], "name": "WVRz3V7YbJM3bNLW", "odds": 0.5425178502829874, "type": "REWARD", "weight": 43}, {"lootBoxItems": [{"count": 2, "duration": 38, "endDate": "1985-03-10T00:00:00Z", "itemId": "pHqi33TcBGkc0HjU", "itemSku": "cnkpU9oVzl2kBuLF", "itemType": "XIeCEKZUTz3GvCAZ"}, {"count": 19, "duration": 17, "endDate": "1999-04-30T00:00:00Z", "itemId": "4acYHbrryHB6GO9z", "itemSku": "P3FaepA3b3YJ9nJM", "itemType": "6vtT27xv85K5MU2q"}, {"count": 26, "duration": 26, "endDate": "1972-02-04T00:00:00Z", "itemId": "hCZxxPPdPwOtEuWB", "itemSku": "SO2jJepUnEEgja2m", "itemType": "IE2kLTnJwc5XmkCu"}], "name": "L5W4tKt6G3j9LYdG", "odds": 0.9675134103115145, "type": "REWARD", "weight": 86}, {"lootBoxItems": [{"count": 98, "duration": 99, "endDate": "1992-05-10T00:00:00Z", "itemId": "2PWsHiKYArAxnKBf", "itemSku": "BfDlrQQuAc10Djjw", "itemType": "Mv4vrIPRtvhQIyLa"}, {"count": 36, "duration": 34, "endDate": "1976-02-18T00:00:00Z", "itemId": "aLOKnX51yAB8Pa3u", "itemSku": "NGKhaLlJzJMSnJII", "itemType": "gsAVmaGYxUX1B9oV"}, {"count": 43, "duration": 76, "endDate": "1984-08-30T00:00:00Z", "itemId": "G2CnYX2YBF2g7TVt", "itemSku": "zYEHUodh3iUfBthb", "itemType": "epUCTWiZ1uqh7GAi"}], "name": "4FEIu44u83ZLRxYl", "odds": 0.8079562865710399, "type": "REWARD", "weight": 22}], "rollFunction": "CUSTOM"}, "maxCount": 32, "maxCountPerUser": 32, "name": "K70uJmUL0uzElixc", "optionBoxConfig": {"boxItems": [{"count": 90, "duration": 8, "endDate": "1980-10-08T00:00:00Z", "itemId": "JOBy6lsj1AKGBjnH", "itemSku": "maAu4YK87DYAWWcb", "itemType": "cbGWmKgE8CZ4AELr"}, {"count": 45, "duration": 24, "endDate": "1971-05-26T00:00:00Z", "itemId": "0ClGQJultJe32Aiw", "itemSku": "KadEoIVmprwPsa9Y", "itemType": "D92CX0rITajpwHIT"}, {"count": 66, "duration": 88, "endDate": "1973-08-10T00:00:00Z", "itemId": "HTnqRbzBB9ZFgJbQ", "itemSku": "3Fj1umx4ItzkMJ7c", "itemType": "udf4r916GPrhn2et"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 89, "fixedTrialCycles": 72, "graceDays": 20}, "regionData": {"80YJ41U4ooQ980yw": [{"currencyCode": "mg1pWpWit1QC7FKe", "currencyNamespace": "0fnHUlmU1unGKM0t", "currencyType": "REAL", "discountAmount": 45, "discountExpireAt": "1973-02-07T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1971-01-05T00:00:00Z", "expireAt": "1977-01-13T00:00:00Z", "price": 91, "purchaseAt": "1971-08-21T00:00:00Z", "trialPrice": 46}, {"currencyCode": "vX1nwvSWdDwD7WJH", "currencyNamespace": "zgNZUKsI5y0mR3zM", "currencyType": "VIRTUAL", "discountAmount": 93, "discountExpireAt": "1998-05-28T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1974-02-10T00:00:00Z", "expireAt": "1981-10-25T00:00:00Z", "price": 36, "purchaseAt": "1979-04-21T00:00:00Z", "trialPrice": 15}, {"currencyCode": "sIJctAdxyZVKHA9D", "currencyNamespace": "kaSOWgtg8yw8lHEb", "currencyType": "VIRTUAL", "discountAmount": 60, "discountExpireAt": "1984-07-06T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1985-10-24T00:00:00Z", "expireAt": "1984-11-15T00:00:00Z", "price": 34, "purchaseAt": "1992-12-29T00:00:00Z", "trialPrice": 79}], "nOlscRIWw82k5K5V": [{"currencyCode": "TkdubkOFldMCQ98J", "currencyNamespace": "H4n0JtgqzZv5kVu4", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1998-03-12T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1997-05-03T00:00:00Z", "expireAt": "1993-06-23T00:00:00Z", "price": 0, "purchaseAt": "1976-02-07T00:00:00Z", "trialPrice": 39}, {"currencyCode": "4f4lhBPbarbWEm8b", "currencyNamespace": "VtZcfVCPdQhim9QK", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1974-09-20T00:00:00Z", "discountPercentage": 60, "discountPurchaseAt": "1994-01-23T00:00:00Z", "expireAt": "1995-03-14T00:00:00Z", "price": 10, "purchaseAt": "1971-04-06T00:00:00Z", "trialPrice": 8}, {"currencyCode": "IlGJg9wdc8bihhWj", "currencyNamespace": "fZpfcFBUsnnDJlmD", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1988-09-08T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1993-03-24T00:00:00Z", "expireAt": "1988-01-13T00:00:00Z", "price": 73, "purchaseAt": "1995-07-29T00:00:00Z", "trialPrice": 18}], "1eI7Q5pu9PutLf6I": [{"currencyCode": "rvZoBGQbO4S3rURG", "currencyNamespace": "WUzPAE6SdV4D5jft", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1988-05-23T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1977-07-21T00:00:00Z", "expireAt": "1981-07-21T00:00:00Z", "price": 87, "purchaseAt": "1979-12-25T00:00:00Z", "trialPrice": 45}, {"currencyCode": "zc20O7FdsJP1G9ty", "currencyNamespace": "BTfERXdvgD1Qf7Ot", "currencyType": "REAL", "discountAmount": 61, "discountExpireAt": "1972-03-27T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1976-06-10T00:00:00Z", "expireAt": "1981-09-27T00:00:00Z", "price": 51, "purchaseAt": "1974-02-09T00:00:00Z", "trialPrice": 47}, {"currencyCode": "xZBRvxYnEBhXtAVx", "currencyNamespace": "Cd3meTrT7cF9oVCh", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1982-08-30T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1989-11-30T00:00:00Z", "expireAt": "1986-03-26T00:00:00Z", "price": 74, "purchaseAt": "1993-11-12T00:00:00Z", "trialPrice": 38}]}, "saleConfig": {"currencyCode": "UddwSSgxCu8zru1D", "price": 16}, "seasonType": "PASS", "sectionExclusive": true, "sellable": true, "sku": "YOHR5BWa9VzIkaQE", "stackable": false, "status": "ACTIVE", "tags": ["oWgFvdRhG9NwV3zD", "uqVlVTypcYPK8Ixr", "iUProNB6hI6IpGcT"], "targetCurrencyCode": "SZuxWl0Je4fJIyFA", "targetNamespace": "m3DQht4JwnPS2urJ", "thumbnailUrl": "qerobWMZGVL5KLTx", "useCount": 1}' --login_with_auth "Bearer foo"
platform-delete-item 'b8NhWWwaxyMchkt8' --login_with_auth "Bearer foo"
platform-acquire-item 'l5IPSrwrJl7wYIVw' --body '{"count": 60, "orderNo": "3NCo9yXlbQ52FTHT"}' --login_with_auth "Bearer foo"
platform-get-app 'Cj6SEAzT7TOpyiuv' --login_with_auth "Bearer foo"
platform-update-app 'vQUm29Iacq4XRLaA' '643nTMtXSAyejnny' --body '{"carousel": [{"alt": "0Ju13b6o5uB2XM6I", "previewUrl": "Hy7EEvHyLmcvrZZO", "thumbnailUrl": "dwe1x8RjU6Bi8JXE", "type": "image", "url": "2sUBBq2SimQQoLbe", "videoSource": "generic"}, {"alt": "YOJvxGRxUzrTwagH", "previewUrl": "7BMT1IZKTdNFVBQ1", "thumbnailUrl": "crBXAupATO8uXsqV", "type": "image", "url": "d6eqqsBVyONV0JRt", "videoSource": "generic"}, {"alt": "LYW3n4F3LD1EDwBX", "previewUrl": "w5uBYeQZOzATNSV9", "thumbnailUrl": "E9yyNb7yaLXzAVYy", "type": "image", "url": "BlIbuzm7DzJ20NFR", "videoSource": "youtube"}], "developer": "FSovTGXaMsq8ePN1", "forumUrl": "oco2jx8Upe8SjMvp", "genres": ["Indie", "RPG", "Sports"], "localizations": {"68whNBYl9iCqfW6r": {"announcement": "qGOQny4ij4ysYPon", "slogan": "b59gQffkNOmubxEJ"}, "r2qEAuJbpZSrcbc4": {"announcement": "LWfKaY5c1tP5TDuI", "slogan": "5f6m4KC07CnsZe32"}, "hqEcB1ExYMBb3ckv": {"announcement": "oaJYdMqGegcg3eRv", "slogan": "BZXN3cjIXmFWRJnj"}}, "platformRequirements": {"8xN7HDPTUEDPN1Kb": [{"additionals": "4UTPWDXTSb55g8LS", "directXVersion": "Ts7Nf95lGlPrf6ob", "diskSpace": "IdnI6Ag7eUYcYJ4Q", "graphics": "zXCmqr6gmPGaHP5S", "label": "VPvRLiDi0mNHb6Lx", "osVersion": "8eq8SGNwEQO8dYXv", "processor": "BSYvJBwb6CjZUMRf", "ram": "2VJetWsokvx3BHuT", "soundCard": "Eczr9KjQ3ttz8MTB"}, {"additionals": "t1xk9IyssSA8nP5P", "directXVersion": "Qjpzk2Tb7iYdmNZW", "diskSpace": "osrsVBPZ64j0HUON", "graphics": "scofwYLQcDvkaEII", "label": "PoJT83zEGXmVBZLy", "osVersion": "rH9J7BoysmaORLkP", "processor": "5hc2Fh04JTsqDTyn", "ram": "CewqJligLlRxOelK", "soundCard": "ykICRxF6HtlER2tx"}, {"additionals": "s4qrNARATn6KXOut", "directXVersion": "lYBbLhL8KXx25FZf", "diskSpace": "QIodVBqQsBpCJBIX", "graphics": "LGYcwWVRK6UKk5oz", "label": "rXA4HZHNyq9odanh", "osVersion": "R1Zrm3thUvV87yfk", "processor": "ycLSVdleSaAylsmL", "ram": "Ye2phYOgT5kDTyPl", "soundCard": "3dKF7NXEjrJMki8j"}], "vc3P8Gwjg3IOH0SD": [{"additionals": "HgYKqxJiFJdrmj5v", "directXVersion": "hzgsJwex7wq8ZPlX", "diskSpace": "NaUNgdY2vfJuje5c", "graphics": "PnmGjTvYa5Pqx1K7", "label": "qcAoijBPAp6EPb98", "osVersion": "8NzxrDKVpULjjiw3", "processor": "NeVG4DJi9DaMrc0W", "ram": "FgKjE945x2CPVYYG", "soundCard": "9WvoGmAmvaVV5Yfx"}, {"additionals": "nUNcwjr7gSGhnfuF", "directXVersion": "4WZiQVICVpWd3UM0", "diskSpace": "8gMXhdf3juXW4Jpr", "graphics": "Ib3CJCAtvSG8Cfa9", "label": "dzOJDGCTHIOFjeXb", "osVersion": "sSgR43kIDzxBwqRJ", "processor": "TzrHNZWUsq5lQo2j", "ram": "y29EJigqYhyVhURx", "soundCard": "1yPeczRpdk0HATGy"}, {"additionals": "lx2JG2KNGfhzfCTx", "directXVersion": "xrsRRLee3TcJ7DQI", "diskSpace": "i45aCDHN9mVug2zk", "graphics": "Vf6KgpKOcn3tMD9U", "label": "T67bOwugFDa6wUQv", "osVersion": "ehKqwCh86XmRkCEc", "processor": "fHDCdl59Wp9A3tXG", "ram": "ve6DdK6uvg8f2cIo", "soundCard": "Byk9fxtvsgeAxo57"}], "nKAbZpsbJ4Iu5KJ0": [{"additionals": "ynxGBlacDCdFe8AT", "directXVersion": "UqVxcSthrpnMUBsn", "diskSpace": "UfuQIcSbUt5UGkIn", "graphics": "FGpuUsdtq4dOwNES", "label": "zCEW9dUVhZjLftC3", "osVersion": "sCS8CpLCqPD9CeDE", "processor": "dCnnL6Kt1Bjj3b8Q", "ram": "M8Rr45ULqXQgvwD3", "soundCard": "PsKDJiWxQBwaS7rD"}, {"additionals": "Bf2S54phbdyGDt47", "directXVersion": "f9GWRlE9hqz6rjDN", "diskSpace": "o4rhjxUdMM83Wekq", "graphics": "fWv04vvn9bk5qr8q", "label": "s2mqtnGAqXUjNypF", "osVersion": "6MMqWpdEJsPoaIbY", "processor": "z8cK5jlpJdre5ur6", "ram": "yvWJDdvM7T7PX2va", "soundCard": "mIRZHzsIYOCUoiCX"}, {"additionals": "NjrdQL2jdx1eIba1", "directXVersion": "sB0HsJ06DzfbzRYt", "diskSpace": "4OVUyumBeIqdQGZC", "graphics": "5kM03HHijsQRj7N8", "label": "IAjmsonjj0ZR50BQ", "osVersion": "1U6aFD3O2kXQSc58", "processor": "zgZVl4gIF7v3qbZu", "ram": "9M3OxqVAT4H1lRZ9", "soundCard": "Z1JBrHRzEOtIxzPq"}]}, "platforms": ["Android", "IOS", "MacOS"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "CrossPlatformMulti"], "primaryGenre": "FreeToPlay", "publisher": "QJeFPghqamSc5y0X", "releaseDate": "1980-11-12T00:00:00Z", "websiteUrl": "eT7Mluexk87b9Z5B"}' --login_with_auth "Bearer foo"
platform-disable-item 'TsEA3EdmW8saabP4' 'xRowfNojzPXI2v0p' --login_with_auth "Bearer foo"
platform-get-item-dynamic-data 'rR3OEey0MkZwS6TY' --login_with_auth "Bearer foo"
platform-enable-item 'wNN3UYhic03qGEg5' 'fNzBVrjo3g8CfRwt' --login_with_auth "Bearer foo"
platform-feature-item 'yl1HeT7VEPgG40Qy' 'XzsOzgck078IghoQ' 'Bp2mWAOYksczxBS0' --login_with_auth "Bearer foo"
platform-defeature-item 'OBCa2vWadLmQtYKm' 'EMzicbuL2S3RiW8d' 'LTCBfGUdVEdvdQL7' --login_with_auth "Bearer foo"
platform-get-locale-item 'sVwcZ2PofaJoSqtr' --login_with_auth "Bearer foo"
platform-update-item-purchase-condition 'EOqxH46fRTSZoDdT' '0fefo74eg3Nt2c0r' --body '{"purchaseCondition": {"conditionGroups": [{"operator": "or", "predicates": [{"anyOf": 66, "comparison": "isGreaterThanOrEqual", "name": "RMDbUXBWTbpAogG2", "predicateType": "SeasonPassPredicate", "value": "JnBurh54CWbYb0Pe", "values": ["byt8b4DGscjwrizs", "FUgYwbaLvqvQ2Nbm", "DITuymTBjn3d2sFz"]}, {"anyOf": 79, "comparison": "isLessThanOrEqual", "name": "S3QaVjZF7Ax6115K", "predicateType": "EntitlementPredicate", "value": "as9S7ivHEoLbUMM4", "values": ["ETzRJZKMavu4Ul2I", "aieEbPSE7TGkeHsY", "7f1UreUpxEkXIbE1"]}, {"anyOf": 37, "comparison": "is", "name": "9oGBN1pYMBwbPZTl", "predicateType": "SeasonTierPredicate", "value": "Bh61hmWKSSrF35an", "values": ["ttgAI2QdWJFLmoPE", "gd8EMspOs8nkic9g", "DGvur19V18oIrUKX"]}]}, {"operator": "and", "predicates": [{"anyOf": 92, "comparison": "is", "name": "vyUMAAmIHYbsxG5N", "predicateType": "SeasonTierPredicate", "value": "6FXb88SbLOa21DiS", "values": ["ALzDNp1SZ58aDllw", "zTRHak1MXxj7Esrg", "Fsm0XXQJWszvTQEu"]}, {"anyOf": 25, "comparison": "is", "name": "00nml5BidsK9dCEz", "predicateType": "EntitlementPredicate", "value": "NcXXTUIggoH89QNm", "values": ["3m7jK5pxe82pgFiA", "I17UDb19R6H7r1ta", "S6piIzmc8rKrKEPG"]}, {"anyOf": 92, "comparison": "is", "name": "Acong6eNERUf8kjc", "predicateType": "EntitlementPredicate", "value": "yme06c6SKLc2mEC3", "values": ["IXl5XCbkOfHaGr5k", "dazlypvt6lSLfU7H", "ByGXPMqxj4hBgVY3"]}]}, {"operator": "or", "predicates": [{"anyOf": 87, "comparison": "isLessThanOrEqual", "name": "GRakUbcG7PcR4eiU", "predicateType": "SeasonPassPredicate", "value": "Idi55jNrGNT2VHTK", "values": ["BUjyXAn3bWQF6QcA", "WGTTD81xhNP4t6kY", "uIT5FwwHj0Ur5F2P"]}, {"anyOf": 16, "comparison": "isLessThan", "name": "pXIrgroixptZhckU", "predicateType": "SeasonTierPredicate", "value": "4RImNWVIJnhhwFDV", "values": ["NW8Yc481dYdvGxJA", "70wYS4Kj7Yi2VvoQ", "1VitaomvWTzdsW4N"]}, {"anyOf": 79, "comparison": "isNot", "name": "wgwMUSuC3Bajy3Bc", "predicateType": "SeasonPassPredicate", "value": "4VBCV9qJhWva2FPB", "values": ["ujX0geYCpGJM4sqs", "NF0Z0GkwxUNYyNwG", "PNJMiZXXOFwmGWAv"]}]}]}}' --login_with_auth "Bearer foo"
platform-return-item 'iKrknH0Y5mrQgLC6' --body '{"orderNo": "D2qsFiQHglUQMZi5"}' --login_with_auth "Bearer foo"
platform-query-key-groups --login_with_auth "Bearer foo"
platform-create-key-group --body '{"description": "WjMZfOadpgegCUjT", "name": "di1Ehr8OtqpNJ9R8", "status": "INACTIVE", "tags": ["gakZyUV7t73VnSFb", "uxd4KYZ0jk0UZdht", "nKu9oTc8pVkiyGsj"]}' --login_with_auth "Bearer foo"
platform-get-key-group '5JdXzRxfNEjUMTs8' --login_with_auth "Bearer foo"
platform-update-key-group 'WIObJBTsvsw76uIS' --body '{"description": "RX0bKVoWtoUW1P7o", "name": "cuBAldDSUS7Haa6u", "status": "ACTIVE", "tags": ["Qbumu2QHLyZNuysy", "M4OfCzdQCXMAWnf8", "7YPNOe9Eevf1fhMg"]}' --login_with_auth "Bearer foo"
platform-get-key-group-dynamic '1E2k7QLFrVgtX7y0' --login_with_auth "Bearer foo"
platform-list-keys 'fPOieDCow2zXyFFV' --login_with_auth "Bearer foo"
platform-upload-keys 'pM87yqEwEacQMTlq' --login_with_auth "Bearer foo"
platform-query-orders --login_with_auth "Bearer foo"
platform-get-order-statistics --login_with_auth "Bearer foo"
platform-get-order 'N4LKkxJ5v3SBafnK' --login_with_auth "Bearer foo"
platform-refund-order 'NiMPbFkFGA85W3HJ' --body '{"description": "kqgS2B37wwoPYOHi"}' --login_with_auth "Bearer foo"
platform-get-payment-callback-config --login_with_auth "Bearer foo"
platform-update-payment-callback-config --body '{"dryRun": false, "notifyUrl": "sxmsLBPBJuNLnWRr", "privateKey": "tW870qD88ZcduZSe"}' --login_with_auth "Bearer foo"
platform-query-payment-notifications --login_with_auth "Bearer foo"
platform-query-payment-orders --login_with_auth "Bearer foo"
platform-create-payment-order-by-dedicated --body '{"currencyCode": "7W20UZcDaiq0nEZ7", "currencyNamespace": "PyhqFJkDClOsKmfs", "customParameters": {"gJdmzsDPsWh1k0cQ": {}, "08NG6dX2TZkil67k": {}, "RngoUa83ECh1gqPe": {}}, "description": "S193TNNzot3sVli3", "extOrderNo": "GN2XTrFibRAhzzEW", "extUserId": "zWlTY70qdgJRvpZr", "itemType": "LOOTBOX", "language": "zyZ-ZFwB_EZ", "metadata": {"CXFffjJJxlgjzIhp": "gOoIOD74V21HWDAf", "vXwdxbyp4HAPbBbN": "PStVBUpKgOssFkz0", "F36piDYXeHZ7FHls": "3nyvconqbHQqKLQK"}, "notifyUrl": "e3xmj6s0GqsWncp5", "omitNotification": false, "platform": "rqbiKudv9z75SzoC", "price": 97, "recurringPaymentOrderNo": "QhO9IKBXDFQfXFD5", "region": "8sG6uDhFYlrzJBYS", "returnUrl": "eMuJfQecutjS029B", "sandbox": false, "sku": "Scwl4kNmCi15XTJT", "subscriptionId": "gCNNH7RtG5Xmo9Q0", "targetNamespace": "Wb07N17fkxZSc6Vb", "targetUserId": "E0AGcekjMNHuPXtz", "title": "8tXxrmzafMUguyDo"}' --login_with_auth "Bearer foo"
platform-list-ext-order-no-by-ext-tx-id 'N91uc28HoSpGt1g0' --login_with_auth "Bearer foo"
platform-get-payment-order 'GGbT4Hf2PPKOldkb' --login_with_auth "Bearer foo"
platform-charge-payment-order 'gX9CWJKwXXSbv5eg' --body '{"extTxId": "9q86IaDFjjx6uZer", "paymentMethod": "WbtwTX9gNRByjbE8", "paymentProvider": "CHECKOUT"}' --login_with_auth "Bearer foo"
platform-refund-payment-order-by-dedicated 'sT9DH3DfLCv8q4Th' --body '{"description": "mq09bBgPAYxrBE9j"}' --login_with_auth "Bearer foo"
platform-simulate-payment-order-notification 'lnTgtgW33wDwD9RK' --body '{"amount": 43, "currencyCode": "CFxbfbz4aQERziPL", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 69, "vat": 45}' --login_with_auth "Bearer foo"
platform-get-payment-order-charge-status 'hOqG5KDdUvk0LEi2' --login_with_auth "Bearer foo"
platform-get-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-update-platform-wallet-config 'Oculus' --body '{"allowedBalanceOrigins": ["GooglePlay", "GooglePlay", "Nintendo"]}' --login_with_auth "Bearer foo"
platform-reset-platform-wallet-config 'IOS' --login_with_auth "Bearer foo"
platform-get-revocation-config --login_with_auth "Bearer foo"
platform-update-revocation-config --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "CUSTOM"}, "durable": {"enabled": false, "strategy": "CUSTOM"}}, "wallet": {"enabled": true, "strategy": "CUSTOM"}}' --login_with_auth "Bearer foo"
platform-delete-revocation-config --login_with_auth "Bearer foo"
platform-query-revocation-histories --login_with_auth "Bearer foo"
platform-get-revocation-plugin-config --login_with_auth "Bearer foo"
platform-update-revocation-plugin-config --body '{"appConfig": {"appName": "vNtjJNQepUTGhwlY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "lPzlsCR5rVsyfcH7"}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
platform-delete-revocation-plugin-config --login_with_auth "Bearer foo"
platform-upload-revocation-plugin-config-cert --login_with_auth "Bearer foo"
platform-create-reward --body '{"description": "jP7HuGz3b5WAEvdR", "eventTopic": "F9bqMj4ro5B19VE8", "maxAwarded": 6, "maxAwardedPerUser": 3, "namespaceExpression": "c7OydVw0zCqoMZvp", "rewardCode": "IOO97DmQ5ZOzx6iC", "rewardConditions": [{"condition": "JTu60IifzMhkk5Px", "conditionName": "sjqbCKpMv2Yky9DY", "eventName": "kD2sIllFtBtXJKG3", "rewardItems": [{"duration": 37, "endDate": "1987-05-11T00:00:00Z", "itemId": "zaO3yJpA3KMxBlrR", "quantity": 50}, {"duration": 61, "endDate": "1981-09-09T00:00:00Z", "itemId": "iefGEdLucrtO2gCQ", "quantity": 59}, {"duration": 60, "endDate": "1998-05-20T00:00:00Z", "itemId": "57DrDlgC2nzS9SiG", "quantity": 95}]}, {"condition": "3kKoaP1K4CDuH1mM", "conditionName": "IfOCDyVAHrHncR5d", "eventName": "ShqiBUI9esSsXegS", "rewardItems": [{"duration": 62, "endDate": "1993-02-25T00:00:00Z", "itemId": "omqWsGA76yxi0QzZ", "quantity": 100}, {"duration": 92, "endDate": "1973-04-11T00:00:00Z", "itemId": "A9VOA8H9VeHv0L2A", "quantity": 4}, {"duration": 19, "endDate": "1977-05-29T00:00:00Z", "itemId": "960EYQEuGJVl8xs1", "quantity": 100}]}, {"condition": "qK8C403HgoXCR6XO", "conditionName": "MXwKdfqk8T4QHK30", "eventName": "EX0FclpDl5Hsurac", "rewardItems": [{"duration": 82, "endDate": "1991-10-11T00:00:00Z", "itemId": "MnjnxD1OXkxShFVQ", "quantity": 94}, {"duration": 44, "endDate": "1993-08-09T00:00:00Z", "itemId": "ekLfjmy8zosRCRgV", "quantity": 45}, {"duration": 3, "endDate": "1981-05-26T00:00:00Z", "itemId": "rtuWWrqTZbSqBSKp", "quantity": 32}]}], "userIdExpression": "AmgwhYzk33J34fiT"}' --login_with_auth "Bearer foo"
platform-query-rewards --login_with_auth "Bearer foo"
platform-export-rewards --login_with_auth "Bearer foo"
platform-import-rewards 'true' --login_with_auth "Bearer foo"
platform-get-reward 'fT22G5NpE130YWSg' --login_with_auth "Bearer foo"
platform-update-reward 'xpKWtdtdtVW9anEN' --body '{"description": "mxb9e7vXZV3ig8Jg", "eventTopic": "5VByeI3ycMcYYBix", "maxAwarded": 75, "maxAwardedPerUser": 51, "namespaceExpression": "JXCISQdwec1m8Bus", "rewardCode": "V9tUh74KVo6Xqjz2", "rewardConditions": [{"condition": "xUKLNWSmYyVvyelI", "conditionName": "J8QgaLMqi836ULa7", "eventName": "cfZl4VuY6rsZyo6C", "rewardItems": [{"duration": 57, "endDate": "1993-12-25T00:00:00Z", "itemId": "ogkewIzTOqKkcjRh", "quantity": 26}, {"duration": 23, "endDate": "1980-07-03T00:00:00Z", "itemId": "gAJOTCbx7J3gNLIl", "quantity": 94}, {"duration": 22, "endDate": "1999-09-19T00:00:00Z", "itemId": "Bpclrk4hIRn0znIK", "quantity": 53}]}, {"condition": "sGP6KLPXkvUv2XiX", "conditionName": "aBzsmaxjTZPlLity", "eventName": "tGka7Kv5TacQKF4O", "rewardItems": [{"duration": 24, "endDate": "1971-12-26T00:00:00Z", "itemId": "63KrcwIcXMhGy83X", "quantity": 18}, {"duration": 97, "endDate": "1981-01-07T00:00:00Z", "itemId": "boOLGCcg16DqwdQP", "quantity": 87}, {"duration": 42, "endDate": "1988-03-04T00:00:00Z", "itemId": "kSSV8e1MgTTLS2Fg", "quantity": 0}]}, {"condition": "3eTC0vzZUDj9dzGg", "conditionName": "GVxo9OHgfHumyfuB", "eventName": "NisecYbcOpR45VDl", "rewardItems": [{"duration": 44, "endDate": "1978-12-29T00:00:00Z", "itemId": "qn47GVghTH2wToOn", "quantity": 33}, {"duration": 81, "endDate": "1980-04-03T00:00:00Z", "itemId": "KvKyj3MqS7Dcmtfh", "quantity": 14}, {"duration": 27, "endDate": "1973-11-01T00:00:00Z", "itemId": "ObbrmgjhWK0x0Zid", "quantity": 54}]}], "userIdExpression": "6lWq6tEeUmU96FLE"}' --login_with_auth "Bearer foo"
platform-delete-reward 'ak0mJqjRYldcTpde' --login_with_auth "Bearer foo"
platform-check-event-condition 'CD9XPRi4bAQL7VE2' --body '{"payload": {"wL8Y4JFVUdzA8bvX": {}, "lDhG7BrorbKIKuOX": {}, "JPm5ztrr09CDA8Ij": {}}}' --login_with_auth "Bearer foo"
platform-delete-reward-condition-record '5bGKSuopWQbaCvdP' --body '{"conditionName": "Sq8Z27GpvHCDx55J", "userId": "Z5z6gujpFzlPspQD"}' --login_with_auth "Bearer foo"
platform-query-sections --login_with_auth "Bearer foo"
platform-create-section '9IRIpDDubntPCFxf' --body '{"active": false, "displayOrder": 30, "endDate": "1986-09-09T00:00:00Z", "ext": {"NdSWzOXjO1NQUqWH": {}, "BW78XREZCiTNAxq2": {}, "6gZrPqCsSDspvgM1": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 38, "itemCount": 87, "rule": "SEQUENCE"}, "items": [{"id": "rjnkH4ExObppC6CM", "sku": "YDm5ge659UDEOF6g"}, {"id": "p5UfmjtiVbqJnZcr", "sku": "qrPye7fCwi7Il2wI"}, {"id": "FlHm9N6owMHMtJy1", "sku": "Oqn59tEGm9NYeUT5"}], "localizations": {"P0nx8TqSZdZ5C8mF": {"description": "I9TnvzEqBNMF9CZv", "localExt": {"PxT5zbreMc9fBoU3": {}, "RHNDFjLKFrepy56e": {}, "W1kmb15QeIQF51c4": {}}, "longDescription": "MqJzDSvELgBe6dbo", "title": "SdhkBzAzPkt1efGJ"}, "eJaxyHYutgXucx85": {"description": "vHA009FAb21jxeWX", "localExt": {"k80y9uxgVLGgK8aV": {}, "SCN6oCETQ8gIDRdD": {}, "2wwMXwKVXGPhEJsc": {}}, "longDescription": "7rZpxaPHc9r8eToF", "title": "mkHJ6BPOKFLxIwKs"}, "sw647YwDudnGRufO": {"description": "UGfMjTU226l07jPl", "localExt": {"cYaqYM7YfBmhjI9Y": {}, "28qVceS9UX48dKPC": {}, "FUIeyYEymNXzNX6T": {}}, "longDescription": "Gh4UdEweeBsJEvBb", "title": "AvCmlh6Z1oz9Baix"}}, "name": "UUvmzbajE2gjooiD", "rotationType": "CUSTOM", "startDate": "1972-11-20T00:00:00Z", "viewId": "5RNB5dVCsB7xL4ax"}' --login_with_auth "Bearer foo"
platform-purge-expired-section 'SPgPCiwLxCFLDixZ' --login_with_auth "Bearer foo"
platform-get-section 'wVtt3RVTl0tR00oQ' --login_with_auth "Bearer foo"
platform-update-section 'gcHdGGK3x76U1EIc' 'klttmrpgF5szl0sM' --body '{"active": true, "displayOrder": 8, "endDate": "1975-06-04T00:00:00Z", "ext": {"3XrYZUiN24ol1qqb": {}, "algizL97ycJV5YqE": {}, "2myQzl7X9fHr6WvB": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 97, "itemCount": 26, "rule": "SEQUENCE"}, "items": [{"id": "fE9nbE2PMv12ZSRJ", "sku": "kujxbCu1HFaj6Vxs"}, {"id": "3GuA4S1dS7H7yIS7", "sku": "b5TSDRIoMg7Dc5AP"}, {"id": "zfzXDELJFaIaEMW5", "sku": "bhJyL72WDyhBsCCb"}], "localizations": {"nfihnXKxGxaupnTT": {"description": "q9ihZkvFKfSHQh8I", "localExt": {"9xk3sFl0cbuCRM69": {}, "XKkLwioRaKnWhlh8": {}, "0BhYe2fJDS6T75Q4": {}}, "longDescription": "ulonMFjmYqE1wJhf", "title": "ogWg2Apm0sUy18aW"}, "n65Co0vdCk8so6JS": {"description": "aZAIadKDEZywonA2", "localExt": {"SrEdN2tmGuX6r0gB": {}, "VUUeKKlPKtE6gnYx": {}, "mkmCWbs5qugklBUS": {}}, "longDescription": "6uwWrCQt86Jrg8tL", "title": "AJWpcyNkUvqn6eXr"}, "6FNbKJ05Orya6LSS": {"description": "UlugIAknXcSaVYcA", "localExt": {"Yp7qSiDvsfMUOpWv": {}, "46sXvpOjrpRo4mYr": {}, "CeQUnYoID2UqO0iA": {}}, "longDescription": "XA9dB4ib8HDOJ8TN", "title": "iP8KgEAj3dbRTI0i"}}, "name": "6dO3zkbDseh4tJdo", "rotationType": "NONE", "startDate": "1996-01-19T00:00:00Z", "viewId": "9j7rhZCAlDlVKBsL"}' --login_with_auth "Bearer foo"
platform-delete-section 'ZiBRXszE7CL1cQCS' 'oqHvH7g63cOx6yrI' --login_with_auth "Bearer foo"
platform-list-stores --login_with_auth "Bearer foo"
platform-create-store --body '{"defaultLanguage": "w37pKOLrF5i3gr3C", "defaultRegion": "c4M2O7NrTQO7KLdZ", "description": "DGwqx7T3l1ut2oyo", "supportedLanguages": ["lliYsTJUmpscwLcU", "ml3KuoMKh7tprnac", "A34xmIOjFLgKR4Lj"], "supportedRegions": ["EWhOScvtQ92iD02Y", "MvEUNfoL7JCcMo7G", "xxXdbYCRexPekTsQ"], "title": "xMTfaSot7aohFYy4"}' --login_with_auth "Bearer foo"
platform-get-published-store --login_with_auth "Bearer foo"
platform-delete-published-store --login_with_auth "Bearer foo"
platform-get-published-store-backup --login_with_auth "Bearer foo"
platform-rollback-published-store --login_with_auth "Bearer foo"
platform-get-store 'VxwHIJ9gzxqAw4vB' --login_with_auth "Bearer foo"
platform-update-store 'GQAeh0VTiTP4PSrX' --body '{"defaultLanguage": "US6jYI9lsQFD43Df", "defaultRegion": "5qUZOFzpFd6b5Jc5", "description": "TETHcup8GG0VCMTF", "supportedLanguages": ["J6svTyo9RHget5hz", "B52BDFopxUwkMuSq", "QnKzDgDAtqE3kuyb"], "supportedRegions": ["wTQFYEJjIYwqfSRy", "8GgVk77fd1GS5Yky", "hAiAItnWUmD225fp"], "title": "1egsx3ErheNwqd5p"}' --login_with_auth "Bearer foo"
platform-delete-store 'riclNNqLyrlzrJ4Q' --login_with_auth "Bearer foo"
platform-query-changes 'HbfnAdtkujxHff7n' --login_with_auth "Bearer foo"
platform-publish-all '1yaNCcjgFhS0URBh' --login_with_auth "Bearer foo"
platform-publish-selected 'l0L5FCbOn46W2B2u' --login_with_auth "Bearer foo"
platform-select-all-records 'PQLrt2t6bVpCgKvP' --login_with_auth "Bearer foo"
platform-get-statistic 'XSDufmKh783cV54J' --login_with_auth "Bearer foo"
platform-unselect-all-records 'sVBRB0rY0xfWddAC' --login_with_auth "Bearer foo"
platform-select-record 'yHSmo4KX9TPO3K1k' '5ZM8btmGsgXNXbpq' --login_with_auth "Bearer foo"
platform-unselect-record 'xh76Af5JSwjw2fE2' 'g6jXV7oai2oDm9Fa' --login_with_auth "Bearer foo"
platform-clone-store 'P0HJ98tE4UyoQg0b' --login_with_auth "Bearer foo"
platform-query-subscriptions --login_with_auth "Bearer foo"
platform-recurring-charge-subscription '0sGOkzxVt15LKmkQ' --login_with_auth "Bearer foo"
platform-get-ticket-dynamic '7YBhsOuJ0ypkkt2G' --login_with_auth "Bearer foo"
platform-decrease-ticket-sale '4eFh2YNsdoxpLTBM' --body '{"orderNo": "9Q8t829Ido1JyveS"}' --login_with_auth "Bearer foo"
platform-get-ticket-booth-id 'RiBq23kyH9jQbHWk' --login_with_auth "Bearer foo"
platform-increase-ticket-sale 'cVk0X28GS54vl7gI' --body '{"count": 75, "orderNo": "NfIZwrMxf3EnzZVn"}' --login_with_auth "Bearer foo"
platform-unlock-steam-user-achievement 'kLT0Lb85nmpdN26B' --body '{"achievements": [{"id": "Y5YI0jeO2zMDSy4k", "value": 51}, {"id": "V4UcYzswAGpXqQxc", "value": 39}, {"id": "CdiXu3iNvn7vLZ7h", "value": 0}], "steamUserId": "GaQ4OZ2nDodm4TNs"}' --login_with_auth "Bearer foo"
platform-get-xbl-user-achievements '8mAj6IKSYFdJwgZs' 'RPOzwuDSdGl1A2va' --login_with_auth "Bearer foo"
platform-update-xbl-user-achievement 'NeDiSqTfmAVg50kO' --body '{"achievements": [{"id": "dJagEmTuaxlxgywk", "percentComplete": 3}, {"id": "IoG1DBdoKH6sREmm", "percentComplete": 12}, {"id": "T4jyCVJ0V8obTlGV", "percentComplete": 94}], "serviceConfigId": "8m7Y3wiNloJfey3H", "titleId": "XL6SjljNPTXA3qbg", "xboxUserId": "55SyienCODZ0mnOp"}' --login_with_auth "Bearer foo"
platform-anonymize-campaign 'PTVxEgBFzG8tlkxW' --login_with_auth "Bearer foo"
platform-anonymize-entitlement 'KCU1XN4gl7yHvEqp' --login_with_auth "Bearer foo"
platform-anonymize-fulfillment 'JSrDXVwCkhOQ161T' --login_with_auth "Bearer foo"
platform-anonymize-integration 'FjROYJm75VIuCOCk' --login_with_auth "Bearer foo"
platform-anonymize-order 't2W1DfI8QtgODk9K' --login_with_auth "Bearer foo"
platform-anonymize-payment '6DcMnyCPn1FylWda' --login_with_auth "Bearer foo"
platform-anonymize-revocation 'NV1VaZTkbbuWiiA4' --login_with_auth "Bearer foo"
platform-anonymize-subscription 'UTDgS2SVEo5M80LL' --login_with_auth "Bearer foo"
platform-anonymize-wallet 'bku9GYH4ijqOVM50' --login_with_auth "Bearer foo"
platform-get-user-dlc-by-platform 'tCqkZfsSxAbDJ7sH' 'STEAM' --login_with_auth "Bearer foo"
platform-get-user-dlc '3Mjml6BpCODWGOLM' --login_with_auth "Bearer foo"
platform-query-user-entitlements 'mCZUeelXYyNrXwei' --login_with_auth "Bearer foo"
platform-grant-user-entitlement 'CnDldRPRfd6mLZ0G' --body '[{"endDate": "1994-03-09T00:00:00Z", "grantedCode": "JwEjoZrRtaeWKMC8", "itemId": "wsOByQAMAgqFEzEt", "itemNamespace": "8umj5XhKnw7MHDwF", "language": "lNw_Cb", "quantity": 27, "region": "PwVHUGcs1ACMvoY4", "source": "IAP", "startDate": "1996-09-25T00:00:00Z", "storeId": "Gko16XTqHc0cM7ix"}, {"endDate": "1979-10-16T00:00:00Z", "grantedCode": "Tjnxp5Cl8ggaEmCc", "itemId": "uK2hHviBEWpbusO6", "itemNamespace": "EyVqstpgZpbz77y8", "language": "Rrwg_cDga", "quantity": 75, "region": "OexAPzCG6ZKQClGc", "source": "PURCHASE", "startDate": "1977-10-05T00:00:00Z", "storeId": "6nbfM3J9G40Y62bC"}, {"endDate": "1978-08-08T00:00:00Z", "grantedCode": "941ALznQuHVskfCj", "itemId": "UK8GeX4Q0B2Cj0oO", "itemNamespace": "mBmXu1KiTTiz7yrI", "language": "fre", "quantity": 61, "region": "sN7bRwcr16lW5Ywg", "source": "IAP", "startDate": "1978-01-15T00:00:00Z", "storeId": "jlMMtPWg8217m7qN"}]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-by-app-id 'kQiKp2oac8QTNEuB' 'beuQqm9wM7mgTtUd' --login_with_auth "Bearer foo"
platform-query-user-entitlements-by-app-type 'PVcQijMBhs0kDP6d' 'DLC' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-item-id 'NFidImWONTvCPMGL' 'dbYEknHPKrZ7TiNB' --login_with_auth "Bearer foo"
platform-get-user-active-entitlements-by-item-ids 'E0HRsE0GHDOFjrfq' --login_with_auth "Bearer foo"
platform-get-user-entitlement-by-sku 'JcyxT2a7fCFAUzLE' 'LiM573TdtWjfVciu' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement 'LnLsBKGsALPuCOyp' --login_with_auth "Bearer foo"
platform-exists-any-user-active-entitlement-by-item-ids 'hUUAV95708zaP0wp' '["ZgQEvFzox9wHocX3", "DRWobEoGr8W97KBe", "dcr6PM51z7i0wQ9e"]' --login_with_auth "Bearer foo"
platform-get-user-app-entitlement-ownership-by-app-id 'gK2t46EG8I2lTviK' 'bOgVuN3nhkn6QIes' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-id 'NoYqvVsakylHikKk' 'pOjqwgKvfXXs8pDq' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-item-ids 'm31AZSRkuw6q8Fgq' --login_with_auth "Bearer foo"
platform-get-user-entitlement-ownership-by-sku 'G46RsFK7eYlSU3vY' 'cHZZjFegVnZOn0tk' --login_with_auth "Bearer foo"
platform-revoke-all-entitlements '4IATSIefcqNEn4IZ' --login_with_auth "Bearer foo"
platform-revoke-user-entitlements '0Dv6b8WtaMVvLbG0' '4KKnh3jvW0Qp3kTy' --login_with_auth "Bearer foo"
platform-get-user-entitlement 'L4CsLwiWUMcpxn4B' '6XoTNMuqZTHwo1IA' --login_with_auth "Bearer foo"
platform-update-user-entitlement 'JQpb6r8ZeaSHwQui' 'H3Ozu4G6bXxp0gYZ' --body '{"endDate": "1983-03-28T00:00:00Z", "nullFieldList": ["F9fJBJkSOrF9Dg4F", "cDwBGyBiHewZkwEe", "uzBBRSknxyWkZObu"], "startDate": "1981-11-30T00:00:00Z", "status": "CONSUMED", "useCount": 71}' --login_with_auth "Bearer foo"
platform-consume-user-entitlement 'g8sMuss76ezTrsDZ' 'NYUV48Oh6I45X7Hv' --body '{"options": ["UtPYONZdFk75lkjQ", "NHrjaboGomguUqeu", "Zh5qtrRbNnGejdTG"], "requestId": "vZgN5hshSe5YmZXK", "useCount": 62}' --login_with_auth "Bearer foo"
platform-disable-user-entitlement '8d3o7cTS9OIIMErn' 'NTLXHrsOFsbhRow4' --login_with_auth "Bearer foo"
platform-enable-user-entitlement 'iaYKy0IjsDgbJ37D' 'N2lDvdh7okHl1wMh' --login_with_auth "Bearer foo"
platform-get-user-entitlement-histories 't2Izq7TCUJhDsDef' 'AS09VyQB1vR1mx6K' --login_with_auth "Bearer foo"
platform-revoke-user-entitlement '17GL1CrO4ZuoGZSx' 'Tzm8oMSPIHPtqzIW' --login_with_auth "Bearer foo"
platform-revoke-use-count 'Izg8pbjnt1iBV8Dp' 'bjGts4UZDTfhAyZK' --body '{"reason": "hqilty9NVlgxUmnf", "useCount": 7}' --login_with_auth "Bearer foo"
platform-sell-user-entitlement 'Czyb8FkoxQbrPngi' '87K58pQswqKLutIN' --body '{"requestId": "usOsa92F6iwkJIYO", "useCount": 77}' --login_with_auth "Bearer foo"
platform-fulfill-item '7Yja1soDE1K0SvGr' --body '{"duration": 80, "endDate": "1991-05-19T00:00:00Z", "itemId": "wPmPXC2LfL2m5rP2", "itemSku": "A20t6foPPH94SUin", "language": "Y5diUlqgvY7dPPya", "metadata": {"hppgxJhk4EdTZ000": {}, "rS92594HLvWFsXHt": {}, "MP0k9L5dREQbCqfh": {}}, "order": {"currency": {"currencyCode": "0gpABFBER6WNcDOs", "currencySymbol": "RzBkf9A6HjCnFRdS", "currencyType": "REAL", "decimals": 83, "namespace": "hcvszzQLZBktk0si"}, "ext": {"Mup01kyaFwwD7wec": {}, "uQb4GNQHVZMKGBnz": {}, "h4suaGIzttTncVBf": {}}, "free": false}, "orderNo": "g3oeuHiNyLkfPQPm", "origin": "IOS", "quantity": 42, "region": "UkvSs5YmIejozmG5", "source": "IAP_CHARGEBACK_REVERSED", "startDate": "1994-05-17T00:00:00Z", "storeId": "GcMuV5phhU315LUC"}' --login_with_auth "Bearer foo"
platform-redeem-code '6HSMQ32UznXNd6ve' --body '{"code": "29lqqtcLJW9eTJvK", "language": "Eeyg_910", "region": "5fjNMZjKJ05puX31"}' --login_with_auth "Bearer foo"
platform-fulfill-rewards '97WrMnJtovSMFw8X' --body '{"metadata": {"4zxbdfXgunt1oMNZ": {}, "68eovHSH3xV3URIR": {}, "VDYBd6hMB0l7sg7I": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "EE4Jf4hQpsLOcLtZ", "namespace": "w0efmEVcW7mxbS5U"}, "item": {"itemId": "OoICxQMit8555Niy", "itemSku": "4NNFpRE5pS85yTIR", "itemType": "WvLRy58UKWPv3F7S"}, "quantity": 20, "type": "ITEM"}, {"currency": {"currencyCode": "mpat75rVbN9ZBtzJ", "namespace": "33tCwv8H1f451FVZ"}, "item": {"itemId": "630HNBYZSrz7pMjE", "itemSku": "SLLMPKDXLki6Oz5B", "itemType": "ygt8Q0RjSf1srB7h"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "UFqTooGGnPEgY0t7", "namespace": "QQWl42byOwXgKyPh"}, "item": {"itemId": "Xmcysae8HpWH4xiz", "itemSku": "3fWthJSu2pUIIuPL", "itemType": "FAtcWhjAP57QbWvS"}, "quantity": 91, "type": "ITEM"}], "source": "ORDER_REVOCATION", "transactionId": "XNHEPpzlMlx7b2H2"}' --login_with_auth "Bearer foo"
platform-query-user-iap-orders 'THLwZGikW7TFA9gE' --login_with_auth "Bearer foo"
platform-query-all-user-iap-orders '6SrYKq6lcVOhPJIc' --login_with_auth "Bearer foo"
platform-query-user-iap-consume-history 'EHbiKHW7flVolAWE' --login_with_auth "Bearer foo"
platform-mock-fulfill-iap-item 'MmQSPDTRqjlvwnnC' --body '{"itemIdentityType": "ITEM_SKU", "language": "UaF", "productId": "5ushaKTPVjyOUpR3", "region": "uUdgNlyU4IJnqtrj", "transactionId": "COsE8VjvzhJwNX4b", "type": "EPICGAMES"}' --login_with_auth "Bearer foo"
platform-query-user-orders 'weR7tJW3MLMob1hU' --login_with_auth "Bearer foo"
platform-admin-create-user-order 'nIzIpUM8KK1kGFN0' --body '{"currencyCode": "NUNGKxdlAUDFQuGP", "currencyNamespace": "zAuT7M6OBrNwioKn", "discountedPrice": 2, "ext": {"PVZaDcXsV1TnsZio": {}, "DiBgprzahPB0FKMa": {}, "0YeyNBQWUHDBnBee": {}}, "itemId": "Pkqg6Zt1Lr5BlO8K", "language": "6LH4dSaa8XYHug51", "options": {"skipPriceValidation": true}, "platform": "Nintendo", "price": 12, "quantity": 66, "region": "AQ1jvXYBar5RMmmG", "returnUrl": "dWl0wpj5tVfKU3D8", "sandbox": true, "sectionId": "Ph0Z7YiGE2cyzTMB"}' --login_with_auth "Bearer foo"
platform-count-of-purchased-item 'Y7Xd0OoENg2Lw7ue' 'pmahXojVZYz2zMU9' --login_with_auth "Bearer foo"
platform-get-user-order 'jLzNV3GaG43R6nlR' 'PrEAYqRBeSc5uSho' --login_with_auth "Bearer foo"
platform-update-user-order-status 'j3dGHMeoi5DBOsQ0' 'Gax0iX05IT9Agsjl' --body '{"status": "REFUND_FAILED", "statusReason": "0NkJFQxuMHnfOlX6"}' --login_with_auth "Bearer foo"
platform-fulfill-user-order 'HYVEiaereFCPJU2w' 'EzUYUTmZ8JSMeNmR' --login_with_auth "Bearer foo"
platform-get-user-order-grant 'ocp400RZe8Bzx9aG' 'EI22BTCZs97TJI8G' --login_with_auth "Bearer foo"
platform-get-user-order-histories 'PrM24F3celFgM62H' 'QtgzQhO3nR8j8DlP' --login_with_auth "Bearer foo"
platform-process-user-order-notification '6OGbn8vmfMYGLt1A' 'jKhh3JMX7xSrz1EH' --body '{"additionalData": {"cardSummary": "6X2SM3xzsNrJzWBc"}, "authorisedTime": "1972-09-29T00:00:00Z", "chargebackReversedTime": "1987-04-04T00:00:00Z", "chargebackTime": "1984-04-29T00:00:00Z", "chargedTime": "1990-03-14T00:00:00Z", "createdTime": "1978-06-05T00:00:00Z", "currency": {"currencyCode": "AsOlfLB1J19b5rTf", "currencySymbol": "iL2P3r1a8KIJH33a", "currencyType": "REAL", "decimals": 85, "namespace": "2uz3c8pz63M0g4xX"}, "customParameters": {"T5Ts4e0uR47OzUGH": {}, "eBKtpvyRNgjZkdDp": {}, "pvEJiUiDGXgh8BKc": {}}, "extOrderNo": "LqtRZ93LuR8OEyIC", "extTxId": "vwgwBFehwtdJLdn3", "extUserId": "R2wo8beVQvgeP9qO", "issuedAt": "1988-08-23T00:00:00Z", "metadata": {"aLwYnXxrz7sLmP70": "LxN0f3JA27Qz5Sjz", "QfOLYu9O46OOzz9p": "57qSpHerzO87cg7T", "qtMiQgi7Aj28qCRb": "wwZc4ZS1NMkrnHs1"}, "namespace": "Iyhwqk140MolIrnl", "nonceStr": "kRVbcX435TDYpkk2", "paymentMethod": "Gza6DrSycophHw3E", "paymentMethodFee": 29, "paymentOrderNo": "fSESkM19OPMBb12g", "paymentProvider": "STRIPE", "paymentProviderFee": 25, "paymentStationUrl": "jiNMu9QVrMeD4bD8", "price": 13, "refundedTime": "1980-10-08T00:00:00Z", "salesTax": 23, "sandbox": true, "sku": "E34yIAZQeigiA3wB", "status": "CHARGED", "statusReason": "626POXWVj3KP1mX0", "subscriptionId": "iYHXBU3Uk2tQm307", "subtotalPrice": 71, "targetNamespace": "lTtuJJsHZVsG6izJ", "targetUserId": "ZruOJvSRFLDSdj8e", "tax": 22, "totalPrice": 2, "totalTax": 36, "txEndTime": "1981-01-10T00:00:00Z", "type": "HvDU91DmHzwiqVPC", "userId": "J5j18Ou3aY8nceFU", "vat": 3}' --login_with_auth "Bearer foo"
platform-download-user-order-receipt 'GKmcEKp8AQwqgJs6' 'O0Qj0ccMkdz6zPz3' --login_with_auth "Bearer foo"
platform-create-user-payment-order 'BVHAqp4O9XSjap24' --body '{"currencyCode": "esyjh6Wc3migf2n6", "currencyNamespace": "iQyr5cb5YL6fwBia", "customParameters": {"VPmmn0T5uzlmi2NY": {}, "26xrkPPdg3pXjmtp": {}, "NfCrIj9ntYo3dupU": {}}, "description": "HNu8abrVVOKxr9Pa", "extOrderNo": "315FKDjG2ApSV94J", "extUserId": "y6yCSXBqJqjAbVwS", "itemType": "APP", "language": "Px", "metadata": {"1ugjr8mPkr3tZ506": "ERSVy5M3rrkxu0U9", "h9gCNVZxHGxhZqNX": "J6JXSh0Z3SWISs1d", "YrJKmx1BT6iLFQej": "NZJNF2hm0TqBQprH"}, "notifyUrl": "n3whPKU5abnqw8fF", "omitNotification": false, "platform": "kKc6VNU8570siWm3", "price": 97, "recurringPaymentOrderNo": "yuLcZoEkPpqKhP2j", "region": "WnRTglw0gdWoE4es", "returnUrl": "uiDrquccz4J6fFQe", "sandbox": true, "sku": "wKDtVmrYQu7hZvHf", "subscriptionId": "iT9s9pK8HuUY1QQH", "title": "Q0NCEddJtx6GV01v"}' --login_with_auth "Bearer foo"
platform-refund-user-payment-order 'D7lNLxlpvqaB9P9G' 'aukfCEIeSBLhTfzi' --body '{"description": "gzHcRuJgYaj4I8Dz"}' --login_with_auth "Bearer foo"
platform-apply-user-redemption 'yh1N0JEKNoMtHvjM' --body '{"code": "7X1fjzknv2HZMIL2", "orderNo": "P2bh14LroFTnAuuj"}' --login_with_auth "Bearer foo"
platform-do-revocation 'PeP9N0vdVB5a2XkS' --body '{"meta": {"3XQfMuzZh4AhZRe2": {}, "hgU56xtyJtnbTDXu": {}, "7FbleSP5PcdOuq0m": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "System", "currencyCode": "rvakR8rcwojLRjhc", "namespace": "aJ56nGlYZ2tod2BG"}, "entitlement": {"entitlementId": "BXjNyRCtPOr1FU3Q"}, "item": {"itemIdentity": "Zy3gdDms3kb1htW0", "itemIdentityType": "ITEM_SKU", "origin": "System"}, "quantity": 74, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Other", "currencyCode": "wQZlXuzu3m9u67Jj", "namespace": "CDwg186hGWKfO9Mn"}, "entitlement": {"entitlementId": "oT3t99HmcxzjDhTr"}, "item": {"itemIdentity": "cBKtU956hOg8oukD", "itemIdentityType": "ITEM_ID", "origin": "Epic"}, "quantity": 62, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "GooglePlay", "currencyCode": "M36mI9u3EeZtLQij", "namespace": "2JXsqdXfhZTTaCeq"}, "entitlement": {"entitlementId": "Gv7meuQhJuq1C6JH"}, "item": {"itemIdentity": "kWMSUbqByWN2BCnR", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 2, "type": "CURRENCY"}], "source": "OTHER", "transactionId": "ur0B9jKaunAcylsa"}' --login_with_auth "Bearer foo"
platform-register-xbl-sessions 'u7wRQmL4i3eRyIEC' --body '{"gameSessionId": "EDa1I4lwXqwPfq3V", "payload": {"zHQjtolx64w1gyvj": {}, "acKtGqxMnoAXRlcq": {}, "0mYWKQYlqMmu2pvF": {}}, "scid": "6rP03bQaq1cT88H6", "sessionTemplateName": "RCW8gJmGzDlqxtLs"}' --login_with_auth "Bearer foo"
platform-query-user-subscriptions 'R2AGOiPhNt2IdH8a' --login_with_auth "Bearer foo"
platform-get-user-subscription-activities 'YYUT6mma833TDzk6' --login_with_auth "Bearer foo"
platform-platform-subscribe-subscription '6ix88sAUrXr7MXxC' --body '{"grantDays": 45, "itemId": "V104MtMhKHmSjqPu", "language": "QZX5KjdNrEwfWo2M", "reason": "wulLg4bsO4YHEYLj", "region": "TSNDf3zazm6p5Y1t", "source": "kG9WwU4Ty6Ch5QYy"}' --login_with_auth "Bearer foo"
platform-check-user-subscription-subscribable-by-item-id 'FjuBquE7xssm4hxc' 'zskbSUbOZ9WNl3ap' --login_with_auth "Bearer foo"
platform-get-user-subscription 'JmNAbl1g5ZmTTGYR' 'bP4QVey9pEz1TV5c' --login_with_auth "Bearer foo"
platform-delete-user-subscription 'UtPBsw01i5Mf7Wvb' 'NSeeDNfUESLlwHv3' --login_with_auth "Bearer foo"
platform-cancel-subscription 'JgteOLyKp8a1VqxX' 'nRhDd9TGkO6aIYqf' --body '{"immediate": true, "reason": "Gv9fQXkErF0drbYr"}' --login_with_auth "Bearer foo"
platform-grant-days-to-subscription 'rFQP6rW62CtetBW3' 'pvAJJieHhveGg97P' --body '{"grantDays": 94, "reason": "txzvYwv7atn9EQv2"}' --login_with_auth "Bearer foo"
platform-get-user-subscription-billing-histories 'Oj8TFNeGtJGjKbMg' 'CeuAYuzrmbWofEaK' --login_with_auth "Bearer foo"
platform-process-user-subscription-notification 'StqdKu4ROnONpJ84' '9chqeiUGQMwNwDlY' --body '{"additionalData": {"cardSummary": "Sli3p8YaAdel3hHM"}, "authorisedTime": "1994-11-05T00:00:00Z", "chargebackReversedTime": "1979-08-09T00:00:00Z", "chargebackTime": "1975-06-02T00:00:00Z", "chargedTime": "1976-01-21T00:00:00Z", "createdTime": "1972-09-27T00:00:00Z", "currency": {"currencyCode": "M7FVDCBcvVegrZdd", "currencySymbol": "P8lLQo6tHj4z4cAM", "currencyType": "VIRTUAL", "decimals": 77, "namespace": "9BYRHrVTehrqgvEt"}, "customParameters": {"Es2LpE0qfbvdU8hl": {}, "DoC9FnxqBlPBYJ7X": {}, "6uVy7FWTSfMi2CPV": {}}, "extOrderNo": "GxjcdpdCqVeePMSq", "extTxId": "b8y8qJTUQY40Zrpn", "extUserId": "0vAD9YsPeDWrAVQZ", "issuedAt": "1994-07-18T00:00:00Z", "metadata": {"vgWuCuLsUGrVQAbh": "S54ZuQHKersDmJLU", "HAKtfXCKOna8Ddjt": "Zhh6ofsUoRh6r0e0", "J6vyqPw7YlmV3kES": "0Hi88UYgSV40OvY7"}, "namespace": "apPCrN5bEhmuHgKe", "nonceStr": "WizEpw1zN0mOYgGh", "paymentMethod": "HMz9dddLWJWDuSYt", "paymentMethodFee": 59, "paymentOrderNo": "LyH9kcSBdk7MwQzn", "paymentProvider": "PAYPAL", "paymentProviderFee": 77, "paymentStationUrl": "TYoMDAaUXSuBQdvd", "price": 14, "refundedTime": "1986-10-15T00:00:00Z", "salesTax": 44, "sandbox": false, "sku": "e0Z2G2N09VIbbsz2", "status": "AUTHORISE_FAILED", "statusReason": "fQKDZX6plErw0Gb0", "subscriptionId": "ceCbphW4YMhJ0S50", "subtotalPrice": 4, "targetNamespace": "S48Hxu8Ju4XSAnlX", "targetUserId": "RYB9BgSZBvkehRn8", "tax": 26, "totalPrice": 56, "totalTax": 77, "txEndTime": "1998-04-17T00:00:00Z", "type": "KQn77hiP1lzkzjYD", "userId": "w6mLBordrJkD6vy6", "vat": 64}' --login_with_auth "Bearer foo"
platform-acquire-user-ticket 'uRMT1Xw9K9Yb68a8' 'ygYx2TqkhlqMnE9W' --body '{"count": 20, "orderNo": "zXhkrN4pWryt4XTN"}' --login_with_auth "Bearer foo"
platform-query-user-currency-wallets 'wpp0ni1YfIgLZ4YI' --login_with_auth "Bearer foo"
platform-debit-user-wallet-by-currency-code 'zElrLZOBLHCKmLBa' 'IwlokbAFW8RgBUwB' --body '{"allowOverdraft": true, "amount": 51, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"qM8UzvKqeoTiNKGR": {}, "UMrimGAz6OhmHOpC": {}, "dr3WzDm3hJdd6uaO": {}}, "reason": "9TiTPnIh2iaIBpYC"}' --login_with_auth "Bearer foo"
platform-list-user-currency-transactions '4txul6VKYlNYYlHP' 'wKDpJmkeoAkp3Z4p' --login_with_auth "Bearer foo"
platform-credit-user-wallet 'gyJYwclb4gd4QgQu' 't2hiPuDdOPHcN9dr' --body '{"amount": 47, "expireAt": "1988-05-15T00:00:00Z", "metadata": {"nfs4tLVOYQCWMktm": {}, "iKd9vLPP0w52JRAZ": {}, "xMWdoleYNHXeOpaR": {}}, "origin": "Steam", "reason": "5WVuE5cYVP9tQSa2", "source": "IAP_CHARGEBACK_REVERSED"}' --login_with_auth "Bearer foo"
platform-pay-with-user-wallet 'BnPyq3I1BLtGEZDR' 'Nkk4DJUofJXK8RGS' --body '{"amount": 37, "metadata": {"zCYRVmbfzwUmsy0s": {}, "tUmKdXiiTObNdqkW": {}, "a13g3pgHx6uPf6jQ": {}}, "walletPlatform": "Epic"}' --login_with_auth "Bearer foo"
platform-list-views --login_with_auth "Bearer foo"
platform-create-view 'gdDTDb3WdnOpzTrR' --body '{"displayOrder": 52, "localizations": {"OusNEHcI95GGdJvu": {"description": "cDbs6UdccuM2ykRj", "localExt": {"3WnyAaUaQBKFedL2": {}, "uduXvZUbQQ13FhD3": {}, "NExUFipJsUiDawAj": {}}, "longDescription": "gHFQk0VzWRNFNiUn", "title": "2yXMSCcHADYpS861"}, "c0CJ7LzpFvOSF6xK": {"description": "A6yrnvXY5dDwneac", "localExt": {"75C6S2eHsH4Y84hL": {}, "75QboMHCtzEF9FSe": {}, "g6WYgtfuqJHrs4e3": {}}, "longDescription": "RnWR30MdBZezfwc3", "title": "H0qSbMq4GLj8aGsH"}, "0qE5p601ak59yFSf": {"description": "dZIv8oYWPUS4Zu0S", "localExt": {"bTt6M2XizikCh6q0": {}, "yq2WAHtL7IWE3MFq": {}, "vfDG5jvMOaXrDlEX": {}}, "longDescription": "42U0syrGNhBmgT2q", "title": "0kIbrJ2S5Pf1Lvg8"}}, "name": "kYEVylINJpxFY8E6"}' --login_with_auth "Bearer foo"
platform-get-view 'pU8eHjh0aTjIOaQt' --login_with_auth "Bearer foo"
platform-update-view '0snbE0yMvqF7TJ9u' 'B0zypjJiu7BIimNu' --body '{"displayOrder": 45, "localizations": {"U43K8bihdw3prp0U": {"description": "HlWUxkBefhxRtrqb", "localExt": {"v56oqwnCLVc2qHZu": {}, "uedbBOd19DqZJRYV": {}, "1oqNLmPAUIMwa2wY": {}}, "longDescription": "q6DsUq38bYvaWLoK", "title": "zHnngdfFnOfY9stX"}, "H6LYXXMndxBPKmHV": {"description": "B7cNzHhvxc4xAPZ8", "localExt": {"6WNnQOhusPn4466u": {}, "8agb5HPsBU0Eo6QJ": {}, "9vBRJ4UP09fabC01": {}}, "longDescription": "Thm9f4AWpyiKVT3O", "title": "vEujx5yjtQSCJaOH"}, "zpb623EciYoYOPVg": {"description": "6DLEZ6DxpwBm2N8P", "localExt": {"dQ5mQaGXEbnmWR0H": {}, "3EkrHqaLNdfKszYZ": {}, "zOg113h6fIaHSx5b": {}}, "longDescription": "ClxUOBmMwv5pmiIV", "title": "nhlLoMemsp7o3F2L"}}, "name": "Qw7Y2VdSxgXez7Vv"}' --login_with_auth "Bearer foo"
platform-delete-view 'S0C9JLVQQPa7PPx4' 'Zi6WaC8wk7HMbJhN' --login_with_auth "Bearer foo"
platform-bulk-credit --body '[{"creditRequest": {"amount": 47, "expireAt": "1995-08-20T00:00:00Z", "metadata": {"gf5nlMDORYuXnPNJ": {}, "gayPFcyUnKXA3mcy": {}, "MmX6WF8jtNAVOYqS": {}}, "origin": "System", "reason": "mZRTtgycLzXz6lUM", "source": "REDEEM_CODE"}, "currencyCode": "P4VPzhcH4UJrrCKv", "userIds": ["rOAi7lMgkVWJYzSC", "IDxWUxgOzeRNHIqK", "5PT404mFw4HJv5T2"]}, {"creditRequest": {"amount": 23, "expireAt": "1990-10-09T00:00:00Z", "metadata": {"OFES2J2OzNlJE3uq": {}, "Zz574g31cA0PwZxT": {}, "IZVSGQyTzhs9Asy4": {}}, "origin": "Epic", "reason": "JVzF1Oi2sQuWUBBH", "source": "SELL_BACK"}, "currencyCode": "Bs056jkPCUuE1pgd", "userIds": ["lKT5EIHNhJQq94Re", "5IM1akNKz9IltQUk", "HvlQKiR7SDQUDavO"]}, {"creditRequest": {"amount": 42, "expireAt": "1981-04-18T00:00:00Z", "metadata": {"zMTMSwrNov2GW9i5": {}, "4JY23AUWFTLq0W1J": {}, "qwKs1mO80L7IOHlf": {}}, "origin": "Epic", "reason": "j8PZOzUiQKZqz5NS", "source": "GIFT"}, "currencyCode": "n7lttd21cS6IVE4f", "userIds": ["zwG3BHaRcZ8NK4gk", "LmvEOaRcqTgF0xtQ", "AXoDoFkmA3fgzcwd"]}]' --login_with_auth "Bearer foo"
platform-bulk-debit --body '[{"currencyCode": "gJMjIyGfiNBQy41M", "request": {"allowOverdraft": false, "amount": 15, "balanceOrigin": "Playstation", "balanceSource": "OTHER", "metadata": {"5St4v8ry8IyqNVv0": {}, "KVpXJTMx3Y8Um1iq": {}, "ehObg3OZ9j0HDtbq": {}}, "reason": "MFlgHKQIRtLfPngD"}, "userIds": ["A4QUKSJgECzvaWUC", "83roOeqE7fcCAeEx", "eQX43LpmdMiZeyIr"]}, {"currencyCode": "A7wKru7ry3AQ2sEH", "request": {"allowOverdraft": true, "amount": 65, "balanceOrigin": "Oculus", "balanceSource": "ORDER_REVOCATION", "metadata": {"WzbqwTZQIN5jC6a8": {}, "mEVCXHmFnrSL0PJc": {}, "ZQaCeNLYxMID9pqZ": {}}, "reason": "5rryiMMt6fQtLhzy"}, "userIds": ["laquioT3QBt29AiR", "ASsuFM4ahGw7XcF1", "Qwzz606UGXPhoNZl"]}, {"currencyCode": "XMef7AvS3TfKx6By", "request": {"allowOverdraft": true, "amount": 51, "balanceOrigin": "IOS", "balanceSource": "DLC_REVOCATION", "metadata": {"rXu9czsYr3cFeVw7": {}, "0xdNTuOdLKK0M2B2": {}, "hbqJin37P69t1Kqe": {}}, "reason": "Gz7qbPnXEuOzzkoB"}, "userIds": ["9ddxzLPV8wDjsnyP", "Ik7vCEq7FQ2S5VeW", "mMR9C4qPqJrAdh1H"]}]' --login_with_auth "Bearer foo"
platform-sync-orders 'h5yNbYXmlAOi1SC3' 'I1SjkH42LtyZKrTJ' --login_with_auth "Bearer foo"
platform-test-adyen-config --body '{"allowedPaymentMethods": ["o0L5sHil4Q0mqa8G", "atrjbJ5YT7uvqarT", "vrG1DXZAWlvz3c3X"], "apiKey": "ALMresGFfsH4aXCD", "authoriseAsCapture": false, "blockedPaymentMethods": ["zXHUvxhvTZcvRKoa", "M4ozSAg8FTLrByWO", "JhbocoGlPzdfxcC3"], "clientKey": "rpWhSpq0InxMLpP7", "dropInSettings": "n7M3JXjEvsj5WcQ9", "liveEndpointUrlPrefix": "9M1yuXeqV31LX2eh", "merchantAccount": "cMnM6QtjzQjDlUMC", "notificationHmacKey": "GnxZwak7KHnzGASm", "notificationPassword": "VzePIroz41oQCuXe", "notificationUsername": "TRyJQrNLTcqLVTN5", "returnUrl": "Qf4tjPGpu27yxb1o", "settings": "f79zVTWIfgdNphqe"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config --body '{"appId": "9fS1m77MAg4KoZQP", "privateKey": "LhDSJx9jzxaRKph4", "publicKey": "kiIFgS4fLqlrKGiS", "returnUrl": "3XxjkyNfj3XgTRTj"}' --login_with_auth "Bearer foo"
platform-test-checkout-config --body '{"publicKey": "I9oNBzgQ4CRwg0sK", "secretKey": "VeSpMny0GrvKI5EV"}' --login_with_auth "Bearer foo"
platform-debug-matched-payment-merchant-config --login_with_auth "Bearer foo"
platform-test-pay-pal-config --body '{"clientID": "B9ZFzLNsjdCFtKY0", "clientSecret": "KsxR0rCFkyiQZfMn", "returnUrl": "TbKdwNhiIP7dpJ8B", "webHookId": "8VwFQnVco2oCn1Kv"}' --login_with_auth "Bearer foo"
platform-test-stripe-config --body '{"allowedPaymentMethodTypes": ["JmbjapW9UlEqtzDd", "7SgxdxB5kvtM8ah9", "bPsksceGUEX8ERZc"], "publishableKey": "KSYLo6y7yJMowQ6L", "secretKey": "pHCvCYTgX9JQwErz", "webhookSecret": "jtuP9pUUv7qefNMF"}' --login_with_auth "Bearer foo"
platform-test-wx-pay-config --body '{"appId": "sZAIqak1zi0JSa5c", "key": "Rn31D8ubfdXi7Byc", "mchid": "DPckeGJUgU8bD5mG", "returnUrl": "FFmKTTUxG0mpmFxx"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config --body '{"apiKey": "DNXGlGJvHf558h1l", "flowCompletionUrl": "tyhiSGhfqXhxBJ7z", "merchantId": 78, "projectId": 10, "projectSecretKey": "XioAGkWgSDdDQvpR"}' --login_with_auth "Bearer foo"
platform-get-payment-merchant-config 'fGe3z2rtjWpJAlKH' --login_with_auth "Bearer foo"
platform-update-adyen-config 'F0ebxhJ1176CeD4d' --body '{"allowedPaymentMethods": ["WCp4wqlQJcZroNQi", "efBnPluOIjZyvlGD", "QGv6pNNowEuVVZM2"], "apiKey": "8w4mnYvvlt1es7A4", "authoriseAsCapture": false, "blockedPaymentMethods": ["duN4gx0UC6eWKCFG", "S97Si6XyLVPrkUxy", "Z1OH5Nn4nMT8QOyT"], "clientKey": "uUSD9ImtaPAocOQc", "dropInSettings": "pBWSNrCjSNEAdojk", "liveEndpointUrlPrefix": "CMmYyTGO07foRZ6F", "merchantAccount": "ujpIWo0qJtqp4Q6X", "notificationHmacKey": "gICLgMHcP1eE6sjW", "notificationPassword": "QllYsONpp6QGW56C", "notificationUsername": "NiszHE69D1MMoaf6", "returnUrl": "KlgRtwaM2IoyY1wp", "settings": "IdjcAtTj1IMuuhxx"}' --login_with_auth "Bearer foo"
platform-test-adyen-config-by-id 'lulfmya73hX0a8Ri' --login_with_auth "Bearer foo"
platform-update-ali-pay-config '85PA9wNpmrK5Y5he' --body '{"appId": "A2ewWnFcqHxXP3kR", "privateKey": "htrBcBofWTGYx2ih", "publicKey": "gioL8VvEzHGTt9em", "returnUrl": "dCLmzJbdkykVAnmn"}' --login_with_auth "Bearer foo"
platform-test-ali-pay-config-by-id 'RfUilcKA84d9pMsl' --login_with_auth "Bearer foo"
platform-update-checkout-config '7zrNJvDiP2hNNEI8' --body '{"publicKey": "QrQ6H1ro5CtU8Ujg", "secretKey": "yCUpM1JBcTzf4dz1"}' --login_with_auth "Bearer foo"
platform-test-checkout-config-by-id 'BojPoQg976409vFd' --login_with_auth "Bearer foo"
platform-update-pay-pal-config '5z9r4nJWUvLp1wxG' --body '{"clientID": "F747468MXUq3uIff", "clientSecret": "kIpPmrWVxNZUvkiU", "returnUrl": "2jXSwsBBRopVl38d", "webHookId": "4NZGtk6EmWxC75M8"}' --login_with_auth "Bearer foo"
platform-test-pay-pal-config-by-id '8TKhFYkA9aRNDe2I' --login_with_auth "Bearer foo"
platform-update-stripe-config 'oPMSQKcg0OTT9JA0' --body '{"allowedPaymentMethodTypes": ["ll1RimBCiQwuyrI8", "7uSyXP6C0jXS8au2", "wcWYyj3JvHqXp4JR"], "publishableKey": "7xI59Z9tfGVsglnO", "secretKey": "xOXBfgBLuglkd9LI", "webhookSecret": "oshGnFSuHmrqej8P"}' --login_with_auth "Bearer foo"
platform-test-stripe-config-by-id 'RppYY1vlV0M2g6or' --login_with_auth "Bearer foo"
platform-update-wx-pay-config 'eqyBzWzCgMMWZuD6' --body '{"appId": "tmIR28xVxbtpSKOf", "key": "iIP3S6pypZqISn3m", "mchid": "srykQFtW8QGKFZLr", "returnUrl": "IfqrZuu7IwKcT7sA"}' --login_with_auth "Bearer foo"
platform-update-wx-pay-config-cert 'sv2TKCbYMVkXEHms' --login_with_auth "Bearer foo"
platform-test-wx-pay-config-by-id 'HwIGGsusS0zZRODE' --login_with_auth "Bearer foo"
platform-update-xsolla-config 'KPdudZsLaf8aZrXW' --body '{"apiKey": "84dt0TSTmy7XF26K", "flowCompletionUrl": "2U7xttUz8nWKJjv0", "merchantId": 16, "projectId": 84, "projectSecretKey": "RWDyGYIVFDbTvRYf"}' --login_with_auth "Bearer foo"
platform-test-xsolla-config-by-id 'pJ4wM9WZfOOxAzms' --login_with_auth "Bearer foo"
platform-update-xsolla-ui-config 'bhi5QJuc2SNBaOlX' --body '{"device": "DESKTOP", "showCloseButton": false, "size": "MEDIUM", "theme": "DARK"}' --login_with_auth "Bearer foo"
platform-query-payment-provider-config --login_with_auth "Bearer foo"
platform-create-payment-provider-config --body '{"aggregate": "XSOLLA", "namespace": "08jKedx0CVRpd7Sw", "region": "Zw2UkjDzJ4NuMMgI", "sandboxTaxJarApiToken": "13nplXaUQV5QEvKE", "specials": ["PAYPAL", "XSOLLA", "ALIPAY"], "taxJarApiToken": "GwtujkzxidLcAQWG", "taxJarEnabled": true, "useGlobalTaxJarApiToken": false}' --login_with_auth "Bearer foo"
platform-get-aggregate-payment-providers --login_with_auth "Bearer foo"
platform-debug-matched-payment-provider-config --login_with_auth "Bearer foo"
platform-get-special-payment-providers --login_with_auth "Bearer foo"
platform-update-payment-provider-config 'iJt5iA3JS2xeaJ08' --body '{"aggregate": "XSOLLA", "namespace": "m8t1YTWqItjNWXm9", "region": "sraeMA78YSRS2fPy", "sandboxTaxJarApiToken": "5fpbbbMIu9lu18jI", "specials": ["WXPAY", "XSOLLA", "ALIPAY"], "taxJarApiToken": "UM77XmemN8LO03mn", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' --login_with_auth "Bearer foo"
platform-delete-payment-provider-config '5D6ylZguO918X7rL' --login_with_auth "Bearer foo"
platform-get-payment-tax-config --login_with_auth "Bearer foo"
platform-update-payment-tax-config --body '{"sandboxTaxJarApiToken": "oexHBMBMMAYokSWF", "taxJarApiToken": "wajRGUyklfLVY6g3", "taxJarEnabled": true, "taxJarProductCodesMapping": {"O4hKAeF4GUV5m96q": "cCJsVOWtu5RPsqd6", "6ImBEuhnaxZVf6MD": "9r1y5Ihr531Kajxq", "7lzuVRVEvhKIbrq1": "xsGpdobYun8hcO55"}}' --login_with_auth "Bearer foo"
platform-sync-payment-orders 'hVjfWyK02w5QytAm' 'kanukAzAMaRvIUhU' --login_with_auth "Bearer foo"
platform-public-get-root-categories --login_with_auth "Bearer foo"
platform-download-categories --login_with_auth "Bearer foo"
platform-public-get-category 'wguGgbLLN3O7CEYj' --login_with_auth "Bearer foo"
platform-public-get-child-categories 'xqElP5lA2FJ0iGLR' --login_with_auth "Bearer foo"
platform-public-get-descendant-categories 'TXGsC5mxxse4eeuM' --login_with_auth "Bearer foo"
platform-public-list-currencies --login_with_auth "Bearer foo"
platform-get-iap-item-mapping --login_with_auth "Bearer foo"
platform-public-get-item-by-app-id 'gEctVEux2MSuwsEH' --login_with_auth "Bearer foo"
platform-public-query-items --login_with_auth "Bearer foo"
platform-public-get-item-by-sku 'lwdeJyhsHS6YqPud' --login_with_auth "Bearer foo"
platform-public-bulk-get-items 'WviQsULL1txfX9tq' --login_with_auth "Bearer foo"
platform-public-validate-item-purchase-condition --body '{"itemIds": ["FSkGXoIcFN5JL9M5", "3Mg0MzWS9usxxnMh", "jv66DyED4prRVibT"]}' --login_with_auth "Bearer foo"
platform-public-search-items 'ATxd7Mzjv1gSj8kc' 'NhoqcRZRNATojM7d' --login_with_auth "Bearer foo"
platform-public-get-app 'aV0VwR3yNKDtMqMr' --login_with_auth "Bearer foo"
platform-public-get-item-dynamic-data 'AGpdyF6WDHn3ePBx' --login_with_auth "Bearer foo"
platform-public-get-item 'QNz2IUEHMzl5jhwV' --login_with_auth "Bearer foo"
platform-public-get-payment-url --body '{"paymentOrderNo": "DsuzwJ4v50eoaIBr", "paymentProvider": "ALIPAY", "returnUrl": "uHBMCP5ckjphURs4", "ui": "ksgsKJ2R6Jacwwu8", "zipCode": "W1zvrKMRPvwA9k6y"}' --login_with_auth "Bearer foo"
platform-public-get-payment-methods 'Jz03NETdywPqYerr' --login_with_auth "Bearer foo"
platform-public-get-unpaid-payment-order 'pOm4M2pM4fIfcHBW' --login_with_auth "Bearer foo"
platform-pay 'ZM50aHbPXRns3qwY' --body '{"token": "L6LwGlZGF7XQPLAc"}' --login_with_auth "Bearer foo"
platform-public-check-payment-order-paid-status 'IL7FvAMWqhyyNZH1' --login_with_auth "Bearer foo"
platform-get-payment-public-config 'XSOLLA' 'TMhSaynVs05nZC4O' --login_with_auth "Bearer foo"
platform-public-get-qr-code 's7hqIH2NgARSG3QQ' --login_with_auth "Bearer foo"
platform-public-normalize-payment-return-url 'NGNH2K0UuJdeGNqu' 'QnaXpDQ5rU2taDWh' 'CHECKOUT' 'JV5oc5IFQsrwHqFq' --login_with_auth "Bearer foo"
platform-get-payment-tax-value 'wVA5mozeeOjIFQfX' 'CHECKOUT' --login_with_auth "Bearer foo"
platform-get-reward-by-code '3YW3ug3nCXhD7FUz' --login_with_auth "Bearer foo"
platform-query-rewards-1 --login_with_auth "Bearer foo"
platform-get-reward-1 '1iOe0pHa0LmseIRX' --login_with_auth "Bearer foo"
platform-public-list-stores --login_with_auth "Bearer foo"
platform-public-exists-any-my-active-entitlement --login_with_auth "Bearer foo"
platform-public-get-my-app-entitlement-ownership-by-app-id 'eoerZAxbDPXU5xJB' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-item-id 'hIpJ9b0Ap7CmSiKP' --login_with_auth "Bearer foo"
platform-public-get-my-entitlement-ownership-by-sku 'jcwAw5GdxpvLfa4b' --login_with_auth "Bearer foo"
platform-public-get-entitlement-ownership-token --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement --body '{"gameId": "4hTaZBGdX66DqPTd", "language": "LRL", "region": "da0Y0BCO4qPnvxER"}' --login_with_auth "Bearer foo"
platform-public-get-my-wallet 'WjKasq5zQ6uZNwKj' --login_with_auth "Bearer foo"
platform-sync-epic-game-dlc 'nX7vDIqpcjmaq5KB' --body '{"epicGamesJwtToken": "CsHlwNrfKJrkzwR4"}' --login_with_auth "Bearer foo"
platform-sync-oculus-dlc '0tfd9GFXChtxB10d' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory '4Q8nlBthUSu4WNfT' --body '{"serviceLabel": 43}' --login_with_auth "Bearer foo"
platform-public-sync-psn-dlc-inventory-with-multiple-service-labels 'Dq7IqbTVv8BLsqQW' --body '{"serviceLabels": [99, 60, 70]}' --login_with_auth "Bearer foo"
platform-sync-steam-dlc 'SrEm5Y7jI232Sjkt' --body '{"appId": "ijiNzTUe8KdizXmr", "steamId": "mK0sCUsqxKocHomt"}' --login_with_auth "Bearer foo"
platform-sync-xbox-dlc 'joU1kUqRedwIu1TS' --body '{"xstsToken": "Rr6r8mzfMedpcKhv"}' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements 'HPlvYanGqEkn9OEV' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-by-app-id 'wLWGT4MXhmzvRQb7' 'c0vmjWq9fQqzulLG' --login_with_auth "Bearer foo"
platform-public-query-user-entitlements-by-app-type 'fQMqSLQDlRFYMVfi' 'SOFTWARE' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-item-id 'Izxld80Ynss7hc3V' 'UxxZIgkTLqMeJPCb' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-by-sku 's8jWmTteJhwNbwHG' 'G39YAZJ4HuLfeTfF' --login_with_auth "Bearer foo"
platform-public-exists-any-user-active-entitlement 'BTOFFMJ9pq511jZc' --login_with_auth "Bearer foo"
platform-public-get-user-app-entitlement-ownership-by-app-id 'TK8zmMfyshYk3b5c' 'AFVo85r1b8Yp2Qnu' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-id 'hQuIdvZdj6AspWBf' 'RnLcLbp7OmcrDJ7u' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-item-ids '1rrRPcnG89rnNW1Y' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement-ownership-by-sku 'jfn8lY4DnYRxY8Zh' 'Heb0CaPFDjrSotKn' --login_with_auth "Bearer foo"
platform-public-get-user-entitlement 'pJWALpToj9rgr5Rf' 'fM5JXvPdzEpDln04' --login_with_auth "Bearer foo"
platform-public-consume-user-entitlement 'F8BQjzobhDa8VxKO' 'rfVfBRIfkStOqdXq' --body '{"options": ["hDMQ6tBLljC7gcT3", "M1DArk4L80aXFY7S", "Qkym9KvKMHK5fbqi"], "requestId": "oeoRIplY0DIzRCNA", "useCount": 83}' --login_with_auth "Bearer foo"
platform-public-sell-user-entitlement 'XBZsEYogFWiH9z4E' '8zmaZ5cg0REtUWY4' --body '{"requestId": "fVIdqwCWF5wmbOub", "useCount": 93}' --login_with_auth "Bearer foo"
platform-public-redeem-code 'IkfmdXVvaPQzzKdF' --body '{"code": "g7N7piT8VcrXLZnu", "language": "qoLQ-pshg_950", "region": "kJWFpHt7MdKu9Xwn"}' --login_with_auth "Bearer foo"
platform-public-fulfill-apple-iap-item '5GHJDGatrYOMO91C' --body '{"excludeOldTransactions": false, "language": "qKs_wFLs_UY", "productId": "BXPDKCriRKzTZ7TX", "receiptData": "AVRnUVbxEJcKHE76", "region": "4EwhQfxFKIOGT1WK", "transactionId": "SmLoA0ILaESC1GJX"}' --login_with_auth "Bearer foo"
platform-sync-epic-games-inventory 'soBwqh0TQXa2j7v3' --body '{"epicGamesJwtToken": "zQJoQLTAlW75icIK"}' --login_with_auth "Bearer foo"
platform-public-fulfill-google-iap-item 'UpXazsFrmaGNoi3R' --body '{"autoAck": true, "language": "Htxv-057", "orderId": "8ySxA0yrjz4q7e0E", "packageName": "JnADXC2y0DY1E1SM", "productId": "K9oA4vK56dsYI5SK", "purchaseTime": 98, "purchaseToken": "v3U2sKjIeyFS97dY", "region": "D7LkcTKYpCfl6HPy"}' --login_with_auth "Bearer foo"
platform-sync-oculus-consumable-entitlements '5cJfAV5iOfzwt3bp' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store 'xRNt6lKoMjCPtEKe' --body '{"currencyCode": "BWTm78Fn8TvZVTe4", "price": 0.5971796989110033, "productId": "2lXrVPX6r5ZTcnVV", "serviceLabel": 83}' --login_with_auth "Bearer foo"
platform-public-reconcile-play-station-store-with-multiple-service-labels 'PMvsu9oswEPTvzww' --body '{"currencyCode": "Gnpbx8MCIjKzylqW", "price": 0.9833654305919733, "productId": "auyseP9wEEyYAnHP", "serviceLabels": [32, 50, 20]}' --login_with_auth "Bearer foo"
platform-sync-steam-inventory 'XzVL5McglFCrjxqq' --body '{"appId": "xAYqXG2V3baMkZ9J", "currencyCode": "CqBIkUID0EE9InZN", "language": "BXXx_PyLB", "price": 0.6468537506108551, "productId": "HKtUv4lTkQNjxhXd", "region": "j1CG0EBgst9Qu8Of", "steamId": "l2oB8VTjF0pD3NHU"}' --login_with_auth "Bearer foo"
platform-sync-twitch-drops-entitlement-1 '8iYUOtG5gbQSKW2M' --body '{"gameId": "dgCH4bWxRF6fBPa6", "language": "DpnU", "region": "5z0p8jaJs2duQqaw"}' --login_with_auth "Bearer foo"
platform-sync-xbox-inventory 'Prxi6F4elhy9CZ94' --body '{"currencyCode": "CAUVW8FoEf8tjCjW", "price": 0.03823927567035845, "productId": "22qqDfNz59jHwSDQ", "xstsToken": "HadmAo0lzhPm7Rma"}' --login_with_auth "Bearer foo"
platform-public-query-user-orders 'Or6TLwVyE42ApAb7' --login_with_auth "Bearer foo"
platform-public-create-user-order 'CKt79wAopZL9Cw6K' --body '{"currencyCode": "9h55mwUvhdBOgumV", "discountedPrice": 6, "ext": {"wAsd4ifGd0bkWrlh": {}, "tfTywRW4fmg6btk3": {}, "mAO4EtB0hn2x1oTO": {}}, "itemId": "X5gBQlVDx9neFHWh", "language": "Yto_FdfM-615", "price": 22, "quantity": 9, "region": "93551nQBNKcqCkUX", "returnUrl": "Rj8gQHEe4CO370Os", "sectionId": "bzRKKPd6mjzLxllU"}' --login_with_auth "Bearer foo"
platform-public-get-user-order 'rFYn7cSuO7NxKHUH' 'g0c4X7fHdITmN9op' --login_with_auth "Bearer foo"
platform-public-cancel-user-order 'aF0kh3pCRB3infEV' 'xArF7TB6A6a71zAJ' --login_with_auth "Bearer foo"
platform-public-get-user-order-histories 'paPeudUtKPJUmAvx' 'BxJNPlvvYZw4MWzW' --login_with_auth "Bearer foo"
platform-public-download-user-order-receipt 'FTuNPf5JCSDyYy4e' '5qoTZxSoZbQUnUxS' --login_with_auth "Bearer foo"
platform-public-get-payment-accounts '6m68WL3HDL4yx5I0' --login_with_auth "Bearer foo"
platform-public-delete-payment-account 'euBsccHPA2v9XP9e' 'card' 'dgXdm1IxL1OtleUB' --login_with_auth "Bearer foo"
platform-public-list-active-sections 'qBO0Ze049k9W6ZLV' --login_with_auth "Bearer foo"
platform-public-query-user-subscriptions 'JzRpUsITfVruDuku' --login_with_auth "Bearer foo"
platform-public-subscribe-subscription 'n42zPZvOd4yZyMKy' --body '{"currencyCode": "ED3qDO5HXp5oVkhE", "itemId": "SbHQ7hvTlzf7XwQt", "language": "FwxU", "region": "7Bq5bcfPW4pPZB9Y", "returnUrl": "XltCxyztUnj17t3g", "source": "HBXvjvziexzOLbOW"}' --login_with_auth "Bearer foo"
platform-public-check-user-subscription-subscribable-by-item-id 'btcJUxM3AWyDkA5L' 'mART6kulpM4SRtUE' --login_with_auth "Bearer foo"
platform-public-get-user-subscription '5P4kxmHtFbjqurHi' 'x0QYycDH5we2Mx0s' --login_with_auth "Bearer foo"
platform-public-change-subscription-billing-account 'YCnYPT4i4mxc14iR' 'fzJwKuc7EpiQEzz5' --login_with_auth "Bearer foo"
platform-public-cancel-subscription 'N5osRYO7wbYh7q02' 'W8tkTURUFmqNc8xh' --body '{"immediate": true, "reason": "2MaIP7PjngEFggq9"}' --login_with_auth "Bearer foo"
platform-public-get-user-subscription-billing-histories '1cpgvoDBgYfLBdGN' 'AZEvbvxqa0K7VUbj' --login_with_auth "Bearer foo"
platform-public-list-views 'UnzirnEsxSE4vBzG' --login_with_auth "Bearer foo"
platform-public-get-wallet '7VK8sWEshmZf5fEd' 'vjbyJPQ1qdRcJjsm' --login_with_auth "Bearer foo"
platform-public-list-user-wallet-transactions 'e1OukIfIZVH8q8sv' 'V5hMOSfpyJkJlmJm' --login_with_auth "Bearer foo"
platform-query-items-1 --login_with_auth "Bearer foo"
platform-import-store-1 --login_with_auth "Bearer foo"
platform-export-store-1 'TkFvB7wkY6nuUEGJ' --body '{"itemIds": ["3k0HGtpK43uORGRE", "OOwTuY8dhNCDWWpN", "3B6tedgFUzBm5vGA"]}' --login_with_auth "Bearer foo"
platform-fulfill-rewards-v2 '3itKaF9z3WWuv3j8' --body '{"metadata": {"T9g1f6P3D3rVcC2g": {}, "6t42jE1Wad232YV7": {}, "A2zHFGbN8AQaCaw9": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "F7cdSDd99DQZ7vnT", "namespace": "x8HDXTJWiyw17ogz"}, "item": {"itemId": "mbj4SLYDrZJvDLGv", "itemSku": "n6qtroZcp16HKXX1", "itemType": "ft5nBA9xNIJVuMz0"}, "quantity": 83, "type": "CURRENCY"}, {"currency": {"currencyCode": "BRCt4onqRo2PnMSR", "namespace": "arKg4coy3AFpULIn"}, "item": {"itemId": "21Nf2FNgDWNC6yh7", "itemSku": "kgTHlrxKbsV4XtrI", "itemType": "7SFBEgkwHifMHYI5"}, "quantity": 6, "type": "CURRENCY"}, {"currency": {"currencyCode": "tfBS3ZIHofhwyM6B", "namespace": "w2sFGQ5DQoDwzrKP"}, "item": {"itemId": "OZZnV3zR7YxSu6ad", "itemSku": "docg10Hy9jx7gBHT", "itemType": "OHHArjld0LnREsrr"}, "quantity": 57, "type": "CURRENCY"}], "source": "IAP_CHARGEBACK_REVERSED", "transactionId": "pJ7V8BSrucjO3zvS"}' --login_with_auth "Bearer foo"
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
echo "1..419"

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
    'M5KeVNHU9GcOivIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetFulfillmentScript' test.out

#- 4 CreateFulfillmentScript
$PYTHON -m $MODULE 'platform-create-fulfillment-script' \
    'cCJt4U8VSgXoi9Fw' \
    --body '{"grantDays": "25b9qXzlIK2G6AUj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CreateFulfillmentScript' test.out

#- 5 DeleteFulfillmentScript
$PYTHON -m $MODULE 'platform-delete-fulfillment-script' \
    'BCdf0Rp5e5IvFuN1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteFulfillmentScript' test.out

#- 6 UpdateFulfillmentScript
$PYTHON -m $MODULE 'platform-update-fulfillment-script' \
    'oUsCnBmGMx5F6EhM' \
    --body '{"grantDays": "3dKvIG9MR0hTINvq"}' \
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
    --body '{"clazz": "1VR9SJUfQEX996Mh", "dryRun": false, "fulfillmentUrl": "sQ3Dw3uyjgQNAs91", "itemType": "BUNDLE", "purchaseConditionUrl": "Qm3W1De2McGd10we"}' \
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
    't0NgDSj1T6EdeYFm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetItemTypeConfig' test.out

#- 11 UpdateItemTypeConfig
$PYTHON -m $MODULE 'platform-update-item-type-config' \
    'rLT0HbvS4kSSt3Cy' \
    --body '{"clazz": "Dgf6eFAiqSkHi0BR", "dryRun": false, "fulfillmentUrl": "ElF6z6eJKuOW61ak", "purchaseConditionUrl": "RFizqxCmudSXivAL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateItemTypeConfig' test.out

#- 12 DeleteItemTypeConfig
$PYTHON -m $MODULE 'platform-delete-item-type-config' \
    '3n478mhb2I2yBJeC' \
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
    --body '{"description": "JghTrk68FWFzuLBd", "items": [{"extraSubscriptionDays": 23, "itemId": "euLufhQj2KP3LLxl", "itemName": "9Hs2L2wlpKBVURxH", "quantity": 10}, {"extraSubscriptionDays": 80, "itemId": "fz77a9fntCNiHBRU", "itemName": "NCPSre5GmZzCQwil", "quantity": 92}, {"extraSubscriptionDays": 6, "itemId": "3IxSjlyvR9PxG9Lj", "itemName": "i2Vc88W8aLjIxVGp", "quantity": 7}], "maxRedeemCountPerCampaignPerUser": 91, "maxRedeemCountPerCode": 84, "maxRedeemCountPerCodePerUser": 26, "maxSaleCount": 33, "name": "HFTtfM2mGUUpq3ix", "redeemEnd": "1974-08-05T00:00:00Z", "redeemStart": "1989-04-10T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["aI4ryVDvNaruZxwT", "fh9gEs6GF247cbBL", "jUr5z03wxB3E9hrE"], "type": "REDEMPTION"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateCampaign' test.out

#- 15 GetCampaign
$PYTHON -m $MODULE 'platform-get-campaign' \
    'jlPKDEYahnlLJaLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetCampaign' test.out

#- 16 UpdateCampaign
$PYTHON -m $MODULE 'platform-update-campaign' \
    'vjRKKX1brmkJDfdn' \
    --body '{"description": "gbQD3pO8U3W94Z8I", "items": [{"extraSubscriptionDays": 99, "itemId": "5XiKDIE9YugcupLx", "itemName": "VBcRkfhRuqkOTHSi", "quantity": 0}, {"extraSubscriptionDays": 99, "itemId": "7oFd1fEmDuyAsQGz", "itemName": "wJR5poI718RQnj4i", "quantity": 25}, {"extraSubscriptionDays": 19, "itemId": "u6XFfRcWDXhq1YmG", "itemName": "eygr2S4Yw8NmPaBe", "quantity": 36}], "maxRedeemCountPerCampaignPerUser": 2, "maxRedeemCountPerCode": 50, "maxRedeemCountPerCodePerUser": 68, "maxSaleCount": 53, "name": "cPHEFuEVP9bF07gn", "redeemEnd": "1995-09-23T00:00:00Z", "redeemStart": "1986-11-06T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["SOh8SI75oXbyq8FB", "bur80QwnlgAVfqz6", "gQJh8sn0bVWRkvmA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateCampaign' test.out

#- 17 GetCampaignDynamic
$PYTHON -m $MODULE 'platform-get-campaign-dynamic' \
    'emh8lioBR7xTXcEI' \
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
    --body '{"appConfig": {"appName": "Fod3lCzvjHzDHOrS"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "1vbB7LRHd96dGLgk"}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "YUIMuSjDHz0zPWMZ"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "NNP2JqQqhISTBT1G"}, "extendType": "APP"}' \
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
    'QPjUIosq1l6xo0D4' \
    --body '{"categoryPath": "JRbNqO6IuP2PY5hh", "localizationDisplayNames": {"X6uNah9JoHPj7jFW": "xSv1lYylYAiZ8c7Z", "d7EUoezOLw8C1c5b": "BB3XZ7ColKwlsNvt", "FuunQsvdXGlD40xx": "IyVwYjn6dlC9Kfh9"}}' \
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
    'gHuloyce0cLJu4lj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetCategory' test.out

#- 31 UpdateCategory
$PYTHON -m $MODULE 'platform-update-category' \
    'PWlCWTuGO8MnfOQu' \
    '3wdT4Aodp95o1RkX' \
    --body '{"localizationDisplayNames": {"7iW7VpCngWAv5DAG": "8dPdkKgQqjyzUZR2", "rFIAuALNhNCyscsM": "BRLsWadk2OQ421q7", "Nb1vrKthVvU5on06": "5ApCkVN3QchuQ6pn"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateCategory' test.out

#- 32 DeleteCategory
$PYTHON -m $MODULE 'platform-delete-category' \
    'txB648ss7rBnvQHA' \
    'M8gSdIybKUByHBzf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteCategory' test.out

#- 33 GetChildCategories
$PYTHON -m $MODULE 'platform-get-child-categories' \
    'vgtRTPPzwJmKaLCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetChildCategories' test.out

#- 34 GetDescendantCategories
$PYTHON -m $MODULE 'platform-get-descendant-categories' \
    '3gcidEALWe6RG5wW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetDescendantCategories' test.out

#- 35 QueryCodes
$PYTHON -m $MODULE 'platform-query-codes' \
    'znu5AjwR1Z4fU7IC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QueryCodes' test.out

#- 36 CreateCodes
$PYTHON -m $MODULE 'platform-create-codes' \
    'caQtuuKUw3dUwWHh' \
    --body '{"quantity": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateCodes' test.out

#- 37 Download
$PYTHON -m $MODULE 'platform-download' \
    'fNNpJUYzJxnOyvqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'Download' test.out

#- 38 BulkDisableCodes
$PYTHON -m $MODULE 'platform-bulk-disable-codes' \
    'swrToyBIQumxDfAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkDisableCodes' test.out

#- 39 BulkEnableCodes
$PYTHON -m $MODULE 'platform-bulk-enable-codes' \
    'NqCUtizYM97ebZcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkEnableCodes' test.out

#- 40 QueryRedeemHistory
$PYTHON -m $MODULE 'platform-query-redeem-history' \
    'qwfIHPWMkOmrT5HL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'QueryRedeemHistory' test.out

#- 41 GetCode
$PYTHON -m $MODULE 'platform-get-code' \
    '16jMwECnmwJv4rpq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCode' test.out

#- 42 DisableCode
$PYTHON -m $MODULE 'platform-disable-code' \
    'tzDaz0WUJlBCHzJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DisableCode' test.out

#- 43 EnableCode
$PYTHON -m $MODULE 'platform-enable-code' \
    'v9K8c1zOlZg30pag' \
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
    --body '{"currencyCode": "fP0FfOMBOpeQT4zY", "currencySymbol": "IbU4i9mLyX46Alt0", "currencyType": "VIRTUAL", "decimals": 39, "localizationDescriptions": {"rnG8y2ScXkwjpAp8": "2pGcxvXaG9LzHpMS", "53jllopwirRo3A8W": "xnR0YaMsF3f5KLtp", "TSsPMGDZTOwEP5Bh": "h0NStWIggmhfAzVd"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateCurrency' test.out

#- 49 UpdateCurrency
$PYTHON -m $MODULE 'platform-update-currency' \
    'NYP7Ao1z7FeJM2fW' \
    --body '{"localizationDescriptions": {"XGk7JObSHksRkabp": "mvRsc7ZYvXCT6m6m", "RZAlLBczJVeil7Gb": "G1ISBCkcnpxKUxLj", "mxhBS6YypRW7fNnt": "aIEtDI6MbhxkQdez"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateCurrency' test.out

#- 50 DeleteCurrency
$PYTHON -m $MODULE 'platform-delete-currency' \
    'bmf392ersoZ2KbMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteCurrency' test.out

#- 51 GetCurrencyConfig
$PYTHON -m $MODULE 'platform-get-currency-config' \
    '5jal0ruZmBXlGSp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetCurrencyConfig' test.out

#- 52 GetCurrencySummary
$PYTHON -m $MODULE 'platform-get-currency-summary' \
    '5q6fuGfo5wSDHnya' \
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
    --body '{"data": [{"id": "bk493I3pvHKDaWhT", "rewards": [{"currency": {"currencyCode": "N1qyxpUzWIZWJTDz", "namespace": "Wguhujw1EoR58uCV"}, "item": {"itemId": "ldefonHJZAiX4abm", "itemSku": "qqi90KTWwZk0HGeJ", "itemType": "NaBjVdMB5kMzKycY"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "jHbAPNGInvbnf4ew", "namespace": "KFFLoGggX4gQWyZo"}, "item": {"itemId": "cvYfr0Rnl02R1IVN", "itemSku": "naK6KS71Xs1BphA9", "itemType": "BXpKYgF9OuigDP0V"}, "quantity": 19, "type": "CURRENCY"}, {"currency": {"currencyCode": "my7j2BrdCAm3slCw", "namespace": "aBqHpE55sjxBGijw"}, "item": {"itemId": "0dQtZNonMrPkzUe9", "itemSku": "SglAJGyZS0I8FevJ", "itemType": "iT98HUBp56Q4WETx"}, "quantity": 39, "type": "ITEM"}]}, {"id": "Ms5tPKPuK0K4PiMD", "rewards": [{"currency": {"currencyCode": "TR7LxihuOn57io0d", "namespace": "9dG3yzaNbGeASX83"}, "item": {"itemId": "SLiIbAP2qyUnHnfr", "itemSku": "EdDfY4TTxu8goZgs", "itemType": "X4RwfM4qnUdcQqZ9"}, "quantity": 64, "type": "ITEM"}, {"currency": {"currencyCode": "uivPob0YZEuXQACD", "namespace": "DQryNf9VGxbOeJe4"}, "item": {"itemId": "n9eUlBQZ2UGePWXb", "itemSku": "AyGiXa9nUsHCVicu", "itemType": "J7onrUXVlB6xNel4"}, "quantity": 57, "type": "ITEM"}, {"currency": {"currencyCode": "TPTytHeeXo7gOFVL", "namespace": "ZCBWuVIROZuqdJBi"}, "item": {"itemId": "8pkn98VtLNkaIQJf", "itemSku": "kFDhSeSGXtZU5SuI", "itemType": "hMSaDRp17dUWHcjr"}, "quantity": 3, "type": "CURRENCY"}]}, {"id": "qNeKpOxPrlG9svdq", "rewards": [{"currency": {"currencyCode": "siVTqPbzY1yxl7ze", "namespace": "EpmSPO6KwlJQlj9I"}, "item": {"itemId": "i2jARwzowk9OoiPd", "itemSku": "nq9KBqBwiNCsnK8C", "itemType": "cO1OHbpQZtwW3EwL"}, "quantity": 36, "type": "CURRENCY"}, {"currency": {"currencyCode": "IpDc9X5ijmtDGvd9", "namespace": "ESdY0eTkBWA44Qqs"}, "item": {"itemId": "i5yOjvl5sRN2ENn1", "itemSku": "RLi5iMPnbg7o1zYp", "itemType": "qUsliPyXZGYIW5ZD"}, "quantity": 39, "type": "CURRENCY"}, {"currency": {"currencyCode": "NC97eEyhnL1QH5Al", "namespace": "YRAqCAC2gy1WF9QL"}, "item": {"itemId": "NgDxAkwgfB8jIecO", "itemSku": "x5ugNCDd6jW6fjtB", "itemType": "cO3fWq9qfmBv0XgJ"}, "quantity": 56, "type": "ITEM"}]}]}' \
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
    --body '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"U1aMD0mczWxc8f1s": "2QPMMZsf2dvKZyHC", "hRPHvdkcKW21B5EF": "tD2pYaKTz1gcE2XC", "wTkRUIX6IFHNmB9m": "YBvtOwxjqyrjDApe"}}, {"platform": "XBOX", "platformDlcIdMap": {"eAfRqSgH5xIuBTYO": "dsvNyk52MQFkVVEf", "36S7yPgG48bk6PwH": "1tdEAJSqXA0Wv0zW", "Gvkc6byp3mvyYT3G": "uaZVTxBlw1IWeXKF"}}, {"platform": "STEAM", "platformDlcIdMap": {"4rfSbbSlDPGf9Fn3": "2SJNPZkEfkAcJTMS", "4pVRcCHIGfmCMTr9": "ACnI2sMrEgl7ZR1H", "Ckf2Sw78lLGKjDHu": "Xt358gzqRMuMPrIe"}}]}' \
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
    --body '{"entitlementGrantList": [{"endDate": "1976-07-11T00:00:00Z", "grantedCode": "LkyXpxJeFxhgTwyO", "itemId": "51CUpcdxL0a9VDhr", "itemNamespace": "qWCTXOxQUpyFgZhN", "language": "Wp-TqPE-495", "quantity": 81, "region": "EgTtLRT5stwQFUEb", "source": "REWARD", "startDate": "1992-08-21T00:00:00Z", "storeId": "p7VMlxEXnqHwMyKp"}, {"endDate": "1982-02-27T00:00:00Z", "grantedCode": "phjUXvM1GqMkZ44U", "itemId": "XgdBqtJaRyDlP9qI", "itemNamespace": "ZJ5Krx6KkHagEugK", "language": "vXyK-Xq", "quantity": 65, "region": "tTNjnNSikJDg6ujK", "source": "PURCHASE", "startDate": "1987-05-14T00:00:00Z", "storeId": "r7jVVx5l3yrH9HR4"}, {"endDate": "1979-02-11T00:00:00Z", "grantedCode": "eG0HwUXxQTf5YpDU", "itemId": "GYsJBEkYUrLv4qUi", "itemNamespace": "TkFcLBrg2JB0WiCp", "language": "QXW_GJkv", "quantity": 19, "region": "tt0PpQY3Pnnic80y", "source": "REFERRAL_BONUS", "startDate": "1999-11-24T00:00:00Z", "storeId": "PIKleuV271bwZ4ni"}], "userIds": ["bGYSYo9fY2EBZAHQ", "Xc4Xcae7VKl0ARzG", "LSzQnv0C00dtNGGz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GrantEntitlements' test.out

#- 62 RevokeEntitlements
$PYTHON -m $MODULE 'platform-revoke-entitlements' \
    --body '["EArlfE1NSmtcADoZ", "vd0La7P4JI4H7uDz", "kOHTdnUtdrRcs3Ge"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RevokeEntitlements' test.out

#- 63 GetEntitlement
$PYTHON -m $MODULE 'platform-get-entitlement' \
    'OsKPNlG7rEXi6LEq' \
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
    --body '{"body": {"account": "JERpbxEq07txnvZZ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 8, "clientTransactionId": "gH4Cd9xTdt2K1Czp"}, {"amountConsumed": 88, "clientTransactionId": "8tQnJOKHC16xjJZ4"}, {"amountConsumed": 21, "clientTransactionId": "hUjzcMtwINUlrhIp"}], "entitlementId": "nlam2EefVopbpPhs", "usageCount": 0}, {"clientTransaction": [{"amountConsumed": 23, "clientTransactionId": "na0uXG7GUTV1Bwgk"}, {"amountConsumed": 78, "clientTransactionId": "EtfgBFikt18cQ677"}, {"amountConsumed": 91, "clientTransactionId": "zyd0SarkhltUxgbN"}], "entitlementId": "5eElQNESFLD8hCc9", "usageCount": 30}, {"clientTransaction": [{"amountConsumed": 81, "clientTransactionId": "nSNjbQEqFGwnDG8k"}, {"amountConsumed": 51, "clientTransactionId": "6CcwlqJ4MO3L8x1H"}, {"amountConsumed": 48, "clientTransactionId": "OgzHypgsSeKCvtPz"}], "entitlementId": "7jagBG9a1TZ87ltC", "usageCount": 22}], "purpose": "OyGuS0OG7ohiL294"}, "originalTitleName": "3ClrNhEdxd24ZKfv", "paymentProductSKU": "Mf1T5FzYMf1jaCgZ", "purchaseDate": "osntPzP1vXXB92q1", "sourceOrderItemId": "50WEIetOXMt37MXy", "titleName": "7Fp7lUfQqXrqGadw"}, "eventDomain": "vKlJFX1ZHV9yo9Ur", "eventSource": "1hfhmGEKuVUZdCac", "eventType": "RGataPrcgTcA71dt", "eventVersion": 34, "id": "5aOFDwpqy7XOU3Dw", "timestamp": "glyMGNll4O8ELahc"}' \
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
    --body '{"bundleId": "NJqRjepck1l0qxRy", "password": "Q2pi7xuAufJakIPX"}' \
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
    --body '{"sandboxId": "OQznHZTj8oYfWOby"}' \
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
    --body '{"applicationName": "NJKVSQsaCokoGynp", "serviceAccountId": "6xcqNKJnAhrSt96O"}' \
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
    --body '{"data": [{"itemIdentity": "aARAjHLGV3sNxS8u", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"ESUgrROrP1ip3jNG": "68DByf2UMPtigq9z", "OQOcAqBj0bXhOr9O": "Ht6zx1i2W3GY7tdh", "8hHlQyMlgfkTsATh": "LyflAqqAP4M78smY"}}, {"itemIdentity": "dyge6DroOywOxI4G", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"Q52IjGpRJCUJpscO": "TkWETSJ04c5MGInO", "4yznh2YpZvvmziSS": "iSpXeWOGayfRkQvo", "N06SpNOnuSksfm7h": "cIFdkdrwAcK2lUda"}}, {"itemIdentity": "9h9FgvfhiLEAkA7n", "itemIdentityType": "ITEM_SKU", "platformProductIdMap": {"6ydoRT1qZBrdTnGr": "wHeWoQXPFWFaKbDg", "rGkv8SVwLyS4VbHJ": "vD0lL7aZUY9d1Idu", "d8bjYeBVMr7zHYmR": "E4X36KUOdfEmoIYw"}}]}' \
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
    --body '{"appId": "SxxAsfwDMivWqHHG", "appSecret": "lnAnEu6EKYceTEqY"}' \
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
    --body '{"backOfficeServerClientId": "udHlA4AxeEIfUxJ2", "backOfficeServerClientSecret": "xMSNNBxCeN3pGn46", "enableStreamJob": false, "environment": "dUdYy9Y9OCSmmT3W", "streamName": "KijbqhT3uyQRXvvc", "streamPartnerName": "UYDeWPZ8yhwQ0gId"}' \
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
    --body '{"backOfficeServerClientId": "j1lTJdNLmAvEdEBV", "backOfficeServerClientSecret": "AU3rbkv8V98cupW0", "enableStreamJob": true, "environment": "5WsiuITRMSPOUfWQ", "streamName": "wr4PYf48r66MaTox", "streamPartnerName": "Biliy2vtRkpqL6Kr"}' \
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
    --body '{"appId": "VcNz83J57t6OcYPQ", "publisherAuthenticationKey": "5bk5IeuAi3zWFGor"}' \
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
    --body '{"clientId": "Cbncoj5RvEtXiKyU", "clientSecret": "GdNfMiwgSvsTRmJs", "organizationId": "Om0wVFyHvFhRMCFJ"}' \
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
    --body '{"relyingPartyCert": "uA0DEMgykqqjoHTp"}' \
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
    'IPMSRAuPI7mSZQ5U' \
    'Dm1q51PlW2HG8LAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DownloadInvoiceDetails' test.out

#- 99 GenerateInvoiceSummary
$PYTHON -m $MODULE 'platform-generate-invoice-summary' \
    'Izuo321Ll90IBFsS' \
    'b3FsV2PnCs9R0D5j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GenerateInvoiceSummary' test.out

#- 100 SyncInGameItem
$PYTHON -m $MODULE 'platform-sync-in-game-item' \
    'ZEwxcow6L7c3COEP' \
    --body '{"categoryPath": "4AZx70uwV4XgvGTM", "targetItemId": "HkXeEwuFJf7tbq5K", "targetNamespace": "ikDE7hWvT5bzcfzI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'SyncInGameItem' test.out

#- 101 CreateItem
$PYTHON -m $MODULE 'platform-create-item' \
    'pL2pWB4XsdrxIF6k' \
    --body '{"appId": "EAmKGNEmFPcUALNz", "appType": "DLC", "baseAppId": "pxXZDy5Pmbu7RrD9", "boothName": "a5mdlXTCL467xHbA", "categoryPath": "iD3Pr3mXZO1PnbSl", "clazz": "fVRlAI8F2f3mEv09", "displayOrder": 21, "entitlementType": "DURABLE", "ext": {"5DHLB65fxQ06GwTm": {}, "obiBnfrnq9kOFBWh": {}, "UTPiKR3qcbHLGplY": {}}, "features": ["cyPMfDWSEEpKoJlm", "PuNtOv3jbhGBuW8K", "sS3jsRZffCd00Vrg"], "images": [{"as": "hMQUCx70QjYbzemO", "caption": "TURzzAOIBarB7kce", "height": 35, "imageUrl": "mEIX40XOUoLOa7oD", "smallImageUrl": "z00gxcoaH6u9TVf4", "width": 61}, {"as": "stZAGDgiVsV2Ottw", "caption": "JaMxPDIJ5hFQHumF", "height": 44, "imageUrl": "NwPcvGyieBsRUduW", "smallImageUrl": "5lxSlorWEGN5bPGS", "width": 83}, {"as": "aytd9CsAMTZC37xP", "caption": "XxnfggnZ3EZp6wSA", "height": 41, "imageUrl": "TfqRRaZozM8xCBoa", "smallImageUrl": "S2FMwfWNCbN5GelV", "width": 82}], "itemIds": ["RYGFzgLZ7gEypQf2", "Pn9A4gcbDJ0LmdnO", "PkIT1C6KGTpA7JZ6"], "itemQty": {"xullPROSfiW9zcxm": 14, "XA3WqypoOw0H2s0s": 17, "jNpHhM2ZXp4N0ROm": 95}, "itemType": "MEDIA", "listable": true, "localizations": {"TrS7Gi9Iigk9vamO": {"description": "7Q2WQwSWqSs05rjI", "localExt": {"Sy4B0X9AJdkT7UYC": {}, "V8agvwOI2LlOQNRN": {}, "132RdgwMXv9olKpR": {}}, "longDescription": "yWQim3qlART9mPPm", "title": "YUvlkBGPJFaFzkAB"}, "C8zWMcYW5iRrw32F": {"description": "Rg8y4rOuj7J6ijJb", "localExt": {"cycXmBcrJLb7laby": {}, "otifVk9KyqceGv0C": {}, "EDTVSjINYeKLowG7": {}}, "longDescription": "UQB9pXzuCK5qd2m8", "title": "A5axixm9X9TXNhN8"}, "y1PVriIyv9kjuiAG": {"description": "iXx47etMikLFggYD", "localExt": {"c2FMbzZoeKagnKf2": {}, "Yifzvr9OqTsInGzH": {}, "FpFXYJtHtqwoIwQB": {}}, "longDescription": "eIALI8JNIII4jrzr", "title": "PsuMziNM8AB7RRxi"}}, "lootBoxConfig": {"rewardCount": 68, "rewards": [{"lootBoxItems": [{"count": 82, "duration": 27, "endDate": "1998-02-14T00:00:00Z", "itemId": "MOpmm04BlZUAlYnC", "itemSku": "T11qD03er5mdraK4", "itemType": "7FdxXisVlo3aVOGA"}, {"count": 90, "duration": 9, "endDate": "1987-09-28T00:00:00Z", "itemId": "DJcGWy826ilCxAxQ", "itemSku": "UM5DyrPfBmpZIzSF", "itemType": "UZqVR5FWGfH66eFC"}, {"count": 78, "duration": 100, "endDate": "1994-05-31T00:00:00Z", "itemId": "ZcgUSbbnffBWRaJN", "itemSku": "1SjCFLDNJfAhJGwS", "itemType": "YEZjEb0Pv35fEk9s"}], "name": "11bFXkf7rQJ4Kj7Q", "odds": 0.3880708209726408, "type": "PROBABILITY_GROUP", "weight": 47}, {"lootBoxItems": [{"count": 41, "duration": 64, "endDate": "1994-05-02T00:00:00Z", "itemId": "qFllM1LTrl4MP3Nl", "itemSku": "4T3ujvV7W6ADLtn7", "itemType": "oInn1Bz3wM3BI51e"}, {"count": 39, "duration": 1, "endDate": "1977-02-01T00:00:00Z", "itemId": "17OcmSVHZ6wtPVAw", "itemSku": "gvxYxXJTduZp1nNY", "itemType": "HREmm1cBuaRaGeM8"}, {"count": 50, "duration": 18, "endDate": "1983-03-07T00:00:00Z", "itemId": "RfejqSbVgLd1FoyN", "itemSku": "FGpu5r2K0IvVg5Lw", "itemType": "UygH98dzTL8azKCC"}], "name": "NBZpwRFNYxx2dr6D", "odds": 0.4816834125145776, "type": "REWARD", "weight": 43}, {"lootBoxItems": [{"count": 61, "duration": 69, "endDate": "1984-12-31T00:00:00Z", "itemId": "cfvXPXJURX3XwhOl", "itemSku": "gcpcOIxqCMSpZxby", "itemType": "2J9vGOUeSeGb02vD"}, {"count": 85, "duration": 39, "endDate": "1995-01-31T00:00:00Z", "itemId": "pv5VEdIG82dpIbfx", "itemSku": "VFfdvKQVgPQw3MVX", "itemType": "e4xBPDWHRHCCVDBR"}, {"count": 18, "duration": 83, "endDate": "1992-04-22T00:00:00Z", "itemId": "UQWYVxGQVFJlDDJ7", "itemSku": "z4Pb5jyGID39Ung1", "itemType": "D57FjYKlJiRIvhej"}], "name": "77OSPwdzMSmrSvQd", "odds": 0.297849425441566, "type": "REWARD", "weight": 24}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 94, "name": "CoyRdiOikUdqGocL", "optionBoxConfig": {"boxItems": [{"count": 88, "duration": 57, "endDate": "1985-01-03T00:00:00Z", "itemId": "YoE8b0CZetLfpFNy", "itemSku": "p7375rhOmR4zFjoJ", "itemType": "ZVKZjOD2ePKAKYjJ"}, {"count": 78, "duration": 98, "endDate": "1995-04-20T00:00:00Z", "itemId": "NRLRjgKqSSYgZnVf", "itemSku": "a8govttlpFAq8oeb", "itemType": "nS4Y2zkGYTr9yJIv"}, {"count": 8, "duration": 37, "endDate": "1996-02-16T00:00:00Z", "itemId": "2r6Inl9VTJB9Al3m", "itemSku": "n2DsHDHzSVJzhU5Z", "itemType": "44zgZ1fieLdl3Y82"}]}, "purchasable": true, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 83, "fixedTrialCycles": 2, "graceDays": 20}, "regionData": {"YBK6XOBDpR7SH93A": [{"currencyCode": "E1Toj5vygVvLSJvd", "currencyNamespace": "sGpmmUeMikW3s54z", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1973-05-28T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1998-11-02T00:00:00Z", "expireAt": "1991-08-27T00:00:00Z", "price": 36, "purchaseAt": "1997-09-02T00:00:00Z", "trialPrice": 13}, {"currencyCode": "TbFDj2L2McvCrrR7", "currencyNamespace": "h9uKLXDaRf3pxKtJ", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1993-05-03T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1995-03-30T00:00:00Z", "expireAt": "1977-06-17T00:00:00Z", "price": 28, "purchaseAt": "1985-07-05T00:00:00Z", "trialPrice": 74}, {"currencyCode": "2ZuuuI7F1xpVrcoX", "currencyNamespace": "zSOEGEDYfiGPYo2K", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1990-11-20T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1997-03-21T00:00:00Z", "expireAt": "1985-12-01T00:00:00Z", "price": 83, "purchaseAt": "1990-10-15T00:00:00Z", "trialPrice": 12}], "fvV6SuHovoQlk5wL": [{"currencyCode": "2oXDZ20Bw2H4tz6K", "currencyNamespace": "UC4jXGj2G0GZ3JBY", "currencyType": "REAL", "discountAmount": 84, "discountExpireAt": "1971-08-18T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1972-08-19T00:00:00Z", "expireAt": "1992-12-22T00:00:00Z", "price": 98, "purchaseAt": "1978-11-15T00:00:00Z", "trialPrice": 6}, {"currencyCode": "d2WDUVEQTpfyAIoF", "currencyNamespace": "7qsANBbEKQrgocpj", "currencyType": "REAL", "discountAmount": 81, "discountExpireAt": "1973-04-21T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1974-04-03T00:00:00Z", "expireAt": "1986-03-09T00:00:00Z", "price": 83, "purchaseAt": "1977-12-28T00:00:00Z", "trialPrice": 98}, {"currencyCode": "LvP7ynTuXzafCqlM", "currencyNamespace": "rrVIehVCf3AwIzUd", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1981-05-21T00:00:00Z", "discountPercentage": 95, "discountPurchaseAt": "1997-02-21T00:00:00Z", "expireAt": "1977-07-25T00:00:00Z", "price": 69, "purchaseAt": "1997-10-22T00:00:00Z", "trialPrice": 92}], "kk6Gh25tEcX9GegD": [{"currencyCode": "nrYz0GFpSVdxFsXA", "currencyNamespace": "p1roclyXllFitPam", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1996-12-19T00:00:00Z", "discountPercentage": 53, "discountPurchaseAt": "1972-08-30T00:00:00Z", "expireAt": "1985-10-10T00:00:00Z", "price": 25, "purchaseAt": "1997-09-14T00:00:00Z", "trialPrice": 13}, {"currencyCode": "wUO7Y0xhMLwxgRpT", "currencyNamespace": "SUppvO3QG68KeD7Q", "currencyType": "REAL", "discountAmount": 87, "discountExpireAt": "1975-09-09T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1986-06-27T00:00:00Z", "expireAt": "1995-08-26T00:00:00Z", "price": 100, "purchaseAt": "1984-02-22T00:00:00Z", "trialPrice": 5}, {"currencyCode": "045BvtPd7ibBA3sd", "currencyNamespace": "51mDooH53vibq3Qc", "currencyType": "VIRTUAL", "discountAmount": 65, "discountExpireAt": "1981-08-17T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1995-07-26T00:00:00Z", "expireAt": "1990-10-28T00:00:00Z", "price": 7, "purchaseAt": "1993-10-11T00:00:00Z", "trialPrice": 58}]}, "saleConfig": {"currencyCode": "ebsw7EjkMnJSziEA", "price": 10}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "MJdrqHIsJ98WRjqY", "stackable": false, "status": "INACTIVE", "tags": ["jYEHs9TIkcnrJ64B", "OKqywS6DKNSeb2UM", "eXRthQZvzRi7pqpa"], "targetCurrencyCode": "WOgVeYkCvqq0tO15", "targetNamespace": "pEVG7sNihxpuuL7D", "thumbnailUrl": "JCxvzZnh8oBAk1MN", "useCount": 58}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'CreateItem' test.out

#- 102 GetItemByAppId
$PYTHON -m $MODULE 'platform-get-item-by-app-id' \
    'NCKWNkLU5ty3uQa7' \
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

#- 105 GetItemBySku
$PYTHON -m $MODULE 'platform-get-item-by-sku' \
    'Fl3ZhSMLtrwnjTJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetItemBySku' test.out

#- 106 GetLocaleItemBySku
$PYTHON -m $MODULE 'platform-get-locale-item-by-sku' \
    'Dlh112byTYCDBnAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'GetLocaleItemBySku' test.out

#- 107 GetItemIdBySku
$PYTHON -m $MODULE 'platform-get-item-id-by-sku' \
    'f8JpFuJSZistM755' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetItemIdBySku' test.out

#- 108 GetBulkItemIdBySkus
$PYTHON -m $MODULE 'platform-get-bulk-item-id-by-skus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'GetBulkItemIdBySkus' test.out

#- 109 BulkGetLocaleItems
$PYTHON -m $MODULE 'platform-bulk-get-locale-items' \
    '44PDlVK8taScpV0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'BulkGetLocaleItems' test.out

#- 110 GetAvailablePredicateTypes
$PYTHON -m $MODULE 'platform-get-available-predicate-types' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'GetAvailablePredicateTypes' test.out

#- 111 ValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-validate-item-purchase-condition' \
    'tCxDDz5rxt6LflBJ' \
    --body '{"itemIds": ["jokLAaL4oAF2lqx8", "yneWKrOy4xcg30Bq", "C5W7g7hiwumJTI3j"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'ValidateItemPurchaseCondition' test.out

#- 112 BulkUpdateRegionData
$PYTHON -m $MODULE 'platform-bulk-update-region-data' \
    'lZPjoCdGiIP6cB3P' \
    --body '{"changes": [{"itemIdentities": ["j63MJXIuLWYb2iHH", "VN0ZBgvrigXUT4fR", "bawD5yOvjgOopQfb"], "itemIdentityType": "ITEM_ID", "regionData": {"UhIguMvKDOrx0wQX": [{"currencyCode": "KEroyKz2reP63EVH", "currencyNamespace": "T72VuhoGP2IFXGU5", "currencyType": "REAL", "discountAmount": 42, "discountExpireAt": "1994-03-12T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1986-04-30T00:00:00Z", "discountedPrice": 11, "expireAt": "1992-08-20T00:00:00Z", "price": 45, "purchaseAt": "1990-02-20T00:00:00Z", "trialPrice": 40}, {"currencyCode": "5uqgoHaFyoczck0q", "currencyNamespace": "JsgZPfuelAiZBZcQ", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1988-08-10T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1972-02-19T00:00:00Z", "discountedPrice": 37, "expireAt": "1977-10-08T00:00:00Z", "price": 6, "purchaseAt": "1973-01-23T00:00:00Z", "trialPrice": 58}, {"currencyCode": "ZSvzXYOytshBcKQy", "currencyNamespace": "tQagui6lsKF28n7U", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1983-11-14T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1989-11-24T00:00:00Z", "discountedPrice": 8, "expireAt": "1974-05-04T00:00:00Z", "price": 37, "purchaseAt": "1987-08-05T00:00:00Z", "trialPrice": 65}], "j2Rmf1DXvAIkzTRN": [{"currencyCode": "RVyeEGu1ICOCmLAm", "currencyNamespace": "caEFBKgy92LYqtQc", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1991-11-27T00:00:00Z", "discountPercentage": 27, "discountPurchaseAt": "1991-01-18T00:00:00Z", "discountedPrice": 59, "expireAt": "1973-02-03T00:00:00Z", "price": 3, "purchaseAt": "1974-01-01T00:00:00Z", "trialPrice": 21}, {"currencyCode": "J0DCuIeEStt3Pbyc", "currencyNamespace": "tX7HC2haQwVWONEp", "currencyType": "VIRTUAL", "discountAmount": 97, "discountExpireAt": "1992-05-18T00:00:00Z", "discountPercentage": 9, "discountPurchaseAt": "1972-10-06T00:00:00Z", "discountedPrice": 52, "expireAt": "1993-10-09T00:00:00Z", "price": 17, "purchaseAt": "1998-07-29T00:00:00Z", "trialPrice": 97}, {"currencyCode": "dlqiyEJIQcbZJJ3A", "currencyNamespace": "hkrMi0bnppEJFISz", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1986-05-20T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1988-09-05T00:00:00Z", "discountedPrice": 19, "expireAt": "1979-04-28T00:00:00Z", "price": 4, "purchaseAt": "1986-03-12T00:00:00Z", "trialPrice": 52}], "lJWhaW6jNsM94E2F": [{"currencyCode": "Qb6S0VmaTR7E3mkD", "currencyNamespace": "SQkgVMhLbM6H1MnN", "currencyType": "VIRTUAL", "discountAmount": 7, "discountExpireAt": "1984-09-11T00:00:00Z", "discountPercentage": 76, "discountPurchaseAt": "1993-04-25T00:00:00Z", "discountedPrice": 39, "expireAt": "1990-10-10T00:00:00Z", "price": 70, "purchaseAt": "1994-05-19T00:00:00Z", "trialPrice": 44}, {"currencyCode": "AwjAsgo51XHJBG2P", "currencyNamespace": "myeFaBiT3SyLHXZS", "currencyType": "VIRTUAL", "discountAmount": 11, "discountExpireAt": "1996-03-17T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1977-03-28T00:00:00Z", "discountedPrice": 100, "expireAt": "1982-04-12T00:00:00Z", "price": 26, "purchaseAt": "1976-06-01T00:00:00Z", "trialPrice": 11}, {"currencyCode": "9SPaHlqtDPry2vMO", "currencyNamespace": "N7sdhlilfpDT8o2i", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1977-06-13T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1987-02-12T00:00:00Z", "discountedPrice": 58, "expireAt": "1973-01-10T00:00:00Z", "price": 57, "purchaseAt": "1980-01-18T00:00:00Z", "trialPrice": 75}]}}, {"itemIdentities": ["rvsV2I4X26p21iDB", "ZGJ8ZMLwPJ871nV5", "ALS7cneNLItUJgh7"], "itemIdentityType": "ITEM_SKU", "regionData": {"RIyAHjYxVhCbXbeB": [{"currencyCode": "EoTlfR33jqIRoXcC", "currencyNamespace": "PaLXJM2B9bMohkWs", "currencyType": "REAL", "discountAmount": 94, "discountExpireAt": "1983-11-04T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1978-06-18T00:00:00Z", "discountedPrice": 69, "expireAt": "1990-12-10T00:00:00Z", "price": 77, "purchaseAt": "1972-11-26T00:00:00Z", "trialPrice": 41}, {"currencyCode": "JAEk3A6A6rYiIu8e", "currencyNamespace": "LdWykhBxLFnKnSYC", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1979-07-24T00:00:00Z", "discountPercentage": 25, "discountPurchaseAt": "1985-05-02T00:00:00Z", "discountedPrice": 9, "expireAt": "1982-05-06T00:00:00Z", "price": 15, "purchaseAt": "1988-07-29T00:00:00Z", "trialPrice": 33}, {"currencyCode": "1T6cSrZL2CgHxdmY", "currencyNamespace": "Dj9vZNgfI1AeYHe8", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1991-12-12T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1987-11-05T00:00:00Z", "discountedPrice": 85, "expireAt": "1989-01-16T00:00:00Z", "price": 4, "purchaseAt": "1977-03-15T00:00:00Z", "trialPrice": 59}], "HphqjHGGAhfWaXqk": [{"currencyCode": "A5fuVYOsMFo9tnqa", "currencyNamespace": "4LEWGg1r4nW4pBcP", "currencyType": "REAL", "discountAmount": 1, "discountExpireAt": "1992-03-07T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1971-11-19T00:00:00Z", "discountedPrice": 16, "expireAt": "1978-11-15T00:00:00Z", "price": 13, "purchaseAt": "1972-05-28T00:00:00Z", "trialPrice": 80}, {"currencyCode": "xUjGPKKLMoAy1stm", "currencyNamespace": "xPFz0i1IK3QzkcRw", "currencyType": "REAL", "discountAmount": 85, "discountExpireAt": "1971-05-12T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1996-03-24T00:00:00Z", "discountedPrice": 67, "expireAt": "1996-04-02T00:00:00Z", "price": 22, "purchaseAt": "1988-12-29T00:00:00Z", "trialPrice": 90}, {"currencyCode": "xtY97TMJH8bO4GDH", "currencyNamespace": "T6ZaUUkvlTKAhrxq", "currencyType": "VIRTUAL", "discountAmount": 32, "discountExpireAt": "1976-02-14T00:00:00Z", "discountPercentage": 97, "discountPurchaseAt": "1998-01-14T00:00:00Z", "discountedPrice": 55, "expireAt": "1979-10-12T00:00:00Z", "price": 81, "purchaseAt": "1985-03-20T00:00:00Z", "trialPrice": 13}], "zlcxXsmGGcJhauxf": [{"currencyCode": "hVKIbRvUnyElHPuQ", "currencyNamespace": "E3Gc8bY4IH0OXHZP", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1979-05-23T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1981-09-01T00:00:00Z", "discountedPrice": 69, "expireAt": "1996-11-10T00:00:00Z", "price": 96, "purchaseAt": "1994-10-06T00:00:00Z", "trialPrice": 81}, {"currencyCode": "dkv8vxyg6giNKzeF", "currencyNamespace": "nlgGRgYK3SeYvULY", "currencyType": "REAL", "discountAmount": 80, "discountExpireAt": "1980-06-19T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1992-07-17T00:00:00Z", "discountedPrice": 75, "expireAt": "1987-10-16T00:00:00Z", "price": 25, "purchaseAt": "1972-02-20T00:00:00Z", "trialPrice": 73}, {"currencyCode": "ofq7nlF5Ch8J2Qs9", "currencyNamespace": "90APOU4hcdwlnsTa", "currencyType": "REAL", "discountAmount": 88, "discountExpireAt": "1994-10-19T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1979-09-30T00:00:00Z", "discountedPrice": 4, "expireAt": "1981-06-08T00:00:00Z", "price": 27, "purchaseAt": "1997-01-12T00:00:00Z", "trialPrice": 76}]}}, {"itemIdentities": ["1sZnYF3hWmCCIrP0", "lJXexseo2e6BCNJT", "TRIHDKdVfOUr14yZ"], "itemIdentityType": "ITEM_ID", "regionData": {"00n8MsRjaB8iurBW": [{"currencyCode": "W5jSJi0seeGJIqna", "currencyNamespace": "tME8GnNWfAY1yY6D", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1981-06-20T00:00:00Z", "discountPercentage": 50, "discountPurchaseAt": "1981-03-01T00:00:00Z", "discountedPrice": 37, "expireAt": "1975-02-15T00:00:00Z", "price": 90, "purchaseAt": "1973-02-03T00:00:00Z", "trialPrice": 82}, {"currencyCode": "DCKT4ilZB8apDTR3", "currencyNamespace": "aL9sunWp7V1s8LmX", "currencyType": "REAL", "discountAmount": 12, "discountExpireAt": "1998-09-10T00:00:00Z", "discountPercentage": 19, "discountPurchaseAt": "1971-08-15T00:00:00Z", "discountedPrice": 72, "expireAt": "1986-11-09T00:00:00Z", "price": 73, "purchaseAt": "1988-09-18T00:00:00Z", "trialPrice": 20}, {"currencyCode": "JGOEiWJ8cLrryS5a", "currencyNamespace": "6A4tL8YKMrUBL6dD", "currencyType": "VIRTUAL", "discountAmount": 98, "discountExpireAt": "1992-12-08T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1978-06-13T00:00:00Z", "discountedPrice": 70, "expireAt": "1998-06-13T00:00:00Z", "price": 15, "purchaseAt": "1984-05-22T00:00:00Z", "trialPrice": 54}], "g2mhbI0NDshb7ZzQ": [{"currencyCode": "uBPyNi1GhZHEj6p5", "currencyNamespace": "grjk5wzdksOUku8d", "currencyType": "VIRTUAL", "discountAmount": 5, "discountExpireAt": "1992-04-11T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1978-10-13T00:00:00Z", "discountedPrice": 53, "expireAt": "1979-05-06T00:00:00Z", "price": 37, "purchaseAt": "1982-04-15T00:00:00Z", "trialPrice": 79}, {"currencyCode": "tgeR4UV5SMZ8GUvW", "currencyNamespace": "ZvoCmprkv7A8MRut", "currencyType": "VIRTUAL", "discountAmount": 46, "discountExpireAt": "1989-08-16T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1980-05-12T00:00:00Z", "discountedPrice": 33, "expireAt": "1986-04-12T00:00:00Z", "price": 100, "purchaseAt": "1983-05-12T00:00:00Z", "trialPrice": 2}, {"currencyCode": "zriOGB8b5qTFp3cI", "currencyNamespace": "xOI33nt54i5hdAez", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1972-08-02T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1984-05-06T00:00:00Z", "discountedPrice": 10, "expireAt": "1979-12-19T00:00:00Z", "price": 3, "purchaseAt": "1979-06-21T00:00:00Z", "trialPrice": 19}], "rnWJoTpYoe2uHaWn": [{"currencyCode": "O98YwqHZnEDkfmNb", "currencyNamespace": "DTMGgET2yS6C8a8L", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1981-12-15T00:00:00Z", "discountPercentage": 11, "discountPurchaseAt": "1986-12-28T00:00:00Z", "discountedPrice": 85, "expireAt": "1986-05-26T00:00:00Z", "price": 98, "purchaseAt": "1978-02-15T00:00:00Z", "trialPrice": 56}, {"currencyCode": "6fdmyi4kQnOFbBtv", "currencyNamespace": "Bw81hUgtONCIoZ2r", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1975-04-14T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1993-03-19T00:00:00Z", "discountedPrice": 43, "expireAt": "1995-03-07T00:00:00Z", "price": 26, "purchaseAt": "1989-08-06T00:00:00Z", "trialPrice": 70}, {"currencyCode": "jBXy8psNoHNalwgv", "currencyNamespace": "ju62rPFMbE1cW57G", "currencyType": "REAL", "discountAmount": 25, "discountExpireAt": "1991-04-07T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1990-02-21T00:00:00Z", "discountedPrice": 94, "expireAt": "1988-05-03T00:00:00Z", "price": 51, "purchaseAt": "1980-02-01T00:00:00Z", "trialPrice": 67}]}}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'BulkUpdateRegionData' test.out

#- 113 SearchItems
$PYTHON -m $MODULE 'platform-search-items' \
    'M9viFWmezrQOWH03' \
    'zyr7kRbC31YMJfRi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'SearchItems' test.out

#- 114 QueryUncategorizedItems
$PYTHON -m $MODULE 'platform-query-uncategorized-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 114 'QueryUncategorizedItems' test.out

#- 115 GetItem
$PYTHON -m $MODULE 'platform-get-item' \
    'D7djt1VeOFBDA3gv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 115 'GetItem' test.out

#- 116 UpdateItem
$PYTHON -m $MODULE 'platform-update-item' \
    'CRfoBijpbMblGWnp' \
    '94a6GKY0BrHiWs0B' \
    --body '{"appId": "0RhxQtgVgbN8kr87", "appType": "DEMO", "baseAppId": "hJvrOCdAEZ2RHt3u", "boothName": "Q5nFrPXwxJZQpkeD", "categoryPath": "Hr0hjKBpDMIvK4qf", "clazz": "Q0pQIcYMBktqqAAF", "displayOrder": 4, "entitlementType": "CONSUMABLE", "ext": {"G1dD1vECBb01VFFh": {}, "O5FcdTvIDQI2uIi2": {}, "SNZKqlJZsdnY04DI": {}}, "features": ["K4VctUmDhFVNa0JY", "zTbdnOnEarWP4nrJ", "yosprZPBaERb7U9k"], "images": [{"as": "5fNESRVGeswvkzLN", "caption": "IITUJGj5FYaSgewL", "height": 100, "imageUrl": "RDLxWgEWwoHpV8E1", "smallImageUrl": "xQZLa7Kw77UpCxNy", "width": 48}, {"as": "e6wG66YPD4vNdENY", "caption": "1r1rI0T97qA1Oibl", "height": 100, "imageUrl": "lVRNOF1Bg6OHZzvd", "smallImageUrl": "ZHoIm4tKNhPjNIQG", "width": 65}, {"as": "2nWlS9Sfjh0htyVa", "caption": "Gj4y9ahS7h7XVlmc", "height": 89, "imageUrl": "sLNEGrfy9qHKufJf", "smallImageUrl": "k0MeG3qYJr6PuCVK", "width": 100}], "itemIds": ["SJckSRbu7hgmUm7R", "VCUREDdoGatGQ1Se", "OXsg4jofp9PvlQ1x"], "itemQty": {"dmr4JDpvZgvPGHjV": 21, "MNTpM7fSods1zdVT": 21, "aWj58Othvd3jzMDA": 12}, "itemType": "SEASON", "listable": false, "localizations": {"bsLJ73mCPhhmUyIw": {"description": "gQS9kVFUbeTeB9Kg", "localExt": {"nFZQ9lVMNyCiytnf": {}, "MoO1I3KISTbn4yEa": {}, "2AaBRalz5HEm4Gan": {}}, "longDescription": "t6aqjKzWDAauqLKa", "title": "rcLQRQtC927GneBM"}, "8LvzgyIVzGFBLJ5v": {"description": "bC9NfLTFJGOzAIAq", "localExt": {"pmkDdFSs4s7u1VUu": {}, "LmenyxTQVkEg5wou": {}, "UKa35m8oH9zCfw7m": {}}, "longDescription": "CMkbvSIm7JROcwVm", "title": "GyrBpnTPF4VrRiFS"}, "Ps2ZMcVFcrixULzS": {"description": "eTnUWGxxfnMIDSCP", "localExt": {"r1m1Fg6tc250c2ok": {}, "DTem6o62xFY6TNqo": {}, "LFFS4wB6Um7ir0n6": {}}, "longDescription": "O3vbYVjrcErgoApA", "title": "xyDnHjAx7rZTvew0"}}, "lootBoxConfig": {"rewardCount": 99, "rewards": [{"lootBoxItems": [{"count": 67, "duration": 98, "endDate": "1971-09-03T00:00:00Z", "itemId": "n2SrKckNxLWH6rjh", "itemSku": "RL9uxoV5Oe8ktleP", "itemType": "Eo1xBuRSv6VizgtO"}, {"count": 24, "duration": 59, "endDate": "1983-03-10T00:00:00Z", "itemId": "cQ6B074dTJZqeOll", "itemSku": "KQNwJUGtC0tAhxn1", "itemType": "ay6ruu7PYWHODRb6"}, {"count": 37, "duration": 13, "endDate": "1976-09-01T00:00:00Z", "itemId": "Oj0lfYFGnQCAWidW", "itemSku": "PjYgyebU6rHFirnU", "itemType": "pZ9UJ4N78qHTGdn7"}], "name": "gE4bwLzDEw2PYt8x", "odds": 0.9985463503986258, "type": "REWARD_GROUP", "weight": 21}, {"lootBoxItems": [{"count": 91, "duration": 70, "endDate": "1971-02-28T00:00:00Z", "itemId": "OZcEvG6KZh954Bmt", "itemSku": "uIFllfSUnaUhC4x1", "itemType": "1AS2jTKoTYeHaCuN"}, {"count": 63, "duration": 53, "endDate": "1996-05-02T00:00:00Z", "itemId": "lKiTIDgP7wuXQdfW", "itemSku": "99JglScoOlkkBxiX", "itemType": "f8OBQRqXWXQ3JdXd"}, {"count": 66, "duration": 41, "endDate": "1984-08-11T00:00:00Z", "itemId": "pc0EEziE5yIvijq9", "itemSku": "ix16vo60jgvwV3C9", "itemType": "hJ1kSZonK02WHGVK"}], "name": "DcKulj3Pdegy4G6L", "odds": 0.6512465517731527, "type": "PROBABILITY_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 0, "duration": 21, "endDate": "1992-08-19T00:00:00Z", "itemId": "8CGKXGon2ecc65YA", "itemSku": "FLweD9Z7U2lNkorr", "itemType": "w9QH3rNhDepQum4D"}, {"count": 20, "duration": 57, "endDate": "1988-04-30T00:00:00Z", "itemId": "JZkwEcCRi2U7s2ZQ", "itemSku": "AarwH0c87v0PwZjy", "itemType": "dyzGDZM4zTTYI6O8"}, {"count": 4, "duration": 30, "endDate": "1972-05-02T00:00:00Z", "itemId": "DWUfcL1qsegBsrNq", "itemSku": "eW5BxVe8iW7sGELn", "itemType": "MdXRqdGPzxXvZPtr"}], "name": "hjeVBnTrsYihhgbe", "odds": 0.4344475900978231, "type": "REWARD_GROUP", "weight": 30}], "rollFunction": "DEFAULT"}, "maxCount": 64, "maxCountPerUser": 74, "name": "ncMUdmf8hD3nL1sa", "optionBoxConfig": {"boxItems": [{"count": 88, "duration": 45, "endDate": "1983-02-11T00:00:00Z", "itemId": "LYrz08jh6Tyq7WUi", "itemSku": "lXgtf5UctyV3aSw4", "itemType": "twReM5DcHde3fkHf"}, {"count": 8, "duration": 40, "endDate": "1995-09-28T00:00:00Z", "itemId": "RjZJWuCQpjuJzpPO", "itemSku": "7BPxVWlRFnIekrQ9", "itemType": "9ecmenxguw5bO8Vh"}, {"count": 45, "duration": 74, "endDate": "1982-01-04T00:00:00Z", "itemId": "7MqOsypCJmfRnW0s", "itemSku": "pgvjt7eCLDu6PA3P", "itemType": "RnQtB410iWT0SILV"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 9, "fixedTrialCycles": 100, "graceDays": 29}, "regionData": {"RucRpP1Tq7uYXhB6": [{"currencyCode": "FPfF5DvveMdBsPt1", "currencyNamespace": "9V2FkBPk0QLufK6e", "currencyType": "REAL", "discountAmount": 8, "discountExpireAt": "1994-04-14T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1979-02-22T00:00:00Z", "expireAt": "1971-01-10T00:00:00Z", "price": 13, "purchaseAt": "1993-02-07T00:00:00Z", "trialPrice": 67}, {"currencyCode": "1SwrbpmoF4DvNA1w", "currencyNamespace": "o9IAxV5C71gTw8BJ", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1975-01-19T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1980-03-31T00:00:00Z", "expireAt": "1982-04-17T00:00:00Z", "price": 95, "purchaseAt": "1980-11-13T00:00:00Z", "trialPrice": 43}, {"currencyCode": "CRdxXOBu3TWmHDVm", "currencyNamespace": "CGFoD7aNFj9wORAV", "currencyType": "VIRTUAL", "discountAmount": 33, "discountExpireAt": "1993-01-30T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1992-11-21T00:00:00Z", "expireAt": "1983-06-03T00:00:00Z", "price": 30, "purchaseAt": "1996-05-26T00:00:00Z", "trialPrice": 48}], "58kVk7F1KKOfFFLv": [{"currencyCode": "ER3xqCwUgKa4oCBo", "currencyNamespace": "JDxGa1UuSr4ehnV8", "currencyType": "VIRTUAL", "discountAmount": 47, "discountExpireAt": "1998-04-09T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1983-09-25T00:00:00Z", "expireAt": "1986-06-22T00:00:00Z", "price": 50, "purchaseAt": "1986-02-12T00:00:00Z", "trialPrice": 91}, {"currencyCode": "zZJsZd9sB6CV9KiW", "currencyNamespace": "kbdpGqWQIPK6mVyt", "currencyType": "VIRTUAL", "discountAmount": 36, "discountExpireAt": "1977-03-29T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1973-12-24T00:00:00Z", "expireAt": "1978-02-11T00:00:00Z", "price": 74, "purchaseAt": "1998-02-18T00:00:00Z", "trialPrice": 60}, {"currencyCode": "KYLk9DmjJh6PnpTX", "currencyNamespace": "WAUt8lgqNM4poGEv", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1988-08-19T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1973-05-24T00:00:00Z", "expireAt": "1999-06-19T00:00:00Z", "price": 78, "purchaseAt": "1980-07-27T00:00:00Z", "trialPrice": 78}], "ABDhYAVxvs3ugNvv": [{"currencyCode": "gI2k1P9nQxzj3Anm", "currencyNamespace": "pWfje5cAtTDvwFHc", "currencyType": "REAL", "discountAmount": 16, "discountExpireAt": "1991-09-20T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1978-03-12T00:00:00Z", "expireAt": "1977-09-13T00:00:00Z", "price": 30, "purchaseAt": "1984-09-11T00:00:00Z", "trialPrice": 95}, {"currencyCode": "1pccdjjZpFnVLb7x", "currencyNamespace": "erpjVPfktNnl8UYH", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1973-06-06T00:00:00Z", "discountPercentage": 1, "discountPurchaseAt": "1981-09-04T00:00:00Z", "expireAt": "1991-04-17T00:00:00Z", "price": 40, "purchaseAt": "1971-07-25T00:00:00Z", "trialPrice": 69}, {"currencyCode": "cYsKkgX0RMDxvlK9", "currencyNamespace": "RnTEYv5eDhCxwy85", "currencyType": "VIRTUAL", "discountAmount": 16, "discountExpireAt": "1976-05-12T00:00:00Z", "discountPercentage": 15, "discountPurchaseAt": "1995-06-29T00:00:00Z", "expireAt": "1999-12-17T00:00:00Z", "price": 58, "purchaseAt": "1978-02-22T00:00:00Z", "trialPrice": 5}]}, "saleConfig": {"currencyCode": "Hr3f6UqFGCvsMFEF", "price": 24}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "QbKWMJ0aODiWn6bP", "stackable": false, "status": "ACTIVE", "tags": ["51vuaFyqjQsTGmzI", "Uu9hINqKvoYKio4M", "LaVJwe2KAca1aKeX"], "targetCurrencyCode": "tJIOkEIRsSWOV8Ly", "targetNamespace": "ivYbMG9LXPbBh2E3", "thumbnailUrl": "wFchP3zTymfVfny2", "useCount": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 116 'UpdateItem' test.out

#- 117 DeleteItem
$PYTHON -m $MODULE 'platform-delete-item' \
    'J0hRPUBFxM2Fr3ol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'DeleteItem' test.out

#- 118 AcquireItem
$PYTHON -m $MODULE 'platform-acquire-item' \
    'O10RAyIZs2VfCRhz' \
    --body '{"count": 12, "orderNo": "479gn62lizsWGrtI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AcquireItem' test.out

#- 119 GetApp
$PYTHON -m $MODULE 'platform-get-app' \
    'gVPb7hoo8YkNPW8m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'GetApp' test.out

#- 120 UpdateApp
$PYTHON -m $MODULE 'platform-update-app' \
    'WOJGtdXJGDsxRAR3' \
    'NObYp43YXMHqWeVj' \
    --body '{"carousel": [{"alt": "nOURxGvOhz9s7ktW", "previewUrl": "kJDaHg6kDVjxhxRx", "thumbnailUrl": "jeDrqCfJEjrqJkFo", "type": "image", "url": "FZex0eOw31PXkVne", "videoSource": "vimeo"}, {"alt": "tfFQv384ri6A7z0h", "previewUrl": "sW0IHIYvJ7PPgVaF", "thumbnailUrl": "wGhl5zqkzEu41hVf", "type": "video", "url": "C7eLVWGk0GjYReIZ", "videoSource": "generic"}, {"alt": "RBra3I4K9iBdljXt", "previewUrl": "owifBfAw30kOykBu", "thumbnailUrl": "DJ0IPQeAL4MZwEVJ", "type": "image", "url": "fqjDBzOjNeq8JJhb", "videoSource": "generic"}], "developer": "OfDfoMgU2yFBTPfn", "forumUrl": "mfN5E20ORMCVBTrk", "genres": ["MassivelyMultiplayer", "Simulation", "Strategy"], "localizations": {"crZHMKoTcIXeKZzZ": {"announcement": "Bo6ARaQnNZQ1R0PG", "slogan": "BFVnc37aWVjM3iVK"}, "jr5VDqakKdW767GA": {"announcement": "H1oiS1JuO7MNoFPt", "slogan": "RhYYIpNqVHbbCVwb"}, "itD5tWXZVvjYqrEX": {"announcement": "KUDlmtixw9FtBVAW", "slogan": "T8PxL8674KYMeN2W"}}, "platformRequirements": {"2CNqmO8JALtCiDuG": [{"additionals": "QQsvWV3NSjXUXSMK", "directXVersion": "Y09x4TKOwsyRNnaL", "diskSpace": "Nhw0xGnXc29UDQxe", "graphics": "iBo2hB9u1v1POCjs", "label": "eK1xaSbMjyFrYsIT", "osVersion": "cyT5AhNNH0Ht1yPt", "processor": "BwXIuYrbPUcvEOJ4", "ram": "PghksbaThW37NTbz", "soundCard": "8HiRmuknvXiTP0Kr"}, {"additionals": "WQ3pgbHM0Svy3GRe", "directXVersion": "nDzwlTE9Czhnck3G", "diskSpace": "nyPFQHgn9jVE6QGk", "graphics": "Z8AVzeiaDi67E3rT", "label": "wN2LrT85Arfe6Ewe", "osVersion": "JxWANt1bDay64EnF", "processor": "yFeW0oNhddKrrhzw", "ram": "z2PFXC33KjLNUFQJ", "soundCard": "gCWV7dj8I5eVnflH"}, {"additionals": "2hnMV6Yxtl5DKUhj", "directXVersion": "By9oWPcMIQc5lRQo", "diskSpace": "jhJgpXVCubdw0sPr", "graphics": "gDKqHCs5GTdTLCxJ", "label": "qK7dgsgrnpVE1acx", "osVersion": "ZoDXdPORkWkyTcJz", "processor": "vDUlhTlBNpvkjg48", "ram": "iVKCqEqeZP1CFaMk", "soundCard": "JVBkZU3qtk0dM4GZ"}], "GiSutb6wUxEikRyH": [{"additionals": "C9VWMnzbuNQNJxCb", "directXVersion": "LEhfrPxIRdbUwkN6", "diskSpace": "Tr6vRneC9JYmpKyZ", "graphics": "GtqWw67LheLDvwZj", "label": "thGMOB4HFIzTlGBn", "osVersion": "pLBd02br9OfMbjgS", "processor": "5WjduKixzScfrHzG", "ram": "YC1TdLVDBDxK6laO", "soundCard": "keLBcprByjUr7w9w"}, {"additionals": "1xKUrLmQSkuEMRzy", "directXVersion": "erpya2oBjbgBhOdX", "diskSpace": "E8y1PNIzbnPB5wG6", "graphics": "5f3ACfS3A8JeRMYU", "label": "Cgn7oklNewpAIwtl", "osVersion": "AooXZ7HDb8g2BhzW", "processor": "03O2pp9qVpZbsppR", "ram": "sBWQ7RdYqZaQ8swc", "soundCard": "FOshiWEFDMG99v5L"}, {"additionals": "SSkkEoAarkgZ773c", "directXVersion": "dzYhgH24VR4hJnsU", "diskSpace": "1m6zryXmvvvPmueV", "graphics": "VC0ymY7ABWgZVxM4", "label": "rAqxlnHLAFNEwXBs", "osVersion": "CkfqzKlzlLgHPF5i", "processor": "RWnREifOFJQwGPy5", "ram": "zGebVw9nLvVm8UeF", "soundCard": "UbaGb5on2kvdeu5D"}], "fAxsrX7OiSRs0z2R": [{"additionals": "YA8fTlbfUOSmR4F0", "directXVersion": "p5g7b3MegxV9JnAJ", "diskSpace": "Su3MX2yYJopKxd9M", "graphics": "tXYGoZGkBNXT0feu", "label": "7KKPXunBZiqYaReD", "osVersion": "04717oGCmrTUcZy3", "processor": "DDSxpWZV6J5QloYC", "ram": "aB5ImpxpHJCcuqJR", "soundCard": "2TT3HEYBW8Aq2KVQ"}, {"additionals": "NFGaJEyBVlQ5iHlT", "directXVersion": "qgMzvj8sHLF7s3hg", "diskSpace": "mxOOzP7vteUYzMZz", "graphics": "ggFcJQkYueQLLJPh", "label": "6HpodpzuBQwTS66q", "osVersion": "r03Mp14S8HG9ID7m", "processor": "Z4eKHaAP4PYToJAM", "ram": "gJkC8UGlqb7cexeE", "soundCard": "hHz7OKYNIMPTFnrb"}, {"additionals": "ysdru1PotArVtIQy", "directXVersion": "xp17b8SHvRIiJgGr", "diskSpace": "dz6Ar6ZMGUI9Z0Fo", "graphics": "l65yD1dLBQJcBsvU", "label": "aK2iHOkgyhgijqtd", "osVersion": "zrvCDzH5ACyLXmLs", "processor": "HXWPqYBJTzlt302k", "ram": "4rdWgWYgFgw3mGmo", "soundCard": "gCJXjHTGhyemqqwo"}]}, "platforms": ["Windows", "Android", "MacOS"], "players": ["CrossPlatformMulti", "CrossPlatformMulti", "MMO"], "primaryGenre": "Sports", "publisher": "wuD6giqKLavCF9yV", "releaseDate": "1973-10-18T00:00:00Z", "websiteUrl": "AYJeb1GUdtB5G8NI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'UpdateApp' test.out

#- 121 DisableItem
$PYTHON -m $MODULE 'platform-disable-item' \
    'TA0g58cqZn79u2gr' \
    'irdqELbdqXaPlAMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'DisableItem' test.out

#- 122 GetItemDynamicData
$PYTHON -m $MODULE 'platform-get-item-dynamic-data' \
    'm4h3PbLHDa7uqaax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'GetItemDynamicData' test.out

#- 123 EnableItem
$PYTHON -m $MODULE 'platform-enable-item' \
    'qXPKuNAeKKjcKgU2' \
    '63PawPB10d4KCtC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'EnableItem' test.out

#- 124 FeatureItem
$PYTHON -m $MODULE 'platform-feature-item' \
    'mqs8uXBZ2Kxk4a5F' \
    'eKFm3raYpWl0MfF3' \
    'iAQb4Iiy26m51AwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'FeatureItem' test.out

#- 125 DefeatureItem
$PYTHON -m $MODULE 'platform-defeature-item' \
    'v4UKmP7eczfnYgOq' \
    'XhJZ6DIokID1ZFk9' \
    'fRCHfId0Dhnin8Rx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'DefeatureItem' test.out

#- 126 GetLocaleItem
$PYTHON -m $MODULE 'platform-get-locale-item' \
    'nO0qs4FykFXDdcUu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'GetLocaleItem' test.out

#- 127 UpdateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-update-item-purchase-condition' \
    'EE9wh4CEOrPY29A1' \
    'L1Xijb7GTIFWcZWK' \
    --body '{"purchaseCondition": {"conditionGroups": [{"operator": "and", "predicates": [{"anyOf": 24, "comparison": "isLessThanOrEqual", "name": "9MBp1AEcNUzfWwpd", "predicateType": "SeasonPassPredicate", "value": "Jzmy6DtxvO3nUiVM", "values": ["7UfbH7Qv0Eyy6G3n", "kPAHldms0Nwlx85u", "83Sb2WXmcXtuUYtY"]}, {"anyOf": 28, "comparison": "includes", "name": "vbUiBJfyM9bc1hgF", "predicateType": "SeasonPassPredicate", "value": "MGheYVteLiiIKPjo", "values": ["WJlLrbVQceKy5JZK", "kv6HMQOekLKHziTw", "5M3KvzpUEcp3cp4f"]}, {"anyOf": 36, "comparison": "excludes", "name": "VpGdpzlwFNJyyLoz", "predicateType": "EntitlementPredicate", "value": "a8Ksjfnk7HKSWULk", "values": ["7fBJaU43PzOITmqj", "rcuIH9i4ICwRHM51", "EKqQ4ToqWjpaECYi"]}]}, {"operator": "and", "predicates": [{"anyOf": 76, "comparison": "excludes", "name": "tDb6RZXatSimmKud", "predicateType": "SeasonPassPredicate", "value": "cEyfbUswXLyVVZqZ", "values": ["UkTKjXxvgslvMlla", "EVugbCEifQCe5eN8", "pYAdyPafGBlwnYRp"]}, {"anyOf": 16, "comparison": "includes", "name": "idqRPQ1hSmShNaSm", "predicateType": "SeasonTierPredicate", "value": "FsmFW74DkabvmYAT", "values": ["vE1N52PwdeTQhMz9", "6qTg6ZOaTNC1LAen", "tTXWyBmb2Ir2yOaV"]}, {"anyOf": 100, "comparison": "excludes", "name": "SsLchLBElch9a9Kn", "predicateType": "EntitlementPredicate", "value": "XBCZr4m1UpizE7fm", "values": ["GokG4VQKR0ItcCnX", "00IB0YnQ5xpjcMxU", "FRjhk7tzIHqZpgJq"]}]}, {"operator": "and", "predicates": [{"anyOf": 15, "comparison": "isLessThan", "name": "gy51k1e1gZ8QCEx4", "predicateType": "SeasonPassPredicate", "value": "nhN2NMDXEHz2uROY", "values": ["qy72xPhtIM8Rw0xH", "ZOUW3jlXYz8azHYd", "zaYe7WjwoU21Edgo"]}, {"anyOf": 83, "comparison": "isGreaterThan", "name": "vT13nFPxMy9YNTBZ", "predicateType": "SeasonTierPredicate", "value": "YPmtE6fcv3nPROvD", "values": ["1FiqEUhsD6QxKzbZ", "mX2OFLws9RV6lY9I", "7xvbLKNa3OJMFdrQ"]}, {"anyOf": 67, "comparison": "isLessThan", "name": "sZjUsSUE7NuCYEOW", "predicateType": "SeasonTierPredicate", "value": "icwWRvvZB46NCiqd", "values": ["leq2jCNZAKjBlI9f", "ih358Lf5RXgVFrsR", "sL6HEOiPcSKlQDo4"]}]}]}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'UpdateItemPurchaseCondition' test.out

#- 128 ReturnItem
$PYTHON -m $MODULE 'platform-return-item' \
    '55cpOV3Qg6eU0Mc2' \
    --body '{"orderNo": "1ZZliCydumMW9HWH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'ReturnItem' test.out

#- 129 QueryKeyGroups
$PYTHON -m $MODULE 'platform-query-key-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'QueryKeyGroups' test.out

#- 130 CreateKeyGroup
$PYTHON -m $MODULE 'platform-create-key-group' \
    --body '{"description": "fZ3bFTqXqdzpP7Rk", "name": "1qbFWhtwNaVCqf0v", "status": "INACTIVE", "tags": ["84yQAbudR95sQ1Fy", "gQvoX9pEJ3R0cuQG", "jCShSTNyM9yuMOFa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'CreateKeyGroup' test.out

#- 131 GetKeyGroupByBoothName
eval_tap 0 131 'GetKeyGroupByBoothName # SKIP deprecated' test.out

#- 132 GetKeyGroup
$PYTHON -m $MODULE 'platform-get-key-group' \
    'vgMWyxizWKQdVExu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'GetKeyGroup' test.out

#- 133 UpdateKeyGroup
$PYTHON -m $MODULE 'platform-update-key-group' \
    'kcKDUzhKKARjqJSW' \
    --body '{"description": "ImXvaLXkvZvwk0v0", "name": "OKy45dqId3gXUWVA", "status": "ACTIVE", "tags": ["T3zo8gxMqM1wUdXs", "MjUbhRjnDrYWlRfP", "pgHg36d9NP5nNvzI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'UpdateKeyGroup' test.out

#- 134 GetKeyGroupDynamic
$PYTHON -m $MODULE 'platform-get-key-group-dynamic' \
    'lwtYI9wKX9V1XxF2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'GetKeyGroupDynamic' test.out

#- 135 ListKeys
$PYTHON -m $MODULE 'platform-list-keys' \
    'CFfEpf0qN2twLYXq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'ListKeys' test.out

#- 136 UploadKeys
$PYTHON -m $MODULE 'platform-upload-keys' \
    '4HSEGpaUMmdPXWaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'UploadKeys' test.out

#- 137 QueryOrders
$PYTHON -m $MODULE 'platform-query-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'QueryOrders' test.out

#- 138 GetOrderStatistics
$PYTHON -m $MODULE 'platform-get-order-statistics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'GetOrderStatistics' test.out

#- 139 GetOrder
$PYTHON -m $MODULE 'platform-get-order' \
    'Rdn3WMdrhlWqCc54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'GetOrder' test.out

#- 140 RefundOrder
$PYTHON -m $MODULE 'platform-refund-order' \
    'JfyGzMMHiVQ6covY' \
    --body '{"description": "DuI4l1d9YaLVuL1m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RefundOrder' test.out

#- 141 GetPaymentCallbackConfig
$PYTHON -m $MODULE 'platform-get-payment-callback-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'GetPaymentCallbackConfig' test.out

#- 142 UpdatePaymentCallbackConfig
$PYTHON -m $MODULE 'platform-update-payment-callback-config' \
    --body '{"dryRun": false, "notifyUrl": "5pId36F25c13PNqP", "privateKey": "n7XRlnqiWP9WWQMG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'UpdatePaymentCallbackConfig' test.out

#- 143 QueryPaymentNotifications
$PYTHON -m $MODULE 'platform-query-payment-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'QueryPaymentNotifications' test.out

#- 144 QueryPaymentOrders
$PYTHON -m $MODULE 'platform-query-payment-orders' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'QueryPaymentOrders' test.out

#- 145 CreatePaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-create-payment-order-by-dedicated' \
    --body '{"currencyCode": "mm0biVjE8A3EsOz8", "currencyNamespace": "LDnxgL0t7Qhdw4vm", "customParameters": {"SxnJcyaijSCsFa6i": {}, "pRu1AaFjz0yLelzM": {}, "zWiPzugdDu6rxIv2": {}}, "description": "ZMtZX5KZK53tX2ox", "extOrderNo": "mEDDgGBgPWHmOLBL", "extUserId": "lsw2pDJDLeJwzbVE", "itemType": "MEDIA", "language": "sEle_156", "metadata": {"CStzvOyY1tNKAVWv": "5cGRm3WTx0oyOryc", "ewrnLBAZlvnOJeNx": "ZdT1fZJTutZpZZn6", "egDbFDXW3N42ccGU": "RTnJUdR3MUQnEeAN"}, "notifyUrl": "ANjqBdfMMU89e6CI", "omitNotification": true, "platform": "HsI11lC6BXyQW3eG", "price": 48, "recurringPaymentOrderNo": "BvuCoP1hIpdIWajZ", "region": "TyB7k7Q9zNJHkXmH", "returnUrl": "B9cu1ZdRIZ1hHCpA", "sandbox": false, "sku": "vXrqLxUCyNQUITTM", "subscriptionId": "8jU9tfr6NkPjb60b", "targetNamespace": "0Y8RDVgsQzaeOv7x", "targetUserId": "B8GlNYJeVVZQH5C7", "title": "6GaeCobrGOAvaYct"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'CreatePaymentOrderByDedicated' test.out

#- 146 ListExtOrderNoByExtTxId
$PYTHON -m $MODULE 'platform-list-ext-order-no-by-ext-tx-id' \
    'Xd3jNOlJBjBMsJis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'ListExtOrderNoByExtTxId' test.out

#- 147 GetPaymentOrder
$PYTHON -m $MODULE 'platform-get-payment-order' \
    'Mu1kQcGm0x3DmUah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'GetPaymentOrder' test.out

#- 148 ChargePaymentOrder
$PYTHON -m $MODULE 'platform-charge-payment-order' \
    'jPVDOEmwpWiJYxvv' \
    --body '{"extTxId": "QCHIreoYDgNe1Ryy", "paymentMethod": "dtCBznu3BT2fe68s", "paymentProvider": "WXPAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'ChargePaymentOrder' test.out

#- 149 RefundPaymentOrderByDedicated
$PYTHON -m $MODULE 'platform-refund-payment-order-by-dedicated' \
    '8vRJ3ebbfa3ep8cK' \
    --body '{"description": "Nlb024FzQsBlwn2p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RefundPaymentOrderByDedicated' test.out

#- 150 SimulatePaymentOrderNotification
$PYTHON -m $MODULE 'platform-simulate-payment-order-notification' \
    'N8vqhPmlYgFAu9gD' \
    --body '{"amount": 23, "currencyCode": "vsiDfzK1gMLvJ1Kq", "notifyType": "REFUND", "paymentProvider": "ADYEN", "salesTax": 58, "vat": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'SimulatePaymentOrderNotification' test.out

#- 151 GetPaymentOrderChargeStatus
$PYTHON -m $MODULE 'platform-get-payment-order-charge-status' \
    'anZaGzamJ8JZ6lV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'GetPaymentOrderChargeStatus' test.out

#- 152 GetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-get-platform-wallet-config' \
    'Playstation' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'GetPlatformWalletConfig' test.out

#- 153 UpdatePlatformWalletConfig
$PYTHON -m $MODULE 'platform-update-platform-wallet-config' \
    'Nintendo' \
    --body '{"allowedBalanceOrigins": ["Oculus", "Nintendo", "Steam"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'UpdatePlatformWalletConfig' test.out

#- 154 ResetPlatformWalletConfig
$PYTHON -m $MODULE 'platform-reset-platform-wallet-config' \
    'GooglePlay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'ResetPlatformWalletConfig' test.out

#- 155 GetRevocationConfig
$PYTHON -m $MODULE 'platform-get-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'GetRevocationConfig' test.out

#- 156 UpdateRevocationConfig
$PYTHON -m $MODULE 'platform-update-revocation-config' \
    --body '{"entitlement": {"consumable": {"enabled": true, "strategy": "REVOKE_OR_REPORT"}, "durable": {"enabled": false, "strategy": "REVOKE_OR_REPORT"}}, "wallet": {"enabled": true, "strategy": "ALWAYS_REVOKE"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'UpdateRevocationConfig' test.out

#- 157 DeleteRevocationConfig
$PYTHON -m $MODULE 'platform-delete-revocation-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'DeleteRevocationConfig' test.out

#- 158 QueryRevocationHistories
$PYTHON -m $MODULE 'platform-query-revocation-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'QueryRevocationHistories' test.out

#- 159 GetRevocationPluginConfig
$PYTHON -m $MODULE 'platform-get-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'GetRevocationPluginConfig' test.out

#- 160 UpdateRevocationPluginConfig
$PYTHON -m $MODULE 'platform-update-revocation-plugin-config' \
    --body '{"appConfig": {"appName": "iCZH2KBHwuAW3jLk"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "fXpIPlcaufemZ4xl"}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'UpdateRevocationPluginConfig' test.out

#- 161 DeleteRevocationPluginConfig
$PYTHON -m $MODULE 'platform-delete-revocation-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'DeleteRevocationPluginConfig' test.out

#- 162 UploadRevocationPluginConfigCert
$PYTHON -m $MODULE 'platform-upload-revocation-plugin-config-cert' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'UploadRevocationPluginConfigCert' test.out

#- 163 CreateReward
$PYTHON -m $MODULE 'platform-create-reward' \
    --body '{"description": "rnB83a6h6dNfg9f2", "eventTopic": "5YsZ1L6IGHuO7u2t", "maxAwarded": 83, "maxAwardedPerUser": 34, "namespaceExpression": "Upmu6zULXQMirzwM", "rewardCode": "shTQYUnfHWyBg5c3", "rewardConditions": [{"condition": "Wq2dGygLo40eCb82", "conditionName": "j4OhaAiWk4TKx1WR", "eventName": "jiCokzg7q7bMwxVA", "rewardItems": [{"duration": 41, "endDate": "1980-03-15T00:00:00Z", "itemId": "ArSRypvu88WyRMMR", "quantity": 24}, {"duration": 96, "endDate": "1978-01-02T00:00:00Z", "itemId": "XySTO9W3BEI4eB0P", "quantity": 69}, {"duration": 29, "endDate": "1986-09-10T00:00:00Z", "itemId": "os8o1PdTDqm0SXzX", "quantity": 82}]}, {"condition": "I26D2IdXV2RNnCRn", "conditionName": "6spzE0Dj97Arjpd7", "eventName": "IRveArOFED1MAfVZ", "rewardItems": [{"duration": 15, "endDate": "1984-08-07T00:00:00Z", "itemId": "cB6Pd2uPwzliHiPY", "quantity": 42}, {"duration": 60, "endDate": "1982-05-03T00:00:00Z", "itemId": "UtR55gCTACz3aLd0", "quantity": 10}, {"duration": 42, "endDate": "1997-06-14T00:00:00Z", "itemId": "QGkwoIQo88hLxgR5", "quantity": 54}]}, {"condition": "Zxob6vepvgW3Vmnz", "conditionName": "3WsgPS6R3Uev7bCs", "eventName": "ylPZDz1fiXmZReVZ", "rewardItems": [{"duration": 72, "endDate": "1975-04-21T00:00:00Z", "itemId": "BtZCHdlmOzx9DrwT", "quantity": 70}, {"duration": 6, "endDate": "1988-10-14T00:00:00Z", "itemId": "U4T74NkroVwJFRFL", "quantity": 27}, {"duration": 92, "endDate": "1980-05-23T00:00:00Z", "itemId": "SyJhQApjt9Vvn7My", "quantity": 20}]}], "userIdExpression": "C482FeT76mWyDrmG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'CreateReward' test.out

#- 164 QueryRewards
$PYTHON -m $MODULE 'platform-query-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'QueryRewards' test.out

#- 165 ExportRewards
$PYTHON -m $MODULE 'platform-export-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'ExportRewards' test.out

#- 166 ImportRewards
$PYTHON -m $MODULE 'platform-import-rewards' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'ImportRewards' test.out

#- 167 GetReward
$PYTHON -m $MODULE 'platform-get-reward' \
    'HQOjtRg7ST2UVRJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetReward' test.out

#- 168 UpdateReward
$PYTHON -m $MODULE 'platform-update-reward' \
    '0qFJaGDiDmatCvCe' \
    --body '{"description": "mbJFNyIwxPt19hjy", "eventTopic": "I7ALyZHQ8V4AejtU", "maxAwarded": 79, "maxAwardedPerUser": 56, "namespaceExpression": "6llcl5hdZoPhVcQ4", "rewardCode": "wXeArPe089cqMuV8", "rewardConditions": [{"condition": "MLxiTO3GhLJ2qx2h", "conditionName": "93yz3Y7YtgdQMhzp", "eventName": "cpwawMF0j9IirMeP", "rewardItems": [{"duration": 46, "endDate": "1973-07-22T00:00:00Z", "itemId": "qiRU6n8IKPZ1kpSe", "quantity": 90}, {"duration": 26, "endDate": "1978-10-04T00:00:00Z", "itemId": "oa84wgi9Qjy4LtkY", "quantity": 38}, {"duration": 45, "endDate": "1983-05-01T00:00:00Z", "itemId": "CJFj0ayzojVNIrqZ", "quantity": 58}]}, {"condition": "ehIhJk597xUXpiOL", "conditionName": "FQFxY4AHLzQnClUt", "eventName": "kXb0SoMLqijtgLSG", "rewardItems": [{"duration": 93, "endDate": "1985-04-22T00:00:00Z", "itemId": "9LNziCP1xQygVqAi", "quantity": 30}, {"duration": 44, "endDate": "1990-12-13T00:00:00Z", "itemId": "ka1tx56AwxAJU0XO", "quantity": 30}, {"duration": 7, "endDate": "1996-09-16T00:00:00Z", "itemId": "0XAvFitLhI0sqjfu", "quantity": 2}]}, {"condition": "gOFZPtLUvuPK7wBm", "conditionName": "EY4lD14f0XIJh3ux", "eventName": "rBGEumeTG434Dmlb", "rewardItems": [{"duration": 47, "endDate": "1977-03-17T00:00:00Z", "itemId": "uZpKPB4rzvo2R5Q7", "quantity": 41}, {"duration": 17, "endDate": "1990-07-05T00:00:00Z", "itemId": "4YbPsF33KhfoL7Pl", "quantity": 64}, {"duration": 17, "endDate": "1980-06-08T00:00:00Z", "itemId": "47mQAQQzQAxQ8GRg", "quantity": 100}]}], "userIdExpression": "80cxjAXFOLYQX2ry"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'UpdateReward' test.out

#- 169 DeleteReward
$PYTHON -m $MODULE 'platform-delete-reward' \
    'H4oq6fdhzarU0Vtm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'DeleteReward' test.out

#- 170 CheckEventCondition
$PYTHON -m $MODULE 'platform-check-event-condition' \
    'wcYLuVxqvaL6vdJr' \
    --body '{"payload": {"0yQVV1r0LACcKuAd": {}, "2SElOn16dw0nzH9X": {}, "MG2c5BWrzKJ0Lj0V": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'CheckEventCondition' test.out

#- 171 DeleteRewardConditionRecord
$PYTHON -m $MODULE 'platform-delete-reward-condition-record' \
    'Nzr8kTl05oiubu5H' \
    --body '{"conditionName": "Hlb7VI1cHNU3pvbp", "userId": "yJTgwl3ZOMpzNQDt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'DeleteRewardConditionRecord' test.out

#- 172 QuerySections
$PYTHON -m $MODULE 'platform-query-sections' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'QuerySections' test.out

#- 173 CreateSection
$PYTHON -m $MODULE 'platform-create-section' \
    'QNlDFMazvRX5v3UC' \
    --body '{"active": false, "displayOrder": 3, "endDate": "1999-11-07T00:00:00Z", "ext": {"Inv5lG8WEklkFFkJ": {}, "Pn2yomTQth1iJOyD": {}, "ZJCwufYAURyXVoJ9": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 100, "itemCount": 63, "rule": "SEQUENCE"}, "items": [{"id": "9kuWMnRcGzbD5iC3", "sku": "4s0kTiXwPjN8E3wX"}, {"id": "z4Q1L3hAG9xOOi4D", "sku": "VUYo37I8Mgh1DJAR"}, {"id": "pi5KzpbDPfXdGvod", "sku": "rl6UOwYZJq3OJhzl"}], "localizations": {"gtX87XuWOIpQwptc": {"description": "vroohLb6q3F16PO9", "localExt": {"YdwqEszRnwVX2rvV": {}, "r6DpLOyrgsLZV9ar": {}, "TxBgnOqH9lyv8wx2": {}}, "longDescription": "JosSHLipk5N6e79z", "title": "CfL2ar4zJmB2wifD"}, "A7LpND5zXLhrmEeB": {"description": "wTzs9QmLReEZ0r6n", "localExt": {"6anryoVkl4tChuDi": {}, "bBIH1dyZPHtYHKqp": {}, "l1Xk1CdFvYqfoYzB": {}}, "longDescription": "c16XXXuoJGXCyzA8", "title": "a5uh1LdVOaWOjRin"}, "mMTxEz6bdDFDqRMy": {"description": "TZOXYRC3gIRiYFpD", "localExt": {"lAEyVuvyXITMn2F8": {}, "6xZRHxnOP02x00Sv": {}, "R2yNPms1DdUL5bc6": {}}, "longDescription": "QMB9TtHXqeaYlaYm", "title": "2XGN51wxYTCHYaW7"}}, "name": "BAFZnpxmzs0AQYJn", "rotationType": "FIXED_PERIOD", "startDate": "1977-07-08T00:00:00Z", "viewId": "ht4JsrC6ho0XSsR3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'CreateSection' test.out

#- 174 PurgeExpiredSection
$PYTHON -m $MODULE 'platform-purge-expired-section' \
    'HPQNrtkf3M9oI3ym' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'PurgeExpiredSection' test.out

#- 175 GetSection
$PYTHON -m $MODULE 'platform-get-section' \
    'Yms9fuih2WMLldox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'GetSection' test.out

#- 176 UpdateSection
$PYTHON -m $MODULE 'platform-update-section' \
    'YLZHiFEo5sDrk8BZ' \
    '0jnV4jAAxGZ794ng' \
    --body '{"active": true, "displayOrder": 63, "endDate": "1992-07-13T00:00:00Z", "ext": {"htIp1XL7HL2nKoPX": {}, "xLMtU6hLliy7em6o": {}, "x8O9f2ojEQrZ645L": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 31, "itemCount": 0, "rule": "SEQUENCE"}, "items": [{"id": "FJniJl9RPULWpWw5", "sku": "UQBldfnMF2X9wbQz"}, {"id": "3euR4MhLQs8XliOo", "sku": "WqixFdv5aDRSnCrI"}, {"id": "Q2kChyafmo2nIKr9", "sku": "krylalbZWuO0OVwG"}], "localizations": {"UgR3PEWI0N4k2W2c": {"description": "aqaRVdR05rSilF29", "localExt": {"Lpg0zAUzpliq50de": {}, "mc4rS3d2v2ibO04g": {}, "NmB9r9MA5lA6x0lY": {}}, "longDescription": "16PWsrsxYq77iFOu", "title": "0ybeoERsKMCPmtnE"}, "1aHAuVZKYNaKhi81": {"description": "nO4RNjvO8rZ5NL7E", "localExt": {"bburWcSjdGGqd31L": {}, "6KqJTL11T4vlBRDj": {}, "j3FKvRIguqDEJfdx": {}}, "longDescription": "sQXLRJRONKh0R0RX", "title": "J6anzAeqD1HlhQ1r"}, "qjRECHyhLYGnvEdC": {"description": "jYsnh0Y0rQluvKzi", "localExt": {"VTCPTrqHc7vqaXxx": {}, "iGOrXbWC2k23JxAI": {}, "3kOXwHnS2VOESYx4": {}}, "longDescription": "9M1JdtImLI5eTuHq", "title": "CNtVlNaGzoqpAFVT"}}, "name": "8PkW7ouFIdlTuous", "rotationType": "NONE", "startDate": "1979-01-21T00:00:00Z", "viewId": "F5uo9BT2QqCxWZGj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'UpdateSection' test.out

#- 177 DeleteSection
$PYTHON -m $MODULE 'platform-delete-section' \
    'DRc27d9a3AaZO1Vc' \
    'AqwHJEyMrwNINM4z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'DeleteSection' test.out

#- 178 ListStores
$PYTHON -m $MODULE 'platform-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'ListStores' test.out

#- 179 CreateStore
$PYTHON -m $MODULE 'platform-create-store' \
    --body '{"defaultLanguage": "HFF9ucrEcYD5hjgr", "defaultRegion": "xoEVEIkvpWupGhta", "description": "U3oC1Ly7xHbAN2Bd", "supportedLanguages": ["v1CfQOijhEI21znt", "i03vAJizEosjuIsT", "XKAQ4uWLCMgN7rU1"], "supportedRegions": ["yiWEODovRwzU7QiA", "NYIF1YbEZwEzBNPC", "CnVKYp3EQx9pSofi"], "title": "ZZNcWBxK2ScBMbps"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'CreateStore' test.out

#- 180 ImportStore
eval_tap 0 180 'ImportStore # SKIP deprecated' test.out

#- 181 GetPublishedStore
$PYTHON -m $MODULE 'platform-get-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetPublishedStore' test.out

#- 182 DeletePublishedStore
$PYTHON -m $MODULE 'platform-delete-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'DeletePublishedStore' test.out

#- 183 GetPublishedStoreBackup
$PYTHON -m $MODULE 'platform-get-published-store-backup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'GetPublishedStoreBackup' test.out

#- 184 RollbackPublishedStore
$PYTHON -m $MODULE 'platform-rollback-published-store' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'RollbackPublishedStore' test.out

#- 185 GetStore
$PYTHON -m $MODULE 'platform-get-store' \
    'jgGDmxpN0sNW3RHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetStore' test.out

#- 186 UpdateStore
$PYTHON -m $MODULE 'platform-update-store' \
    'ioyNedQ1E2lQg6rS' \
    --body '{"defaultLanguage": "Zj7yw7aPU0DqhD5a", "defaultRegion": "gSwSs0ORF2pLQCqP", "description": "GUmF8pQCrEqdstmo", "supportedLanguages": ["PJurb0FVZK7sonuz", "Tm1gseYPsB00G8mo", "Kbti7cqKdwnwTyTy"], "supportedRegions": ["r1XXDYClbgXA2XAT", "EcyKtSz6QsS6BHqs", "2Z5aknpCHXIr8Jnd"], "title": "NzIiCZiPRCujrja2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'UpdateStore' test.out

#- 187 DeleteStore
$PYTHON -m $MODULE 'platform-delete-store' \
    '6Ygd7A1555BielNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'DeleteStore' test.out

#- 188 QueryChanges
$PYTHON -m $MODULE 'platform-query-changes' \
    '6kfRgfnBT7OdjPny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'QueryChanges' test.out

#- 189 PublishAll
$PYTHON -m $MODULE 'platform-publish-all' \
    'wuIoLpkJEPfnaESu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'PublishAll' test.out

#- 190 PublishSelected
$PYTHON -m $MODULE 'platform-publish-selected' \
    'OM4olKFVsSfgNQjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'PublishSelected' test.out

#- 191 SelectAllRecords
$PYTHON -m $MODULE 'platform-select-all-records' \
    'hrrrStCg99ejNACA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'SelectAllRecords' test.out

#- 192 GetStatistic
$PYTHON -m $MODULE 'platform-get-statistic' \
    'FAJlcWkS5jnhMZsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'GetStatistic' test.out

#- 193 UnselectAllRecords
$PYTHON -m $MODULE 'platform-unselect-all-records' \
    '8CVsHXHYBx7KkpRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'UnselectAllRecords' test.out

#- 194 SelectRecord
$PYTHON -m $MODULE 'platform-select-record' \
    'aivn5yFNSoKf7tdm' \
    'Vppuu6acpUdn8X5I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'SelectRecord' test.out

#- 195 UnselectRecord
$PYTHON -m $MODULE 'platform-unselect-record' \
    'ZjtFT6Bs8OO0CVqX' \
    'F6bMzRd2Z2WjutGA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'UnselectRecord' test.out

#- 196 CloneStore
$PYTHON -m $MODULE 'platform-clone-store' \
    'ptSES09ZcFGPCokM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'CloneStore' test.out

#- 197 ExportStore
eval_tap 0 197 'ExportStore # SKIP deprecated' test.out

#- 198 QuerySubscriptions
$PYTHON -m $MODULE 'platform-query-subscriptions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'QuerySubscriptions' test.out

#- 199 RecurringChargeSubscription
$PYTHON -m $MODULE 'platform-recurring-charge-subscription' \
    'wrtVvGhHzNdHMJys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'RecurringChargeSubscription' test.out

#- 200 GetTicketDynamic
$PYTHON -m $MODULE 'platform-get-ticket-dynamic' \
    '9gtFxWSkvzQZjQrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'GetTicketDynamic' test.out

#- 201 DecreaseTicketSale
$PYTHON -m $MODULE 'platform-decrease-ticket-sale' \
    'nXc87G37jhABEz5T' \
    --body '{"orderNo": "57ICJiWEPnZsQ3Ns"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'DecreaseTicketSale' test.out

#- 202 GetTicketBoothID
$PYTHON -m $MODULE 'platform-get-ticket-booth-id' \
    'S8VgyzvujT8aEay0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'GetTicketBoothID' test.out

#- 203 IncreaseTicketSale
$PYTHON -m $MODULE 'platform-increase-ticket-sale' \
    'LM1IpMDZuDLXNscw' \
    --body '{"count": 3, "orderNo": "ZwZcLnJPavRNr3ys"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'IncreaseTicketSale' test.out

#- 204 UnlockSteamUserAchievement
$PYTHON -m $MODULE 'platform-unlock-steam-user-achievement' \
    'Ep4sIwslUQociDSN' \
    --body '{"achievements": [{"id": "S6hf28TvyyZjEMbP", "value": 90}, {"id": "ZLHG60X6LS9dYe42", "value": 30}, {"id": "UGLqYJevKKJR5KWR", "value": 12}], "steamUserId": "QIDAf44vyeNIfF5R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'UnlockSteamUserAchievement' test.out

#- 205 GetXblUserAchievements
$PYTHON -m $MODULE 'platform-get-xbl-user-achievements' \
    'i6ydoL4tB0FUpx5T' \
    'LiooOqRm1Mxf3Nfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'GetXblUserAchievements' test.out

#- 206 UpdateXblUserAchievement
$PYTHON -m $MODULE 'platform-update-xbl-user-achievement' \
    'nW9axvejxDQgdz6G' \
    --body '{"achievements": [{"id": "mSzMPzB5ZP4mdsjn", "percentComplete": 67}, {"id": "3jzXzilslRzP96yJ", "percentComplete": 38}, {"id": "RbX8fkG3hcRbcSuS", "percentComplete": 22}], "serviceConfigId": "RIQkIiA44zjyRqef", "titleId": "UM764xXmCkJL9p2O", "xboxUserId": "Q5Ll9C3fSnntsqrU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'UpdateXblUserAchievement' test.out

#- 207 AnonymizeCampaign
$PYTHON -m $MODULE 'platform-anonymize-campaign' \
    'KREAt8zG7Mwy6qt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AnonymizeCampaign' test.out

#- 208 AnonymizeEntitlement
$PYTHON -m $MODULE 'platform-anonymize-entitlement' \
    'KRlDGxhO1YbPoWmG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AnonymizeEntitlement' test.out

#- 209 AnonymizeFulfillment
$PYTHON -m $MODULE 'platform-anonymize-fulfillment' \
    '714ZA04yxGcMcYyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AnonymizeFulfillment' test.out

#- 210 AnonymizeIntegration
$PYTHON -m $MODULE 'platform-anonymize-integration' \
    'omMVFEaTLz3hmDX1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AnonymizeIntegration' test.out

#- 211 AnonymizeOrder
$PYTHON -m $MODULE 'platform-anonymize-order' \
    'C9gHM8SS73LrEja3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AnonymizeOrder' test.out

#- 212 AnonymizePayment
$PYTHON -m $MODULE 'platform-anonymize-payment' \
    'XlbCcD2bQLuFwHyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AnonymizePayment' test.out

#- 213 AnonymizeRevocation
$PYTHON -m $MODULE 'platform-anonymize-revocation' \
    'Ws9J4OjFm6OQMQgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AnonymizeRevocation' test.out

#- 214 AnonymizeSubscription
$PYTHON -m $MODULE 'platform-anonymize-subscription' \
    'L3hmjUydsgdt98Kf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AnonymizeSubscription' test.out

#- 215 AnonymizeWallet
$PYTHON -m $MODULE 'platform-anonymize-wallet' \
    'baQpgEAKKLcKbPxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AnonymizeWallet' test.out

#- 216 GetUserDLCByPlatform
$PYTHON -m $MODULE 'platform-get-user-dlc-by-platform' \
    'vL2c7KalLFWBzkHq' \
    'OCULUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'GetUserDLCByPlatform' test.out

#- 217 GetUserDLC
$PYTHON -m $MODULE 'platform-get-user-dlc' \
    'EvM3TgMsAS5t3TYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'GetUserDLC' test.out

#- 218 QueryUserEntitlements
$PYTHON -m $MODULE 'platform-query-user-entitlements' \
    'NAGl1xy1H8Ag2XY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'QueryUserEntitlements' test.out

#- 219 GrantUserEntitlement
$PYTHON -m $MODULE 'platform-grant-user-entitlement' \
    'TnyPCVsWzhPIeHko' \
    --body '[{"endDate": "1995-09-25T00:00:00Z", "grantedCode": "eT3lv51D9Vwsfzat", "itemId": "v4JzfVNAJbSLBzqs", "itemNamespace": "2u1EntDzkQLgWQHX", "language": "SH_888", "quantity": 86, "region": "meGGIRRLbsmgDO0T", "source": "REWARD", "startDate": "1976-12-17T00:00:00Z", "storeId": "oifZAWt13ISgdwAu"}, {"endDate": "1977-11-21T00:00:00Z", "grantedCode": "4b3t1Ph8xHfEAlyd", "itemId": "a8FPutbAgA4OlQUC", "itemNamespace": "JsDilWhSc6XIxh1H", "language": "bcO", "quantity": 59, "region": "FhY2vclqnTbyZ7fY", "source": "PURCHASE", "startDate": "1998-04-10T00:00:00Z", "storeId": "5dSBhpLRxydIE1CQ"}, {"endDate": "1987-12-28T00:00:00Z", "grantedCode": "EyuLQOO6qVUihFzn", "itemId": "sLFP3013gsIOArel", "itemNamespace": "bYwYTtGsRNij1bUA", "language": "lRml-654", "quantity": 72, "region": "tZ6FN0omme6HiOrb", "source": "PURCHASE", "startDate": "1979-04-05T00:00:00Z", "storeId": "9cXar8FKACMfaESK"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'GrantUserEntitlement' test.out

#- 220 GetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-by-app-id' \
    'Ko0RBtKDj9PgWnOD' \
    'MMswus0ykKyOTFH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'GetUserAppEntitlementByAppId' test.out

#- 221 QueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-query-user-entitlements-by-app-type' \
    'npo1k2W89U6PA5By' \
    'GAME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'QueryUserEntitlementsByAppType' test.out

#- 222 GetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-item-id' \
    'lXSUYkHNYqepadIS' \
    '0zRgire2ntrz0FUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'GetUserEntitlementByItemId' test.out

#- 223 GetUserActiveEntitlementsByItemIds
$PYTHON -m $MODULE 'platform-get-user-active-entitlements-by-item-ids' \
    'XjV0GmcFSjmJGQU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'GetUserActiveEntitlementsByItemIds' test.out

#- 224 GetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-by-sku' \
    'YRHjMz3bo23SF3Xk' \
    'wdkgeNE7pA2BmAco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'GetUserEntitlementBySku' test.out

#- 225 ExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement' \
    'tg9A9VvbcAi4ZmdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'ExistsAnyUserActiveEntitlement' test.out

#- 226 ExistsAnyUserActiveEntitlementByItemIds
$PYTHON -m $MODULE 'platform-exists-any-user-active-entitlement-by-item-ids' \
    'z2NXfbCObijIWdRS' \
    '["DSq6oIY8wqc2Ocvj", "ggLVwAQMWoB0LkwH", "KKIT2D8YJKnP2TmD"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'ExistsAnyUserActiveEntitlementByItemIds' test.out

#- 227 GetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-get-user-app-entitlement-ownership-by-app-id' \
    'SwAt1UGNieMe0c6e' \
    'A8xCvVNgS0wUvETm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetUserAppEntitlementOwnershipByAppId' test.out

#- 228 GetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-id' \
    'RwwaH21xuey3fB1K' \
    'N5EzSmB6aO1Jqypo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'GetUserEntitlementOwnershipByItemId' test.out

#- 229 GetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-item-ids' \
    'fIkM1Wvc2CcOra4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'GetUserEntitlementOwnershipByItemIds' test.out

#- 230 GetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-get-user-entitlement-ownership-by-sku' \
    'XenU5naN6UuNARNf' \
    'A4hpoNUAwafK1Qxx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'GetUserEntitlementOwnershipBySku' test.out

#- 231 RevokeAllEntitlements
$PYTHON -m $MODULE 'platform-revoke-all-entitlements' \
    'K2sBBkQz8nIgoYpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'RevokeAllEntitlements' test.out

#- 232 RevokeUserEntitlements
$PYTHON -m $MODULE 'platform-revoke-user-entitlements' \
    'YIYto2cpXUnj1kXA' \
    'EnU9CvpIjJ6tB2fq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserEntitlements' test.out

#- 233 GetUserEntitlement
$PYTHON -m $MODULE 'platform-get-user-entitlement' \
    'N6D76apW4CsuQx2n' \
    'ME1E8lGIgW2AWqhl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'GetUserEntitlement' test.out

#- 234 UpdateUserEntitlement
$PYTHON -m $MODULE 'platform-update-user-entitlement' \
    'JfHgWSAjBmziLkAE' \
    'WkqMo2uv4G0hb2TC' \
    --body '{"endDate": "1973-08-01T00:00:00Z", "nullFieldList": ["699gOqEWjr9T9Uhs", "GYJ3NLSVOdqFxY9j", "8P8IFwNKh0Zni7P6"], "startDate": "1997-11-25T00:00:00Z", "status": "ACTIVE", "useCount": 73}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'UpdateUserEntitlement' test.out

#- 235 ConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-consume-user-entitlement' \
    'RFkQolDEtyxyMGw4' \
    'ZEIMYFaIEr69zjnP' \
    --body '{"options": ["KVLZ59QuwBbW2xX9", "6TmFiMrqZaZSR4SA", "MIG5DRP307xNIxMn"], "requestId": "iv6VDtGhPQu5IgTl", "useCount": 43}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'ConsumeUserEntitlement' test.out

#- 236 DisableUserEntitlement
$PYTHON -m $MODULE 'platform-disable-user-entitlement' \
    'BRFOlmRZZrSiE7me' \
    'OUBb0ZMyPVBowpLO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'DisableUserEntitlement' test.out

#- 237 EnableUserEntitlement
$PYTHON -m $MODULE 'platform-enable-user-entitlement' \
    'lv3wNvAi5e5Cp2Id' \
    '8PqgbZMgBinMuWrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'EnableUserEntitlement' test.out

#- 238 GetUserEntitlementHistories
$PYTHON -m $MODULE 'platform-get-user-entitlement-histories' \
    'OAvHxG7UhRxqteme' \
    '7V0mE4XANjqP7L1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetUserEntitlementHistories' test.out

#- 239 RevokeUserEntitlement
$PYTHON -m $MODULE 'platform-revoke-user-entitlement' \
    'gHDq7oo2SQp9UXJY' \
    'EGGpt55fVsBfrc4O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RevokeUserEntitlement' test.out

#- 240 RevokeUseCount
$PYTHON -m $MODULE 'platform-revoke-use-count' \
    'J06MAINAypeu3Zwg' \
    'LF3XSMYkGVjcYe2w' \
    --body '{"reason": "wruEu9pKFWxMrOrO", "useCount": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RevokeUseCount' test.out

#- 241 SellUserEntitlement
$PYTHON -m $MODULE 'platform-sell-user-entitlement' \
    'N2GNQs0IgMAbRc0I' \
    '82pjV4UBb0pZrHFx' \
    --body '{"requestId": "E9EAcMe8RHXnsxaz", "useCount": 56}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'SellUserEntitlement' test.out

#- 242 FulfillItem
$PYTHON -m $MODULE 'platform-fulfill-item' \
    'Tj3i1nC0J9A8DUtb' \
    --body '{"duration": 93, "endDate": "1986-05-18T00:00:00Z", "itemId": "Nimqnzt0awizcaXF", "itemSku": "FkKf2QcbDNp9wVgl", "language": "oPqugy2zhY3CjOqL", "metadata": {"PkNLoeCULsEptE9w": {}, "dsebmIkQbE3nPbd7": {}, "YNYQJL8jGfdMvM0z": {}}, "order": {"currency": {"currencyCode": "EHmThs6Oydk9jSSY", "currencySymbol": "0aqjjeExTo07XGD7", "currencyType": "VIRTUAL", "decimals": 63, "namespace": "4dvtuyipF1FB9RNF"}, "ext": {"3G6sPweMmOIXU6Ic": {}, "FkTWMTXNI4WIT2qY": {}, "utqii44IKSSMR4zJ": {}}, "free": false}, "orderNo": "xouzcD0pPXkdTrLY", "origin": "Xbox", "quantity": 58, "region": "48A5DLkL19tXrv2b", "source": "REWARD", "startDate": "1996-09-18T00:00:00Z", "storeId": "4hfBeKISP0coyLHG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'FulfillItem' test.out

#- 243 RedeemCode
$PYTHON -m $MODULE 'platform-redeem-code' \
    '52kcFEHKN66TOzJS' \
    --body '{"code": "yl83HhHTDHO8mQoG", "language": "uybi-500", "region": "97uDKDBhngmXpNaX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'RedeemCode' test.out

#- 244 FulfillRewards
$PYTHON -m $MODULE 'platform-fulfill-rewards' \
    'Sgg2yJzaaUc8p87e' \
    --body '{"metadata": {"TTm092rucPAhnaYq": {}, "SLkr3tlvhwbpOwvW": {}, "yVZbXXgvJKjvhZn4": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "DX8MGlijaR3VVk7n", "namespace": "D09WBTm7Hy1AvjH8"}, "item": {"itemId": "TO5OIzshGgQ4Thug", "itemSku": "QFOWwlpo3MnSMNdj", "itemType": "VtLt8CrUFIkcZk3U"}, "quantity": 63, "type": "CURRENCY"}, {"currency": {"currencyCode": "LFEno141RnaYhr2W", "namespace": "JyqCvAfWi7mDpF9U"}, "item": {"itemId": "xmjutqgr8019aVHH", "itemSku": "RLK0fv936lSL3gAK", "itemType": "6QqFlWlAR1frDQIV"}, "quantity": 45, "type": "CURRENCY"}, {"currency": {"currencyCode": "5Nm182ykfY01Gcyk", "namespace": "fqRyXIVnis4SKjpY"}, "item": {"itemId": "MZV5AVm0vOTpy2xy", "itemSku": "ajHMUnKflmcC3pOW", "itemType": "LT8ckEy2SMQcmxeb"}, "quantity": 93, "type": "CURRENCY"}], "source": "PROMOTION", "transactionId": "GYrgNOimVrZzkyKH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'FulfillRewards' test.out

#- 245 QueryUserIAPOrders
$PYTHON -m $MODULE 'platform-query-user-iap-orders' \
    'vwa7cbRj2at5ZJSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'QueryUserIAPOrders' test.out

#- 246 QueryAllUserIAPOrders
$PYTHON -m $MODULE 'platform-query-all-user-iap-orders' \
    '02srNNRw3Y1j6viZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'QueryAllUserIAPOrders' test.out

#- 247 QueryUserIAPConsumeHistory
$PYTHON -m $MODULE 'platform-query-user-iap-consume-history' \
    'bWeu0WyHCl9Xs4E4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'QueryUserIAPConsumeHistory' test.out

#- 248 MockFulfillIAPItem
$PYTHON -m $MODULE 'platform-mock-fulfill-iap-item' \
    '16s1Oq4B0c6hcP5j' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "CYcB_Razp", "productId": "IQnwGbMTiA96lnb5", "region": "gdT3QnV1lkyfpfTo", "transactionId": "2MX3YvlKKTkjhbq0", "type": "EPICGAMES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'MockFulfillIAPItem' test.out

#- 249 QueryUserOrders
$PYTHON -m $MODULE 'platform-query-user-orders' \
    'Qoeso9mKjTRboTLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'QueryUserOrders' test.out

#- 250 AdminCreateUserOrder
$PYTHON -m $MODULE 'platform-admin-create-user-order' \
    'We4LfJee5PI5dFv5' \
    --body '{"currencyCode": "buhIZ4eMnCDQFCYc", "currencyNamespace": "yYCi2g6s9FQKCfcu", "discountedPrice": 81, "ext": {"23YpsdjtVRUIv3uI": {}, "M3CoS6JahcK1Pr6B": {}, "T8bcW21yKVRUAUf5": {}}, "itemId": "lebfPenWUEBZC8ke", "language": "F5vI1QiMb8GRzCET", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 72, "quantity": 55, "region": "vAnpvMcDHwA9mw8u", "returnUrl": "jZZQUNi4NDzBP7mm", "sandbox": false, "sectionId": "4ZrXjamc3OX9fjEz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AdminCreateUserOrder' test.out

#- 251 CountOfPurchasedItem
$PYTHON -m $MODULE 'platform-count-of-purchased-item' \
    'scuFPv5tNXWb8n1x' \
    'yB1MxbBG0waudrud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'CountOfPurchasedItem' test.out

#- 252 GetUserOrder
$PYTHON -m $MODULE 'platform-get-user-order' \
    'TuIy3VLkd3YGg9Bz' \
    'i8uluQOBuTuYNR4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'GetUserOrder' test.out

#- 253 UpdateUserOrderStatus
$PYTHON -m $MODULE 'platform-update-user-order-status' \
    'zPkGOuDvT1kGGvsp' \
    'IGcvW7T4dk3MBzfr' \
    --body '{"status": "CHARGEBACK", "statusReason": "GlXPukj7q5MjU2f4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'UpdateUserOrderStatus' test.out

#- 254 FulfillUserOrder
$PYTHON -m $MODULE 'platform-fulfill-user-order' \
    '833bcUoBfWLjRXOq' \
    'aoDBgsPHcNg0Bapd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'FulfillUserOrder' test.out

#- 255 GetUserOrderGrant
$PYTHON -m $MODULE 'platform-get-user-order-grant' \
    '2WF3ACWSPCOIejZf' \
    'SnIavouuFpqcq4Gd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GetUserOrderGrant' test.out

#- 256 GetUserOrderHistories
$PYTHON -m $MODULE 'platform-get-user-order-histories' \
    '9fk7fhp8GNMEX4Ps' \
    '5vorNX6W3h8ItD6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'GetUserOrderHistories' test.out

#- 257 ProcessUserOrderNotification
$PYTHON -m $MODULE 'platform-process-user-order-notification' \
    'FXbQvGbKVlE5VulH' \
    'AZZ2SKo1C0ktvmek' \
    --body '{"additionalData": {"cardSummary": "dbic6I2n5Hclx6xv"}, "authorisedTime": "1976-09-01T00:00:00Z", "chargebackReversedTime": "1999-09-01T00:00:00Z", "chargebackTime": "1974-03-05T00:00:00Z", "chargedTime": "1981-03-31T00:00:00Z", "createdTime": "1986-06-21T00:00:00Z", "currency": {"currencyCode": "NYuRa6jU8OLKdFhR", "currencySymbol": "NswdEfL1i3SL7JlQ", "currencyType": "REAL", "decimals": 26, "namespace": "YJAHmuYyTZt7v3mv"}, "customParameters": {"PolaFeEWrqYB9hLG": {}, "74YMs1JCrpnpPPUy": {}, "yCN4MFXqnFzR6C20": {}}, "extOrderNo": "jVL8heTq0Wmf80d7", "extTxId": "wzxTtcIyIFNDIRhP", "extUserId": "IRCNW8MLBfGHJseA", "issuedAt": "1984-11-04T00:00:00Z", "metadata": {"3xQG5zPNH4eYMWbt": "vk7OoIixOGXwFzXj", "pSLyjqaJnmx4p5Sh": "R3fI6ZeDWbxHSLn6", "kQxqK7yxoQHX7Xex": "jvW4rZ57Ra4Wlon8"}, "namespace": "ZzeHgabbmT81jfik", "nonceStr": "6ShLjJbf174MCR5Z", "paymentMethod": "pvlWXRfEoUuNmQrq", "paymentMethodFee": 31, "paymentOrderNo": "qXOVUNHtfbgUqbLQ", "paymentProvider": "ALIPAY", "paymentProviderFee": 65, "paymentStationUrl": "Q0SXyMTygZRBzJUp", "price": 48, "refundedTime": "1980-12-10T00:00:00Z", "salesTax": 50, "sandbox": false, "sku": "JHsWipvZANpRXHVq", "status": "REFUNDED", "statusReason": "jZh8S62GO32C73Rn", "subscriptionId": "fIDxg4DkmnJtxZgI", "subtotalPrice": 96, "targetNamespace": "a77wOP10AbpbjZo2", "targetUserId": "dQM3ZXq9atijyFT8", "tax": 57, "totalPrice": 71, "totalTax": 93, "txEndTime": "1974-12-23T00:00:00Z", "type": "ECr4zqhZ9lpllwas", "userId": "nryjxylwRVcy18iH", "vat": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'ProcessUserOrderNotification' test.out

#- 258 DownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-download-user-order-receipt' \
    'ctAHdK0X7OZKu6Mm' \
    'VxEFptfSFU0F8qXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'DownloadUserOrderReceipt' test.out

#- 259 CreateUserPaymentOrder
$PYTHON -m $MODULE 'platform-create-user-payment-order' \
    'fSkxhrHhjWxkDQUT' \
    --body '{"currencyCode": "Y21m19Eiqpyu9P7Y", "currencyNamespace": "h6ERWyedt6rkPxW7", "customParameters": {"2ya2ruQcikSHwHPf": {}, "yNRUhMXX7FiB3X63": {}, "4iuF8pqhqsqRF4kq": {}}, "description": "Mbz4sxPUl2WbQNFN", "extOrderNo": "B2IE43MBCGNyjqnD", "extUserId": "uWD1qiZzXQxSDgH9", "itemType": "SEASON", "language": "FvZr-531", "metadata": {"HMYxf8xOR1DEgYR3": "iOynLLtqSmaHvUEx", "z8o7TwcWL7fNlyGu": "j0EkM7M8G78KZj2j", "WyKAzXYP9kO0rmon": "OpgtONmMvrDH4IXc"}, "notifyUrl": "6tn8XayBI734jCTS", "omitNotification": false, "platform": "pNAwv9UsvPaX8W0G", "price": 44, "recurringPaymentOrderNo": "wXO0XemKHsUC5w7f", "region": "mzF80bbGhU1pjVwM", "returnUrl": "sLdJrt5FnAIz4y9y", "sandbox": true, "sku": "GF8dtk8bqcPfBJ9G", "subscriptionId": "OHxUkZCvqVRe3F78", "title": "EGvZd49hW95i4Rm9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'CreateUserPaymentOrder' test.out

#- 260 RefundUserPaymentOrder
$PYTHON -m $MODULE 'platform-refund-user-payment-order' \
    'sBef6ymEEU6G6YVa' \
    '5GGFvLtWl66DAEkA' \
    --body '{"description": "vXqNdnEfei54fLtF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'RefundUserPaymentOrder' test.out

#- 261 ApplyUserRedemption
$PYTHON -m $MODULE 'platform-apply-user-redemption' \
    'TRx1fcfy4uTVbxv0' \
    --body '{"code": "l7RvPOKq8iNNYLY5", "orderNo": "oWJPoo8QT5EB5GCO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'ApplyUserRedemption' test.out

#- 262 DoRevocation
$PYTHON -m $MODULE 'platform-do-revocation' \
    'CowERMveDiI5BYvV' \
    --body '{"meta": {"5LF22GlLe48YQRsZ": {}, "pn4zsR2KwSIl0Un3": {}, "PT2bVzOt2J0VxSVR": {}}, "revokeEntries": [{"currency": {"balanceOrigin": "Playstation", "currencyCode": "8jFYjFRDj47EZTCC", "namespace": "wz8yawNImZdPzt9k"}, "entitlement": {"entitlementId": "oNSL3vqGgJOWkI0s"}, "item": {"itemIdentity": "HphIU3KaP7nk9iEa", "itemIdentityType": "ITEM_SKU", "origin": "Other"}, "quantity": 11, "type": "CURRENCY"}, {"currency": {"balanceOrigin": "Steam", "currencyCode": "y3aYo02pzHannSLe", "namespace": "EYvuciynwWb01HLr"}, "entitlement": {"entitlementId": "p6OW9Y7FIIEJMm4K"}, "item": {"itemIdentity": "izs3NRbyYMyWPHp8", "itemIdentityType": "ITEM_SKU", "origin": "Nintendo"}, "quantity": 82, "type": "ENTITLEMENT"}, {"currency": {"balanceOrigin": "Twitch", "currencyCode": "eWtVtRQu0coThNxw", "namespace": "nnpoM2KSoHlpDFIm"}, "entitlement": {"entitlementId": "JNovlZq1O6RDUgil"}, "item": {"itemIdentity": "QHCts6SUNxUWIGSk", "itemIdentityType": "ITEM_SKU", "origin": "GooglePlay"}, "quantity": 20, "type": "ITEM"}], "source": "OTHER", "transactionId": "QhBIt2H2PvWFnJMi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'DoRevocation' test.out

#- 263 RegisterXblSessions
$PYTHON -m $MODULE 'platform-register-xbl-sessions' \
    'szwcYW9Jy4n5q4Wg' \
    --body '{"gameSessionId": "YvJS0xuVskVlA0TN", "payload": {"AcmfUmAzc5JVuc5L": {}, "Bd3uXt6TP1AE4lqn": {}, "IwLN2lGYqQSzIUdI": {}}, "scid": "qmVvmcAsPgT6XUEe", "sessionTemplateName": "RKSDbomdWWRi7OHZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'RegisterXblSessions' test.out

#- 264 QueryUserSubscriptions
$PYTHON -m $MODULE 'platform-query-user-subscriptions' \
    'eGP4o1Tgbe8J8xso' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'QueryUserSubscriptions' test.out

#- 265 GetUserSubscriptionActivities
$PYTHON -m $MODULE 'platform-get-user-subscription-activities' \
    '71ULeHVV40sjQ8mt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'GetUserSubscriptionActivities' test.out

#- 266 PlatformSubscribeSubscription
$PYTHON -m $MODULE 'platform-platform-subscribe-subscription' \
    'TN08V3MMSrrV6FB8' \
    --body '{"grantDays": 60, "itemId": "oKfBV4CX15snBgmf", "language": "lygDW6ab0RoZeMIF", "reason": "YmEraqGPOCMPGtRg", "region": "0HGzSGs8nBUQVBsF", "source": "03D5vkAkZ8CS09fF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PlatformSubscribeSubscription' test.out

#- 267 CheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-check-user-subscription-subscribable-by-item-id' \
    'rbdregZfA6pBIXqo' \
    'aoYoHcrIwc6qkDf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'CheckUserSubscriptionSubscribableByItemId' test.out

#- 268 GetUserSubscription
$PYTHON -m $MODULE 'platform-get-user-subscription' \
    'ciuVB7vM6wSqwns2' \
    'XJfUl3uiEO9E03Jk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'GetUserSubscription' test.out

#- 269 DeleteUserSubscription
$PYTHON -m $MODULE 'platform-delete-user-subscription' \
    '5kBnuo4jR1HYLJjn' \
    'ydxAGgqH3ytkroZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'DeleteUserSubscription' test.out

#- 270 CancelSubscription
$PYTHON -m $MODULE 'platform-cancel-subscription' \
    'tfFjNF99VixS5Es3' \
    'u4km3iKiNLRNa01S' \
    --body '{"immediate": false, "reason": "bEkQ8XN3xQ0KaIZ1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'CancelSubscription' test.out

#- 271 GrantDaysToSubscription
$PYTHON -m $MODULE 'platform-grant-days-to-subscription' \
    'ISja5TxqN8RXvgNz' \
    'oX14Km851zHcDdph' \
    --body '{"grantDays": 100, "reason": "xLBfhpOp8UlDmFYN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'GrantDaysToSubscription' test.out

#- 272 GetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-get-user-subscription-billing-histories' \
    'BSDEgsUMikj8NQND' \
    'lhAhwAc8mPZRllen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'GetUserSubscriptionBillingHistories' test.out

#- 273 ProcessUserSubscriptionNotification
$PYTHON -m $MODULE 'platform-process-user-subscription-notification' \
    'gCdfKGCBZMAbJnqD' \
    'KuBGWmZti7VJ7O7d' \
    --body '{"additionalData": {"cardSummary": "NzDBzVmGSholl8uD"}, "authorisedTime": "1998-02-26T00:00:00Z", "chargebackReversedTime": "1978-05-11T00:00:00Z", "chargebackTime": "1999-08-06T00:00:00Z", "chargedTime": "1979-06-06T00:00:00Z", "createdTime": "1987-05-06T00:00:00Z", "currency": {"currencyCode": "WvlE7bmuaFNPCECK", "currencySymbol": "SzHTT5beKYt4CDlW", "currencyType": "VIRTUAL", "decimals": 16, "namespace": "qpJeQd6tN5oH4E7J"}, "customParameters": {"osGEpOKUFWLtsLf2": {}, "78ybCNhF9RCyMn5V": {}, "X87u49Hsq4hLUkLL": {}}, "extOrderNo": "TNMnmlFzzwpEZwbc", "extTxId": "CEsJIB0JkRcYhCT3", "extUserId": "pUMiOk2aKaj7wqr7", "issuedAt": "1982-04-22T00:00:00Z", "metadata": {"wPCgByCnljJ7CYva": "pWO5JGco1tRG98vi", "uYwQTHKPcc8Z82Wt": "wcihC87O1U2uYkti", "AFqIsHod9kt3xkRS": "ajXSTpU3aCkzqs0h"}, "namespace": "C50vEOIxc25vtorw", "nonceStr": "rF6HtcJbqjCZkEvd", "paymentMethod": "WNk2SHYsva1jk545", "paymentMethodFee": 44, "paymentOrderNo": "Tj5WST6JF9lLvPS5", "paymentProvider": "CHECKOUT", "paymentProviderFee": 47, "paymentStationUrl": "J58vaRaaxVQeMUb1", "price": 21, "refundedTime": "1973-06-27T00:00:00Z", "salesTax": 87, "sandbox": false, "sku": "j6jcjlxGsLgfrhBT", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "HJ0JzaJpqg9JgEy7", "subscriptionId": "Iad7fAMCaXsZoyeq", "subtotalPrice": 80, "targetNamespace": "2FKoGRQ2i1n2WJVJ", "targetUserId": "y6yBPVmpbwVG3MwH", "tax": 49, "totalPrice": 57, "totalTax": 51, "txEndTime": "1982-12-17T00:00:00Z", "type": "zKyxJqBCaof96NNQ", "userId": "PxPe1HYkf4KjUJVM", "vat": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'ProcessUserSubscriptionNotification' test.out

#- 274 AcquireUserTicket
$PYTHON -m $MODULE 'platform-acquire-user-ticket' \
    'awfXvKu5UsuFOUXo' \
    'hEHKCKphTiityfpZ' \
    --body '{"count": 17, "orderNo": "ZCzyWKP30Kusyvai"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'AcquireUserTicket' test.out

#- 275 QueryUserCurrencyWallets
$PYTHON -m $MODULE 'platform-query-user-currency-wallets' \
    'tTsWtL2AAtjEKW31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'QueryUserCurrencyWallets' test.out

#- 276 DebitUserWalletByCurrencyCode
$PYTHON -m $MODULE 'platform-debit-user-wallet-by-currency-code' \
    'SlSm20DzdKk8FlVc' \
    'y0hcEMFRkn8SAQht' \
    --body '{"allowOverdraft": false, "amount": 44, "balanceOrigin": "GooglePlay", "balanceSource": "ORDER_REVOCATION", "metadata": {"XWFZqotaiZN3MPuY": {}, "Wk5lHvw9RXrx8aUB": {}, "1xXuK2MwrRJukMTk": {}}, "reason": "O00KLgddr0UUiy5j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'DebitUserWalletByCurrencyCode' test.out

#- 277 ListUserCurrencyTransactions
$PYTHON -m $MODULE 'platform-list-user-currency-transactions' \
    'm1w2g65JkaoPuBsu' \
    'Sb0LePf5b8MJ94DA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'ListUserCurrencyTransactions' test.out

#- 278 CheckWallet
eval_tap 0 278 'CheckWallet # SKIP deprecated' test.out

#- 279 CreditUserWallet
$PYTHON -m $MODULE 'platform-credit-user-wallet' \
    'h1Mc7VkHxj8k5KSF' \
    'tbEoEr5LqKRRnKy1' \
    --body '{"amount": 5, "expireAt": "1980-03-17T00:00:00Z", "metadata": {"BYlx7rzEm3km2jjN": {}, "rqEmuEf6JRpqZEUH": {}, "2Rr5lkfHjqVCMpun": {}}, "origin": "Playstation", "reason": "IU5aZu5bRvxm9KYr", "source": "SELL_BACK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'CreditUserWallet' test.out

#- 280 PayWithUserWallet
$PYTHON -m $MODULE 'platform-pay-with-user-wallet' \
    '0SyfWNB8u5Qlf4KG' \
    'o0N4g7UWRzPsMd90' \
    --body '{"amount": 72, "metadata": {"LiM9EqyhFh7mq6sg": {}, "k5cHaJYkzClqPty2": {}, "kxgyry1MM9eo43Qi": {}}, "walletPlatform": "Epic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PayWithUserWallet' test.out

#- 281 GetUserWallet
eval_tap 0 281 'GetUserWallet # SKIP deprecated' test.out

#- 282 DebitUserWallet
eval_tap 0 282 'DebitUserWallet # SKIP deprecated' test.out

#- 283 DisableUserWallet
eval_tap 0 283 'DisableUserWallet # SKIP deprecated' test.out

#- 284 EnableUserWallet
eval_tap 0 284 'EnableUserWallet # SKIP deprecated' test.out

#- 285 ListUserWalletTransactions
eval_tap 0 285 'ListUserWalletTransactions # SKIP deprecated' test.out

#- 286 ListViews
$PYTHON -m $MODULE 'platform-list-views' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'ListViews' test.out

#- 287 CreateView
$PYTHON -m $MODULE 'platform-create-view' \
    'pdbjxfK1P9wjSBBx' \
    --body '{"displayOrder": 19, "localizations": {"E04Cbkpn0yX44aL9": {"description": "f0QyO5YXVhTiaE4W", "localExt": {"KnEeaUdAmgmnzKSV": {}, "lXsRNMykbnHTrHLm": {}, "aTGFI1atDOVS2F6I": {}}, "longDescription": "s27hn9TSwEvJPZcY", "title": "rXKMnNZIm0ooHCnl"}, "q1H5IuOvafRIdOXl": {"description": "xxdySywm5h2pCfHj", "localExt": {"g41ZhheDDG5HJEFQ": {}, "RX4iVg8TK1CF9X9m": {}, "TmMVfQaiQKdHknLo": {}}, "longDescription": "tplfBOvsb9aicyaj", "title": "UNH4cyuoR5YkRhK1"}, "PGfmAnDGtInmyZkH": {"description": "QxUB5U4Qk0fD8Gqt", "localExt": {"XguE8Xvdv1azJ2OS": {}, "kJGMDAkWOP9y3eP2": {}, "0aRJVXYPkIGnj7nG": {}}, "longDescription": "zgSkTy0cIm2Tc4sb", "title": "YVp7amyDRQk3QGp0"}}, "name": "uzzvAfa6BW7oGw2U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'CreateView' test.out

#- 288 GetView
$PYTHON -m $MODULE 'platform-get-view' \
    '9LoHWS4koauo9jkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetView' test.out

#- 289 UpdateView
$PYTHON -m $MODULE 'platform-update-view' \
    'EI52B8LI9vMEB8OH' \
    'KsqKaw1EmCxOMl6u' \
    --body '{"displayOrder": 16, "localizations": {"3jc1060kqFKNcGHY": {"description": "IXDqQpOY256yQcC8", "localExt": {"CPFXan7LUfcQhcxy": {}, "nrF5qWYvJX1f7rYn": {}, "PbkDk5g9y47AVCmF": {}}, "longDescription": "D0nKyUwcI9KJZt31", "title": "la1wZgpPXxtcOPw0"}, "UBm7wccELVo9RYTq": {"description": "uwIrGgk3eqgOf7Ww", "localExt": {"NZWyYuM3y1TjdcOV": {}, "w94gqQYOWGw7LSW6": {}, "Kb9otdVBjacY5doQ": {}}, "longDescription": "Ghc8zSCeJ4Q8PHY6", "title": "vGzNfPWTQ1pJMwPV"}, "AUNYFOg7TplEkOZy": {"description": "73bRBtWCJCJuzB1j", "localExt": {"bh95vj0V2ccQ60lu": {}, "b807E0PGhia3QvaF": {}, "IVfHyAiTeDDuvgKT": {}}, "longDescription": "frZ6TfrQrFIsYsZ1", "title": "dTn2pA64FJuEPymb"}}, "name": "IAwDAyNBagGD33WM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'UpdateView' test.out

#- 290 DeleteView
$PYTHON -m $MODULE 'platform-delete-view' \
    'Vj7bfdfxyqKQ4YNn' \
    'TTwZeuX7f9iY3skb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'DeleteView' test.out

#- 291 QueryWallets
eval_tap 0 291 'QueryWallets # SKIP deprecated' test.out

#- 292 BulkCredit
$PYTHON -m $MODULE 'platform-bulk-credit' \
    --body '[{"creditRequest": {"amount": 22, "expireAt": "1984-04-23T00:00:00Z", "metadata": {"5jLP6zS6a5C6awft": {}, "8NPNJCopJg7IJTeO": {}, "WoVtcblaKlhxMNx5": {}}, "origin": "GooglePlay", "reason": "oWD1mZ9rW6QdtPe4", "source": "REWARD"}, "currencyCode": "hfCB53jlBjzXLwoM", "userIds": ["pS550eQ5WiZiQUzC", "xshoo8aHsXJ87ywd", "Dtou8Np74s3RLe4g"]}, {"creditRequest": {"amount": 46, "expireAt": "1979-08-19T00:00:00Z", "metadata": {"kqRR9Nwd8OrgT5HM": {}, "aelKs3hdNcCPnrmZ": {}, "DNctQe0IM586qYdN": {}}, "origin": "Other", "reason": "legYoVHYdQPAsGfQ", "source": "REWARD"}, "currencyCode": "Y7ZXicpAJw7Ct9Am", "userIds": ["EoUNlmQjebaV8c13", "FZxX6qNntgmml0ts", "1uw7WvaRDN6waXRB"]}, {"creditRequest": {"amount": 91, "expireAt": "1987-12-27T00:00:00Z", "metadata": {"78fZc6LpvtY7Bk3j": {}, "0Rt5ai8x1JHTPfAT": {}, "k2jDkPq7n0VqgiBJ": {}}, "origin": "Oculus", "reason": "BwC4MOmSF5ZPpYXT", "source": "ACHIEVEMENT"}, "currencyCode": "lLk7pTvUfmra4esd", "userIds": ["Z2v5vKHsJ5DezdlR", "lTTSLmDolGdb7yXL", "AgfgESHWCK8LccJJ"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'BulkCredit' test.out

#- 293 BulkDebit
$PYTHON -m $MODULE 'platform-bulk-debit' \
    --body '[{"currencyCode": "mXX0pmy1KDJtg9Fw", "request": {"allowOverdraft": false, "amount": 29, "balanceOrigin": "Other", "balanceSource": "IAP_REVOCATION", "metadata": {"tMPXhsCdeun9QN51": {}, "3GmIqfQ8mJbg0TSR": {}, "xhI4XnmuQN65HKi5": {}}, "reason": "qvwLIqgfXvKjhXcf"}, "userIds": ["ue3XkqcMKE9l0uRk", "KE45hKdn2Ay5KgtW", "f5RxDdVVe0VvPmen"]}, {"currencyCode": "8keuXuWuitb85Ns7", "request": {"allowOverdraft": true, "amount": 16, "balanceOrigin": "Steam", "balanceSource": "OTHER", "metadata": {"IneqddStnBNigsnB": {}, "pu24ga0d3NvXvIgv": {}, "IynEaAcX7fXbKWmr": {}}, "reason": "aqNIKPX6gPHT29wk"}, "userIds": ["ZwM8cvObRjKxi25l", "RIJearztP7sqwrac", "9mb1mSJffUaLwOsY"]}, {"currencyCode": "biPrT7cARnySCNlQ", "request": {"allowOverdraft": true, "amount": 31, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"cWBq1VspKjs4jxjT": {}, "Ne3vK6XXKdJ9YgLS": {}, "Ryjx0xgbEuoPqi79": {}}, "reason": "JLKHle3po9nK2MnW"}, "userIds": ["LVnsl61rzqSDNeQF", "ISZ8LUxYanMQUFaZ", "F74RbeEi4WAntBdO"]}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'BulkDebit' test.out

#- 294 GetWallet
eval_tap 0 294 'GetWallet # SKIP deprecated' test.out

#- 295 SyncOrders
$PYTHON -m $MODULE 'platform-sync-orders' \
    '7Q3XLgdI7tdEmvBn' \
    'rNtew73bedVZ6xFN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'SyncOrders' test.out

#- 296 TestAdyenConfig
$PYTHON -m $MODULE 'platform-test-adyen-config' \
    --body '{"allowedPaymentMethods": ["iFC0HSIZAGhHJlyM", "BkbUPi2FDgx1gJON", "Pjy1ei7AZBrLdMJG"], "apiKey": "912CJx1H9kC6LzFq", "authoriseAsCapture": false, "blockedPaymentMethods": ["IhCNJqtCtGvxKwuL", "3MuhHXzy6WjNeNYu", "VWrqxrNDhsaw4vbD"], "clientKey": "PKG9aUuCw1ys0BxL", "dropInSettings": "bujuXwWEJUvl8k6C", "liveEndpointUrlPrefix": "NRAfp1s21wulz8cb", "merchantAccount": "64KjGDHolxRGH5sQ", "notificationHmacKey": "mA6XL9p83Led5r4J", "notificationPassword": "7MEwKxtP0SkagDcL", "notificationUsername": "89PjvtwaUDi2fDyX", "returnUrl": "lYJu8bIkkFh5LqxA", "settings": "2jff0fTRIYip6c9d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'TestAdyenConfig' test.out

#- 297 TestAliPayConfig
$PYTHON -m $MODULE 'platform-test-ali-pay-config' \
    --body '{"appId": "i8JeefXJ2PdIoHdo", "privateKey": "DHgvwcWxlmJoJSnh", "publicKey": "yf4L6dZ66Zi7azAJ", "returnUrl": "HL5PE9RVZONAcvKX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'TestAliPayConfig' test.out

#- 298 TestCheckoutConfig
$PYTHON -m $MODULE 'platform-test-checkout-config' \
    --body '{"publicKey": "L23ppvor8grcvFvY", "secretKey": "ajtvdiqyZzxREBSr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'TestCheckoutConfig' test.out

#- 299 DebugMatchedPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-merchant-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'DebugMatchedPaymentMerchantConfig' test.out

#- 300 TestPayPalConfig
$PYTHON -m $MODULE 'platform-test-pay-pal-config' \
    --body '{"clientID": "Ok54EyWalLjCH6xr", "clientSecret": "3vtL9JTQ5CWaR2Dv", "returnUrl": "fAXB1SrgLn5lUQ3M", "webHookId": "t9iye7Sb3gSolD6u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'TestPayPalConfig' test.out

#- 301 TestStripeConfig
$PYTHON -m $MODULE 'platform-test-stripe-config' \
    --body '{"allowedPaymentMethodTypes": ["7wIciVVHoFtt4AP9", "G3HyBugfReiDLdST", "RmElGhVQf227V7AD"], "publishableKey": "aQHt78b3DT7qRYPx", "secretKey": "0W6cXzOdGXLsEc8X", "webhookSecret": "zmjXX4csMlaBkq9Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'TestStripeConfig' test.out

#- 302 TestWxPayConfig
$PYTHON -m $MODULE 'platform-test-wx-pay-config' \
    --body '{"appId": "HEb66Bo3ALdAKAQU", "key": "oGDOUFK4BcWOxnwe", "mchid": "rZoIJ2JMtHAD8gJd", "returnUrl": "K4CJBY63ASIuZtE2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'TestWxPayConfig' test.out

#- 303 TestXsollaConfig
$PYTHON -m $MODULE 'platform-test-xsolla-config' \
    --body '{"apiKey": "WuycIdVm37lVyVYh", "flowCompletionUrl": "bj7X96t5WMLdod5D", "merchantId": 51, "projectId": 33, "projectSecretKey": "ASz9qbHEsbgt8Nb6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'TestXsollaConfig' test.out

#- 304 GetPaymentMerchantConfig
$PYTHON -m $MODULE 'platform-get-payment-merchant-config' \
    'qoNGzjQQDw2Sc4DT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'GetPaymentMerchantConfig' test.out

#- 305 UpdateAdyenConfig
$PYTHON -m $MODULE 'platform-update-adyen-config' \
    'bergyuPtRgn6fWMW' \
    --body '{"allowedPaymentMethods": ["qZYmAvVETTsjp3kT", "D5DUdBvhgsfcLURA", "HqkEpmWErwMkbsCK"], "apiKey": "44WEKYCuqx8xzh9b", "authoriseAsCapture": true, "blockedPaymentMethods": ["3qt4lUCjplpfxQDp", "z3ka75GSPrezfQIy", "1FsYo03H0HWXeUSu"], "clientKey": "TJRHgBRpSb3GL7YA", "dropInSettings": "U5AnUkmfVW93ZW1t", "liveEndpointUrlPrefix": "XAOpK37SfSPivmYx", "merchantAccount": "19GWm87P1GbEQA6n", "notificationHmacKey": "I1VhgTvfzwfgRZnt", "notificationPassword": "Mhunn3jSCD2AknCw", "notificationUsername": "Pe4TX4CK4IBY01Ku", "returnUrl": "Fbs8Iv2Ij9B7VD3S", "settings": "yR3UCMUtsTLoeVLj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'UpdateAdyenConfig' test.out

#- 306 TestAdyenConfigById
$PYTHON -m $MODULE 'platform-test-adyen-config-by-id' \
    'xbwUQUVEWE0xtN3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'TestAdyenConfigById' test.out

#- 307 UpdateAliPayConfig
$PYTHON -m $MODULE 'platform-update-ali-pay-config' \
    '8DgFUrjRGzthYJKH' \
    --body '{"appId": "9vhOLpoWOSJS0kU6", "privateKey": "fD66yb2MtSEiRgh6", "publicKey": "7ylD9xIb44v71qZ2", "returnUrl": "QmEuNVKEmoFSme2B"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'UpdateAliPayConfig' test.out

#- 308 TestAliPayConfigById
$PYTHON -m $MODULE 'platform-test-ali-pay-config-by-id' \
    '5xb6kbzroGyrFwTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'TestAliPayConfigById' test.out

#- 309 UpdateCheckoutConfig
$PYTHON -m $MODULE 'platform-update-checkout-config' \
    'dzLOXwPp0OS1jOq8' \
    --body '{"publicKey": "HtddVhZ7lfOiLRYQ", "secretKey": "kDw4MI4SEqiXIaji"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'UpdateCheckoutConfig' test.out

#- 310 TestCheckoutConfigById
$PYTHON -m $MODULE 'platform-test-checkout-config-by-id' \
    '4MOmP494vGlNtuMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'TestCheckoutConfigById' test.out

#- 311 UpdatePayPalConfig
$PYTHON -m $MODULE 'platform-update-pay-pal-config' \
    'pS3K4kKGKct8SZQK' \
    --body '{"clientID": "7TEK4sZzj7oPP3Oe", "clientSecret": "ZVILEaXbHnhR8gT3", "returnUrl": "if17nsndhy0Gtga4", "webHookId": "xRRNit3ApyAvkVtA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'UpdatePayPalConfig' test.out

#- 312 TestPayPalConfigById
$PYTHON -m $MODULE 'platform-test-pay-pal-config-by-id' \
    '8b9zvOaiSMHjVciA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'TestPayPalConfigById' test.out

#- 313 UpdateStripeConfig
$PYTHON -m $MODULE 'platform-update-stripe-config' \
    'VrPuzKV1Wj7J3Qrg' \
    --body '{"allowedPaymentMethodTypes": ["nhZMehNOncXNM18Z", "iBLaa5iN5b6ODd1k", "j4Qj6RS5aO256cet"], "publishableKey": "eBSz425Kp2PGW8gp", "secretKey": "Xu2mBdRvF84eD5m0", "webhookSecret": "2245YlrGlfgrzLif"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'UpdateStripeConfig' test.out

#- 314 TestStripeConfigById
$PYTHON -m $MODULE 'platform-test-stripe-config-by-id' \
    'ZvRPXjiYCPM52HK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'TestStripeConfigById' test.out

#- 315 UpdateWxPayConfig
$PYTHON -m $MODULE 'platform-update-wx-pay-config' \
    'ASyze4T9TmQupOzu' \
    --body '{"appId": "aRV8Vw1OuyVC7JcK", "key": "5UdheuW7HOMooXzm", "mchid": "W321H7CGe7BlGbNT", "returnUrl": "tvAEsQs0WkD6Y555"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'UpdateWxPayConfig' test.out

#- 316 UpdateWxPayConfigCert
$PYTHON -m $MODULE 'platform-update-wx-pay-config-cert' \
    'p9oqb5MeMGL8kITG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'UpdateWxPayConfigCert' test.out

#- 317 TestWxPayConfigById
$PYTHON -m $MODULE 'platform-test-wx-pay-config-by-id' \
    'mF087BWKC6wzHgwF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'TestWxPayConfigById' test.out

#- 318 UpdateXsollaConfig
$PYTHON -m $MODULE 'platform-update-xsolla-config' \
    'qS6c2YCA1r312BKD' \
    --body '{"apiKey": "vA3YyGsBgTJCc673", "flowCompletionUrl": "4MnrbjAM32RlQ3Wp", "merchantId": 12, "projectId": 21, "projectSecretKey": "0XNZCsESCHRPA5OQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'UpdateXsollaConfig' test.out

#- 319 TestXsollaConfigById
$PYTHON -m $MODULE 'platform-test-xsolla-config-by-id' \
    'X8twQrDu49JFXjPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'TestXsollaConfigById' test.out

#- 320 UpdateXsollaUIConfig
$PYTHON -m $MODULE 'platform-update-xsolla-ui-config' \
    '1tJBaHYTZ2IdgUYm' \
    --body '{"device": "DESKTOP", "showCloseButton": true, "size": "MEDIUM", "theme": "DARK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'UpdateXsollaUIConfig' test.out

#- 321 QueryPaymentProviderConfig
$PYTHON -m $MODULE 'platform-query-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'QueryPaymentProviderConfig' test.out

#- 322 CreatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-create-payment-provider-config' \
    --body '{"aggregate": "ADYEN", "namespace": "XJCUjwNMnmrmR9dD", "region": "VbvyNupYCzyYEaMg", "sandboxTaxJarApiToken": "XsszL7hpsSwAQxtD", "specials": ["XSOLLA", "STRIPE", "PAYPAL"], "taxJarApiToken": "2icYZYjakKtgPfJH", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'CreatePaymentProviderConfig' test.out

#- 323 GetAggregatePaymentProviders
$PYTHON -m $MODULE 'platform-get-aggregate-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'GetAggregatePaymentProviders' test.out

#- 324 DebugMatchedPaymentProviderConfig
$PYTHON -m $MODULE 'platform-debug-matched-payment-provider-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'DebugMatchedPaymentProviderConfig' test.out

#- 325 GetSpecialPaymentProviders
$PYTHON -m $MODULE 'platform-get-special-payment-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'GetSpecialPaymentProviders' test.out

#- 326 UpdatePaymentProviderConfig
$PYTHON -m $MODULE 'platform-update-payment-provider-config' \
    'uwF3aZQrVPWyZpnV' \
    --body '{"aggregate": "ADYEN", "namespace": "KC9zNZRaWXjMCSId", "region": "4tDlI96Qjoaq06aI", "sandboxTaxJarApiToken": "2zoqmaPgdCvQwz6h", "specials": ["ADYEN", "XSOLLA", "STRIPE"], "taxJarApiToken": "kIaANvZ0I2EGVDWs", "taxJarEnabled": true, "useGlobalTaxJarApiToken": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'UpdatePaymentProviderConfig' test.out

#- 327 DeletePaymentProviderConfig
$PYTHON -m $MODULE 'platform-delete-payment-provider-config' \
    'wXLLDtNRfmo1w8aA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'DeletePaymentProviderConfig' test.out

#- 328 GetPaymentTaxConfig
$PYTHON -m $MODULE 'platform-get-payment-tax-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'GetPaymentTaxConfig' test.out

#- 329 UpdatePaymentTaxConfig
$PYTHON -m $MODULE 'platform-update-payment-tax-config' \
    --body '{"sandboxTaxJarApiToken": "cuRQzdYhuES7BncX", "taxJarApiToken": "filyRfU4YHfMpHxE", "taxJarEnabled": false, "taxJarProductCodesMapping": {"SZTIlkM5IYJnbFpr": "RWLjHPiPqvMMmYJe", "KvshwdE9XuQ8gykJ": "m5GMKtZSng8Oi6TD", "pSGwc7wXieEOkn4K": "NYWbvsmtsOVvpKYJ"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpdatePaymentTaxConfig' test.out

#- 330 SyncPaymentOrders
$PYTHON -m $MODULE 'platform-sync-payment-orders' \
    'yOQGUiqcJ2Jldy73' \
    'ukTxjfHXQQVmxHmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'SyncPaymentOrders' test.out

#- 331 PublicGetRootCategories
$PYTHON -m $MODULE 'platform-public-get-root-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicGetRootCategories' test.out

#- 332 DownloadCategories
$PYTHON -m $MODULE 'platform-download-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'DownloadCategories' test.out

#- 333 PublicGetCategory
$PYTHON -m $MODULE 'platform-public-get-category' \
    'VmuzoO2qep49tDHF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetCategory' test.out

#- 334 PublicGetChildCategories
$PYTHON -m $MODULE 'platform-public-get-child-categories' \
    'l18cQlJCgKFmN851' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetChildCategories' test.out

#- 335 PublicGetDescendantCategories
$PYTHON -m $MODULE 'platform-public-get-descendant-categories' \
    'YX8ylpv3hDDLL1n4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetDescendantCategories' test.out

#- 336 PublicListCurrencies
$PYTHON -m $MODULE 'platform-public-list-currencies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicListCurrencies' test.out

#- 337 GetIAPItemMapping
$PYTHON -m $MODULE 'platform-get-iap-item-mapping' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'GetIAPItemMapping' test.out

#- 338 PublicGetItemByAppId
$PYTHON -m $MODULE 'platform-public-get-item-by-app-id' \
    'On03mToMhBjPD6az' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicGetItemByAppId' test.out

#- 339 PublicQueryItems
$PYTHON -m $MODULE 'platform-public-query-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicQueryItems' test.out

#- 340 PublicGetItemBySku
$PYTHON -m $MODULE 'platform-public-get-item-by-sku' \
    'tTyMQghPWOOAzTmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetItemBySku' test.out

#- 341 PublicBulkGetItems
$PYTHON -m $MODULE 'platform-public-bulk-get-items' \
    'VFEHDMT1eDVbcvyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicBulkGetItems' test.out

#- 342 PublicValidateItemPurchaseCondition
$PYTHON -m $MODULE 'platform-public-validate-item-purchase-condition' \
    --body '{"itemIds": ["tTxuptcOYSTj2AWA", "5f61ztkSpGmf8BXo", "sNylCwcf2iVxv9Qt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicValidateItemPurchaseCondition' test.out

#- 343 PublicSearchItems
$PYTHON -m $MODULE 'platform-public-search-items' \
    'ivQqeRyPorhTuFn3' \
    'W0qApZ98a9g9AjLD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicSearchItems' test.out

#- 344 PublicGetApp
$PYTHON -m $MODULE 'platform-public-get-app' \
    'QL5jZbyjCnTkYE0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PublicGetApp' test.out

#- 345 PublicGetItemDynamicData
$PYTHON -m $MODULE 'platform-public-get-item-dynamic-data' \
    'YHfBc64zDQawQPbb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'PublicGetItemDynamicData' test.out

#- 346 PublicGetItem
$PYTHON -m $MODULE 'platform-public-get-item' \
    'bHLcaHmXRdPvQLVu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'PublicGetItem' test.out

#- 347 GetPaymentCustomization
eval_tap 0 347 'GetPaymentCustomization # SKIP deprecated' test.out

#- 348 PublicGetPaymentUrl
$PYTHON -m $MODULE 'platform-public-get-payment-url' \
    --body '{"paymentOrderNo": "KpiiZ4Imogp7RKEc", "paymentProvider": "WALLET", "returnUrl": "ehyAowu72oCUdMES", "ui": "0mVVI1FilcO4pajE", "zipCode": "hkRLMvZnYZKCk0zb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'PublicGetPaymentUrl' test.out

#- 349 PublicGetPaymentMethods
$PYTHON -m $MODULE 'platform-public-get-payment-methods' \
    'REElwdZORocHSHul' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'PublicGetPaymentMethods' test.out

#- 350 PublicGetUnpaidPaymentOrder
$PYTHON -m $MODULE 'platform-public-get-unpaid-payment-order' \
    'JHhAnY7QeDSRroVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'PublicGetUnpaidPaymentOrder' test.out

#- 351 Pay
$PYTHON -m $MODULE 'platform-pay' \
    'Xb4xPPUmUifQvfoZ' \
    --body '{"token": "7n3eRMzJEQYwNGRl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'Pay' test.out

#- 352 PublicCheckPaymentOrderPaidStatus
$PYTHON -m $MODULE 'platform-public-check-payment-order-paid-status' \
    '2gcWdDmIy4Ia2UtS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'PublicCheckPaymentOrderPaidStatus' test.out

#- 353 GetPaymentPublicConfig
$PYTHON -m $MODULE 'platform-get-payment-public-config' \
    'WXPAY' \
    '1v2y9Je7apQfNdDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'GetPaymentPublicConfig' test.out

#- 354 PublicGetQRCode
$PYTHON -m $MODULE 'platform-public-get-qr-code' \
    'T3a0EGpHgGLUqdG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'PublicGetQRCode' test.out

#- 355 PublicNormalizePaymentReturnUrl
$PYTHON -m $MODULE 'platform-public-normalize-payment-return-url' \
    'kBfGvwjwttys4GvD' \
    'vs1H5juf5Cq950Xt' \
    'CHECKOUT' \
    '4D4NOpbUDnyVmYot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'PublicNormalizePaymentReturnUrl' test.out

#- 356 GetPaymentTaxValue
$PYTHON -m $MODULE 'platform-get-payment-tax-value' \
    'ZCA9LADbjj6viKPQ' \
    'WXPAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'GetPaymentTaxValue' test.out

#- 357 GetRewardByCode
$PYTHON -m $MODULE 'platform-get-reward-by-code' \
    '2l1kZWnqjJaGGTFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'GetRewardByCode' test.out

#- 358 QueryRewards1
$PYTHON -m $MODULE 'platform-query-rewards-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'QueryRewards1' test.out

#- 359 GetReward1
$PYTHON -m $MODULE 'platform-get-reward-1' \
    'JHecFy9m5s6oIWMn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'GetReward1' test.out

#- 360 PublicListStores
$PYTHON -m $MODULE 'platform-public-list-stores' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'PublicListStores' test.out

#- 361 PublicExistsAnyMyActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-my-active-entitlement' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'PublicExistsAnyMyActiveEntitlement' test.out

#- 362 PublicGetMyAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-my-app-entitlement-ownership-by-app-id' \
    'k88GXMrS82vN0N22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'PublicGetMyAppEntitlementOwnershipByAppId' test.out

#- 363 PublicGetMyEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-item-id' \
    '36tI7v0x9St2EFfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'PublicGetMyEntitlementOwnershipByItemId' test.out

#- 364 PublicGetMyEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-my-entitlement-ownership-by-sku' \
    '2FbyIXierPr2qLKB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'PublicGetMyEntitlementOwnershipBySku' test.out

#- 365 PublicGetEntitlementOwnershipToken
$PYTHON -m $MODULE 'platform-public-get-entitlement-ownership-token' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'PublicGetEntitlementOwnershipToken' test.out

#- 366 SyncTwitchDropsEntitlement
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement' \
    --body '{"gameId": "XRYt7v7Wfg2omS11", "language": "Zf-CSqh", "region": "lRUuJ7HggA1D8DBt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'SyncTwitchDropsEntitlement' test.out

#- 367 PublicGetMyWallet
$PYTHON -m $MODULE 'platform-public-get-my-wallet' \
    'kE9JX7oDFoXpZ9sy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'PublicGetMyWallet' test.out

#- 368 SyncEpicGameDLC
$PYTHON -m $MODULE 'platform-sync-epic-game-dlc' \
    '7dEuiT7OrRdHjzNh' \
    --body '{"epicGamesJwtToken": "fc3uokglAmxb5eaY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'SyncEpicGameDLC' test.out

#- 369 SyncOculusDLC
$PYTHON -m $MODULE 'platform-sync-oculus-dlc' \
    'qdXkBqt2UfrBE1Jh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'SyncOculusDLC' test.out

#- 370 PublicSyncPsnDlcInventory
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory' \
    'OOdYFVxYR0XhaQ30' \
    --body '{"serviceLabel": 5}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'PublicSyncPsnDlcInventory' test.out

#- 371 PublicSyncPsnDlcInventoryWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-sync-psn-dlc-inventory-with-multiple-service-labels' \
    'RsFc8FKz1j1HfaNk' \
    --body '{"serviceLabels": [16, 85, 14]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'PublicSyncPsnDlcInventoryWithMultipleServiceLabels' test.out

#- 372 SyncSteamDLC
$PYTHON -m $MODULE 'platform-sync-steam-dlc' \
    'nN0txahdhp0tmV4j' \
    --body '{"appId": "jIkC8lqpB9cbsDlr", "steamId": "eKfjfpUz3jtg1bKa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'SyncSteamDLC' test.out

#- 373 SyncXboxDLC
$PYTHON -m $MODULE 'platform-sync-xbox-dlc' \
    'DBROm6TJ2qMul8cl' \
    --body '{"xstsToken": "55U4RB2xVHiARcFL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SyncXboxDLC' test.out

#- 374 PublicQueryUserEntitlements
$PYTHON -m $MODULE 'platform-public-query-user-entitlements' \
    'zOW7Uz8Gz5TN3bJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicQueryUserEntitlements' test.out

#- 375 PublicGetUserAppEntitlementByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-by-app-id' \
    'UVKAdNp2ReRw5WPj' \
    'ohGmJKCjbEtFKLGv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicGetUserAppEntitlementByAppId' test.out

#- 376 PublicQueryUserEntitlementsByAppType
$PYTHON -m $MODULE 'platform-public-query-user-entitlements-by-app-type' \
    'BQOS81LpIh5QqEOK' \
    'DEMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicQueryUserEntitlementsByAppType' test.out

#- 377 PublicGetUserEntitlementByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-item-id' \
    'nUYMXvJJrO8K9yVa' \
    'SV6MkQpPd0utGYDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicGetUserEntitlementByItemId' test.out

#- 378 PublicGetUserEntitlementBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-by-sku' \
    'GwpKCkOgcVrMw1DA' \
    'aC3oGYmbE9E87RTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicGetUserEntitlementBySku' test.out

#- 379 PublicExistsAnyUserActiveEntitlement
$PYTHON -m $MODULE 'platform-public-exists-any-user-active-entitlement' \
    'vlu7lo1foXU28IE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicExistsAnyUserActiveEntitlement' test.out

#- 380 PublicGetUserAppEntitlementOwnershipByAppId
$PYTHON -m $MODULE 'platform-public-get-user-app-entitlement-ownership-by-app-id' \
    'EVvQkoqOZIFeJQSr' \
    'nPscIMJRStF3LRa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicGetUserAppEntitlementOwnershipByAppId' test.out

#- 381 PublicGetUserEntitlementOwnershipByItemId
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-id' \
    'q49EdmhBpI13Mh9t' \
    'HYQilnHrNI7XsRCD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicGetUserEntitlementOwnershipByItemId' test.out

#- 382 PublicGetUserEntitlementOwnershipByItemIds
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-item-ids' \
    '3YOzMK1ZWOxnVMpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicGetUserEntitlementOwnershipByItemIds' test.out

#- 383 PublicGetUserEntitlementOwnershipBySku
$PYTHON -m $MODULE 'platform-public-get-user-entitlement-ownership-by-sku' \
    'EziAPi9dBg5J0me0' \
    'BhvZVrOsZSqQjmdJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGetUserEntitlementOwnershipBySku' test.out

#- 384 PublicGetUserEntitlement
$PYTHON -m $MODULE 'platform-public-get-user-entitlement' \
    'Ga6AahLvhIfKDFku' \
    'ldV3vhNCAUQUVGJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicGetUserEntitlement' test.out

#- 385 PublicConsumeUserEntitlement
$PYTHON -m $MODULE 'platform-public-consume-user-entitlement' \
    'sED5tFgDMluY685d' \
    'rsUwaWMLdLGDjtir' \
    --body '{"options": ["dqDck0QFovelKxdF", "e87vTbT1ykevWiIo", "ubexJQ22uV5cRj52"], "requestId": "9cEGlYlBTFD4MBzA", "useCount": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicConsumeUserEntitlement' test.out

#- 386 PublicSellUserEntitlement
$PYTHON -m $MODULE 'platform-public-sell-user-entitlement' \
    'qGKfGJDmzFepqpoI' \
    'zofQ17bQpOtqU8Y6' \
    --body '{"requestId": "3DFSnh5IbdftTLRL", "useCount": 96}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicSellUserEntitlement' test.out

#- 387 PublicRedeemCode
$PYTHON -m $MODULE 'platform-public-redeem-code' \
    'mTbQzxkHXSiDFpwg' \
    --body '{"code": "jtHkQyb5yoi3fhBK", "language": "GTz", "region": "KyddONrCA3C8SvqU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'PublicRedeemCode' test.out

#- 388 PublicFulfillAppleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-apple-iap-item' \
    'KqpSaqBWWsEePoWo' \
    --body '{"excludeOldTransactions": true, "language": "Dpnl", "productId": "xu5cYFtJZeinW64n", "receiptData": "9q4asIfg6qpRvHGY", "region": "NAfvls7pbw9yPFof", "transactionId": "HSVjTbM9IHL2Jcpn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'PublicFulfillAppleIAPItem' test.out

#- 389 SyncEpicGamesInventory
$PYTHON -m $MODULE 'platform-sync-epic-games-inventory' \
    'LuindE3Ucg05FtWi' \
    --body '{"epicGamesJwtToken": "uP1xyPeWov5pJJdy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'SyncEpicGamesInventory' test.out

#- 390 PublicFulfillGoogleIAPItem
$PYTHON -m $MODULE 'platform-public-fulfill-google-iap-item' \
    'u2TxbDTPkZkYfTO2' \
    --body '{"autoAck": false, "language": "RF", "orderId": "cXGaIUaL3FoA27eK", "packageName": "2U3IHpgmmQaQj7hy", "productId": "QjWqzvHab6b9t7DW", "purchaseTime": 93, "purchaseToken": "9x03hTzeUaFK6P6y", "region": "xOlFhdtyrLQHkz1E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicFulfillGoogleIAPItem' test.out

#- 391 SyncOculusConsumableEntitlements
$PYTHON -m $MODULE 'platform-sync-oculus-consumable-entitlements' \
    's8nQbk4SztMOdFHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'SyncOculusConsumableEntitlements' test.out

#- 392 PublicReconcilePlayStationStore
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store' \
    'XjAZrDNCoJ22Rrow' \
    --body '{"currencyCode": "eT9Xanvbg8nAmHsr", "price": 0.20394724835100886, "productId": "zoPN3GJz77wPralg", "serviceLabel": 22}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicReconcilePlayStationStore' test.out

#- 393 PublicReconcilePlayStationStoreWithMultipleServiceLabels
$PYTHON -m $MODULE 'platform-public-reconcile-play-station-store-with-multiple-service-labels' \
    'L9IC4460Wck2oK2m' \
    --body '{"currencyCode": "LwkxgJXK2OjNzQ95", "price": 0.1775428584725135, "productId": "ceIy0lnTniV8j7Xm", "serviceLabels": [89, 10, 66]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicReconcilePlayStationStoreWithMultipleServiceLabels' test.out

#- 394 SyncSteamInventory
$PYTHON -m $MODULE 'platform-sync-steam-inventory' \
    'FUW42wLu5tQBUE3k' \
    --body '{"appId": "2mUvrQPFxSaRrDsF", "currencyCode": "1CKYcMJnrn1I3ypo", "language": "RbX_IHly", "price": 0.6580480343634254, "productId": "uqsilAWXNFfxIWM9", "region": "jL08jtCIr8STWuiy", "steamId": "z2eOgny7d8WVlcOT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'SyncSteamInventory' test.out

#- 395 SyncTwitchDropsEntitlement1
$PYTHON -m $MODULE 'platform-sync-twitch-drops-entitlement-1' \
    'KoZimYNHB2ph25oE' \
    --body '{"gameId": "sCRrlY6AX1ksmS6C", "language": "mG-JxnU", "region": "1HZPcFbl4XrKUphP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'SyncTwitchDropsEntitlement1' test.out

#- 396 SyncXboxInventory
$PYTHON -m $MODULE 'platform-sync-xbox-inventory' \
    'evxFz1b7Q3NwVn8P' \
    --body '{"currencyCode": "U8JfFPiZpcqq8qH8", "price": 0.6139408213732886, "productId": "R9K5kA67H3XOJlQf", "xstsToken": "OCN2keFNIQusmcAY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'SyncXboxInventory' test.out

#- 397 PublicQueryUserOrders
$PYTHON -m $MODULE 'platform-public-query-user-orders' \
    'WBLZg00dmqgWRmPn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicQueryUserOrders' test.out

#- 398 PublicCreateUserOrder
$PYTHON -m $MODULE 'platform-public-create-user-order' \
    'XpH8xifqavEfKK0D' \
    --body '{"currencyCode": "ei3ChLwkIGKtgDjD", "discountedPrice": 1, "ext": {"TLdkZgouTEi19doN": {}, "SCRrqi0F1FGxhrYs": {}, "zqB4U4xH3NpxEEE1": {}}, "itemId": "xE1teY5Ma16Sr2B1", "language": "zKxG", "price": 76, "quantity": 72, "region": "c0R4vMMPlJqY7ujD", "returnUrl": "DLuoQJspLLZbnusI", "sectionId": "9Nty8KpP0RHI8icu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicCreateUserOrder' test.out

#- 399 PublicGetUserOrder
$PYTHON -m $MODULE 'platform-public-get-user-order' \
    'Y92iMkPiEKRgT1zZ' \
    'PaKlnIY3vGLET05J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetUserOrder' test.out

#- 400 PublicCancelUserOrder
$PYTHON -m $MODULE 'platform-public-cancel-user-order' \
    'QWhwijC7ydSFRQ4V' \
    '5OyypfQ5iJtNrVbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicCancelUserOrder' test.out

#- 401 PublicGetUserOrderHistories
$PYTHON -m $MODULE 'platform-public-get-user-order-histories' \
    'nyYERw24T1DBdzzV' \
    'bhZKnh9FfHsuwhOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicGetUserOrderHistories' test.out

#- 402 PublicDownloadUserOrderReceipt
$PYTHON -m $MODULE 'platform-public-download-user-order-receipt' \
    'gOWtZuhAp0yxLpfW' \
    'B0inH8xFDMoqbLU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicDownloadUserOrderReceipt' test.out

#- 403 PublicGetPaymentAccounts
$PYTHON -m $MODULE 'platform-public-get-payment-accounts' \
    'KGsevVGPnqXXPust' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetPaymentAccounts' test.out

#- 404 PublicDeletePaymentAccount
$PYTHON -m $MODULE 'platform-public-delete-payment-account' \
    'paZz47mZuZptSind' \
    'card' \
    '4KpifmfS94ybYG4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicDeletePaymentAccount' test.out

#- 405 PublicListActiveSections
$PYTHON -m $MODULE 'platform-public-list-active-sections' \
    'LaPxhpGODmwJCF4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicListActiveSections' test.out

#- 406 PublicQueryUserSubscriptions
$PYTHON -m $MODULE 'platform-public-query-user-subscriptions' \
    'Cv6DG2DfogFpQ6h4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicQueryUserSubscriptions' test.out

#- 407 PublicSubscribeSubscription
$PYTHON -m $MODULE 'platform-public-subscribe-subscription' \
    'G1JwgwqyIOpmNMgp' \
    --body '{"currencyCode": "fDY1FR9rKaxaWsCG", "itemId": "gI79Hr331YipwCDO", "language": "wg", "region": "s0rjVHzs9C25B5DY", "returnUrl": "IkGcoYjLN4VPTXzk", "source": "nDz9YRB0KErE7XXT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicSubscribeSubscription' test.out

#- 408 PublicCheckUserSubscriptionSubscribableByItemId
$PYTHON -m $MODULE 'platform-public-check-user-subscription-subscribable-by-item-id' \
    'kVsvdGlmWWA02nKw' \
    'O7XUNrraxsHn4uKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicCheckUserSubscriptionSubscribableByItemId' test.out

#- 409 PublicGetUserSubscription
$PYTHON -m $MODULE 'platform-public-get-user-subscription' \
    'XVFTTx0TcboB98Gf' \
    '5PcmWICZpV13Vxw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicGetUserSubscription' test.out

#- 410 PublicChangeSubscriptionBillingAccount
$PYTHON -m $MODULE 'platform-public-change-subscription-billing-account' \
    'InWyY5J5tCY01Fkb' \
    'WfSwD66Xg5Qbc0Ej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicChangeSubscriptionBillingAccount' test.out

#- 411 PublicCancelSubscription
$PYTHON -m $MODULE 'platform-public-cancel-subscription' \
    'xxzLQLRh64Y1jopY' \
    'iTRZEzq26aXSjyAQ' \
    --body '{"immediate": true, "reason": "CzMbz1C3ZtjGu9Cx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicCancelSubscription' test.out

#- 412 PublicGetUserSubscriptionBillingHistories
$PYTHON -m $MODULE 'platform-public-get-user-subscription-billing-histories' \
    'aM7nweO9MSckJNZe' \
    'DhfW7AVHVE6Tamht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGetUserSubscriptionBillingHistories' test.out

#- 413 PublicListViews
$PYTHON -m $MODULE 'platform-public-list-views' \
    'DUacOPwPczqMDbsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicListViews' test.out

#- 414 PublicGetWallet
$PYTHON -m $MODULE 'platform-public-get-wallet' \
    'iaaxIpP9oAICocQq' \
    'l5YfBZVQcDD4zf1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetWallet' test.out

#- 415 PublicListUserWalletTransactions
$PYTHON -m $MODULE 'platform-public-list-user-wallet-transactions' \
    'ZvQIrbCQWs1jZYqr' \
    'f4bxOoikruHKYKNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicListUserWalletTransactions' test.out

#- 416 QueryItems1
$PYTHON -m $MODULE 'platform-query-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'QueryItems1' test.out

#- 417 ImportStore1
$PYTHON -m $MODULE 'platform-import-store-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'ImportStore1' test.out

#- 418 ExportStore1
$PYTHON -m $MODULE 'platform-export-store-1' \
    'VJSzeli2Uey4fuSj' \
    --body '{"itemIds": ["1kSeWA3702McnnKW", "V37CLHYvul2IsFEx", "mn4GV4MH5mOZyTMM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'ExportStore1' test.out

#- 419 FulfillRewardsV2
$PYTHON -m $MODULE 'platform-fulfill-rewards-v2' \
    'Dazz0zG1FmCCywXf' \
    --body '{"metadata": {"Hj329WcNk8k8qK4g": {}, "Jrux6tlQDfleFLBK": {}, "j8h7ZrO4pTU7jATb": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "BcDGudQQm98BKOds", "namespace": "oaTqFhdLfBWZeRFQ"}, "item": {"itemId": "vrB1lsWaPGfJVUla", "itemSku": "8UlMM4Cc3k5J2qbH", "itemType": "YNekyXLtDH1ypF3h"}, "quantity": 71, "type": "CURRENCY"}, {"currency": {"currencyCode": "sdFXbbaFfchju2kA", "namespace": "uottOSwo884abNDj"}, "item": {"itemId": "MPiZHxhFeo51XVDI", "itemSku": "8f5EWndhcek3atmh", "itemType": "Tw5TDjWYgm2yGvhR"}, "quantity": 41, "type": "CURRENCY"}, {"currency": {"currencyCode": "S643vgPdN21mWwtu", "namespace": "qNbtaAfDzs5MyxW9"}, "item": {"itemId": "0cMZ9NeyZ5n02q1q", "itemSku": "bbj3sLmfYzDVAVhX", "itemType": "ts4CdsniSJKrJ4Br"}, "quantity": 6, "type": "CURRENCY"}], "source": "DLC", "transactionId": "58ZBVGgxlpGxhD9k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'FulfillRewardsV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
